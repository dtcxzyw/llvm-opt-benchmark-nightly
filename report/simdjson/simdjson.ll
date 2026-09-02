Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8internal13parse_decimalERPKcS2_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  store i8 %i.q, ptr %i.u, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = add i32 %.promoted106, 1                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 4 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !48
  %.not87 = icmp eq ptr %i.w, %2
  br i1 %.not87, label %.critedge2.thread.loopexit, label %bb.f, !llvm.loop !183

.critedge2:                                       ; preds = %bb.f
  store i32 %.promoted106, ptr %0, align 4
  %i.x = load i8, ptr %i.o, align 1, !tbaa !36
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.j, label %.critedge2.thread

bb.j:                                             ; preds = %.critedge2
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 7 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !48
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i32 %.promoted106, 0
  br i1 %i.ab, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.k
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ad = icmp eq i8 %i.ac, 48
  br i1 %i.ad, label %.lr.ph104, label %.loopexit

.lr.ph104:                                        ; preds = %.preheader, %.lr.ph104
  %i.ae = phi ptr [ %i.af, %.lr.ph104 ], [ %i.z, %.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 4 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !48
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %.lr.ph104, label %.loopexit, !llvm.loop !184

.loopexit:                                        ; preds = %.lr.ph104, %.preheader, %bb.k
  %.promoted105 = phi ptr [ %i.z, %bb.k ], [ %i.z, %.preheader ], [ %i.af, %.lr.ph104 ] ; 3 uses
  %.not89108 = icmp eq ptr %.promoted105, %2
  br i1 %.not89108, label %.critedge4, label %.lr.ph109

.lr.ph109:                                        ; preds = %.loopexit, %bb.n
  %i.ai = phi ptr [ %i.ar, %bb.n ], [ %.promoted105, %.loopexit ] ; 4 uses
  %i.aj = phi i32 [ %i.aq, %bb.n ], [ %.promoted106, %.loopexit ] ; 4 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !36
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %.lr.ph109
  %i.an = icmp ult i32 %i.aj, 768
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ao
  store i8 %i.al, ptr %i.ap, align 1, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = add i32 %i.aj, 1                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 4 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !48
  %.not89 = icmp eq ptr %i.ar, %2
  br i1 %.not89, label %.critedge4, label %.lr.ph109, !llvm.loop !185

.critedge4:                                       ; preds = %.lr.ph109, %bb.n, %.loopexit
  %i.as = phi ptr [ %.promoted105, %.loopexit ], [ %i.ar, %bb.n ], [ %i.ai, %.lr.ph109 ]
  %.lcssa107 = phi i32 [ %.promoted106, %.loopexit ], [ %i.aq, %bb.n ], [ %i.aj, %.lr.ph109 ] ; 2 uses
  %.lcssa = phi ptr [ %2, %.loopexit ], [ %2, %bb.n ], [ %i.ai, %.lr.ph109 ]
  store i32 %.lcssa107, ptr %0, align 4
  %i.at = ptrtoint ptr %i.z to i64
  %i.au = ptrtoint ptr %.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !44
  br label %.critedge2.thread

.critedge2.thread.loopexit:                       ; preds = %bb.i, %.critedge
  %i.ax = phi ptr [ %.promoted97, %.critedge ], [ %i.w, %bb.i ]
  %.lcssa99 = phi i32 [ 0, %.critedge ], [ %i.v, %bb.i ] ; 2 uses
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
  %i.bb = load i8, ptr %.070, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.bb, label %bb.o [
    i8 48, label %.critedge6
    i8 46, label %.critedge6
  ]

.critedge6:                                       ; preds = %.preheader155, %.preheader155
  %i.bc = icmp eq i8 %i.bb, 48
  %i.bd = zext i1 %i.bc to i32
  %spec.select = add nuw nsw i32 %.068, %i.bd
  br label %.preheader155, !llvm.loop !186

bb.o:                                             ; preds = %.preheader155
  %i.be = add nsw i32 %i.ay, %i.ba                ; 3 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !44
  %i.bf = sub i32 %i.ba, %.068                    ; 2 uses
  store i32 %i.bf, ptr %0, align 4, !tbaa !43
  %i.bg = icmp ugt i32 %i.bf, 768
  br i1 %i.bg, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  store i32 768, ptr %0, align 4, !tbaa !43
  store i8 1, ptr %i.b, align 1, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %.critedge2.thread, %bb.p, %bb.o
  %i.bh = phi i32 [ %i.ay, %.critedge2.thread ], [ %i.be, %bb.p ], [ %i.be, %bb.o ]
  %.not91 = icmp eq ptr %i.az, %2
  br i1 %.not91, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bi = load i8, ptr %i.az, align 1, !tbaa !36
  switch i8 %i.bi, label %bb.v [
    i8 101, label %bb.r
    i8 69, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 4 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !48
  %i.bk = icmp eq ptr %i.bj, %2
  br i1 %i.bk, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !36  ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 45
  switch i8 %i.bl, label %bb.t [
    i8 45, label %.sink.split
    i8 43, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.s, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  store ptr %i.bn, ptr %1, align 8, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.sink.split
  %.promoted115 = phi ptr [ %i.bj, %bb.s ], [ %i.bn, %.sink.split ] ; 2 uses
  %.not92116 = icmp eq ptr %.promoted115, %2
  br i1 %.not92116, label %.critedge8, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.t, %bb.u
  %.0117 = phi i32 [ %.1, %bb.u ], [ 0, %bb.t ]   ; 4 uses
  %i.bo = phi ptr [ %i.bw, %bb.u ], [ %.promoted115, %bb.t ] ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36
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
  store ptr %i.bw, ptr %1, align 8, !tbaa !48
  %.not92 = icmp eq ptr %i.bw, %2
  br i1 %.not92, label %.critedge8, label %.lr.ph118, !llvm.loop !187

.critedge8:                                       ; preds = %.lr.ph118, %bb.u, %bb.t
  %.0.lcssa = phi i32 [ 0, %bb.t ], [ %.1, %bb.u ], [ %.0117, %.lr.ph118 ] ; 2 uses
  %i.bx = sub nsw i32 0, %.0.lcssa
  %i.by = select i1 %i.bm, i32 %i.bx, i32 %.0.lcssa
  %i.bz = add nsw i32 %i.bh, %i.by
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %.thread, %.critedge8, %bb.r, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN8simdjson8internal5roundERNS0_7decimalE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(780) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !43     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 10 uses
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
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %1 = and i32 %i.d, 30
  %unroll_iter = zext nneg i32 %1 to i64
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %2 = trunc i32 %i.d to i1
  br i1 %2, label %.epil.preheader, label %._crit_edge

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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36
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
  %i.u = load i8, ptr %i.t, align 2, !tbaa !36
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
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !36
  %i.ac = zext i8 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ae = add i64 %i.ad, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = zext nneg i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !36
  %.fr = freeze i8 %i.ai                          ; 2 uses
  %i.aj = icmp eq i8 %.fr, 5
  %i.ak = add nuw nsw i32 %i.d, 1
  %i.al = icmp eq i32 %i.ak, %i.a
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !45, !range !50, !noundef !51
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread35, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not42, label %.thread, label %.split

.split:                                           ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ah, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36
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
  %i.a = load i32, ptr %0, align 4, !tbaa !43     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEjE41number_of_digits_decimal_left_shift_table, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !192
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !192
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
  br i1 %exitcond37.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, label %bb.d, !llvm.loop !188

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.j, -1
  br label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !36    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36    ; 2 uses
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
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !36
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
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !36
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not46 = icmp eq i64 %i.ao, 0
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ae, align 1, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.at = add i32 %.04154, -1                     ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.au = icmp sgt i64 %indvars.iv, 0
  br i1 %i.au, label %bb.h, label %.preheader, !llvm.loop !189

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
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !36
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp eq i64 %i.aw, 0
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ag, align 1, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = add i32 %.14258, -1
  %.not = icmp samesign ult i64 %.159, 10
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.q, %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, %.preheader
  %i.bc = add i32 %.026.i, %i.a                   ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 768) ; 2 uses
  store i32 %spec.select, ptr %0, align 4, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !44
  %i.bf = add nsw i32 %i.be, %.026.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !44
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
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !36
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.r:                                             ; preds = %.lr.ph.i47
  %indvars.i = trunc i64 %indvars.iv.next.i49 to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !43
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i47, !llvm.loop !1

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.r, %.lr.ph.i47, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(780) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !43     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 9 uses
  %i.d = zext i32 %i.b to i64
  %exitcond.not103 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not103, label %._crit_edge108, label %.lr.ph107

bb.b:                                             ; preds = %.lr.ph107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !193

.lr.ph107:                                        ; preds = %bb.a, %bb.b
  %.04457105 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %indvars.iv104 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = mul i64 %.04457105, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv104
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36
  %i.h = zext i8 %i.g to i64
  %i.i = add i64 %i.e, %i.h                       ; 4 uses
  %i.j = lshr i64 %i.i, %i.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %.loopexit.loopexit73, !llvm.loop !193

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
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !194

.loopexit.loopexit73:                             ; preds = %.lr.ph107
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit73, %.preheader52
  %.246 = phi i64 [ %i.i, %.loopexit.loopexit73 ], [ %.04457.lcssa, %.preheader52 ], [ %i.o, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.s, %.loopexit.loopexit73 ], [ %i.b, %.preheader52 ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %reass.sub = sub i32 %i.u, %.2
  %i.v = add i32 %reass.sub, 1                    ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !44
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
  %i.ab = icmp eq i32 %i.b, %.neg
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter = and i32 %i.aa, -2
  br label %bb.e

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.e
  %2 = trunc i32 %i.aa to i1
  br i1 %2, label %.epil.preheader, label %.preheader

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
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84.epil.init
  store i8 %i.ad, ptr %i.ak, align 1, !tbaa !36
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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = zext i8 %i.ar to i64
  %i.at = add i64 %i.ap, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  store i8 %i.an, ptr %i.au, align 2, !tbaa !36
  %i.av = lshr i64 %i.at, %i.a
  %i.aw = trunc i64 %i.av to i8
  %i.ax = and i64 %i.at, %i.x
  %i.ay = mul i64 %i.ax, 10
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = zext i8 %i.bb to i64
  %i.bd = add i64 %i.ay, %i.bc                    ; 3 uses
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.aw, ptr %i.bf, align 1, !tbaa !36
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !195

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
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !36
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bo = and i64 %i.bg, 255
  %.not51 = icmp eq i64 %i.bo, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 1, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.250 = phi i32 [ %i.bl, %bb.g ], [ %.14969, %bb.i ], [ %.14969, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f, !llvm.loop !196

._crit_edge.thread:                               ; preds = %bb.j
  store i32 %.250, ptr %0, align 4, !tbaa !43
  br label %.lr.ph.preheader.i

._crit_edge:                                      ; preds = %.preheader
  store i32 %.048.lcssa, ptr %0, align 4, !tbaa !43
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
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.k:                                             ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !43
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.k, %.lr.ph.i, %._crit_edge, %._crit_edge108, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !48
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
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKcS2_(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %.sroa.70.2.i = phi <4 x i64> [ %i.ak, %.noexc88.i ], [ %.sroa.70.02270.i, %.noexc83.i ] ; 2 uses
  %.sroa.79.02269.i.pn = phi <4 x i64> [ %i.hu, %.noexc88.i ], [ %.sroa.79.02269.i, %.noexc83.i ]
  %.sroa.41638.2.i = or <4 x i64> %.sroa.79.02269.i.pn, %.sroa.41638.02271.i
  %i.hx = trunc i64 %.sroa.11.02261.i to i32
  %i.hy = add i32 %i.hx, -64                      ; 27 uses
  %i.hz = icmp eq i64 %.sroa.226.02267.i, 0
  br i1 %i.hz, label %.noexc67.i, label %.noexc189.i

.noexc189.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i81.i
  %i.ia = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.226.02267.i) ; 11 uses
  %i.ib = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.226.02267.i, i1 true)
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = or disjoint i32 %i.hy, %i.ic
  store i32 %i.id, ptr %.sroa.89.02268.i, align 4, !tbaa !37
  %i.ie = add i64 %.sroa.226.02267.i, -1
  %i.if = and i64 %i.ie, %.sroa.226.02267.i       ; 3 uses
  %i.ig = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.if, i1 true)
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = or disjoint i32 %i.hy, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !37
  %i.ik = add i64 %i.if, -2
  %i.il = and i64 %i.ik, %i.if                    ; 3 uses
  %i.im = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.il, i1 true)
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = or disjoint i32 %i.hy, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 8
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !37
  %i.iq = add i64 %i.il, -2
  %i.ir = and i64 %i.iq, %i.il                    ; 3 uses
  %i.is = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ir, i1 true)
  %i.it = trunc nuw nsw i64 %i.is to i32
  %i.iu = or disjoint i32 %i.hy, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 12
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !37
  %i.iw = icmp samesign ugt i64 %i.ia, 4
  br i1 %i.iw, label %.noexc226.i, label %.loopexit2250.i, !prof !108

.noexc226.i:                                      ; preds = %.noexc189.i
  %i.ix = add i64 %i.ir, -2
  %i.iy = and i64 %i.ix, %i.ir                    ; 3 uses
  %i.iz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iy, i1 true)
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = or disjoint i32 %i.hy, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 16
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !37
  %i.jd = add i64 %i.iy, -2
  %i.je = and i64 %i.jd, %i.iy                    ; 3 uses
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.je, i1 true)
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = or disjoint i32 %i.hy, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 20
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !37
  %i.jj = add i64 %i.je, -1
  %i.jk = and i64 %i.jj, %i.je                    ; 3 uses
  %i.jl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jk, i1 true)
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = or disjoint i32 %i.hy, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 24
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !37
  %i.jp = add i64 %i.jk, -2
  %i.jq = and i64 %i.jp, %i.jk                    ; 3 uses
  %i.jr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jq, i1 true)
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = or disjoint i32 %i.hy, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 28
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !37
  %i.jv = icmp samesign ugt i64 %i.ia, 8
  br i1 %i.jv, label %.noexc291.i, label %.loopexit2250.i, !prof !108

.noexc291.i:                                      ; preds = %.noexc226.i
  %i.jw = add i64 %i.jq, -2
  %i.jx = and i64 %i.jw, %i.jq                    ; 3 uses
  %i.jy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jx, i1 true)
  %i.jz = trunc nuw nsw i64 %i.jy to i32
  %i.ka = or disjoint i32 %i.hy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 32
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !37
  %i.kc = add i64 %i.jx, -2
  %i.kd = and i64 %i.kc, %i.jx                    ; 3 uses
  %i.ke = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kd, i1 true)
  %i.kf = trunc nuw nsw i64 %i.ke to i32
  %i.kg = or disjoint i32 %i.hy, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 36
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !37
  %i.ki = add i64 %i.kd, -2
  %i.kj = and i64 %i.ki, %i.kd                    ; 3 uses
  %i.kk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kj, i1 true)
  %i.kl = trunc nuw nsw i64 %i.kk to i32
  %i.km = or disjoint i32 %i.hy, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 40
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !37
  %i.ko = add i64 %i.kj, -1
  %i.kp = and i64 %i.ko, %i.kj                    ; 3 uses
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kp, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = or disjoint i32 %i.hy, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 44
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !37
  %i.ku = icmp samesign ugt i64 %i.ia, 12
  br i1 %i.ku, label %.noexc356.i, label %.loopexit2250.i, !prof !108

.noexc356.i:                                      ; preds = %.noexc291.i
  %i.kv = add i64 %i.kp, -2
  %i.kw = and i64 %i.kv, %i.kp                    ; 3 uses
  %i.kx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kw, i1 true)
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = or disjoint i32 %i.hy, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 48
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !37
  %i.lb = add i64 %i.kw, -2
  %i.lc = and i64 %i.lb, %i.kw                    ; 3 uses
  %i.ld = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lc, i1 true)
  %i.le = trunc nuw nsw i64 %i.ld to i32
  %i.lf = or disjoint i32 %i.hy, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 52
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !37
  %i.lh = add i64 %i.lc, -2
  %i.li = and i64 %i.lh, %i.lc                    ; 3 uses
  %i.lj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.li, i1 true)
  %i.lk = trunc nuw nsw i64 %i.lj to i32
  %i.ll = or disjoint i32 %i.hy, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 56
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !37
  %i.ln = add i64 %i.li, -2
  %i.lo = and i64 %i.ln, %i.li                    ; 3 uses
  %i.lp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lo, i1 true)
  %i.lq = trunc nuw nsw i64 %i.lp to i32
  %i.lr = or disjoint i32 %i.hy, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 60
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !37
  %i.lt = icmp samesign ugt i64 %i.ia, 16
  br i1 %i.lt, label %.noexc421.i, label %.loopexit2250.i, !prof !108

.noexc421.i:                                      ; preds = %.noexc356.i
  %i.lu = add i64 %i.lo, -1
  %i.lv = and i64 %i.lu, %i.lo                    ; 3 uses
  %i.lw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lv, i1 true)
  %i.lx = trunc nuw nsw i64 %i.lw to i32
  %i.ly = or disjoint i32 %i.hy, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 64
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !37
  %i.ma = add i64 %i.lv, -2
  %i.mb = and i64 %i.ma, %i.lv                    ; 3 uses
  %i.mc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mb, i1 true)
  %i.md = trunc nuw nsw i64 %i.mc to i32
  %i.me = or disjoint i32 %i.hy, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 68
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !37
  %i.mg = add i64 %i.mb, -2
  %i.mh = and i64 %i.mg, %i.mb                    ; 3 uses
  %i.mi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mh, i1 true)
  %i.mj = trunc nuw nsw i64 %i.mi to i32
  %i.mk = or disjoint i32 %i.hy, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 72
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !37
  %i.mm = add i64 %i.mh, -2
  %i.mn = and i64 %i.mm, %i.mh                    ; 3 uses
  %i.mo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mn, i1 true)
  %i.mp = trunc nuw nsw i64 %i.mo to i32
  %i.mq = or disjoint i32 %i.hy, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 76
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !37
  %i.ms = icmp samesign ugt i64 %i.ia, 20
  br i1 %i.ms, label %.noexc144.i, label %.loopexit2250.i, !prof !108

.noexc144.i:                                      ; preds = %.noexc421.i
  %i.mt = add i64 %i.mn, -2
  %i.mu = and i64 %i.mt, %i.mn                    ; 3 uses
  %i.mv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mu, i1 true)
  %i.mw = trunc nuw nsw i64 %i.mv to i32
  %i.mx = or disjoint i32 %i.hy, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 80
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !37
  %i.mz = add i64 %i.mu, -1
  %i.na = and i64 %i.mz, %i.mu                    ; 3 uses
  %i.nb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.na, i1 true)
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = or disjoint i32 %i.hy, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 84
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !37
  %i.nf = add i64 %i.na, -2
  %i.ng = and i64 %i.nf, %i.na                    ; 3 uses
  %i.nh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ng, i1 true)
  %i.ni = trunc nuw nsw i64 %i.nh to i32
  %i.nj = or disjoint i32 %i.hy, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 88
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !37
  %i.nl = add i64 %i.ng, -2
  %i.nm = and i64 %i.nl, %i.ng                    ; 3 uses
  %i.nn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nm, i1 true)
  %i.no = trunc nuw nsw i64 %i.nn to i32
  %i.np = or disjoint i32 %i.hy, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.89.02268.i, i64 92
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !37
  %i.nr = icmp samesign ugt i64 %i.ia, 24
  br i1 %i.nr, label %.noexc145.i.preheader, label %.loopexit2250.i, !prof !111

.noexc145.i.preheader:                            ; preds = %.noexc144.i
  %i.ns = add i64 %i.nm, -2
  %xtraiter = and i64 %i.ns, %i.nm                ; 2 uses
  %i.nt = icmp eq i64 %i.ia, 25
  br i1 %i.nt, label %.noexc145.i.epil.preheader, label %.noexc145.i.preheader.new

.noexc145.i.preheader.new:                        ; preds = %.noexc145.i.preheader
  %i.nu = and i64 %i.ia, 126
  %i.nv = add nsw i64 %i.nu, -26
  br label %.noexc145.i

.noexc145.i:                                      ; preds = %.noexc145.i, %.noexc145.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.noexc145.i.preheader.new ], [ %indvars.iv.next.i.1, %.noexc145.i ] ; 3 uses
  %.021732257.i = phi i64 [ %xtraiter, %.noexc145.i.preheader.new ], [ %i.oi, %.noexc145.i ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc145.i.preheader.new ], [ %niter.next.1, %.noexc145.i ] ; 2 uses
  %i.nw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021732257.i, i1 true)
  %i.nx = trunc nuw nsw i64 %i.nw to i32
  %i.ny = or disjoint i32 %i.hy, %i.nx
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %indvars.iv.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !37
  %i.oa = add i64 %.021732257.i, -1
  %i.ob = and i64 %i.oa, %.021732257.i            ; 3 uses
  %i.oc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ob, i1 true)
  %i.od = trunc nuw nsw i64 %i.oc to i32
  %i.oe = or disjoint i32 %i.hy, %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %indvars.iv.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  store i32 %i.oe, ptr %i.og, align 4, !tbaa !37
  %i.oh = add i64 %i.ob, -2
  %i.oi = and i64 %i.oh, %i.ob                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.nv
  br i1 %niter.ncmp.1, label %.loopexit2250.i.loopexit.unr-lcssa, label %.noexc145.i, !llvm.loop !198

.loopexit2250.i.loopexit.unr-lcssa:               ; preds = %.noexc145.i
  %4 = trunc i64 %i.ia to i1
  br i1 %4, label %.noexc145.i.epil.preheader, label %.loopexit2250.i

.noexc145.i.epil.preheader:                       ; preds = %.loopexit2250.i.loopexit.unr-lcssa, %.noexc145.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.noexc145.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit2250.i.loopexit.unr-lcssa ]
  %.021732257.i.epil.init = phi i64 [ %xtraiter, %.noexc145.i.preheader ], [ %i.oi, %.loopexit2250.i.loopexit.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %i.ia to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.oj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021732257.i.epil.init, i1 true)
  %i.ok = trunc nuw nsw i64 %i.oj to i32
  %i.ol = or disjoint i32 %i.hy, %i.ok
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %indvars.iv.i.epil.init
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !37
  br label %.loopexit2250.i

.loopexit2250.i:                                  ; preds = %.noexc145.i.epil.preheader, %.loopexit2250.i.loopexit.unr-lcssa, %.noexc144.i, %.noexc421.i, %.noexc356.i, %.noexc291.i, %.noexc226.i, %.noexc189.i
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.02268.i, i64 %i.ia
  br label %.noexc67.i

.noexc67.i:                                       ; preds = %.loopexit2250.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i81.i
  %.sroa.89.3.i = phi ptr [ %.sroa.89.02268.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i81.i ], [ %i.on, %.loopexit2250.i ] ; 29 uses
  %i.oo = xor i64 %i.db, -1
  %i.op = and i64 %i.oo, %i.cx
  %i.oq = or i64 %i.op, %i.cv
  %i.or = xor i64 %i.bs, %i.bw
  %i.os = xor i64 %i.or, -1
  %i.ot = and i64 %i.oq, %i.os                    ; 5 uses
  %i.ou = and i64 %i.bw, %i.fw
  %i.ov = icmp ult <32 x i8> %i.dc, splat (i8 32)
  %i.ow = icmp ult <32 x i8> %i.de, splat (i8 32)
  %i.ox = bitcast <32 x i1> %i.ov to i32
  %i.oy = zext i32 %i.ox to i64
  %i.oz = bitcast <32 x i1> %i.ow to i32
  %i.pa = sext i32 %i.oz to i64
  %i.pb = shl nsw i64 %i.pa, 32
  %i.pc = or disjoint i64 %i.pb, %i.oy
  %i.pd = or <4 x i64> %i.ao, %i.am
  %i.pe = bitcast <4 x i64> %i.pd to <32 x i8>
  %i.pf = icmp slt <32 x i8> %i.pe, zeroinitializer
  %i.pg = bitcast <32 x i1> %i.pf to i32
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i, label %.noexc72.i, !prof !110

.noexc72.i:                                       ; preds = %.noexc67.i
  %i.pi = shufflevector <4 x i64> %.sroa.70.2.i, <4 x i64> %i.am, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.pj = bitcast <4 x i64> %i.pi to <32 x i8>    ; 3 uses
  %i.pk = shufflevector <32 x i8> %i.pj, <32 x i8> %i.dc, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.pl = bitcast <32 x i8> %i.pk to <16 x i16>
  %i.pm = lshr <16 x i16> %i.pl, splat (i16 4)
  %i.pn = bitcast <16 x i16> %i.pm to <32 x i8>
  %i.po = and <32 x i8> %i.pn, splat (i8 15)
  %i.pp = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.po)
  %i.pq = and <32 x i8> %i.pk, splat (i8 15)
  %i.pr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.pq)
  %i.ps = bitcast <4 x i64> %i.am to <16 x i16>
  %i.pt = lshr <16 x i16> %i.ps, splat (i16 4)
  %i.pu = bitcast <16 x i16> %i.pt to <32 x i8>
  %i.pv = and <32 x i8> %i.pu, splat (i8 15)
  %i.pw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.pv)
  %i.px = and <32 x i8> %i.pr, %i.pp
  %i.py = and <32 x i8> %i.px, %i.pw
  %i.pz = shufflevector <32 x i8> %i.pj, <32 x i8> %i.dc, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.qa = shufflevector <32 x i8> %i.pj, <32 x i8> %i.dc, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.qb = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.pz, <32 x i8> splat (i8 96))
  %i.qc = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qa, <32 x i8> splat (i8 112))
  %i.qd = or <32 x i8> %i.qb, %i.qc
  %.inner61 = and <32 x i8> %i.qd, splat (i8 -128)
  %.inner62 = xor <32 x i8> %.inner61, %i.py
  %i.qe = shufflevector <4 x i64> %i.am, <4 x i64> %i.ao, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.qf = bitcast <4 x i64> %i.qe to <32 x i8>    ; 3 uses
  %i.qg = shufflevector <32 x i8> %i.qf, <32 x i8> %i.de, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.qh = bitcast <32 x i8> %i.qg to <16 x i16>
  %i.qi = lshr <16 x i16> %i.qh, splat (i16 4)
  %i.qj = bitcast <16 x i16> %i.qi to <32 x i8>
  %i.qk = and <32 x i8> %i.qj, splat (i8 15)
  %i.ql = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.qk)
  %i.qm = and <32 x i8> %i.qg, splat (i8 15)
  %i.qn = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.qm)
  %i.qo = bitcast <4 x i64> %i.ao to <16 x i16>
  %i.qp = lshr <16 x i16> %i.qo, splat (i16 4)
  %i.qq = bitcast <16 x i16> %i.qp to <32 x i8>
  %i.qr = and <32 x i8> %i.qq, splat (i8 15)
  %i.qs = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.qr)
  %i.qt = and <32 x i8> %i.qn, %i.ql
  %i.qu = and <32 x i8> %i.qt, %i.qs
  %i.qv = shufflevector <32 x i8> %i.qf, <32 x i8> %i.de, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.qw = shufflevector <32 x i8> %i.qf, <32 x i8> %i.de, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.qx = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qv, <32 x i8> splat (i8 96))
  %i.qy = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.qw, <32 x i8> splat (i8 112))
  %i.qz = or <32 x i8> %i.qx, %i.qy
  %.inner65 = and <32 x i8> %i.qz, splat (i8 -128)
  %.inner66 = xor <32 x i8> %.inner65, %i.qu
  %.inner67 = or <32 x i8> %.inner62, %.inner66
  %i.ra = bitcast <32 x i8> %.inner67 to <4 x i64>
  %i.rb = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.de, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.rc = bitcast <32 x i8> %i.rb to <4 x i64>
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i: ; preds = %.noexc67.i, %.noexc72.i
  %.sroa.79.1.i = phi <4 x i64> [ %i.rc, %.noexc72.i ], [ %.sroa.79.2.i, %.noexc67.i ] ; 2 uses
  %.sroa.70.1.i = phi <4 x i64> [ %i.ao, %.noexc72.i ], [ %.sroa.70.2.i, %.noexc67.i ] ; 2 uses
  %.sroa.79.2.i.pn = phi <4 x i64> [ %i.ra, %.noexc72.i ], [ %.sroa.79.2.i, %.noexc67.i ]
  %.sroa.41638.1.i = or <4 x i64> %.sroa.41638.2.i, %.sroa.79.2.i.pn ; 3 uses
  %i.rd = icmp eq i64 %i.ot, 0
  br i1 %i.rd, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i, label %.noexc186.i

.noexc186.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %i.re = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ot) ; 11 uses
  %i.rf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ot, i1 true)
  %i.rg = or disjoint i64 %i.rf, %.sroa.11.02261.i
  %i.rh = trunc i64 %i.rg to i32
  store i32 %i.rh, ptr %.sroa.89.3.i, align 4, !tbaa !37
  %i.ri = add i64 %i.ot, -1
  %i.rj = and i64 %i.ri, %i.ot                    ; 3 uses
  %i.rk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.rj, i1 true)
  %i.rl = or disjoint i64 %i.rk, %.sroa.11.02261.i
  %i.rm = trunc i64 %i.rl to i32
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 4
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !37
  %i.ro = add i64 %i.rj, -2
  %i.rp = and i64 %i.ro, %i.rj                    ; 3 uses
  %i.rq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.rp, i1 true)
  %i.rr = or disjoint i64 %i.rq, %.sroa.11.02261.i
  %i.rs = trunc i64 %i.rr to i32
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 8
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !37
  %i.ru = add i64 %i.rp, -2
  %i.rv = and i64 %i.ru, %i.rp                    ; 3 uses
  %i.rw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.rv, i1 true)
  %i.rx = or disjoint i64 %i.rw, %.sroa.11.02261.i
  %i.ry = trunc i64 %i.rx to i32
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 12
  store i32 %i.ry, ptr %i.rz, align 4, !tbaa !37
  %i.sa = icmp samesign ugt i64 %i.re, 4
  br i1 %i.sa, label %.noexc229.i, label %.loopexit2248.i, !prof !108

.noexc229.i:                                      ; preds = %.noexc186.i
  %i.sb = add i64 %i.rv, -2
  %i.sc = and i64 %i.sb, %i.rv                    ; 3 uses
  %i.sd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sc, i1 true)
  %i.se = or disjoint i64 %i.sd, %.sroa.11.02261.i
  %i.sf = trunc i64 %i.se to i32
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 16
  store i32 %i.sf, ptr %i.sg, align 4, !tbaa !37
  %i.sh = add i64 %i.sc, -2
  %i.si = and i64 %i.sh, %i.sc                    ; 3 uses
  %i.sj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.si, i1 true)
  %i.sk = or disjoint i64 %i.sj, %.sroa.11.02261.i
  %i.sl = trunc i64 %i.sk to i32
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 20
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !37
  %i.sn = add i64 %i.si, -1
  %i.so = and i64 %i.sn, %i.si                    ; 3 uses
  %i.sp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.so, i1 true)
  %i.sq = or disjoint i64 %i.sp, %.sroa.11.02261.i
  %i.sr = trunc i64 %i.sq to i32
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 24
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !37
  %i.st = add i64 %i.so, -2
  %i.su = and i64 %i.st, %i.so                    ; 3 uses
  %i.sv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.su, i1 true)
  %i.sw = or disjoint i64 %i.sv, %.sroa.11.02261.i
  %i.sx = trunc i64 %i.sw to i32
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 28
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !37
  %i.sz = icmp samesign ugt i64 %i.re, 8
  br i1 %i.sz, label %.noexc288.i, label %.loopexit2248.i, !prof !108

.noexc288.i:                                      ; preds = %.noexc229.i
  %i.ta = add i64 %i.su, -2
  %i.tb = and i64 %i.ta, %i.su                    ; 3 uses
  %i.tc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tb, i1 true)
  %i.td = or disjoint i64 %i.tc, %.sroa.11.02261.i
  %i.te = trunc i64 %i.td to i32
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 32
  store i32 %i.te, ptr %i.tf, align 4, !tbaa !37
  %i.tg = add i64 %i.tb, -2
  %i.th = and i64 %i.tg, %i.tb                    ; 3 uses
  %i.ti = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.th, i1 true)
  %i.tj = or disjoint i64 %i.ti, %.sroa.11.02261.i
  %i.tk = trunc i64 %i.tj to i32
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 36
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !37
  %i.tm = add i64 %i.th, -2
  %i.tn = and i64 %i.tm, %i.th                    ; 3 uses
  %i.to = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tn, i1 true)
  %i.tp = or disjoint i64 %i.to, %.sroa.11.02261.i
  %i.tq = trunc i64 %i.tp to i32
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 40
  store i32 %i.tq, ptr %i.tr, align 4, !tbaa !37
  %i.ts = add i64 %i.tn, -1
  %i.tt = and i64 %i.ts, %i.tn                    ; 3 uses
  %i.tu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tt, i1 true)
  %i.tv = or disjoint i64 %i.tu, %.sroa.11.02261.i
  %i.tw = trunc i64 %i.tv to i32
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 44
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !37
  %i.ty = icmp samesign ugt i64 %i.re, 12
  br i1 %i.ty, label %.noexc359.i, label %.loopexit2248.i, !prof !108

.noexc359.i:                                      ; preds = %.noexc288.i
  %i.tz = add i64 %i.tt, -2
  %i.ua = and i64 %i.tz, %i.tt                    ; 3 uses
  %i.ub = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ua, i1 true)
  %i.uc = or disjoint i64 %i.ub, %.sroa.11.02261.i
  %i.ud = trunc i64 %i.uc to i32
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 48
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !37
  %i.uf = add i64 %i.ua, -2
  %i.ug = and i64 %i.uf, %i.ua                    ; 3 uses
  %i.uh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ug, i1 true)
  %i.ui = or disjoint i64 %i.uh, %.sroa.11.02261.i
  %i.uj = trunc i64 %i.ui to i32
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 52
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !37
  %i.ul = add i64 %i.ug, -2
  %i.um = and i64 %i.ul, %i.ug                    ; 3 uses
  %i.un = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.um, i1 true)
  %i.uo = or disjoint i64 %i.un, %.sroa.11.02261.i
  %i.up = trunc i64 %i.uo to i32
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 56
  store i32 %i.up, ptr %i.uq, align 4, !tbaa !37
  %i.ur = add i64 %i.um, -2
  %i.us = and i64 %i.ur, %i.um                    ; 3 uses
  %i.ut = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.us, i1 true)
  %i.uu = or disjoint i64 %i.ut, %.sroa.11.02261.i
  %i.uv = trunc i64 %i.uu to i32
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 60
  store i32 %i.uv, ptr %i.uw, align 4, !tbaa !37
  %i.ux = icmp samesign ugt i64 %i.re, 16
  br i1 %i.ux, label %.noexc418.i, label %.loopexit2248.i, !prof !108

.noexc418.i:                                      ; preds = %.noexc359.i
  %i.uy = add i64 %i.us, -1
  %i.uz = and i64 %i.uy, %i.us                    ; 3 uses
  %i.va = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.uz, i1 true)
  %i.vb = or disjoint i64 %i.va, %.sroa.11.02261.i
  %i.vc = trunc i64 %i.vb to i32
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 64
  store i32 %i.vc, ptr %i.vd, align 4, !tbaa !37
  %i.ve = add i64 %i.uz, -2
  %i.vf = and i64 %i.ve, %i.uz                    ; 3 uses
  %i.vg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vf, i1 true)
  %i.vh = or disjoint i64 %i.vg, %.sroa.11.02261.i
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 68
  store i32 %i.vi, ptr %i.vj, align 4, !tbaa !37
  %i.vk = add i64 %i.vf, -2
  %i.vl = and i64 %i.vk, %i.vf                    ; 3 uses
  %i.vm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vl, i1 true)
  %i.vn = or disjoint i64 %i.vm, %.sroa.11.02261.i
  %i.vo = trunc i64 %i.vn to i32
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 72
  store i32 %i.vo, ptr %i.vp, align 4, !tbaa !37
  %i.vq = add i64 %i.vl, -2
  %i.vr = and i64 %i.vq, %i.vl                    ; 3 uses
  %i.vs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vr, i1 true)
  %i.vt = or disjoint i64 %i.vs, %.sroa.11.02261.i
  %i.vu = trunc i64 %i.vt to i32
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 76
  store i32 %i.vu, ptr %i.vv, align 4, !tbaa !37
  %i.vw = icmp samesign ugt i64 %i.re, 20
  br i1 %i.vw, label %.noexc148.i, label %.loopexit2248.i, !prof !108

.noexc148.i:                                      ; preds = %.noexc418.i
  %i.vx = add i64 %i.vr, -2
  %i.vy = and i64 %i.vx, %i.vr                    ; 3 uses
  %i.vz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vy, i1 true)
  %i.wa = or disjoint i64 %i.vz, %.sroa.11.02261.i
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 80
  store i32 %i.wb, ptr %i.wc, align 4, !tbaa !37
  %i.wd = add i64 %i.vy, -1
  %i.we = and i64 %i.wd, %i.vy                    ; 3 uses
  %i.wf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.we, i1 true)
  %i.wg = or disjoint i64 %i.wf, %.sroa.11.02261.i
  %i.wh = trunc i64 %i.wg to i32
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 84
  store i32 %i.wh, ptr %i.wi, align 4, !tbaa !37
  %i.wj = add i64 %i.we, -2
  %i.wk = and i64 %i.wj, %i.we                    ; 3 uses
  %i.wl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wk, i1 true)
  %i.wm = or disjoint i64 %i.wl, %.sroa.11.02261.i
  %i.wn = trunc i64 %i.wm to i32
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 88
  store i32 %i.wn, ptr %i.wo, align 4, !tbaa !37
  %i.wp = add i64 %i.wk, -2
  %i.wq = and i64 %i.wp, %i.wk                    ; 3 uses
  %i.wr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wq, i1 true)
  %i.ws = or disjoint i64 %i.wr, %.sroa.11.02261.i
  %i.wt = trunc i64 %i.ws to i32
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 92
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !37
  %i.wv = icmp samesign ugt i64 %i.re, 24
  br i1 %i.wv, label %.noexc149.i.preheader, label %.loopexit2248.i, !prof !111

.noexc149.i.preheader:                            ; preds = %.noexc148.i
  %i.ww = add i64 %i.wq, -2
  %xtraiter95 = and i64 %i.ww, %i.wq              ; 2 uses
  %i.wx = icmp eq i64 %i.re, 25
  br i1 %i.wx, label %.noexc149.i.epil.preheader, label %.noexc149.i.preheader.new

.noexc149.i.preheader.new:                        ; preds = %.noexc149.i.preheader
  %i.wy = and i64 %i.re, 126
  %i.wz = add nsw i64 %i.wy, -26
  br label %.noexc149.i

.noexc149.i:                                      ; preds = %.noexc149.i, %.noexc149.i.preheader.new
  %indvars.iv2316.i = phi i64 [ 24, %.noexc149.i.preheader.new ], [ %indvars.iv.next2317.i.1, %.noexc149.i ] ; 3 uses
  %.021672259.i = phi i64 [ %xtraiter95, %.noexc149.i.preheader.new ], [ %i.xm, %.noexc149.i ] ; 3 uses
  %niter99 = phi i64 [ 0, %.noexc149.i.preheader.new ], [ %niter99.next.1, %.noexc149.i ] ; 2 uses
  %i.xa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i, i1 true)
  %i.xb = or disjoint i64 %i.xa, %.sroa.11.02261.i
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  store i32 %i.xc, ptr %i.xd, align 4, !tbaa !37
  %i.xe = add i64 %.021672259.i, -1
  %i.xf = and i64 %i.xe, %.021672259.i            ; 3 uses
  %i.xg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xf, i1 true)
  %i.xh = or disjoint i64 %i.xg, %.sroa.11.02261.i
  %i.xi = trunc i64 %i.xh to i32
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  store i32 %i.xi, ptr %i.xk, align 4, !tbaa !37
  %i.xl = add i64 %i.xf, -2
  %i.xm = and i64 %i.xl, %i.xf                    ; 2 uses
  %indvars.iv.next2317.i.1 = add nuw nsw i64 %indvars.iv2316.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.wz
  br i1 %niter99.ncmp.1, label %.loopexit2248.i.loopexit.unr-lcssa, label %.noexc149.i, !llvm.loop !198

.loopexit2248.i.loopexit.unr-lcssa:               ; preds = %.noexc149.i
  %5 = trunc i64 %i.re to i1
  br i1 %5, label %.noexc149.i.epil.preheader, label %.loopexit2248.i

.noexc149.i.epil.preheader:                       ; preds = %.loopexit2248.i.loopexit.unr-lcssa, %.noexc149.i.preheader
  %indvars.iv2316.i.epil.init = phi i64 [ 24, %.noexc149.i.preheader ], [ %indvars.iv.next2317.i.1, %.loopexit2248.i.loopexit.unr-lcssa ]
  %.021672259.i.epil.init = phi i64 [ %xtraiter95, %.noexc149.i.preheader ], [ %i.xm, %.loopexit2248.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.re to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.xn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i.epil.init, i1 true)
  %i.xo = or disjoint i64 %i.xn, %.sroa.11.02261.i
  %i.xp = trunc i64 %i.xo to i32
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i.epil.init
  store i32 %i.xp, ptr %i.xq, align 4, !tbaa !37
  br label %.loopexit2248.i

.loopexit2248.i:                                  ; preds = %.noexc149.i.epil.preheader, %.loopexit2248.i.loopexit.unr-lcssa, %.noexc148.i, %.noexc418.i, %.noexc359.i, %.noexc288.i, %.noexc229.i, %.noexc186.i
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %i.re
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i: ; preds = %.loopexit2248.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.89.4.i = phi ptr [ %.sroa.89.3.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.xr, %.loopexit2248.i ] ; 2 uses
  %i.xs = xor i64 %i.fn, -1
  %i.xt = and i64 %i.xs, %i.fk
  %i.xu = or i64 %i.xt, %i.fi
  %i.xv = xor i64 %i.ef, %i.ej
  %i.xw = xor i64 %i.xv, -1
  %i.xx = and i64 %i.xu, %i.xw                    ; 2 uses
  %i.xy = and i64 %i.ej, %i.pc
  %i.xz = or i64 %i.ou, %.sroa.236.02266.i
  %i.ya = or i64 %i.xz, %i.xy                     ; 2 uses
  %i.yb = add nuw i64 %.sroa.11.02261.i, 128      ; 4 uses
  %i.yc = icmp ult i64 %i.yb, %spec.select.i.i
  br i1 %i.yc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !199

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ae, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.0132367.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i
  %i.yd = or <4 x i64> %.sroa.41638.1.i, %.sroa.79.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ye = icmp eq i64 %.013.i, %i.yb
  br i1 %i.ye, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.32.0.lcssa2391.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ek, %._crit_edge.i ]
  %.sroa.41638.0.lcssa2390.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.41638.1.i, %._crit_edge.i ]
  %.sroa.70.0.lcssa2389.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.70.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.79.0.lcssa2388.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.yd, %._crit_edge.i ] ; 2 uses
  %.sroa.89.0.lcssa2387.i = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %.sroa.89.4.i, %._crit_edge.i ] ; 29 uses
  %.sroa.226.0.lcssa2386.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.xx, %._crit_edge.i ] ; 5 uses
  %.sroa.236.0.lcssa2385.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ya, %._crit_edge.i ]
  %.sroa.12.0.lcssa2384.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.12.3.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa2383.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.fo, %._crit_edge.i ]
  %.sroa.11.0.lcssa2382.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yb, %._crit_edge.i ] ; 30 uses
  %.01323672381.i = phi i64 [ %.0132367.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.yf = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.ag, %._crit_edge.i ] ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa2382.i
  %i.yh = sub i64 %.01323672381.i, %.sroa.11.0.lcssa2382.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.yg, i64 %i.yh, i1 false)
  %.0..0..0..0..0..i = load <4 x i64>, ptr %i.a, align 16, !tbaa !36 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <4 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !36 ; 6 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64..i = load <4 x i64>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !36 ; 6 uses
  %.96..96..96..96..96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.96..96..96..96..96..i = load <4 x i64>, ptr %.96..96..96..96..96..sroa_idx, align 16, !tbaa !36 ; 5 uses
  %i.yi = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8> ; 9 uses
  %i.yj = icmp eq <32 x i8> %i.yi, splat (i8 92)
  %i.yk = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8> ; 10 uses
  %i.yl = icmp eq <32 x i8> %i.yk, splat (i8 92)
  %i.ym = bitcast <32 x i1> %i.yj to i32
  %i.yn = zext i32 %i.ym to i64
  %i.yo = bitcast <32 x i1> %i.yl to i32
  %i.yp = sext i32 %i.yo to i64
  %i.yq = shl nsw i64 %i.yp, 32                   ; 2 uses
  %i.yr = or disjoint i64 %i.yq, %i.yn            ; 3 uses
  %.not.i68.i.i = icmp eq i64 %i.yr, 0
  br i1 %.not.i68.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.ys = xor i64 %.sroa.12.0.lcssa2384.i, -1
  %i.yt = and i64 %i.yr, %i.ys                    ; 2 uses
  %i.yu = shl i64 %i.yt, 1
  %i.yv = or i64 %i.yu, -6148914691236517206
  %i.yw = sub i64 %i.yv, %i.yt
  %i.yx = xor i64 %i.yw, -6148914691236517206     ; 2 uses
  %i.yy = or i64 %i.yr, %.sroa.12.0.lcssa2384.i
  %i.yz = xor i64 %i.yx, %i.yy
  %i.za = and i64 %i.yx, %i.yq
  %i.zb = lshr i64 %i.za, 63
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i: ; preds = %bb.n, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.1.i = phi i64 [ %i.zb, %bb.n ], [ 0, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i69.i.i = phi i64 [ %i.yz, %bb.n ], [ %.sroa.12.0.lcssa2384.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.zc = icmp eq <32 x i8> %i.yi, splat (i8 34)
  %i.zd = icmp eq <32 x i8> %i.yk, splat (i8 34)
  %i.ze = bitcast <32 x i1> %i.zc to i32
  %i.zf = zext i32 %i.ze to i64
  %i.zg = bitcast <32 x i1> %i.zd to i32
  %i.zh = sext i32 %i.zg to i64
  %i.zi = shl nsw i64 %i.zh, 32
  %i.zj = or disjoint i64 %i.zi, %i.zf
  %i.zk = xor i64 %.sroa.0.0.i69.i.i, -1
  %i.zl = and i64 %i.zj, %i.zk                    ; 3 uses
  %i.zm = insertelement <2 x i64> poison, i64 %i.zl, i64 0
  %i.zn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.zm, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.zo = extractelement <2 x i64> %i.zn, i64 0
  %i.zp = xor i64 %i.zo, %.sroa.32.0.lcssa2391.i  ; 3 uses
  %i.zq = ashr i64 %i.zp, 63
  %i.zr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.yi)
  %i.zs = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.yk)
  %i.zt = icmp eq <32 x i8> %i.zr, %i.yi
  %i.zu = icmp eq <32 x i8> %i.zs, %i.yk
  %i.zv = bitcast <32 x i1> %i.zt to i32
  %i.zw = zext i32 %i.zv to i64
  %i.zx = bitcast <32 x i1> %i.zu to i32
  %i.zy = sext i32 %i.zx to i64
  %i.zz = shl nsw i64 %i.zy, 32
  %i.aaa = or disjoint i64 %i.zz, %i.zw
  %i.aab = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.yi)
  %i.aac = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.yk)
  %i.aad = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8>
  %i.aae = or <32 x i8> %i.aad, splat (i8 32)
  %i.aaf = icmp eq <32 x i8> %i.aae, %i.aab
  %i.aag = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8>
  %i.aah = or <32 x i8> %i.aag, splat (i8 32)
  %i.aai = icmp eq <32 x i8> %i.aah, %i.aac
  %i.aaj = bitcast <32 x i1> %i.aaf to i32
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = bitcast <32 x i1> %i.aai to i32
  %i.aam = sext i32 %i.aal to i64
  %i.aan = shl nsw i64 %i.aam, 32
  %i.aao = or disjoint i64 %i.aan, %i.aak         ; 2 uses
  %i.aap = or i64 %i.aao, %i.aaa
  %i.aaq = xor i64 %i.aap, -1                     ; 2 uses
  %i.aar = xor i64 %i.zl, -1
  %i.aas = and i64 %i.aaq, %i.aar                 ; 2 uses
  %i.aat = shl i64 %i.aas, 1
  %i.aau = or disjoint i64 %i.aat, %.sroa.0.0.lcssa2383.i
  %i.aav = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8> ; 9 uses
  %i.aaw = icmp eq <32 x i8> %i.aav, splat (i8 92)
  %i.aax = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8> ; 10 uses
  %i.aay = icmp eq <32 x i8> %i.aax, splat (i8 92)
  %i.aaz = bitcast <32 x i1> %i.aaw to i32
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = bitcast <32 x i1> %i.aay to i32
  %i.abc = sext i32 %i.abb to i64
  %i.abd = shl nsw i64 %i.abc, 32
  %i.abe = or disjoint i64 %i.abd, %i.aba         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.abe, 0
  br i1 %.not.i.i.i, label %.noexc117.i, label %bb.o

bb.o:                                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %i.abf = xor i64 %.sroa.12.1.i, -1
  %i.abg = and i64 %i.abe, %i.abf
  %i.abh = shl i64 %i.abe, 1
  %i.abi = or i64 %i.abh, -6148914691236517206
  %i.abj = sub i64 %i.abi, %i.abg
  %i.abk = or i64 %.sroa.12.1.i, %i.abe
  %i.abl = xor i64 %i.abk, %i.abj
  %i.abm = xor i64 %i.abl, -6148914691236517206
  br label %.noexc117.i

.noexc117.i:                                      ; preds = %bb.o, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.abm, %bb.o ], [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i ]
  %i.abn = icmp eq <32 x i8> %i.aav, splat (i8 34)
  %i.abo = icmp eq <32 x i8> %i.aax, splat (i8 34)
  %i.abp = bitcast <32 x i1> %i.abn to i32
  %i.abq = zext i32 %i.abp to i64
  %i.abr = bitcast <32 x i1> %i.abo to i32
  %i.abs = sext i32 %i.abr to i64
  %i.abt = shl nsw i64 %i.abs, 32
  %i.abu = or disjoint i64 %i.abt, %i.abq
  %i.abv = xor i64 %.sroa.0.0.i.i.i, -1
  %i.abw = and i64 %i.abu, %i.abv                 ; 3 uses
  %i.abx = insertelement <2 x i64> poison, i64 %i.abw, i64 0
  %i.aby = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.abx, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.abz = extractelement <2 x i64> %i.aby, i64 0
  %i.aca = xor i64 %i.abz, %i.zq                  ; 3 uses
  %i.acb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aav)
  %i.acc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aax)
  %i.acd = icmp eq <32 x i8> %i.acb, %i.aav
  %i.ace = icmp eq <32 x i8> %i.acc, %i.aax
  %i.acf = bitcast <32 x i1> %i.acd to i32
  %i.acg = zext i32 %i.acf to i64
  %i.ach = bitcast <32 x i1> %i.ace to i32
  %i.aci = sext i32 %i.ach to i64
  %i.acj = shl nsw i64 %i.aci, 32
  %i.ack = or disjoint i64 %i.acj, %i.acg
  %i.acl = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aav)
  %i.acm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aax)
  %i.acn = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8>
  %i.aco = or <32 x i8> %i.acn, splat (i8 32)
  %i.acp = icmp eq <32 x i8> %i.aco, %i.acl
  %i.acq = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8>
  %i.acr = or <32 x i8> %i.acq, splat (i8 32)
  %i.acs = icmp eq <32 x i8> %i.acr, %i.acm
  %i.act = bitcast <32 x i1> %i.acp to i32
  %i.acu = zext i32 %i.act to i64
  %i.acv = bitcast <32 x i1> %i.acs to i32
  %i.acw = sext i32 %i.acv to i64
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %.sroa.79.4.i = phi <4 x i64> [ %i.afp, %.noexc122.i ], [ %.sroa.79.0.lcssa2388.i, %.noexc117.i ]
  %.sroa.70.3.i = phi <4 x i64> [ %.32..32..32..32..32..i, %.noexc122.i ], [ %.sroa.70.0.lcssa2389.i, %.noexc117.i ]
  %.sroa.41638.4.i = phi <4 x i64> [ %i.afm, %.noexc122.i ], [ %.sroa.79.0.lcssa2388.i, %.noexc117.i ]
  %i.afq = trunc i64 %.sroa.11.0.lcssa2382.i to i32 ; 2 uses
  %i.afr = add i32 %i.afq, -64                    ; 27 uses
  %i.afs = icmp eq i64 %.sroa.226.0.lcssa2386.i, 0
  br i1 %i.afs, label %.noexc100.i, label %.noexc195.i

.noexc195.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i
  %i.aft = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.226.0.lcssa2386.i) ; 11 uses
  %i.afu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.226.0.lcssa2386.i, i1 true)
  %i.afv = trunc nuw nsw i64 %i.afu to i32
  %i.afw = or disjoint i32 %i.afr, %i.afv
  store i32 %i.afw, ptr %.sroa.89.0.lcssa2387.i, align 4, !tbaa !37
  %i.afx = add i64 %.sroa.226.0.lcssa2386.i, -1
  %i.afy = and i64 %i.afx, %.sroa.226.0.lcssa2386.i ; 3 uses
  %i.afz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afy, i1 true)
  %i.aga = trunc nuw nsw i64 %i.afz to i32
  %i.agb = or disjoint i32 %i.afr, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 4
  store i32 %i.agb, ptr %i.agc, align 4, !tbaa !37
  %i.agd = add i64 %i.afy, -2
  %i.age = and i64 %i.agd, %i.afy                 ; 3 uses
  %i.agf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.age, i1 true)
  %i.agg = trunc nuw nsw i64 %i.agf to i32
  %i.agh = or disjoint i32 %i.afr, %i.agg
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 8
  store i32 %i.agh, ptr %i.agi, align 4, !tbaa !37
  %i.agj = add i64 %i.age, -2
  %i.agk = and i64 %i.agj, %i.age                 ; 3 uses
  %i.agl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agk, i1 true)
  %i.agm = trunc nuw nsw i64 %i.agl to i32
  %i.agn = or disjoint i32 %i.afr, %i.agm
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 12
  store i32 %i.agn, ptr %i.ago, align 4, !tbaa !37
  %i.agp = icmp samesign ugt i64 %i.aft, 4
  br i1 %i.agp, label %.noexc221.i, label %.loopexit2246.i, !prof !108

.noexc221.i:                                      ; preds = %.noexc195.i
  %i.agq = add i64 %i.agk, -2
  %i.agr = and i64 %i.agq, %i.agk                 ; 3 uses
  %i.ags = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agr, i1 true)
  %i.agt = trunc nuw nsw i64 %i.ags to i32
  %i.agu = or disjoint i32 %i.afr, %i.agt
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 16
  store i32 %i.agu, ptr %i.agv, align 4, !tbaa !37
  %i.agw = add i64 %i.agr, -2
  %i.agx = and i64 %i.agw, %i.agr                 ; 3 uses
  %i.agy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agx, i1 true)
  %i.agz = trunc nuw nsw i64 %i.agy to i32
  %i.aha = or disjoint i32 %i.afr, %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 20
  store i32 %i.aha, ptr %i.ahb, align 4, !tbaa !37
  %i.ahc = add i64 %i.agx, -1
  %i.ahd = and i64 %i.ahc, %i.agx                 ; 3 uses
  %i.ahe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahd, i1 true)
  %i.ahf = trunc nuw nsw i64 %i.ahe to i32
  %i.ahg = or disjoint i32 %i.afr, %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 24
  store i32 %i.ahg, ptr %i.ahh, align 4, !tbaa !37
  %i.ahi = add i64 %i.ahd, -2
  %i.ahj = and i64 %i.ahi, %i.ahd                 ; 3 uses
  %i.ahk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahj, i1 true)
  %i.ahl = trunc nuw nsw i64 %i.ahk to i32
  %i.ahm = or disjoint i32 %i.afr, %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 28
  store i32 %i.ahm, ptr %i.ahn, align 4, !tbaa !37
  %i.aho = icmp samesign ugt i64 %i.aft, 8
  br i1 %i.aho, label %.noexc297.i, label %.loopexit2246.i, !prof !108

.noexc297.i:                                      ; preds = %.noexc221.i
  %i.ahp = add i64 %i.ahj, -2
  %i.ahq = and i64 %i.ahp, %i.ahj                 ; 3 uses
  %i.ahr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahq, i1 true)
  %i.ahs = trunc nuw nsw i64 %i.ahr to i32
  %i.aht = or disjoint i32 %i.afr, %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 32
  store i32 %i.aht, ptr %i.ahu, align 4, !tbaa !37
  %i.ahv = add i64 %i.ahq, -2
  %i.ahw = and i64 %i.ahv, %i.ahq                 ; 3 uses
  %i.ahx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahw, i1 true)
  %i.ahy = trunc nuw nsw i64 %i.ahx to i32
  %i.ahz = or disjoint i32 %i.afr, %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 36
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !37
  %i.aib = add i64 %i.ahw, -2
  %i.aic = and i64 %i.aib, %i.ahw                 ; 3 uses
  %i.aid = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aic, i1 true)
  %i.aie = trunc nuw nsw i64 %i.aid to i32
  %i.aif = or disjoint i32 %i.afr, %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 40
  store i32 %i.aif, ptr %i.aig, align 4, !tbaa !37
  %i.aih = add i64 %i.aic, -1
  %i.aii = and i64 %i.aih, %i.aic                 ; 3 uses
  %i.aij = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aii, i1 true)
  %i.aik = trunc nuw nsw i64 %i.aij to i32
  %i.ail = or disjoint i32 %i.afr, %i.aik
  %i.aim = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 44
  store i32 %i.ail, ptr %i.aim, align 4, !tbaa !37
  %i.ain = icmp samesign ugt i64 %i.aft, 12
  br i1 %i.ain, label %.noexc351.i, label %.loopexit2246.i, !prof !108

.noexc351.i:                                      ; preds = %.noexc297.i
  %i.aio = add i64 %i.aii, -2
  %i.aip = and i64 %i.aio, %i.aii                 ; 3 uses
  %i.aiq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aip, i1 true)
  %i.air = trunc nuw nsw i64 %i.aiq to i32
  %i.ais = or disjoint i32 %i.afr, %i.air
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 48
  store i32 %i.ais, ptr %i.ait, align 4, !tbaa !37
  %i.aiu = add i64 %i.aip, -2
  %i.aiv = and i64 %i.aiu, %i.aip                 ; 3 uses
  %i.aiw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aiv, i1 true)
  %i.aix = trunc nuw nsw i64 %i.aiw to i32
  %i.aiy = or disjoint i32 %i.afr, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 52
  store i32 %i.aiy, ptr %i.aiz, align 4, !tbaa !37
  %i.aja = add i64 %i.aiv, -2
  %i.ajb = and i64 %i.aja, %i.aiv                 ; 3 uses
  %i.ajc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajb, i1 true)
  %i.ajd = trunc nuw nsw i64 %i.ajc to i32
  %i.aje = or disjoint i32 %i.afr, %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 56
  store i32 %i.aje, ptr %i.ajf, align 4, !tbaa !37
  %i.ajg = add i64 %i.ajb, -2
  %i.ajh = and i64 %i.ajg, %i.ajb                 ; 3 uses
  %i.aji = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajh, i1 true)
  %i.ajj = trunc nuw nsw i64 %i.aji to i32
  %i.ajk = or disjoint i32 %i.afr, %i.ajj
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 60
  store i32 %i.ajk, ptr %i.ajl, align 4, !tbaa !37
  %i.ajm = icmp samesign ugt i64 %i.aft, 16
  br i1 %i.ajm, label %.noexc427.i, label %.loopexit2246.i, !prof !108

.noexc427.i:                                      ; preds = %.noexc351.i
  %i.ajn = add i64 %i.ajh, -1
  %i.ajo = and i64 %i.ajn, %i.ajh                 ; 3 uses
  %i.ajp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajo, i1 true)
  %i.ajq = trunc nuw nsw i64 %i.ajp to i32
  %i.ajr = or disjoint i32 %i.afr, %i.ajq
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 64
  store i32 %i.ajr, ptr %i.ajs, align 4, !tbaa !37
  %i.ajt = add i64 %i.ajo, -2
  %i.aju = and i64 %i.ajt, %i.ajo                 ; 3 uses
  %i.ajv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aju, i1 true)
  %i.ajw = trunc nuw nsw i64 %i.ajv to i32
  %i.ajx = or disjoint i32 %i.afr, %i.ajw
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 68
  store i32 %i.ajx, ptr %i.ajy, align 4, !tbaa !37
  %i.ajz = add i64 %i.aju, -2
  %i.aka = and i64 %i.ajz, %i.aju                 ; 3 uses
  %i.akb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aka, i1 true)
  %i.akc = trunc nuw nsw i64 %i.akb to i32
  %i.akd = or disjoint i32 %i.afr, %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 72
  store i32 %i.akd, ptr %i.ake, align 4, !tbaa !37
  %i.akf = add i64 %i.aka, -2
  %i.akg = and i64 %i.akf, %i.aka                 ; 3 uses
  %i.akh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akg, i1 true)
  %i.aki = trunc nuw nsw i64 %i.akh to i32
  %i.akj = or disjoint i32 %i.afr, %i.aki
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 76
  store i32 %i.akj, ptr %i.akk, align 4, !tbaa !37
  %i.akl = icmp samesign ugt i64 %i.aft, 20
  br i1 %i.akl, label %.noexc137.i, label %.loopexit2246.i, !prof !108

.noexc137.i:                                      ; preds = %.noexc427.i
  %i.akm = add i64 %i.akg, -2
  %i.akn = and i64 %i.akm, %i.akg                 ; 3 uses
  %i.ako = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akn, i1 true)
  %i.akp = trunc nuw nsw i64 %i.ako to i32
  %i.akq = or disjoint i32 %i.afr, %i.akp
  %i.akr = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 80
  store i32 %i.akq, ptr %i.akr, align 4, !tbaa !37
  %i.aks = add i64 %i.akn, -1
  %i.akt = and i64 %i.aks, %i.akn                 ; 3 uses
  %i.aku = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akt, i1 true)
  %i.akv = trunc nuw nsw i64 %i.aku to i32
  %i.akw = or disjoint i32 %i.afr, %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 84
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !37
  %i.aky = add i64 %i.akt, -2
  %i.akz = and i64 %i.aky, %i.akt                 ; 3 uses
  %i.ala = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akz, i1 true)
  %i.alb = trunc nuw nsw i64 %i.ala to i32
  %i.alc = or disjoint i32 %i.afr, %i.alb
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 88
  store i32 %i.alc, ptr %i.ald, align 4, !tbaa !37
  %i.ale = add i64 %i.akz, -2
  %i.alf = and i64 %i.ale, %i.akz                 ; 3 uses
  %i.alg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.alf, i1 true)
  %i.alh = trunc nuw nsw i64 %i.alg to i32
  %i.ali = or disjoint i32 %i.afr, %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 92
  store i32 %i.ali, ptr %i.alj, align 4, !tbaa !37
  %i.alk = icmp samesign ugt i64 %i.aft, 24
  br i1 %i.alk, label %.noexc138.i.preheader, label %.loopexit2246.i, !prof !111

.noexc138.i.preheader:                            ; preds = %.noexc137.i
  %i.all = add i64 %i.alf, -2
  %xtraiter100 = and i64 %i.all, %i.alf           ; 2 uses
  %i.alm = icmp eq i64 %i.aft, 25
  br i1 %i.alm, label %.noexc138.i.epil.preheader, label %.noexc138.i.preheader.new

.noexc138.i.preheader.new:                        ; preds = %.noexc138.i.preheader
  %i.aln = and i64 %i.aft, 126
  %i.alo = add nsw i64 %i.aln, -26
  br label %.noexc138.i

.noexc138.i:                                      ; preds = %.noexc138.i, %.noexc138.i.preheader.new
  %indvars.iv2321.i = phi i64 [ 24, %.noexc138.i.preheader.new ], [ %indvars.iv.next2322.i.1, %.noexc138.i ] ; 3 uses
  %.021852282.i = phi i64 [ %xtraiter100, %.noexc138.i.preheader.new ], [ %i.amb, %.noexc138.i ] ; 3 uses
  %niter104 = phi i64 [ 0, %.noexc138.i.preheader.new ], [ %niter104.next.1, %.noexc138.i ] ; 2 uses
  %i.alp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021852282.i, i1 true)
  %i.alq = trunc nuw nsw i64 %i.alp to i32
  %i.alr = or disjoint i32 %i.afr, %i.alq
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %indvars.iv2321.i
  store i32 %i.alr, ptr %i.als, align 4, !tbaa !37
  %i.alt = add i64 %.021852282.i, -1
  %i.alu = and i64 %i.alt, %.021852282.i          ; 3 uses
  %i.alv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.alu, i1 true)
  %i.alw = trunc nuw nsw i64 %i.alv to i32
  %i.alx = or disjoint i32 %i.afr, %i.alw
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %indvars.iv2321.i
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 4
  store i32 %i.alx, ptr %i.alz, align 4, !tbaa !37
  %i.ama = add i64 %i.alu, -2
  %i.amb = and i64 %i.ama, %i.alu                 ; 2 uses
  %indvars.iv.next2322.i.1 = add nuw nsw i64 %indvars.iv2321.i, 2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2
  %niter104.ncmp.1 = icmp eq i64 %niter104, %i.alo
  br i1 %niter104.ncmp.1, label %.loopexit2246.i.loopexit.unr-lcssa, label %.noexc138.i, !llvm.loop !198

.loopexit2246.i.loopexit.unr-lcssa:               ; preds = %.noexc138.i
  %6 = trunc i64 %i.aft to i1
  br i1 %6, label %.noexc138.i.epil.preheader, label %.loopexit2246.i

.noexc138.i.epil.preheader:                       ; preds = %.loopexit2246.i.loopexit.unr-lcssa, %.noexc138.i.preheader
  %indvars.iv2321.i.epil.init = phi i64 [ 24, %.noexc138.i.preheader ], [ %indvars.iv.next2322.i.1, %.loopexit2246.i.loopexit.unr-lcssa ]
  %.021852282.i.epil.init = phi i64 [ %xtraiter100, %.noexc138.i.preheader ], [ %i.amb, %.loopexit2246.i.loopexit.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.aft to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.amc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021852282.i.epil.init, i1 true)
  %i.amd = trunc nuw nsw i64 %i.amc to i32
  %i.ame = or disjoint i32 %i.afr, %i.amd
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %indvars.iv2321.i.epil.init
  store i32 %i.ame, ptr %i.amf, align 4, !tbaa !37
  br label %.loopexit2246.i

.loopexit2246.i:                                  ; preds = %.noexc138.i.epil.preheader, %.loopexit2246.i.loopexit.unr-lcssa, %.noexc137.i, %.noexc427.i, %.noexc351.i, %.noexc297.i, %.noexc221.i, %.noexc195.i
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.0.lcssa2387.i, i64 %i.aft
  br label %.noexc100.i

.noexc100.i:                                      ; preds = %.loopexit2246.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i
  %.sroa.89.1.i = phi ptr [ %.sroa.89.0.lcssa2387.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i ], [ %i.amg, %.loopexit2246.i ] ; 29 uses
  %i.amh = xor i64 %i.aau, -1
  %i.ami = and i64 %i.amh, %i.aaq
  %i.amj = or i64 %i.ami, %i.aao
  %i.amk = xor i64 %i.zl, %i.zp
  %i.aml = xor i64 %i.amk, -1
  %i.amm = and i64 %i.amj, %i.aml                 ; 5 uses
  %i.amn = and i64 %i.zp, %i.adl
  %i.amo = icmp ult <32 x i8> %i.aav, splat (i8 32)
  %i.amp = icmp ult <32 x i8> %i.aax, splat (i8 32)
  %i.amq = bitcast <32 x i1> %i.amo to i32
  %i.amr = zext i32 %i.amq to i64
  %i.ams = bitcast <32 x i1> %i.amp to i32
  %i.amt = sext i32 %i.ams to i64
  %i.amu = shl nsw i64 %i.amt, 32
  %i.amv = or disjoint i64 %i.amu, %i.amr
  %i.amw = or <4 x i64> %.96..96..96..96..96..i, %.64..64..64..64..64..i
  %i.amx = bitcast <4 x i64> %i.amw to <32 x i8>
  %i.amy = icmp slt <32 x i8> %i.amx, zeroinitializer
  %i.amz = bitcast <32 x i1> %i.amy to i32
  %i.ana = icmp eq i32 %i.amz, 0
  br i1 %i.ana, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i, label %.noexc105.i, !prof !110

.noexc105.i:                                      ; preds = %.noexc100.i
  %i.anb = shufflevector <4 x i64> %.sroa.70.3.i, <4 x i64> %.64..64..64..64..64..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.anc = bitcast <4 x i64> %i.anb to <32 x i8>  ; 3 uses
  %i.and = shufflevector <32 x i8> %i.anc, <32 x i8> %i.aav, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ane = bitcast <32 x i8> %i.and to <16 x i16>
  %i.anf = lshr <16 x i16> %i.ane, splat (i16 4)
  %i.ang = bitcast <16 x i16> %i.anf to <32 x i8>
  %i.anh = and <32 x i8> %i.ang, splat (i8 15)
  %i.ani = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.anh)
  %i.anj = and <32 x i8> %i.and, splat (i8 15)
  %i.ank = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.anj)
  %i.anl = bitcast <4 x i64> %.64..64..64..64..64..i to <16 x i16>
  %i.anm = lshr <16 x i16> %i.anl, splat (i16 4)
  %i.ann = bitcast <16 x i16> %i.anm to <32 x i8>
  %i.ano = and <32 x i8> %i.ann, splat (i8 15)
  %i.anp = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.ano)
  %i.anq = and <32 x i8> %i.ank, %i.ani
  %i.anr = and <32 x i8> %i.anq, %i.anp
  %i.ans = shufflevector <32 x i8> %i.anc, <32 x i8> %i.aav, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ant = shufflevector <32 x i8> %i.anc, <32 x i8> %i.aav, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.anu = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ans, <32 x i8> splat (i8 96))
  %i.anv = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ant, <32 x i8> splat (i8 112))
  %i.anw = or <32 x i8> %i.anu, %i.anv
  %.inner82 = and <32 x i8> %i.anw, splat (i8 -128)
  %.inner83 = xor <32 x i8> %.inner82, %i.anr
  %i.anx = bitcast <32 x i8> %.inner83 to <4 x i64>
  %i.any = shufflevector <4 x i64> %.64..64..64..64..64..i, <4 x i64> %.96..96..96..96..96..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.anz = bitcast <4 x i64> %i.any to <32 x i8>  ; 3 uses
  %i.aoa = shufflevector <32 x i8> %i.anz, <32 x i8> %i.aax, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.aob = bitcast <32 x i8> %i.aoa to <16 x i16>
  %i.aoc = lshr <16 x i16> %i.aob, splat (i16 4)
  %i.aod = bitcast <16 x i16> %i.aoc to <32 x i8>
  %i.aoe = and <32 x i8> %i.aod, splat (i8 15)
  %i.aof = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.aoe)
  %i.aog = and <32 x i8> %i.aoa, splat (i8 15)
  %i.aoh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aog)
  %i.aoi = bitcast <4 x i64> %.96..96..96..96..96..i to <16 x i16>
  %i.aoj = lshr <16 x i16> %i.aoi, splat (i16 4)
  %i.aok = bitcast <16 x i16> %i.aoj to <32 x i8>
  %i.aol = and <32 x i8> %i.aok, splat (i8 15)
  %i.aom = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.aol)
  %i.aon = and <32 x i8> %i.aoh, %i.aof
  %i.aoo = and <32 x i8> %i.aon, %i.aom
  %i.aop = shufflevector <32 x i8> %i.anz, <32 x i8> %i.aax, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.aoq = shufflevector <32 x i8> %i.anz, <32 x i8> %i.aax, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.aor = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aop, <32 x i8> splat (i8 96))
  %i.aos = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aoq, <32 x i8> splat (i8 112))
  %i.aot = or <32 x i8> %i.aor, %i.aos
  %.inner86 = and <32 x i8> %i.aot, splat (i8 -128)
  %.inner87 = xor <32 x i8> %.inner86, %i.aoo
  %i.aou = bitcast <32 x i8> %.inner87 to <4 x i64>
  %i.aov = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aax, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.aow = bitcast <32 x i8> %i.aov to <4 x i64>
  %i.aox = or <4 x i64> %.sroa.41638.4.i, %i.aow
  %i.aoy = or <4 x i64> %i.aox, %i.anx
  %i.aoz = or <4 x i64> %i.aoy, %i.aou
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i: ; preds = %.noexc105.i, %.noexc100.i
  %.sroa.41638.3.i = phi <4 x i64> [ %i.aoz, %.noexc105.i ], [ %.sroa.79.4.i, %.noexc100.i ] ; 2 uses
  %i.apa = icmp eq i64 %i.amm, 0
  br i1 %i.apa, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %.noexc192.i

.noexc192.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i
  %i.apb = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.amm) ; 11 uses
  %i.apc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amm, i1 true)
  %i.apd = or disjoint i64 %i.apc, %.sroa.11.0.lcssa2382.i
  %i.ape = trunc i64 %i.apd to i32
  store i32 %i.ape, ptr %.sroa.89.1.i, align 4, !tbaa !37
  %i.apf = add i64 %i.amm, -1
  %i.apg = and i64 %i.apf, %i.amm                 ; 3 uses
  %i.aph = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.apg, i1 true)
  %i.api = or disjoint i64 %i.aph, %.sroa.11.0.lcssa2382.i
  %i.apj = trunc i64 %i.api to i32
  %i.apk = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 4
  store i32 %i.apj, ptr %i.apk, align 4, !tbaa !37
  %i.apl = add i64 %i.apg, -2
  %i.apm = and i64 %i.apl, %i.apg                 ; 3 uses
  %i.apn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.apm, i1 true)
  %i.apo = or disjoint i64 %i.apn, %.sroa.11.0.lcssa2382.i
  %i.app = trunc i64 %i.apo to i32
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 8
  store i32 %i.app, ptr %i.apq, align 4, !tbaa !37
  %i.apr = add i64 %i.apm, -2
  %i.aps = and i64 %i.apr, %i.apm                 ; 3 uses
  %i.apt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aps, i1 true)
  %i.apu = or disjoint i64 %i.apt, %.sroa.11.0.lcssa2382.i
  %i.apv = trunc i64 %i.apu to i32
  %i.apw = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 12
  store i32 %i.apv, ptr %i.apw, align 4, !tbaa !37
  %i.apx = icmp samesign ugt i64 %i.apb, 4
  br i1 %i.apx, label %.noexc223.i, label %.loopexit2244.i, !prof !108

.noexc223.i:                                      ; preds = %.noexc192.i
  %i.apy = add i64 %i.aps, -2
  %i.apz = and i64 %i.apy, %i.aps                 ; 3 uses
  %i.aqa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.apz, i1 true)
  %i.aqb = or disjoint i64 %i.aqa, %.sroa.11.0.lcssa2382.i
  %i.aqc = trunc i64 %i.aqb to i32
  %i.aqd = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 16
  store i32 %i.aqc, ptr %i.aqd, align 4, !tbaa !37
  %i.aqe = add i64 %i.apz, -2
  %i.aqf = and i64 %i.aqe, %i.apz                 ; 3 uses
  %i.aqg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqf, i1 true)
  %i.aqh = or disjoint i64 %i.aqg, %.sroa.11.0.lcssa2382.i
  %i.aqi = trunc i64 %i.aqh to i32
  %i.aqj = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 20
  store i32 %i.aqi, ptr %i.aqj, align 4, !tbaa !37
  %i.aqk = add i64 %i.aqf, -1
  %i.aql = and i64 %i.aqk, %i.aqf                 ; 3 uses
  %i.aqm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aql, i1 true)
  %i.aqn = or disjoint i64 %i.aqm, %.sroa.11.0.lcssa2382.i
  %i.aqo = trunc i64 %i.aqn to i32
  %i.aqp = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 24
  store i32 %i.aqo, ptr %i.aqp, align 4, !tbaa !37
  %i.aqq = add i64 %i.aql, -2
  %i.aqr = and i64 %i.aqq, %i.aql                 ; 3 uses
  %i.aqs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqr, i1 true)
  %i.aqt = or disjoint i64 %i.aqs, %.sroa.11.0.lcssa2382.i
  %i.aqu = trunc i64 %i.aqt to i32
  %i.aqv = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 28
  store i32 %i.aqu, ptr %i.aqv, align 4, !tbaa !37
  %i.aqw = icmp samesign ugt i64 %i.apb, 8
  br i1 %i.aqw, label %.noexc294.i, label %.loopexit2244.i, !prof !108

.noexc294.i:                                      ; preds = %.noexc223.i
  %i.aqx = add i64 %i.aqr, -2
  %i.aqy = and i64 %i.aqx, %i.aqr                 ; 3 uses
  %i.aqz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqy, i1 true)
  %i.ara = or disjoint i64 %i.aqz, %.sroa.11.0.lcssa2382.i
  %i.arb = trunc i64 %i.ara to i32
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 32
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !37
  %i.ard = add i64 %i.aqy, -2
  %i.are = and i64 %i.ard, %i.aqy                 ; 3 uses
  %i.arf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.are, i1 true)
  %i.arg = or disjoint i64 %i.arf, %.sroa.11.0.lcssa2382.i
  %i.arh = trunc i64 %i.arg to i32
  %i.ari = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 36
  store i32 %i.arh, ptr %i.ari, align 4, !tbaa !37
  %i.arj = add i64 %i.are, -2
  %i.ark = and i64 %i.arj, %i.are                 ; 3 uses
  %i.arl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ark, i1 true)
  %i.arm = or disjoint i64 %i.arl, %.sroa.11.0.lcssa2382.i
  %i.arn = trunc i64 %i.arm to i32
  %i.aro = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 40
  store i32 %i.arn, ptr %i.aro, align 4, !tbaa !37
  %i.arp = add i64 %i.ark, -1
  %i.arq = and i64 %i.arp, %i.ark                 ; 3 uses
  %i.arr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.arq, i1 true)
  %i.ars = or disjoint i64 %i.arr, %.sroa.11.0.lcssa2382.i
  %i.art = trunc i64 %i.ars to i32
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 44
  store i32 %i.art, ptr %i.aru, align 4, !tbaa !37
  %i.arv = icmp samesign ugt i64 %i.apb, 12
  br i1 %i.arv, label %.noexc353.i, label %.loopexit2244.i, !prof !108

.noexc353.i:                                      ; preds = %.noexc294.i
  %i.arw = add i64 %i.arq, -2
  %i.arx = and i64 %i.arw, %i.arq                 ; 3 uses
  %i.ary = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.arx, i1 true)
  %i.arz = or disjoint i64 %i.ary, %.sroa.11.0.lcssa2382.i
  %i.asa = trunc i64 %i.arz to i32
  %i.asb = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 48
  store i32 %i.asa, ptr %i.asb, align 4, !tbaa !37
  %i.asc = add i64 %i.arx, -2
  %i.asd = and i64 %i.asc, %i.arx                 ; 3 uses
  %i.ase = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asd, i1 true)
  %i.asf = or disjoint i64 %i.ase, %.sroa.11.0.lcssa2382.i
  %i.asg = trunc i64 %i.asf to i32
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 52
  store i32 %i.asg, ptr %i.ash, align 4, !tbaa !37
  %i.asi = add i64 %i.asd, -2
  %i.asj = and i64 %i.asi, %i.asd                 ; 3 uses
  %i.ask = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asj, i1 true)
  %i.asl = or disjoint i64 %i.ask, %.sroa.11.0.lcssa2382.i
  %i.asm = trunc i64 %i.asl to i32
  %i.asn = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 56
  store i32 %i.asm, ptr %i.asn, align 4, !tbaa !37
  %i.aso = add i64 %i.asj, -2
  %i.asp = and i64 %i.aso, %i.asj                 ; 3 uses
  %i.asq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asp, i1 true)
  %i.asr = or disjoint i64 %i.asq, %.sroa.11.0.lcssa2382.i
  %i.ass = trunc i64 %i.asr to i32
  %i.ast = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 60
  store i32 %i.ass, ptr %i.ast, align 4, !tbaa !37
  %i.asu = icmp samesign ugt i64 %i.apb, 16
  br i1 %i.asu, label %.noexc424.i, label %.loopexit2244.i, !prof !108

.noexc424.i:                                      ; preds = %.noexc353.i
  %i.asv = add i64 %i.asp, -1
  %i.asw = and i64 %i.asv, %i.asp                 ; 3 uses
  %i.asx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asw, i1 true)
  %i.asy = or disjoint i64 %i.asx, %.sroa.11.0.lcssa2382.i
  %i.asz = trunc i64 %i.asy to i32
  %i.ata = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 64
  store i32 %i.asz, ptr %i.ata, align 4, !tbaa !37
  %i.atb = add i64 %i.asw, -2
  %i.atc = and i64 %i.atb, %i.asw                 ; 3 uses
  %i.atd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.atc, i1 true)
  %i.ate = or disjoint i64 %i.atd, %.sroa.11.0.lcssa2382.i
  %i.atf = trunc i64 %i.ate to i32
  %i.atg = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 68
  store i32 %i.atf, ptr %i.atg, align 4, !tbaa !37
  %i.ath = add i64 %i.atc, -2
  %i.ati = and i64 %i.ath, %i.atc                 ; 3 uses
  %i.atj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ati, i1 true)
  %i.atk = or disjoint i64 %i.atj, %.sroa.11.0.lcssa2382.i
  %i.atl = trunc i64 %i.atk to i32
  %i.atm = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 72
  store i32 %i.atl, ptr %i.atm, align 4, !tbaa !37
  %i.atn = add i64 %i.ati, -2
  %i.ato = and i64 %i.atn, %i.ati                 ; 3 uses
  %i.atp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ato, i1 true)
  %i.atq = or disjoint i64 %i.atp, %.sroa.11.0.lcssa2382.i
  %i.atr = trunc i64 %i.atq to i32
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 76
  store i32 %i.atr, ptr %i.ats, align 4, !tbaa !37
  %i.att = icmp samesign ugt i64 %i.apb, 20
  br i1 %i.att, label %.noexc140.i, label %.loopexit2244.i, !prof !108

.noexc140.i:                                      ; preds = %.noexc424.i
  %i.atu = add i64 %i.ato, -2
  %i.atv = and i64 %i.atu, %i.ato                 ; 3 uses
  %i.atw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.atv, i1 true)
  %i.atx = or disjoint i64 %i.atw, %.sroa.11.0.lcssa2382.i
  %i.aty = trunc i64 %i.atx to i32
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 80
  store i32 %i.aty, ptr %i.atz, align 4, !tbaa !37
  %i.aua = add i64 %i.atv, -1
  %i.aub = and i64 %i.aua, %i.atv                 ; 3 uses
  %i.auc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aub, i1 true)
  %i.aud = or disjoint i64 %i.auc, %.sroa.11.0.lcssa2382.i
  %i.aue = trunc i64 %i.aud to i32
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 84
  store i32 %i.aue, ptr %i.auf, align 4, !tbaa !37
  %i.aug = add i64 %i.aub, -2
  %i.auh = and i64 %i.aug, %i.aub                 ; 3 uses
  %i.aui = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.auh, i1 true)
  %i.auj = or disjoint i64 %i.aui, %.sroa.11.0.lcssa2382.i
  %i.auk = trunc i64 %i.auj to i32
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 88
  store i32 %i.auk, ptr %i.aul, align 4, !tbaa !37
  %i.aum = add i64 %i.auh, -2
  %i.aun = and i64 %i.aum, %i.auh                 ; 3 uses
  %i.auo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aun, i1 true)
  %i.aup = or disjoint i64 %i.auo, %.sroa.11.0.lcssa2382.i
  %i.auq = trunc i64 %i.aup to i32
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.89.1.i, i64 92
  store i32 %i.auq, ptr %i.aur, align 4, !tbaa !37
  %i.aus = icmp samesign ugt i64 %i.apb, 24
  br i1 %i.aus, label %.noexc141.i.preheader, label %.loopexit2244.i, !prof !111

.noexc141.i.preheader:                            ; preds = %.noexc140.i
  %i.aut = add i64 %i.aun, -2
  %xtraiter105 = and i64 %i.aut, %i.aun           ; 2 uses
  %i.auu = icmp eq i64 %i.apb, 25
  br i1 %i.auu, label %.noexc141.i.epil.preheader, label %.noexc141.i.preheader.new

.noexc141.i.preheader.new:                        ; preds = %.noexc141.i.preheader
  %i.auv = and i64 %i.apb, 126
  %i.auw = add nsw i64 %i.auv, -26
  br label %.noexc141.i

.noexc141.i:                                      ; preds = %.noexc141.i, %.noexc141.i.preheader.new
  %indvars.iv2326.i = phi i64 [ 24, %.noexc141.i.preheader.new ], [ %indvars.iv.next2327.i.1, %.noexc141.i ] ; 3 uses
  %.021792284.i = phi i64 [ %xtraiter105, %.noexc141.i.preheader.new ], [ %i.avj, %.noexc141.i ] ; 3 uses
  %niter109 = phi i64 [ 0, %.noexc141.i.preheader.new ], [ %niter109.next.1, %.noexc141.i ] ; 2 uses
  %i.aux = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021792284.i, i1 true)
  %i.auy = or disjoint i64 %i.aux, %.sroa.11.0.lcssa2382.i
  %i.auz = trunc i64 %i.auy to i32
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %indvars.iv2326.i
  store i32 %i.auz, ptr %i.ava, align 4, !tbaa !37
  %i.avb = add i64 %.021792284.i, -1
  %i.avc = and i64 %i.avb, %.021792284.i          ; 3 uses
  %i.avd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avc, i1 true)
  %i.ave = or disjoint i64 %i.avd, %.sroa.11.0.lcssa2382.i
  %i.avf = trunc i64 %i.ave to i32
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %indvars.iv2326.i
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 4
  store i32 %i.avf, ptr %i.avh, align 4, !tbaa !37
  %i.avi = add i64 %i.avc, -2
  %i.avj = and i64 %i.avi, %i.avc                 ; 2 uses
  %indvars.iv.next2327.i.1 = add nuw nsw i64 %indvars.iv2326.i, 2 ; 2 uses
  %niter109.next.1 = add i64 %niter109, 2
  %niter109.ncmp.1 = icmp eq i64 %niter109, %i.auw
  br i1 %niter109.ncmp.1, label %.loopexit2244.i.loopexit.unr-lcssa, label %.noexc141.i, !llvm.loop !198

.loopexit2244.i.loopexit.unr-lcssa:               ; preds = %.noexc141.i
  %7 = trunc i64 %i.apb to i1
  br i1 %7, label %.noexc141.i.epil.preheader, label %.loopexit2244.i

.noexc141.i.epil.preheader:                       ; preds = %.loopexit2244.i.loopexit.unr-lcssa, %.noexc141.i.preheader
  %indvars.iv2326.i.epil.init = phi i64 [ 24, %.noexc141.i.preheader ], [ %indvars.iv.next2327.i.1, %.loopexit2244.i.loopexit.unr-lcssa ]
  %.021792284.i.epil.init = phi i64 [ %xtraiter105, %.noexc141.i.preheader ], [ %i.avj, %.loopexit2244.i.loopexit.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %i.apb to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.avk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021792284.i.epil.init, i1 true)
  %i.avl = or disjoint i64 %i.avk, %.sroa.11.0.lcssa2382.i
  %i.avm = trunc i64 %i.avl to i32
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %indvars.iv2326.i.epil.init
  store i32 %i.avm, ptr %i.avn, align 4, !tbaa !37
  br label %.loopexit2244.i

.loopexit2244.i:                                  ; preds = %.noexc141.i.epil.preheader, %.loopexit2244.i.loopexit.unr-lcssa, %.noexc140.i, %.noexc424.i, %.noexc353.i, %.noexc294.i, %.noexc223.i, %.noexc192.i
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.1.i, i64 %i.apb
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %.loopexit2244.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i
  %.sroa.89.2.i = phi ptr [ %.sroa.89.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i98.i ], [ %i.avo, %.loopexit2244.i ] ; 29 uses
  %i.avp = xor i64 %i.add, -1
  %i.avq = and i64 %i.avp, %i.ada
  %i.avr = or i64 %i.avq, %i.acy
  %i.avs = xor i64 %i.abw, %i.aca
  %i.avt = xor i64 %i.avs, -1
  %i.avu = and i64 %i.avr, %i.avt                 ; 5 uses
  %i.avv = and i64 %i.aca, %i.amv
  %i.avw = or i64 %i.amn, %.sroa.236.0.lcssa2385.i
  %i.avx = or i64 %i.avw, %i.avv
  %i.avy = or disjoint i32 %i.afq, 64             ; 27 uses
  %i.avz = icmp eq i64 %i.avu, 0
  br i1 %i.avz, label %.noexc.i, label %.noexc184.i

.noexc184.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.awa = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.avu) ; 11 uses
  %i.awb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avu, i1 true)
  %i.awc = trunc nuw nsw i64 %i.awb to i32
  %i.awd = or disjoint i32 %i.avy, %i.awc
  store i32 %i.awd, ptr %.sroa.89.2.i, align 4, !tbaa !37
  %i.awe = add i64 %i.avu, -1
  %i.awf = and i64 %i.awe, %i.avu                 ; 3 uses
  %i.awg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awf, i1 true)
  %i.awh = trunc nuw nsw i64 %i.awg to i32
  %i.awi = or disjoint i32 %i.avy, %i.awh
  %i.awj = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 4
  store i32 %i.awi, ptr %i.awj, align 4, !tbaa !37
  %i.awk = add i64 %i.awf, -2
  %i.awl = and i64 %i.awk, %i.awf                 ; 3 uses
  %i.awm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awl, i1 true)
  %i.awn = trunc nuw nsw i64 %i.awm to i32
  %i.awo = or disjoint i32 %i.avy, %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 8
  store i32 %i.awo, ptr %i.awp, align 4, !tbaa !37
  %i.awq = add i64 %i.awl, -2
  %i.awr = and i64 %i.awq, %i.awl                 ; 3 uses
  %i.aws = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awr, i1 true)
  %i.awt = trunc nuw nsw i64 %i.aws to i32
  %i.awu = or disjoint i32 %i.avy, %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 12
  store i32 %i.awu, ptr %i.awv, align 4, !tbaa !37
  %i.aww = icmp samesign ugt i64 %i.awa, 4
  br i1 %i.aww, label %.noexc232.i, label %.loopexit.i, !prof !108

.noexc232.i:                                      ; preds = %.noexc184.i
  %i.awx = add i64 %i.awr, -2
  %i.awy = and i64 %i.awx, %i.awr                 ; 3 uses
  %i.awz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.awy, i1 true)
  %i.axa = trunc nuw nsw i64 %i.awz to i32
  %i.axb = or disjoint i32 %i.avy, %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 16
  store i32 %i.axb, ptr %i.axc, align 4, !tbaa !37
  %i.axd = add i64 %i.awy, -2
  %i.axe = and i64 %i.axd, %i.awy                 ; 3 uses
  %i.axf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axe, i1 true)
  %i.axg = trunc nuw nsw i64 %i.axf to i32
  %i.axh = or disjoint i32 %i.avy, %i.axg
  %i.axi = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 20
  store i32 %i.axh, ptr %i.axi, align 4, !tbaa !37
  %i.axj = add i64 %i.axe, -1
  %i.axk = and i64 %i.axj, %i.axe                 ; 3 uses
  %i.axl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axk, i1 true)
  %i.axm = trunc nuw nsw i64 %i.axl to i32
  %i.axn = or disjoint i32 %i.avy, %i.axm
  %i.axo = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 24
  store i32 %i.axn, ptr %i.axo, align 4, !tbaa !37
  %i.axp = add i64 %i.axk, -2
  %i.axq = and i64 %i.axp, %i.axk                 ; 3 uses
  %i.axr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axq, i1 true)
  %i.axs = trunc nuw nsw i64 %i.axr to i32
  %i.axt = or disjoint i32 %i.avy, %i.axs
  %i.axu = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 28
  store i32 %i.axt, ptr %i.axu, align 4, !tbaa !37
  %i.axv = icmp samesign ugt i64 %i.awa, 8
  br i1 %i.axv, label %.noexc286.i, label %.loopexit.i, !prof !108

.noexc286.i:                                      ; preds = %.noexc232.i
  %i.axw = add i64 %i.axq, -2
  %i.axx = and i64 %i.axw, %i.axq                 ; 3 uses
  %i.axy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axx, i1 true)
  %i.axz = trunc nuw nsw i64 %i.axy to i32
  %i.aya = or disjoint i32 %i.avy, %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 32
  store i32 %i.aya, ptr %i.ayb, align 4, !tbaa !37
  %i.ayc = add i64 %i.axx, -2
  %i.ayd = and i64 %i.ayc, %i.axx                 ; 3 uses
  %i.aye = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayd, i1 true)
  %i.ayf = trunc nuw nsw i64 %i.aye to i32
  %i.ayg = or disjoint i32 %i.avy, %i.ayf
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 36
  store i32 %i.ayg, ptr %i.ayh, align 4, !tbaa !37
  %i.ayi = add i64 %i.ayd, -2
  %i.ayj = and i64 %i.ayi, %i.ayd                 ; 3 uses
  %i.ayk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayj, i1 true)
  %i.ayl = trunc nuw nsw i64 %i.ayk to i32
  %i.aym = or disjoint i32 %i.avy, %i.ayl
  %i.ayn = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 40
  store i32 %i.aym, ptr %i.ayn, align 4, !tbaa !37
  %i.ayo = add i64 %i.ayj, -1
  %i.ayp = and i64 %i.ayo, %i.ayj                 ; 3 uses
  %i.ayq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayp, i1 true)
  %i.ayr = trunc nuw nsw i64 %i.ayq to i32
  %i.ays = or disjoint i32 %i.avy, %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 44
  store i32 %i.ays, ptr %i.ayt, align 4, !tbaa !37
  %i.ayu = icmp samesign ugt i64 %i.awa, 12
  br i1 %i.ayu, label %.noexc362.i, label %.loopexit.i, !prof !108

.noexc362.i:                                      ; preds = %.noexc286.i
  %i.ayv = add i64 %i.ayp, -2
  %i.ayw = and i64 %i.ayv, %i.ayp                 ; 3 uses
  %i.ayx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayw, i1 true)
  %i.ayy = trunc nuw nsw i64 %i.ayx to i32
  %i.ayz = or disjoint i32 %i.avy, %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 48
  store i32 %i.ayz, ptr %i.aza, align 4, !tbaa !37
  %i.azb = add i64 %i.ayw, -2
  %i.azc = and i64 %i.azb, %i.ayw                 ; 3 uses
  %i.azd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azc, i1 true)
  %i.aze = trunc nuw nsw i64 %i.azd to i32
  %i.azf = or disjoint i32 %i.avy, %i.aze
  %i.azg = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 52
  store i32 %i.azf, ptr %i.azg, align 4, !tbaa !37
  %i.azh = add i64 %i.azc, -2
  %i.azi = and i64 %i.azh, %i.azc                 ; 3 uses
  %i.azj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azi, i1 true)
  %i.azk = trunc nuw nsw i64 %i.azj to i32
  %i.azl = or disjoint i32 %i.avy, %i.azk
  %i.azm = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 56
  store i32 %i.azl, ptr %i.azm, align 4, !tbaa !37
  %i.azn = add i64 %i.azi, -2
  %i.azo = and i64 %i.azn, %i.azi                 ; 3 uses
  %i.azp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azo, i1 true)
  %i.azq = trunc nuw nsw i64 %i.azp to i32
  %i.azr = or disjoint i32 %i.avy, %i.azq
  %i.azs = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 60
  store i32 %i.azr, ptr %i.azs, align 4, !tbaa !37
  %i.azt = icmp samesign ugt i64 %i.awa, 16
  br i1 %i.azt, label %.noexc416.i, label %.loopexit.i, !prof !108

.noexc416.i:                                      ; preds = %.noexc362.i
  %i.azu = add i64 %i.azo, -1
  %i.azv = and i64 %i.azu, %i.azo                 ; 3 uses
  %i.azw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azv, i1 true)
  %i.azx = trunc nuw nsw i64 %i.azw to i32
  %i.azy = or disjoint i32 %i.avy, %i.azx
  %i.azz = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 64
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !37
  %i.baa = add i64 %i.azv, -2
  %i.bab = and i64 %i.baa, %i.azv                 ; 3 uses
  %i.bac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bab, i1 true)
  %i.bad = trunc nuw nsw i64 %i.bac to i32
  %i.bae = or disjoint i32 %i.avy, %i.bad
  %i.baf = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 68
  store i32 %i.bae, ptr %i.baf, align 4, !tbaa !37
  %i.bag = add i64 %i.bab, -2
  %i.bah = and i64 %i.bag, %i.bab                 ; 3 uses
  %i.bai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bah, i1 true)
  %i.baj = trunc nuw nsw i64 %i.bai to i32
  %i.bak = or disjoint i32 %i.avy, %i.baj
  %i.bal = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 72
  store i32 %i.bak, ptr %i.bal, align 4, !tbaa !37
  %i.bam = add i64 %i.bah, -2
  %i.ban = and i64 %i.bam, %i.bah                 ; 3 uses
  %i.bao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ban, i1 true)
  %i.bap = trunc nuw nsw i64 %i.bao to i32
  %i.baq = or disjoint i32 %i.avy, %i.bap
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 76
  store i32 %i.baq, ptr %i.bar, align 4, !tbaa !37
  %i.bas = icmp samesign ugt i64 %i.awa, 20
  br i1 %i.bas, label %.noexc152.i, label %.loopexit.i, !prof !108

.noexc152.i:                                      ; preds = %.noexc416.i
  %i.bat = add i64 %i.ban, -2
  %i.bau = and i64 %i.bat, %i.ban                 ; 3 uses
  %i.bav = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bau, i1 true)
  %i.baw = trunc nuw nsw i64 %i.bav to i32
  %i.bax = or disjoint i32 %i.avy, %i.baw
  %i.bay = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 80
  store i32 %i.bax, ptr %i.bay, align 4, !tbaa !37
  %i.baz = add i64 %i.bau, -1
  %i.bba = and i64 %i.baz, %i.bau                 ; 3 uses
  %i.bbb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bba, i1 true)
  %i.bbc = trunc nuw nsw i64 %i.bbb to i32
  %i.bbd = or disjoint i32 %i.avy, %i.bbc
  %i.bbe = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 84
  store i32 %i.bbd, ptr %i.bbe, align 4, !tbaa !37
  %i.bbf = add i64 %i.bba, -2
  %i.bbg = and i64 %i.bbf, %i.bba                 ; 3 uses
  %i.bbh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbg, i1 true)
  %i.bbi = trunc nuw nsw i64 %i.bbh to i32
  %i.bbj = or disjoint i32 %i.avy, %i.bbi
  %i.bbk = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 88
  store i32 %i.bbj, ptr %i.bbk, align 4, !tbaa !37
  %i.bbl = add i64 %i.bbg, -2
  %i.bbm = and i64 %i.bbl, %i.bbg                 ; 3 uses
  %i.bbn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbm, i1 true)
  %i.bbo = trunc nuw nsw i64 %i.bbn to i32
  %i.bbp = or disjoint i32 %i.avy, %i.bbo
  %i.bbq = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 92
  store i32 %i.bbp, ptr %i.bbq, align 4, !tbaa !37
  %i.bbr = icmp samesign ugt i64 %i.awa, 24
  br i1 %i.bbr, label %.noexc153.i.preheader, label %.loopexit.i, !prof !111

.noexc153.i.preheader:                            ; preds = %.noexc152.i
  %i.bbs = add i64 %i.bbm, -2
  %xtraiter110 = and i64 %i.bbs, %i.bbm           ; 2 uses
  %i.bbt = icmp eq i64 %i.awa, 25
  br i1 %i.bbt, label %.noexc153.i.epil.preheader, label %.noexc153.i.preheader.new

.noexc153.i.preheader.new:                        ; preds = %.noexc153.i.preheader
  %i.bbu = and i64 %i.awa, 126
  %i.bbv = add nsw i64 %i.bbu, -26
  br label %.noexc153.i

.noexc153.i:                                      ; preds = %.noexc153.i, %.noexc153.i.preheader.new
  %indvars.iv2331.i = phi i64 [ 24, %.noexc153.i.preheader.new ], [ %indvars.iv.next2332.i.1, %.noexc153.i ] ; 3 uses
  %.021652286.i = phi i64 [ %xtraiter110, %.noexc153.i.preheader.new ], [ %i.bci, %.noexc153.i ] ; 3 uses
  %niter114 = phi i64 [ 0, %.noexc153.i.preheader.new ], [ %niter114.next.1, %.noexc153.i ] ; 2 uses
  %i.bbw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021652286.i, i1 true)
  %i.bbx = trunc nuw nsw i64 %i.bbw to i32
  %i.bby = or disjoint i32 %i.avy, %i.bbx
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i
  store i32 %i.bby, ptr %i.bbz, align 4, !tbaa !37
  %i.bca = add i64 %.021652286.i, -1
  %i.bcb = and i64 %i.bca, %.021652286.i          ; 3 uses
  %i.bcc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bcb, i1 true)
  %i.bcd = trunc nuw nsw i64 %i.bcc to i32
  %i.bce = or disjoint i32 %i.avy, %i.bcd
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 4
  store i32 %i.bce, ptr %i.bcg, align 4, !tbaa !37
  %i.bch = add i64 %i.bcb, -2
  %i.bci = and i64 %i.bch, %i.bcb                 ; 2 uses
  %indvars.iv.next2332.i.1 = add nuw nsw i64 %indvars.iv2331.i, 2 ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2
  %niter114.ncmp.1 = icmp eq i64 %niter114, %i.bbv
  br i1 %niter114.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.noexc153.i, !llvm.loop !198

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.noexc153.i
  %8 = trunc i64 %i.awa to i1
  br i1 %8, label %.noexc153.i.epil.preheader, label %.loopexit.i

.noexc153.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.noexc153.i.preheader
  %indvars.iv2331.i.epil.init = phi i64 [ 24, %.noexc153.i.preheader ], [ %indvars.iv.next2332.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.021652286.i.epil.init = phi i64 [ %xtraiter110, %.noexc153.i.preheader ], [ %i.bci, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod112 = trunc i64 %i.awa to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bcj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021652286.i.epil.init, i1 true)
  %i.bck = trunc nuw nsw i64 %i.bcj to i32
  %i.bcl = or disjoint i32 %i.avy, %i.bck
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i.epil.init
  store i32 %i.bcl, ptr %i.bcm, align 4, !tbaa !37
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc153.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.noexc152.i, %.noexc416.i, %.noexc362.i, %.noexc286.i, %.noexc232.i, %.noexc184.i
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %i.awa
  br label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.89.5.i = phi ptr [ %.sroa.89.2.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.bcn, %.loopexit.i ]
  %.not.i.i64.i = icmp sgt i64 %i.aca, -1         ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i.i64.i, !prof !112
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !113

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.avx, 0
  br i1 %.not.i.i, label %bb.p, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.p:                                             ; preds = %.thread.i
  %i.bco = ptrtoint ptr %.sroa.89.5.i to i64
  %i.bcp = ptrtoint ptr %i.yf to i64
  %i.bcq = sub i64 %i.bco, %i.bcp
  %i.bcr = lshr exact i64 %i.bcq, 2               ; 2 uses
  %i.bcs = trunc i64 %i.bcr to i32
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.bcs, ptr %i.bct, align 8, !tbaa !84
  %i.bcu = trunc i64 %.01323672381.i to i32       ; 3 uses
  %i.bcv = and i64 %i.bcr, 4294967295
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.bcv
  store i32 %i.bcu, ptr %i.bcw, align 4, !tbaa !37
  %i.bcx = load i32, ptr %i.bct, align 8, !tbaa !84
  %i.bcy = add i32 %i.bcx, 1
  %i.bcz = zext i32 %i.bcy to i64
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.bcz
  store i32 %i.bcu, ptr %i.bda, align 4, !tbaa !37
  %i.bdb = load i32, ptr %i.bct, align 8, !tbaa !84
  %i.bdc = add i32 %i.bdb, 2
  %i.bdd = zext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.bdd
  store i32 0, ptr %i.bde, align 4, !tbaa !37
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bdf, align 8, !tbaa !86
  %i.bdg = load i32, ptr %i.bct, align 8, !tbaa !84 ; 6 uses
  %i.bdh = icmp eq i32 %i.bdg, 0
  br i1 %i.bdh, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.bdi = add i32 %i.bdg, -1                     ; 9 uses
  %i.bdj = zext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.bdj
  %i.bdl = load i32, ptr %i.bdk, align 4, !tbaa !37
  %i.bdm = zext i32 %i.bdl to i64
  %i.bdn = icmp ult i64 %.01323672381.i, %i.bdm
  br i1 %i.bdn, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.r, !prof !108

bb.r:                                             ; preds = %bb.q
  switch i32 %3, label %bb.ax [
    i32 1, label %bb.s
    i32 2, label %bb.aj
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i64.i, label %.preheader.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.bdi, ptr %i.bct, align 8, !tbaa !84
  %i.bdo = icmp eq i32 %i.bdi, 0
  br i1 %i.bdo, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !108

..preheader.i_crit_edge:                          ; preds = %bb.t
  %.pre = add i32 %i.bdg, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.s
  %.035.i2298.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.bdi, %bb.s ] ; 2 uses
  %i.bdp = phi i32 [ %i.bdi, %..preheader.i_crit_edge ], [ %i.bdg, %bb.s ] ; 3 uses
  %.not.i5782299.i = icmp eq i32 %.035.i2298.i.pre-phi, 0
  br i1 %.not.i5782299.i, label %._crit_edge2305.i, label %.lr.ph2304.i

.lr.ph2304.i:                                     ; preds = %.preheader.i
  %i.bdq = zext i32 %.035.i2298.i.pre-phi to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.ab, %.lr.ph2304.i
  %indvars.iv2339.i = phi i64 [ %i.bdq, %.lr.ph2304.i ], [ %indvars.iv.next2340.i, %bb.ab ] ; 4 uses
  %.035.in.i2302.i = phi i32 [ %i.bdp, %.lr.ph2304.i ], [ %i.bel, %bb.ab ]
  %.036.i2301.i = phi i32 [ 0, %.lr.ph2304.i ], [ %.238.i.i, %bb.ab ] ; 7 uses
  %.039.i2300.i = phi i32 [ 0, %.lr.ph2304.i ], [ %.241.i.i, %bb.ab ] ; 7 uses
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv2339.i
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !37
  %i.bdt = zext i32 %i.bds to i64
  %i.bdu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !36
  switch i8 %i.bdv, label %bb.z [
    i8 58, label %bb.ab
    i8 44, label %bb.ab
    i8 125, label %bb.v
    i8 93, label %bb.w
    i8 123, label %bb.x
    i8 91, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.bdw = add nsw i32 %.036.i2301.i, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bdx = add nsw i32 %.039.i2300.i, -1
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.bdy = add nsw i32 %.036.i2301.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bdz = add nsw i32 %.039.i2300.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.u
  %.140.i.i = phi i32 [ %.039.i2300.i, %bb.u ], [ %.039.i2300.i, %bb.x ], [ %i.bdz, %bb.y ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i2301.i, %bb.u ], [ %i.bdy, %bb.x ], [ %.036.i2301.i, %bb.y ] ; 5 uses
  %i.bea = add i32 %.035.in.i2302.i, -2
  %i.beb = zext i32 %i.bea to i64
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.beb
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !37
  %i.bee = zext i32 %i.bed to i64
  %i.bef = getelementptr inbounds nuw i8, ptr %1, i64 %i.bee
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !36
  switch i8 %i.beg, label %bb.aa [
    i8 123, label %bb.ab
    i8 91, label %bb.ab
    i8 58, label %bb.ab
    i8 44, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.beh = trunc nuw i64 %indvars.iv2339.i to i32
  %i.bei = icmp ne i32 %.140.i.i, 0
  %i.bej = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.bei, i1 true, i1 %i.bej
  %spec.select2240.i = select i1 %or.cond.i.i, i32 %i.beh, i32 %i.bdp
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.w, %bb.v, %bb.u, %bb.u
  %.241.i.i = phi i32 [ %.039.i2300.i, %bb.u ], [ %i.bdx, %bb.w ], [ %.039.i2300.i, %bb.v ], [ %.039.i2300.i, %bb.u ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i2301.i, %bb.u ], [ %.036.i2301.i, %bb.w ], [ %i.bdw, %bb.v ], [ %.036.i2301.i, %bb.u ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ] ; 2 uses
  %indvars.iv.next2340.i = add nsw i64 %indvars.iv2339.i, -1 ; 2 uses
  %i.bek = and i64 %indvars.iv.next2340.i, 4294967295
  %.not.i578.i = icmp eq i64 %i.bek, 0
  %i.bel = trunc nuw i64 %indvars.iv2339.i to i32
  br i1 %.not.i578.i, label %._crit_edge2305.i, label %bb.u, !llvm.loop !200

._crit_edge2305.i:                                ; preds = %bb.ab, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.ab ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.ab ] ; 5 uses
  %i.bem = load i32, ptr %i.yf, align 4, !tbaa !37 ; 2 uses
  %i.ben = zext i32 %i.bem to i64
  %i.beo = getelementptr inbounds nuw i8, ptr %1, i64 %i.ben
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !36
  switch i8 %i.bep, label %bb.ag [
    i8 125, label %bb.ac
    i8 93, label %bb.ad
    i8 123, label %bb.ae
    i8 91, label %bb.af
  ]

bb.ac:                                            ; preds = %._crit_edge2305.i
  %i.beq = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.ag

bb.ad:                                            ; preds = %._crit_edge2305.i
  %i.ber = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge2305.i
  %i.bes = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge2305.i
  %i.bet = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %._crit_edge2305.i
  %.443.i.i = phi i32 [ %.039.i.lcssa.i, %._crit_edge2305.i ], [ %.039.i.lcssa.i, %bb.ac ], [ %i.ber, %bb.ad ], [ %.039.i.lcssa.i, %bb.ae ], [ %i.bet, %bb.af ]
  %.4.i.i = phi i32 [ %.036.i.lcssa.i, %._crit_edge2305.i ], [ %i.beq, %bb.ac ], [ %.036.i.lcssa.i, %bb.ad ], [ %i.bes, %bb.ae ], [ %.036.i.lcssa.i, %bb.af ]
  %i.beu = icmp eq i32 %.443.i.i, 0
  %i.bev = icmp eq i32 %.4.i.i, 0
  %or.cond4.i.not.i = select i1 %i.beu, i1 %i.bev, i1 false
  br i1 %or.cond4.i.not.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bew = icmp eq i32 %i.bem, 0
  br i1 %i.bew, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
end_hunk_2
begin_hunk_3_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %.sroa.48.1.i = phi <2 x i64> [ %i.ao, %.noexc66.i ], [ %.sroa.48.01677.i, %.noexc57.i ] ; 2 uses
  %.sroa.53.01676.i.pn = phi <2 x i64> [ %i.il, %.noexc66.i ], [ %.sroa.53.01676.i, %.noexc57.i ]
  %.sroa.23326.1.i = or <2 x i64> %.sroa.53.01676.i.pn, %.sroa.23326.01678.i ; 3 uses
  %i.io = trunc i64 %.sroa.11.01670.i to i32
  %i.ip = add i32 %i.io, -64                      ; 27 uses
  %i.iq = icmp eq i64 %.sroa.142.01674.i, 0
  br i1 %i.iq, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i, label %.noexc145.i

.noexc145.i:                                      ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %i.ir = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.142.01674.i) ; 11 uses
  %i.is = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.142.01674.i, i1 true)
  %i.it = trunc nuw nsw i64 %i.is to i32
  %i.iu = or disjoint i32 %i.ip, %i.it
  store i32 %i.iu, ptr %.sroa.59.01675.i, align 4, !tbaa !37
  %i.iv = add i64 %.sroa.142.01674.i, -1
  %i.iw = and i64 %i.iv, %.sroa.142.01674.i       ; 3 uses
  %i.ix = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iw, i1 true)
  %i.iy = trunc nuw nsw i64 %i.ix to i32
  %i.iz = or disjoint i32 %i.ip, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 4
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !37
  %i.jb = add i64 %i.iw, -2
  %i.jc = and i64 %i.jb, %i.iw                    ; 3 uses
  %i.jd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jc, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.ip, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 8
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !37
  %i.jh = add i64 %i.jc, -2
  %i.ji = and i64 %i.jh, %i.jc                    ; 3 uses
  %i.jj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ji, i1 true)
  %i.jk = trunc nuw nsw i64 %i.jj to i32
  %i.jl = or disjoint i32 %i.ip, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 12
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !37
  %i.jn = icmp samesign ugt i64 %i.ir, 4
  br i1 %i.jn, label %.noexc158.i, label %.loopexit1661.i, !prof !108

.noexc158.i:                                      ; preds = %.noexc145.i
  %i.jo = add i64 %i.ji, -2
  %i.jp = and i64 %i.jo, %i.ji                    ; 3 uses
  %i.jq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jp, i1 true)
  %i.jr = trunc nuw nsw i64 %i.jq to i32
  %i.js = or disjoint i32 %i.ip, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 16
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !37
  %i.ju = add i64 %i.jp, -2
  %i.jv = and i64 %i.ju, %i.jp                    ; 3 uses
  %i.jw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jv, i1 true)
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %i.jy = or disjoint i32 %i.ip, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 20
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !37
  %i.ka = add i64 %i.jv, -1
  %i.kb = and i64 %i.ka, %i.jv                    ; 3 uses
  %i.kc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kb, i1 true)
  %i.kd = trunc nuw nsw i64 %i.kc to i32
  %i.ke = or disjoint i32 %i.ip, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 24
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !37
  %i.kg = add i64 %i.kb, -2
  %i.kh = and i64 %i.kg, %i.kb                    ; 3 uses
  %i.ki = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kh, i1 true)
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = or disjoint i32 %i.ip, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 28
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !37
  %i.km = icmp samesign ugt i64 %i.ir, 8
  br i1 %i.km, label %.noexc181.i, label %.loopexit1661.i, !prof !108

.noexc181.i:                                      ; preds = %.noexc158.i
  %i.kn = add i64 %i.kh, -2
  %i.ko = and i64 %i.kn, %i.kh                    ; 3 uses
  %i.kp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ko, i1 true)
  %i.kq = trunc nuw nsw i64 %i.kp to i32
  %i.kr = or disjoint i32 %i.ip, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 32
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !37
  %i.kt = add i64 %i.ko, -2
  %i.ku = and i64 %i.kt, %i.ko                    ; 3 uses
  %i.kv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ku, i1 true)
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = or disjoint i32 %i.ip, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 36
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !37
  %i.kz = add i64 %i.ku, -2
  %i.la = and i64 %i.kz, %i.ku                    ; 3 uses
  %i.lb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.la, i1 true)
  %i.lc = trunc nuw nsw i64 %i.lb to i32
  %i.ld = or disjoint i32 %i.ip, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 40
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !37
  %i.lf = add i64 %i.la, -1
  %i.lg = and i64 %i.lf, %i.la                    ; 3 uses
  %i.lh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lg, i1 true)
  %i.li = trunc nuw nsw i64 %i.lh to i32
  %i.lj = or disjoint i32 %i.ip, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 44
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !37
  %i.ll = icmp samesign ugt i64 %i.ir, 12
  br i1 %i.ll, label %.noexc204.i, label %.loopexit1661.i, !prof !108

.noexc204.i:                                      ; preds = %.noexc181.i
  %i.lm = add i64 %i.lg, -2
  %i.ln = and i64 %i.lm, %i.lg                    ; 3 uses
  %i.lo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ln, i1 true)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %i.lq = or disjoint i32 %i.ip, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 48
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !37
  %i.ls = add i64 %i.ln, -2
  %i.lt = and i64 %i.ls, %i.ln                    ; 3 uses
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lt, i1 true)
  %i.lv = trunc nuw nsw i64 %i.lu to i32
  %i.lw = or disjoint i32 %i.ip, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 52
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !37
  %i.ly = add i64 %i.lt, -2
  %i.lz = and i64 %i.ly, %i.lt                    ; 3 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lz, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.ip, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 56
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !37
  %i.me = add i64 %i.lz, -2
  %i.mf = and i64 %i.me, %i.lz                    ; 3 uses
  %i.mg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mf, i1 true)
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = or disjoint i32 %i.ip, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 60
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !37
  %i.mk = icmp samesign ugt i64 %i.ir, 16
  br i1 %i.mk, label %.noexc227.i, label %.loopexit1661.i, !prof !108

.noexc227.i:                                      ; preds = %.noexc204.i
  %i.ml = add i64 %i.mf, -1
  %i.mm = and i64 %i.ml, %i.mf                    ; 3 uses
  %i.mn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mm, i1 true)
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = or disjoint i32 %i.ip, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 64
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !37
  %i.mr = add i64 %i.mm, -2
  %i.ms = and i64 %i.mr, %i.mm                    ; 3 uses
  %i.mt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ms, i1 true)
  %i.mu = trunc nuw nsw i64 %i.mt to i32
  %i.mv = or disjoint i32 %i.ip, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 68
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !37
  %i.mx = add i64 %i.ms, -2
  %i.my = and i64 %i.mx, %i.ms                    ; 3 uses
  %i.mz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.my, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = or disjoint i32 %i.ip, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 72
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !37
  %i.nd = add i64 %i.my, -2
  %i.ne = and i64 %i.nd, %i.my                    ; 3 uses
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ne, i1 true)
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = or disjoint i32 %i.ip, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 76
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !37
  %i.nj = icmp samesign ugt i64 %i.ir, 20
  br i1 %i.nj, label %.noexc107.i, label %.loopexit1661.i, !prof !108

.noexc107.i:                                      ; preds = %.noexc227.i
  %i.nk = add i64 %i.ne, -2
  %i.nl = and i64 %i.nk, %i.ne                    ; 3 uses
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nl, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.ip, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 80
  store i32 %i.no, ptr %i.np, align 4, !tbaa !37
  %i.nq = add i64 %i.nl, -1
  %i.nr = and i64 %i.nq, %i.nl                    ; 3 uses
  %i.ns = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nr, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = or disjoint i32 %i.ip, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 84
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !37
  %i.nw = add i64 %i.nr, -2
  %i.nx = and i64 %i.nw, %i.nr                    ; 3 uses
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nx, i1 true)
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = or disjoint i32 %i.ip, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 88
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !37
  %i.oc = add i64 %i.nx, -2
  %i.od = and i64 %i.oc, %i.nx                    ; 3 uses
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = or disjoint i32 %i.ip, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 92
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !37
  %i.oi = icmp samesign ugt i64 %i.ir, 24
  br i1 %i.oi, label %.noexc108.i.preheader, label %.loopexit1661.i, !prof !111

.noexc108.i.preheader:                            ; preds = %.noexc107.i
  %i.oj = add i64 %i.od, -2
  %xtraiter = and i64 %i.oj, %i.od                ; 2 uses
  %i.ok = icmp eq i64 %i.ir, 25
  br i1 %i.ok, label %.noexc108.i.epil.preheader, label %.noexc108.i.preheader.new

.noexc108.i.preheader.new:                        ; preds = %.noexc108.i.preheader
  %i.ol = and i64 %i.ir, 126
  %i.om = add nsw i64 %i.ol, -26
  br label %.noexc108.i

.noexc108.i:                                      ; preds = %.noexc108.i, %.noexc108.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.noexc108.i.preheader.new ], [ %indvars.iv.next.i.1, %.noexc108.i ] ; 3 uses
  %.015941668.i = phi i64 [ %xtraiter, %.noexc108.i.preheader.new ], [ %i.oz, %.noexc108.i ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc108.i.preheader.new ], [ %niter.next.1, %.noexc108.i ] ; 2 uses
  %i.on = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i, i1 true)
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = or disjoint i32 %i.ip, %i.oo
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !37
  %i.or = add i64 %.015941668.i, -1
  %i.os = and i64 %i.or, %.015941668.i            ; 3 uses
  %i.ot = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.os, i1 true)
  %i.ou = trunc nuw nsw i64 %i.ot to i32
  %i.ov = or disjoint i32 %i.ip, %i.ou
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i32 %i.ov, ptr %i.ox, align 4, !tbaa !37
  %i.oy = add i64 %i.os, -2
  %i.oz = and i64 %i.oy, %i.os                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.om
  br i1 %niter.ncmp.1, label %.loopexit1661.i.loopexit.unr-lcssa, label %.noexc108.i, !llvm.loop !207

.loopexit1661.i.loopexit.unr-lcssa:               ; preds = %.noexc108.i
  %4 = trunc i64 %i.ir to i1
  br i1 %4, label %.noexc108.i.epil.preheader, label %.loopexit1661.i

.noexc108.i.epil.preheader:                       ; preds = %.loopexit1661.i.loopexit.unr-lcssa, %.noexc108.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.noexc108.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit1661.i.loopexit.unr-lcssa ]
  %.015941668.i.epil.init = phi i64 [ %xtraiter, %.noexc108.i.preheader ], [ %i.oz, %.loopexit1661.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %i.ir to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.pa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i.epil.init, i1 true)
  %i.pb = trunc nuw nsw i64 %i.pa to i32
  %i.pc = or disjoint i32 %i.ip, %i.pb
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i.epil.init
  store i32 %i.pc, ptr %i.pd, align 4, !tbaa !37
  br label %.loopexit1661.i

.loopexit1661.i:                                  ; preds = %.noexc108.i.epil.preheader, %.loopexit1661.i.loopexit.unr-lcssa, %.noexc107.i, %.noexc227.i, %.noexc204.i, %.noexc181.i, %.noexc158.i, %.noexc145.i
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %i.ir
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i: ; preds = %.loopexit1661.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.59.2.i = phi ptr [ %.sroa.59.01675.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.pe, %.loopexit1661.i ] ; 2 uses
  %i.pf = xor i64 %i.ek, -1
  %i.pg = and i64 %i.pf, %i.eg
  %i.ph = or i64 %i.pg, %i.ee
  %i.pi = xor i64 %i.cg, %i.ck
  %i.pj = xor i64 %i.pi, -1
  %i.pk = and i64 %i.ph, %i.pj                    ; 2 uses
  %i.pl = and i64 %i.ck, %i.fa
  %i.pm = or i64 %i.pl, %.sroa.148.01673.i        ; 2 uses
  %i.pn = add nuw i64 %.sroa.11.01670.i, 64       ; 4 uses
  %i.po = icmp ult i64 %i.pn, %spec.select.i.i
  br i1 %i.po, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !208

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.0131756.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.59.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i
  %i.pp = bitcast <2 x i64> %.sroa.48.1.i to <16 x i8>
  %i.pq = or <2 x i64> %.sroa.23326.1.i, %.sroa.53.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.pr = icmp eq i64 %.013.i, %i.pn
  br i1 %i.pr, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.18.0.lcssa1779.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cl, %._crit_edge.i ]
  %.sroa.23326.0.lcssa1778.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.23326.1.i, %._crit_edge.i ]
  %.sroa.48.0.lcssa1777.i = phi <16 x i8> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pp, %._crit_edge.i ] ; 3 uses
  %.sroa.53.0.lcssa1776.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pq, %._crit_edge.i ]
  %.sroa.59.0.lcssa1775.i = phi ptr [ %.sroa.59.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.59.2.i, %._crit_edge.i ] ; 29 uses
  %.sroa.142.0.lcssa1774.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pk, %._crit_edge.i ] ; 5 uses
  %.sroa.148.0.lcssa1773.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pm, %._crit_edge.i ]
  %.sroa.8.0.lcssa1772.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.8.1.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa1771.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.el, %._crit_edge.i ]
  %.sroa.11.0.lcssa1770.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pn, %._crit_edge.i ] ; 30 uses
  %.01317561769.i = phi i64 [ %.0131756.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.ps = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa1770.i
  %i.pu = sub i64 %.01317561769.i, %.sroa.11.0.lcssa1770.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.pt, i64 %i.pu, i1 false)
  %.0..0..0..0..0..i = load <2 x i64>, ptr %i.a, align 16, !tbaa !36 ; 6 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16, !tbaa !36 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !36 ; 4 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16, !tbaa !36 ; 4 uses
  %i.pv = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8> ; 10 uses
  %i.pw = icmp eq <16 x i8> %i.pv, splat (i8 92)
  %i.px = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8> ; 10 uses
  %i.py = icmp eq <16 x i8> %i.px, splat (i8 92)
  %i.pz = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8> ; 12 uses
  %i.qa = icmp eq <16 x i8> %i.pz, splat (i8 92)
  %i.qb = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8> ; 10 uses
  %i.qc = icmp eq <16 x i8> %i.qb, splat (i8 92)
  %i.qd = bitcast <16 x i1> %i.pw to i16
  %i.qe = bitcast <16 x i1> %i.py to i16
  %i.qf = bitcast <16 x i1> %i.qa to i16
  %i.qg = bitcast <16 x i1> %i.qc to i16
  %i.qh = insertelement <4 x i16> poison, i16 %i.qd, i64 0
  %i.qi = insertelement <4 x i16> %i.qh, i16 %i.qe, i64 1
  %i.qj = insertelement <4 x i16> %i.qi, i16 %i.qf, i64 2
  %i.qk = insertelement <4 x i16> %i.qj, i16 %i.qg, i64 3
  %i.ql = bitcast <4 x i16> %i.qk to i64          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ql, 0
  br i1 %.not.i.i.i, label %.noexc82.i, label %bb.m

bb.m:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.qm = xor i64 %.sroa.8.0.lcssa1772.i, -1
  %i.qn = and i64 %i.ql, %i.qm                    ; 2 uses
  %i.qo = shl i64 %i.qn, 1
  %i.qp = or i64 %i.qo, -6148914691236517206
  %i.qq = sub i64 %i.qp, %i.qn
  %i.qr = or i64 %.sroa.8.0.lcssa1772.i, %i.ql
  %i.qs = xor i64 %i.qr, %i.qq
  %i.qt = xor i64 %i.qs, -6148914691236517206
  br label %.noexc82.i

.noexc82.i:                                       ; preds = %bb.m, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.qt, %bb.m ], [ %.sroa.8.0.lcssa1772.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.qu = icmp eq <16 x i8> %i.pv, splat (i8 34)
  %i.qv = icmp eq <16 x i8> %i.px, splat (i8 34)
  %i.qw = icmp eq <16 x i8> %i.pz, splat (i8 34)
  %i.qx = icmp eq <16 x i8> %i.qb, splat (i8 34)
  %i.qy = bitcast <16 x i1> %i.qu to i16
  %i.qz = bitcast <16 x i1> %i.qv to i16
  %i.ra = bitcast <16 x i1> %i.qw to i16
  %i.rb = bitcast <16 x i1> %i.qx to i16
  %i.rc = insertelement <4 x i16> poison, i16 %i.qy, i64 0
  %i.rd = insertelement <4 x i16> %i.rc, i16 %i.qz, i64 1
  %i.re = insertelement <4 x i16> %i.rd, i16 %i.ra, i64 2
  %i.rf = insertelement <4 x i16> %i.re, i16 %i.rb, i64 3
  %i.rg = bitcast <4 x i16> %i.rf to i64
  %i.rh = xor i64 %.sroa.0.0.i.i.i, -1
  %i.ri = and i64 %i.rg, %i.rh                    ; 3 uses
  %i.rj = insertelement <2 x i64> poison, i64 %i.ri, i64 0
  %i.rk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.rj, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.rl = extractelement <2 x i64> %i.rk, i64 0
  %i.rm = xor i64 %i.rl, %.sroa.18.0.lcssa1779.i  ; 3 uses
  %i.rn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pv)
  %i.ro = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.px)
  %i.rp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pz)
  %i.rq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qb)
  %i.rr = icmp eq <16 x i8> %i.rp, %i.pz
  %i.rs = icmp eq <16 x i8> %i.rq, %i.qb
  %i.rt = bitcast <16 x i1> %i.rr to i16
  %i.ru = zext i16 %i.rt to i64
  %i.rv = bitcast <16 x i1> %i.rs to i16
  %i.rw = zext i16 %i.rv to i64
  %i.rx = shufflevector <16 x i8> %i.rn, <16 x i8> %i.ro, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ry = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rz = bitcast <4 x i64> %i.ry to <32 x i8>
  %i.sa = icmp eq <32 x i8> %i.rx, %i.rz
  %i.sb = bitcast <32 x i1> %i.sa to i32
  %i.sc = zext i32 %i.sb to i64
  %i.sd = shl nuw nsw i64 %i.ru, 32
  %i.se = or disjoint i64 %i.sd, %i.sc
  %i.sf = shl nuw i64 %i.rw, 48
  %i.sg = or disjoint i64 %i.se, %i.sf
  %i.sh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pv)
  %i.si = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.px)
  %i.sj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pz)
  %i.sk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qb)
  %i.sl = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8>
  %i.sm = or <16 x i8> %i.sl, splat (i8 32)
  %i.sn = icmp eq <16 x i8> %i.sm, %i.sj
  %i.so = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8>
  %i.sp = or <16 x i8> %i.so, splat (i8 32)
  %i.sq = icmp eq <16 x i8> %i.sp, %i.sk
  %i.sr = bitcast <16 x i1> %i.sn to i16
  %i.ss = zext i16 %i.sr to i64
  %i.st = bitcast <16 x i1> %i.sq to i16
  %i.su = zext i16 %i.st to i64
  %i.sv = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sw = bitcast <4 x i64> %i.sv to <32 x i8>
  %i.sx = or <32 x i8> %i.sw, splat (i8 32)
  %i.sy = shufflevector <16 x i8> %i.sh, <16 x i8> %i.si, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sz = icmp eq <32 x i8> %i.sx, %i.sy
  %i.ta = bitcast <32 x i1> %i.sz to i32
  %i.tb = zext i32 %i.ta to i64
  %i.tc = shl nuw nsw i64 %i.ss, 32
  %i.td = or disjoint i64 %i.tc, %i.tb
  %i.te = shl nuw i64 %i.su, 48
  %i.tf = or disjoint i64 %i.td, %i.te            ; 2 uses
  %i.tg = or i64 %i.tf, %i.sg
  %i.th = xor i64 %i.tg, -1                       ; 2 uses
  %i.ti = xor i64 %i.ri, -1
  %i.tj = and i64 %i.th, %i.ti
  %i.tk = shl i64 %i.tj, 1
  %i.tl = or disjoint i64 %i.tk, %.sroa.0.0.lcssa1771.i
  %i.tm = icmp ult <16 x i8> %i.pz, splat (i8 32)
  %i.tn = icmp ult <16 x i8> %i.qb, splat (i8 32)
  %i.to = bitcast <16 x i1> %i.tm to i16
  %i.tp = zext i16 %i.to to i64
  %i.tq = bitcast <16 x i1> %i.tn to i16
  %i.tr = zext i16 %i.tq to i64
  %i.ts = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tt = bitcast <4 x i64> %i.ts to <32 x i8>
  %i.tu = icmp ult <32 x i8> %i.tt, splat (i8 32)
  %i.tv = bitcast <32 x i1> %i.tu to i32
  %i.tw = zext i32 %i.tv to i64
  %i.tx = shl nuw nsw i64 %i.tp, 32
  %i.ty = or disjoint i64 %i.tx, %i.tw
  %i.tz = shl nuw i64 %i.tr, 48
  %i.ua = or disjoint i64 %i.ty, %i.tz
  %i.ub = or <2 x i64> %.16..16..16..16..16..i, %.0..0..0..0..0..i
  %i.uc = or <2 x i64> %i.ub, %.32..32..32..32..32..i
  %i.ud = or <2 x i64> %i.uc, %.48..48..48..48..48..i
  %i.ue = bitcast <2 x i64> %i.ud to <16 x i8>
  %i.uf = icmp slt <16 x i8> %i.ue, zeroinitializer
  %i.ug = bitcast <16 x i1> %i.uf to i16
  %i.uh = icmp eq i16 %i.ug, 0
  br i1 %i.uh, label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i, label %.noexc91.i, !prof !110

.noexc91.i:                                       ; preds = %.noexc82.i
  %i.ui = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pv, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.uj = bitcast <16 x i8> %i.ui to <8 x i16>
  %i.uk = lshr <8 x i16> %i.uj, splat (i16 4)
  %i.ul = bitcast <8 x i16> %i.uk to <16 x i8>
  %i.um = and <16 x i8> %i.ul, splat (i8 15)
  %i.un = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.um)
  %i.uo = and <16 x i8> %i.ui, splat (i8 15)
end_hunk_3
begin_hunk_4_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a

_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i: ; preds = %.noexc91.i, %.noexc82.i
  %.sroa.23326.2.i = phi <2 x i64> [ %i.xu, %.noexc91.i ], [ %.sroa.53.0.lcssa1776.i, %.noexc82.i ] ; 2 uses
  %i.xv = trunc i64 %.sroa.11.0.lcssa1770.i to i32
  %i.xw = add i32 %i.xv, -64                      ; 27 uses
  %i.xx = icmp eq i64 %.sroa.142.0.lcssa1774.i, 0
  br i1 %i.xx, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %.noexc148.i

.noexc148.i:                                      ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i
  %i.xy = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.142.0.lcssa1774.i) ; 11 uses
  %i.xz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.142.0.lcssa1774.i, i1 true)
  %i.ya = trunc nuw nsw i64 %i.xz to i32
  %i.yb = or disjoint i32 %i.xw, %i.ya
  store i32 %i.yb, ptr %.sroa.59.0.lcssa1775.i, align 4, !tbaa !37
  %i.yc = add i64 %.sroa.142.0.lcssa1774.i, -1
  %i.yd = and i64 %i.yc, %.sroa.142.0.lcssa1774.i ; 3 uses
  %i.ye = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yd, i1 true)
  %i.yf = trunc nuw nsw i64 %i.ye to i32
  %i.yg = or disjoint i32 %i.xw, %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 4
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !37
  %i.yi = add i64 %i.yd, -2
  %i.yj = and i64 %i.yi, %i.yd                    ; 3 uses
  %i.yk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yj, i1 true)
  %i.yl = trunc nuw nsw i64 %i.yk to i32
  %i.ym = or disjoint i32 %i.xw, %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 8
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !37
  %i.yo = add i64 %i.yj, -2
  %i.yp = and i64 %i.yo, %i.yj                    ; 3 uses
  %i.yq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yp, i1 true)
  %i.yr = trunc nuw nsw i64 %i.yq to i32
  %i.ys = or disjoint i32 %i.xw, %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 12
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !37
  %i.yu = icmp samesign ugt i64 %i.xy, 4
  br i1 %i.yu, label %.noexc156.i, label %.loopexit1659.i, !prof !108

.noexc156.i:                                      ; preds = %.noexc148.i
  %i.yv = add i64 %i.yp, -2
  %i.yw = and i64 %i.yv, %i.yp                    ; 3 uses
  %i.yx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yw, i1 true)
  %i.yy = trunc nuw nsw i64 %i.yx to i32
  %i.yz = or disjoint i32 %i.xw, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 16
  store i32 %i.yz, ptr %i.za, align 4, !tbaa !37
  %i.zb = add i64 %i.yw, -2
  %i.zc = and i64 %i.zb, %i.yw                    ; 3 uses
  %i.zd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zc, i1 true)
  %i.ze = trunc nuw nsw i64 %i.zd to i32
  %i.zf = or disjoint i32 %i.xw, %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 20
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !37
  %i.zh = add i64 %i.zc, -1
  %i.zi = and i64 %i.zh, %i.zc                    ; 3 uses
  %i.zj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zi, i1 true)
  %i.zk = trunc nuw nsw i64 %i.zj to i32
  %i.zl = or disjoint i32 %i.xw, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 24
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !37
  %i.zn = add i64 %i.zi, -2
  %i.zo = and i64 %i.zn, %i.zi                    ; 3 uses
  %i.zp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zo, i1 true)
  %i.zq = trunc nuw nsw i64 %i.zp to i32
  %i.zr = or disjoint i32 %i.xw, %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 28
  store i32 %i.zr, ptr %i.zs, align 4, !tbaa !37
  %i.zt = icmp samesign ugt i64 %i.xy, 8
  br i1 %i.zt, label %.noexc184.i, label %.loopexit1659.i, !prof !108

.noexc184.i:                                      ; preds = %.noexc156.i
  %i.zu = add i64 %i.zo, -2
  %i.zv = and i64 %i.zu, %i.zo                    ; 3 uses
  %i.zw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zv, i1 true)
  %i.zx = trunc nuw nsw i64 %i.zw to i32
  %i.zy = or disjoint i32 %i.xw, %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 32
  store i32 %i.zy, ptr %i.zz, align 4, !tbaa !37
  %i.aaa = add i64 %i.zv, -2
  %i.aab = and i64 %i.aaa, %i.zv                  ; 3 uses
  %i.aac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aab, i1 true)
  %i.aad = trunc nuw nsw i64 %i.aac to i32
  %i.aae = or disjoint i32 %i.xw, %i.aad
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 36
  store i32 %i.aae, ptr %i.aaf, align 4, !tbaa !37
  %i.aag = add i64 %i.aab, -2
  %i.aah = and i64 %i.aag, %i.aab                 ; 3 uses
  %i.aai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aah, i1 true)
  %i.aaj = trunc nuw nsw i64 %i.aai to i32
  %i.aak = or disjoint i32 %i.xw, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 40
  store i32 %i.aak, ptr %i.aal, align 4, !tbaa !37
  %i.aam = add i64 %i.aah, -1
  %i.aan = and i64 %i.aam, %i.aah                 ; 3 uses
  %i.aao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aan, i1 true)
  %i.aap = trunc nuw nsw i64 %i.aao to i32
  %i.aaq = or disjoint i32 %i.xw, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 44
  store i32 %i.aaq, ptr %i.aar, align 4, !tbaa !37
  %i.aas = icmp samesign ugt i64 %i.xy, 12
  br i1 %i.aas, label %.noexc202.i, label %.loopexit1659.i, !prof !108

.noexc202.i:                                      ; preds = %.noexc184.i
  %i.aat = add i64 %i.aan, -2
  %i.aau = and i64 %i.aat, %i.aan                 ; 3 uses
  %i.aav = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aau, i1 true)
  %i.aaw = trunc nuw nsw i64 %i.aav to i32
  %i.aax = or disjoint i32 %i.xw, %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 48
  store i32 %i.aax, ptr %i.aay, align 4, !tbaa !37
  %i.aaz = add i64 %i.aau, -2
  %i.aba = and i64 %i.aaz, %i.aau                 ; 3 uses
  %i.abb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aba, i1 true)
  %i.abc = trunc nuw nsw i64 %i.abb to i32
  %i.abd = or disjoint i32 %i.xw, %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 52
  store i32 %i.abd, ptr %i.abe, align 4, !tbaa !37
  %i.abf = add i64 %i.aba, -2
  %i.abg = and i64 %i.abf, %i.aba                 ; 3 uses
  %i.abh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abg, i1 true)
  %i.abi = trunc nuw nsw i64 %i.abh to i32
  %i.abj = or disjoint i32 %i.xw, %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 56
  store i32 %i.abj, ptr %i.abk, align 4, !tbaa !37
  %i.abl = add i64 %i.abg, -2
  %i.abm = and i64 %i.abl, %i.abg                 ; 3 uses
  %i.abn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abm, i1 true)
  %i.abo = trunc nuw nsw i64 %i.abn to i32
  %i.abp = or disjoint i32 %i.xw, %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 60
  store i32 %i.abp, ptr %i.abq, align 4, !tbaa !37
  %i.abr = icmp samesign ugt i64 %i.xy, 16
  br i1 %i.abr, label %.noexc230.i, label %.loopexit1659.i, !prof !108

.noexc230.i:                                      ; preds = %.noexc202.i
  %i.abs = add i64 %i.abm, -1
  %i.abt = and i64 %i.abs, %i.abm                 ; 3 uses
  %i.abu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abt, i1 true)
  %i.abv = trunc nuw nsw i64 %i.abu to i32
  %i.abw = or disjoint i32 %i.xw, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 64
  store i32 %i.abw, ptr %i.abx, align 4, !tbaa !37
  %i.aby = add i64 %i.abt, -2
  %i.abz = and i64 %i.aby, %i.abt                 ; 3 uses
  %i.aca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abz, i1 true)
  %i.acb = trunc nuw nsw i64 %i.aca to i32
  %i.acc = or disjoint i32 %i.xw, %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 68
  store i32 %i.acc, ptr %i.acd, align 4, !tbaa !37
  %i.ace = add i64 %i.abz, -2
  %i.acf = and i64 %i.ace, %i.abz                 ; 3 uses
  %i.acg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acf, i1 true)
  %i.ach = trunc nuw nsw i64 %i.acg to i32
  %i.aci = or disjoint i32 %i.xw, %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 72
  store i32 %i.aci, ptr %i.acj, align 4, !tbaa !37
  %i.ack = add i64 %i.acf, -2
  %i.acl = and i64 %i.ack, %i.acf                 ; 3 uses
  %i.acm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acl, i1 true)
  %i.acn = trunc nuw nsw i64 %i.acm to i32
  %i.aco = or disjoint i32 %i.xw, %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 76
  store i32 %i.aco, ptr %i.acp, align 4, !tbaa !37
  %i.acq = icmp samesign ugt i64 %i.xy, 20
  br i1 %i.acq, label %.noexc104.i, label %.loopexit1659.i, !prof !108

.noexc104.i:                                      ; preds = %.noexc230.i
  %i.acr = add i64 %i.acl, -2
  %i.acs = and i64 %i.acr, %i.acl                 ; 3 uses
  %i.act = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acs, i1 true)
  %i.acu = trunc nuw nsw i64 %i.act to i32
  %i.acv = or disjoint i32 %i.xw, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 80
  store i32 %i.acv, ptr %i.acw, align 4, !tbaa !37
  %i.acx = add i64 %i.acs, -1
  %i.acy = and i64 %i.acx, %i.acs                 ; 3 uses
  %i.acz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acy, i1 true)
  %i.ada = trunc nuw nsw i64 %i.acz to i32
  %i.adb = or disjoint i32 %i.xw, %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 84
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !37
  %i.add = add i64 %i.acy, -2
  %i.ade = and i64 %i.add, %i.acy                 ; 3 uses
  %i.adf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ade, i1 true)
  %i.adg = trunc nuw nsw i64 %i.adf to i32
  %i.adh = or disjoint i32 %i.xw, %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 88
  store i32 %i.adh, ptr %i.adi, align 4, !tbaa !37
  %i.adj = add i64 %i.ade, -2
  %i.adk = and i64 %i.adj, %i.ade                 ; 3 uses
  %i.adl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.adk, i1 true)
  %i.adm = trunc nuw nsw i64 %i.adl to i32
  %i.adn = or disjoint i32 %i.xw, %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 92
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !37
  %i.adp = icmp samesign ugt i64 %i.xy, 24
  br i1 %i.adp, label %.noexc105.i.preheader, label %.loopexit1659.i, !prof !111

.noexc105.i.preheader:                            ; preds = %.noexc104.i
  %i.adq = add i64 %i.adk, -2
  %xtraiter90 = and i64 %i.adq, %i.adk            ; 2 uses
  %i.adr = icmp eq i64 %i.xy, 25
  br i1 %i.adr, label %.noexc105.i.epil.preheader, label %.noexc105.i.preheader.new

.noexc105.i.preheader.new:                        ; preds = %.noexc105.i.preheader
  %i.ads = and i64 %i.xy, 126
  %i.adt = add nsw i64 %i.ads, -26
  br label %.noexc105.i

.noexc105.i:                                      ; preds = %.noexc105.i, %.noexc105.i.preheader.new
  %indvars.iv1721.i = phi i64 [ 24, %.noexc105.i.preheader.new ], [ %indvars.iv.next1722.i.1, %.noexc105.i ] ; 3 uses
  %.016001689.i = phi i64 [ %xtraiter90, %.noexc105.i.preheader.new ], [ %i.aeg, %.noexc105.i ] ; 3 uses
  %niter94 = phi i64 [ 0, %.noexc105.i.preheader.new ], [ %niter94.next.1, %.noexc105.i ] ; 2 uses
  %i.adu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.016001689.i, i1 true)
  %i.adv = trunc nuw nsw i64 %i.adu to i32
  %i.adw = or disjoint i32 %i.xw, %i.adv
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %indvars.iv1721.i
  store i32 %i.adw, ptr %i.adx, align 4, !tbaa !37
  %i.ady = add i64 %.016001689.i, -1
  %i.adz = and i64 %i.ady, %.016001689.i          ; 3 uses
  %i.aea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.adz, i1 true)
  %i.aeb = trunc nuw nsw i64 %i.aea to i32
  %i.aec = or disjoint i32 %i.xw, %i.aeb
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %indvars.iv1721.i
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  store i32 %i.aec, ptr %i.aee, align 4, !tbaa !37
  %i.aef = add i64 %i.adz, -2
  %i.aeg = and i64 %i.aef, %i.adz                 ; 2 uses
  %indvars.iv.next1722.i.1 = add nuw nsw i64 %indvars.iv1721.i, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2
  %niter94.ncmp.1 = icmp eq i64 %niter94, %i.adt
  br i1 %niter94.ncmp.1, label %.loopexit1659.i.loopexit.unr-lcssa, label %.noexc105.i, !llvm.loop !207

.loopexit1659.i.loopexit.unr-lcssa:               ; preds = %.noexc105.i
  %5 = trunc i64 %i.xy to i1
  br i1 %5, label %.noexc105.i.epil.preheader, label %.loopexit1659.i

.noexc105.i.epil.preheader:                       ; preds = %.loopexit1659.i.loopexit.unr-lcssa, %.noexc105.i.preheader
  %indvars.iv1721.i.epil.init = phi i64 [ 24, %.noexc105.i.preheader ], [ %indvars.iv.next1722.i.1, %.loopexit1659.i.loopexit.unr-lcssa ]
  %.016001689.i.epil.init = phi i64 [ %xtraiter90, %.noexc105.i.preheader ], [ %i.aeg, %.loopexit1659.i.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i64 %i.xy to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.aeh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.016001689.i.epil.init, i1 true)
  %i.aei = trunc nuw nsw i64 %i.aeh to i32
  %i.aej = or disjoint i32 %i.xw, %i.aei
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %indvars.iv1721.i.epil.init
  store i32 %i.aej, ptr %i.aek, align 4, !tbaa !37
  br label %.loopexit1659.i

.loopexit1659.i:                                  ; preds = %.noexc105.i.epil.preheader, %.loopexit1659.i.loopexit.unr-lcssa, %.noexc104.i, %.noexc230.i, %.noexc202.i, %.noexc184.i, %.noexc156.i, %.noexc148.i
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.0.lcssa1775.i, i64 %i.xy
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %.loopexit1659.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i
  %.sroa.59.1.i = phi ptr [ %.sroa.59.0.lcssa1775.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i ], [ %i.ael, %.loopexit1659.i ] ; 29 uses
  %i.aem = xor i64 %i.tl, -1
  %i.aen = and i64 %i.aem, %i.th
  %i.aeo = or i64 %i.aen, %i.tf
  %i.aep = xor i64 %i.ri, %i.rm
  %i.aeq = xor i64 %i.aep, -1
  %i.aer = and i64 %i.aeo, %i.aeq                 ; 5 uses
  %i.aes = and i64 %i.rm, %i.ua
  %i.aet = or i64 %i.aes, %.sroa.148.0.lcssa1773.i
  %i.aeu = icmp eq i64 %i.aer, 0
  br i1 %i.aeu, label %.noexc.i, label %.noexc143.i

.noexc143.i:                                      ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.aev = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aer) ; 11 uses
  %i.aew = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aer, i1 true)
  %i.aex = or disjoint i64 %i.aew, %.sroa.11.0.lcssa1770.i
  %i.aey = trunc i64 %i.aex to i32
  store i32 %i.aey, ptr %.sroa.59.1.i, align 4, !tbaa !37
  %i.aez = add i64 %i.aer, -1
  %i.afa = and i64 %i.aez, %i.aer                 ; 3 uses
  %i.afb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afa, i1 true)
  %i.afc = or disjoint i64 %i.afb, %.sroa.11.0.lcssa1770.i
  %i.afd = trunc i64 %i.afc to i32
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 4
  store i32 %i.afd, ptr %i.afe, align 4, !tbaa !37
  %i.aff = add i64 %i.afa, -2
  %i.afg = and i64 %i.aff, %i.afa                 ; 3 uses
  %i.afh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afg, i1 true)
  %i.afi = or disjoint i64 %i.afh, %.sroa.11.0.lcssa1770.i
  %i.afj = trunc i64 %i.afi to i32
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 8
  store i32 %i.afj, ptr %i.afk, align 4, !tbaa !37
  %i.afl = add i64 %i.afg, -2
  %i.afm = and i64 %i.afl, %i.afg                 ; 3 uses
  %i.afn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afm, i1 true)
  %i.afo = or disjoint i64 %i.afn, %.sroa.11.0.lcssa1770.i
  %i.afp = trunc i64 %i.afo to i32
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 12
  store i32 %i.afp, ptr %i.afq, align 4, !tbaa !37
  %i.afr = icmp samesign ugt i64 %i.aev, 4
  br i1 %i.afr, label %.noexc161.i, label %.loopexit.i, !prof !108

.noexc161.i:                                      ; preds = %.noexc143.i
  %i.afs = add i64 %i.afm, -2
  %i.aft = and i64 %i.afs, %i.afm                 ; 3 uses
  %i.afu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aft, i1 true)
  %i.afv = or disjoint i64 %i.afu, %.sroa.11.0.lcssa1770.i
  %i.afw = trunc i64 %i.afv to i32
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 16
  store i32 %i.afw, ptr %i.afx, align 4, !tbaa !37
  %i.afy = add i64 %i.aft, -2
  %i.afz = and i64 %i.afy, %i.aft                 ; 3 uses
  %i.aga = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afz, i1 true)
  %i.agb = or disjoint i64 %i.aga, %.sroa.11.0.lcssa1770.i
  %i.agc = trunc i64 %i.agb to i32
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 20
  store i32 %i.agc, ptr %i.agd, align 4, !tbaa !37
  %i.age = add i64 %i.afz, -1
  %i.agf = and i64 %i.age, %i.afz                 ; 3 uses
  %i.agg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agf, i1 true)
  %i.agh = or disjoint i64 %i.agg, %.sroa.11.0.lcssa1770.i
  %i.agi = trunc i64 %i.agh to i32
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 24
  store i32 %i.agi, ptr %i.agj, align 4, !tbaa !37
  %i.agk = add i64 %i.agf, -2
  %i.agl = and i64 %i.agk, %i.agf                 ; 3 uses
  %i.agm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agl, i1 true)
  %i.agn = or disjoint i64 %i.agm, %.sroa.11.0.lcssa1770.i
  %i.ago = trunc i64 %i.agn to i32
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 28
  store i32 %i.ago, ptr %i.agp, align 4, !tbaa !37
  %i.agq = icmp samesign ugt i64 %i.aev, 8
  br i1 %i.agq, label %.noexc179.i, label %.loopexit.i, !prof !108

.noexc179.i:                                      ; preds = %.noexc161.i
  %i.agr = add i64 %i.agl, -2
  %i.ags = and i64 %i.agr, %i.agl                 ; 3 uses
  %i.agt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ags, i1 true)
  %i.agu = or disjoint i64 %i.agt, %.sroa.11.0.lcssa1770.i
  %i.agv = trunc i64 %i.agu to i32
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 32
  store i32 %i.agv, ptr %i.agw, align 4, !tbaa !37
  %i.agx = add i64 %i.ags, -2
  %i.agy = and i64 %i.agx, %i.ags                 ; 3 uses
  %i.agz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agy, i1 true)
  %i.aha = or disjoint i64 %i.agz, %.sroa.11.0.lcssa1770.i
  %i.ahb = trunc i64 %i.aha to i32
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 36
  store i32 %i.ahb, ptr %i.ahc, align 4, !tbaa !37
  %i.ahd = add i64 %i.agy, -2
  %i.ahe = and i64 %i.ahd, %i.agy                 ; 3 uses
  %i.ahf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahe, i1 true)
  %i.ahg = or disjoint i64 %i.ahf, %.sroa.11.0.lcssa1770.i
  %i.ahh = trunc i64 %i.ahg to i32
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 40
  store i32 %i.ahh, ptr %i.ahi, align 4, !tbaa !37
  %i.ahj = add i64 %i.ahe, -1
  %i.ahk = and i64 %i.ahj, %i.ahe                 ; 3 uses
  %i.ahl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahk, i1 true)
  %i.ahm = or disjoint i64 %i.ahl, %.sroa.11.0.lcssa1770.i
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 44
  store i32 %i.ahn, ptr %i.aho, align 4, !tbaa !37
  %i.ahp = icmp samesign ugt i64 %i.aev, 12
  br i1 %i.ahp, label %.noexc207.i, label %.loopexit.i, !prof !108

.noexc207.i:                                      ; preds = %.noexc179.i
  %i.ahq = add i64 %i.ahk, -2
  %i.ahr = and i64 %i.ahq, %i.ahk                 ; 3 uses
  %i.ahs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahr, i1 true)
  %i.aht = or disjoint i64 %i.ahs, %.sroa.11.0.lcssa1770.i
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 48
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !37
  %i.ahw = add i64 %i.ahr, -2
  %i.ahx = and i64 %i.ahw, %i.ahr                 ; 3 uses
  %i.ahy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahx, i1 true)
  %i.ahz = or disjoint i64 %i.ahy, %.sroa.11.0.lcssa1770.i
  %i.aia = trunc i64 %i.ahz to i32
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 52
  store i32 %i.aia, ptr %i.aib, align 4, !tbaa !37
  %i.aic = add i64 %i.ahx, -2
  %i.aid = and i64 %i.aic, %i.ahx                 ; 3 uses
  %i.aie = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aid, i1 true)
  %i.aif = or disjoint i64 %i.aie, %.sroa.11.0.lcssa1770.i
  %i.aig = trunc i64 %i.aif to i32
  %i.aih = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 56
  store i32 %i.aig, ptr %i.aih, align 4, !tbaa !37
  %i.aii = add i64 %i.aid, -2
  %i.aij = and i64 %i.aii, %i.aid                 ; 3 uses
  %i.aik = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aij, i1 true)
  %i.ail = or disjoint i64 %i.aik, %.sroa.11.0.lcssa1770.i
  %i.aim = trunc i64 %i.ail to i32
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 60
  store i32 %i.aim, ptr %i.ain, align 4, !tbaa !37
  %i.aio = icmp samesign ugt i64 %i.aev, 16
  br i1 %i.aio, label %.noexc225.i, label %.loopexit.i, !prof !108

.noexc225.i:                                      ; preds = %.noexc207.i
  %i.aip = add i64 %i.aij, -1
  %i.aiq = and i64 %i.aip, %i.aij                 ; 3 uses
  %i.air = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aiq, i1 true)
  %i.ais = or disjoint i64 %i.air, %.sroa.11.0.lcssa1770.i
  %i.ait = trunc i64 %i.ais to i32
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 64
  store i32 %i.ait, ptr %i.aiu, align 4, !tbaa !37
  %i.aiv = add i64 %i.aiq, -2
  %i.aiw = and i64 %i.aiv, %i.aiq                 ; 3 uses
  %i.aix = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aiw, i1 true)
  %i.aiy = or disjoint i64 %i.aix, %.sroa.11.0.lcssa1770.i
  %i.aiz = trunc i64 %i.aiy to i32
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 68
  store i32 %i.aiz, ptr %i.aja, align 4, !tbaa !37
  %i.ajb = add i64 %i.aiw, -2
  %i.ajc = and i64 %i.ajb, %i.aiw                 ; 3 uses
  %i.ajd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajc, i1 true)
  %i.aje = or disjoint i64 %i.ajd, %.sroa.11.0.lcssa1770.i
  %i.ajf = trunc i64 %i.aje to i32
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 72
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !37
  %i.ajh = add i64 %i.ajc, -2
  %i.aji = and i64 %i.ajh, %i.ajc                 ; 3 uses
  %i.ajj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aji, i1 true)
  %i.ajk = or disjoint i64 %i.ajj, %.sroa.11.0.lcssa1770.i
  %i.ajl = trunc i64 %i.ajk to i32
  %i.ajm = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 76
  store i32 %i.ajl, ptr %i.ajm, align 4, !tbaa !37
  %i.ajn = icmp samesign ugt i64 %i.aev, 20
  br i1 %i.ajn, label %.noexc111.i, label %.loopexit.i, !prof !108

.noexc111.i:                                      ; preds = %.noexc225.i
  %i.ajo = add i64 %i.aji, -2
  %i.ajp = and i64 %i.ajo, %i.aji                 ; 3 uses
  %i.ajq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajp, i1 true)
  %i.ajr = or disjoint i64 %i.ajq, %.sroa.11.0.lcssa1770.i
  %i.ajs = trunc i64 %i.ajr to i32
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 80
  store i32 %i.ajs, ptr %i.ajt, align 4, !tbaa !37
  %i.aju = add i64 %i.ajp, -1
  %i.ajv = and i64 %i.aju, %i.ajp                 ; 3 uses
  %i.ajw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajv, i1 true)
  %i.ajx = or disjoint i64 %i.ajw, %.sroa.11.0.lcssa1770.i
  %i.ajy = trunc i64 %i.ajx to i32
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 84
  store i32 %i.ajy, ptr %i.ajz, align 4, !tbaa !37
  %i.aka = add i64 %i.ajv, -2
  %i.akb = and i64 %i.aka, %i.ajv                 ; 3 uses
  %i.akc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akb, i1 true)
  %i.akd = or disjoint i64 %i.akc, %.sroa.11.0.lcssa1770.i
  %i.ake = trunc i64 %i.akd to i32
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 88
  store i32 %i.ake, ptr %i.akf, align 4, !tbaa !37
  %i.akg = add i64 %i.akb, -2
  %i.akh = and i64 %i.akg, %i.akb                 ; 3 uses
  %i.aki = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akh, i1 true)
  %i.akj = or disjoint i64 %i.aki, %.sroa.11.0.lcssa1770.i
  %i.akk = trunc i64 %i.akj to i32
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 92
  store i32 %i.akk, ptr %i.akl, align 4, !tbaa !37
  %i.akm = icmp samesign ugt i64 %i.aev, 24
  br i1 %i.akm, label %.noexc112.i.preheader, label %.loopexit.i, !prof !111

.noexc112.i.preheader:                            ; preds = %.noexc111.i
  %i.akn = add i64 %i.akh, -2
  %xtraiter95 = and i64 %i.akn, %i.akh            ; 2 uses
  %i.ako = icmp eq i64 %i.aev, 25
  br i1 %i.ako, label %.noexc112.i.epil.preheader, label %.noexc112.i.preheader.new

.noexc112.i.preheader.new:                        ; preds = %.noexc112.i.preheader
  %i.akp = and i64 %i.aev, 126
  %i.akq = add nsw i64 %i.akp, -26
  br label %.noexc112.i

.noexc112.i:                                      ; preds = %.noexc112.i, %.noexc112.i.preheader.new
  %indvars.iv1726.i = phi i64 [ 24, %.noexc112.i.preheader.new ], [ %indvars.iv.next1727.i.1, %.noexc112.i ] ; 3 uses
  %.015921691.i = phi i64 [ %xtraiter95, %.noexc112.i.preheader.new ], [ %i.ald, %.noexc112.i ] ; 3 uses
  %niter99 = phi i64 [ 0, %.noexc112.i.preheader.new ], [ %niter99.next.1, %.noexc112.i ] ; 2 uses
  %i.akr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015921691.i, i1 true)
  %i.aks = or disjoint i64 %i.akr, %.sroa.11.0.lcssa1770.i
  %i.akt = trunc i64 %i.aks to i32
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i
  store i32 %i.akt, ptr %i.aku, align 4, !tbaa !37
  %i.akv = add i64 %.015921691.i, -1
  %i.akw = and i64 %i.akv, %.015921691.i          ; 3 uses
  %i.akx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akw, i1 true)
  %i.aky = or disjoint i64 %i.akx, %.sroa.11.0.lcssa1770.i
  %i.akz = trunc i64 %i.aky to i32
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 4
  store i32 %i.akz, ptr %i.alb, align 4, !tbaa !37
  %i.alc = add i64 %i.akw, -2
  %i.ald = and i64 %i.alc, %i.akw                 ; 2 uses
  %indvars.iv.next1727.i.1 = add nuw nsw i64 %indvars.iv1726.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.akq
  br i1 %niter99.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.noexc112.i, !llvm.loop !207

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.noexc112.i
  %6 = trunc i64 %i.aev to i1
  br i1 %6, label %.noexc112.i.epil.preheader, label %.loopexit.i

.noexc112.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.noexc112.i.preheader
  %indvars.iv1726.i.epil.init = phi i64 [ 24, %.noexc112.i.preheader ], [ %indvars.iv.next1727.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.015921691.i.epil.init = phi i64 [ %xtraiter95, %.noexc112.i.preheader ], [ %i.ald, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.aev to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.ale = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015921691.i.epil.init, i1 true)
  %i.alf = or disjoint i64 %i.ale, %.sroa.11.0.lcssa1770.i
  %i.alg = trunc i64 %i.alf to i32
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i.epil.init
  store i32 %i.alg, ptr %i.alh, align 4, !tbaa !37
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc112.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.noexc111.i, %.noexc225.i, %.noexc207.i, %.noexc179.i, %.noexc161.i, %.noexc143.i
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %i.aev
  br label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.59.3.i = phi ptr [ %.sroa.59.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.ali, %.loopexit.i ]
  %.not.i.i53.i = icmp sgt i64 %i.rm, -1          ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i.i53.i, !prof !112
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !113

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.aet, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.n:                                             ; preds = %.thread.i
  %i.alj = load ptr, ptr %i.ps, align 8, !tbaa !109 ; 14 uses
  %i.alk = ptrtoint ptr %.sroa.59.3.i to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all
  %i.aln = lshr exact i64 %i.alm, 2               ; 2 uses
  %i.alo = trunc i64 %i.aln to i32
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.alo, ptr %i.alp, align 8, !tbaa !84
  %i.alq = trunc i64 %.01317561769.i to i32       ; 3 uses
  %i.alr = and i64 %i.aln, 4294967295
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.alr
  store i32 %i.alq, ptr %i.als, align 4, !tbaa !37
  %i.alt = load i32, ptr %i.alp, align 8, !tbaa !84
  %i.alu = add i32 %i.alt, 1
  %i.alv = zext i32 %i.alu to i64
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.alv
  store i32 %i.alq, ptr %i.alw, align 4, !tbaa !37
  %i.alx = load i32, ptr %i.alp, align 8, !tbaa !84
  %i.aly = add i32 %i.alx, 2
  %i.alz = zext i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.alz
  store i32 0, ptr %i.ama, align 4, !tbaa !37
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.amb, align 8, !tbaa !86
  %i.amc = load i32, ptr %i.alp, align 8, !tbaa !84 ; 6 uses
  %i.amd = icmp eq i32 %i.amc, 0
  br i1 %i.amd, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.o, !prof !108

bb.o:                                             ; preds = %bb.n
  %i.ame = add i32 %i.amc, -1                     ; 9 uses
  %i.amf = zext i32 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.amf
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !37
  %i.ami = zext i32 %i.amh to i64
  %i.amj = icmp ult i64 %.01317561769.i, %i.ami
  br i1 %i.amj, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.p, !prof !108

bb.p:                                             ; preds = %bb.o
  switch i32 %3, label %bb.av [
    i32 1, label %bb.q
    i32 2, label %bb.ah
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i53.i, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ame, ptr %i.alp, align 8, !tbaa !84
  %i.amk = icmp eq i32 %i.ame, 0
  br i1 %i.amk, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !108

..preheader.i_crit_edge:                          ; preds = %bb.r
  %.pre = add i32 %i.amc, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.q
  %.035.i1703.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.ame, %bb.q ] ; 2 uses
  %i.aml = phi i32 [ %i.ame, %..preheader.i_crit_edge ], [ %i.amc, %bb.q ] ; 3 uses
  %.not.i2781704.i = icmp eq i32 %.035.i1703.i.pre-phi, 0
  %.pre1739.i = load ptr, ptr %i.b, align 8, !tbaa !151 ; 3 uses
  br i1 %.not.i2781704.i, label %._crit_edge1710.i, label %.lr.ph1709.i

.lr.ph1709.i:                                     ; preds = %.preheader.i
  %i.amm = zext i32 %.035.i1703.i.pre-phi to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %.lr.ph1709.i
  %indvars.iv1734.i = phi i64 [ %i.amm, %.lr.ph1709.i ], [ %indvars.iv.next1735.i, %bb.z ] ; 4 uses
  %.035.in.i1707.i = phi i32 [ %i.aml, %.lr.ph1709.i ], [ %i.anh, %bb.z ]
  %.036.i1706.i = phi i32 [ 0, %.lr.ph1709.i ], [ %.238.i.i, %bb.z ] ; 7 uses
  %.039.i1705.i = phi i32 [ 0, %.lr.ph1709.i ], [ %.241.i.i, %bb.z ] ; 7 uses
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv1734.i
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !37
  %i.amp = zext i32 %i.amo to i64
  %i.amq = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.amp
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !36
  switch i8 %i.amr, label %bb.x [
    i8 58, label %bb.z
    i8 44, label %bb.z
    i8 125, label %bb.t
    i8 93, label %bb.u
    i8 123, label %bb.v
    i8 91, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.ams = add nsw i32 %.036.i1706.i, -1
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.amt = add nsw i32 %.039.i1705.i, -1
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.amu = add nsw i32 %.036.i1706.i, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.amv = add nsw i32 %.039.i1705.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s
  %.140.i.i = phi i32 [ %.039.i1705.i, %bb.s ], [ %.039.i1705.i, %bb.v ], [ %i.amv, %bb.w ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i1706.i, %bb.s ], [ %i.amu, %bb.v ], [ %.036.i1706.i, %bb.w ] ; 5 uses
  %i.amw = add i32 %.035.in.i1707.i, -2
  %i.amx = zext i32 %i.amw to i64
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.amx
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !37
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.ana
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !36
  switch i8 %i.anc, label %bb.y [
    i8 123, label %bb.z
    i8 91, label %bb.z
    i8 58, label %bb.z
    i8 44, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.and = trunc nuw i64 %indvars.iv1734.i to i32
  %i.ane = icmp ne i32 %.140.i.i, 0
  %i.anf = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.ane, i1 true, i1 %i.anf
  %spec.select1655.i = select i1 %or.cond.i.i, i32 %i.and, i32 %i.aml
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.u, %bb.t, %bb.s, %bb.s
  %.241.i.i = phi i32 [ %.039.i1705.i, %bb.s ], [ %i.amt, %bb.u ], [ %.039.i1705.i, %bb.t ], [ %.039.i1705.i, %bb.s ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i1706.i, %bb.s ], [ %.036.i1706.i, %bb.u ], [ %i.ams, %bb.t ], [ %.036.i1706.i, %bb.s ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ] ; 2 uses
  %indvars.iv.next1735.i = add nsw i64 %indvars.iv1734.i, -1 ; 2 uses
  %i.ang = and i64 %indvars.iv.next1735.i, 4294967295
  %.not.i278.i = icmp eq i64 %i.ang, 0
  %i.anh = trunc nuw i64 %indvars.iv1734.i to i32
  br i1 %.not.i278.i, label %._crit_edge1710.i, label %bb.s, !llvm.loop !209

._crit_edge1710.i:                                ; preds = %bb.z, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.z ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.z ] ; 5 uses
  %i.ani = load i32, ptr %i.alj, align 4, !tbaa !37 ; 2 uses
  %i.anj = zext i32 %i.ani to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !36
  switch i8 %i.anl, label %bb.ae [
    i8 125, label %bb.aa
    i8 93, label %bb.ab
    i8 123, label %bb.ac
    i8 91, label %bb.ad
  ]

bb.aa:                                            ; preds = %._crit_edge1710.i
  %i.anm = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge1710.i
  %i.ann = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge1710.i
  %i.ano = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge1710.i
  %i.anp = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %._crit_edge1710.i
  %.443.i.i = phi i32 [ %.039.i.lcssa.i, %._crit_edge1710.i ], [ %.039.i.lcssa.i, %bb.aa ], [ %i.ann, %bb.ab ], [ %.039.i.lcssa.i, %bb.ac ], [ %i.anp, %bb.ad ]
  %.4.i.i = phi i32 [ %.036.i.lcssa.i, %._crit_edge1710.i ], [ %i.anm, %bb.aa ], [ %.036.i.lcssa.i, %bb.ab ], [ %i.ano, %bb.ac ], [ %.036.i.lcssa.i, %bb.ad ]
  %i.anq = icmp eq i32 %.443.i.i, 0
  %i.anr = icmp eq i32 %.4.i.i, 0
  %or.cond4.i.not.i = select i1 %i.anq, i1 %i.anr, i1 false
  br i1 %or.cond4.i.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ans = icmp eq i32 %i.ani, 0
  br i1 %i.ans, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ag
end_hunk_4
begin_hunk_5_@_ZNK8simdjson8westmere25dom_parser_implementation19parse_wobbly_stringEPKhPh:bb.a
  %i.cu = trunc i32 %i.ax to i8
  %i.cv = and i8 %i.cu, 63
  %i.cw = or disjoint i8 %i.cv, -128
  %i.cx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

.thread87:                                        ; preds = %bb.i
  %i.cy = icmp ult i32 %i.ax, 65536
  br i1 %i.cy, label %.thread87.thread, label %bb.k

.thread87.thread:                                 ; preds = %bb.e, %bb.f, %.thread87
  %i.cz = lshr i32 %i.ax, 12
  %i.da = trunc nuw nsw i32 %i.cz to i8
  %i.db = or disjoint i8 %i.da, -32
  store i8 %i.db, ptr %i.x, align 1, !tbaa !36
  %i.dc = lshr i32 %i.ax, 6
  %i.dd = trunc i32 %i.dc to i8
  %i.de = and i8 %i.dd, 63
  %i.df = or disjoint i8 %i.de, -128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !36
  %i.dh = trunc i32 %i.ax to i8
  %i.di = and i8 %i.dh, 63
  %i.dj = or disjoint i8 %i.di, -128
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.k:                                             ; preds = %.thread87
  %i.dl = icmp ult i32 %i.ax, 1114112
  br i1 %i.dl, label %bb.l, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit

bb.l:                                             ; preds = %.thread126, %bb.k
  %.58591124130 = phi ptr [ %i.cn, %.thread126 ], [ %i.ay, %bb.k ]
  %.2.i288690125129 = phi i32 [ %i.cm, %.thread126 ], [ %i.ax, %bb.k ] ; 4 uses
  %i.dm = lshr i32 %.2.i288690125129, 6
  %i.dn = lshr i32 %.2.i288690125129, 12
  %i.do = lshr i32 %.2.i288690125129, 18
  %i.dp = trunc i32 %.2.i288690125129 to i8
  %i.dq = trunc i32 %i.dm to i8
  %i.dr = trunc i32 %i.dn to i8
  %i.ds = trunc nsw i32 %i.do to i8
  %i.dt = insertelement <4 x i8> poison, i8 %i.ds, i64 0
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dr, i64 1
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dq, i64 2
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.dp, i64 3
  %i.dx = and <4 x i8> %i.dw, <i8 -1, i8 63, i8 63, i8 63>
  %i.dy = or disjoint <4 x i8> %i.dx, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.dy, ptr %i.x, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread: ; preds = %bb.h, %bb.j, %.thread87.thread, %bb.l
  %.584.ph = phi ptr [ %.58591124130, %bb.l ], [ %i.ay, %.thread87.thread ], [ %i.ay, %bb.j ], [ %i.ay, %bb.h ]
  %.0.i.i.ph = phi i64 [ 4, %bb.l ], [ 3, %.thread87.thread ], [ 2, %bb.j ], [ 1, %bb.h ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i.i.ph
  br label %.noexc.backedge

bb.m:                                             ; preds = %bb.c
  %i.ea = zext i8 %i.u to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !36  ; 2 uses
  %.not.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 %i.q
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %.077, i64 %i.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.s
  br label %.noexc.backedge

.noexc.backedge:                                  ; preds = %bb.n, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread, %bb.o
  %.077.be = phi ptr [ %.584.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.eh, %bb.o ], [ %i.ef, %bb.n ]
  %.0.be = phi ptr [ %i.dz, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.ei, %bb.o ], [ %i.eg, %bb.n ]
  br label %.noexc

bb.o:                                             ; preds = %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %.077, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 32
  br label %.noexc.backedge

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit: ; preds = %bb.m, %bb.k, %.noexc2
  %.5.i.ph = phi ptr [ %i.o, %.noexc2 ], [ null, %bb.k ], [ null, %bb.m ]
  ret ptr %.5.i.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson8westmere25dom_parser_implementation5parseEPKhmRNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #20 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #41 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK8simdjson8fallback14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(96) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 96, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8simdjson8fallback25dom_parser_implementationE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !88     ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #41, !inline_history !2
  %.pr = load ptr, ptr %3, align 8, !tbaa !88
  br label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  %i.l = phi ptr [ %i.a, %bb.c ], [ %.pr, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i ] ; 3 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i64 noundef %1) #41 ; 2 uses
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(49) %i.q, i64 noundef %2) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %.2 = phi i32 [ 2, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.u, %bb.e ], [ %i.p, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZN8simdjson8fallback25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.simdjson::fallback::(anonymous namespace)::stage1::structural_scanner", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.b, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef nonnull align 8 dereferenceable(256) @constinit, i64 256, i1 false), !tbaa.struct !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 12 uses
  %i.e = trunc i64 %2 to i32                      ; 18 uses
  %.not182 = icmp eq i32 %i.e, 0
  br i1 %.not182, label %._crit_edge140, label %.noexc.preheader.lr.ph

.noexc.preheader.lr.ph:                           ; preds = %bb.a
  %i.f = icmp ne i32 %3, 0
  %.not83 = icmp eq i32 %3, 0                     ; 2 uses
  %i.g = and i64 %2, 4294967295                   ; 5 uses
  %i.h = add i32 %i.e, -1
  br label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.preheader.lr.ph, %.critedge.i
  %i.i = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.em, %.critedge.i ] ; 6 uses
  %.08.i139 = phi i8 [ 0, %.noexc.preheader.lr.ph ], [ %.1.i, %.critedge.i ] ; 6 uses
  %i.j = phi ptr [ %i.d, %.noexc.preheader.lr.ph ], [ %i.ep, %.critedge.i ] ; 4 uses
  %i.k = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.eq, %.critedge.i ] ; 2 uses
  %i.l = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.en, %.critedge.i ] ; 7 uses
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36
  %5 = trunc i8 %i.r to i1
  br i1 %5, label %.lr.ph.preheader, label %.noexc._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc.preheader
  %indvars.iv.next235 = add nuw nsw i64 %i.m, 1   ; 3 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next235, %i.g
  br i1 %i.s, label %.noexc.lr.ph, label %._crit_edge, !llvm.loop !211

.noexc.lr.ph:                                     ; preds = %.lr.ph.preheader
  br label %.noexc, !llvm.loop !211

.noexc:                                           ; preds = %.noexc.lr.ph, %.lr.ph
  %indvars.iv.next236 = phi i64 [ %indvars.iv.next235, %.noexc.lr.ph ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next236
  %i.u = load i8, ptr %i.t, align 1, !tbaa !36
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !36
  %6 = trunc i8 %i.x to i1
  br i1 %6, label %.lr.ph, label %.noexc._crit_edge.loopexit, !llvm.loop !211

.lr.ph:                                           ; preds = %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next236, 1 ; 3 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.y, label %.noexc, label %.lr.ph.._crit_edge_crit_edge, !llvm.loop !211

.lr.ph.._crit_edge_crit_edge:                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph.._crit_edge_crit_edge, %.lr.ph.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %.lr.ph.._crit_edge_crit_edge ], [ %indvars.iv.next235, %.lr.ph.preheader ]
  %i.z = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.noexc._crit_edge, !llvm.loop !211

.noexc._crit_edge.loopexit:                       ; preds = %.noexc
  %i.aa = trunc nuw i64 %indvars.iv.next236 to i32
  br label %.noexc._crit_edge

.noexc._crit_edge:                                ; preds = %.noexc._crit_edge.loopexit, %._crit_edge, %.noexc.preheader
  %i.ab = phi i32 [ %i.z, %._crit_edge ], [ %i.k, %.noexc.preheader ], [ %i.aa, %.noexc._crit_edge.loopexit ] ; 8 uses
  %.not.i = icmp ult i32 %i.ab, %i.e
  br i1 %.not.i, label %bb.b, label %._crit_edge140.loopexit

bb.b:                                             ; preds = %.noexc._crit_edge
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !36  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 34
  br i1 %i.af, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !37
  %i.ag = add nuw i32 %i.ab, 1                    ; 3 uses
  %i.ah = icmp ult i32 %i.ag, %i.e
  br i1 %i.ah, label %.preheader87, label %.noexc3

.preheader87:                                     ; preds = %bb.c, %.noexc7
  %i.ai = phi i32 [ %i.dm, %.noexc7 ], [ %i.l, %bb.c ] ; 12 uses
  %i.aj = phi i32 [ %i.dn, %.noexc7 ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ak = phi i32 [ %i.dl, %.noexc7 ], [ %i.i, %bb.c ] ; 12 uses
  %i.al = zext i32 %i.aj to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !36
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.ar = and i8 %i.aq, 12
  %.not82111 = icmp eq i8 %i.ar, 0
  br i1 %.not82111, label %.lr.ph112.preheader, label %._crit_edge116

.lr.ph112.preheader:                              ; preds = %.preheader87
  %indvars.iv.next194242 = add nuw nsw i64 %i.al, 1 ; 3 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next194242, %i.g
  br i1 %i.as, label %.lr.ph244, label %._crit_edge113.a, !llvm.loop !212

.lr.ph244:                                        ; preds = %.lr.ph112.preheader
  br label %bb.d, !llvm.loop !212

bb.d:                                             ; preds = %.lr.ph244, %.lr.ph112
  %indvars.iv.next194243 = phi i64 [ %indvars.iv.next194242, %.lr.ph244 ], [ %indvars.iv.next194.a, %.lr.ph112 ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next194243
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !36
  %i.ay = and i8 %i.ax, 12
  %.not82 = icmp eq i8 %i.ay, 0
  br i1 %.not82, label %.lr.ph112, label %._crit_edge116.loopexit, !llvm.loop !212

.lr.ph112:                                        ; preds = %bb.d
  %indvars.iv.next194.a = add nuw nsw i64 %indvars.iv.next194243, 1 ; 3 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next194.a, %i.g
  br i1 %i.az, label %bb.d, label %.lr.ph112.._crit_edge113_crit_edge, !llvm.loop !212

.lr.ph112.._crit_edge113_crit_edge:               ; preds = %.lr.ph112
  br label %._crit_edge113.a, !llvm.loop !212

._crit_edge113.a:                                 ; preds = %.lr.ph112.._crit_edge113_crit_edge, %.lr.ph112.preheader
  %indvars.iv.next194.lcssa = phi i64 [ %indvars.iv.next194.a, %.lr.ph112.._crit_edge113_crit_edge ], [ %indvars.iv.next194242, %.lr.ph112.preheader ]
  %i.ba = trunc nuw i64 %indvars.iv.next194.lcssa to i32
  br label %._crit_edge116, !llvm.loop !212

._crit_edge116.loopexit:                          ; preds = %bb.d
  %i.bb = trunc nuw i64 %indvars.iv.next194243 to i32
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %._crit_edge113.a, %.preheader87
  %i.bc = phi i32 [ %i.ba, %._crit_edge113.a ], [ %i.aj, %.preheader87 ], [ %i.bb, %._crit_edge116.loopexit ] ; 20 uses
  %.not.i6 = icmp ult i32 %i.bc, %i.e
  br i1 %.not.i6, label %bb.e, label %.noexc3

bb.e:                                             ; preds = %._crit_edge116
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36  ; 8 uses
  switch i8 %i.bf, label %bb.g [
    i8 34, label %.noexc3
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bg = add i32 %i.bc, 2
  br label %.noexc7

bb.g:                                             ; preds = %bb.e
  %.not4.i = icmp sgt i8 %i.bf, -1
  br i1 %.not4.i, label %bb.ae, label %bb.h, !prof !110

bb.h:                                             ; preds = %bb.g
  %i.bh = zext i8 %i.bf to i32                    ; 3 uses
  %i.bi = and i32 %i.bh, 64
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %bb.j, !prof !108

bb.i:                                             ; preds = %bb.h
  %i.bk = add nuw i32 %i.bc, 1
  br label %.noexc7

bb.j:                                             ; preds = %bb.h
  %i.bl = and i32 %i.bh, 32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bn = add nuw i32 %i.bc, 1                    ; 3 uses
  %.not221 = icmp ult i32 %i.bc, %i.e
  br i1 %.not221, label %bb.l, label %bb.m, !prof !110

bb.l:                                             ; preds = %bb.k
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !36
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %.noexc7, label %bb.n, !prof !108

bb.m:                                             ; preds = %bb.k
  br i1 %.not83, label %.noexc7, label %.noexc3

bb.n:                                             ; preds = %bb.l
  %i.bs = icmp samesign ult i8 %i.bf, -62         ; 2 uses
  %spec.select168.a = select i1 %i.bs, i32 11, i32 %i.ak
  %spec.select169.a = select i1 %i.bs, i32 11, i32 %i.ai
  %i.bt = add i32 %i.bc, 2
  br label %.noexc7

bb.o:                                             ; preds = %bb.j
  %i.bu = and i32 %i.bh, 16
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bw = add i32 %i.bc, 2                        ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, %i.e
  br i1 %i.bx, label %.critedge2.i, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.by = add nuw i32 %i.bc, 1                    ; 3 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !36  ; 3 uses
  %i.cc = icmp slt i8 %i.cb, -64
  br i1 %i.cc, label %bb.r, label %.noexc7, !prof !110

bb.r:                                             ; preds = %bb.q
  %i.cd = zext i32 %i.bw to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !36
  %i.cg = icmp sgt i8 %i.cf, -65
  br i1 %i.cg, label %.noexc7, label %bb.s, !prof !108

.critedge2.i:                                     ; preds = %bb.p
  br i1 %.not83, label %.critedge2.i..critedge2.i.thread_crit_edge, label %.noexc3

.critedge2.i..critedge2.i.thread_crit_edge:       ; preds = %.critedge2.i
  %.pre = add nuw i32 %i.bc, 1
  br label %.noexc7

bb.s:                                             ; preds = %bb.r
  switch i8 %i.bf, label %.thread [
    i8 -32, label %bb.t
    i8 -19, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ch = icmp samesign ult i8 %i.cb, -96         ; 2 uses
  %spec.select170.a = select i1 %i.ch, i32 11, i32 %i.ak
  %spec.select171 = select i1 %i.ch, i32 11, i32 %i.ai
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ci = icmp samesign ugt i8 %i.cb, -97         ; 2 uses
  %spec.select172 = select i1 %i.ci, i32 11, i32 %i.ak
  %spec.select173 = select i1 %i.ci, i32 11, i32 %i.ai
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.s
  %i.cj = phi i32 [ %spec.select170.a, %bb.t ], [ %spec.select172, %bb.u ], [ %i.ak, %bb.s ]
  %i.ck = phi i32 [ %spec.select171, %bb.t ], [ %spec.select173, %bb.u ], [ %i.ai, %bb.s ]
  %i.cl = add i32 %i.bc, 3
  br label %.noexc7
end_hunk_5
begin_hunk_6_@_ZN8simdjson8internal9dtoa_impl16grisu2_digit_genEPcRiS3_NS1_5diyfpES4_S4_:bb.a
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.as, align 1, !tbaa !36
  %i.ba = icmp uge i64 %i.at, %i.f
  %i.bb = sub i64 %i.b, %i.at
  %.not.i = icmp ult i64 %i.bb, %i.am
  %or.cond.i = or i1 %i.ba, %.not.i
  br i1 %or.cond.i, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit, label %bb.l, !llvm.loop !221

bb.n:                                             ; preds = %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit
  %i.bc = udiv i32 %.077108, 10
  br label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit

_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit: ; preds = %.critedge2.i, %bb.m, %bb.n
  %.1 = phi i32 [ %i.bc, %bb.n ], [ %.077108, %bb.m ], [ %.077108, %.critedge2.i ]
  br i1 %.not58, label %bb.j, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, !llvm.loop !220

.preheader:                                       ; preds = %bb.j, %.preheader
  %.055 = phi i64 [ %i.bf, %.preheader ], [ %i.m, %bb.j ]
  %.053 = phi i64 [ %i.bo, %.preheader ], [ %i.f, %bb.j ]
  %.051 = phi i32 [ %i.bm, %.preheader ], [ 0, %bb.j ]
  %.0 = phi i64 [ %i.bn, %.preheader ], [ %i.b, %bb.j ]
  %i.bd = mul i64 %.055, 10                       ; 2 uses
  %i.be = lshr i64 %i.bd, %i.h
  %i.bf = and i64 %i.bd, %i.l                     ; 5 uses
  %i.bg = trunc i64 %i.be to i8
  %i.bh = add i8 %i.bg, 48
  %i.bi = load i32, ptr %1, align 4, !tbaa !37    ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %1, align 4, !tbaa !37
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !36
  %i.bm = add nuw nsw i32 %.051, 1                ; 2 uses
  %i.bn = mul i64 %.0, 10                         ; 4 uses
  %i.bo = mul i64 %.053, 10                       ; 6 uses
  %.not = icmp ugt i64 %i.bf, %i.bn
  br i1 %.not, label %.preheader, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.bp = load i32, ptr %2, align 4, !tbaa !37
  %i.bq = sub nsw i32 %i.bp, %i.bm
  store i32 %i.bq, ptr %2, align 4, !tbaa !37
  %i.br = icmp uge i64 %i.bf, %i.bo
  %i.bs = sub nuw i64 %i.bn, %i.bf
  %.not21.i61 = icmp ult i64 %i.bs, %i.i
  %or.cond22.i62 = or i1 %i.br, %.not21.i61
  br i1 %or.cond22.i62, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.o
  %i.bt = load i32, ptr %1, align 4, !tbaa !37
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %0, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge2.i65, %.lr.ph.i63
  %.023.i64 = phi i64 [ %i.bf, %.lr.ph.i63 ], [ %i.bx, %.critedge2.i65 ] ; 2 uses
  %i.bx = add i64 %.023.i64, %i.i                 ; 5 uses
  %i.by = icmp ult i64 %i.bx, %i.bo
  br i1 %i.by, label %.critedge2.i65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = sub nuw i64 %i.bo, %.023.i64
  %i.ca = sub nuw i64 %i.bx, %i.bo
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %.critedge2.i65, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68

.critedge2.i65:                                   ; preds = %bb.q, %bb.p
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !36
  %i.cd = add i8 %i.cc, -1
  store i8 %i.cd, ptr %i.bw, align 1, !tbaa !36
  %i.ce = icmp uge i64 %i.bx, %i.bo
  %i.cf = sub i64 %i.bn, %i.bx
  %.not.i66 = icmp ult i64 %i.cf, %i.i
  %or.cond.i67 = or i1 %i.ce, %.not.i66
  br i1 %or.cond.i67, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %bb.p, !llvm.loop !221

_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68: ; preds = %bb.k, %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit, %.critedge2.i65, %bb.q, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !43
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 5 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = zext i8 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ 60, %.lr.ph ] ; 2 uses
  tail call void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %i.p)
  %i.q = load i32, ptr %i.c, align 4, !tbaa !44   ; 4 uses
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
  %i.v = load i8, ptr %i.s, align 2, !tbaa !36    ; 2 uses
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
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !36
  %i.ae = zext i8 %i.ad to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.045 = phi i32 [ %i.y, %bb.h ], [ %i.ae, %bb.j ], [ 60, %bb.i ] ; 2 uses
  tail call void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %.045)
  %i.af = load i32, ptr %i.c, align 4, !tbaa !44  ; 3 uses
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
  %i.ao = load i32, ptr %0, align 4, !tbaa !43    ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread76, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !44  ; 10 uses
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
  %i.av = icmp eq i32 %i.aq, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %1 = and i32 %i.aq, 30
  %unroll_iter = zext nneg i32 %1 to i64
  br label %bb.p

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %2 = trunc i32 %i.aq to i1
  br i1 %2, label %.epil.preheader, label %._crit_edge.i

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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
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
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !36
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
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !36
  %i.bp = zext i8 %i.bo to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bq = phi i64 [ %i.bp, %bb.s ], [ 0, %bb.r ]
  %i.br = add i64 %i.bq, %i.bl                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !0

bb.u:                                             ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bt = zext nneg i32 %i.aq to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !36
  %.fr.i = freeze i8 %i.bv                        ; 2 uses
  %i.bw = icmp eq i8 %.fr.i, 5
  %i.bx = add nuw nsw i32 %i.aq, 1
  %i.by = icmp eq i32 %i.bx, %i.ao
  %or.cond.i = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !45, !range !50, !noundef !51
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.thread35.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not42.i, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit, label %.split.i

.split.i:                                         ; preds = %bb.w
  %i.cc = getelementptr i8, ptr %i.bu, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36
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
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.c to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !48
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
  store i64 %spec.select9.i.i, ptr %1, align 8, !tbaa !123
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %spec.select.i = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  %. = select i1 %spec.select.i, i32 0, i32 9
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_6
