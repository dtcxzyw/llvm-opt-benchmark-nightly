Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_strfilter:bb.a
.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ], [ 1, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @nk_str_match_here(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !56      ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %nk_str_match_star.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.c = phi i8 [ %i.e, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr1929 = phi ptr [ %i.x, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %.tr28 = phi ptr [ %i.d, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  %.fr41 = freeze i8 %i.c                         ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr28, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56    ; 3 uses
  %i.f = icmp eq i8 %i.e, 42
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.tr28, i64 2 ; 3 uses
  %i.h = icmp eq i8 %.fr41, 46
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.i = tail call fastcc i32 @nk_str_match_here(ptr noundef nonnull %i.g, ptr noundef %.tr1929), !inline_history !676
  %.not.i.us33 = icmp eq i32 %i.i, 0
  br i1 %.not.i.us33, label %.lr.ph35, label %nk_str_match_star.exit

bb.c:                                             ; preds = %.lr.ph35
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.us34, i64 1 ; 2 uses
  %i.k = tail call fastcc i32 @nk_str_match_here(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j), !inline_history !676
  %.not.i.us = icmp eq i32 %i.k, 0
  br i1 %.not.i.us, label %.lr.ph35, label %nk_str_match_star.exit

.lr.ph35:                                         ; preds = %.split.us, %bb.c
  %.0.i.us34 = phi ptr [ %i.j, %bb.c ], [ %.tr1929, %.split.us ] ; 2 uses
  %i.l = load i8, ptr %.0.i.us34, align 1, !tbaa !56
  %.not8.i.us = icmp eq i8 %i.l, 0
  br i1 %.not8.i.us, label %nk_str_match_star.exit, label %bb.c

.split:                                           ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %.tr1929, %bb.b ] ; 3 uses
  %i.m = tail call fastcc i32 @nk_str_match_here(ptr noundef nonnull %i.g, ptr noundef %.0.i), !inline_history !676
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.d, label %nk_str_match_star.exit

bb.d:                                             ; preds = %.split
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.p = icmp eq i8 %.fr41, %i.n
  br i1 %i.p, label %.split, label %nk_str_match_star.exit, !llvm.loop !677

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp eq i8 %.fr41, 36
  %i.r = icmp eq i8 %i.e, 0                       ; 2 uses
  %or.cond = and i1 %i.q, %i.r
  %i.s = load i8, ptr %.tr1929, align 1, !tbaa !56 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0                       ; 2 uses
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i1 %i.t to i32
  br label %nk_str_match_star.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.t, label %nk_str_match_star.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq i8 %.fr41, 46
  %i.w = icmp eq i8 %.fr41, %i.s
  %or.cond18 = or i1 %i.v, %i.w
  br i1 %or.cond18, label %tailrecurse, label %nk_str_match_star.exit

tailrecurse:                                      ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.tr1929, i64 1
  br i1 %i.r, label %nk_str_match_star.exit, label %.lr.ph

nk_str_match_star.exit:                           ; preds = %tailrecurse, %bb.h, %bb.g, %.split, %bb.d, %bb.c, %.lr.ph35, %bb.a, %.split.us, %bb.f
  %.0 = phi i32 [ %i.u, %bb.f ], [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %.split.us ], [ 1, %.split ], [ 0, %.lr.ph35 ], [ 0, %bb.d ], [ 0, %bb.g ], [ 1, %tailrecurse ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @nk_strmatch_fuzzy_text(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.072127 = phi i32 [ 0, %.lr.ph.preheader ], [ %.5, %bb.i ]
  %.076126 = phi i32 [ 0, %.lr.ph.preheader ], [ %.379, %bb.i ] ; 4 uses
  %.080125 = phi ptr [ null, %.lr.ph.preheader ], [ %.383, %bb.i ] ; 4 uses
  %.084124 = phi i1 [ false, %.lr.ph.preheader ], [ %.not102, %bb.i ]
  %.085123 = phi i1 [ true, %.lr.ph.preheader ], [ %or.cond.i116, %bb.i ]
  %.086122 = phi i32 [ 0, %.lr.ph.preheader ], [ %.187, %bb.i ]
  %.089119 = phi ptr [ %2, %.lr.ph.preheader ], [ %.291, %bb.i ] ; 4 uses
  %i.e = load i8, ptr %.089119, align 1, !tbaa !56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56    ; 6 uses
  %i.h = sext i8 %i.e to i32                      ; 6 uses
  %.not97 = icmp eq i8 %i.e, 0                    ; 2 uses
  br i1 %.not97, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %i.h, -65
  %or.cond.i = icmp ult i32 %i.i, 26
  %i.j = add nuw nsw i32 %i.h, -162
  %i.k = select i1 %or.cond.i, i32 %i.j, i32 %i.h
  %i.l = sext i8 %i.g to i32                      ; 3 uses
  %i.m = add nsw i32 %i.l, -65
  %or.cond.i110 = icmp ult i32 %i.m, 26
  %i.n = add nuw nsw i32 %i.l, -162
  %i.o = select i1 %or.cond.i110, i32 %i.n, i32 %i.l
  %i.p = icmp eq i32 %i.k, %i.o
  %i.q = freeze i1 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %cond.fr135 = phi i1 [ false, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.not117 = icmp eq ptr %.080125, null
  br i1 %.not117, label %.thread149, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %.080125, align 1, !tbaa !56
  %i.s = sext i8 %i.r to i32                      ; 6 uses
  %i.t = add nsw i32 %i.s, -97
  %or.cond.i111 = icmp ult i32 %i.t, 26
  %i.u = add nsw i32 %i.s, -32
  %i.v = select i1 %or.cond.i111, i32 %i.u, i32 %i.s
  %i.w = sext i8 %i.g to i32                      ; 3 uses
  %i.x = add nsw i32 %i.w, -97
  %or.cond.i112 = icmp ult i32 %i.x, 26
  %i.y = add nsw i32 %i.w, -32
  %i.z = select i1 %or.cond.i112, i32 %i.y, i32 %i.w
  %i.aa = icmp eq i32 %i.v, %i.z                  ; 3 uses
  br i1 %.not97, label %.critedge, label %.split

.split:                                           ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -65
  %or.cond.i113 = icmp ult i32 %i.ab, 26
  %i.ac = add nuw nsw i32 %i.s, -162
  %i.ad = select i1 %or.cond.i113, i32 %i.ac, i32 %i.s
  %i.ae = add nsw i32 %i.h, -65
  %or.cond.i114 = icmp ult i32 %i.ae, 26
  %i.af = add nuw nsw i32 %i.h, -162
  %i.ag = select i1 %or.cond.i114, i32 %i.af, i32 %i.h
  %i.ah = icmp eq i32 %i.ad, %i.ag
  %.fr = freeze i1 %i.ah
  %i.ai = or i1 %cond.fr135, %.fr
  br i1 %i.ai, label %.split152, label %.thread149

.critedge:                                        ; preds = %bb.d
  br i1 %cond.fr135, label %.split152, label %.thread149

.split152:                                        ; preds = %.split, %.critedge
  br label %.thread149

.thread149:                                       ; preds = %.split, %.critedge, %bb.c, %.split152
  %i.aj = phi i32 [ 0, %.split152 ], [ %.076126, %bb.c ], [ %.076126, %.critedge ], [ %.076126, %.split ] ; 3 uses
  %i.ak = phi i1 [ %i.aa, %.split152 ], [ false, %bb.c ], [ %i.aa, %.critedge ], [ %i.aa, %.split ]
  %i.al = phi ptr [ null, %.split152 ], [ null, %bb.c ], [ %.080125, %.critedge ], [ %.080125, %.split ] ; 3 uses
  %i.am = phi i32 [ %.076126, %.split152 ], [ 0, %bb.c ], [ 0, %.critedge ], [ 0, %.split ]
  %.1 = add nsw i32 %i.am, %.072127               ; 3 uses
  %or.cond7 = select i1 %cond.fr135, i1 true, i1 %i.ak
  br i1 %or.cond7, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread149
  %i.an = icmp eq ptr %.089119, %2
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = trunc i64 %indvars.iv to i32
  %i.ap = mul i32 %i.ao, -3
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 -9)
  %i.aq = add nsw i32 %.1, %spec.store.select
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.aq, %bb.f ], [ %.1, %bb.e ]
  %.not98 = icmp eq i32 %.086122, 0
  %spec.select = select i1 %.not98, i32 0, i32 5  ; 2 uses
  %i.ar = or disjoint i32 %spec.select, 10
  %.174 = select i1 %.084124, i32 %spec.select, i32 %i.ar ; 2 uses
  %4 = sext i8 %i.g to i32                        ; 2 uses
  %5 = add nsw i32 %4, -91
  %or.cond.i115 = icmp ult i32 %5, -26
  %i.as = add nuw nsw i32 %.174, 10
  %i.at = select i1 %.085123, i1 true, i1 %or.cond.i115
  %.275 = select i1 %i.at, i32 %.174, i32 %i.as   ; 2 uses
  %spec.select107.idx = zext i1 %cond.fr135 to i64
  %spec.select107 = getelementptr inbounds nuw i8, ptr %.089119, i64 %spec.select107.idx
  %.not104 = icmp sge i32 %.275, %i.aj            ; 2 uses
  %.not105 = icmp ne ptr %i.al, null
  %.282 = select i1 %.not104, ptr %i.f, ptr %i.al
  %.278 = tail call i32 @llvm.smax.i32(i32 %.275, i32 %i.aj)
  %narrow = select i1 %.not104, i1 %.not105, i1 false
  %spec.select108 = sext i1 %narrow to i32
  %.4 = add nsw i32 %.2, %spec.select108
  br label %bb.i

bb.h:                                             ; preds = %.thread149
  %i.au = add nsw i32 %.1, -1
  %.pre = sext i8 %i.g to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i32 [ %.pre, %bb.h ], [ %4, %bb.g ]
  %.291 = phi ptr [ %.089119, %bb.h ], [ %spec.select107, %bb.g ] ; 2 uses
  %.187 = phi i32 [ 0, %bb.h ], [ 1, %bb.g ]
  %.383 = phi ptr [ %i.al, %bb.h ], [ %.282, %bb.g ] ; 2 uses
  %.379 = phi i32 [ %i.aj, %bb.h ], [ %.278, %bb.g ] ; 2 uses
  %.5 = phi i32 [ %i.au, %bb.h ], [ %.4, %bb.g ]  ; 2 uses
  %6 = add nsw i32 %.pre-phi, -123
  %or.cond.i116 = icmp ult i32 %6, -26
  %i.av = icmp ne i8 %i.g, 95
  %i.aw = icmp ne i8 %i.g, 32
  %.not102 = and i1 %i.av, %i.aw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !678

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.ax = icmp eq ptr %.383, null
  %i.ay = select i1 %i.ax, i32 0, i32 %.379
  %i.az = add nsw i32 %.5, %i.ay
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.089.lcssa = phi ptr [ %2, %.preheader ], [ %.291, %._crit_edge.loopexit ]
  %spec.select109 = phi i32 [ 0, %.preheader ], [ %i.az, %._crit_edge.loopexit ]
  %i.ba = load i8, ptr %.089.lcssa, align 1, !tbaa !56
  %.not95 = icmp eq i8 %i.ba, 0
  br i1 %.not95, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %.not96 = icmp eq ptr %3, null
  br i1 %.not96, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %spec.select109, ptr %3, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %._crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge ], [ 1, %bb.k ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @nk_strmatch_fuzzy_string(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %.not5.i = icmp eq ptr %0, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !56
  %.not4.i4 = icmp eq i8 %i.a, 0
  br i1 %.not4.i4, label %nk_strlen.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %0, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader7, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader7 ]
  %i.d = tail call i32 @nk_strmatch_fuzzy_text(ptr noundef %0, i32 noundef %.0.lcssa.i, ptr noundef %1, ptr noundef %2)
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @nk_murmur_hash(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = sdiv i32 %1, 4                           ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 3
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0330 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.preheader ]
  %.039329 = phi ptr [ %i.m, %.lr.ph ], [ %0, %.preheader ] ; 2 uses
  %.040328 = phi i32 [ %i.k, %.lr.ph ], [ %2, %.preheader ]
  %i.c = load i32, ptr %.039329, align 1          ; 2 uses
  %i.d = mul i32 %i.c, -862048943
  %i.e = mul i32 %i.c, 380141568                  ; 2 uses
  %i.f = lshr i32 %i.d, 17                        ; 2 uses
  %.sroa.26.0.extract.shift108 = or disjoint i32 %i.f, %i.e
  %.sroa.27.0.insert.insert190 = and i32 %i.e, -65536
  %.sroa.26.0.insert.ext111 = and i32 %.sroa.26.0.extract.shift108, 65280
  %.sroa.26.0.insert.insert114 = or disjoint i32 %.sroa.27.0.insert.insert190, %.sroa.26.0.insert.ext111
  %.sroa.0.0.insert.ext52 = and i32 %i.f, 255
  %.sroa.0.0.insert.insert54 = or disjoint i32 %.sroa.26.0.insert.insert114, %.sroa.0.0.insert.ext52
  %i.g = mul i32 %.sroa.0.0.insert.insert54, 461845907
  %i.h = xor i32 %i.g, %.040328                   ; 2 uses
  %i.i = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 13)
  %i.j = mul i32 %i.i, 5
  %i.k = add i32 %i.j, -430675100                 ; 2 uses
  %i.l = add nuw nsw i32 %.0330, 1                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.039329, i64 4
  %exitcond.not = icmp eq i32 %i.l, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !679

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.040.lcssa = phi i32 [ %2, %.preheader ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.n = shl nsw i32 %i.a, 2
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 3 uses
  %i.q = and i32 %1, 3
  switch i32 %i.q, label %default.unreachable331 [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !56
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.27.0 = phi i32 [ %i.u, %bb.b ], [ 0, %._crit_edge ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !56
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = or disjoint i32 %i.y, %.sroa.27.0
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.sroa.26.0.insert.insert140 = phi i32 [ %i.z, %bb.c ], [ 0, %._crit_edge ] ; 2 uses
  %i.aa = load i8, ptr %i.p, align 1, !tbaa !56
  %i.ab = trunc i32 %.sroa.26.0.insert.insert140 to i8
  %.sroa.0.0.extract.trunc74 = xor i8 %i.aa, %i.ab
  %.sroa.26.0.insert.insert147 = and i32 %.sroa.26.0.insert.insert140, -256
  %.sroa.0.0.insert.ext76 = zext i8 %.sroa.0.0.extract.trunc74 to i32
  %.sroa.0.0.insert.insert78 = or disjoint i32 %.sroa.26.0.insert.insert147, %.sroa.0.0.insert.ext76 ; 2 uses
  %i.ac = mul i32 %.sroa.0.0.insert.insert78, -862048943
  %i.ad = mul i32 %.sroa.0.0.insert.insert78, 380141568 ; 2 uses
  %i.ae = lshr i32 %i.ac, 17                      ; 2 uses
  %.sroa.26.0.extract.shift160 = or disjoint i32 %i.ae, %i.ad
  %.sroa.27.0.insert.insert242 = and i32 %i.ad, -65536
  %.sroa.26.0.insert.ext163 = and i32 %.sroa.26.0.extract.shift160, 65280
  %.sroa.26.0.insert.insert166 = or disjoint i32 %.sroa.27.0.insert.insert242, %.sroa.26.0.insert.ext163
  %.sroa.0.0.insert.ext90 = and i32 %i.ae, 255
  %.sroa.0.0.insert.insert92 = or disjoint i32 %.sroa.26.0.insert.insert166, %.sroa.0.0.insert.ext90
  %i.af = mul i32 %.sroa.0.0.insert.insert92, 461845907
  %i.ag = xor i32 %i.af, %.040.lcssa
  br label %bb.e

default.unreachable331:                           ; preds = %._crit_edge
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.1 = phi i32 [ %i.ag, %bb.d ], [ %.040.lcssa, %._crit_edge ]
  %i.ah = xor i32 %.1, %1                         ; 2 uses
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = xor i32 %i.ai, %i.ah
  %i.ak = mul i32 %i.aj, -2048144789              ; 2 uses
  %i.al = lshr i32 %i.ak, 13
  %i.am = xor i32 %i.al, %i.ak
  %i.an = mul i32 %i.am, -1028477387              ; 2 uses
  %i.ao = lshr i32 %i.an, 16
  %i.ap = xor i32 %i.ao, %i.an
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.041 = phi i32 [ %i.ap, %bb.e ], [ 0, %bb.a ]
  ret i32 %.041
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_rgb_factor(i32 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.5.0.extract.shift = lshr i32 %0, 8       ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %0, 16      ; 2 uses
  %i.a = fcmp oeq float %1, 1.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = and i32 %0, 255
  %i.c = uitofp nneg i32 %i.b to float
  %i.d = fmul float %1, %i.c
  %i.e = fptoui float %i.d to i8
  %i.f = and i32 %.sroa.5.0.extract.shift, 255
  %i.g = uitofp nneg i32 %i.f to float
  %i.h = fmul float %1, %i.g
  %i.i = fptoui float %i.h to i8
  %i.j = and i32 %.sroa.7.0.extract.shift, 255
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = fmul float %1, %i.k
  %i.m = fptoui float %i.l to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i8 [ %.sroa.5.0.extract.trunc, %bb.b ], [ %i.i, %bb.c ]
  %.sroa.011.0 = phi i8 [ %.sroa.0.0.extract.trunc, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.512.0 = phi i8 [ %.sroa.7.0.extract.trunc, %bb.b ], [ %i.m, %bb.c ]
  %.sroa.9.0.extract.shift = and i32 %0, -16777216
  %.sroa.512.0.insert.ext = zext i8 %.sroa.512.0 to i32
  %.sroa.512.0.insert.shift = shl nuw nsw i32 %.sroa.512.0.insert.ext, 16
  %.sroa.512.0.insert.insert = or disjoint i32 %.sroa.512.0.insert.shift, %.sroa.9.0.extract.shift
end_hunk_0
