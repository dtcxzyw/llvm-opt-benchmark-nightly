Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/calendar?download=true
inline.NumInlined: 469
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6icu_788Calendar22handleComputeJulianDayE19UCalendarDateFieldsR10UErrorCode:bb.a

bb.aq:                                            ; preds = %bb.am
  %i.fp = load ptr, ptr %0, align 8, !tbaa !14
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 160
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 3)
  %.not148 = icmp slt i32 %i.en, %i.fs
  br i1 %.not148, label %bb.bb, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 %i.cw, ptr %i.g, align 4, !tbaa !48
  %i.ft = sub nsw i32 7, %spec.select171
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !34
  %i.fw = zext i8 %i.fv to i32
  %i.fx = icmp slt i32 %i.ft, %i.fw
  br i1 %i.fx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fy = add nsw i32 %reass.sub, 8               ; 2 uses
  store i32 %i.fy, ptr %i.g, align 4, !tbaa !48
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fz = phi i32 [ %i.fy, %bb.as ], [ %i.cw, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.ga = add nsw i32 %i.en, -1
  %i.gb = call signext i8 @uprv_mul32_overflow_78(i32 noundef %i.ga, i32 noundef 7, ptr noundef nonnull %i.h)
  %.not149 = icmp eq i8 %i.gb, 0
  br i1 %.not149, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.gc = load i32, ptr %i.h, align 4, !tbaa !48
  %i.gd = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.gc, i32 noundef %i.fz, ptr noundef nonnull %i.g)
  %.not150 = icmp eq i8 %i.gd, 0
  br i1 %.not150, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.au
  %i.ge = load i32, ptr %i.g, align 4, !tbaa !48
  %i.gf = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.be, i32 noundef %i.ge, ptr noundef nonnull %i.g)
  %.not151 = icmp eq i8 %i.gf, 0
  br i1 %.not151, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av
  %i.gg = load i32, ptr %i.g, align 4, !tbaa !48
  %i.gh = icmp sgt i32 %i.gg, %i.et
  br i1 %i.gh, label %bb.ax, label %.thread201

.thread201:                                       ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.gi = call signext i8 @uprv_add32_overflow_78(i32 noundef %.0112, i32 noundef -1, ptr noundef nonnull %i.i)
  %.not152 = icmp eq i8 %i.gi, 0
  br i1 %.not152, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 1, ptr %2, align 4, !tbaa !25
  br label %.thread205

bb.az:                                            ; preds = %bb.ax
  %i.gj = load i32, ptr %i.i, align 4, !tbaa !48
  %i.gk = load ptr, ptr %0, align 8, !tbaa !14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 320
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i64 %i.gm(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.gj, i32 noundef 0, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  store i32 %i.go, ptr %i.a, align 4, !tbaa !48
  %i.gp = load i32, ptr %2, align 4, !tbaa !25
  %i.gq = icmp slt i32 %i.gp, 1
  br i1 %i.gq, label %bb.ba, label %.thread205

.thread:                                          ; preds = %bb.av, %bb.at, %bb.au
  store i32 1, ptr %2, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.critedge173

.thread205:                                       ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.critedge173

bb.ba:                                            ; preds = %bb.az
  %i.gr = shl i64 %i.gn, 32
  %sext213 = add i64 %i.gr, 4294967296
  %i.gs = ashr exact i64 %sext213, 32
  %i.gt = add nsw i64 %i.gs, 1
  %i.gu = srem i64 %i.gt, 7                       ; 2 uses
  %i.gv = trunc nsw i64 %i.gu to i32
  %i.gw = icmp slt i64 %i.gu, 0
  %i.gx = select i1 %i.gw, i32 8, i32 1
  %i.gy = add nsw i32 %i.gx, %i.gv
  %i.gz = and i32 %i.gy, 255
  %i.ha = sub nsw i32 %i.gz, %i.cg                ; 3 uses
  %i.hb = icmp slt i32 %i.ha, 0
  %i.hc = add nsw i32 %i.ha, 7
  %spec.select177 = select i1 %i.hb, i32 %i.hc, i32 %i.ha ; 2 uses
  %reass.sub154 = add nsw i32 %i.ct, 1
  %i.hd = sub nsw i32 %reass.sub154, %spec.select177
  store i32 %i.hd, ptr %i.d, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread201, %bb.ap, %bb.ao, %bb.an, %bb.aq, %_ZNK6icu_788Calendar5isSetE19UCalendarDateFields.exit192.thread, %bb.ak, %bb.ai
  %i.he = phi i32 [ %i.be, %bb.ai ], [ %i.be, %bb.ak ], [ %i.be, %_ZNK6icu_788Calendar5isSetE19UCalendarDateFields.exit192.thread ], [ %i.be, %bb.aq ], [ %i.be, %bb.an ], [ %i.et, %bb.ap ], [ %i.be, %bb.ao ], [ %i.go, %bb.ba ], [ %i.be, %.thread201 ]
  %.9 = phi i32 [ %spec.select171, %bb.ai ], [ %spec.select171, %bb.ak ], [ %spec.select171, %_ZNK6icu_788Calendar5isSetE19UCalendarDateFields.exit192.thread ], [ %spec.select171, %bb.aq ], [ %spec.select171, %bb.an ], [ %spec.select175, %bb.ap ], [ %spec.select171, %bb.ao ], [ %spec.select177, %bb.ba ], [ %spec.select171, %.thread201 ]
  %i.hf = sub nsw i32 7, %.9
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !34
  %i.hi = zext i8 %i.hh to i32
  %i.hj = icmp slt i32 %i.hf, %i.hi
  br i1 %i.hj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load i32, ptr %i.d, align 4, !tbaa !48
  %i.hl = add nsw i32 %i.hk, 7
  store i32 %i.hl, ptr %i.d, align 4, !tbaa !48
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.hm = zext i32 %1 to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !48 ; 2 uses
  store i32 %i.ho, ptr %i.j, align 4, !tbaa !48
  %i.hp = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.ho, i32 noundef -1, ptr noundef nonnull %i.j)
  %.not157 = icmp eq i8 %i.hp, 0
  br i1 %.not157, label %bb.be, label %.critedge173.critedge180

bb.be:                                            ; preds = %bb.bd
  %i.hq = load i32, ptr %i.j, align 4, !tbaa !48
  %i.hr = call signext i8 @uprv_mul32_overflow_78(i32 noundef 7, i32 noundef %i.hq, ptr noundef nonnull %i.j)
  %.not158 = icmp eq i8 %i.hr, 0
  br i1 %.not158, label %bb.bf, label %.critedge173.critedge180

bb.bf:                                            ; preds = %bb.be
  %i.hs = load i32, ptr %i.d, align 4, !tbaa !48
  %i.ht = load i32, ptr %i.j, align 4, !tbaa !48
  %i.hu = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.hs, i32 noundef %i.ht, ptr noundef nonnull %i.d)
  %.not159 = icmp eq i8 %i.hu, 0
  br i1 %.not159, label %bb.bg, label %.critedge173.critedge180

.critedge173.critedge180:                         ; preds = %bb.bf, %bb.be, %bb.bd
  store i32 1, ptr %2, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %.critedge173

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %.critedge174

.critedge174:                                     ; preds = %bb.ac, %bb.ah, %bb.bg
  %i.hv = phi i32 [ %i.be, %bb.ac ], [ %i.be, %bb.ah ], [ %i.he, %bb.bg ]
  %i.hw = load i32, ptr %i.d, align 4, !tbaa !48
  %i.hx = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.hv, i32 noundef %i.hw, ptr noundef nonnull %i.a)
  %.not166 = icmp eq i8 %i.hx, 0
  br i1 %.not166, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge174
  store i32 1, ptr %2, align 4, !tbaa !25
  br label %.critedge173

bb.bi:                                            ; preds = %.critedge174
  %i.hy = load i32, ptr %i.a, align 4, !tbaa !48
  br label %.critedge173

.critedge173:                                     ; preds = %.thread205, %.thread, %.critedge173.critedge, %bb.al, %.critedge173.critedge180, %.critedge, %bb.ad, %bb.bi, %bb.bh
  %.15 = phi i32 [ 0, %bb.bh ], [ %i.hy, %bb.bi ], [ 0, %.critedge173.critedge ], [ 0, %.critedge173.critedge180 ], [ 0, %bb.ad ], [ 0, %.critedge ], [ 0, %.thread205 ], [ 0, %bb.al ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge173, %bb.w, %bb.j, %bb.v, %bb.r
  %.17 = phi i32 [ 0, %bb.j ], [ %.0113, %bb.r ], [ %.1114, %bb.v ], [ %.15, %.critedge173 ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.g, %bb.e, %bb.i, %_ZNK6icu_788Calendar5isSetE19UCalendarDateFields.exit.thread, %bb.bj, %bb.a
  %.20 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %_ZNK6icu_788Calendar5isSetE19UCalendarDateFields.exit.thread ], [ %.17, %bb.bj ], [ 0, %bb.i ]
  ret i32 %.20
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -6, 14) i32 @_ZN6icu_788Calendar11getLocalDOWER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !25
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph74.preheader.i, label %bb.g

.lr.ph74.preheader.i:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !48
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 109
  %4 = load i8, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp slt i8 %4, %5
  %.fr = freeze i1 %6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 111
  %7 = load i8, ptr %i.d, align 1, !tbaa !44      ; 3 uses
  %.not60.i.us = icmp eq i8 %7, 0                 ; 2 uses
  br i1 %.fr, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph74.preheader.i
  br i1 %.not60.i.us, label %.lr.ph.i.us.preheader.1, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us.preheader
  %8 = tail call i8 @llvm.smax.i8(i8 %7, i8 0)    ; 2 uses
  %spec.select.i.us = zext nneg i8 %8 to i32
  %.not14 = icmp eq i8 %8, 0
  %spec.select18 = select i1 %.not14, i32 24, i32 7
  br label %.lr.ph.i.us.preheader.1

.lr.ph.i.us.preheader.1:                          ; preds = %._crit_edge.i.us, %.lr.ph.i.us.preheader
  %.352.i.us = phi i32 [ %spec.select18, %._crit_edge.i.us ], [ 24, %.lr.ph.i.us.preheader ] ; 2 uses
  %.144.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %10 = load i8, ptr %9, align 2, !tbaa !44       ; 2 uses
  %.not60.i.us.1 = icmp eq i8 %10, 0
  br i1 %.not60.i.us.1, label %._crit_edge75.i, label %._crit_edge.i.us.1

._crit_edge.i.us.1:                               ; preds = %.lr.ph.i.us.preheader.1
  %11 = tail call i8 @llvm.smax.i8(i8 %10, i8 0)
  %spec.select.i.us.1 = zext nneg i8 %11 to i32
  %12 = icmp samesign ult i32 %.144.i.us, %spec.select.i.us.1
  br i1 %12, label %._crit_edge75.i.thread, label %._crit_edge75.i

._crit_edge75.i:                                  ; preds = %._crit_edge.i.1, %.lr.ph.i.preheader.1, %._crit_edge.i.us.1, %.lr.ph.i.us.preheader.1
  %.us-phi = phi i32 [ %.352.i.us, %.lr.ph.i.us.preheader.1 ], [ %.352.i.us, %._crit_edge.i.us.1 ], [ %.352.i, %._crit_edge.i.1 ], [ %.352.i, %.lr.ph.i.preheader.1 ]
  %cond = icmp eq i32 %.us-phi, 7
  br i1 %cond, label %bb.b, label %bb.e

.lr.ph.i.preheader:                               ; preds = %.lr.ph74.preheader.i
  br i1 %.not60.i.us, label %.lr.ph.i.preheader.1, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader
  %13 = tail call i8 @llvm.smax.i8(i8 %7, i8 0)   ; 2 uses
  %spec.select.i = zext nneg i8 %13 to i32
  %.not = icmp eq i8 %13, 0
  %spec.select20 = select i1 %.not, i32 24, i32 7
  br label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %._crit_edge.i, %.lr.ph.i.preheader
  %.352.i = phi i32 [ %spec.select20, %._crit_edge.i ], [ 24, %.lr.ph.i.preheader ] ; 2 uses
  %.144.i = phi i32 [ %spec.select.i, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %15 = load i8, ptr %14, align 2, !tbaa !44      ; 2 uses
  %.not60.i.1.a = icmp eq i8 %15, 0
  br i1 %.not60.i.1.a, label %._crit_edge75.i, label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.preheader.1
  %16 = tail call i8 @llvm.smax.i8(i8 %15, i8 0)
  %spec.select.i.1 = zext nneg i8 %16 to i32
  %17 = icmp samesign ult i32 %.144.i, %spec.select.i.1
  br i1 %17, label %._crit_edge75.i.thread, label %._crit_edge75.i

bb.b:                                             ; preds = %._crit_edge75.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.h = load i16, ptr %i.g, align 1
  %i.i = lshr i16 %i.h, 3
  %i.j = and i16 %i.i, 15
  %i.k = zext nneg i16 %i.j to i32
  %i.l = sub nsw i32 0, %i.k
  %i.m = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.f, i32 noundef %i.l, ptr noundef nonnull %i.a)
  %.not6 = icmp eq i8 %i.m, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4, !tbaa !25
  br label %bb.f

._crit_edge75.i.thread:                           ; preds = %._crit_edge.i.1, %._crit_edge.i.us.1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !48
  %i.p = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.o, i32 noundef -1, ptr noundef nonnull %i.a)
  %.not5 = icmp eq i8 %i.p, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge75.i.thread
  store i32 1, ptr %1, align 4, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge75.i, %._crit_edge75.i.thread, %bb.b
  %i.q = load i32, ptr %i.a, align 4, !tbaa !48
  %i.r = srem i32 %i.q, 7                         ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = add nsw i32 %i.r, 7
  %spec.select = select i1 %i.s, i32 %i.t, i32 %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6icu_788Calendar21getDefaultMonthInYearEiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6icu_788Calendar20getDefaultDayInMonthEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #14 align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_788Calendar35handleGetExtendedYearFromWeekFieldsEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !25
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph74.preheader.i, label %bb.z

.lr.ph74.preheader.i:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.g = load i8, ptr %i.e, align 4
  %i.h = load i8, ptr %i.f, align 1
  %i.i = icmp slt i8 %i.g, %i.h
  br label %.lr.ph74.i

._crit_edge75.i:                                  ; preds = %.thread.i
  %i.j = icmp eq i32 %.352.i, 24
  br i1 %i.j, label %.lr.ph74.i.1, label %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit

.lr.ph74.i.1:                                     ; preds = %._crit_edge75.i, %.thread.i.1
  %indvars.iv82.i.1 = phi i64 [ %indvars.iv.next83.i.1, %.thread.i.1 ], [ 0, %._crit_edge75.i ] ; 2 uses
  %i.k = phi i32 [ %i.ae, %.thread.i.1 ], [ 3, %._crit_edge75.i ] ; 4 uses
  %.04372.i.1 = phi i32 [ %.144.i.1, %.thread.i.1 ], [ 0, %._crit_edge75.i ] ; 4 uses
  %.15071.i.1 = phi i32 [ %.352.i.1, %.thread.i.1 ], [ 24, %._crit_edge75.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_788Calendar15kDatePrecedenceE, i64 384), i64 %indvars.iv82.i.1 ; 2 uses
  %i.m = icmp sgt i32 %i.k, 31                    ; 2 uses
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48   ; 2 uses
  %.not5967.i.1 = icmp eq i32 %i.p, -1
  br i1 %.not5967.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph74.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %bb.b ], [ %i.n, %.lr.ph74.i.1 ]
  %i.q = phi i32 [ %i.w, %bb.b ], [ %i.p, %.lr.ph74.i.1 ]
  %.04168.i.1 = phi i32 [ %spec.select.i.1, %bb.b ], [ 0, %.lr.ph74.i.1 ]
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.d, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !44    ; 2 uses
  %.not60.i.1 = icmp eq i8 %i.t, 0
  br i1 %.not60.i.1, label %.thread.i.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.1
  %i.u = sext i8 %i.t to i32
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %.04168.i.1, i32 %i.u) ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  %i.w = load i32, ptr %i.v, align 4, !tbaa !48   ; 2 uses
  %.not59.i.1 = icmp eq i32 %i.w, -1
  br i1 %.not59.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !3

._crit_edge.i.1:                                  ; preds = %bb.b, %.lr.ph74.i.1
  %.041.lcssa.i.1 = phi i32 [ 0, %.lr.ph74.i.1 ], [ %spec.select.i.1, %bb.b ] ; 2 uses
  %i.x = icmp sgt i32 %.041.lcssa.i.1, %.04372.i.1
  br i1 %i.x, label %bb.c, label %.thread.i.1

bb.c:                                             ; preds = %._crit_edge.i.1
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.k, 31                         ; 3 uses
  %.not61.i.1 = icmp eq i32 %i.y, 5
  br i1 %.not61.i.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.e, align 4, !tbaa !44
  %i.aa = load i8, ptr %i.f, align 1, !tbaa !44
  %i.ab = icmp slt i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.251.i.1 = phi i32 [ %i.y, %bb.f ], [ %.15071.i.1, %bb.e ], [ %i.k, %bb.c ] ; 2 uses
  %.048.i.1 = phi i32 [ %i.y, %bb.f ], [ 5, %bb.e ], [ %i.k, %bb.c ]
  %i.ac = icmp eq i32 %.251.i.1, %.048.i.1
  %spec.select62.i.1 = select i1 %i.ac, i32 %.041.lcssa.i.1, i32 %.04372.i.1
  br label %.thread.i.1

.thread.i.1:                                      ; preds = %.lr.ph.i.1, %bb.g, %._crit_edge.i.1
  %.352.i.1 = phi i32 [ %.15071.i.1, %._crit_edge.i.1 ], [ %.251.i.1, %bb.g ], [ %.15071.i.1, %.lr.ph.i.1 ] ; 2 uses
  %.144.i.1 = phi i32 [ %.04372.i.1, %._crit_edge.i.1 ], [ %spec.select62.i.1, %bb.g ], [ %.04372.i.1, %.lr.ph.i.1 ]
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i.1, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_788Calendar15kDatePrecedenceE, i64 384), i64 %indvars.iv.next83.i.1
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !48 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ae, -1
  br i1 %.not.i.1, label %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit, label %.lr.ph74.i.1, !llvm.loop !4

.lr.ph74.i:                                       ; preds = %.thread.i, %.lr.ph74.preheader.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph74.preheader.i ], [ %indvars.iv.next83.i, %.thread.i ] ; 3 uses
  %i.af = phi i32 [ 5, %.lr.ph74.preheader.i ], [ %i.aw, %.thread.i ] ; 4 uses
  %.04372.i = phi i32 [ 0, %.lr.ph74.preheader.i ], [ %.144.i, %.thread.i ] ; 4 uses
  %.15071.i = phi i32 [ 24, %.lr.ph74.preheader.i ], [ %.352.i, %.thread.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr @_ZN6icu_788Calendar15kDatePrecedenceE, i64 %indvars.iv82.i ; 2 uses
  %i.ah = icmp sgt i32 %i.af, 31                  ; 2 uses
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48 ; 2 uses
  %.not5967.i = icmp eq i32 %i.ak, -1
  br i1 %.not5967.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph74.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.ai, %.lr.ph74.i ]
  %i.al = phi i32 [ %i.ar, %bb.h ], [ %i.ak, %.lr.ph74.i ]
  %.04168.i = phi i32 [ %spec.select.i, %bb.h ], [ 0, %.lr.ph74.i ]
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.d, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !44  ; 2 uses
  %.not60.i = icmp eq i8 %i.ao, 0
  br i1 %.not60.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ap = sext i8 %i.ao to i32
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.04168.i, i32 %i.ap) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48 ; 2 uses
  %.not59.i = icmp eq i32 %i.ar, -1
  br i1 %.not59.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph74.i
  %.041.lcssa.i = phi i32 [ 0, %.lr.ph74.i ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.as = icmp sgt i32 %.041.lcssa.i, %.04372.i
  br i1 %i.as, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %._crit_edge.i
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = and i32 %i.af, 31                       ; 3 uses
  %.not61.i = icmp eq i32 %i.at, 5
  %.not61.i.not = xor i1 %.not61.i, true
  %brmerge = select i1 %.not61.i.not, i1 true, i1 %i.i ; 2 uses
  %spec.select75 = select i1 %brmerge, i32 %i.at, i32 %.15071.i
  %spec.select76 = select i1 %brmerge, i32 %i.at, i32 5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.251.i = phi i32 [ %i.af, %bb.i ], [ %spec.select75, %bb.j ] ; 2 uses
  %.048.i = phi i32 [ %i.af, %bb.i ], [ %spec.select76, %bb.j ]
  %i.au = icmp eq i32 %.251.i, %.048.i
  %spec.select62.i = select i1 %i.au, i32 %.041.lcssa.i, i32 %.04372.i
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %bb.k, %._crit_edge.i
  %.352.i = phi i32 [ %.15071.i, %._crit_edge.i ], [ %.251.i, %bb.k ], [ %.15071.i, %.lr.ph.i ] ; 3 uses
  %.144.i = phi i32 [ %.04372.i, %._crit_edge.i ], [ %spec.select62.i, %bb.k ], [ %.04372.i, %.lr.ph.i ]
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr @_ZN6icu_788Calendar15kDatePrecedenceE, i64 %indvars.iv.next83.i
  %i.aw = load i32, ptr %i.av, align 16, !tbaa !48
  %4 = shl nuw i64 1, %indvars.iv82.i
  %5 = and i64 %4, 8454656
  %.not.i.not = icmp eq i64 %5, 0
  br i1 %.not.i.not, label %.lr.ph74.i, label %._crit_edge75.i, !llvm.loop !4

_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit: ; preds = %.thread.i.1, %._crit_edge75.i
  %.352.i.lcssa.lcssa = phi i32 [ %.352.i, %._crit_edge75.i ], [ %.352.i.1, %.thread.i.1 ]
  %i.ax = tail call noundef i32 @_ZN6icu_788Calendar11getLocalDOWER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.ay = load i32, ptr %3, align 4, !tbaa !25
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %bb.z

bb.l:                                             ; preds = %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bb = load i16, ptr %i.ba, align 1
  %i.bc = lshr i16 %i.bb, 3
  %i.bd = and i16 %i.bc, 15
  %i.be = zext nneg i16 %i.bd to i32
  %i.bf = load ptr, ptr %0, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 0, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bk = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef 1, ptr noundef nonnull %i.a)
  %.not57 = icmp eq i8 %i.bk, 0
  br i1 %.not57, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %3, align 4, !tbaa !25
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !48
  %i.bm = load ptr, ptr %0, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 320
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.bl, i32 noundef 0, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load i32, ptr %3, align 4, !tbaa !25
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bt = shl i64 %i.bi, 32
  %sext = add i64 %i.bt, 4294967296
  %i.bu = ashr exact i64 %sext, 32
  %i.bv = add nsw i64 %i.bu, 1
  %i.bw = srem i64 %i.bv, 7                       ; 2 uses
  %i.bx = trunc nsw i64 %i.bw to i32
  %i.by = icmp slt i64 %i.bw, 0
  %i.bz = select i1 %i.by, i32 8, i32 1
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = and i32 %i.ca, 255
  %i.cc = sub nsw i32 %i.cb, %i.be                ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = add nsw i32 %i.cc, 7
  %spec.select = select i1 %i.cd, i32 %i.ce, i32 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !34
  %i.ch = zext i8 %i.cg to i32
  %i.ci = sub nsw i32 7, %spec.select             ; 2 uses
  %.not62 = icmp sge i32 %i.ci, %i.ch             ; 2 uses
  switch i32 %.352.i.lcssa.lcssa, label %.thread [
    i32 3, label %bb.p
    i32 5, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.cj = icmp eq i32 %2, 1
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = icmp slt i32 %i.ax, %spec.select
  %or.cond = and i1 %i.ck, %.not62
  %i.cl = sext i1 %or.cond to i32
  %spec.select67 = add nsw i32 %1, %i.cl
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %0, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 160
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 3)
  %.not61 = icmp slt i32 %2, %i.cp
  br i1 %.not61, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = mul i32 %2, 7
  %i.cr = select i1 %.not62, i32 -6, i32 1
  %i.cs = add i32 %i.cq, -7
  %i.ct = add i32 %i.cs, %i.ax
  %i.cu = add i32 %i.ct, %i.bj
  %i.cv = add i32 %i.cu, %i.ci
  %i.cw = add i32 %i.cv, %i.cr
  %.not63 = icmp sge i32 %i.cw, %i.bq
  %i.cx = zext i1 %.not63 to i32
  %.051 = add nsw i32 %1, %i.cx
  br label %.thread

bb.t:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %0, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 280
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.dc = load i32, ptr %3, align 4, !tbaa !25
  %i.dd = icmp slt i32 %i.dc, 1
  br i1 %i.dd, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.de = icmp ne i32 %i.db, 0                    ; 2 uses
  br i1 %i.de, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load ptr, ptr %0, align 8, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 160
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 3)
  %.not60 = icmp slt i32 %2, %i.di
  br i1 %.not60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = add nsw i32 %1, 1
  br label %.thread

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.dk = icmp eq i32 %2, 1
  br i1 %i.dk, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.dl = sext i1 %i.de to i32
  %spec.select66 = add nsw i32 %1, %i.dl
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.w, %bb.y, %bb.x, %bb.q, %bb.n, %bb.o, %bb.r, %bb.s, %bb.m
  %.4 = phi i32 [ 0, %bb.m ], [ 0, %bb.n ], [ %1, %bb.r ], [ %.051, %bb.s ], [ %1, %bb.o ], [ %spec.select67, %bb.q ], [ %1, %bb.x ], [ 0, %bb.t ], [ %i.dj, %bb.w ], [ %spec.select66, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.z:                                             ; preds = %.thread, %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ %.4, %.thread ], [ 0, %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit ]
  ret i32 %.6
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_788Calendar20handleGetMonthLengthEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call signext i8 @uprv_add32_overflow_78(i32 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a)
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !48
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %i.c, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.l = sub nsw i64 %i.g, %i.k
  %i.m = trunc i64 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_788Calendar19handleGetYearLengthEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.a, i32 noundef 0, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 0, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.j = load i32, ptr %2, align 4, !tbaa !25
  %i.k = sub nsw i64 %i.e, %i.i
  %i.l = trunc i64 %i.k to i32
  %.inv = icmp sgt i32 %i.j, 0
  %.0 = select i1 %.inv, i32 0, i32 %i.l
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_788Calendar16getActualMaximumE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

end_hunk_0
begin_hunk_1_@_ZN6icu_788Calendar16prepareGetActualE19UCalendarDateFieldsaR10UErrorCode:bb.a
  %i.du = urem i8 %.lhs.trunc, 7                  ; 2 uses
  %i.dv = icmp eq i8 %i.du, 0
  %narrow = select i1 %i.dv, i8 7, i8 %i.du
  %spec.select = zext nneg i8 %narrow to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i32 [ %i.ds, %bb.aa ], [ %spec.select, %bb.ab ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0, ptr %i.dw, align 4, !tbaa !48
  %i.dx = icmp eq i8 %i.u, 127
  br i1 %i.dx, label %bb.ad, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit35

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i34 = load i8, ptr %i.q, align 8, !tbaa !37
  %.pre = load i8, ptr %i.i, align 8
  %i.dy = and i8 %.pre, -12
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit35

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit35: ; preds = %bb.ac, %bb.ad
  %i.dz = phi i8 [ %i.dy, %bb.ad ], [ %i.y, %bb.ac ]
  %i.ea = phi i8 [ %.pre.i34, %bb.ad ], [ %i.u, %bb.ac ] ; 2 uses
  %i.eb = add i8 %i.ea, 1
  store i8 %i.eb, ptr %i.q, align 8, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !44
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit35, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit32, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit25, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit19
  %.sink = phi i8 [ %i.ap, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit19 ], [ %i.bx, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit25 ], [ %i.dn, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit32 ], [ %i.dz, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit35 ]
  store i8 %.sink, ptr %i.i, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit
  %i.ed = load ptr, ptr %0, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1)
  %i.eh = load i8, ptr %i.i, align 8
  %i.ei = and i8 %i.eh, 8
  %.not.i36 = icmp eq i8 %i.ei, 0
  br i1 %.not.i36, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.ej = load ptr, ptr %0, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 256
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.em = zext nneg i32 %1 to i64                 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.em
  store i32 %i.eg, ptr %i.en, align 4, !tbaa !48
  %i.eo = load i8, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 127
  br i1 %i.ep, label %bb.ah, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit38

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i37 = load i8, ptr %i.q, align 8, !tbaa !37
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit38

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit38: ; preds = %bb.ag, %bb.ah
  %i.eq = phi i8 [ %.pre.i37, %bb.ah ], [ %i.eo, %bb.ag ] ; 2 uses
  %i.er = add i8 %i.eq, 1
  store i8 %i.er, ptr %i.q, align 8, !tbaa !37
  %i.es = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.em
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !44
  %i.et = load i8, ptr %i.i, align 8
  %i.eu = and i8 %i.et, -12
  store i8 %i.eu, ptr %i.i, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit38, %bb.c
  ret void
}

declare void @_ZN6icu_786Locale15minimizeSubtagsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZNK6icu_786Locale10getCountryEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef ptr @_ZNK6icu_786Locale9getScriptEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN6icu_786Locale16addLikelySubtagsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ures_getLocaleByType_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z39ulocimp_getRegionForSupplementalData_78PKcbR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare ptr @ures_openDirect_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ures_getIntVector_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ures_close_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !49
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !47
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ures_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_788Calendar9getLocaleE18ULocDataLocaleTypeR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::Locale") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_7811LocaleBased9getLocaleERKNS_6LocaleES3_18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_7811LocaleBased9getLocaleERKNS_6LocaleES3_18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_788Calendar11getLocaleIDE18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = tail call noundef ptr @_ZN6icu_7811LocaleBased11getLocaleIDERKNS_6LocaleES3_18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.c
}

declare noundef ptr @_ZN6icu_7811LocaleBased11getLocaleIDERKNS_6LocaleES3_18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788Calendar11internalSetENS0_11EDateFieldsEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  store i32 %2, ptr %i.c, align 4, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 1, ptr %i.e, align 1, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_788Calendar16internalGetMonthER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph74.preheader.i.a, label %bb.b

.lr.ph74.preheader.i.a:                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 109
  %4 = load i8, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp slt i8 %4, %5
  %.fr = freeze i1 %6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.d = load i8, ptr %i.c, align 2, !tbaa !44    ; 3 uses
  %.not60.i.us = icmp eq i8 %i.d, 0               ; 2 uses
  br i1 %.fr, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph74.preheader.i.a
  br i1 %.not60.i.us, label %.lr.ph.i.us.preheader.1, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us.preheader
  %7 = tail call i8 @llvm.smax.i8(i8 %i.d, i8 0)
  %spec.select.i.us = zext nneg i8 %7 to i32
  br label %.lr.ph.i.us.preheader.1

.lr.ph.i.us.preheader.1:                          ; preds = %._crit_edge.i.us, %.lr.ph.i.us.preheader
  %.144.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 127
  %9 = load i8, ptr %8, align 1, !tbaa !44        ; 2 uses
  %.not60.i.us.1 = icmp eq i8 %9, 0
  br i1 %.not60.i.us.1, label %._crit_edge75.i.thread, label %._crit_edge.i.us.1

._crit_edge.i.us.1:                               ; preds = %.lr.ph.i.us.preheader.1
  %10 = tail call i8 @llvm.smax.i8(i8 %9, i8 0)
  %spec.select.i.us.1 = zext nneg i8 %10 to i32
  %11 = icmp samesign ult i32 %.144.i.us, %spec.select.i.us.1
  br i1 %11, label %.sink.split, label %._crit_edge75.i.thread

.lr.ph.i.preheader:                               ; preds = %.lr.ph74.preheader.i.a
  br i1 %.not60.i.us, label %.lr.ph.i.preheader.1, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader
  %12 = tail call i8 @llvm.smax.i8(i8 %i.d, i8 0)
  %spec.select.i = zext nneg i8 %12 to i32
  br label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %._crit_edge.i, %.lr.ph.i.preheader
  %.144.i.a = phi i32 [ %spec.select.i, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.f = load i8, ptr %i.e, align 1, !tbaa !44    ; 2 uses
  %.not60.i.1 = icmp eq i8 %i.f, 0
  br i1 %.not60.i.1, label %._crit_edge75.i.thread, label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.preheader.1
  %13 = tail call i8 @llvm.smax.i8(i8 %i.f, i8 0)
  %spec.select.i.1 = zext nneg i8 %13 to i32
  %14 = icmp samesign ult i32 %.144.i.a, %spec.select.i.1
  br i1 %14, label %.sink.split, label %._crit_edge75.i.thread

._crit_edge75.i.thread:                           ; preds = %.lr.ph.i.preheader.1, %._crit_edge.i.1, %.lr.ph.i.us.preheader.1, %._crit_edge.i.us.1
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.i.1, %._crit_edge.i.us.1, %._crit_edge75.i.thread
  %.sink16 = phi i64 [ 16, %._crit_edge75.i.thread ], [ 100, %._crit_edge.i.us.1 ], [ 100, %._crit_edge.i.1 ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_788Calendar16internalGetMonthEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph74.preheader.i.a, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

.lr.ph74.preheader.i.a:                           ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 109
  %5 = load i8, ptr %3, align 4
  %6 = load i8, ptr %4, align 1
  %7 = icmp slt i8 %5, %6
  %.fr = freeze i1 %7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.d = load i8, ptr %i.c, align 2, !tbaa !44    ; 3 uses
  %.not60.i.us = icmp eq i8 %i.d, 0               ; 2 uses
  br i1 %.fr, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph74.preheader.i.a
  br i1 %.not60.i.us, label %.lr.ph.i.us.preheader.1, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us.preheader
  %8 = tail call i8 @llvm.smax.i8(i8 %i.d, i8 0)
  %spec.select.i.us = zext nneg i8 %8 to i32
  br label %.lr.ph.i.us.preheader.1

.lr.ph.i.us.preheader.1:                          ; preds = %._crit_edge.i.us, %.lr.ph.i.us.preheader
  %.144.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 127
  %10 = load i8, ptr %9, align 1, !tbaa !44       ; 2 uses
  %.not60.i.us.1 = icmp eq i8 %10, 0
  br i1 %.not60.i.us.1, label %._crit_edge75.i.thread, label %._crit_edge.i.us.1

._crit_edge.i.us.1:                               ; preds = %.lr.ph.i.us.preheader.1
  %11 = tail call i8 @llvm.smax.i8(i8 %10, i8 0)
  %spec.select.i.us.1 = zext nneg i8 %11 to i32
  %12 = icmp samesign ult i32 %.144.i.us, %spec.select.i.us.1
  br i1 %12, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit.sink.split, label %._crit_edge75.i.thread

.lr.ph.i.preheader:                               ; preds = %.lr.ph74.preheader.i.a
  br i1 %.not60.i.us, label %.lr.ph.i.preheader.1, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader
  %13 = tail call i8 @llvm.smax.i8(i8 %i.d, i8 0)
  %spec.select.i = zext nneg i8 %13 to i32
  br label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %._crit_edge.i, %.lr.ph.i.preheader
  %.144.i.a = phi i32 [ %spec.select.i, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.f = load i8, ptr %i.e, align 1, !tbaa !44    ; 2 uses
  %.not60.i.1 = icmp eq i8 %i.f, 0
  br i1 %.not60.i.1, label %._crit_edge75.i.thread, label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.preheader.1
  %14 = tail call i8 @llvm.smax.i8(i8 %i.f, i8 0)
  %spec.select.i.1 = zext nneg i8 %14 to i32
  %15 = icmp samesign ult i32 %.144.i.a, %spec.select.i.1
  br i1 %15, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit.sink.split, label %._crit_edge75.i.thread

._crit_edge75.i.thread:                           ; preds = %.lr.ph.i.preheader.1, %._crit_edge.i.1, %.lr.ph.i.us.preheader.1, %._crit_edge.i.us.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.h = load i8, ptr %i.g, align 2, !tbaa !44
  %i.i = icmp sgt i8 %i.h, 0
  br i1 %i.i, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit.sink.split, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit.sink.split: ; preds = %._crit_edge75.i.thread, %._crit_edge.i.1, %._crit_edge.i.us.1
  %.sink17 = phi i64 [ 100, %._crit_edge.i.1 ], [ 100, %._crit_edge.i.us.1 ], [ 16, %._crit_edge75.i.thread ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink17
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  br label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit: ; preds = %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit.sink.split, %._crit_edge75.i.thread, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %1, %._crit_edge75.i.thread ], [ %i.k, %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit.sink.split ]
  ret i32 %.0
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef ptr @_ZNK6icu_7816LocaleKeyFactory17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(76)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6icu_7820BasicCalendarFactory6createERKNS_13ICUServiceKeyEPKNS_10ICUServiceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::Locale", align 8    ; 8 uses
  %5 = alloca %"class.icu_78::Locale", align 8    ; 8 uses
  %i.a = alloca [157 x i8], align 16              ; 6 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !25
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN6icu_7813ICUServiceKeyE, ptr nonnull @_ZTIN6icu_789LocaleKeyE, i64 0) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(40) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(40) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.m = invoke noundef i32 @_ZNK6icu_786Locale15getKeywordValueEPKcPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 157, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %.val = load i32, ptr %3, align 4, !tbaa !25
  %i.n = icmp slt i32 %.val, 1
  br i1 %i.n, label %bb.g, label %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.o = invoke fastcc noundef i32 @_ZN6icu_78L15getCalendarTypeEPKc(ptr noundef nonnull %i.a)
          to label %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit unwind label %bb.j

_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit: ; preds = %bb.g
  %.not = icmp eq i32 %i.o, -1
  br i1 %.not, label %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit.thread, label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.l, %bb.k, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.m

bb.k:                                             ; preds = %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit
  %i.s = invoke fastcc noundef i32 @_ZN6icu_78L15getCalendarTypeEPKc(ptr noundef nonnull %i.a)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.t = invoke fastcc noundef ptr @_ZN6icu_78L22createStandardCalendarE8ECalTypeRKNS_6LocaleER10UErrorCode(i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit.thread unwind label %bb.j

_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit.thread: ; preds = %bb.f, %bb.l, %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit
  %.011 = phi ptr [ null, %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit ], [ %i.t, %bb.l ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.q, %bb.i ]
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.p, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.a, %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit.thread
  %.112 = phi ptr [ %.011, %_ZN6icu_78L26isStandardSupportedKeywordEPKcR10UErrorCode.exit.thread ], [ null, %bb.a ]
  ret ptr %.112
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6icu_7820BasicCalendarFactory16updateVisibleIDsERNS_9HashtableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !25
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZL9gCalTypes, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64) %3, i16 noundef zeroext 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr @.str.47, ptr %5, align 8, !tbaa !74
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef -1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = load i32, ptr %i.d, align 4
  %i.m = select i1 %i.i, i32 %i.l, i32 %i.k
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.m)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.i ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #20
  %i.o = load ptr, ptr %5, align 8, !tbaa !74
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.o) #20, !srcloc !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !71
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.p, i32 noundef -1, i32 noundef 0)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.q = load i16, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %i.f, align 4
  %i.v = select i1 %i.r, i32 %i.u, i32 %i.t
  %i.w = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.v)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit18 unwind label %bb.l ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit18:    ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.x = load ptr, ptr %1, align 8, !tbaa !107
  %i.y = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #20 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit18
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7813UnicodeString6appendERKS0_.exit18
  %i.aa = invoke noundef ptr @uhash_put_78(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit unwind label %bb.n ; 0 uses

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.y) #20
  br label %.body

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.f
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not12 = icmp eq i64 %indvars.iv.next, 18
  br i1 %.not12, label %.loopexit, label %bb.b, !llvm.loop !101

bb.h:                                             ; preds = %bb.b
end_hunk_1
