inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8internal13parse_decimalERPKcS2_:bb.a
  store i32 %.lcssa99, ptr %0, align 4
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.loopexit, %.critedge4, %.critedge2
  %i.ay = phi i32 [ 0, %.critedge2.thread.loopexit ], [ %i.aw, %.critedge4 ], [ 0, %.critedge2 ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %.critedge2.thread.loopexit ], [ %i.as, %.critedge4 ], [ %i.o, %.critedge2 ] ; 5 uses
  %i.ba = phi i32 [ %.lcssa99, %.critedge2.thread.loopexit ], [ %.lcssa107, %.critedge4 ], [ %.promoted106, %.critedge2 ] ; 3 uses
  %.not90 = icmp eq i32 %i.ba, 0
  br i1 %.not90, label %.thread, label %.preheader155

.preheader155:                                    ; preds = %.critedge2.thread, %.critedge6
  %.pn = phi ptr [ %.070, %.critedge6 ], [ %i.az, %.critedge2.thread ]
  %.068 = phi i32 [ %spec.select, %.critedge6 ], [ 0, %.critedge2.thread ] ; 2 uses
  %.070 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.bb = load i8, ptr %.070, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.bb, label %bb.o [
    i8 48, label %.critedge6
    i8 46, label %.critedge6
  ]

.critedge6:                                       ; preds = %.preheader155, %.preheader155
  %i.bc = icmp eq i8 %i.bb, 48
  %i.bd = zext i1 %i.bc to i32
  %spec.select = add nuw nsw i32 %.068, %i.bd
  br label %.preheader155, !llvm.loop !34

bb.o:                                             ; preds = %.preheader155
  %i.be = add nsw i32 %i.ay, %i.ba                ; 3 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !18
  %i.bf = sub i32 %i.ba, %.068                    ; 2 uses
  store i32 %i.bf, ptr %0, align 4, !tbaa !15
  %i.bg = icmp ugt i32 %i.bf, 768
  br i1 %i.bg, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  store i32 768, ptr %0, align 4, !tbaa !15
  store i8 1, ptr %i.b, align 1, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %.critedge2.thread, %bb.p, %bb.o
  %i.bh = phi i32 [ %i.ay, %.critedge2.thread ], [ %i.be, %bb.p ], [ %i.be, %bb.o ]
  %.not91 = icmp eq ptr %i.az, %2
  br i1 %.not91, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bi = load i8, ptr %i.az, align 1, !tbaa !9
  switch i8 %i.bi, label %bb.v [
    i8 101, label %bb.r
    i8 69, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 4 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !20
  %i.bk = icmp eq ptr %i.bj, %2
  br i1 %i.bk, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !9   ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 45
  switch i8 %i.bl, label %bb.t [
    i8 45, label %.sink.split
    i8 43, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.s, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  store ptr %i.bn, ptr %1, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.sink.split
  %.promoted115 = phi ptr [ %i.bj, %bb.s ], [ %i.bn, %.sink.split ] ; 2 uses
  %.not92116 = icmp eq ptr %.promoted115, %2
  br i1 %.not92116, label %.critedge8, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.t, %bb.u
  %.0117 = phi i32 [ %.1, %bb.u ], [ 0, %bb.t ]   ; 4 uses
  %i.bo = phi ptr [ %i.bw, %bb.u ], [ %.promoted115, %bb.t ] ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.bq = add i8 %i.bp, -48                       ; 2 uses
  %i.br = icmp ult i8 %i.bq, 10
  br i1 %i.br, label %bb.u, label %.critedge8

bb.u:                                             ; preds = %.lr.ph118
  %i.bs = icmp slt i32 %.0117, 65536
  %i.bt = mul nsw i32 %.0117, 10
  %i.bu = zext nneg i8 %i.bq to i32
  %i.bv = add nsw i32 %i.bt, %i.bu
  %.1 = select i1 %i.bs, i32 %i.bv, i32 %.0117    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 3 uses
  store ptr %i.bw, ptr %1, align 8, !tbaa !20
  %.not92 = icmp eq ptr %i.bw, %2
  br i1 %.not92, label %.critedge8, label %.lr.ph118, !llvm.loop !35

.critedge8:                                       ; preds = %.lr.ph118, %bb.u, %bb.t
  %.0.lcssa = phi i32 [ 0, %bb.t ], [ %.1, %bb.u ], [ %.0117, %.lr.ph118 ] ; 2 uses
  %i.bx = sub nsw i32 0, %.0.lcssa
  %i.by = select i1 %i.bm, i32 %i.bx, i32 %.0.lcssa
  %i.bz = add nsw i32 %i.bh, %i.by
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %.thread, %.critedge8, %bb.r, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN8simdjson8internal5roundERNS0_7decimalE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(780) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !15     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 9 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %i.d, 18
  br i1 %i.f, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not42 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02840.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.j = mul i64 %.02840.epil.init, 10
  %i.k = icmp samesign ult i64 %indvars.iv.epil.init, %i.h
  br i1 %i.k, label %bb.d, label %._crit_edge.loopexit.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil.init
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.d, %.epil.preheader
  %i.o = phi i64 [ %i.n, %bb.d ], [ 0, %.epil.preheader ]
  %i.p = add i64 %i.o, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %._crit_edge.loopexit.epilog-lcssa ] ; 5 uses
  %i.q = icmp ult i32 %i.d, %i.a
  br i1 %i.q, label %bb.j, label %.thread

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.02840 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.r = mul i64 %.02840, 10
  %i.s = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 2, !tbaa !9
  %i.v = zext i8 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  %i.x = add i64 %i.w, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul i64 %i.x, 10
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ae = add i64 %i.ad, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !36

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = zext nneg i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %.fr = freeze i8 %i.ai                          ; 2 uses
  %i.aj = icmp eq i8 %.fr, 5
  %i.ak = add nuw nsw i32 %i.d, 1
  %i.al = icmp eq i32 %i.ak, %i.a
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19, !range !37, !noundef !38
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread35, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not42, label %.thread, label %.split

.split:                                           ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ah, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %.fr39 = freeze i8 %i.aq
  %i.ar = trunc i8 %.fr39 to i1
  br i1 %i.ar, label %.thread35, label %.thread

bb.m:                                             ; preds = %bb.j
  %i.as = icmp ugt i8 %.fr, 4
  br i1 %i.as, label %.thread35, label %.thread

.thread35:                                        ; preds = %bb.k, %.split, %bb.m
  %i.at = add i64 %.028.lcssa, 1
  br label %.thread

.thread:                                          ; preds = %bb.l, %._crit_edge, %.thread35, %bb.m, %.split, %bb.c, %bb.a, %bb.b
  %.029 = phi i64 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.at, %.thread35 ], [ %.028.lcssa, %bb.m ], [ %.028.lcssa, %.split ], [ %.028.lcssa, %._crit_edge ], [ %.028.lcssa, %bb.l ]
  ret i64 %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(780) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !15     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEjE41number_of_digits_decimal_left_shift_table, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !39
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = lshr i32 %i.g, 11                        ; 4 uses
  %i.k = and i32 %i.g, 2047                       ; 3 uses
  %i.l = and i16 %i.i, 2047
  %i.m = zext nneg i16 %i.l to i32                ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEjE53number_of_digits_decimal_left_shift_table_powers_of_5, i64 %i.n
  %.not31.i = icmp eq i32 %i.k, %i.m
  br i1 %.not31.i, label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = sub nsw i32 %i.m, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %wide.trip.count.i = zext i32 %i.a to i64
  %wide.trip.count36.i = zext i32 %i.p to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count36.i
  br i1 %exitcond37.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, label %bb.d, !llvm.loop !41

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.j, -1
  br label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i8 %i.t, %i.v
  %i.y = sext i1 %i.x to i32
  %spec.select.i = add nsw i32 %i.j, %i.y
  br label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit

_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.g
  %.026.i = phi i32 [ %i.r, %bb.e ], [ %spec.select.i, %bb.g ], [ %i.j, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.z = add i32 %i.a, -1                         ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit
  %i.ab = add i32 %.026.i, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.af = zext nneg i32 %i.z to i64
  br label %bb.h

.preheader:                                       ; preds = %bb.l
  %.not57 = icmp ult i64 %i.am, 10
  br i1 %.not57, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.055 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.l ]
  %.04154 = phi i32 [ %i.ab, %.lr.ph ], [ %i.at, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl i64 %i.ak, %i.ad
  %i.am = add i64 %i.al, %.055                    ; 3 uses
  %i.an = udiv i64 %i.am, 10                      ; 3 uses
  %.neg45 = mul i64 %i.an, -10
  %i.ao = add i64 %.neg45, %i.am                  ; 2 uses
  %i.ap = icmp ult i32 %.04154, 768
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = trunc i64 %i.ao to i8
  %i.ar = zext nneg i32 %.04154 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !9
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not46 = icmp eq i64 %i.ao, 0
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ae, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.at = add i32 %.04154, -1                     ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.au = icmp sgt i64 %indvars.iv, 0
  br i1 %i.au, label %bb.h, label %.preheader, !llvm.loop !42

bb.m:                                             ; preds = %.lr.ph60, %bb.q
  %.159 = phi i64 [ %i.an, %.lr.ph60 ], [ %i.av, %bb.q ] ; 3 uses
  %.14258 = phi i32 [ %i.at, %.lr.ph60 ], [ %i.bb, %bb.q ] ; 3 uses
  %i.av = udiv i64 %.159, 10                      ; 2 uses
  %.neg = mul nsw i64 %i.av, -10
  %i.aw = add nsw i64 %.neg, %.159                ; 2 uses
  %i.ax = icmp ult i32 %.14258, 768
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = trunc i64 %i.aw to i8
  %i.az = zext nneg i32 %.14258 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !9
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp eq i64 %i.aw, 0
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ag, align 1, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = add i32 %.14258, -1
  %.not = icmp samesign ult i64 %.159, 10
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.q, %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, %.preheader
  %i.bc = add i32 %.026.i, %i.a                   ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 768) ; 2 uses
  store i32 %spec.select, ptr %0, align 4, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = add nsw i32 %i.be, %.026.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.not4.i = icmp eq i32 %i.bc, 0
  br i1 %.not4.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bh = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i48 = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i49, %bb.r ]
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 3 uses
  %i.bi = and i64 %indvars.iv.next.i49, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.r:                                             ; preds = %.lr.ph.i47
  %indvars.i = trunc i64 %indvars.iv.next.i49 to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !15
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i47, !llvm.loop !44

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.r, %.lr.ph.i47, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(780) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !15     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 9 uses
  %i.d = zext i32 %i.b to i64
  %exitcond.not103 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not103, label %._crit_edge108, label %.lr.ph107

bb.b:                                             ; preds = %.lr.ph107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !45

.lr.ph107:                                        ; preds = %bb.a, %bb.b
  %.04457105 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %indvars.iv104 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = mul i64 %.04457105, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv104
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9
  %i.h = zext i8 %i.g to i64
  %i.i = add i64 %i.e, %i.h                       ; 4 uses
  %i.j = lshr i64 %i.i, %i.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %.loopexit.loopexit73, !llvm.loop !45

._crit_edge108:                                   ; preds = %bb.b, %bb.a
  %.04457.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = icmp eq i64 %.04457.lcssa, 0
  br i1 %i.l, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.preheader52

.preheader52:                                     ; preds = %._crit_edge108
  %i.m = lshr i64 %.04457.lcssa, %i.a
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %.160 = phi i32 [ %i.p, %.lr.ph ], [ %i.b, %.preheader52 ]
  %.14559 = phi i64 [ %i.o, %.lr.ph ], [ %.04457.lcssa, %.preheader52 ]
  %i.o = mul i64 %.14559, 10                      ; 3 uses
  %i.p = add i32 %.160, 1                         ; 2 uses
  %i.q = lshr i64 %i.o, %i.a
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !46

.loopexit.loopexit73:                             ; preds = %.lr.ph107
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit73, %.preheader52
  %.246 = phi i64 [ %i.i, %.loopexit.loopexit73 ], [ %.04457.lcssa, %.preheader52 ], [ %i.o, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.s, %.loopexit.loopexit73 ], [ %i.b, %.preheader52 ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %reass.sub = sub i32 %i.u, %.2
  %i.v = add i32 %reass.sub, 1                    ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !18
  %i.w = icmp slt i32 %i.v, -2047
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  br label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.d:                                             ; preds = %.loopexit
  %notmask = shl nsw i64 -1, %i.a
  %i.x = xor i64 %notmask, -1                     ; 4 uses
  %i.y = icmp ult i32 %.2, %i.b
  br i1 %i.y, label %.lr.ph65, label %.preheader

.lr.ph65:                                         ; preds = %bb.d
  %i.z = zext i32 %.2 to i64                      ; 2 uses
  %i.aa = sub nuw i32 %i.b, %.2                   ; 5 uses
  %.neg = add i32 %.2, 1
  %xtraiter = and i32 %i.aa, 1
  %i.ab = icmp eq i32 %i.b, %.neg
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter = and i32 %i.aa, -2
  br label %bb.e

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph65
  %indvars.iv84.epil.init = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next85.1, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv82.epil.init = phi i64 [ %i.z, %.lr.ph65 ], [ %indvars.iv.next83.1, %.preheader.loopexit.unr-lcssa ]
  %.34763.epil.init = phi i64 [ %.246, %.lr.ph65 ], [ %i.bd, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod115 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.ac = lshr i64 %.34763.epil.init, %i.a
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i64 %.34763.epil.init, %i.x
  %i.af = mul i64 %i.ae, 10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82.epil.init
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84.epil.init
  store i8 %i.ad, ptr %i.ak, align 1, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.d
  %.048.lcssa = phi i32 [ 0, %bb.d ], [ %i.aa, %.preheader.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ] ; 4 uses
  %.347.lcssa = phi i64 [ %.246, %bb.d ], [ %i.bd, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.epil.preheader ] ; 2 uses
  %.not68 = icmp eq i64 %.347.lcssa, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph65.new
  %indvars.iv84 = phi i64 [ 0, %.lr.ph65.new ], [ %indvars.iv.next85.1, %bb.e ] ; 3 uses
  %indvars.iv82 = phi i64 [ %i.z, %.lr.ph65.new ], [ %indvars.iv.next83.1, %bb.e ] ; 3 uses
  %.34763 = phi i64 [ %.246, %.lr.ph65.new ], [ %i.bd, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph65.new ], [ %niter.next.1, %bb.e ]
  %i.am = lshr i64 %.34763, %i.a
  %i.an = trunc i64 %i.am to i8
  %i.ao = and i64 %.34763, %i.x
  %i.ap = mul i64 %i.ao, 10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i64
  %i.at = add i64 %i.ap, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  store i8 %i.an, ptr %i.au, align 2, !tbaa !9
  %i.av = lshr i64 %i.at, %i.a
  %i.aw = trunc i64 %i.av to i8
  %i.ax = and i64 %i.at, %i.x
  %i.ay = mul i64 %i.ax, 10
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = zext i8 %i.bb to i64
  %i.bd = add i64 %i.ay, %i.bc                    ; 3 uses
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.aw, ptr %i.bf, align 1, !tbaa !9
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !47

bb.f:                                             ; preds = %.lr.ph71, %bb.j
  %.470 = phi i64 [ %.347.lcssa, %.lr.ph71 ], [ %i.bi, %bb.j ] ; 2 uses
  %.14969 = phi i32 [ %.048.lcssa, %.lr.ph71 ], [ %.250, %bb.j ] ; 5 uses
  %i.bg = lshr i64 %.470, %i.a                    ; 2 uses
  %i.bh = and i64 %.470, %i.x
  %i.bi = mul i64 %i.bh, 10                       ; 2 uses
  %i.bj = icmp ult i32 %.14969, 768
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = add nuw nsw i32 %.14969, 1
  %i.bm = zext nneg i32 %.14969 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !9
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bo = and i64 %i.bg, 255
  %.not51 = icmp eq i64 %i.bo, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 1, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.250 = phi i32 [ %i.bl, %bb.g ], [ %.14969, %bb.i ], [ %.14969, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f, !llvm.loop !48

._crit_edge.thread:                               ; preds = %bb.j
  store i32 %.250, ptr %0, align 4, !tbaa !15
  br label %.lr.ph.preheader.i

._crit_edge:                                      ; preds = %.preheader
  store i32 %.048.lcssa, ptr %0, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %.048.lcssa, 0
  br i1 %.not4.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.thread, %._crit_edge
  %.149.lcssa94 = phi i32 [ %.250, %._crit_edge.thread ], [ %.048.lcssa, %._crit_edge ]
  %i.bp = zext i32 %.149.lcssa94 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bq = and i64 %indvars.iv.next.i, 4294967295
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.k:                                             ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !15
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i, !llvm.loop !44

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.k, %.lr.ph.i, %._crit_edge, %._crit_edge108, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.d, 1
  %i.e = zext i32 %.fca.1.extract to i64
  %i.f = shl i64 %i.e, 52
  %i.g = or i64 %i.f, %.fca.0.extract             ; 2 uses
  %i.h = or i64 %i.g, -9223372036854775808
  %spec.select9 = select i1 %i.c, i64 %i.h, i64 %i.g
  %i.i = bitcast i64 %spec.select9 to double
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #41 ; 0 uses
  tail call void @_ZSt9terminatev() #42
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKcS2_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKcS2_(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.d, 1
  %i.e = zext i32 %.fca.1.extract to i64
  %i.f = shl i64 %i.e, 52
  %i.g = or i64 %i.f, %.fca.0.extract             ; 2 uses
  %i.h = or i64 %i.g, -9223372036854775808
  %spec.select10 = select i1 %i.c, i64 %i.h, i64 %i.g
  %i.i = bitcast i64 %spec.select10 to double
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson14implementation27supported_by_runtime_systemEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(44) %0) ; 2 uses
  %i.e = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #41, !srcloc !51
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 2 ; 3 uses
  %i.g = and i32 %i.f, 1048576
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2
  %.not24.i = icmp eq i32 %i.h, 0
  %spec.select.i = select i1 %.not24.i, i32 8, i32 24 ; 3 uses
  %i.i = and i32 %i.f, 201326592
  %.not25.i = icmp eq i32 %i.i, 201326592
  br i1 %.not25.i, label %bb.c, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { i32, i32 } asm sideeffect "xgetbv\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #41, !srcloc !52
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = and i64 %i.l, 4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #41, !srcloc !51 ; 2 uses
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 1 ; 7 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 4
  %i.s = shl i32 %i.p, 2
  %i.t = and i32 %i.s, 32
  %i.u = lshr i32 %i.p, 2
  %i.v = and i32 %i.u, 64
  %i.w = or disjoint i32 %i.r, %i.t
  %i.x = or disjoint i32 %i.w, %i.v
  %.3.i = or disjoint i32 %i.x, %spec.select.i    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.is = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ir, i1 true)
  %i.it = trunc nuw nsw i64 %i.is to i32
  %i.iu = or disjoint i32 %i.hy, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 12
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !10
  %i.iw = icmp samesign ugt i64 %i.ia, 4
  br i1 %i.iw, label %.noexc226.i, label %.loopexit2250.i, !prof !107

.noexc226.i:                                      ; preds = %.noexc189.i
  %i.ix = add i64 %i.ir, -2
  %i.iy = and i64 %i.ix, %i.ir                    ; 3 uses
  %i.iz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iy, i1 true)
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = or disjoint i32 %i.hy, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 16
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !10
  %i.jd = add i64 %i.iy, -2
  %i.je = and i64 %i.jd, %i.iy                    ; 3 uses
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.je, i1 true)
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = or disjoint i32 %i.hy, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 20
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !10
  %i.jj = add i64 %i.je, -1
  %i.jk = and i64 %i.jj, %i.je                    ; 3 uses
  %i.jl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jk, i1 true)
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = or disjoint i32 %i.hy, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 24
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !10
  %i.jp = add i64 %i.jk, -2
  %i.jq = and i64 %i.jp, %i.jk                    ; 3 uses
  %i.jr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jq, i1 true)
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = or disjoint i32 %i.hy, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 28
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !10
  %i.jv = icmp samesign ugt i64 %i.ia, 8
  br i1 %i.jv, label %.noexc291.i, label %.loopexit2250.i, !prof !107

.noexc291.i:                                      ; preds = %.noexc226.i
  %i.jw = add i64 %i.jq, -2
  %i.jx = and i64 %i.jw, %i.jq                    ; 3 uses
  %i.jy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jx, i1 true)
  %i.jz = trunc nuw nsw i64 %i.jy to i32
  %i.ka = or disjoint i32 %i.hy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 32
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !10
  %i.kc = add i64 %i.jx, -2
  %i.kd = and i64 %i.kc, %i.jx                    ; 3 uses
  %i.ke = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kd, i1 true)
  %i.kf = trunc nuw nsw i64 %i.ke to i32
  %i.kg = or disjoint i32 %i.hy, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 36
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !10
  %i.ki = add i64 %i.kd, -2
  %i.kj = and i64 %i.ki, %i.kd                    ; 3 uses
  %i.kk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kj, i1 true)
  %i.kl = trunc nuw nsw i64 %i.kk to i32
  %i.km = or disjoint i32 %i.hy, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 40
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !10
  %i.ko = add i64 %i.kj, -1
  %i.kp = and i64 %i.ko, %i.kj                    ; 3 uses
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kp, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = or disjoint i32 %i.hy, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 44
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !10
  %i.ku = icmp samesign ugt i64 %i.ia, 12
  br i1 %i.ku, label %.noexc356.i, label %.loopexit2250.i, !prof !107

.noexc356.i:                                      ; preds = %.noexc291.i
  %i.kv = add i64 %i.kp, -2
  %i.kw = and i64 %i.kv, %i.kp                    ; 3 uses
  %i.kx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kw, i1 true)
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = or disjoint i32 %i.hy, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 48
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !10
  %i.lb = add i64 %i.kw, -2
  %i.lc = and i64 %i.lb, %i.kw                    ; 3 uses
  %i.ld = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lc, i1 true)
  %i.le = trunc nuw nsw i64 %i.ld to i32
  %i.lf = or disjoint i32 %i.hy, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 52
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !10
  %i.lh = add i64 %i.lc, -2
  %i.li = and i64 %i.lh, %i.lc                    ; 3 uses
  %i.lj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.li, i1 true)
  %i.lk = trunc nuw nsw i64 %i.lj to i32
  %i.ll = or disjoint i32 %i.hy, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 56
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !10
  %i.ln = add i64 %i.li, -2
  %i.lo = and i64 %i.ln, %i.li                    ; 3 uses
  %i.lp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lo, i1 true)
  %i.lq = trunc nuw nsw i64 %i.lp to i32
  %i.lr = or disjoint i32 %i.hy, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 60
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !10
  %i.lt = icmp samesign ugt i64 %i.ia, 16
  br i1 %i.lt, label %.noexc421.i, label %.loopexit2250.i, !prof !107

.noexc421.i:                                      ; preds = %.noexc356.i
  %i.lu = add i64 %i.lo, -1
  %i.lv = and i64 %i.lu, %i.lo                    ; 3 uses
  %i.lw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lv, i1 true)
  %i.lx = trunc nuw nsw i64 %i.lw to i32
  %i.ly = or disjoint i32 %i.hy, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 64
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !10
  %i.ma = add i64 %i.lv, -2
  %i.mb = and i64 %i.ma, %i.lv                    ; 3 uses
  %i.mc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mb, i1 true)
  %i.md = trunc nuw nsw i64 %i.mc to i32
  %i.me = or disjoint i32 %i.hy, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 68
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !10
  %i.mg = add i64 %i.mb, -2
  %i.mh = and i64 %i.mg, %i.mb                    ; 3 uses
  %i.mi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mh, i1 true)
  %i.mj = trunc nuw nsw i64 %i.mi to i32
  %i.mk = or disjoint i32 %i.hy, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 72
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !10
  %i.mm = add i64 %i.mh, -2
  %i.mn = and i64 %i.mm, %i.mh                    ; 3 uses
  %i.mo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mn, i1 true)
  %i.mp = trunc nuw nsw i64 %i.mo to i32
  %i.mq = or disjoint i32 %i.hy, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 76
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !10
  %i.ms = icmp samesign ugt i64 %i.ia, 20
  br i1 %i.ms, label %.noexc144.i, label %.loopexit2250.i, !prof !107

.noexc144.i:                                      ; preds = %.noexc421.i
  %i.mt = add i64 %i.mn, -2
  %i.mu = and i64 %i.mt, %i.mn                    ; 3 uses
  %i.mv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mu, i1 true)
  %i.mw = trunc nuw nsw i64 %i.mv to i32
  %i.mx = or disjoint i32 %i.hy, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 80
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !10
  %i.mz = add i64 %i.mu, -1
  %i.na = and i64 %i.mz, %i.mu                    ; 3 uses
  %i.nb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.na, i1 true)
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = or disjoint i32 %i.hy, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 84
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !10
  %i.nf = add i64 %i.na, -2
  %i.ng = and i64 %i.nf, %i.na                    ; 3 uses
  %i.nh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ng, i1 true)
  %i.ni = trunc nuw nsw i64 %i.nh to i32
  %i.nj = or disjoint i32 %i.hy, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 88
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !10
  %i.nl = add i64 %i.ng, -2
  %i.nm = and i64 %i.nl, %i.ng                    ; 3 uses
  %i.nn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nm, i1 true)
  %i.no = trunc nuw nsw i64 %i.nn to i32
  %i.np = or disjoint i32 %i.hy, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 92
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !10
  %i.nr = icmp samesign ugt i64 %i.ia, 24
  br i1 %i.nr, label %.noexc145.i.preheader, label %.loopexit2250.i, !prof !110

.noexc145.i.preheader:                            ; preds = %.noexc144.i
  %i.ns = add i64 %i.nm, -2
  %i.nt = and i64 %i.ns, %i.nm                    ; 2 uses
  %xtraiter = and i64 %i.ia, 1
  %i.nu = icmp eq i64 %i.ia, 25
  br i1 %i.nu, label %.noexc145.i.epil.preheader, label %.noexc145.i.preheader.new

.noexc145.i.preheader.new:                        ; preds = %.noexc145.i.preheader
  %i.nv = and i64 %i.ia, 126
  %i.nw = add nsw i64 %i.nv, -26
  br label %.noexc145.i

.noexc145.i:                                      ; preds = %.noexc145.i, %.noexc145.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.noexc145.i.preheader.new ], [ %indvars.iv.next.i.1, %.noexc145.i ] ; 3 uses
  %.021732257.i = phi i64 [ %i.nt, %.noexc145.i.preheader.new ], [ %i.oj, %.noexc145.i ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc145.i.preheader.new ], [ %niter.next.1, %.noexc145.i ] ; 2 uses
  %i.nx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021732257.i, i1 true)
  %i.ny = trunc nuw nsw i64 %i.nx to i32
  %i.nz = or disjoint i32 %i.hy, %i.ny
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %indvars.iv.i
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !10
  %i.ob = add i64 %.021732257.i, -1
  %i.oc = and i64 %i.ob, %.021732257.i            ; 3 uses
  %i.od = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.oc, i1 true)
  %i.oe = trunc nuw nsw i64 %i.od to i32
  %i.of = or disjoint i32 %i.hy, %i.oe
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %indvars.iv.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store i32 %i.of, ptr %i.oh, align 4, !tbaa !10
  %i.oi = add i64 %i.oc, -2
  %i.oj = and i64 %i.oi, %i.oc                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.nw
  br i1 %niter.ncmp.1, label %.loopexit2250.i.loopexit.unr-lcssa, label %.noexc145.i, !llvm.loop !111

.loopexit2250.i.loopexit.unr-lcssa:               ; preds = %.noexc145.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit2250.i, label %.noexc145.i.epil.preheader

.noexc145.i.epil.preheader:                       ; preds = %.loopexit2250.i.loopexit.unr-lcssa, %.noexc145.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.noexc145.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit2250.i.loopexit.unr-lcssa ]
  %.021732257.i.epil.init = phi i64 [ %i.nt, %.noexc145.i.preheader ], [ %i.oj, %.loopexit2250.i.loopexit.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %i.ia to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.ok = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021732257.i.epil.init, i1 true)
  %i.ol = trunc nuw nsw i64 %i.ok to i32
  %i.om = or disjoint i32 %i.hy, %i.ol
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %indvars.iv.i.epil.init
  store i32 %i.om, ptr %i.on, align 4, !tbaa !10
  br label %.loopexit2250.i

.loopexit2250.i:                                  ; preds = %.noexc145.i.epil.preheader, %.loopexit2250.i.loopexit.unr-lcssa, %.noexc144.i, %.noexc421.i, %.noexc356.i, %.noexc291.i, %.noexc226.i, %.noexc189.i
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %i.ia
  br label %.noexc67.i

.noexc67.i:                                       ; preds = %.loopexit2250.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i81.i
  %.sroa.89.3.i = phi ptr [ %.sroa.89.02268.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i81.i ], [ %i.oo, %.loopexit2250.i ] ; 29 uses
  %i.op = xor i64 %i.db, -1
  %i.oq = and i64 %i.op, %i.cx
  %i.or = or i64 %i.oq, %i.cv
  %i.os = xor i64 %i.bs, %i.bw
  %i.ot = xor i64 %i.os, -1
  %i.ou = and i64 %i.or, %i.ot                    ; 5 uses
  %i.ov = and i64 %i.bw, %i.fw
  %i.ow = icmp ult <32 x i8> %i.dc, splat (i8 32)
  %i.ox = icmp ult <32 x i8> %i.de, splat (i8 32)
  %i.oy = bitcast <32 x i1> %i.ow to i32
  %i.oz = zext i32 %i.oy to i64
  %i.pa = bitcast <32 x i1> %i.ox to i32
  %i.pb = sext i32 %i.pa to i64
  %i.pc = shl nsw i64 %i.pb, 32
  %i.pd = or disjoint i64 %i.pc, %i.oz
  %i.pe = or <4 x i64> %i.ao, %i.am
  %i.pf = bitcast <4 x i64> %i.pe to <32 x i8>
  %i.pg = icmp slt <32 x i8> %i.pf, zeroinitializer
  %i.ph = bitcast <32 x i1> %i.pg to i32
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i, label %.noexc72.i, !prof !109

.noexc72.i:                                       ; preds = %.noexc67.i
  %i.pj = shufflevector <4 x i64> %.sroa.70.2.i, <4 x i64> %i.am, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.pk = bitcast <4 x i64> %i.pj to <32 x i8>    ; 3 uses
  %i.pl = shufflevector <32 x i8> %i.pk, <32 x i8> %i.dc, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.pm = bitcast <32 x i8> %i.pl to <16 x i16>
  %i.pn = lshr <16 x i16> %i.pm, splat (i16 4)
  %i.po = bitcast <16 x i16> %i.pn to <32 x i8>
  %i.pp = and <32 x i8> %i.po, splat (i8 15)
  %i.pq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.pp)
  %i.pr = and <32 x i8> %i.pl, splat (i8 15)
  %i.ps = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.pr)
  %i.pt = bitcast <4 x i64> %i.am to <16 x i16>
  %i.pu = lshr <16 x i16> %i.pt, splat (i16 4)
  %i.pv = bitcast <16 x i16> %i.pu to <32 x i8>
  %i.pw = and <32 x i8> %i.pv, splat (i8 15)
  %i.px = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.pw)
  %i.py = and <32 x i8> %i.ps, %i.pq
  %i.pz = and <32 x i8> %i.py, %i.px
  %i.qa = shufflevector <32 x i8> %i.pk, <32 x i8> %i.dc, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.qb = shufflevector <32 x i8> %i.pk, <32 x i8> %i.dc, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.qc = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qa, <32 x i8> splat (i8 96))
  %i.qd = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qb, <32 x i8> splat (i8 112))
  %i.qe = or <32 x i8> %i.qc, %i.qd
  %.inner61 = and <32 x i8> %i.qe, splat (i8 -128)
  %.inner62 = xor <32 x i8> %.inner61, %i.pz
  %i.qf = shufflevector <4 x i64> %i.am, <4 x i64> %i.ao, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.qg = bitcast <4 x i64> %i.qf to <32 x i8>    ; 3 uses
  %i.qh = shufflevector <32 x i8> %i.qg, <32 x i8> %i.de, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.qi = bitcast <32 x i8> %i.qh to <16 x i16>
  %i.qj = lshr <16 x i16> %i.qi, splat (i16 4)
  %i.qk = bitcast <16 x i16> %i.qj to <32 x i8>
  %i.ql = and <32 x i8> %i.qk, splat (i8 15)
  %i.qm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.ql)
  %i.qn = and <32 x i8> %i.qh, splat (i8 15)
  %i.qo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.qn)
  %i.qp = bitcast <4 x i64> %i.ao to <16 x i16>
  %i.qq = lshr <16 x i16> %i.qp, splat (i16 4)
  %i.qr = bitcast <16 x i16> %i.qq to <32 x i8>
  %i.qs = and <32 x i8> %i.qr, splat (i8 15)
  %i.qt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.qs)
  %i.qu = and <32 x i8> %i.qo, %i.qm
  %i.qv = and <32 x i8> %i.qu, %i.qt
  %i.qw = shufflevector <32 x i8> %i.qg, <32 x i8> %i.de, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.qx = shufflevector <32 x i8> %i.qg, <32 x i8> %i.de, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.qy = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qw, <32 x i8> splat (i8 96))
  %i.qz = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qx, <32 x i8> splat (i8 112))
  %i.ra = or <32 x i8> %i.qy, %i.qz
  %.inner65 = and <32 x i8> %i.ra, splat (i8 -128)
  %.inner66 = xor <32 x i8> %.inner65, %i.qv
  %.inner67 = or <32 x i8> %.inner62, %.inner66
  %i.rb = bitcast <32 x i8> %.inner67 to <4 x i64>
  %i.rc = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.de, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.rd = bitcast <32 x i8> %i.rc to <4 x i64>
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i: ; preds = %.noexc67.i, %.noexc72.i
  %.sroa.79.1.i = phi <4 x i64> [ %i.rd, %.noexc72.i ], [ %.sroa.79.2.i, %.noexc67.i ] ; 2 uses
  %.sroa.70.1.i = phi <4 x i64> [ %i.ao, %.noexc72.i ], [ %.sroa.70.2.i, %.noexc67.i ] ; 2 uses
  %.sroa.79.2.i.pn = phi <4 x i64> [ %i.rb, %.noexc72.i ], [ %.sroa.79.2.i, %.noexc67.i ]
  %.sroa.41638.1.i = or <4 x i64> %.sroa.41638.2.i, %.sroa.79.2.i.pn ; 3 uses
  %i.re = icmp eq i64 %i.ou, 0
  br i1 %i.re, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i, label %.noexc186.i

.noexc186.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %i.rf = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ou) ; 11 uses
  %i.rg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ou, i1 true)
  %i.rh = or disjoint i64 %i.rg, %.sroa.11.02261.i
  %i.ri = trunc i64 %i.rh to i32
  store i32 %i.ri, ptr %.sroa.89.3.i, align 4, !tbaa !10
  %i.rj = add i64 %i.ou, -1
  %i.rk = and i64 %i.rj, %i.ou                    ; 3 uses
  %i.rl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.rk, i1 true)
  %i.rm = or disjoint i64 %i.rl, %.sroa.11.02261.i
  %i.rn = trunc i64 %i.rm to i32
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 4
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !10
  %i.rp = add i64 %i.rk, -2
  %i.rq = and i64 %i.rp, %i.rk                    ; 3 uses
  %i.rr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.rq, i1 true)
  %i.rs = or disjoint i64 %i.rr, %.sroa.11.02261.i
  %i.rt = trunc i64 %i.rs to i32
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 8
  store i32 %i.rt, ptr %i.ru, align 4, !tbaa !10
  %i.rv = add i64 %i.rq, -2
  %i.rw = and i64 %i.rv, %i.rq                    ; 3 uses
  %i.rx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.rw, i1 true)
  %i.ry = or disjoint i64 %i.rx, %.sroa.11.02261.i
  %i.rz = trunc i64 %i.ry to i32
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 12
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !10
  %i.sb = icmp samesign ugt i64 %i.rf, 4
  br i1 %i.sb, label %.noexc229.i, label %.loopexit2248.i, !prof !107

.noexc229.i:                                      ; preds = %.noexc186.i
  %i.sc = add i64 %i.rw, -2
  %i.sd = and i64 %i.sc, %i.rw                    ; 3 uses
  %i.se = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sd, i1 true)
  %i.sf = or disjoint i64 %i.se, %.sroa.11.02261.i
  %i.sg = trunc i64 %i.sf to i32
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 16
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !10
  %i.si = add i64 %i.sd, -2
  %i.sj = and i64 %i.si, %i.sd                    ; 3 uses
  %i.sk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sj, i1 true)
  %i.sl = or disjoint i64 %i.sk, %.sroa.11.02261.i
  %i.sm = trunc i64 %i.sl to i32
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 20
  store i32 %i.sm, ptr %i.sn, align 4, !tbaa !10
  %i.so = add i64 %i.sj, -1
  %i.sp = and i64 %i.so, %i.sj                    ; 3 uses
  %i.sq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sp, i1 true)
  %i.sr = or disjoint i64 %i.sq, %.sroa.11.02261.i
  %i.ss = trunc i64 %i.sr to i32
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 24
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !10
  %i.su = add i64 %i.sp, -2
  %i.sv = and i64 %i.su, %i.sp                    ; 3 uses
  %i.sw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sv, i1 true)
  %i.sx = or disjoint i64 %i.sw, %.sroa.11.02261.i
  %i.sy = trunc i64 %i.sx to i32
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 28
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !10
  %i.ta = icmp samesign ugt i64 %i.rf, 8
  br i1 %i.ta, label %.noexc288.i, label %.loopexit2248.i, !prof !107

.noexc288.i:                                      ; preds = %.noexc229.i
  %i.tb = add i64 %i.sv, -2
  %i.tc = and i64 %i.tb, %i.sv                    ; 3 uses
  %i.td = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tc, i1 true)
  %i.te = or disjoint i64 %i.td, %.sroa.11.02261.i
  %i.tf = trunc i64 %i.te to i32
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 32
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !10
  %i.th = add i64 %i.tc, -2
  %i.ti = and i64 %i.th, %i.tc                    ; 3 uses
  %i.tj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ti, i1 true)
  %i.tk = or disjoint i64 %i.tj, %.sroa.11.02261.i
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 36
  store i32 %i.tl, ptr %i.tm, align 4, !tbaa !10
  %i.tn = add i64 %i.ti, -2
  %i.to = and i64 %i.tn, %i.ti                    ; 3 uses
  %i.tp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.to, i1 true)
  %i.tq = or disjoint i64 %i.tp, %.sroa.11.02261.i
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 40
  store i32 %i.tr, ptr %i.ts, align 4, !tbaa !10
  %i.tt = add i64 %i.to, -1
  %i.tu = and i64 %i.tt, %i.to                    ; 3 uses
  %i.tv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tu, i1 true)
  %i.tw = or disjoint i64 %i.tv, %.sroa.11.02261.i
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 44
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !10
  %i.tz = icmp samesign ugt i64 %i.rf, 12
  br i1 %i.tz, label %.noexc359.i, label %.loopexit2248.i, !prof !107

.noexc359.i:                                      ; preds = %.noexc288.i
  %i.ua = add i64 %i.tu, -2
  %i.ub = and i64 %i.ua, %i.tu                    ; 3 uses
  %i.uc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ub, i1 true)
  %i.ud = or disjoint i64 %i.uc, %.sroa.11.02261.i
  %i.ue = trunc i64 %i.ud to i32
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 48
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !10
  %i.ug = add i64 %i.ub, -2
  %i.uh = and i64 %i.ug, %i.ub                    ; 3 uses
  %i.ui = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.uh, i1 true)
  %i.uj = or disjoint i64 %i.ui, %.sroa.11.02261.i
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 52
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !10
  %i.um = add i64 %i.uh, -2
  %i.un = and i64 %i.um, %i.uh                    ; 3 uses
  %i.uo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.un, i1 true)
  %i.up = or disjoint i64 %i.uo, %.sroa.11.02261.i
  %i.uq = trunc i64 %i.up to i32
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 56
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !10
  %i.us = add i64 %i.un, -2
  %i.ut = and i64 %i.us, %i.un                    ; 3 uses
  %i.uu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ut, i1 true)
  %i.uv = or disjoint i64 %i.uu, %.sroa.11.02261.i
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 60
  store i32 %i.uw, ptr %i.ux, align 4, !tbaa !10
  %i.uy = icmp samesign ugt i64 %i.rf, 16
  br i1 %i.uy, label %.noexc418.i, label %.loopexit2248.i, !prof !107

.noexc418.i:                                      ; preds = %.noexc359.i
  %i.uz = add i64 %i.ut, -1
  %i.va = and i64 %i.uz, %i.ut                    ; 3 uses
  %i.vb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.va, i1 true)
  %i.vc = or disjoint i64 %i.vb, %.sroa.11.02261.i
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 64
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !10
  %i.vf = add i64 %i.va, -2
  %i.vg = and i64 %i.vf, %i.va                    ; 3 uses
  %i.vh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vg, i1 true)
  %i.vi = or disjoint i64 %i.vh, %.sroa.11.02261.i
  %i.vj = trunc i64 %i.vi to i32
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 68
  store i32 %i.vj, ptr %i.vk, align 4, !tbaa !10
  %i.vl = add i64 %i.vg, -2
  %i.vm = and i64 %i.vl, %i.vg                    ; 3 uses
  %i.vn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vm, i1 true)
  %i.vo = or disjoint i64 %i.vn, %.sroa.11.02261.i
  %i.vp = trunc i64 %i.vo to i32
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 72
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !10
  %i.vr = add i64 %i.vm, -2
  %i.vs = and i64 %i.vr, %i.vm                    ; 3 uses
  %i.vt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vs, i1 true)
  %i.vu = or disjoint i64 %i.vt, %.sroa.11.02261.i
  %i.vv = trunc i64 %i.vu to i32
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 76
  store i32 %i.vv, ptr %i.vw, align 4, !tbaa !10
  %i.vx = icmp samesign ugt i64 %i.rf, 20
  br i1 %i.vx, label %.noexc148.i, label %.loopexit2248.i, !prof !107

.noexc148.i:                                      ; preds = %.noexc418.i
  %i.vy = add i64 %i.vs, -2
  %i.vz = and i64 %i.vy, %i.vs                    ; 3 uses
  %i.wa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vz, i1 true)
  %i.wb = or disjoint i64 %i.wa, %.sroa.11.02261.i
  %i.wc = trunc i64 %i.wb to i32
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 80
  store i32 %i.wc, ptr %i.wd, align 4, !tbaa !10
  %i.we = add i64 %i.vz, -1
  %i.wf = and i64 %i.we, %i.vz                    ; 3 uses
  %i.wg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wf, i1 true)
  %i.wh = or disjoint i64 %i.wg, %.sroa.11.02261.i
  %i.wi = trunc i64 %i.wh to i32
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 84
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !10
  %i.wk = add i64 %i.wf, -2
  %i.wl = and i64 %i.wk, %i.wf                    ; 3 uses
  %i.wm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wl, i1 true)
  %i.wn = or disjoint i64 %i.wm, %.sroa.11.02261.i
  %i.wo = trunc i64 %i.wn to i32
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 88
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !10
  %i.wq = add i64 %i.wl, -2
  %i.wr = and i64 %i.wq, %i.wl                    ; 3 uses
  %i.ws = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wr, i1 true)
  %i.wt = or disjoint i64 %i.ws, %.sroa.11.02261.i
  %i.wu = trunc i64 %i.wt to i32
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 92
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !10
  %i.ww = icmp samesign ugt i64 %i.rf, 24
  br i1 %i.ww, label %.noexc149.i.preheader, label %.loopexit2248.i, !prof !110

.noexc149.i.preheader:                            ; preds = %.noexc148.i
  %i.wx = add i64 %i.wr, -2
  %i.wy = and i64 %i.wx, %i.wr                    ; 2 uses
  %xtraiter95 = and i64 %i.rf, 1
  %i.wz = icmp eq i64 %i.rf, 25
  br i1 %i.wz, label %.noexc149.i.epil.preheader, label %.noexc149.i.preheader.new

.noexc149.i.preheader.new:                        ; preds = %.noexc149.i.preheader
  %i.xa = and i64 %i.rf, 126
  %i.xb = add nsw i64 %i.xa, -26
  br label %.noexc149.i

.noexc149.i:                                      ; preds = %.noexc149.i, %.noexc149.i.preheader.new
  %indvars.iv2316.i = phi i64 [ 24, %.noexc149.i.preheader.new ], [ %indvars.iv.next2317.i.1, %.noexc149.i ] ; 3 uses
  %.021672259.i = phi i64 [ %i.wy, %.noexc149.i.preheader.new ], [ %i.xo, %.noexc149.i ] ; 3 uses
  %niter99 = phi i64 [ 0, %.noexc149.i.preheader.new ], [ %niter99.next.1, %.noexc149.i ] ; 2 uses
  %i.xc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i, i1 true)
  %i.xd = or disjoint i64 %i.xc, %.sroa.11.02261.i
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !10
  %i.xg = add i64 %.021672259.i, -1
  %i.xh = and i64 %i.xg, %.021672259.i            ; 3 uses
  %i.xi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xh, i1 true)
  %i.xj = or disjoint i64 %i.xi, %.sroa.11.02261.i
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i32 %i.xk, ptr %i.xm, align 4, !tbaa !10
  %i.xn = add i64 %i.xh, -2
  %i.xo = and i64 %i.xn, %i.xh                    ; 2 uses
  %indvars.iv.next2317.i.1 = add nuw nsw i64 %indvars.iv2316.i, 2 ; 2 uses
  %niter99.next.1 = add nuw i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.xb
  br i1 %niter99.ncmp.1, label %.loopexit2248.i.loopexit.unr-lcssa, label %.noexc149.i, !llvm.loop !111

.loopexit2248.i.loopexit.unr-lcssa:               ; preds = %.noexc149.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.loopexit2248.i, label %.noexc149.i.epil.preheader

.noexc149.i.epil.preheader:                       ; preds = %.loopexit2248.i.loopexit.unr-lcssa, %.noexc149.i.preheader
  %indvars.iv2316.i.epil.init = phi i64 [ 24, %.noexc149.i.preheader ], [ %indvars.iv.next2317.i.1, %.loopexit2248.i.loopexit.unr-lcssa ]
  %.021672259.i.epil.init = phi i64 [ %i.wy, %.noexc149.i.preheader ], [ %i.xo, %.loopexit2248.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.rf to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.xp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i.epil.init, i1 true)
  %i.xq = or disjoint i64 %i.xp, %.sroa.11.02261.i
  %i.xr = trunc i64 %i.xq to i32
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i.epil.init
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !10
  br label %.loopexit2248.i

.loopexit2248.i:                                  ; preds = %.noexc149.i.epil.preheader, %.loopexit2248.i.loopexit.unr-lcssa, %.noexc148.i, %.noexc418.i, %.noexc359.i, %.noexc288.i, %.noexc229.i, %.noexc186.i
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %i.rf
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i: ; preds = %.loopexit2248.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.89.4.i = phi ptr [ %.sroa.89.3.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.xt, %.loopexit2248.i ] ; 2 uses
  %i.xu = xor i64 %i.fn, -1
  %i.xv = and i64 %i.xu, %i.fk
  %i.xw = or i64 %i.xv, %i.fi
  %i.xx = xor i64 %i.ef, %i.ej
  %i.xy = xor i64 %i.xx, -1
  %i.xz = and i64 %i.xw, %i.xy                    ; 2 uses
  %i.ya = and i64 %i.ej, %i.pd
  %i.yb = or i64 %i.ov, %.sroa.236.02266.i
  %i.yc = or i64 %i.yb, %i.ya                     ; 2 uses
  %i.yd = add nuw i64 %.sroa.11.02261.i, 128      ; 4 uses
  %i.ye = icmp ult i64 %i.yd, %spec.select.i.i
  br i1 %i.ye, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ae, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.0132367.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i
  %i.yf = or <4 x i64> %.sroa.41638.1.i, %.sroa.79.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.yg = icmp eq i64 %.013.i, %i.yd
  br i1 %i.yg, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.32.0.lcssa2391.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ek, %._crit_edge.i ]
  %.sroa.41638.0.lcssa2390.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.41638.1.i, %._crit_edge.i ]
  %.sroa.70.0.lcssa2389.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.70.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.79.0.lcssa2388.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.yf, %._crit_edge.i ] ; 2 uses
  %.sroa.89.0.lcssa2387.i = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %.sroa.89.4.i, %._crit_edge.i ] ; 29 uses
  %.sroa.226.0.lcssa2386.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.xz, %._crit_edge.i ] ; 5 uses
  %.sroa.236.0.lcssa2385.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yc, %._crit_edge.i ]
  %.sroa.12.0.lcssa2384.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.12.3.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa2383.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.fo, %._crit_edge.i ]
  %.sroa.11.0.lcssa2382.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yd, %._crit_edge.i ] ; 30 uses
  %.01323672381.i = phi i64 [ %.0132367.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.yh = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.ag, %._crit_edge.i ] ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa2382.i
  %i.yj = sub i64 %.01323672381.i, %.sroa.11.0.lcssa2382.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.yi, i64 %i.yj, i1 false)
  %.0..0..0..0..0..i = load <4 x i64>, ptr %i.a, align 16, !tbaa !9 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <4 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !9 ; 6 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64..i = load <4 x i64>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !9 ; 6 uses
  %.96..96..96..96..96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.96..96..96..96..96..i = load <4 x i64>, ptr %.96..96..96..96..96..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %i.yk = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8> ; 9 uses
  %i.yl = icmp eq <32 x i8> %i.yk, splat (i8 92)
  %i.ym = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8> ; 10 uses
  %i.yn = icmp eq <32 x i8> %i.ym, splat (i8 92)
  %i.yo = bitcast <32 x i1> %i.yl to i32
  %i.yp = zext i32 %i.yo to i64
  %i.yq = bitcast <32 x i1> %i.yn to i32
  %i.yr = sext i32 %i.yq to i64
  %i.ys = shl nsw i64 %i.yr, 32                   ; 2 uses
  %i.yt = or disjoint i64 %i.ys, %i.yp            ; 3 uses
  %.not.i68.i.i = icmp eq i64 %i.yt, 0
  br i1 %.not.i68.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.yu = xor i64 %.sroa.12.0.lcssa2384.i, -1
  %i.yv = and i64 %i.yt, %i.yu                    ; 2 uses
  %i.yw = shl i64 %i.yv, 1
  %i.yx = or i64 %i.yw, -6148914691236517206
  %i.yy = sub i64 %i.yx, %i.yv
  %i.yz = xor i64 %i.yy, -6148914691236517206     ; 2 uses
  %i.za = or i64 %i.yt, %.sroa.12.0.lcssa2384.i
  %i.zb = xor i64 %i.yz, %i.za
  %i.zc = and i64 %i.yz, %i.ys
  %i.zd = lshr i64 %i.zc, 63
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i: ; preds = %bb.n, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.1.i = phi i64 [ %i.zd, %bb.n ], [ 0, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i69.i.i = phi i64 [ %i.zb, %bb.n ], [ %.sroa.12.0.lcssa2384.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.ze = icmp eq <32 x i8> %i.yk, splat (i8 34)
  %i.zf = icmp eq <32 x i8> %i.ym, splat (i8 34)
  %i.zg = bitcast <32 x i1> %i.ze to i32
  %i.zh = zext i32 %i.zg to i64
  %i.zi = bitcast <32 x i1> %i.zf to i32
  %i.zj = sext i32 %i.zi to i64
  %i.zk = shl nsw i64 %i.zj, 32
  %i.zl = or disjoint i64 %i.zk, %i.zh
  %i.zm = xor i64 %.sroa.0.0.i69.i.i, -1
  %i.zn = and i64 %i.zl, %i.zm                    ; 3 uses
  %i.zo = insertelement <2 x i64> poison, i64 %i.zn, i64 0
  %i.zp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.zo, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.zq = extractelement <2 x i64> %i.zp, i64 0
  %i.zr = xor i64 %i.zq, %.sroa.32.0.lcssa2391.i  ; 3 uses
  %i.zs = ashr i64 %i.zr, 63
  %i.zt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.yk)
  %i.zu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.ym)
  %i.zv = icmp eq <32 x i8> %i.zt, %i.yk
  %i.zw = icmp eq <32 x i8> %i.zu, %i.ym
  %i.zx = bitcast <32 x i1> %i.zv to i32
  %i.zy = zext i32 %i.zx to i64
  %i.zz = bitcast <32 x i1> %i.zw to i32
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = shl nsw i64 %i.aaa, 32
  %i.aac = or disjoint i64 %i.aab, %i.zy
  %i.aad = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.yk)
  %i.aae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.ym)
  %i.aaf = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8>
  %i.aag = or <32 x i8> %i.aaf, splat (i8 32)
  %i.aah = icmp eq <32 x i8> %i.aag, %i.aad
  %i.aai = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8>
  %i.aaj = or <32 x i8> %i.aai, splat (i8 32)
  %i.aak = icmp eq <32 x i8> %i.aaj, %i.aae
  %i.aal = bitcast <32 x i1> %i.aah to i32
  %i.aam = zext i32 %i.aal to i64
  %i.aan = bitcast <32 x i1> %i.aak to i32
  %i.aao = sext i32 %i.aan to i64
  %i.aap = shl nsw i64 %i.aao, 32
  %i.aaq = or disjoint i64 %i.aap, %i.aam         ; 2 uses
  %i.aar = or i64 %i.aaq, %i.aac
  %i.aas = xor i64 %i.aar, -1                     ; 2 uses
  %i.aat = xor i64 %i.zn, -1
  %i.aau = and i64 %i.aas, %i.aat                 ; 2 uses
  %i.aav = shl i64 %i.aau, 1
  %i.aaw = or disjoint i64 %i.aav, %.sroa.0.0.lcssa2383.i
  %i.aax = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8> ; 9 uses
  %i.aay = icmp eq <32 x i8> %i.aax, splat (i8 92)
  %i.aaz = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8> ; 10 uses
  %i.aba = icmp eq <32 x i8> %i.aaz, splat (i8 92)
  %i.abb = bitcast <32 x i1> %i.aay to i32
  %i.abc = zext i32 %i.abb to i64
  %i.abd = bitcast <32 x i1> %i.aba to i32
  %i.abe = sext i32 %i.abd to i64
  %i.abf = shl nsw i64 %i.abe, 32
  %i.abg = or disjoint i64 %i.abf, %i.abc         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.abg, 0
  br i1 %.not.i.i.i, label %.noexc117.i, label %bb.o

bb.o:                                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %i.abh = xor i64 %.sroa.12.1.i, -1
  %i.abi = and i64 %i.abg, %i.abh
  %i.abj = shl i64 %i.abg, 1
  %i.abk = or i64 %i.abj, -6148914691236517206
  %i.abl = sub i64 %i.abk, %i.abi
  %i.abm = or i64 %.sroa.12.1.i, %i.abg
  %i.abn = xor i64 %i.abm, %i.abl
  %i.abo = xor i64 %i.abn, -6148914691236517206
  br label %.noexc117.i

.noexc117.i:                                      ; preds = %bb.o, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.abo, %bb.o ], [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i ]
  %i.abp = icmp eq <32 x i8> %i.aax, splat (i8 34)
  %i.abq = icmp eq <32 x i8> %i.aaz, splat (i8 34)
  %i.abr = bitcast <32 x i1> %i.abp to i32
  %i.abs = zext i32 %i.abr to i64
  %i.abt = bitcast <32 x i1> %i.abq to i32
  %i.abu = sext i32 %i.abt to i64
  %i.abv = shl nsw i64 %i.abu, 32
  %i.abw = or disjoint i64 %i.abv, %i.abs
  %i.abx = xor i64 %.sroa.0.0.i.i.i, -1
  %i.aby = and i64 %i.abw, %i.abx                 ; 3 uses
  %i.abz = insertelement <2 x i64> poison, i64 %i.aby, i64 0
  %i.aca = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.abz, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.acb = extractelement <2 x i64> %i.aca, i64 0
  %i.acc = xor i64 %i.acb, %i.zs                  ; 3 uses
  %i.acd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aax)
  %i.ace = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aaz)
  %i.acf = icmp eq <32 x i8> %i.acd, %i.aax
  %i.acg = icmp eq <32 x i8> %i.ace, %i.aaz
  %i.ach = bitcast <32 x i1> %i.acf to i32
  %i.aci = zext i32 %i.ach to i64
  %i.acj = bitcast <32 x i1> %i.acg to i32
  %i.ack = sext i32 %i.acj to i64
  %i.acl = shl nsw i64 %i.ack, 32
  %i.acm = or disjoint i64 %i.acl, %i.aci
  %i.acn = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aax)
  %i.aco = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aaz)
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.agn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agm, i1 true)
  %i.ago = trunc nuw nsw i64 %i.agn to i32
  %i.agp = or disjoint i32 %i.aft, %i.ago
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 12
  store i32 %i.agp, ptr %i.agq, align 4, !tbaa !10
  %i.agr = icmp samesign ugt i64 %i.afv, 4
  br i1 %i.agr, label %.noexc221.i, label %.loopexit2246.i, !prof !107

.noexc221.i:                                      ; preds = %.noexc195.i
  %i.ags = add i64 %i.agm, -2
  %i.agt = and i64 %i.ags, %i.agm                 ; 3 uses
  %i.agu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agt, i1 true)
  %i.agv = trunc nuw nsw i64 %i.agu to i32
  %i.agw = or disjoint i32 %i.aft, %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 16
  store i32 %i.agw, ptr %i.agx, align 4, !tbaa !10
  %i.agy = add i64 %i.agt, -2
  %i.agz = and i64 %i.agy, %i.agt                 ; 3 uses
  %i.aha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agz, i1 true)
  %i.ahb = trunc nuw nsw i64 %i.aha to i32
  %i.ahc = or disjoint i32 %i.aft, %i.ahb
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 20
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !10
  %i.ahe = add i64 %i.agz, -1
  %i.ahf = and i64 %i.ahe, %i.agz                 ; 3 uses
  %i.ahg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahf, i1 true)
  %i.ahh = trunc nuw nsw i64 %i.ahg to i32
  %i.ahi = or disjoint i32 %i.aft, %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 24
  store i32 %i.ahi, ptr %i.ahj, align 4, !tbaa !10
  %i.ahk = add i64 %i.ahf, -2
  %i.ahl = and i64 %i.ahk, %i.ahf                 ; 3 uses
  %i.ahm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahl, i1 true)
  %i.ahn = trunc nuw nsw i64 %i.ahm to i32
  %i.aho = or disjoint i32 %i.aft, %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 28
  store i32 %i.aho, ptr %i.ahp, align 4, !tbaa !10
  %i.ahq = icmp samesign ugt i64 %i.afv, 8
  br i1 %i.ahq, label %.noexc297.i, label %.loopexit2246.i, !prof !107

.noexc297.i:                                      ; preds = %.noexc221.i
  %i.ahr = add i64 %i.ahl, -2
  %i.ahs = and i64 %i.ahr, %i.ahl                 ; 3 uses
  %i.aht = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahs, i1 true)
  %i.ahu = trunc nuw nsw i64 %i.aht to i32
  %i.ahv = or disjoint i32 %i.aft, %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 32
  store i32 %i.ahv, ptr %i.ahw, align 4, !tbaa !10
  %i.ahx = add i64 %i.ahs, -2
  %i.ahy = and i64 %i.ahx, %i.ahs                 ; 3 uses
  %i.ahz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahy, i1 true)
  %i.aia = trunc nuw nsw i64 %i.ahz to i32
  %i.aib = or disjoint i32 %i.aft, %i.aia
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 36
  store i32 %i.aib, ptr %i.aic, align 4, !tbaa !10
  %i.aid = add i64 %i.ahy, -2
  %i.aie = and i64 %i.aid, %i.ahy                 ; 3 uses
  %i.aif = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aie, i1 true)
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = or disjoint i32 %i.aft, %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 40
  store i32 %i.aih, ptr %i.aii, align 4, !tbaa !10
  %i.aij = add i64 %i.aie, -1
  %i.aik = and i64 %i.aij, %i.aie                 ; 3 uses
  %i.ail = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aik, i1 true)
  %i.aim = trunc nuw nsw i64 %i.ail to i32
  %i.ain = or disjoint i32 %i.aft, %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 44
  store i32 %i.ain, ptr %i.aio, align 4, !tbaa !10
  %i.aip = icmp samesign ugt i64 %i.afv, 12
  br i1 %i.aip, label %.noexc351.i, label %.loopexit2246.i, !prof !107

.noexc351.i:                                      ; preds = %.noexc297.i
  %i.aiq = add i64 %i.aik, -2
  %i.air = and i64 %i.aiq, %i.aik                 ; 3 uses
  %i.ais = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.air, i1 true)
  %i.ait = trunc nuw nsw i64 %i.ais to i32
  %i.aiu = or disjoint i32 %i.aft, %i.ait
  %i.aiv = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 48
  store i32 %i.aiu, ptr %i.aiv, align 4, !tbaa !10
  %i.aiw = add i64 %i.air, -2
  %i.aix = and i64 %i.aiw, %i.air                 ; 3 uses
  %i.aiy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aix, i1 true)
  %i.aiz = trunc nuw nsw i64 %i.aiy to i32
  %i.aja = or disjoint i32 %i.aft, %i.aiz
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 52
  store i32 %i.aja, ptr %i.ajb, align 4, !tbaa !10
  %i.ajc = add i64 %i.aix, -2
  %i.ajd = and i64 %i.ajc, %i.aix                 ; 3 uses
  %i.aje = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajd, i1 true)
  %i.ajf = trunc nuw nsw i64 %i.aje to i32
  %i.ajg = or disjoint i32 %i.aft, %i.ajf
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 56
  store i32 %i.ajg, ptr %i.ajh, align 4, !tbaa !10
  %i.aji = add i64 %i.ajd, -2
  %i.ajj = and i64 %i.aji, %i.ajd                 ; 3 uses
  %i.ajk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajj, i1 true)
  %i.ajl = trunc nuw nsw i64 %i.ajk to i32
  %i.ajm = or disjoint i32 %i.aft, %i.ajl
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 60
  store i32 %i.ajm, ptr %i.ajn, align 4, !tbaa !10
  %i.ajo = icmp samesign ugt i64 %i.afv, 16
  br i1 %i.ajo, label %.noexc427.i, label %.loopexit2246.i, !prof !107

.noexc427.i:                                      ; preds = %.noexc351.i
  %i.ajp = add i64 %i.ajj, -1
  %i.ajq = and i64 %i.ajp, %i.ajj                 ; 3 uses
  %i.ajr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajq, i1 true)
  %i.ajs = trunc nuw nsw i64 %i.ajr to i32
  %i.ajt = or disjoint i32 %i.aft, %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 64
  store i32 %i.ajt, ptr %i.aju, align 4, !tbaa !10
  %i.ajv = add i64 %i.ajq, -2
  %i.ajw = and i64 %i.ajv, %i.ajq                 ; 3 uses
  %i.ajx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajw, i1 true)
  %i.ajy = trunc nuw nsw i64 %i.ajx to i32
  %i.ajz = or disjoint i32 %i.aft, %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 68
  store i32 %i.ajz, ptr %i.aka, align 4, !tbaa !10
  %i.akb = add i64 %i.ajw, -2
  %i.akc = and i64 %i.akb, %i.ajw                 ; 3 uses
  %i.akd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akc, i1 true)
  %i.ake = trunc nuw nsw i64 %i.akd to i32
  %i.akf = or disjoint i32 %i.aft, %i.ake
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 72
  store i32 %i.akf, ptr %i.akg, align 4, !tbaa !10
  %i.akh = add i64 %i.akc, -2
  %i.aki = and i64 %i.akh, %i.akc                 ; 3 uses
  %i.akj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aki, i1 true)
  %i.akk = trunc nuw nsw i64 %i.akj to i32
  %i.akl = or disjoint i32 %i.aft, %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 76
  store i32 %i.akl, ptr %i.akm, align 4, !tbaa !10
  %i.akn = icmp samesign ugt i64 %i.afv, 20
  br i1 %i.akn, label %.noexc137.i, label %.loopexit2246.i, !prof !107

.noexc137.i:                                      ; preds = %.noexc427.i
  %i.ako = add i64 %i.aki, -2
  %i.akp = and i64 %i.ako, %i.aki                 ; 3 uses
  %i.akq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akp, i1 true)
  %i.akr = trunc nuw nsw i64 %i.akq to i32
  %i.aks = or disjoint i32 %i.aft, %i.akr
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 80
  store i32 %i.aks, ptr %i.akt, align 4, !tbaa !10
  %i.aku = add i64 %i.akp, -1
  %i.akv = and i64 %i.aku, %i.akp                 ; 3 uses
  %i.akw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akv, i1 true)
  %i.akx = trunc nuw nsw i64 %i.akw to i32
  %i.aky = or disjoint i32 %i.aft, %i.akx
  %i.akz = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 84
  store i32 %i.aky, ptr %i.akz, align 4, !tbaa !10
  %i.ala = add i64 %i.akv, -2
  %i.alb = and i64 %i.ala, %i.akv                 ; 3 uses
  %i.alc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.alb, i1 true)
  %i.ald = trunc nuw nsw i64 %i.alc to i32
  %i.ale = or disjoint i32 %i.aft, %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 88
  store i32 %i.ale, ptr %i.alf, align 4, !tbaa !10
  %i.alg = add i64 %i.alb, -2
  %i.alh = and i64 %i.alg, %i.alb                 ; 3 uses
  %i.ali = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.alh, i1 true)
  %i.alj = trunc nuw nsw i64 %i.ali to i32
  %i.alk = or disjoint i32 %i.aft, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 92
  store i32 %i.alk, ptr %i.all, align 4, !tbaa !10
  %i.alm = icmp samesign ugt i64 %i.afv, 24
  br i1 %i.alm, label %.noexc138.i.preheader, label %.loopexit2246.i, !prof !110

.noexc138.i.preheader:                            ; preds = %.noexc137.i
  %i.aln = add i64 %i.alh, -2
  %i.alo = and i64 %i.aln, %i.alh                 ; 2 uses
  %xtraiter100 = and i64 %i.afv, 1
  %i.alp = icmp eq i64 %i.afv, 25
  br i1 %i.alp, label %.noexc138.i.epil.preheader, label %.noexc138.i.preheader.new

.noexc138.i.preheader.new:                        ; preds = %.noexc138.i.preheader
  %i.alq = and i64 %i.afv, 126
  %i.alr = add nsw i64 %i.alq, -26
  br label %.noexc138.i

.noexc138.i:                                      ; preds = %.noexc138.i, %.noexc138.i.preheader.new
  %indvars.iv2321.i = phi i64 [ 24, %.noexc138.i.preheader.new ], [ %indvars.iv.next2322.i.1, %.noexc138.i ] ; 3 uses
  %.021852282.i = phi i64 [ %i.alo, %.noexc138.i.preheader.new ], [ %i.ame, %.noexc138.i ] ; 3 uses
  %niter104 = phi i64 [ 0, %.noexc138.i.preheader.new ], [ %niter104.next.1, %.noexc138.i ] ; 2 uses
  %i.als = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021852282.i, i1 true)
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = or disjoint i32 %i.aft, %i.alt
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %indvars.iv2321.i
  store i32 %i.alu, ptr %i.alv, align 4, !tbaa !10
  %i.alw = add i64 %.021852282.i, -1
  %i.alx = and i64 %i.alw, %.021852282.i          ; 3 uses
  %i.aly = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.alx, i1 true)
  %i.alz = trunc nuw nsw i64 %i.aly to i32
  %i.ama = or disjoint i32 %i.aft, %i.alz
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %indvars.iv2321.i
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 4
  store i32 %i.ama, ptr %i.amc, align 4, !tbaa !10
  %i.amd = add i64 %i.alx, -2
  %i.ame = and i64 %i.amd, %i.alx                 ; 2 uses
  %indvars.iv.next2322.i.1 = add nuw nsw i64 %indvars.iv2321.i, 2 ; 2 uses
  %niter104.next.1 = add nuw i64 %niter104, 2
  %niter104.ncmp.1 = icmp eq i64 %niter104, %i.alr
  br i1 %niter104.ncmp.1, label %.loopexit2246.i.loopexit.unr-lcssa, label %.noexc138.i, !llvm.loop !111

.loopexit2246.i.loopexit.unr-lcssa:               ; preds = %.noexc138.i
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.loopexit2246.i, label %.noexc138.i.epil.preheader

.noexc138.i.epil.preheader:                       ; preds = %.loopexit2246.i.loopexit.unr-lcssa, %.noexc138.i.preheader
  %indvars.iv2321.i.epil.init = phi i64 [ 24, %.noexc138.i.preheader ], [ %indvars.iv.next2322.i.1, %.loopexit2246.i.loopexit.unr-lcssa ]
  %.021852282.i.epil.init = phi i64 [ %i.alo, %.noexc138.i.preheader ], [ %i.ame, %.loopexit2246.i.loopexit.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.afv to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.amf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021852282.i.epil.init, i1 true)
  %i.amg = trunc nuw nsw i64 %i.amf to i32
  %i.amh = or disjoint i32 %i.aft, %i.amg
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %indvars.iv2321.i.epil.init
  store i32 %i.amh, ptr %i.ami, align 4, !tbaa !10
  br label %.loopexit2246.i

.loopexit2246.i:                                  ; preds = %.noexc138.i.epil.preheader, %.loopexit2246.i.loopexit.unr-lcssa, %.noexc137.i, %.noexc427.i, %.noexc351.i, %.noexc297.i, %.noexc221.i, %.noexc195.i
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %i.afv
  br label %.noexc100.i

.noexc100.i:                                      ; preds = %.loopexit2246.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i
  %.sroa.89.1.i = phi ptr [ %.sroa.89.0.lcssa2387.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i ], [ %i.amj, %.loopexit2246.i ] ; 29 uses
  %i.amk = xor i64 %i.aaw, -1
  %i.aml = and i64 %i.amk, %i.aas
  %i.amm = or i64 %i.aml, %i.aaq
  %i.amn = xor i64 %i.zn, %i.zr
  %i.amo = xor i64 %i.amn, -1
  %i.amp = and i64 %i.amm, %i.amo                 ; 5 uses
  %i.amq = and i64 %i.zr, %i.adn
  %i.amr = icmp ult <32 x i8> %i.aax, splat (i8 32)
  %i.ams = icmp ult <32 x i8> %i.aaz, splat (i8 32)
  %i.amt = bitcast <32 x i1> %i.amr to i32
  %i.amu = zext i32 %i.amt to i64
  %i.amv = bitcast <32 x i1> %i.ams to i32
  %i.amw = sext i32 %i.amv to i64
  %i.amx = shl nsw i64 %i.amw, 32
  %i.amy = or disjoint i64 %i.amx, %i.amu
  %i.amz = or <4 x i64> %.96..96..96..96..96..i, %.64..64..64..64..64..i
  %i.ana = bitcast <4 x i64> %i.amz to <32 x i8>
  %i.anb = icmp slt <32 x i8> %i.ana, zeroinitializer
  %i.anc = bitcast <32 x i1> %i.anb to i32
  %i.and = icmp eq i32 %i.anc, 0
  br i1 %i.and, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i, label %.noexc105.i, !prof !109

.noexc105.i:                                      ; preds = %.noexc100.i
  %i.ane = shufflevector <4 x i64> %.sroa.70.3.i, <4 x i64> %.64..64..64..64..64..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.anf = bitcast <4 x i64> %i.ane to <32 x i8>  ; 3 uses
  %i.ang = shufflevector <32 x i8> %i.anf, <32 x i8> %i.aax, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.anh = bitcast <32 x i8> %i.ang to <16 x i16>
  %i.ani = lshr <16 x i16> %i.anh, splat (i16 4)
  %i.anj = bitcast <16 x i16> %i.ani to <32 x i8>
  %i.ank = and <32 x i8> %i.anj, splat (i8 15)
  %i.anl = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.ank)
  %i.anm = and <32 x i8> %i.ang, splat (i8 15)
  %i.ann = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.anm)
  %i.ano = bitcast <4 x i64> %.64..64..64..64..64..i to <16 x i16>
  %i.anp = lshr <16 x i16> %i.ano, splat (i16 4)
  %i.anq = bitcast <16 x i16> %i.anp to <32 x i8>
  %i.anr = and <32 x i8> %i.anq, splat (i8 15)
  %i.ans = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.anr)
  %i.ant = and <32 x i8> %i.ann, %i.anl
  %i.anu = and <32 x i8> %i.ant, %i.ans
  %i.anv = shufflevector <32 x i8> %i.anf, <32 x i8> %i.aax, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.anw = shufflevector <32 x i8> %i.anf, <32 x i8> %i.aax, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.anx = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.anv, <32 x i8> splat (i8 96))
  %i.any = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.anw, <32 x i8> splat (i8 112))
  %i.anz = or <32 x i8> %i.anx, %i.any
  %.inner82 = and <32 x i8> %i.anz, splat (i8 -128)
  %.inner83 = xor <32 x i8> %.inner82, %i.anu
  %i.aoa = bitcast <32 x i8> %.inner83 to <4 x i64>
  %i.aob = shufflevector <4 x i64> %.64..64..64..64..64..i, <4 x i64> %.96..96..96..96..96..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.aoc = bitcast <4 x i64> %i.aob to <32 x i8>  ; 3 uses
  %i.aod = shufflevector <32 x i8> %i.aoc, <32 x i8> %i.aaz, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.aoe = bitcast <32 x i8> %i.aod to <16 x i16>
  %i.aof = lshr <16 x i16> %i.aoe, splat (i16 4)
  %i.aog = bitcast <16 x i16> %i.aof to <32 x i8>
  %i.aoh = and <32 x i8> %i.aog, splat (i8 15)
  %i.aoi = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.aoh)
  %i.aoj = and <32 x i8> %i.aod, splat (i8 15)
  %i.aok = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aoj)
  %i.aol = bitcast <4 x i64> %.96..96..96..96..96..i to <16 x i16>
  %i.aom = lshr <16 x i16> %i.aol, splat (i16 4)
  %i.aon = bitcast <16 x i16> %i.aom to <32 x i8>
  %i.aoo = and <32 x i8> %i.aon, splat (i8 15)
  %i.aop = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.aoo)
  %i.aoq = and <32 x i8> %i.aok, %i.aoi
  %i.aor = and <32 x i8> %i.aoq, %i.aop
  %i.aos = shufflevector <32 x i8> %i.aoc, <32 x i8> %i.aaz, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.aot = shufflevector <32 x i8> %i.aoc, <32 x i8> %i.aaz, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.aou = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aos, <32 x i8> splat (i8 96))
  %i.aov = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aot, <32 x i8> splat (i8 112))
  %i.aow = or <32 x i8> %i.aou, %i.aov
  %.inner86 = and <32 x i8> %i.aow, splat (i8 -128)
  %.inner87 = xor <32 x i8> %.inner86, %i.aor
  %i.aox = bitcast <32 x i8> %.inner87 to <4 x i64>
  %i.aoy = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aaz, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.aoz = bitcast <32 x i8> %i.aoy to <4 x i64>
  %i.apa = or <4 x i64> %.sroa.41638.4.i, %i.aoz
  %i.apb = or <4 x i64> %i.apa, %i.aoa
  %i.apc = or <4 x i64> %i.apb, %i.aox
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i: ; preds = %.noexc105.i, %.noexc100.i
  %.sroa.41638.3.i = phi <4 x i64> [ %i.apc, %.noexc105.i ], [ %.sroa.79.4.i, %.noexc100.i ] ; 2 uses
  %i.apd = icmp eq i64 %i.amp, 0
  br i1 %i.apd, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %.noexc192.i

.noexc192.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i
  %i.ape = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.amp) ; 11 uses
  %i.apf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amp, i1 true)
  %i.apg = or disjoint i64 %i.apf, %.sroa.11.0.lcssa2382.i
  %i.aph = trunc i64 %i.apg to i32
  store i32 %i.aph, ptr %.sroa.89.1.i, align 4, !tbaa !10
  %i.api = add i64 %i.amp, -1
  %i.apj = and i64 %i.api, %i.amp                 ; 3 uses
  %i.apk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.apj, i1 true)
  %i.apl = or disjoint i64 %i.apk, %.sroa.11.0.lcssa2382.i
  %i.apm = trunc i64 %i.apl to i32
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 4
  store i32 %i.apm, ptr %i.apn, align 4, !tbaa !10
  %i.apo = add i64 %i.apj, -2
  %i.app = and i64 %i.apo, %i.apj                 ; 3 uses
  %i.apq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.app, i1 true)
  %i.apr = or disjoint i64 %i.apq, %.sroa.11.0.lcssa2382.i
  %i.aps = trunc i64 %i.apr to i32
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 8
  store i32 %i.aps, ptr %i.apt, align 4, !tbaa !10
  %i.apu = add i64 %i.app, -2
  %i.apv = and i64 %i.apu, %i.app                 ; 3 uses
  %i.apw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.apv, i1 true)
  %i.apx = or disjoint i64 %i.apw, %.sroa.11.0.lcssa2382.i
  %i.apy = trunc i64 %i.apx to i32
  %i.apz = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 12
  store i32 %i.apy, ptr %i.apz, align 4, !tbaa !10
  %i.aqa = icmp samesign ugt i64 %i.ape, 4
  br i1 %i.aqa, label %.noexc223.i, label %.loopexit2244.i, !prof !107

.noexc223.i:                                      ; preds = %.noexc192.i
  %i.aqb = add i64 %i.apv, -2
  %i.aqc = and i64 %i.aqb, %i.apv                 ; 3 uses
  %i.aqd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqc, i1 true)
  %i.aqe = or disjoint i64 %i.aqd, %.sroa.11.0.lcssa2382.i
  %i.aqf = trunc i64 %i.aqe to i32
  %i.aqg = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 16
  store i32 %i.aqf, ptr %i.aqg, align 4, !tbaa !10
  %i.aqh = add i64 %i.aqc, -2
  %i.aqi = and i64 %i.aqh, %i.aqc                 ; 3 uses
  %i.aqj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqi, i1 true)
  %i.aqk = or disjoint i64 %i.aqj, %.sroa.11.0.lcssa2382.i
  %i.aql = trunc i64 %i.aqk to i32
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 20
  store i32 %i.aql, ptr %i.aqm, align 4, !tbaa !10
  %i.aqn = add i64 %i.aqi, -1
  %i.aqo = and i64 %i.aqn, %i.aqi                 ; 3 uses
  %i.aqp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqo, i1 true)
  %i.aqq = or disjoint i64 %i.aqp, %.sroa.11.0.lcssa2382.i
  %i.aqr = trunc i64 %i.aqq to i32
  %i.aqs = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 24
  store i32 %i.aqr, ptr %i.aqs, align 4, !tbaa !10
  %i.aqt = add i64 %i.aqo, -2
  %i.aqu = and i64 %i.aqt, %i.aqo                 ; 3 uses
  %i.aqv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqu, i1 true)
  %i.aqw = or disjoint i64 %i.aqv, %.sroa.11.0.lcssa2382.i
  %i.aqx = trunc i64 %i.aqw to i32
  %i.aqy = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 28
  store i32 %i.aqx, ptr %i.aqy, align 4, !tbaa !10
  %i.aqz = icmp samesign ugt i64 %i.ape, 8
  br i1 %i.aqz, label %.noexc294.i, label %.loopexit2244.i, !prof !107

.noexc294.i:                                      ; preds = %.noexc223.i
  %i.ara = add i64 %i.aqu, -2
  %i.arb = and i64 %i.ara, %i.aqu                 ; 3 uses
  %i.arc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.arb, i1 true)
  %i.ard = or disjoint i64 %i.arc, %.sroa.11.0.lcssa2382.i
  %i.are = trunc i64 %i.ard to i32
  %i.arf = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 32
  store i32 %i.are, ptr %i.arf, align 4, !tbaa !10
  %i.arg = add i64 %i.arb, -2
  %i.arh = and i64 %i.arg, %i.arb                 ; 3 uses
  %i.ari = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.arh, i1 true)
  %i.arj = or disjoint i64 %i.ari, %.sroa.11.0.lcssa2382.i
  %i.ark = trunc i64 %i.arj to i32
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 36
  store i32 %i.ark, ptr %i.arl, align 4, !tbaa !10
  %i.arm = add i64 %i.arh, -2
  %i.arn = and i64 %i.arm, %i.arh                 ; 3 uses
  %i.aro = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.arn, i1 true)
  %i.arp = or disjoint i64 %i.aro, %.sroa.11.0.lcssa2382.i
  %i.arq = trunc i64 %i.arp to i32
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 40
  store i32 %i.arq, ptr %i.arr, align 4, !tbaa !10
  %i.ars = add i64 %i.arn, -1
  %i.art = and i64 %i.ars, %i.arn                 ; 3 uses
  %i.aru = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.art, i1 true)
  %i.arv = or disjoint i64 %i.aru, %.sroa.11.0.lcssa2382.i
  %i.arw = trunc i64 %i.arv to i32
  %i.arx = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 44
  store i32 %i.arw, ptr %i.arx, align 4, !tbaa !10
  %i.ary = icmp samesign ugt i64 %i.ape, 12
  br i1 %i.ary, label %.noexc353.i, label %.loopexit2244.i, !prof !107

.noexc353.i:                                      ; preds = %.noexc294.i
  %i.arz = add i64 %i.art, -2
  %i.asa = and i64 %i.arz, %i.art                 ; 3 uses
  %i.asb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asa, i1 true)
  %i.asc = or disjoint i64 %i.asb, %.sroa.11.0.lcssa2382.i
  %i.asd = trunc i64 %i.asc to i32
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 48
  store i32 %i.asd, ptr %i.ase, align 4, !tbaa !10
  %i.asf = add i64 %i.asa, -2
  %i.asg = and i64 %i.asf, %i.asa                 ; 3 uses
  %i.ash = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asg, i1 true)
  %i.asi = or disjoint i64 %i.ash, %.sroa.11.0.lcssa2382.i
  %i.asj = trunc i64 %i.asi to i32
  %i.ask = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 52
  store i32 %i.asj, ptr %i.ask, align 4, !tbaa !10
  %i.asl = add i64 %i.asg, -2
  %i.asm = and i64 %i.asl, %i.asg                 ; 3 uses
  %i.asn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asm, i1 true)
  %i.aso = or disjoint i64 %i.asn, %.sroa.11.0.lcssa2382.i
  %i.asp = trunc i64 %i.aso to i32
  %i.asq = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 56
  store i32 %i.asp, ptr %i.asq, align 4, !tbaa !10
  %i.asr = add i64 %i.asm, -2
  %i.ass = and i64 %i.asr, %i.asm                 ; 3 uses
  %i.ast = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ass, i1 true)
  %i.asu = or disjoint i64 %i.ast, %.sroa.11.0.lcssa2382.i
  %i.asv = trunc i64 %i.asu to i32
  %i.asw = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 60
  store i32 %i.asv, ptr %i.asw, align 4, !tbaa !10
  %i.asx = icmp samesign ugt i64 %i.ape, 16
  br i1 %i.asx, label %.noexc424.i, label %.loopexit2244.i, !prof !107

.noexc424.i:                                      ; preds = %.noexc353.i
  %i.asy = add i64 %i.ass, -1
  %i.asz = and i64 %i.asy, %i.ass                 ; 3 uses
  %i.ata = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asz, i1 true)
  %i.atb = or disjoint i64 %i.ata, %.sroa.11.0.lcssa2382.i
  %i.atc = trunc i64 %i.atb to i32
  %i.atd = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 64
  store i32 %i.atc, ptr %i.atd, align 4, !tbaa !10
  %i.ate = add i64 %i.asz, -2
  %i.atf = and i64 %i.ate, %i.asz                 ; 3 uses
  %i.atg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.atf, i1 true)
  %i.ath = or disjoint i64 %i.atg, %.sroa.11.0.lcssa2382.i
  %i.ati = trunc i64 %i.ath to i32
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 68
  store i32 %i.ati, ptr %i.atj, align 4, !tbaa !10
  %i.atk = add i64 %i.atf, -2
  %i.atl = and i64 %i.atk, %i.atf                 ; 3 uses
  %i.atm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.atl, i1 true)
  %i.atn = or disjoint i64 %i.atm, %.sroa.11.0.lcssa2382.i
  %i.ato = trunc i64 %i.atn to i32
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 72
  store i32 %i.ato, ptr %i.atp, align 4, !tbaa !10
  %i.atq = add i64 %i.atl, -2
  %i.atr = and i64 %i.atq, %i.atl                 ; 3 uses
  %i.ats = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.atr, i1 true)
  %i.att = or disjoint i64 %i.ats, %.sroa.11.0.lcssa2382.i
  %i.atu = trunc i64 %i.att to i32
  %i.atv = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 76
  store i32 %i.atu, ptr %i.atv, align 4, !tbaa !10
  %i.atw = icmp samesign ugt i64 %i.ape, 20
  br i1 %i.atw, label %.noexc140.i, label %.loopexit2244.i, !prof !107

.noexc140.i:                                      ; preds = %.noexc424.i
  %i.atx = add i64 %i.atr, -2
  %i.aty = and i64 %i.atx, %i.atr                 ; 3 uses
  %i.atz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aty, i1 true)
  %i.aua = or disjoint i64 %i.atz, %.sroa.11.0.lcssa2382.i
  %i.aub = trunc i64 %i.aua to i32
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 80
  store i32 %i.aub, ptr %i.auc, align 4, !tbaa !10
  %i.aud = add i64 %i.aty, -1
  %i.aue = and i64 %i.aud, %i.aty                 ; 3 uses
  %i.auf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aue, i1 true)
  %i.aug = or disjoint i64 %i.auf, %.sroa.11.0.lcssa2382.i
  %i.auh = trunc i64 %i.aug to i32
  %i.aui = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 84
  store i32 %i.auh, ptr %i.aui, align 4, !tbaa !10
  %i.auj = add i64 %i.aue, -2
  %i.auk = and i64 %i.auj, %i.aue                 ; 3 uses
  %i.aul = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.auk, i1 true)
  %i.aum = or disjoint i64 %i.aul, %.sroa.11.0.lcssa2382.i
  %i.aun = trunc i64 %i.aum to i32
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 88
  store i32 %i.aun, ptr %i.auo, align 4, !tbaa !10
  %i.aup = add i64 %i.auk, -2
  %i.auq = and i64 %i.aup, %i.auk                 ; 3 uses
  %i.aur = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.auq, i1 true)
  %i.aus = or disjoint i64 %i.aur, %.sroa.11.0.lcssa2382.i
  %i.aut = trunc i64 %i.aus to i32
  %i.auu = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 92
  store i32 %i.aut, ptr %i.auu, align 4, !tbaa !10
  %i.auv = icmp samesign ugt i64 %i.ape, 24
  br i1 %i.auv, label %.noexc141.i.preheader, label %.loopexit2244.i, !prof !110

.noexc141.i.preheader:                            ; preds = %.noexc140.i
  %i.auw = add i64 %i.auq, -2
  %i.aux = and i64 %i.auw, %i.auq                 ; 2 uses
  %xtraiter105 = and i64 %i.ape, 1
  %i.auy = icmp eq i64 %i.ape, 25
  br i1 %i.auy, label %.noexc141.i.epil.preheader, label %.noexc141.i.preheader.new

.noexc141.i.preheader.new:                        ; preds = %.noexc141.i.preheader
  %i.auz = and i64 %i.ape, 126
  %i.ava = add nsw i64 %i.auz, -26
  br label %.noexc141.i

.noexc141.i:                                      ; preds = %.noexc141.i, %.noexc141.i.preheader.new
  %indvars.iv2326.i = phi i64 [ 24, %.noexc141.i.preheader.new ], [ %indvars.iv.next2327.i.1, %.noexc141.i ] ; 3 uses
  %.021792284.i = phi i64 [ %i.aux, %.noexc141.i.preheader.new ], [ %i.avn, %.noexc141.i ] ; 3 uses
  %niter109 = phi i64 [ 0, %.noexc141.i.preheader.new ], [ %niter109.next.1, %.noexc141.i ] ; 2 uses
  %i.avb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021792284.i, i1 true)
  %i.avc = or disjoint i64 %i.avb, %.sroa.11.0.lcssa2382.i
  %i.avd = trunc i64 %i.avc to i32
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %indvars.iv2326.i
  store i32 %i.avd, ptr %i.ave, align 4, !tbaa !10
  %i.avf = add i64 %.021792284.i, -1
  %i.avg = and i64 %i.avf, %.021792284.i          ; 3 uses
  %i.avh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avg, i1 true)
  %i.avi = or disjoint i64 %i.avh, %.sroa.11.0.lcssa2382.i
  %i.avj = trunc i64 %i.avi to i32
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %indvars.iv2326.i
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 4
  store i32 %i.avj, ptr %i.avl, align 4, !tbaa !10
  %i.avm = add i64 %i.avg, -2
  %i.avn = and i64 %i.avm, %i.avg                 ; 2 uses
  %indvars.iv.next2327.i.1 = add nuw nsw i64 %indvars.iv2326.i, 2 ; 2 uses
  %niter109.next.1 = add nuw i64 %niter109, 2
  %niter109.ncmp.1 = icmp eq i64 %niter109, %i.ava
  br i1 %niter109.ncmp.1, label %.loopexit2244.i.loopexit.unr-lcssa, label %.noexc141.i, !llvm.loop !111

.loopexit2244.i.loopexit.unr-lcssa:               ; preds = %.noexc141.i
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.loopexit2244.i, label %.noexc141.i.epil.preheader

.noexc141.i.epil.preheader:                       ; preds = %.loopexit2244.i.loopexit.unr-lcssa, %.noexc141.i.preheader
  %indvars.iv2326.i.epil.init = phi i64 [ 24, %.noexc141.i.preheader ], [ %indvars.iv.next2327.i.1, %.loopexit2244.i.loopexit.unr-lcssa ]
  %.021792284.i.epil.init = phi i64 [ %i.aux, %.noexc141.i.preheader ], [ %i.avn, %.loopexit2244.i.loopexit.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %i.ape to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.avo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021792284.i.epil.init, i1 true)
  %i.avp = or disjoint i64 %i.avo, %.sroa.11.0.lcssa2382.i
  %i.avq = trunc i64 %i.avp to i32
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %indvars.iv2326.i.epil.init
  store i32 %i.avq, ptr %i.avr, align 4, !tbaa !10
  br label %.loopexit2244.i

.loopexit2244.i:                                  ; preds = %.noexc141.i.epil.preheader, %.loopexit2244.i.loopexit.unr-lcssa, %.noexc140.i, %.noexc424.i, %.noexc353.i, %.noexc294.i, %.noexc223.i, %.noexc192.i
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %i.ape
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %.loopexit2244.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i
  %.sroa.89.2.i = phi ptr [ %.sroa.89.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i ], [ %i.avs, %.loopexit2244.i ] ; 29 uses
  %i.avt = xor i64 %i.adf, -1
  %i.avu = and i64 %i.avt, %i.adc
  %i.avv = or i64 %i.avu, %i.ada
  %i.avw = xor i64 %i.aby, %i.acc
  %i.avx = xor i64 %i.avw, -1
  %i.avy = and i64 %i.avv, %i.avx                 ; 5 uses
  %i.avz = and i64 %i.acc, %i.amy
  %i.awa = or i64 %i.amq, %.sroa.236.0.lcssa2385.i
  %i.awb = or i64 %i.awa, %i.avz
  %i.awc = or disjoint i32 %i.afs, 64             ; 27 uses
  %i.awd = icmp eq i64 %i.avy, 0
  br i1 %i.awd, label %.noexc.i, label %.noexc184.i

.noexc184.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.awe = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.avy) ; 11 uses
  %i.awf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avy, i1 true)
  %i.awg = trunc nuw nsw i64 %i.awf to i32
  %i.awh = or disjoint i32 %i.awc, %i.awg
  store i32 %i.awh, ptr %.sroa.89.2.i, align 4, !tbaa !10
  %i.awi = add i64 %i.avy, -1
  %i.awj = and i64 %i.awi, %i.avy                 ; 3 uses
  %i.awk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awj, i1 true)
  %i.awl = trunc nuw nsw i64 %i.awk to i32
  %i.awm = or disjoint i32 %i.awc, %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 4
  store i32 %i.awm, ptr %i.awn, align 4, !tbaa !10
  %i.awo = add i64 %i.awj, -2
  %i.awp = and i64 %i.awo, %i.awj                 ; 3 uses
  %i.awq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awp, i1 true)
  %i.awr = trunc nuw nsw i64 %i.awq to i32
  %i.aws = or disjoint i32 %i.awc, %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 8
  store i32 %i.aws, ptr %i.awt, align 4, !tbaa !10
  %i.awu = add i64 %i.awp, -2
  %i.awv = and i64 %i.awu, %i.awp                 ; 3 uses
  %i.aww = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awv, i1 true)
  %i.awx = trunc nuw nsw i64 %i.aww to i32
  %i.awy = or disjoint i32 %i.awc, %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 12
  store i32 %i.awy, ptr %i.awz, align 4, !tbaa !10
  %i.axa = icmp samesign ugt i64 %i.awe, 4
  br i1 %i.axa, label %.noexc232.i, label %.loopexit.i, !prof !107

.noexc232.i:                                      ; preds = %.noexc184.i
  %i.axb = add i64 %i.awv, -2
  %i.axc = and i64 %i.axb, %i.awv                 ; 3 uses
  %i.axd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axc, i1 true)
  %i.axe = trunc nuw nsw i64 %i.axd to i32
  %i.axf = or disjoint i32 %i.awc, %i.axe
  %i.axg = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 16
  store i32 %i.axf, ptr %i.axg, align 4, !tbaa !10
  %i.axh = add i64 %i.axc, -2
  %i.axi = and i64 %i.axh, %i.axc                 ; 3 uses
  %i.axj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axi, i1 true)
  %i.axk = trunc nuw nsw i64 %i.axj to i32
  %i.axl = or disjoint i32 %i.awc, %i.axk
  %i.axm = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 20
  store i32 %i.axl, ptr %i.axm, align 4, !tbaa !10
  %i.axn = add i64 %i.axi, -1
  %i.axo = and i64 %i.axn, %i.axi                 ; 3 uses
  %i.axp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axo, i1 true)
  %i.axq = trunc nuw nsw i64 %i.axp to i32
  %i.axr = or disjoint i32 %i.awc, %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 24
  store i32 %i.axr, ptr %i.axs, align 4, !tbaa !10
  %i.axt = add i64 %i.axo, -2
  %i.axu = and i64 %i.axt, %i.axo                 ; 3 uses
  %i.axv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axu, i1 true)
  %i.axw = trunc nuw nsw i64 %i.axv to i32
  %i.axx = or disjoint i32 %i.awc, %i.axw
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 28
  store i32 %i.axx, ptr %i.axy, align 4, !tbaa !10
  %i.axz = icmp samesign ugt i64 %i.awe, 8
  br i1 %i.axz, label %.noexc286.i, label %.loopexit.i, !prof !107

.noexc286.i:                                      ; preds = %.noexc232.i
  %i.aya = add i64 %i.axu, -2
  %i.ayb = and i64 %i.aya, %i.axu                 ; 3 uses
  %i.ayc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayb, i1 true)
  %i.ayd = trunc nuw nsw i64 %i.ayc to i32
  %i.aye = or disjoint i32 %i.awc, %i.ayd
  %i.ayf = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 32
  store i32 %i.aye, ptr %i.ayf, align 4, !tbaa !10
  %i.ayg = add i64 %i.ayb, -2
  %i.ayh = and i64 %i.ayg, %i.ayb                 ; 3 uses
  %i.ayi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayh, i1 true)
  %i.ayj = trunc nuw nsw i64 %i.ayi to i32
  %i.ayk = or disjoint i32 %i.awc, %i.ayj
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 36
  store i32 %i.ayk, ptr %i.ayl, align 4, !tbaa !10
  %i.aym = add i64 %i.ayh, -2
  %i.ayn = and i64 %i.aym, %i.ayh                 ; 3 uses
  %i.ayo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayn, i1 true)
  %i.ayp = trunc nuw nsw i64 %i.ayo to i32
  %i.ayq = or disjoint i32 %i.awc, %i.ayp
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 40
  store i32 %i.ayq, ptr %i.ayr, align 4, !tbaa !10
  %i.ays = add i64 %i.ayn, -1
  %i.ayt = and i64 %i.ays, %i.ayn                 ; 3 uses
  %i.ayu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayt, i1 true)
  %i.ayv = trunc nuw nsw i64 %i.ayu to i32
  %i.ayw = or disjoint i32 %i.awc, %i.ayv
  %i.ayx = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 44
  store i32 %i.ayw, ptr %i.ayx, align 4, !tbaa !10
  %i.ayy = icmp samesign ugt i64 %i.awe, 12
  br i1 %i.ayy, label %.noexc362.i, label %.loopexit.i, !prof !107

.noexc362.i:                                      ; preds = %.noexc286.i
  %i.ayz = add i64 %i.ayt, -2
  %i.aza = and i64 %i.ayz, %i.ayt                 ; 3 uses
  %i.azb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aza, i1 true)
  %i.azc = trunc nuw nsw i64 %i.azb to i32
  %i.azd = or disjoint i32 %i.awc, %i.azc
  %i.aze = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 48
  store i32 %i.azd, ptr %i.aze, align 4, !tbaa !10
  %i.azf = add i64 %i.aza, -2
  %i.azg = and i64 %i.azf, %i.aza                 ; 3 uses
  %i.azh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azg, i1 true)
  %i.azi = trunc nuw nsw i64 %i.azh to i32
  %i.azj = or disjoint i32 %i.awc, %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 52
  store i32 %i.azj, ptr %i.azk, align 4, !tbaa !10
  %i.azl = add i64 %i.azg, -2
  %i.azm = and i64 %i.azl, %i.azg                 ; 3 uses
  %i.azn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azm, i1 true)
  %i.azo = trunc nuw nsw i64 %i.azn to i32
  %i.azp = or disjoint i32 %i.awc, %i.azo
  %i.azq = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 56
  store i32 %i.azp, ptr %i.azq, align 4, !tbaa !10
  %i.azr = add i64 %i.azm, -2
  %i.azs = and i64 %i.azr, %i.azm                 ; 3 uses
  %i.azt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azs, i1 true)
  %i.azu = trunc nuw nsw i64 %i.azt to i32
  %i.azv = or disjoint i32 %i.awc, %i.azu
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 60
  store i32 %i.azv, ptr %i.azw, align 4, !tbaa !10
  %i.azx = icmp samesign ugt i64 %i.awe, 16
  br i1 %i.azx, label %.noexc416.i, label %.loopexit.i, !prof !107

.noexc416.i:                                      ; preds = %.noexc362.i
  %i.azy = add i64 %i.azs, -1
  %i.azz = and i64 %i.azy, %i.azs                 ; 3 uses
  %i.baa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azz, i1 true)
  %i.bab = trunc nuw nsw i64 %i.baa to i32
  %i.bac = or disjoint i32 %i.awc, %i.bab
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 64
  store i32 %i.bac, ptr %i.bad, align 4, !tbaa !10
  %i.bae = add i64 %i.azz, -2
  %i.baf = and i64 %i.bae, %i.azz                 ; 3 uses
  %i.bag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.baf, i1 true)
  %i.bah = trunc nuw nsw i64 %i.bag to i32
  %i.bai = or disjoint i32 %i.awc, %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 68
  store i32 %i.bai, ptr %i.baj, align 4, !tbaa !10
  %i.bak = add i64 %i.baf, -2
  %i.bal = and i64 %i.bak, %i.baf                 ; 3 uses
  %i.bam = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bal, i1 true)
  %i.ban = trunc nuw nsw i64 %i.bam to i32
  %i.bao = or disjoint i32 %i.awc, %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 72
  store i32 %i.bao, ptr %i.bap, align 4, !tbaa !10
  %i.baq = add i64 %i.bal, -2
  %i.bar = and i64 %i.baq, %i.bal                 ; 3 uses
  %i.bas = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bar, i1 true)
  %i.bat = trunc nuw nsw i64 %i.bas to i32
  %i.bau = or disjoint i32 %i.awc, %i.bat
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 76
  store i32 %i.bau, ptr %i.bav, align 4, !tbaa !10
  %i.baw = icmp samesign ugt i64 %i.awe, 20
  br i1 %i.baw, label %.noexc152.i, label %.loopexit.i, !prof !107

.noexc152.i:                                      ; preds = %.noexc416.i
  %i.bax = add i64 %i.bar, -2
  %i.bay = and i64 %i.bax, %i.bar                 ; 3 uses
  %i.baz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bay, i1 true)
  %i.bba = trunc nuw nsw i64 %i.baz to i32
  %i.bbb = or disjoint i32 %i.awc, %i.bba
  %i.bbc = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 80
  store i32 %i.bbb, ptr %i.bbc, align 4, !tbaa !10
  %i.bbd = add i64 %i.bay, -1
  %i.bbe = and i64 %i.bbd, %i.bay                 ; 3 uses
  %i.bbf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbe, i1 true)
  %i.bbg = trunc nuw nsw i64 %i.bbf to i32
  %i.bbh = or disjoint i32 %i.awc, %i.bbg
  %i.bbi = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 84
  store i32 %i.bbh, ptr %i.bbi, align 4, !tbaa !10
  %i.bbj = add i64 %i.bbe, -2
  %i.bbk = and i64 %i.bbj, %i.bbe                 ; 3 uses
  %i.bbl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbk, i1 true)
  %i.bbm = trunc nuw nsw i64 %i.bbl to i32
  %i.bbn = or disjoint i32 %i.awc, %i.bbm
  %i.bbo = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 88
  store i32 %i.bbn, ptr %i.bbo, align 4, !tbaa !10
  %i.bbp = add i64 %i.bbk, -2
  %i.bbq = and i64 %i.bbp, %i.bbk                 ; 3 uses
  %i.bbr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbq, i1 true)
  %i.bbs = trunc nuw nsw i64 %i.bbr to i32
  %i.bbt = or disjoint i32 %i.awc, %i.bbs
  %i.bbu = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 92
  store i32 %i.bbt, ptr %i.bbu, align 4, !tbaa !10
  %i.bbv = icmp samesign ugt i64 %i.awe, 24
  br i1 %i.bbv, label %.noexc153.i.preheader, label %.loopexit.i, !prof !110

.noexc153.i.preheader:                            ; preds = %.noexc152.i
  %i.bbw = add i64 %i.bbq, -2
  %i.bbx = and i64 %i.bbw, %i.bbq                 ; 2 uses
  %xtraiter110 = and i64 %i.awe, 1
  %i.bby = icmp eq i64 %i.awe, 25
  br i1 %i.bby, label %.noexc153.i.epil.preheader, label %.noexc153.i.preheader.new

.noexc153.i.preheader.new:                        ; preds = %.noexc153.i.preheader
  %i.bbz = and i64 %i.awe, 126
  %i.bca = add nsw i64 %i.bbz, -26
  br label %.noexc153.i

.noexc153.i:                                      ; preds = %.noexc153.i, %.noexc153.i.preheader.new
  %indvars.iv2331.i = phi i64 [ 24, %.noexc153.i.preheader.new ], [ %indvars.iv.next2332.i.1, %.noexc153.i ] ; 3 uses
  %.021652286.i = phi i64 [ %i.bbx, %.noexc153.i.preheader.new ], [ %i.bcn, %.noexc153.i ] ; 3 uses
  %niter114 = phi i64 [ 0, %.noexc153.i.preheader.new ], [ %niter114.next.1, %.noexc153.i ] ; 2 uses
  %i.bcb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021652286.i, i1 true)
  %i.bcc = trunc nuw nsw i64 %i.bcb to i32
  %i.bcd = or disjoint i32 %i.awc, %i.bcc
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i
  store i32 %i.bcd, ptr %i.bce, align 4, !tbaa !10
  %i.bcf = add i64 %.021652286.i, -1
  %i.bcg = and i64 %i.bcf, %.021652286.i          ; 3 uses
  %i.bch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bcg, i1 true)
  %i.bci = trunc nuw nsw i64 %i.bch to i32
  %i.bcj = or disjoint i32 %i.awc, %i.bci
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 4
  store i32 %i.bcj, ptr %i.bcl, align 4, !tbaa !10
  %i.bcm = add i64 %i.bcg, -2
  %i.bcn = and i64 %i.bcm, %i.bcg                 ; 2 uses
  %indvars.iv.next2332.i.1 = add nuw nsw i64 %indvars.iv2331.i, 2 ; 2 uses
  %niter114.next.1 = add nuw i64 %niter114, 2
  %niter114.ncmp.1 = icmp eq i64 %niter114, %i.bca
  br i1 %niter114.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.noexc153.i, !llvm.loop !111

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.noexc153.i
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.loopexit.i, label %.noexc153.i.epil.preheader

.noexc153.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.noexc153.i.preheader
  %indvars.iv2331.i.epil.init = phi i64 [ 24, %.noexc153.i.preheader ], [ %indvars.iv.next2332.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.021652286.i.epil.init = phi i64 [ %i.bbx, %.noexc153.i.preheader ], [ %i.bcn, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod112 = trunc i64 %i.awe to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bco = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021652286.i.epil.init, i1 true)
  %i.bcp = trunc nuw nsw i64 %i.bco to i32
  %i.bcq = or disjoint i32 %i.awc, %i.bcp
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i.epil.init
  store i32 %i.bcq, ptr %i.bcr, align 4, !tbaa !10
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc153.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.noexc152.i, %.noexc416.i, %.noexc362.i, %.noexc286.i, %.noexc232.i, %.noexc184.i
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %i.awe
  br label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.89.5.i = phi ptr [ %.sroa.89.2.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.bcs, %.loopexit.i ]
  %.not.i.i64.i = icmp sgt i64 %i.acc, -1         ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i.i64.i, !prof !113
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !114

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.awb, 0
  br i1 %.not.i.i, label %bb.p, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.p:                                             ; preds = %.thread.i
  %i.bct = ptrtoint ptr %.sroa.89.5.i to i64
  %i.bcu = ptrtoint ptr %i.yh to i64
  %i.bcv = sub i64 %i.bct, %i.bcu
  %i.bcw = lshr exact i64 %i.bcv, 2               ; 2 uses
  %i.bcx = trunc i64 %i.bcw to i32
  %i.bcy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.bcx, ptr %i.bcy, align 8, !tbaa !73
  %i.bcz = trunc i64 %.01323672381.i to i32       ; 3 uses
  %i.bda = and i64 %i.bcw, 4294967295
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bda
  store i32 %i.bcz, ptr %i.bdb, align 4, !tbaa !10
  %i.bdc = load i32, ptr %i.bcy, align 8, !tbaa !73
  %i.bdd = add i32 %i.bdc, 1
  %i.bde = zext i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bde
  store i32 %i.bcz, ptr %i.bdf, align 4, !tbaa !10
  %i.bdg = load i32, ptr %i.bcy, align 8, !tbaa !73
  %i.bdh = add i32 %i.bdg, 2
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bdi
  store i32 0, ptr %i.bdj, align 4, !tbaa !10
  %i.bdk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bdk, align 8, !tbaa !83
  %i.bdl = load i32, ptr %i.bcy, align 8, !tbaa !73 ; 6 uses
  %i.bdm = icmp eq i32 %i.bdl, 0
  br i1 %i.bdm, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.q, !prof !107

bb.q:                                             ; preds = %bb.p
  %i.bdn = add i32 %i.bdl, -1                     ; 9 uses
  %i.bdo = zext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bdo
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !10
  %i.bdr = zext i32 %i.bdq to i64
  %i.bds = icmp ult i64 %.01323672381.i, %i.bdr
  br i1 %i.bds, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.r, !prof !107

bb.r:                                             ; preds = %bb.q
  switch i32 %3, label %bb.ax [
    i32 1, label %bb.s
    i32 2, label %bb.aj
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i64.i, label %.preheader.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.bdn, ptr %i.bcy, align 8, !tbaa !73
  %i.bdt = icmp eq i32 %i.bdn, 0
  br i1 %i.bdt, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !107

..preheader.i_crit_edge:                          ; preds = %bb.t
  %.pre = add i32 %i.bdl, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.s
  %.035.i2298.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.bdn, %bb.s ] ; 2 uses
  %i.bdu = phi i32 [ %i.bdn, %..preheader.i_crit_edge ], [ %i.bdl, %bb.s ] ; 3 uses
  %.not.i5782299.i = icmp eq i32 %.035.i2298.i.pre-phi, 0
  br i1 %.not.i5782299.i, label %._crit_edge2305.i, label %.lr.ph2304.i

.lr.ph2304.i:                                     ; preds = %.preheader.i
  %i.bdv = zext i32 %.035.i2298.i.pre-phi to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.ab, %.lr.ph2304.i
  %indvars.iv2339.i = phi i64 [ %i.bdv, %.lr.ph2304.i ], [ %indvars.iv.next2340.i, %bb.ab ] ; 4 uses
  %.035.in.i2302.i = phi i32 [ %i.bdu, %.lr.ph2304.i ], [ %i.beq, %bb.ab ]
  %.036.i2301.i = phi i32 [ 0, %.lr.ph2304.i ], [ %.238.i.i, %bb.ab ] ; 7 uses
  %.039.i2300.i = phi i32 [ 0, %.lr.ph2304.i ], [ %.241.i.i, %bb.ab ] ; 7 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv2339.i
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !10
  %i.bdy = zext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !9
  switch i8 %i.bea, label %bb.z [
    i8 58, label %bb.ab
    i8 44, label %bb.ab
    i8 125, label %bb.v
    i8 93, label %bb.w
    i8 123, label %bb.x
    i8 91, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.beb = add nsw i32 %.036.i2301.i, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bec = add nsw i32 %.039.i2300.i, -1
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.bed = add nsw i32 %.036.i2301.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bee = add nsw i32 %.039.i2300.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.u
  %.140.i.i = phi i32 [ %.039.i2300.i, %bb.u ], [ %.039.i2300.i, %bb.x ], [ %i.bee, %bb.y ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i2301.i, %bb.u ], [ %i.bed, %bb.x ], [ %.036.i2301.i, %bb.y ] ; 5 uses
  %i.bef = add i32 %.035.in.i2302.i, -2
  %i.beg = zext i32 %i.bef to i64
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.beg
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !10
  %i.bej = zext i32 %i.bei to i64
  %i.bek = getelementptr inbounds nuw i8, ptr %1, i64 %i.bej
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !9
  switch i8 %i.bel, label %bb.aa [
    i8 123, label %bb.ab
    i8 91, label %bb.ab
    i8 58, label %bb.ab
    i8 44, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bem = trunc nuw i64 %indvars.iv2339.i to i32
  %i.ben = icmp ne i32 %.140.i.i, 0
  %i.beo = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.ben, i1 true, i1 %i.beo
  %spec.select2240.i = select i1 %or.cond.i.i, i32 %i.bem, i32 %i.bdu
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.w, %bb.v, %bb.u, %bb.u
  %.241.i.i = phi i32 [ %.039.i2300.i, %bb.u ], [ %i.bec, %bb.w ], [ %.039.i2300.i, %bb.v ], [ %.039.i2300.i, %bb.u ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i2301.i, %bb.u ], [ %.036.i2301.i, %bb.w ], [ %i.beb, %bb.v ], [ %.036.i2301.i, %bb.u ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ] ; 2 uses
  %indvars.iv.next2340.i = add nsw i64 %indvars.iv2339.i, -1 ; 2 uses
  %i.bep = and i64 %indvars.iv.next2340.i, 4294967295
  %.not.i578.i = icmp eq i64 %i.bep, 0
  %i.beq = trunc nuw i64 %indvars.iv2339.i to i32
  br i1 %.not.i578.i, label %._crit_edge2305.i, label %bb.u, !llvm.loop !115

._crit_edge2305.i:                                ; preds = %bb.ab, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.ab ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.ab ] ; 5 uses
  %i.ber = load i32, ptr %i.yh, align 4, !tbaa !10 ; 2 uses
  %i.bes = zext i32 %i.ber to i64
  %i.bet = getelementptr inbounds nuw i8, ptr %1, i64 %i.bes
  %i.beu = load i8, ptr %i.bet, align 1, !tbaa !9
  switch i8 %i.beu, label %bb.ag [
    i8 125, label %bb.ac
    i8 93, label %bb.ad
    i8 123, label %bb.ae
    i8 91, label %bb.af
  ]

bb.ac:                                            ; preds = %._crit_edge2305.i
  %i.bev = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.ag

bb.ad:                                            ; preds = %._crit_edge2305.i
  %i.bew = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge2305.i
  %i.bex = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge2305.i
  %i.bey = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %._crit_edge2305.i
  %.443.i.i = phi i32 [ %.039.i.lcssa.i, %._crit_edge2305.i ], [ %.039.i.lcssa.i, %bb.ac ], [ %i.bew, %bb.ad ], [ %.039.i.lcssa.i, %bb.ae ], [ %i.bey, %bb.af ]
  %.4.i.i = phi i32 [ %.036.i.lcssa.i, %._crit_edge2305.i ], [ %i.bev, %bb.ac ], [ %.036.i.lcssa.i, %bb.ad ], [ %i.bex, %bb.ae ], [ %.036.i.lcssa.i, %bb.af ]
end_hunk_2
begin_hunk_3_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.jj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ji, i1 true)
  %i.jk = trunc nuw nsw i64 %i.jj to i32
  %i.jl = or disjoint i32 %i.ip, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 12
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !10
  %i.jn = icmp samesign ugt i64 %i.ir, 4
  br i1 %i.jn, label %.noexc158.i, label %.loopexit1661.i, !prof !107

.noexc158.i:                                      ; preds = %.noexc145.i
  %i.jo = add i64 %i.ji, -2
  %i.jp = and i64 %i.jo, %i.ji                    ; 3 uses
  %i.jq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jp, i1 true)
  %i.jr = trunc nuw nsw i64 %i.jq to i32
  %i.js = or disjoint i32 %i.ip, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 16
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !10
  %i.ju = add i64 %i.jp, -2
  %i.jv = and i64 %i.ju, %i.jp                    ; 3 uses
  %i.jw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jv, i1 true)
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %i.jy = or disjoint i32 %i.ip, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 20
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !10
  %i.ka = add i64 %i.jv, -1
  %i.kb = and i64 %i.ka, %i.jv                    ; 3 uses
  %i.kc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kb, i1 true)
  %i.kd = trunc nuw nsw i64 %i.kc to i32
  %i.ke = or disjoint i32 %i.ip, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 24
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !10
  %i.kg = add i64 %i.kb, -2
  %i.kh = and i64 %i.kg, %i.kb                    ; 3 uses
  %i.ki = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kh, i1 true)
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = or disjoint i32 %i.ip, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 28
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !10
  %i.km = icmp samesign ugt i64 %i.ir, 8
  br i1 %i.km, label %.noexc181.i, label %.loopexit1661.i, !prof !107

.noexc181.i:                                      ; preds = %.noexc158.i
  %i.kn = add i64 %i.kh, -2
  %i.ko = and i64 %i.kn, %i.kh                    ; 3 uses
  %i.kp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ko, i1 true)
  %i.kq = trunc nuw nsw i64 %i.kp to i32
  %i.kr = or disjoint i32 %i.ip, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 32
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !10
  %i.kt = add i64 %i.ko, -2
  %i.ku = and i64 %i.kt, %i.ko                    ; 3 uses
  %i.kv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ku, i1 true)
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = or disjoint i32 %i.ip, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 36
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !10
  %i.kz = add i64 %i.ku, -2
  %i.la = and i64 %i.kz, %i.ku                    ; 3 uses
  %i.lb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.la, i1 true)
  %i.lc = trunc nuw nsw i64 %i.lb to i32
  %i.ld = or disjoint i32 %i.ip, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 40
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !10
  %i.lf = add i64 %i.la, -1
  %i.lg = and i64 %i.lf, %i.la                    ; 3 uses
  %i.lh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lg, i1 true)
  %i.li = trunc nuw nsw i64 %i.lh to i32
  %i.lj = or disjoint i32 %i.ip, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 44
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !10
  %i.ll = icmp samesign ugt i64 %i.ir, 12
  br i1 %i.ll, label %.noexc204.i, label %.loopexit1661.i, !prof !107

.noexc204.i:                                      ; preds = %.noexc181.i
  %i.lm = add i64 %i.lg, -2
  %i.ln = and i64 %i.lm, %i.lg                    ; 3 uses
  %i.lo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ln, i1 true)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %i.lq = or disjoint i32 %i.ip, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 48
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !10
  %i.ls = add i64 %i.ln, -2
  %i.lt = and i64 %i.ls, %i.ln                    ; 3 uses
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lt, i1 true)
  %i.lv = trunc nuw nsw i64 %i.lu to i32
  %i.lw = or disjoint i32 %i.ip, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 52
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !10
  %i.ly = add i64 %i.lt, -2
  %i.lz = and i64 %i.ly, %i.lt                    ; 3 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lz, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.ip, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 56
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !10
  %i.me = add i64 %i.lz, -2
  %i.mf = and i64 %i.me, %i.lz                    ; 3 uses
  %i.mg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mf, i1 true)
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = or disjoint i32 %i.ip, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 60
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !10
  %i.mk = icmp samesign ugt i64 %i.ir, 16
  br i1 %i.mk, label %.noexc227.i, label %.loopexit1661.i, !prof !107

.noexc227.i:                                      ; preds = %.noexc204.i
  %i.ml = add i64 %i.mf, -1
  %i.mm = and i64 %i.ml, %i.mf                    ; 3 uses
  %i.mn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mm, i1 true)
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = or disjoint i32 %i.ip, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 64
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !10
  %i.mr = add i64 %i.mm, -2
  %i.ms = and i64 %i.mr, %i.mm                    ; 3 uses
  %i.mt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ms, i1 true)
  %i.mu = trunc nuw nsw i64 %i.mt to i32
  %i.mv = or disjoint i32 %i.ip, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 68
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !10
  %i.mx = add i64 %i.ms, -2
  %i.my = and i64 %i.mx, %i.ms                    ; 3 uses
  %i.mz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.my, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = or disjoint i32 %i.ip, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 72
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !10
  %i.nd = add i64 %i.my, -2
  %i.ne = and i64 %i.nd, %i.my                    ; 3 uses
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ne, i1 true)
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = or disjoint i32 %i.ip, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 76
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !10
  %i.nj = icmp samesign ugt i64 %i.ir, 20
  br i1 %i.nj, label %.noexc107.i, label %.loopexit1661.i, !prof !107

.noexc107.i:                                      ; preds = %.noexc227.i
  %i.nk = add i64 %i.ne, -2
  %i.nl = and i64 %i.nk, %i.ne                    ; 3 uses
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nl, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.ip, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 80
  store i32 %i.no, ptr %i.np, align 4, !tbaa !10
  %i.nq = add i64 %i.nl, -1
  %i.nr = and i64 %i.nq, %i.nl                    ; 3 uses
  %i.ns = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nr, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = or disjoint i32 %i.ip, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 84
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !10
  %i.nw = add i64 %i.nr, -2
  %i.nx = and i64 %i.nw, %i.nr                    ; 3 uses
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nx, i1 true)
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = or disjoint i32 %i.ip, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 88
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !10
  %i.oc = add i64 %i.nx, -2
  %i.od = and i64 %i.oc, %i.nx                    ; 3 uses
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = or disjoint i32 %i.ip, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 92
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !10
  %i.oi = icmp samesign ugt i64 %i.ir, 24
  br i1 %i.oi, label %.noexc108.i.preheader, label %.loopexit1661.i, !prof !110

.noexc108.i.preheader:                            ; preds = %.noexc107.i
  %i.oj = add i64 %i.od, -2
  %i.ok = and i64 %i.oj, %i.od                    ; 2 uses
  %xtraiter = and i64 %i.ir, 1
  %i.ol = icmp eq i64 %i.ir, 25
  br i1 %i.ol, label %.noexc108.i.epil.preheader, label %.noexc108.i.preheader.new

.noexc108.i.preheader.new:                        ; preds = %.noexc108.i.preheader
  %i.om = and i64 %i.ir, 126
  %i.on = add nsw i64 %i.om, -26
  br label %.noexc108.i

.noexc108.i:                                      ; preds = %.noexc108.i, %.noexc108.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.noexc108.i.preheader.new ], [ %indvars.iv.next.i.1, %.noexc108.i ] ; 3 uses
  %.015941668.i = phi i64 [ %i.ok, %.noexc108.i.preheader.new ], [ %i.pa, %.noexc108.i ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc108.i.preheader.new ], [ %niter.next.1, %.noexc108.i ] ; 2 uses
  %i.oo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i, i1 true)
  %i.op = trunc nuw nsw i64 %i.oo to i32
  %i.oq = or disjoint i32 %i.ip, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !10
  %i.os = add i64 %.015941668.i, -1
  %i.ot = and i64 %i.os, %.015941668.i            ; 3 uses
  %i.ou = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ot, i1 true)
  %i.ov = trunc nuw nsw i64 %i.ou to i32
  %i.ow = or disjoint i32 %i.ip, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.ow, ptr %i.oy, align 4, !tbaa !10
  %i.oz = add i64 %i.ot, -2
  %i.pa = and i64 %i.oz, %i.ot                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.on
  br i1 %niter.ncmp.1, label %.loopexit1661.i.loopexit.unr-lcssa, label %.noexc108.i, !llvm.loop !173

.loopexit1661.i.loopexit.unr-lcssa:               ; preds = %.noexc108.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1661.i, label %.noexc108.i.epil.preheader

.noexc108.i.epil.preheader:                       ; preds = %.loopexit1661.i.loopexit.unr-lcssa, %.noexc108.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.noexc108.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit1661.i.loopexit.unr-lcssa ]
  %.015941668.i.epil.init = phi i64 [ %i.ok, %.noexc108.i.preheader ], [ %i.pa, %.loopexit1661.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %i.ir to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.pb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i.epil.init, i1 true)
  %i.pc = trunc nuw nsw i64 %i.pb to i32
  %i.pd = or disjoint i32 %i.ip, %i.pc
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i.epil.init
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !10
  br label %.loopexit1661.i

.loopexit1661.i:                                  ; preds = %.noexc108.i.epil.preheader, %.loopexit1661.i.loopexit.unr-lcssa, %.noexc107.i, %.noexc227.i, %.noexc204.i, %.noexc181.i, %.noexc158.i, %.noexc145.i
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %i.ir
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i: ; preds = %.loopexit1661.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.59.2.i = phi ptr [ %.sroa.59.01675.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.pf, %.loopexit1661.i ] ; 2 uses
  %i.pg = xor i64 %i.ek, -1
  %i.ph = and i64 %i.pg, %i.eg
  %i.pi = or i64 %i.ph, %i.ee
  %i.pj = xor i64 %i.cg, %i.ck
  %i.pk = xor i64 %i.pj, -1
  %i.pl = and i64 %i.pi, %i.pk                    ; 2 uses
  %i.pm = and i64 %i.ck, %i.fa
  %i.pn = or i64 %i.pm, %.sroa.148.01673.i        ; 2 uses
  %i.po = add nuw i64 %.sroa.11.01670.i, 64       ; 4 uses
  %i.pp = icmp ult i64 %i.po, %spec.select.i.i
  br i1 %i.pp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !174

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.0131756.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.59.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i
  %i.pq = bitcast <2 x i64> %.sroa.48.1.i to <16 x i8>
  %i.pr = or <2 x i64> %.sroa.23326.1.i, %.sroa.53.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ps = icmp eq i64 %.013.i, %i.po
  br i1 %i.ps, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.18.0.lcssa1779.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cl, %._crit_edge.i ]
  %.sroa.23326.0.lcssa1778.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.23326.1.i, %._crit_edge.i ]
  %.sroa.48.0.lcssa1777.i = phi <16 x i8> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pq, %._crit_edge.i ] ; 3 uses
  %.sroa.53.0.lcssa1776.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pr, %._crit_edge.i ]
  %.sroa.59.0.lcssa1775.i = phi ptr [ %.sroa.59.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.59.2.i, %._crit_edge.i ] ; 29 uses
  %.sroa.142.0.lcssa1774.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pl, %._crit_edge.i ] ; 5 uses
  %.sroa.148.0.lcssa1773.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pn, %._crit_edge.i ]
  %.sroa.8.0.lcssa1772.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.8.1.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa1771.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.el, %._crit_edge.i ]
  %.sroa.11.0.lcssa1770.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.po, %._crit_edge.i ] ; 30 uses
  %.01317561769.i = phi i64 [ %.0131756.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.pt = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa1770.i
  %i.pv = sub i64 %.01317561769.i, %.sroa.11.0.lcssa1770.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.pu, i64 %i.pv, i1 false)
  %.0..0..0..0..0..i = load <2 x i64>, ptr %i.a, align 16, !tbaa !9 ; 6 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16, !tbaa !9 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !9 ; 4 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16, !tbaa !9 ; 4 uses
  %i.pw = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8> ; 10 uses
  %i.px = icmp eq <16 x i8> %i.pw, splat (i8 92)
  %i.py = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8> ; 10 uses
  %i.pz = icmp eq <16 x i8> %i.py, splat (i8 92)
  %i.qa = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8> ; 12 uses
  %i.qb = icmp eq <16 x i8> %i.qa, splat (i8 92)
  %i.qc = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8> ; 10 uses
  %i.qd = icmp eq <16 x i8> %i.qc, splat (i8 92)
  %i.qe = bitcast <16 x i1> %i.px to i16
  %i.qf = bitcast <16 x i1> %i.pz to i16
  %i.qg = bitcast <16 x i1> %i.qb to i16
  %i.qh = bitcast <16 x i1> %i.qd to i16
  %i.qi = insertelement <4 x i16> poison, i16 %i.qe, i64 0
  %i.qj = insertelement <4 x i16> %i.qi, i16 %i.qf, i64 1
  %i.qk = insertelement <4 x i16> %i.qj, i16 %i.qg, i64 2
  %i.ql = insertelement <4 x i16> %i.qk, i16 %i.qh, i64 3
  %i.qm = bitcast <4 x i16> %i.ql to i64          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i, label %.noexc82.i, label %bb.m

bb.m:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.qn = xor i64 %.sroa.8.0.lcssa1772.i, -1
  %i.qo = and i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = shl i64 %i.qo, 1
  %i.qq = or i64 %i.qp, -6148914691236517206
  %i.qr = sub i64 %i.qq, %i.qo
  %i.qs = or i64 %.sroa.8.0.lcssa1772.i, %i.qm
  %i.qt = xor i64 %i.qs, %i.qr
  %i.qu = xor i64 %i.qt, -6148914691236517206
  br label %.noexc82.i

.noexc82.i:                                       ; preds = %bb.m, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.qu, %bb.m ], [ %.sroa.8.0.lcssa1772.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.qv = icmp eq <16 x i8> %i.pw, splat (i8 34)
  %i.qw = icmp eq <16 x i8> %i.py, splat (i8 34)
  %i.qx = icmp eq <16 x i8> %i.qa, splat (i8 34)
  %i.qy = icmp eq <16 x i8> %i.qc, splat (i8 34)
  %i.qz = bitcast <16 x i1> %i.qv to i16
  %i.ra = bitcast <16 x i1> %i.qw to i16
  %i.rb = bitcast <16 x i1> %i.qx to i16
  %i.rc = bitcast <16 x i1> %i.qy to i16
  %i.rd = insertelement <4 x i16> poison, i16 %i.qz, i64 0
  %i.re = insertelement <4 x i16> %i.rd, i16 %i.ra, i64 1
  %i.rf = insertelement <4 x i16> %i.re, i16 %i.rb, i64 2
  %i.rg = insertelement <4 x i16> %i.rf, i16 %i.rc, i64 3
  %i.rh = bitcast <4 x i16> %i.rg to i64
  %i.ri = xor i64 %.sroa.0.0.i.i.i, -1
  %i.rj = and i64 %i.rh, %i.ri                    ; 3 uses
  %i.rk = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %i.rl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.rk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.rm = extractelement <2 x i64> %i.rl, i64 0
  %i.rn = xor i64 %i.rm, %.sroa.18.0.lcssa1779.i  ; 3 uses
  %i.ro = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pw)
  %i.rp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.py)
  %i.rq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qa)
  %i.rr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qc)
  %i.rs = icmp eq <16 x i8> %i.rq, %i.qa
  %i.rt = icmp eq <16 x i8> %i.rr, %i.qc
  %i.ru = bitcast <16 x i1> %i.rs to i16
  %i.rv = zext i16 %i.ru to i64
  %i.rw = bitcast <16 x i1> %i.rt to i16
  %i.rx = zext i16 %i.rw to i64
  %i.ry = shufflevector <16 x i8> %i.ro, <16 x i8> %i.rp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rz = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sa = bitcast <4 x i64> %i.rz to <32 x i8>
  %i.sb = icmp eq <32 x i8> %i.ry, %i.sa
  %i.sc = bitcast <32 x i1> %i.sb to i32
  %i.sd = zext i32 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.rv, 32
  %i.sf = or disjoint i64 %i.se, %i.sd
  %i.sg = shl nuw i64 %i.rx, 48
  %i.sh = or disjoint i64 %i.sf, %i.sg
  %i.si = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pw)
  %i.sj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.py)
  %i.sk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qa)
  %i.sl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qc)
  %i.sm = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8>
  %i.sn = or <16 x i8> %i.sm, splat (i8 32)
  %i.so = icmp eq <16 x i8> %i.sn, %i.sk
  %i.sp = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8>
  %i.sq = or <16 x i8> %i.sp, splat (i8 32)
  %i.sr = icmp eq <16 x i8> %i.sq, %i.sl
  %i.ss = bitcast <16 x i1> %i.so to i16
  %i.st = zext i16 %i.ss to i64
  %i.su = bitcast <16 x i1> %i.sr to i16
  %i.sv = zext i16 %i.su to i64
  %i.sw = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sx = bitcast <4 x i64> %i.sw to <32 x i8>
  %i.sy = or <32 x i8> %i.sx, splat (i8 32)
  %i.sz = shufflevector <16 x i8> %i.si, <16 x i8> %i.sj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ta = icmp eq <32 x i8> %i.sy, %i.sz
  %i.tb = bitcast <32 x i1> %i.ta to i32
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.st, 32
  %i.te = or disjoint i64 %i.td, %i.tc
  %i.tf = shl nuw i64 %i.sv, 48
  %i.tg = or disjoint i64 %i.te, %i.tf            ; 2 uses
  %i.th = or i64 %i.tg, %i.sh
  %i.ti = xor i64 %i.th, -1                       ; 2 uses
  %i.tj = xor i64 %i.rj, -1
  %i.tk = and i64 %i.ti, %i.tj
  %i.tl = shl i64 %i.tk, 1
  %i.tm = or disjoint i64 %i.tl, %.sroa.0.0.lcssa1771.i
  %i.tn = icmp ult <16 x i8> %i.qa, splat (i8 32)
  %i.to = icmp ult <16 x i8> %i.qc, splat (i8 32)
  %i.tp = bitcast <16 x i1> %i.tn to i16
  %i.tq = zext i16 %i.tp to i64
  %i.tr = bitcast <16 x i1> %i.to to i16
  %i.ts = zext i16 %i.tr to i64
  %i.tt = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tu = bitcast <4 x i64> %i.tt to <32 x i8>
  %i.tv = icmp ult <32 x i8> %i.tu, splat (i8 32)
  %i.tw = bitcast <32 x i1> %i.tv to i32
  %i.tx = zext i32 %i.tw to i64
  %i.ty = shl nuw nsw i64 %i.tq, 32
  %i.tz = or disjoint i64 %i.ty, %i.tx
  %i.ua = shl nuw i64 %i.ts, 48
  %i.ub = or disjoint i64 %i.tz, %i.ua
  %i.uc = or <2 x i64> %.16..16..16..16..16..i, %.0..0..0..0..0..i
  %i.ud = or <2 x i64> %i.uc, %.32..32..32..32..32..i
  %i.ue = or <2 x i64> %i.ud, %.48..48..48..48..48..i
  %i.uf = bitcast <2 x i64> %i.ue to <16 x i8>
  %i.ug = icmp slt <16 x i8> %i.uf, zeroinitializer
  %i.uh = bitcast <16 x i1> %i.ug to i16
  %i.ui = icmp eq i16 %i.uh, 0
end_hunk_3
begin_hunk_4_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.yr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yq, i1 true)
  %i.ys = trunc nuw nsw i64 %i.yr to i32
  %i.yt = or disjoint i32 %i.xx, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 12
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !10
  %i.yv = icmp samesign ugt i64 %i.xz, 4
  br i1 %i.yv, label %.noexc156.i, label %.loopexit1659.i, !prof !107

.noexc156.i:                                      ; preds = %.noexc148.i
  %i.yw = add i64 %i.yq, -2
  %i.yx = and i64 %i.yw, %i.yq                    ; 3 uses
  %i.yy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yx, i1 true)
  %i.yz = trunc nuw nsw i64 %i.yy to i32
  %i.za = or disjoint i32 %i.xx, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 16
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !10
  %i.zc = add i64 %i.yx, -2
  %i.zd = and i64 %i.zc, %i.yx                    ; 3 uses
  %i.ze = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zd, i1 true)
  %i.zf = trunc nuw nsw i64 %i.ze to i32
  %i.zg = or disjoint i32 %i.xx, %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 20
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !10
  %i.zi = add i64 %i.zd, -1
  %i.zj = and i64 %i.zi, %i.zd                    ; 3 uses
  %i.zk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zj, i1 true)
  %i.zl = trunc nuw nsw i64 %i.zk to i32
  %i.zm = or disjoint i32 %i.xx, %i.zl
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 24
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !10
  %i.zo = add i64 %i.zj, -2
  %i.zp = and i64 %i.zo, %i.zj                    ; 3 uses
  %i.zq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zp, i1 true)
  %i.zr = trunc nuw nsw i64 %i.zq to i32
  %i.zs = or disjoint i32 %i.xx, %i.zr
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 28
  store i32 %i.zs, ptr %i.zt, align 4, !tbaa !10
  %i.zu = icmp samesign ugt i64 %i.xz, 8
  br i1 %i.zu, label %.noexc184.i, label %.loopexit1659.i, !prof !107

.noexc184.i:                                      ; preds = %.noexc156.i
  %i.zv = add i64 %i.zp, -2
  %i.zw = and i64 %i.zv, %i.zp                    ; 3 uses
  %i.zx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zw, i1 true)
  %i.zy = trunc nuw nsw i64 %i.zx to i32
  %i.zz = or disjoint i32 %i.xx, %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 32
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !10
  %i.aab = add i64 %i.zw, -2
  %i.aac = and i64 %i.aab, %i.zw                  ; 3 uses
  %i.aad = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aac, i1 true)
  %i.aae = trunc nuw nsw i64 %i.aad to i32
  %i.aaf = or disjoint i32 %i.xx, %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 36
  store i32 %i.aaf, ptr %i.aag, align 4, !tbaa !10
  %i.aah = add i64 %i.aac, -2
  %i.aai = and i64 %i.aah, %i.aac                 ; 3 uses
  %i.aaj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aai, i1 true)
  %i.aak = trunc nuw nsw i64 %i.aaj to i32
  %i.aal = or disjoint i32 %i.xx, %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 40
  store i32 %i.aal, ptr %i.aam, align 4, !tbaa !10
  %i.aan = add i64 %i.aai, -1
  %i.aao = and i64 %i.aan, %i.aai                 ; 3 uses
  %i.aap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aao, i1 true)
  %i.aaq = trunc nuw nsw i64 %i.aap to i32
  %i.aar = or disjoint i32 %i.xx, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 44
  store i32 %i.aar, ptr %i.aas, align 4, !tbaa !10
  %i.aat = icmp samesign ugt i64 %i.xz, 12
  br i1 %i.aat, label %.noexc202.i, label %.loopexit1659.i, !prof !107

.noexc202.i:                                      ; preds = %.noexc184.i
  %i.aau = add i64 %i.aao, -2
  %i.aav = and i64 %i.aau, %i.aao                 ; 3 uses
  %i.aaw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aav, i1 true)
  %i.aax = trunc nuw nsw i64 %i.aaw to i32
  %i.aay = or disjoint i32 %i.xx, %i.aax
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 48
  store i32 %i.aay, ptr %i.aaz, align 4, !tbaa !10
  %i.aba = add i64 %i.aav, -2
  %i.abb = and i64 %i.aba, %i.aav                 ; 3 uses
  %i.abc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abb, i1 true)
  %i.abd = trunc nuw nsw i64 %i.abc to i32
  %i.abe = or disjoint i32 %i.xx, %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 52
  store i32 %i.abe, ptr %i.abf, align 4, !tbaa !10
  %i.abg = add i64 %i.abb, -2
  %i.abh = and i64 %i.abg, %i.abb                 ; 3 uses
  %i.abi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abh, i1 true)
  %i.abj = trunc nuw nsw i64 %i.abi to i32
  %i.abk = or disjoint i32 %i.xx, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 56
  store i32 %i.abk, ptr %i.abl, align 4, !tbaa !10
  %i.abm = add i64 %i.abh, -2
  %i.abn = and i64 %i.abm, %i.abh                 ; 3 uses
  %i.abo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abn, i1 true)
  %i.abp = trunc nuw nsw i64 %i.abo to i32
  %i.abq = or disjoint i32 %i.xx, %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 60
  store i32 %i.abq, ptr %i.abr, align 4, !tbaa !10
  %i.abs = icmp samesign ugt i64 %i.xz, 16
  br i1 %i.abs, label %.noexc230.i, label %.loopexit1659.i, !prof !107

.noexc230.i:                                      ; preds = %.noexc202.i
  %i.abt = add i64 %i.abn, -1
  %i.abu = and i64 %i.abt, %i.abn                 ; 3 uses
  %i.abv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abu, i1 true)
  %i.abw = trunc nuw nsw i64 %i.abv to i32
  %i.abx = or disjoint i32 %i.xx, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 64
  store i32 %i.abx, ptr %i.aby, align 4, !tbaa !10
  %i.abz = add i64 %i.abu, -2
  %i.aca = and i64 %i.abz, %i.abu                 ; 3 uses
  %i.acb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aca, i1 true)
  %i.acc = trunc nuw nsw i64 %i.acb to i32
  %i.acd = or disjoint i32 %i.xx, %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 68
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !10
  %i.acf = add i64 %i.aca, -2
  %i.acg = and i64 %i.acf, %i.aca                 ; 3 uses
  %i.ach = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acg, i1 true)
  %i.aci = trunc nuw nsw i64 %i.ach to i32
  %i.acj = or disjoint i32 %i.xx, %i.aci
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 72
  store i32 %i.acj, ptr %i.ack, align 4, !tbaa !10
  %i.acl = add i64 %i.acg, -2
  %i.acm = and i64 %i.acl, %i.acg                 ; 3 uses
  %i.acn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acm, i1 true)
  %i.aco = trunc nuw nsw i64 %i.acn to i32
  %i.acp = or disjoint i32 %i.xx, %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 76
  store i32 %i.acp, ptr %i.acq, align 4, !tbaa !10
  %i.acr = icmp samesign ugt i64 %i.xz, 20
  br i1 %i.acr, label %.noexc104.i, label %.loopexit1659.i, !prof !107

.noexc104.i:                                      ; preds = %.noexc230.i
  %i.acs = add i64 %i.acm, -2
  %i.act = and i64 %i.acs, %i.acm                 ; 3 uses
  %i.acu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.act, i1 true)
  %i.acv = trunc nuw nsw i64 %i.acu to i32
  %i.acw = or disjoint i32 %i.xx, %i.acv
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 80
  store i32 %i.acw, ptr %i.acx, align 4, !tbaa !10
  %i.acy = add i64 %i.act, -1
  %i.acz = and i64 %i.acy, %i.act                 ; 3 uses
  %i.ada = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acz, i1 true)
  %i.adb = trunc nuw nsw i64 %i.ada to i32
  %i.adc = or disjoint i32 %i.xx, %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 84
  store i32 %i.adc, ptr %i.add, align 4, !tbaa !10
  %i.ade = add i64 %i.acz, -2
  %i.adf = and i64 %i.ade, %i.acz                 ; 3 uses
  %i.adg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.adf, i1 true)
  %i.adh = trunc nuw nsw i64 %i.adg to i32
  %i.adi = or disjoint i32 %i.xx, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 88
  store i32 %i.adi, ptr %i.adj, align 4, !tbaa !10
  %i.adk = add i64 %i.adf, -2
  %i.adl = and i64 %i.adk, %i.adf                 ; 3 uses
  %i.adm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.adl, i1 true)
  %i.adn = trunc nuw nsw i64 %i.adm to i32
  %i.ado = or disjoint i32 %i.xx, %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 92
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !10
  %i.adq = icmp samesign ugt i64 %i.xz, 24
  br i1 %i.adq, label %.noexc105.i.preheader, label %.loopexit1659.i, !prof !110

.noexc105.i.preheader:                            ; preds = %.noexc104.i
  %i.adr = add i64 %i.adl, -2
  %i.ads = and i64 %i.adr, %i.adl                 ; 2 uses
  %xtraiter90 = and i64 %i.xz, 1
  %i.adt = icmp eq i64 %i.xz, 25
  br i1 %i.adt, label %.noexc105.i.epil.preheader, label %.noexc105.i.preheader.new

.noexc105.i.preheader.new:                        ; preds = %.noexc105.i.preheader
  %i.adu = and i64 %i.xz, 126
  %i.adv = add nsw i64 %i.adu, -26
  br label %.noexc105.i

.noexc105.i:                                      ; preds = %.noexc105.i, %.noexc105.i.preheader.new
  %indvars.iv1721.i = phi i64 [ 24, %.noexc105.i.preheader.new ], [ %indvars.iv.next1722.i.1, %.noexc105.i ] ; 3 uses
  %.016001689.i = phi i64 [ %i.ads, %.noexc105.i.preheader.new ], [ %i.aei, %.noexc105.i ] ; 3 uses
  %niter94 = phi i64 [ 0, %.noexc105.i.preheader.new ], [ %niter94.next.1, %.noexc105.i ] ; 2 uses
  %i.adw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.016001689.i, i1 true)
  %i.adx = trunc nuw nsw i64 %i.adw to i32
  %i.ady = or disjoint i32 %i.xx, %i.adx
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %indvars.iv1721.i
  store i32 %i.ady, ptr %i.adz, align 4, !tbaa !10
  %i.aea = add i64 %.016001689.i, -1
  %i.aeb = and i64 %i.aea, %.016001689.i          ; 3 uses
  %i.aec = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aeb, i1 true)
  %i.aed = trunc nuw nsw i64 %i.aec to i32
  %i.aee = or disjoint i32 %i.xx, %i.aed
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %indvars.iv1721.i
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  store i32 %i.aee, ptr %i.aeg, align 4, !tbaa !10
  %i.aeh = add i64 %i.aeb, -2
  %i.aei = and i64 %i.aeh, %i.aeb                 ; 2 uses
  %indvars.iv.next1722.i.1 = add nuw nsw i64 %indvars.iv1721.i, 2 ; 2 uses
  %niter94.next.1 = add nuw i64 %niter94, 2
  %niter94.ncmp.1 = icmp eq i64 %niter94, %i.adv
  br i1 %niter94.ncmp.1, label %.loopexit1659.i.loopexit.unr-lcssa, label %.noexc105.i, !llvm.loop !173

.loopexit1659.i.loopexit.unr-lcssa:               ; preds = %.noexc105.i
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.loopexit1659.i, label %.noexc105.i.epil.preheader

.noexc105.i.epil.preheader:                       ; preds = %.loopexit1659.i.loopexit.unr-lcssa, %.noexc105.i.preheader
  %indvars.iv1721.i.epil.init = phi i64 [ 24, %.noexc105.i.preheader ], [ %indvars.iv.next1722.i.1, %.loopexit1659.i.loopexit.unr-lcssa ]
  %.016001689.i.epil.init = phi i64 [ %i.ads, %.noexc105.i.preheader ], [ %i.aei, %.loopexit1659.i.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i64 %i.xz to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.aej = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.016001689.i.epil.init, i1 true)
  %i.aek = trunc nuw nsw i64 %i.aej to i32
  %i.ael = or disjoint i32 %i.xx, %i.aek
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %indvars.iv1721.i.epil.init
  store i32 %i.ael, ptr %i.aem, align 4, !tbaa !10
  br label %.loopexit1659.i

.loopexit1659.i:                                  ; preds = %.noexc105.i.epil.preheader, %.loopexit1659.i.loopexit.unr-lcssa, %.noexc104.i, %.noexc230.i, %.noexc202.i, %.noexc184.i, %.noexc156.i, %.noexc148.i
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %i.xz
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %.loopexit1659.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i
  %.sroa.59.1.i = phi ptr [ %.sroa.59.0.lcssa1775.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i ], [ %i.aen, %.loopexit1659.i ] ; 29 uses
  %i.aeo = xor i64 %i.tm, -1
  %i.aep = and i64 %i.aeo, %i.ti
  %i.aeq = or i64 %i.aep, %i.tg
  %i.aer = xor i64 %i.rj, %i.rn
  %i.aes = xor i64 %i.aer, -1
  %i.aet = and i64 %i.aeq, %i.aes                 ; 5 uses
  %i.aeu = and i64 %i.rn, %i.ub
  %i.aev = or i64 %i.aeu, %.sroa.148.0.lcssa1773.i
  %i.aew = icmp eq i64 %i.aet, 0
  br i1 %i.aew, label %.noexc.i, label %.noexc143.i

.noexc143.i:                                      ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.aex = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aet) ; 11 uses
  %i.aey = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aet, i1 true)
  %i.aez = or disjoint i64 %i.aey, %.sroa.11.0.lcssa1770.i
  %i.afa = trunc i64 %i.aez to i32
  store i32 %i.afa, ptr %.sroa.59.1.i, align 4, !tbaa !10
  %i.afb = add i64 %i.aet, -1
  %i.afc = and i64 %i.afb, %i.aet                 ; 3 uses
  %i.afd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afc, i1 true)
  %i.afe = or disjoint i64 %i.afd, %.sroa.11.0.lcssa1770.i
  %i.aff = trunc i64 %i.afe to i32
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 4
  store i32 %i.aff, ptr %i.afg, align 4, !tbaa !10
  %i.afh = add i64 %i.afc, -2
  %i.afi = and i64 %i.afh, %i.afc                 ; 3 uses
  %i.afj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afi, i1 true)
  %i.afk = or disjoint i64 %i.afj, %.sroa.11.0.lcssa1770.i
  %i.afl = trunc i64 %i.afk to i32
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 8
  store i32 %i.afl, ptr %i.afm, align 4, !tbaa !10
  %i.afn = add i64 %i.afi, -2
  %i.afo = and i64 %i.afn, %i.afi                 ; 3 uses
  %i.afp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afo, i1 true)
  %i.afq = or disjoint i64 %i.afp, %.sroa.11.0.lcssa1770.i
  %i.afr = trunc i64 %i.afq to i32
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 12
  store i32 %i.afr, ptr %i.afs, align 4, !tbaa !10
  %i.aft = icmp samesign ugt i64 %i.aex, 4
  br i1 %i.aft, label %.noexc161.i, label %.loopexit.i, !prof !107

.noexc161.i:                                      ; preds = %.noexc143.i
  %i.afu = add i64 %i.afo, -2
  %i.afv = and i64 %i.afu, %i.afo                 ; 3 uses
  %i.afw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afv, i1 true)
  %i.afx = or disjoint i64 %i.afw, %.sroa.11.0.lcssa1770.i
  %i.afy = trunc i64 %i.afx to i32
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 16
  store i32 %i.afy, ptr %i.afz, align 4, !tbaa !10
  %i.aga = add i64 %i.afv, -2
  %i.agb = and i64 %i.aga, %i.afv                 ; 3 uses
  %i.agc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agb, i1 true)
  %i.agd = or disjoint i64 %i.agc, %.sroa.11.0.lcssa1770.i
  %i.age = trunc i64 %i.agd to i32
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 20
  store i32 %i.age, ptr %i.agf, align 4, !tbaa !10
  %i.agg = add i64 %i.agb, -1
  %i.agh = and i64 %i.agg, %i.agb                 ; 3 uses
  %i.agi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agh, i1 true)
  %i.agj = or disjoint i64 %i.agi, %.sroa.11.0.lcssa1770.i
  %i.agk = trunc i64 %i.agj to i32
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 24
  store i32 %i.agk, ptr %i.agl, align 4, !tbaa !10
  %i.agm = add i64 %i.agh, -2
  %i.agn = and i64 %i.agm, %i.agh                 ; 3 uses
  %i.ago = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agn, i1 true)
  %i.agp = or disjoint i64 %i.ago, %.sroa.11.0.lcssa1770.i
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 28
  store i32 %i.agq, ptr %i.agr, align 4, !tbaa !10
  %i.ags = icmp samesign ugt i64 %i.aex, 8
  br i1 %i.ags, label %.noexc179.i, label %.loopexit.i, !prof !107

.noexc179.i:                                      ; preds = %.noexc161.i
  %i.agt = add i64 %i.agn, -2
  %i.agu = and i64 %i.agt, %i.agn                 ; 3 uses
  %i.agv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agu, i1 true)
  %i.agw = or disjoint i64 %i.agv, %.sroa.11.0.lcssa1770.i
  %i.agx = trunc i64 %i.agw to i32
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 32
  store i32 %i.agx, ptr %i.agy, align 4, !tbaa !10
  %i.agz = add i64 %i.agu, -2
  %i.aha = and i64 %i.agz, %i.agu                 ; 3 uses
  %i.ahb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aha, i1 true)
  %i.ahc = or disjoint i64 %i.ahb, %.sroa.11.0.lcssa1770.i
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 36
  store i32 %i.ahd, ptr %i.ahe, align 4, !tbaa !10
  %i.ahf = add i64 %i.aha, -2
  %i.ahg = and i64 %i.ahf, %i.aha                 ; 3 uses
  %i.ahh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahg, i1 true)
  %i.ahi = or disjoint i64 %i.ahh, %.sroa.11.0.lcssa1770.i
  %i.ahj = trunc i64 %i.ahi to i32
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 40
  store i32 %i.ahj, ptr %i.ahk, align 4, !tbaa !10
  %i.ahl = add i64 %i.ahg, -1
  %i.ahm = and i64 %i.ahl, %i.ahg                 ; 3 uses
  %i.ahn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahm, i1 true)
  %i.aho = or disjoint i64 %i.ahn, %.sroa.11.0.lcssa1770.i
  %i.ahp = trunc i64 %i.aho to i32
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 44
  store i32 %i.ahp, ptr %i.ahq, align 4, !tbaa !10
  %i.ahr = icmp samesign ugt i64 %i.aex, 12
  br i1 %i.ahr, label %.noexc207.i, label %.loopexit.i, !prof !107

.noexc207.i:                                      ; preds = %.noexc179.i
  %i.ahs = add i64 %i.ahm, -2
  %i.aht = and i64 %i.ahs, %i.ahm                 ; 3 uses
  %i.ahu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aht, i1 true)
  %i.ahv = or disjoint i64 %i.ahu, %.sroa.11.0.lcssa1770.i
  %i.ahw = trunc i64 %i.ahv to i32
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 48
  store i32 %i.ahw, ptr %i.ahx, align 4, !tbaa !10
  %i.ahy = add i64 %i.aht, -2
  %i.ahz = and i64 %i.ahy, %i.aht                 ; 3 uses
  %i.aia = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahz, i1 true)
  %i.aib = or disjoint i64 %i.aia, %.sroa.11.0.lcssa1770.i
  %i.aic = trunc i64 %i.aib to i32
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 52
  store i32 %i.aic, ptr %i.aid, align 4, !tbaa !10
  %i.aie = add i64 %i.ahz, -2
  %i.aif = and i64 %i.aie, %i.ahz                 ; 3 uses
  %i.aig = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aif, i1 true)
  %i.aih = or disjoint i64 %i.aig, %.sroa.11.0.lcssa1770.i
  %i.aii = trunc i64 %i.aih to i32
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 56
  store i32 %i.aii, ptr %i.aij, align 4, !tbaa !10
  %i.aik = add i64 %i.aif, -2
  %i.ail = and i64 %i.aik, %i.aif                 ; 3 uses
  %i.aim = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ail, i1 true)
  %i.ain = or disjoint i64 %i.aim, %.sroa.11.0.lcssa1770.i
  %i.aio = trunc i64 %i.ain to i32
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 60
  store i32 %i.aio, ptr %i.aip, align 4, !tbaa !10
  %i.aiq = icmp samesign ugt i64 %i.aex, 16
  br i1 %i.aiq, label %.noexc225.i, label %.loopexit.i, !prof !107

.noexc225.i:                                      ; preds = %.noexc207.i
  %i.air = add i64 %i.ail, -1
  %i.ais = and i64 %i.air, %i.ail                 ; 3 uses
  %i.ait = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ais, i1 true)
  %i.aiu = or disjoint i64 %i.ait, %.sroa.11.0.lcssa1770.i
  %i.aiv = trunc i64 %i.aiu to i32
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 64
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !10
  %i.aix = add i64 %i.ais, -2
  %i.aiy = and i64 %i.aix, %i.ais                 ; 3 uses
  %i.aiz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aiy, i1 true)
  %i.aja = or disjoint i64 %i.aiz, %.sroa.11.0.lcssa1770.i
  %i.ajb = trunc i64 %i.aja to i32
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 68
  store i32 %i.ajb, ptr %i.ajc, align 4, !tbaa !10
  %i.ajd = add i64 %i.aiy, -2
  %i.aje = and i64 %i.ajd, %i.aiy                 ; 3 uses
  %i.ajf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aje, i1 true)
  %i.ajg = or disjoint i64 %i.ajf, %.sroa.11.0.lcssa1770.i
  %i.ajh = trunc i64 %i.ajg to i32
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 72
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !10
  %i.ajj = add i64 %i.aje, -2
  %i.ajk = and i64 %i.ajj, %i.aje                 ; 3 uses
  %i.ajl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajk, i1 true)
  %i.ajm = or disjoint i64 %i.ajl, %.sroa.11.0.lcssa1770.i
  %i.ajn = trunc i64 %i.ajm to i32
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 76
  store i32 %i.ajn, ptr %i.ajo, align 4, !tbaa !10
  %i.ajp = icmp samesign ugt i64 %i.aex, 20
  br i1 %i.ajp, label %.noexc111.i, label %.loopexit.i, !prof !107

.noexc111.i:                                      ; preds = %.noexc225.i
  %i.ajq = add i64 %i.ajk, -2
  %i.ajr = and i64 %i.ajq, %i.ajk                 ; 3 uses
  %i.ajs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajr, i1 true)
  %i.ajt = or disjoint i64 %i.ajs, %.sroa.11.0.lcssa1770.i
  %i.aju = trunc i64 %i.ajt to i32
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 80
  store i32 %i.aju, ptr %i.ajv, align 4, !tbaa !10
  %i.ajw = add i64 %i.ajr, -1
  %i.ajx = and i64 %i.ajw, %i.ajr                 ; 3 uses
  %i.ajy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajx, i1 true)
  %i.ajz = or disjoint i64 %i.ajy, %.sroa.11.0.lcssa1770.i
  %i.aka = trunc i64 %i.ajz to i32
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 84
  store i32 %i.aka, ptr %i.akb, align 4, !tbaa !10
  %i.akc = add i64 %i.ajx, -2
  %i.akd = and i64 %i.akc, %i.ajx                 ; 3 uses
  %i.ake = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akd, i1 true)
  %i.akf = or disjoint i64 %i.ake, %.sroa.11.0.lcssa1770.i
  %i.akg = trunc i64 %i.akf to i32
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 88
  store i32 %i.akg, ptr %i.akh, align 4, !tbaa !10
  %i.aki = add i64 %i.akd, -2
  %i.akj = and i64 %i.aki, %i.akd                 ; 3 uses
  %i.akk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akj, i1 true)
  %i.akl = or disjoint i64 %i.akk, %.sroa.11.0.lcssa1770.i
  %i.akm = trunc i64 %i.akl to i32
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 92
  store i32 %i.akm, ptr %i.akn, align 4, !tbaa !10
  %i.ako = icmp samesign ugt i64 %i.aex, 24
  br i1 %i.ako, label %.noexc112.i.preheader, label %.loopexit.i, !prof !110

.noexc112.i.preheader:                            ; preds = %.noexc111.i
  %i.akp = add i64 %i.akj, -2
  %i.akq = and i64 %i.akp, %i.akj                 ; 2 uses
  %xtraiter95 = and i64 %i.aex, 1
  %i.akr = icmp eq i64 %i.aex, 25
  br i1 %i.akr, label %.noexc112.i.epil.preheader, label %.noexc112.i.preheader.new

.noexc112.i.preheader.new:                        ; preds = %.noexc112.i.preheader
  %i.aks = and i64 %i.aex, 126
  %i.akt = add nsw i64 %i.aks, -26
  br label %.noexc112.i

.noexc112.i:                                      ; preds = %.noexc112.i, %.noexc112.i.preheader.new
  %indvars.iv1726.i = phi i64 [ 24, %.noexc112.i.preheader.new ], [ %indvars.iv.next1727.i.1, %.noexc112.i ] ; 3 uses
  %.015921691.i = phi i64 [ %i.akq, %.noexc112.i.preheader.new ], [ %i.alg, %.noexc112.i ] ; 3 uses
  %niter99 = phi i64 [ 0, %.noexc112.i.preheader.new ], [ %niter99.next.1, %.noexc112.i ] ; 2 uses
  %i.aku = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015921691.i, i1 true)
  %i.akv = or disjoint i64 %i.aku, %.sroa.11.0.lcssa1770.i
  %i.akw = trunc i64 %i.akv to i32
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !10
  %i.aky = add i64 %.015921691.i, -1
  %i.akz = and i64 %i.aky, %.015921691.i          ; 3 uses
  %i.ala = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akz, i1 true)
  %i.alb = or disjoint i64 %i.ala, %.sroa.11.0.lcssa1770.i
  %i.alc = trunc i64 %i.alb to i32
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  store i32 %i.alc, ptr %i.ale, align 4, !tbaa !10
  %i.alf = add i64 %i.akz, -2
  %i.alg = and i64 %i.alf, %i.akz                 ; 2 uses
  %indvars.iv.next1727.i.1 = add nuw nsw i64 %indvars.iv1726.i, 2 ; 2 uses
  %niter99.next.1 = add nuw i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.akt
  br i1 %niter99.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.noexc112.i, !llvm.loop !173

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.noexc112.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.loopexit.i, label %.noexc112.i.epil.preheader

.noexc112.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.noexc112.i.preheader
  %indvars.iv1726.i.epil.init = phi i64 [ 24, %.noexc112.i.preheader ], [ %indvars.iv.next1727.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.015921691.i.epil.init = phi i64 [ %i.akq, %.noexc112.i.preheader ], [ %i.alg, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.aex to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.alh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015921691.i.epil.init, i1 true)
  %i.ali = or disjoint i64 %i.alh, %.sroa.11.0.lcssa1770.i
  %i.alj = trunc i64 %i.ali to i32
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i.epil.init
  store i32 %i.alj, ptr %i.alk, align 4, !tbaa !10
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc112.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.noexc111.i, %.noexc225.i, %.noexc207.i, %.noexc179.i, %.noexc161.i, %.noexc143.i
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %i.aex
  br label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.59.3.i = phi ptr [ %.sroa.59.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.all, %.loopexit.i ]
  %.not.i.i53.i = icmp sgt i64 %i.rn, -1          ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i.i53.i, !prof !113
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !114

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.aev, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.n:                                             ; preds = %.thread.i
  %i.alm = load ptr, ptr %i.pt, align 8, !tbaa !108 ; 14 uses
  %i.aln = ptrtoint ptr %.sroa.59.3.i to i64
  %i.alo = ptrtoint ptr %i.alm to i64
  %i.alp = sub i64 %i.aln, %i.alo
  %i.alq = lshr exact i64 %i.alp, 2               ; 2 uses
  %i.alr = trunc i64 %i.alq to i32
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.alr, ptr %i.als, align 8, !tbaa !73
  %i.alt = trunc i64 %.01317561769.i to i32       ; 3 uses
  %i.alu = and i64 %i.alq, 4294967295
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.alu
  store i32 %i.alt, ptr %i.alv, align 4, !tbaa !10
  %i.alw = load i32, ptr %i.als, align 8, !tbaa !73
  %i.alx = add i32 %i.alw, 1
  %i.aly = zext i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.aly
  store i32 %i.alt, ptr %i.alz, align 4, !tbaa !10
  %i.ama = load i32, ptr %i.als, align 8, !tbaa !73
  %i.amb = add i32 %i.ama, 2
  %i.amc = zext i32 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.amc
  store i32 0, ptr %i.amd, align 4, !tbaa !10
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ame, align 8, !tbaa !83
  %i.amf = load i32, ptr %i.als, align 8, !tbaa !73 ; 6 uses
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.o, !prof !107

bb.o:                                             ; preds = %bb.n
  %i.amh = add i32 %i.amf, -1                     ; 9 uses
  %i.ami = zext i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !10
  %i.aml = zext i32 %i.amk to i64
  %i.amm = icmp ult i64 %.01317561769.i, %i.aml
  br i1 %i.amm, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.p, !prof !107

bb.p:                                             ; preds = %bb.o
  switch i32 %3, label %bb.av [
    i32 1, label %bb.q
    i32 2, label %bb.ah
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i53.i, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.amh, ptr %i.als, align 8, !tbaa !73
  %i.amn = icmp eq i32 %i.amh, 0
  br i1 %i.amn, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !107

..preheader.i_crit_edge:                          ; preds = %bb.r
  %.pre = add i32 %i.amf, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.q
  %.035.i1703.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.amh, %bb.q ] ; 2 uses
  %i.amo = phi i32 [ %i.amh, %..preheader.i_crit_edge ], [ %i.amf, %bb.q ] ; 3 uses
  %.not.i2781704.i = icmp eq i32 %.035.i1703.i.pre-phi, 0
  %.pre1739.i = load ptr, ptr %i.b, align 8, !tbaa !163 ; 3 uses
  br i1 %.not.i2781704.i, label %._crit_edge1710.i, label %.lr.ph1709.i

.lr.ph1709.i:                                     ; preds = %.preheader.i
  %i.amp = zext i32 %.035.i1703.i.pre-phi to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %.lr.ph1709.i
  %indvars.iv1734.i = phi i64 [ %i.amp, %.lr.ph1709.i ], [ %indvars.iv.next1735.i, %bb.z ] ; 4 uses
  %.035.in.i1707.i = phi i32 [ %i.amo, %.lr.ph1709.i ], [ %i.ank, %bb.z ]
  %.036.i1706.i = phi i32 [ 0, %.lr.ph1709.i ], [ %.238.i.i, %bb.z ] ; 7 uses
  %.039.i1705.i = phi i32 [ 0, %.lr.ph1709.i ], [ %.241.i.i, %bb.z ] ; 7 uses
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv1734.i
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !10
  %i.ams = zext i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.ams
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !9
  switch i8 %i.amu, label %bb.x [
    i8 58, label %bb.z
    i8 44, label %bb.z
    i8 125, label %bb.t
    i8 93, label %bb.u
    i8 123, label %bb.v
    i8 91, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.amv = add nsw i32 %.036.i1706.i, -1
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.amw = add nsw i32 %.039.i1705.i, -1
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.amx = add nsw i32 %.036.i1706.i, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.amy = add nsw i32 %.039.i1705.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s
  %.140.i.i = phi i32 [ %.039.i1705.i, %bb.s ], [ %.039.i1705.i, %bb.v ], [ %i.amy, %bb.w ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i1706.i, %bb.s ], [ %i.amx, %bb.v ], [ %.036.i1706.i, %bb.w ] ; 5 uses
  %i.amz = add i32 %.035.in.i1707.i, -2
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.ana
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !10
  %i.and = zext i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !9
  switch i8 %i.anf, label %bb.y [
    i8 123, label %bb.z
    i8 91, label %bb.z
    i8 58, label %bb.z
    i8 44, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.ang = trunc nuw i64 %indvars.iv1734.i to i32
  %i.anh = icmp ne i32 %.140.i.i, 0
  %i.ani = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.anh, i1 true, i1 %i.ani
  %spec.select1655.i = select i1 %or.cond.i.i, i32 %i.ang, i32 %i.amo
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.u, %bb.t, %bb.s, %bb.s
  %.241.i.i = phi i32 [ %.039.i1705.i, %bb.s ], [ %i.amw, %bb.u ], [ %.039.i1705.i, %bb.t ], [ %.039.i1705.i, %bb.s ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i1706.i, %bb.s ], [ %.036.i1706.i, %bb.u ], [ %i.amv, %bb.t ], [ %.036.i1706.i, %bb.s ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ] ; 2 uses
  %indvars.iv.next1735.i = add nsw i64 %indvars.iv1734.i, -1 ; 2 uses
  %i.anj = and i64 %indvars.iv.next1735.i, 4294967295
  %.not.i278.i = icmp eq i64 %i.anj, 0
  %i.ank = trunc nuw i64 %indvars.iv1734.i to i32
  br i1 %.not.i278.i, label %._crit_edge1710.i, label %bb.s, !llvm.loop !175

._crit_edge1710.i:                                ; preds = %bb.z, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.z ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.z ] ; 5 uses
  %i.anl = load i32, ptr %i.alm, align 4, !tbaa !10 ; 2 uses
  %i.anm = zext i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.anm
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !9
  switch i8 %i.ano, label %bb.ae [
    i8 125, label %bb.aa
    i8 93, label %bb.ab
    i8 123, label %bb.ac
    i8 91, label %bb.ad
  ]

bb.aa:                                            ; preds = %._crit_edge1710.i
  %i.anp = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge1710.i
  %i.anq = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge1710.i
  %i.anr = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge1710.i
  %i.ans = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %._crit_edge1710.i
end_hunk_4
begin_hunk_5_@_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE:bb.a
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 5 uses
  %i.e = icmp slt i32 %i.d, -324
  br i1 %i.e, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %i.d, 309
  br i1 %i.f, label %.thread63, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.lr.ph89

thread-pre-split:                                 ; preds = %bb.e
  %i.h = add nuw nsw i32 %i.p, %.04487            ; 2 uses
  %i.i = icmp sgt i32 %i.q, 0
  br i1 %i.i, label %.lr.ph, label %.lr.ph89

.lr.ph:                                           ; preds = %.preheader, %thread-pre-split
  %.04487 = phi i32 [ %i.h, %thread-pre-split ], [ 0, %.preheader ]
  %i.j = phi i32 [ %i.q, %thread-pre-split ], [ %i.d, %.preheader ] ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 19
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalEE6powers, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ 60, %.lr.ph ] ; 2 uses
  tail call void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %i.p)
  %i.q = load i32, ptr %i.c, align 4, !tbaa !18   ; 4 uses
  %i.r = icmp sgt i32 %i.q, -2048
  br i1 %i.r, label %thread-pre-split, label %.thread63, !llvm.loop !225

.lr.ph89:                                         ; preds = %thread-pre-split, %.preheader
  %.pr83 = phi i32 [ %i.d, %.preheader ], [ %i.q, %thread-pre-split ]
  %.044.lcssa = phi i32 [ 0, %.preheader ], [ %i.h, %thread-pre-split ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph89, %bb.l
  %.288 = phi i32 [ %.044.lcssa, %.lr.ph89 ], [ %i.ah, %bb.l ] ; 2 uses
  %i.t = phi i32 [ %.pr83, %.lr.ph89 ], [ %i.af, %bb.l ] ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.s, align 2, !tbaa !9     ; 2 uses
  %i.w = icmp ugt i8 %i.v, 4
  br i1 %i.w, label %.thread68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp samesign ult i8 %i.v, 2
  %i.y = select i1 %i.x, i32 2, i32 1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.z = sub nsw i32 0, %i.t                      ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, 19
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalEE6powers, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = zext i8 %i.ad to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.045 = phi i32 [ %i.y, %bb.h ], [ %i.ae, %bb.j ], [ 60, %bb.i ] ; 2 uses
  tail call void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %.045)
  %i.af = load i32, ptr %i.c, align 4, !tbaa !18  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 2047
  br i1 %i.ag, label %.thread63, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nsw i32 %.288, %.045                ; 2 uses
  %i.ai = icmp slt i32 %i.af, 1
  br i1 %i.ai, label %bb.f, label %.thread68

.thread68:                                        ; preds = %bb.l, %bb.g
  %.2.lcssa.ph = phi i32 [ %i.ah, %bb.l ], [ %.288, %bb.g ] ; 3 uses
  %i.aj = add nsw i32 %.2.lcssa.ph, -1            ; 2 uses
  %i.ak = icmp slt i32 %.2.lcssa.ph, -1021
  br i1 %i.ak, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %.thread68, %.lr.ph94
  %.593 = phi i32 [ %i.am, %.lr.ph94 ], [ %i.aj, %.thread68 ] ; 2 uses
  %i.al = sub nuw nsw i32 -1022, %.593
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.al, i32 60) ; 2 uses
  tail call void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %spec.store.select)
  %i.am = add nuw nsw i32 %spec.store.select, %.593 ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, -1022
  br i1 %i.an, label %.lr.ph94, label %._crit_edge.thread, !llvm.loop !226

._crit_edge:                                      ; preds = %.thread68
  %.not = icmp slt i32 %.2.lcssa.ph, 1025
  br i1 %.not, label %._crit_edge.thread, label %.thread63

._crit_edge.thread:                               ; preds = %.lr.ph94, %._crit_edge
  %.5.lcssa112 = phi i32 [ %i.aj, %._crit_edge ], [ %i.am, %.lr.ph94 ] ; 4 uses
  tail call void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef 53)
  %i.ao = load i32, ptr %0, align 4, !tbaa !15    ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread76, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !18  ; 9 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread76, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp samesign ugt i32 %i.aq, 18
  br i1 %i.as, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %.not42.i = icmp eq i32 %i.aq, 0                ; 2 uses
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.au = zext i32 %i.ao to i64                   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.av = icmp eq i32 %i.aq, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 30
  br label %bb.p

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02840.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.br, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod129 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.aw = mul i64 %.02840.i.epil.init, 10
  %i.ax = icmp samesign ult i64 %indvars.iv.i.epil.init, %i.au
  br i1 %i.ax, label %bb.o, label %._crit_edge.i.loopexit.epilog-lcssa

bb.o:                                             ; preds = %.epil.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i.epil.init
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i64
  br label %._crit_edge.i.loopexit.epilog-lcssa

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %bb.o, %.epil.preheader
  %i.bb = phi i64 [ %i.ba, %bb.o ], [ 0, %.epil.preheader ]
  %i.bc = add i64 %i.bb, %i.aw
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %.028.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.br, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bc, %._crit_edge.i.loopexit.epilog-lcssa ] ; 5 uses
  %i.bd = icmp ult i32 %i.aq, %i.ao
  br i1 %i.bd, label %bb.u, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.t ] ; 4 uses
  %.02840.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.br, %bb.t ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.t ]
  %i.be = mul i64 %.02840.i, 10
  %i.bf = icmp samesign ult i64 %indvars.iv.i, %i.au
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !9
  %i.bi = zext i8 %i.bh to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = phi i64 [ %i.bi, %bb.q ], [ 0, %bb.p ]
  %i.bk = add i64 %i.bj, %i.be
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = mul i64 %i.bk, 10
  %i.bm = icmp samesign ult i64 %indvars.iv.next.i, %i.au
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i8 %i.bo to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bq = phi i64 [ %i.bp, %bb.s ], [ 0, %bb.r ]
  %i.br = add i64 %i.bq, %i.bl                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !36

bb.u:                                             ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bt = zext nneg i32 %i.aq to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %.fr.i = freeze i8 %i.bv                        ; 2 uses
  %i.bw = icmp eq i8 %.fr.i, 5
  %i.bx = add nuw nsw i32 %i.aq, 1
  %i.by = icmp eq i32 %i.bx, %i.ao
  %or.cond.i = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19, !range !37, !noundef !38
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.thread35.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not42.i, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit, label %.split.i

.split.i:                                         ; preds = %bb.w
  %i.cc = getelementptr i8, ptr %i.bu, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %.fr39.i = freeze i8 %i.cd
  %i.ce = trunc i8 %.fr39.i to i1
  br i1 %i.ce, label %.thread35.i, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit

bb.x:                                             ; preds = %bb.u
  %i.cf = icmp ugt i8 %.fr.i, 4
  br i1 %i.cf, label %.thread35.i, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit

.thread35.i:                                      ; preds = %bb.x, %.split.i, %bb.v
  %i.cg = add i64 %.028.lcssa.i, 1
  br label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit

.thread76:                                        ; preds = %bb.m, %._crit_edge.thread
  %i.ch = add nsw i32 %.5.lcssa112, 1023
  br label %bb.z

_ZN8simdjson8internal5roundERNS0_7decimalE.exit:  ; preds = %._crit_edge.i, %bb.w, %.split.i, %bb.x, %.thread35.i
  %.029.i = phi i64 [ %.028.lcssa.i, %.split.i ], [ %.028.lcssa.i, %._crit_edge.i ], [ %.028.lcssa.i, %bb.w ], [ %i.cg, %.thread35.i ], [ %.028.lcssa.i, %bb.x ] ; 2 uses
  %i.ci = icmp ugt i64 %.029.i, 9007199254740991
  br i1 %i.ci, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74, label %bb.y

_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74: ; preds = %bb.n, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit
  tail call void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef 1)
  %i.cj = add nsw i32 %.5.lcssa112, 1
  %i.ck = tail call noundef i64 @_ZN8simdjson8internal5roundERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %0)
  %.not54.not = icmp eq i32 %.5.lcssa112, 1023
  br i1 %.not54.not, label %.thread63, label %bb.y

bb.y:                                             ; preds = %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit
  %.6 = phi i32 [ %i.cj, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74 ], [ %.5.lcssa112, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit ]
  %.0 = phi i64 [ %i.ck, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74 ], [ %.029.i, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit ] ; 3 uses
  %i.cl = add nsw i32 %.6, 1023                   ; 2 uses
  %i.cm = icmp ult i64 %.0, 4503599627370496
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread76, %bb.y
  %i.cn = phi i32 [ %i.ch, %.thread76 ], [ %i.cl, %bb.y ]
  %.081 = phi i64 [ 0, %.thread76 ], [ %.0, %bb.y ]
  %i.co = add nsw i32 %i.cn, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.080 = phi i64 [ %.081, %bb.z ], [ %.0, %bb.y ]
  %.sroa.8.4 = phi i32 [ %i.co, %bb.z ], [ %i.cl, %bb.y ]
  %i.cp = and i64 %.080, 4503599627370495
  br label %.thread63

.thread63:                                        ; preds = %bb.e, %bb.k, %bb.aa, %._crit_edge, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74, %bb.c, %bb.b, %bb.a
  %.sroa.8.6 = phi i32 [ 255, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ], [ 2047, %bb.c ], [ 2047, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74 ], [ %.sroa.8.4, %bb.aa ], [ 2047, %._crit_edge ], [ 0, %bb.e ]
  %.sroa.0.4 = phi i64 [ 0, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74 ], [ %i.cp, %bb.aa ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.8.6, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #33

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 10) i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.c to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i.i         ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i.i to double
  store i64 %spec.select9.i.i, ptr %1, align 8, !tbaa !130
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  %. = select i1 %i.m, i32 0, i32 9
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i = zext i1 %i.c to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson8internal10from_charsEPKc.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZN8simdjson8internal10from_charsEPKc.exit:       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i           ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i to double
  store i64 %spec.select9.i, ptr %1, align 8, !tbaa !130
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  ret i1 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8>, <64 x i8>, <64 x i1>) #33

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 10) i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.c to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit unwind label %bb.b ; 2 uses

end_hunk_5
