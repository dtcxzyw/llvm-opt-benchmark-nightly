Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0_@get_grouplength:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  store i32 %i.q, ptr %1, align 4, !tbaa !28
  %i.r = and i32 %i.l, 65535
  br label %.thread

bb.h:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.s = call fastcc i32 @get_branchlength(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7) ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.u = phi i32 [ %i.aa, %bb.i ], [ %i.s, %bb.h ]
  %.03648 = phi i32 [ %.1, %bb.i ], [ 2147483647, %bb.h ]
  %.03747 = phi i32 [ %spec.select, %bb.i ], [ -1, %bb.h ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.03747) ; 3 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !28
  %.1 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.03648) ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = icmp eq i32 %i.x, -2145845248
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.z, ptr %0, align 8, !tbaa !68
  %i.aa = call fastcc i32 @get_branchlength(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.g, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !28
  %i.ad = or i32 %spec.select, %i.ac
  %i.ae = or i32 %i.ad, -2147483648
  store i32 %i.ae, ptr %i.f, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.1, ptr %i.af, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %.1, ptr %1, align 4, !tbaa !28
  br label %.thread

._crit_edge:                                      ; preds = %bb.i, %bb.h
  br i1 %i.g, label %bb.m, label %.thread

bb.m:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !28
  %i.ah = or i32 %i.ag, 1073741824
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.c, %._crit_edge, %bb.m, %bb.l
  %.140 = phi i32 [ -1, %._crit_edge ], [ %spec.select, %bb.l ], [ -1, %bb.m ], [ %i.r, %bb.g ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.140
}

declare i32 @_pcre2_ord2utf_8(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @find_dupname_details(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 2
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 4 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !69
  %.not56 = icmp eq i16 %i.d, 0
  br i1 %.not56, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 178
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.051 = phi ptr [ %i.f, %.lr.ph ], [ %i.q, %bb.d ] ; 4 uses
  %.04150 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.051, i64 2
  %i.j = tail call i32 @_pcre2_strncmp_8(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %i.g) #17
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.051, i64 %i.b
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.._crit_edge.loopexit_crit_edge, label %bb.d

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.c
  %.pre.pre = load i16, ptr %i.c, align 8, !tbaa !69
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load i16, ptr %i.h, align 2, !tbaa !70
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.051, i64 %i.p ; 2 uses
  %i.r = add nuw nsw i32 %.04150, 1               ; 3 uses
  %i.s = load i16, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = icmp samesign ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge.loopexit_crit_edge
  %.pre = phi i16 [ %.pre.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.s, %bb.d ]
  %.041.lcssa.ph = phi i32 [ %.04150, %.._crit_edge.loopexit_crit_edge ], [ %i.r, %bb.d ] ; 3 uses
  %.0.lcssa.ph = phi ptr [ %.051, %.._crit_edge.loopexit_crit_edge ], [ %i.q, %bb.d ]
  %i.v = zext i16 %.pre to i32
  %i.w = icmp samesign ult i32 %.041.lcssa.ph, %i.v
  br i1 %i.w, label %bb.e, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  store i32 153, ptr %4, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !46
  br label %bb.l

bb.e:                                             ; preds = %._crit_edge
  store i32 %.041.lcssa.ph, ptr %2, align 4, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 178
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 244 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  %i.ag = zext i32 %1 to i64                      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.142 = phi i32 [ %.041.lcssa.ph, %bb.e ], [ %i.aw, %bb.j ]
  %.040 = phi i32 [ 0, %bb.e ], [ %i.ah, %bb.j ]
  %.1 = phi ptr [ %.0.lcssa.ph, %bb.e ], [ %i.bb, %bb.j ] ; 3 uses
  %i.ah = add nuw nsw i32 %.040, 1                ; 2 uses
  %i.ai = load i8, ptr %.1, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 4 uses
  %i.ap = icmp samesign ult i32 %i.ao, 32
  %i.aq = shl nuw i32 1, %i.ao
  %i.ar = select i1 %i.ap, i32 %i.aq, i32 1
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !62
  %i.at = or i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.ae, align 4, !tbaa !62
  %i.au = load i32, ptr %i.af, align 8, !tbaa !61
  %i.av = icmp ugt i32 %i.ao, %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ao, ptr %i.af, align 8, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = add nuw nsw i32 %.142, 1                ; 2 uses
  %i.ax = load i16, ptr %i.c, align 8, !tbaa !69
  %i.ay = zext i16 %i.ax to i32
  %.not46 = icmp samesign ult i32 %i.aw, %i.ay
  br i1 %.not46, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.az = load i16, ptr %i.ad, align 2, !tbaa !70
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  %i.bd = tail call i32 @_pcre2_strncmp_8(ptr noundef %0, ptr noundef nonnull %i.bc, i64 noundef %i.ag) #17
  %.not47 = icmp eq i32 %i.bd, 0
  br i1 %.not47, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ag
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29
  %.not48 = icmp eq i8 %i.bf, 0
  br i1 %.not48, label %bb.f, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  store i32 %i.ah, ptr %3, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.thread
  %.043 = phi i32 [ 0, %._crit_edge.thread ], [ 1, %bb.k ]
  ret i32 %.043
}

declare i32 @_pcre2_ckd_smul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_to_class_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %6, i32 255) ; 6 uses
  %i.b = and i32 %2, 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %get_othercase_range.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 655360
  %.not95 = icmp eq i32 %i.c, 0
  br i1 %.not95, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not96179 = icmp ugt i32 %5, %i.a
  br i1 %.not96179, label %get_othercase_range.exit, label %.lr.ph182

.lr.ph182:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = zext nneg i32 %5 to i64
  %i.f = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %2, -9                           ; 5 uses
  %i.h = and i32 %3, 128
  %.not46.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 260
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.q, %bb.c
  %.0125.ph.ph = phi i32 [ %5, %bb.c ], [ %.139.i, %bb.q ]
  %.084.ph.ph = phi i32 [ %5, %bb.c ], [ %i.ba, %bb.q ] ; 5 uses
  %.081.ph.ph = phi i32 [ %6, %bb.c ], [ %.081.ph.ph307, %bb.q ]
  %.078.ph.ph = phi i32 [ %i.a, %bb.c ], [ %.078.ph.ph308.ph, %bb.q ]
  %.077.ph.ph = phi i32 [ 0, %bb.c ], [ %.077.ph, %bb.q ]
  %i.k = add i32 %.084.ph.ph, -1
  br label %.outer.outer305.outer

.outer.outer305.outer:                            ; preds = %bb.t, %.outer.outer
  %.0125.ph.ph306.ph = phi i32 [ %.139.i, %bb.t ], [ %.0125.ph.ph, %.outer.outer ]
  %.081.ph.ph307.ph = phi i32 [ %.0.in.i, %bb.t ], [ %.081.ph.ph, %.outer.outer ]
  %.078.ph.ph308.ph = phi i32 [ %i.cq, %bb.t ], [ %.078.ph.ph, %.outer.outer ] ; 5 uses
  %.077.ph.ph309.ph = phi i32 [ %.077.ph, %bb.t ], [ %.077.ph.ph, %.outer.outer ]
  br label %.outer.outer305

.outer.outer305:                                  ; preds = %.outer.outer305.outer, %bb.s
  %.0125.ph.ph306 = phi i32 [ %.139.i, %bb.s ], [ %.0125.ph.ph306.ph, %.outer.outer305.outer ]
  %.081.ph.ph307 = phi i32 [ %.0.in.i, %bb.s ], [ %.081.ph.ph307.ph, %.outer.outer305.outer ] ; 10 uses
  %.077.ph.ph309 = phi i32 [ %.077.ph, %bb.s ], [ %.077.ph.ph309.ph, %.outer.outer305.outer ]
  %i.l = add nuw i32 %.081.ph.ph307, 1
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer305
  %.0125.ph = phi i32 [ %.0125.ph.ph306, %.outer.outer305 ], [ %.0125.ph.be, %.outer.backedge ]
  %.077.ph = phi i32 [ %.077.ph.ph309, %.outer.outer305 ], [ %.077.ph.be, %.outer.backedge ] ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.p
  %.0125 = phi i32 [ %.139.i, %bb.p ], [ %.0125.ph, %.outer ] ; 3 uses
  %.not57.i = icmp ugt i32 %.0125, %.081.ph.ph307
  br i1 %.not57.i, label %get_othercase_range.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  br i1 %.not46.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.f
  %.03858.us.i = phi i32 [ %i.ad, %bb.f ], [ %.0125, %.lr.ph.i ] ; 5 uses
  %i.m = sdiv i32 %.03858.us.i, 128
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !30
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 7
  %i.s = srem i32 %.03858.us.i, 128
  %i.t = add nsw i32 %i.r, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !30
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !83   ; 2 uses
  %.not45.us.i = icmp eq i8 %i.aa, 0
  br i1 %.not45.us.i, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80 ; 2 uses
  %.not47.us.i = icmp eq i32 %i.ac, 0
  br i1 %.not47.us.i, label %bb.f, label %.split61.us.i

bb.f:                                             ; preds = %bb.e
  %i.ad = add i32 %.03858.us.i, 1                 ; 2 uses
  %.not.us.i = icmp ugt i32 %i.ad, %.081.ph.ph307
  br i1 %.not.us.i, label %get_othercase_range.exit, label %.lr.ph.split.us.i, !llvm.loop !233

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.i
  %.03858.i = phi i32 [ %i.az, %bb.i ], [ %.0125, %.lr.ph.i ] ; 5 uses
  %i.ae = sdiv i32 %.03858.i, 128
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !30
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 7
  %i.ak = srem i32 %.03858.i, 128
  %i.al = add nsw i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !30
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83  ; 2 uses
  %.not45.i = icmp eq i8 %i.as, 0
  br i1 %.not45.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.at = zext i8 %i.as to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_pcre2_ucd_caseless_sets_8, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 127
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !80 ; 2 uses
  %.not47.i = icmp eq i32 %i.ay, 0
  br i1 %.not47.i, label %bb.i, label %.split61.us.i

bb.i:                                             ; preds = %bb.h
  %i.az = add i32 %.03858.i, 1                    ; 2 uses
  %.not.i = icmp ugt i32 %i.az, %.081.ph.ph307
  br i1 %.not.i, label %get_othercase_range.exit, label %.lr.ph.split.i, !llvm.loop !233

.split61.us.i:                                    ; preds = %bb.h, %bb.e
  %.us-phi62.i = phi i32 [ %i.ac, %bb.e ], [ %i.ay, %bb.h ]
  %.us-phi63.i = phi i32 [ %.03858.us.i, %bb.e ], [ %.03858.i, %bb.h ] ; 2 uses
  %i.ba = add nsw i32 %.us-phi63.i, %.us-phi62.i  ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.split61.us.i
  %.139.in.i = phi i32 [ %.us-phi63.i, %.split61.us.i ], [ %.139.i, %bb.l ]
  %.0.in.i = phi i32 [ %i.ba, %.split61.us.i ], [ %.0.i, %bb.l ] ; 9 uses
  %.0.i = add i32 %.0.in.i, 1                     ; 2 uses
  %.139.i = add i32 %.139.in.i, 1                 ; 10 uses
  %.not48.i = icmp ugt i32 %.139.i, %.081.ph.ph307
  br i1 %.not48.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = sdiv i32 %.139.i, 128
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !30
  %i.bf = zext i16 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 7
  %i.bh = srem i32 %.139.i, 128
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !30
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !83
  %.not49.i = icmp eq i8 %i.bp, 0
  br i1 %.not49.i, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !80
  %i.bs = add nsw i32 %i.br, %.139.i
  %.not50.i = icmp eq i32 %i.bs, %.0.i
  br i1 %.not50.i, label %bb.j, label %.thread, !llvm.loop !234

.loopexit.loopexit:                               ; preds = %.lr.ph.split.us.i
  %.pre = zext i8 %i.aa to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @_pcre2_ucd_caseless_sets_8, i64 %.pre
  %.pre220 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.loopexit
  %i.bt = phi i32 [ %.pre220, %.loopexit.loopexit ], [ %i.av, %bb.g ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.at, %bb.g ]
  %.us-phi59.i = phi i32 [ %.03858.us.i, %.loopexit.loopexit ], [ %.03858.i, %bb.g ] ; 2 uses
  %i.bu = add i32 %.us-phi59.i, 1                 ; 2 uses
  %.not.i106176 = icmp eq i32 %i.bt, -1
  br i1 %.not.i106176, label %.outer.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_pcre2_ucd_caseless_sets_8, i64 %.pre-phi
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bw = phi i32 [ %i.cj, %bb.o ], [ %i.bt, %.lr.ph.preheader ] ; 3 uses
  %.019.i178 = phi i32 [ %.120.i, %bb.o ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.021.i177 = phi ptr [ %i.ck, %bb.o ], [ %i.bv, %.lr.ph.preheader ] ; 4 uses
  %.not23.i = icmp eq i32 %i.bw, %.us-phi59.i
  br i1 %.not23.i, label %.lr.ph._crit_edge, label %.preheader147

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert221 = getelementptr inbounds nuw i8, ptr %.021.i177, i64 4
  %.pre222 = load i32, ptr %.phi.trans.insert221, align 4, !tbaa !28
  br label %bb.o

.preheader147:                                    ; preds = %.lr.ph
  %i.bx = add nuw i32 %i.bw, 1
  br label %bb.m

bb.m:                                             ; preds = %.preheader147, %bb.m
  %.0.i107 = phi i32 [ %i.by, %bb.m ], [ 0, %.preheader147 ] ; 3 uses
  %i.by = add i32 %.0.i107, 1                     ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.021.i177, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !28 ; 2 uses
  %i.cc = add i32 %i.bx, %.0.i107
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.m, label %bb.n, !llvm.loop !235

bb.n:                                             ; preds = %bb.m
  %i.ce = zext i32 %.0.i107 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.021.i177, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = tail call fastcc i32 @add_to_class_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 0, -8) %i.g, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.bw, i32 noundef %i.cg), !inline_history !236
  %i.ci = add i32 %i.ch, %.019.i178
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph._crit_edge, %bb.n
  %i.cj = phi i32 [ %i.cb, %bb.n ], [ %.pre222, %.lr.ph._crit_edge ] ; 2 uses
  %.120.i = phi i32 [ %i.ci, %bb.n ], [ %.019.i178, %.lr.ph._crit_edge ] ; 2 uses
  %.1.i = phi i64 [ %i.bz, %bb.n ], [ 1, %.lr.ph._crit_edge ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.021.i177, i64 %.1.i
  %.not.i106 = icmp eq i32 %i.cj, -1
  br i1 %.not.i106, label %.outer.backedge, label %.lr.ph, !llvm.loop !237

.thread:                                          ; preds = %bb.l, %bb.k, %bb.j
  %i.cl = load i32, ptr %i.i, align 8, !tbaa !84
  %.not102 = icmp ult i32 %i.ba, %i.cl
  br i1 %.not102, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.cm = load i32, ptr %i.j, align 4, !tbaa !85
  %.not103 = icmp ugt i32 %.0.in.i, %i.cm
  br i1 %.not103, label %bb.q, label %bb.d, !llvm.loop !238

bb.q:                                             ; preds = %bb.p, %.thread
  %i.cn = icmp uge i32 %i.ba, %.084.ph.ph
  %.not104 = icmp ult i32 %.0.in.i, %i.k
  %or.cond = select i1 %i.cn, i1 true, i1 %.not104
  br i1 %or.cond, label %bb.r, label %.outer.outer, !llvm.loop !238

bb.r:                                             ; preds = %bb.q
  %i.co = icmp ule i32 %.0.in.i, %.081.ph.ph307
  %.not105 = icmp ugt i32 %i.ba, %i.l
  %or.cond146 = select i1 %i.co, i1 true, i1 %.not105
  br i1 %or.cond146, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = icmp ugt i32 %.0.in.i, %.078.ph.ph308.ph
  br i1 %i.cp, label %bb.t, label %.outer.outer305, !llvm.loop !238

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call i32 @llvm.umin.i32(i32 %.0.in.i, i32 255)
  br label %.outer.outer305.outer, !llvm.loop !238

bb.u:                                             ; preds = %bb.r
  %i.cr = tail call fastcc i32 @add_to_class_internal(ptr noundef %0, ptr noundef %1, i32 noundef %i.g, i32 noundef %3, ptr noundef %4, i32 noundef %i.ba, i32 noundef %.0.in.i)
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit, %bb.o, %bb.u
  %.0125.ph.be = phi i32 [ %.139.i, %bb.u ], [ %i.bu, %bb.o ], [ %i.bu, %.loopexit ]
  %.pn = phi i32 [ %i.cr, %bb.u ], [ 0, %.loopexit ], [ %.120.i, %bb.o ]
  %.077.ph.be = add i32 %.pn, %.077.ph
  br label %.outer, !llvm.loop !238

bb.v:                                             ; preds = %.lr.ph182, %bb.v
  %indvars.iv = phi i64 [ %i.e, %.lr.ph182 ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29  ; 2 uses
  %i.cv = lshr i8 %i.cu, 3
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.cz = and i8 %i.cu, 7
  %i.da = shl nuw i8 1, %i.cz
  %i.db = or i8 %i.da, %i.cy
  store i8 %i.db, ptr %i.cx, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %get_othercase_range.exit.loopexit, label %bb.v, !llvm.loop !239

get_othercase_range.exit.loopexit:                ; preds = %bb.v
  %i.dc = sub nsw i32 %i.f, %5
  br label %get_othercase_range.exit

get_othercase_range.exit:                         ; preds = %bb.d, %bb.i, %bb.f, %get_othercase_range.exit.loopexit, %.preheader, %bb.a
  %.088 = phi i32 [ %2, %bb.a ], [ %2, %get_othercase_range.exit.loopexit ], [ %2, %.preheader ], [ %i.g, %bb.i ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  %.286 = phi i32 [ %5, %bb.a ], [ %5, %get_othercase_range.exit.loopexit ], [ %5, %.preheader ], [ %.084.ph.ph, %bb.i ], [ %.084.ph.ph, %bb.f ], [ %.084.ph.ph, %bb.d ] ; 4 uses
  %.283 = phi i32 [ %6, %bb.a ], [ %6, %get_othercase_range.exit.loopexit ], [ %6, %.preheader ], [ %.081.ph.ph307, %bb.i ], [ %.081.ph.ph307, %bb.f ], [ %.081.ph.ph307, %bb.d ] ; 5 uses
  %.280 = phi i32 [ %i.a, %bb.a ], [ %i.a, %get_othercase_range.exit.loopexit ], [ %i.a, %.preheader ], [ %.078.ph.ph308.ph, %bb.i ], [ %.078.ph.ph308.ph, %bb.f ], [ %.078.ph.ph308.ph, %bb.d ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.a ], [ %i.dc, %get_othercase_range.exit.loopexit ], [ 0, %.preheader ], [ %.077.ph, %bb.i ], [ %.077.ph, %bb.f ], [ %.077.ph, %bb.d ] ; 3 uses
  %i.dd = and i32 %.088, 524288
  %i.de = icmp eq i32 %i.dd, 0                    ; 2 uses
  %i.df = tail call i32 @llvm.umin.i32(i32 %.283, i32 255)
  %spec.store.select2 = select i1 %i.de, i32 %i.df, i32 %.283 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !84
  %i.di = icmp ugt i32 %.286, %i.dh
  br i1 %i.di, label %bb.w, label %bb.x

bb.w:                                             ; preds = %get_othercase_range.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !85
  %i.dl = icmp ult i32 %spec.store.select2, %i.dk
  br i1 %i.dl, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w, %get_othercase_range.exit
  %.not98184 = icmp ugt i32 %.286, %.280
  br i1 %.not98184, label %._crit_edge, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.x, %.lr.ph187
  %.4186 = phi i32 [ %i.du, %.lr.ph187 ], [ %.3, %bb.x ]
  %storemerge97185 = phi i32 [ %i.dv, %.lr.ph187 ], [ %.286, %bb.x ] ; 3 uses
  %i.dm = lshr i32 %storemerge97185, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29
  %i.dq = and i32 %storemerge97185, 7
  %i.dr = shl nuw nsw i32 1, %i.dq
  %i.ds = trunc nuw i32 %i.dr to i8
  %i.dt = or i8 %i.dp, %i.ds
  store i8 %i.dt, ptr %i.do, align 1, !tbaa !29
  %i.du = add i32 %.4186, 1                       ; 2 uses
  %i.dv = add i32 %storemerge97185, 1             ; 2 uses
  %.not98 = icmp ugt i32 %i.dv, %.280
  br i1 %.not98, label %._crit_edge, label %.lr.ph187, !llvm.loop !240

._crit_edge:                                      ; preds = %.lr.ph187, %bb.x
  %.4.lcssa = phi i32 [ %.3, %bb.x ], [ %i.du, %.lr.ph187 ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.286, i32 256) ; 4 uses
  %.not99 = icmp ult i32 %spec.store.select2, %spec.store.select
  br i1 %.not99, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.dw = load ptr, ptr %1, align 8, !tbaa !27    ; 6 uses
  br i1 %i.de, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = icmp ult i32 %spec.store.select, %.283
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  store i8 2, ptr %i.dw, align 1, !tbaa !29
  %i.dz = tail call i32 @_pcre2_ord2utf_8(i32 noundef %spec.store.select, ptr noundef nonnull %i.dy) #17
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.ec = icmp eq i32 %spec.store.select, %.283
  br i1 %i.ec, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store i8 1, ptr %i.dw, align 1, !tbaa !29
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.aa
  %.sink270 = phi ptr [ %i.eb, %bb.aa ], [ %i.ed, %bb.ac ] ; 2 uses
  %i.ee = tail call i32 @_pcre2_ord2utf_8(i32 noundef %.283, ptr noundef nonnull %.sink270) #17
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink270, i64 %i.ef
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.y, %bb.ab
  %.0 = phi ptr [ %i.dw, %bb.ab ], [ %i.dw, %bb.y ], [ %i.eg, %.sink.split ]
  store ptr %.0, ptr %1, align 8, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.ad, %bb.w
  %.087 = phi i32 [ %.3, %bb.w ], [ %.4.lcssa, %bb.ad ], [ %.4.lcssa, %._crit_edge ]
  ret i32 %.087
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc nonnull ptr @first_significant_code(ptr nofree noundef nonnull readonly captures(ret: address, provenance) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
bb.a:
  %.not34 = icmp eq i32 %1, 0
  br i1 %.not34, label %.split.us.split.us, label %.split.split

.split.us.split.us:                               ; preds = %bb.a, %.split.us.split.us.backedge
  %.031.us.us = phi ptr [ %.031.us.us.be, %.split.us.split.us.backedge ], [ %0, %bb.a ] ; 17 uses
  %i.a = load i8, ptr %.031.us.us, align 1, !tbaa !29 ; 3 uses
  switch i8 %i.a, label %.split37.us [
    i8 -96, label %bb.b
    i8 -98, label %bb.b
    i8 -100, label %bb.b
    i8 -94, label %bb.b
    i8 -102, label %bb.b
    i8 -112, label %bb.c
    i8 -117, label %bb.c
    i8 -89, label %bb.f
    i8 118, label %bb.h
    i8 -111, label %bb.h
    i8 -110, label %bb.h
    i8 -109, label %bb.h
    i8 -108, label %bb.h
    i8 -107, label %bb.h
    i8 -106, label %bb.h
    i8 119, label %bb.g
  ]

bb.b:                                             ; preds = %.split.us.split.us, %.split.us.split.us, %.split.us.split.us, %.split.us.split.us, %.split.us.split.us
  %i.b = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = zext i8 %i.c to i64
  %i.e = zext i8 %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  br label %.split.us.split.us.backedge

bb.c:                                             ; preds = %.split.us.split.us, %.split.us.split.us
  %i.k = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %.not.us.us = icmp eq i8 %i.l, -107
  br i1 %.not.us.us, label %bb.d, label %.split37.us

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %.not32.us.us = icmp eq i8 %i.v, 121
  br i1 %.not32.us.us, label %bb.e, label %.split37.us

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  br label %.split.us.split.us.backedge

bb.f:                                             ; preds = %.split.us.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !29
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br label %.split.us.split.us.backedge

bb.g:                                             ; preds = %.split.us.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  br label %.split.us.split.us.backedge

bb.h:                                             ; preds = %.split.us.split.us, %.split.us.split.us, %.split.us.split.us, %.split.us.split.us, %.split.us.split.us, %.split.us.split.us, %.split.us.split.us
  %i.aq = zext i8 %i.a to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.031.us.us, i64 %i.at
  br label %.split.us.split.us.backedge

.split.us.split.us.backedge:                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.031.us.us.be = phi ptr [ %i.w, %bb.e ], [ %i.j, %bb.b ], [ %i.au, %bb.h ], [ %i.ap, %bb.g ], [ %i.ag, %bb.f ]
  br label %.split.us.split.us

.split.split:                                     ; preds = %bb.a, %.split.split.backedge
  %.031 = phi ptr [ %.031.be, %.split.split.backedge ], [ %0, %bb.a ] ; 18 uses
  %i.av = load i8, ptr %.031, align 1, !tbaa !29  ; 3 uses
end_hunk_0
