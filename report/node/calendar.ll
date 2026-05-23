inline.NumInlined: 421
inline.NumDeleted: 68
begin_hunk_0_@_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki:bb.a
  %i.i = getelementptr inbounds nuw [384 x i8], ptr %1, i64 %indvars.iv99 ; 2 uses
  br label %.lr.ph74.us

._crit_edge75.split.us.us:                        ; preds = %.thread.us.us
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [384 x i8], ptr %1, i64 %indvars.iv.next100
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp ne i32 %i.k, -1
  %i.m = icmp eq i32 %.3.us.us, 24
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph74.us.preheader, label %._crit_edge78, !llvm.loop !31

.lr.ph74.us:                                      ; preds = %.lr.ph74.us.preheader, %.thread.us.us
  %indvars.iv96 = phi i64 [ 0, %.lr.ph74.us.preheader ], [ %indvars.iv.next97, %.thread.us.us ] ; 2 uses
  %i.o = phi i32 [ %i.h, %.lr.ph74.us.preheader ], [ %i.ae, %.thread.us.us ] ; 3 uses
  %.173.us.us = phi i32 [ 24, %.lr.ph74.us.preheader ], [ %.3.us.us, %.thread.us.us ] ; 2 uses
  %.04771.us.us = phi i32 [ 0, %.lr.ph74.us.preheader ], [ %.148.us.us, %.thread.us.us ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv96 ; 2 uses
  %i.q = icmp sgt i32 %i.o, 31                    ; 2 uses
  %i.r = zext i1 %i.q to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not5967.us.us = icmp eq i32 %i.t, -1
  br i1 %.not5967.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph74.us, %bb.b
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %bb.b ], [ %i.r, %.lr.ph74.us ]
  %i.u = phi i32 [ %i.aa, %bb.b ], [ %i.t, %.lr.ph74.us ]
  %.04268.us.us = phi i32 [ %spec.select.us.us, %bb.b ], [ 0, %.lr.ph74.us ]
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %.not60.us.us = icmp eq i8 %i.x, 0
  br i1 %.not60.us.us, label %.thread.us.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.y = sext i8 %i.x to i32
  %spec.select.us.us = tail call i32 @llvm.smax.i32(i32 %.04268.us.us, i32 %i.y) ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next94
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not59.us.us = icmp eq i32 %i.aa, -1
  br i1 %.not59.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !32

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph74.us
  %.042.lcssa.us.us = phi i32 [ 0, %.lr.ph74.us ], [ %spec.select.us.us, %bb.b ] ; 2 uses
  %i.ab = icmp sgt i32 %.042.lcssa.us.us, %.04771.us.us
  br i1 %i.ab, label %bb.c, label %.thread.us.us

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.ac = and i32 %i.o, 31
  %spec.select81 = select i1 %i.q, i32 %i.ac, i32 %i.o
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %.lr.ph.us.us, %bb.c, %._crit_edge.us.us
  %.148.us.us = phi i32 [ %.04771.us.us, %._crit_edge.us.us ], [ %.042.lcssa.us.us, %bb.c ], [ %.04771.us.us, %.lr.ph.us.us ]
  %.3.us.us = phi i32 [ %.173.us.us, %._crit_edge.us.us ], [ %spec.select81, %bb.c ], [ %.173.us.us, %.lr.ph.us.us ] ; 3 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv.next97
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not.us.us = icmp eq i32 %i.ae, -1
  br i1 %.not.us.us, label %._crit_edge75.split.us.us, label %.lr.ph74.us, !llvm.loop !33

.lr.ph74.preheader:                               ; preds = %.preheader.lr.ph, %._crit_edge75.split
  %i.af = phi i32 [ %i.ai, %._crit_edge75.split ], [ %i.a, %.preheader.lr.ph ]
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge75.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [384 x i8], ptr %1, i64 %indvars.iv90 ; 2 uses
  br label %.lr.ph74

._crit_edge78:                                    ; preds = %._crit_edge75.split, %._crit_edge75.split.us.us, %bb.a
  %.0.lcssa = phi i32 [ 24, %bb.a ], [ %.3.us.us, %._crit_edge75.split.us.us ], [ %.3, %._crit_edge75.split ]
  ret i32 %.0.lcssa

._crit_edge75.split:                              ; preds = %.thread
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [384 x i8], ptr %1, i64 %indvars.iv.next91
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = icmp ne i32 %i.ai, -1
  %i.ak = icmp eq i32 %.3, 24
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph74.preheader, label %._crit_edge78, !llvm.loop !31

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.thread
  %indvars.iv87 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next88, %.thread ] ; 2 uses
  %i.am = phi i32 [ %i.af, %.lr.ph74.preheader ], [ %i.bd, %.thread ] ; 3 uses
  %.173 = phi i32 [ 24, %.lr.ph74.preheader ], [ %.3, %.thread ] ; 3 uses
  %.04771 = phi i32 [ 0, %.lr.ph74.preheader ], [ %.148, %.thread ] ; 4 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv87 ; 2 uses
  %i.ao = icmp sgt i32 %i.am, 31                  ; 3 uses
  %i.ap = zext i1 %i.ao to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not5967 = icmp eq i32 %i.ar, -1
  br i1 %.not5967, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph74, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.ap, %.lr.ph74 ]
  %i.as = phi i32 [ %i.ay, %bb.d ], [ %i.ar, %.lr.ph74 ]
  %.04268 = phi i32 [ %spec.select, %bb.d ], [ 0, %.lr.ph74 ]
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.b, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not60 = icmp eq i8 %i.av, 0
  br i1 %.not60, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aw = sext i8 %i.av to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.04268, i32 %i.aw) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not59 = icmp eq i32 %i.ay, -1
  br i1 %.not59, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.d, %.lr.ph74
  %.042.lcssa = phi i32 [ 0, %.lr.ph74 ], [ %spec.select, %bb.d ] ; 2 uses
  %i.az = icmp sgt i32 %.042.lcssa, %.04771
  br i1 %i.az, label %bb.e, label %.thread

bb.e:                                             ; preds = %._crit_edge
  %i.ba = and i32 %i.am, 31                       ; 3 uses
  %.not61 = icmp eq i32 %i.ba, 5
  %.173. = select i1 %.not61, i32 %.173, i32 %i.ba ; 2 uses
  %.2 = select i1 %i.ao, i32 %.173., i32 %i.am
  %i.bb = icmp ne i32 %.173., %i.ba
  %.not84 = select i1 %i.ao, i1 %i.bb, i1 false
  %spec.select62 = select i1 %.not84, i32 %.04771, i32 %.042.lcssa
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.e, %._crit_edge
  %.148 = phi i32 [ %.04771, %._crit_edge ], [ %spec.select62, %bb.e ], [ %.04771, %.lr.ph ]
  %.3 = phi i32 [ %.173, %._crit_edge ], [ %.2, %bb.e ], [ %.173, %.lr.ph ] ; 3 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv.next88
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %.not = icmp eq i32 %i.bd, -1
  br i1 %.not, label %._crit_edge75.split, label %.lr.ph74, !llvm.loop !33
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar11computeTimeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = load i32, ptr %1, align 4                ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 16
  %.not33 = icmp eq i8 %i.h, 0
  br i1 %.not33, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %i.j = phi i32 [ %i.d, %.lr.ph.i ], [ %i.r, %bb.e ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp sgt i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %1) #17, !inline_history !34
  %.pre.i = load i32, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.j, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.s = icmp slt i32 %i.r, 1                     ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.i, 23
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit, !llvm.loop !30

_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit: ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %bb.y

bb.f:                                             ; preds = %_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.w = load i8, ptr %i.v, align 4               ; 2 uses
  %i.x = icmp sgt i8 %i.w, 1
  br i1 %i.x, label %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader.i, label %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit

_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader.i: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = tail call i8 @llvm.smax.i8(i8 %i.z, i8 0)
  %spec.select.i.i = zext nneg i8 %i.aa to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 105
  %2 = load <8 x i8>, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %3 = sext <8 x i8> %2 to <8 x i32>
  %4 = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %3)
  %spec.select.i11.i = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.ae)
  %5 = tail call i8 @llvm.smax.i8(i8 %i.ag, i8 %i.ai)
  %i.am = sext i8 %5 to i32
  %spec.select.i11.1.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %spec.select.i.i)
  %spec.select.i11.2.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i11.i, i32 %i.am)
  %spec.select.i18.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i11.2.i, i32 %spec.select.i11.1.i)
  %i.an = zext nneg i8 %i.w to i32
  %.not.not.i = icmp samesign ugt i32 %spec.select.i18.i, %i.an
  br i1 %.not.not.i, label %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit, label %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit.thread

_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit.thread: ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load i32, ptr %i.ao, align 8
  br label %bb.g

_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit: ; preds = %bb.f, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader.i
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 376
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(256) %0) #17, !inline_history !35
  %i.au = tail call noundef i32 @_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.at) ; 2 uses
  %i.av = icmp eq i32 %i.au, 24
  %spec.store.select.i = select i1 %i.av, i32 5, i32 %i.au
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 352
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %spec.store.select.i, ptr noundef nonnull align 4 dereferenceable(4) %1) #17, !inline_history !35
  %.pre = load i32, ptr %1, align 4
  %i.ba = icmp slt i32 %.pre, 1
  br i1 %i.ba, label %bb.g, label %bb.y

bb.g:                                             ; preds = %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit.thread, %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit
  %.1.i65 = phi i32 [ %i.ap, %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit.thread ], [ %i.az, %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit ]
  %i.bb = sitofp i32 %.1.i65 to double
  %i.bc = fadd nnan double %i.bb, f0xC1429EC600000000
  %i.bd = fmul nnan double %i.bc, 8.640000e+07    ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = icmp sgt i8 %i.bf, 1
  br i1 %i.bg, label %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 115
  %.pre50 = load i8, ptr %.phi.trans.insert, align 1
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %0, i64 114
  %.pre52 = load i8, ptr %.phi.trans.insert51, align 2
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 113
  %.pre54 = load i8, ptr %.phi.trans.insert53, align 1
  br label %bb.i

_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit: ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bj = tail call i8 @llvm.smax.i8(i8 %i.bi, i8 0)
  %spec.select.i = zext nneg i8 %i.bj to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.bl = load i8, ptr %i.bk, align 2             ; 2 uses
  %i.bm = sext i8 %i.bl to i32
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.bo = load i8, ptr %i.bn, align 1             ; 2 uses
  %i.bp = sext i8 %i.bo to i32
  %spec.select.i.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.1, i32 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = sext i8 %i.br to i32
  %spec.select.i.3 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.2, i32 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 117
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = sext i8 %i.bu to i32
  %spec.select.i.4 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.3, i32 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.bx = load i8, ptr %i.bw, align 2
  %i.by = sext i8 %i.bx to i32
  %spec.select.i.5 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.4, i32 %i.by)
  %i.bz = zext nneg i8 %i.bf to i32
  %.not36 = icmp samesign ugt i32 %spec.select.i.5, %i.bz
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = sitofp i32 %i.cb to double
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit
  %i.cd = phi i8 [ %.pre54, %._crit_edge ], [ %i.bi, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit ]
  %i.ce = phi i8 [ %.pre52, %._crit_edge ], [ %i.bl, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit ]
  %i.cf = phi i8 [ %.pre50, %._crit_edge ], [ %i.bo, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit ] ; 2 uses
  %..i = tail call i8 @llvm.smax.i8(i8 %i.ce, i8 %i.cd) ; 2 uses
  %i.cg = tail call i8 @llvm.smax.i8(i8 %..i, i8 %i.cf)
  %.not.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i, label %_ZN6icu_788Calendar18computeMillisInDayEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not18.i = icmp slt i8 %i.cf, %..i
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = sitofp i32 %i.ci to double
  br label %_ZN6icu_788Calendar18computeMillisInDayEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 1
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = select i1 %i.cq, i32 0, i32 12
  %i.cs = uitofp nneg i32 %i.cr to double
  %i.ct = fadd nnan double %i.cm, %i.cs
  br label %_ZN6icu_788Calendar18computeMillisInDayEv.exit

_ZN6icu_788Calendar18computeMillisInDayEv.exit:   ; preds = %bb.i, %bb.k, %bb.l
  %.0.i = phi double [ %i.cj, %bb.k ], [ %i.ct, %bb.l ], [ 0.000000e+00, %bb.i ]
  %i.cu = fmul nnan double %.0.i, 6.000000e+01
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = sitofp i32 %i.cw to double
  %i.cy = fadd nnan double %i.cu, %i.cx
  %i.cz = fmul nnan double %i.cy, 6.000000e+01
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fadd nnan double %i.cz, %i.dc
  %i.de = fmul nnan double %i.dd, 1.000000e+03
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fadd double %i.de, %i.dh
  br label %bb.m

bb.m:                                             ; preds = %_ZN6icu_788Calendar18computeMillisInDayEv.exit, %bb.h
  %.0 = phi double [ %i.cc, %bb.h ], [ %i.di, %_ZN6icu_788Calendar18computeMillisInDayEv.exit ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp sgt i8 %i.dk, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dn = load i8, ptr %i.dm, align 8
  %i.do = icmp sgt i8 %i.dn, 1
  %or.cond44 = select i1 %i.dl, i1 true, i1 %i.do
  br i1 %or.cond44, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dp = fadd double %i.bd, %.0
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fsub double %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = sitofp i32 %i.dv to double
  %i.dx = fsub double %i.dt, %i.dw
  br label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.dy = load i8, ptr %i.f, align 8
  %i.dz = and i8 %i.dy, 16
  %.not37 = icmp eq i8 %i.dz, 0
  br i1 %.not37, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = and i16 %i.eb, 7
  %i.ed = icmp eq i16 %i.ec, 2
  br i1 %i.ed, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ee = tail call noundef i32 @_ZN6icu_788Calendar17computeZoneOffsetEddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.bd, double noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %i.ef = fadd double %i.bd, %.0
  %i.eg = sitofp i32 %i.ee to double
  %i.eh = fsub double %i.ef, %i.eg                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, double noundef %i.eh, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.en = load i32, ptr %1, align 4               ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = load i32, ptr %i.a, align 4
  %i.eq = load i32, ptr %i.b, align 4
  %i.er = add nsw i32 %i.eq, %i.ep
  %.not39 = icmp eq i32 %i.ee, %i.er
  br i1 %.not39, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.es = load i8, ptr %i.f, align 8
  %i.et = and i8 %i.es, 16
  %.not40 = icmp eq i8 %i.et, 0
  br i1 %.not40, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %1, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.eu = call noundef signext i8 @_ZNK6icu_788Calendar34getImmediatePreviousZoneTransitionEdPdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.eh, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ev = load i32, ptr %1, align 4               ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 1
  %i.ex = icmp ne i8 %i.eu, 0
  %or.cond = and i1 %i.ex, %i.ew
  %i.ey = load double, ptr %i.c, align 8
  %.032 = select i1 %or.cond, double %i.ey, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s, %bb.p
  %i.ez = phi i32 [ %i.ev, %bb.t ], [ 1, %bb.s ], [ %i.en, %bb.p ], [ %i.en, %bb.q ]
  %.1 = phi double [ %.032, %bb.t ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.p ], [ %i.eh, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.fa = fadd double %i.bd, %.0
  %i.fb = tail call noundef i32 @_ZN6icu_788Calendar17computeZoneOffsetEddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.bd, double noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fsub double %i.fa, %i.fc
  %.pre55 = load i32, ptr %1, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fe = phi i32 [ %.pre55, %bb.v ], [ %i.ez, %bb.u ]
  %.2 = phi double [ %i.fd, %bb.v ], [ %.1, %bb.u ]
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.267 = phi double [ %i.dx, %.thread ], [ %.2, %bb.w ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %.267, ptr %i.fg, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_788Calendar16computeJulianDayER10UErrorCode.exit, %bb.x, %bb.w, %_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_788Calendar16computeJulianDayER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = icmp sgt i8 %i.b, 1
  br i1 %i.c, label %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader, label %.thread

_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8
  %i.f = tail call i8 @llvm.smax.i8(i8 %i.e, i8 0)
  %spec.select.i = zext nneg i8 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 105
  %2 = load <8 x i8>, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.i = load i8, ptr %i.h, align 1
  %i.j = sext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.l = load i8, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.n = load i8, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i32
  %3 = sext <8 x i8> %2 to <8 x i32>
  %4 = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %3)
  %spec.select.i11 = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.j)
  %5 = tail call i8 @llvm.smax.i8(i8 %i.l, i8 %i.n)
  %i.r = sext i8 %5 to i32
  %spec.select.i11.1 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %spec.select.i)
  %spec.select.i11.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.i11, i32 %i.r)
  %spec.select.i18 = tail call i32 @llvm.smax.i32(i32 %spec.select.i11.2, i32 %spec.select.i11.1)
  %i.s = zext nneg i8 %i.b to i32
  %.not.not = icmp samesign ugt i32 %spec.select.i18, %i.s
  br i1 %.not.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i32, ptr %i.t, align 8
  br label %bb.c

.thread:                                          ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader, %bb.a
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 376
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(256) %0) #17
  %i.z = tail call noundef i32 @_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.y) ; 2 uses
  %i.aa = icmp eq i32 %i.z, 24
  %spec.store.select = select i1 %i.aa, i32 5, i32 %i.z
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %spec.store.select, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.1 = phi i32 [ %i.ae, %.thread ], [ %i.u, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN6icu_788Calendar18computeMillisInDayEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.d = load i8, ptr %i.c, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.f = load i8, ptr %i.e, align 1
  %. = tail call i8 @llvm.smax.i8(i8 %i.d, i8 %i.f) ; 2 uses
  %i.g = tail call i8 @llvm.smax.i8(i8 %., i8 %i.b)
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp slt i8 %i.b, %.
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sitofp i32 %i.i to double
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sitofp i32 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 1
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i32 0, i32 12
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fadd nnan double %i.m, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi double [ %i.j, %bb.c ], [ %i.t, %bb.d ], [ 0.000000e+00, %bb.a ]
  %i.u = fmul nnan double %.0, 6.000000e+01
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i32, ptr %i.v, align 8
  %i.x = sitofp i32 %i.w to double
  %i.y = fadd nnan double %i.u, %i.x
  %i.z = fmul nnan double %i.y, 6.000000e+01
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fadd nnan double %i.z, %i.ac
  %i.ae = fmul nnan double %i.ad, 1.000000e+03
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fadd double %i.ae, %i.ah
  ret double %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_788Calendar17computeZoneOffsetEddR10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, double noundef %1, double noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %3, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.g = fadd double %1, %2                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8              ; 15 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7813OlsonTimeZoneE, i64 0) #17
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.i, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

.critedge.i:                                      ; preds = %bb.c
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7814SimpleTimeZoneE, i64 0) #17
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge10.i, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

.critedge10.i:                                    ; preds = %.critedge.i
  %i.o = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7817RuleBasedTimeZoneE, i64 0) #17
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge12.i, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

.critedge12.i:                                    ; preds = %.critedge10.i
  %i.q = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_789VTimeZoneE, i64 0) #17
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit:    ; preds = %.critedge12.i, %.critedge10.i, %.critedge.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load i8, ptr %i.s, align 8
  %.mask32 = and i8 %i.t, -32
  %i.u = icmp eq i8 %.mask32, 32
  %i.v = select i1 %i.u, i32 4, i32 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.x = load i16, ptr %i.w, align 1
  %i.y = and i16 %i.x, 7
  %i.z = icmp eq i16 %i.y, 1
  %i.aa = select i1 %i.z, i32 12, i32 4
  %i.ab = load ptr, ptr %i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.g, i32 noundef %i.aa, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  br label %bb.h

bb.d:                                             ; preds = %.critedge12.i, %bb.b
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.g, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load i8, ptr %i.ah, align 8
  %.mask = and i8 %i.ai, -32
  %i.aj = icmp eq i8 %.mask, 32
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = load i32, ptr %i.b, align 4
  %i.am = add nsw i32 %i.al, %i.ak
  %i.an = sitofp i32 %i.am to double
  %i.ao = fsub double %i.g, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.ap = fadd double %i.ao, -2.160000e+07
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.ap, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %i.at = load i32, ptr %i.a, align 4
  %i.au = load i32, ptr %i.b, align 4
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = load i32, ptr %i.d, align 4
  %.neg38 = add i32 %i.au, %i.at
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = sub i32 %.neg38, %i.ax                  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.critedge34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = sitofp i32 %i.ay to double
  %i.bb = fadd double %i.g, %i.ba
  %i.bc = load ptr, ptr %i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.bb, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.h

.critedge34:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge34
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = and i16 %i.bg, 7
  %i.bi = icmp eq i16 %i.bh, 1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
end_hunk_0
begin_hunk_1_@_ZN6icu_78L15getCalendarTypeEPKc:bb.a
  br i1 %i.v, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.25) #17
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.26) #17
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.27) #17
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.28) #17
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.29) #17
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.30) #17
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = tail call i32 @uprv_stricmp_78(ptr noundef %0, ptr noundef nonnull @.str.31) #17
  %i.aj = icmp eq i32 %i.ai, 0
  %spec.select = select i1 %i.aj, i32 17, i32 -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ak = phi i32 [ 0, %bb.a ], [ 9, %bb.j ], [ 1, %bb.b ], [ %spec.select, %bb.r ], [ 2, %bb.c ], [ 13, %bb.n ], [ 3, %bb.d ], [ 16, %bb.q ], [ 4, %bb.e ], [ 10, %bb.k ], [ 5, %bb.f ], [ 15, %bb.p ], [ 6, %bb.g ], [ 12, %bb.m ], [ 7, %bb.h ], [ 14, %bb.o ], [ 8, %bb.i ], [ 11, %bb.l ]
  ret i32 %i.ak
}

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare i32 @uprv_stricmp_78(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6icu_7812UnifiedCache11getInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7814LocaleCacheKeyINS_14SharedCalendarEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_14SharedCalendarEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17
  tail call void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(13) %0) #17
  ret void
}

declare void @_ZNK6icu_7812UnifiedCache4_getERKNS_12CacheKeyBaseERPKNS_12SharedObjectEPKvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(13), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7814LocaleCacheKeyINS_14SharedCalendarEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_14SharedCalendarEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17, !inline_history !7
  tail call void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #17, !inline_history !7
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6icu_7814LocaleCacheKeyINS_14SharedCalendarEE8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @ustr_hashCharsN_78(ptr noundef nonnull @_ZTSN6icu_7814SharedCalendarE, i32 noundef 25) #17
  %i.b = mul i32 %i.a, 37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef i32 @_ZNK6icu_786Locale8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #17
  %i.e = add i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6icu_7814LocaleCacheKeyINS_14SharedCalendarEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 56) #17 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7812CacheKeyBaseE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.f, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_14SharedCalendarEEE, i64 16), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h) #17, !inline_history !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6icu_7814LocaleCacheKeyINS_14SharedCalendarEE16writeDescriptionEPci(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = tail call ptr @strncpy(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.c) #17 ; 0 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  store i8 0, ptr %i.f, align 1
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6icu_7814LocaleCacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1
  %.not.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i, label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread4, label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit

_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit: ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #17
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread, label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread4

_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = tail call noundef zeroext i1 @_ZNK6icu_786LocaleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #17
  br label %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread4

_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread4: ; preds = %bb.c, %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit, %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread
  %.0 = phi i1 [ %i.u, %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit.thread ], [ false, %_ZNK6icu_788CacheKeyINS_14SharedCalendarEE6equalsERKNS_12CacheKeyBaseE.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(13)) unnamed_addr #1

declare i32 @ustr_hashCharsN_78(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6icu_786Locale8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6icu_786LocaleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{ptr @_ZN6icu_7814SharedCalendarD2Ev}
!6 = distinct !{null}
!7 = !{ptr @_ZN6icu_7814LocaleCacheKeyINS_14SharedCalendarEED2Ev}
!8 = !{ptr @_ZN6icu_788Calendar13adoptTimeZoneEPNS_8TimeZoneE}
!9 = !{ptr @_ZN6icu_788Calendar14createInstanceERKNS_8TimeZoneERKNS_6LocaleER10UErrorCode, ptr @_ZN6icu_788Calendar11setTimeZoneERKNS_8TimeZoneE}
!10 = !{ptr @_ZN6icu_788Calendar14createInstanceERKNS_8TimeZoneERKNS_6LocaleER10UErrorCode, ptr @_ZN6icu_788Calendar11setTimeZoneERKNS_8TimeZoneE, ptr @_ZN6icu_788Calendar13adoptTimeZoneEPNS_8TimeZoneE}
!11 = !{ptr @_ZN6icu_788Calendar11setTimeZoneERKNS_8TimeZoneE}
!12 = !{ptr @_ZN6icu_788Calendar11setTimeZoneERKNS_8TimeZoneE, ptr @_ZN6icu_788Calendar13adoptTimeZoneEPNS_8TimeZoneE}
!13 = !{ptr @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode, ptr @_ZN6icu_788Calendar10updateTimeER10UErrorCode}
!14 = !{ptr @_ZN6icu_788Calendar10updateTimeER10UErrorCode}
!15 = distinct !{null, ptr @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode, ptr @_ZN6icu_788Calendar10updateTimeER10UErrorCode}
!16 = !{ptr @_ZN6icu_788Calendar8completeER10UErrorCode, ptr @_ZN6icu_788Calendar10updateTimeER10UErrorCode}
!17 = !{ptr @_ZN6icu_788Calendar8completeER10UErrorCode}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{ptr @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi}
!21 = !{ptr @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode, ptr @_ZN6icu_788Calendar8completeER10UErrorCode, ptr @_ZN6icu_788Calendar10updateTimeER10UErrorCode}
!22 = !{ptr @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode, ptr @_ZN6icu_788Calendar8completeER10UErrorCode}
!23 = distinct !{!23, !19, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !19, !25, !24}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = !{ptr @_ZN6icu_788Calendar14validateFieldsER10UErrorCode}
!35 = !{ptr @_ZN6icu_788Calendar16computeJulianDayER10UErrorCode}
!36 = distinct !{!36, !19}
!37 = distinct !{null}
end_hunk_1
