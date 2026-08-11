inline.NumInlined: 97
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7810RegexCImpl10appendTailEPNS_17RegularExpressionEPPDsPiP10UErrorCode:bb.a
  %exitcond194 = icmp eq i64 %indvars.iv.next189, %wide.trip.count193
  br i1 %exitcond194, label %.thread107, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.h
  br i1 %.not94, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !79
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !52 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, -1
  %spec.store.select = select i1 %i.ci, i64 0, i64 %i.ch
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i64 [ %i.cf, %bb.v ], [ %spec.store.select, %bb.w ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !80
  %i.cn = tail call i32 @utext_extract_78(ptr noundef %i.ck, i64 noundef %.0, i64 noundef %i.cm, ptr noundef %i.q, i32 noundef %i.t, ptr noundef nonnull %3)
  br label %.thread107

.thread107.loopexit236.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread107, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %.thread107.loopexit236.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv170.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next171.1, %.thread107.loopexit236.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ %i.ar, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next.1, %.thread107.loopexit236.unr-lcssa ]
  %lcmp.mod237 = trunc i32 %i.au to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.co = icmp samesign ult i64 %indvars.iv170.epil.init, %i.as
  br i1 %i.co, label %bb.y, label %.thread107

bb.y:                                             ; preds = %.lr.ph.split.us.split.epil.preheader
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %indvars.iv.epil.init
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !24
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv170.epil.init
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !24
  br label %.thread107

.thread107:                                       ; preds = %.thread107.loopexit236.unr-lcssa, %bb.y, %.lr.ph.split.us.split.epil.preheader, %bb.n, %bb.t, %bb.m, %.split.us, %.split130.us, %bb.x
  %.3 = phi i32 [ %i.cn, %bb.x ], [ %.us-phi131, %.split130.us ], [ %i.cd, %.split.us ], [ 0, %bb.m ], [ %i.bw, %bb.t ], [ %i.au, %bb.n ], [ %i.au, %.lr.ph.split.us.split.epil.preheader ], [ %i.au, %bb.y ], [ %i.au, %.thread107.loopexit236.unr-lcssa ] ; 7 uses
  %i.cs = icmp slt i32 %.3, %i.t
  br i1 %i.cs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread107
  %i.ct = icmp eq i32 %.3, %i.t
  %. = select i1 %i.ct, i32 -124, i32 15
  store i32 %., ptr %3, align 4, !tbaa !21
  %i.cu = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %.not96 = icmp eq ptr %i.cu, null
  br i1 %.not96, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %.thread107
  %i.cv = sext i32 %.3 to i64                     ; 2 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cv
  store i16 0, ptr %i.cw, align 2, !tbaa !24
  %i.cx = load ptr, ptr %1, align 8, !tbaa !36
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.cy, ptr %1, align 8, !tbaa !36
  %i.cz = load i32, ptr %2, align 4, !tbaa !27
  %i.da = sub nsw i32 %i.cz, %.3
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.db = zext nneg i32 %i.t to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.db
  store ptr %i.dc, ptr %1, align 8, !tbaa !36
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab
  %.sink = phi i32 [ 0, %bb.ab ], [ %i.da, %bb.aa ]
  store i32 %.sink, ptr %2, align 4, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  br i1 %or.cond.not, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load i32, ptr %3, align 4, !tbaa !21
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread.sink.split

_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread.sink.split: ; preds = %bb.ad, %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit, %bb.g, %bb.c, %bb.d, %bb.f
  %.sink.i.sink = phi i32 [ 66306, %bb.f ], [ 1, %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.g ], [ 15, %bb.ad ]
  %.079.ph = phi i32 [ 0, %bb.f ], [ 0, %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ], [ %.3, %bb.ad ]
  store i32 %.sink.i.sink, ptr %3, align 4, !tbaa !21
  br label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread

_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread: ; preds = %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread.sink.split, %bb.b, %thread-pre-split, %bb.ac, %bb.ad
  %.079 = phi i32 [ %.3, %bb.ac ], [ 0, %bb.b ], [ 0, %thread-pre-split ], [ %.3, %bb.ad ], [ %.079.ph, %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread.sink.split ]
  ret i32 %.079
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uregex_appendTailUText_78(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call noundef ptr @_ZN6icu_7812RegexMatcher10appendTailEP5UTextR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.c
}

declare noundef ptr @_ZN6icu_7812RegexMatcher10appendTailEP5UTextR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @uregex_split_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !21
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8, !tbaa !8
  %.not9.i = icmp eq i32 %i.d, 1919252592
  br i1 %.not9.i, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i8, ptr %i.h, align 4, !tbaa !19
  %.not11.i = icmp eq i8 %i.i, 0
  br i1 %.not11.i, label %.sink.split.i, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 1, %bb.c ], [ 66306, %bb.e ]
  store i32 %.sink.i, ptr %6, align 4, !tbaa !21
  br label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread

_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit: ; preds = %bb.e, %bb.d
  %i.j = icmp eq ptr %1, null
  %i.k = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.j, %i.k
  %i.l = icmp slt i32 %2, 0
  %or.cond3 = or i1 %i.l, %or.cond
  %i.m = icmp eq ptr %4, null
  %or.cond5 = or i1 %or.cond3, %i.m
  %i.n = icmp slt i32 %5, 1
  %or.cond7 = or i1 %or.cond5, %i.n
  br i1 %or.cond7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit
  store i32 1, ptr %6, align 4, !tbaa !21
  br label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread

bb.g:                                             ; preds = %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit
  %i.o = tail call noundef i32 @_ZN6icu_7810RegexCImpl5splitEPNS_17RegularExpressionEPDsiPiPS3_iP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %6)
  br label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread

_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.thread: ; preds = %bb.a, %.sink.split.i, %bb.g, %bb.f
  %.0 = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ], [ 0, %.sink.split.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6icu_7810RegexCImpl5splitEPNS_17RegularExpressionEPDsiPiPS3_iP10UErrorCode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetEv(ptr noundef nonnull align 8 dereferenceable(336) %i.c) ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80   ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i32 @_ZNK6icu_7812RegexMatcher10groupCountEv(ptr noundef nonnull align 8 dereferenceable(336) %i.e) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.l = add i32 %5, -1                           ; 12 uses
  %.not176 = icmp sgt i32 %5, 1
  br i1 %.not176, label %.lr.ph181, label %._crit_edge182

.lr.ph181:                                        ; preds = %bb.b
  %i.m = icmp eq ptr %1, null                     ; 4 uses
  %.not134155 = icmp slt i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  br i1 %.not134155, label %.lr.ph181.split.us.preheader, label %.lr.ph181.split.split.preheader

.lr.ph181.split.split.preheader:                  ; preds = %.lr.ph181
  %7 = add nsw i32 %5, -2
  %i.p = add nsw i32 %i.k, -1
  br label %.lr.ph181.split.split

.lr.ph181.split.us.preheader:                     ; preds = %.lr.ph181
  %wide.trip.count = zext nneg i32 %i.l to i64
  %.pre293 = load ptr, ptr %i.b, align 8, !tbaa !15
  br label %.lr.ph181.split.us

.lr.ph181.split.us:                               ; preds = %.lr.ph181.split.us.preheader, %bb.g
  %i.q = phi ptr [ %.pre293, %.lr.ph181.split.us.preheader ], [ %i.ag, %bb.g ]
  %indvars.iv287 = phi i64 [ 0, %.lr.ph181.split.us.preheader ], [ %indvars.iv.next288, %bb.g ] ; 4 uses
  %.0119179.us = phi i64 [ 0, %.lr.ph181.split.us.preheader ], [ %i.ai, %bb.g ] ; 2 uses
  %.0120178.us = phi i32 [ 0, %.lr.ph181.split.us.preheader ], [ %i.ad, %bb.g ] ; 4 uses
  %i.r = call noundef signext i8 @_ZN6icu_7812RegexMatcher4findEv(ptr noundef nonnull align 8 dereferenceable(336) %i.q)
  %.not133.us = icmp eq i8 %i.r, 0
  br i1 %.not133.us, label %.split.us.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph181.split.us
  %i.s = sext i32 %.0120178.us to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %1, i64 %i.s
  %i.u = select i1 %i.m, ptr null, ptr %i.t       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv287
  store ptr %i.u, ptr %i.v, align 8, !tbaa !36
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !53
  %i.z = sub nsw i32 %2, %.0120178.us
  %i.aa = call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ab = call i32 @utext_extract_78(ptr noundef %i.g, i64 noundef %.0119179.us, i64 noundef %i.y, ptr noundef %i.u, i32 noundef %i.aa, ptr noundef nonnull %i.a)
  %i.ac = add i32 %.0120178.us, 1
  %i.ad = add i32 %i.ac, %i.ab                    ; 3 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.af = icmp eq i32 %i.ae, 15
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.ae, ptr %6, align 4, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !79 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, %i.i
  br i1 %i.aj, label %.split191.us.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge182, label %.lr.ph181.split.us, !llvm.loop !81

._crit_edge182:                                   ; preds = %bb.ag, %bb.g, %bb.b
  %.0121.lcssa = phi i32 [ 0, %bb.b ], [ %i.l, %bb.g ], [ %i.fl, %bb.ag ] ; 2 uses
  %.0120.lcssa = phi i32 [ 0, %bb.b ], [ %i.ad, %bb.g ], [ %.2.lcssa, %bb.ag ] ; 2 uses
  %.0119.lcssa = phi i64 [ 0, %bb.b ], [ %i.ai, %bb.g ], [ %i.bw, %bb.ag ] ; 2 uses
  %i.ak = icmp sgt i64 %i.i, %.0119.lcssa
  br i1 %i.ak, label %bb.h, label %bb.ah

bb.h:                                             ; preds = %._crit_edge182
  %.not135 = icmp eq i32 %.0121.lcssa, %i.l
  %.pre295 = sext i32 %i.l to i64                 ; 2 uses
  br i1 %.not135, label %._crit_edge294, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre295
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = load ptr, ptr %4, align 8, !tbaa !36
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 1
  %i.as = trunc i64 %i.ar to i32
  br label %._crit_edge294

._crit_edge294:                                   ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.as, %bb.i ], [ %.0120.lcssa, %bb.h ] ; 3 uses
  %i.at = icmp eq ptr %1, null
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %1, i64 %i.au
  %i.aw = select i1 %i.at, ptr null, ptr %i.av    ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre295
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !36
  %i.ay = sub nsw i32 %2, %.1
  %i.az = call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %i.ba = call i32 @utext_extract_78(ptr noundef %i.g, i64 noundef %.0119.lcssa, i64 noundef %i.i, ptr noundef %i.aw, i32 noundef %i.az, ptr noundef %6)
  %i.bb = add i32 %.1, 1
  %i.bc = add i32 %i.bb, %i.ba
  br label %bb.ah

.lr.ph181.split.split:                            ; preds = %.lr.ph181.split.split.preheader, %bb.ag
  %.0119179 = phi i64 [ %i.bw, %bb.ag ], [ 0, %.lr.ph181.split.split.preheader ] ; 2 uses
  %.0120178 = phi i32 [ %.2.lcssa, %bb.ag ], [ 0, %.lr.ph181.split.split.preheader ] ; 4 uses
  %.0121177 = phi i32 [ %i.fl, %bb.ag ], [ 0, %.lr.ph181.split.split.preheader ] ; 5 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.be = call noundef signext i8 @_ZN6icu_7812RegexMatcher4findEv(ptr noundef nonnull align 8 dereferenceable(336) %i.bd)
  %.not133 = icmp eq i8 %i.be, 0
  br i1 %.not133, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph181.split.split
  %i.bf = sext i32 %.0120178 to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bf
  %i.bh = select i1 %i.m, ptr null, ptr %i.bg     ; 2 uses
  %i.bi = sext i32 %.0121177 to i64               ; 5 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !36
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bn = sub nsw i32 %2, %.0120178
  %i.bo = call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %i.bp = call i32 @utext_extract_78(ptr noundef %i.g, i64 noundef %.0119179, i64 noundef %i.bm, ptr noundef %i.bh, i32 noundef %i.bo, ptr noundef nonnull %i.a)
  %i.bq = add i32 %.0120178, 1
  %i.br = add i32 %i.bq, %i.bp                    ; 3 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 15
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.a, align 4, !tbaa !21
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.bs, ptr %6, align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !79 ; 3 uses
  %i.bx = icmp eq i32 %.0121177, %i.l
  br i1 %i.bx, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.by = load i32, ptr %0, align 8, !tbaa !8
  %i.bz = icmp eq i32 %i.by, 1919252592
  br i1 %i.bz, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  store i32 1, ptr %6, align 4, !tbaa !21
  %i.ca = sext i32 %i.br to i64                   ; 3 uses
  %i.cb = sub i32 %7, %.0121177
  %i.cc = call i32 @llvm.umin.i32(i32 %i.cb, i32 %i.p) ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cc, 3
  br i1 %min.iters.check, label %uregex_group_78.exit.thread.us168.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us
  %n.vec = and i64 %i.ce, 8589934588              ; 6 uses
  %i.cf = add nsw i64 %n.vec, %i.bi
  %i.cg = add nsw i64 %n.vec, %i.ca               ; 2 uses
  %i.ch = trunc i64 %n.vec to i32
  %i.ci = or disjoint i32 %i.ch, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds [2 x i8], ptr %1, <2 x i64> %vec.ind
  %wide.gep372 = getelementptr inbounds [2 x i8], ptr %1, <2 x i64> %step.add
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cj = getelementptr i8, ptr %gep, i64 8
  %i.ck = getelementptr i8, ptr %gep, i64 24
  store <2 x ptr> %wide.gep, ptr %i.cj, align 8, !tbaa !36
  store <2 x ptr> %wide.gep372, ptr %i.ck, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %i.cm = trunc i64 %n.vec to i32
  %i.cn = add i32 %.0121177, %i.cm
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.split.us, label %uregex_group_78.exit.thread.us168.preheader

uregex_group_78.exit.thread.us168.preheader:      ; preds = %.lr.ph.split.split.us, %middle.block
  %indvars.iv272.ph = phi i64 [ %i.bi, %.lr.ph.split.split.us ], [ %i.cf, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ca, %.lr.ph.split.split.us ], [ %i.cg, %middle.block ]
  %.0118159.us165.ph = phi i32 [ 1, %.lr.ph.split.split.us ], [ %i.ci, %middle.block ]
  br label %uregex_group_78.exit.thread.us168

uregex_group_78.exit.thread.us168:                ; preds = %uregex_group_78.exit.thread.us168.preheader, %uregex_group_78.exit.thread.us168
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %uregex_group_78.exit.thread.us168 ], [ %indvars.iv272.ph, %uregex_group_78.exit.thread.us168.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %uregex_group_78.exit.thread.us168 ], [ %indvars.iv.ph, %uregex_group_78.exit.thread.us168.preheader ] ; 2 uses
  %.0118159.us165 = phi i32 [ %i.cq, %uregex_group_78.exit.thread.us168 ], [ %.0118159.us165.ph, %uregex_group_78.exit.thread.us168.preheader ] ; 2 uses
  %indvars.iv.next273 = add nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.co = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv
  %i.cp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next273
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cq = add nuw nsw i32 %.0118159.us165, 1
  %.not134.us170 = icmp sge i32 %.0118159.us165, %i.k
  %i.cr = trunc nsw i64 %indvars.iv.next273 to i32 ; 2 uses
  %i.cs = icmp eq i32 %i.l, %i.cr
  %or.cond.us171 = or i1 %i.cs, %.not134.us170
  br i1 %or.cond.us171, label %._crit_edge.split.split.us, label %uregex_group_78.exit.thread.us168, !llvm.loop !83

._crit_edge.split.split.us:                       ; preds = %uregex_group_78.exit.thread.us168, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.cg, %middle.block ], [ %indvars.iv.next, %uregex_group_78.exit.thread.us168 ]
  %.lcssa358 = phi i32 [ %i.cn, %middle.block ], [ %i.cr, %uregex_group_78.exit.thread.us168 ]
  %i.ct = trunc nsw i64 %indvars.iv.next.lcssa to i32
  store i32 1, ptr %i.a, align 4, !tbaa !21
  br label %._crit_edge.split

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.ac
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %bb.ac ], [ %i.bi, %.lr.ph ]
  %.0118159 = phi i32 [ %i.el, %bb.ac ], [ 1, %.lr.ph ] ; 6 uses
  %.2158 = phi i32 [ %i.ek, %bb.ac ], [ %i.br, %.lr.ph ] ; 4 uses
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, 1 ; 3 uses
  %i.cu = sext i32 %.2158 to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cu ; 4 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next278
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !36
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.cx = sub nsw i32 %2, %.2158                  ; 3 uses
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cx, i32 0) ; 5 uses
  %i.cz = load i32, ptr %0, align 8, !tbaa !8
  %.not9.i.i = icmp eq i32 %i.cz, 1919252592
  br i1 %.not9.i.i, label %bb.n, label %uregex_group_78.exit.thread

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.db = icmp ne ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load i8, ptr %i.o, align 4, !tbaa !19
  %.not11.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not11.i.i, label %uregex_group_78.exit.thread, label %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.i

_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.i: ; preds = %bb.o, %bb.n
  %i.dd = icmp sgt i32 %i.cx, 0
  %or.cond.i = and i1 %i.m, %i.dd
  br i1 %or.cond.i, label %uregex_group_78.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.i
  %i.de = icmp slt i32 %i.cx, 1
  %brmerge.i = or i1 %i.de, %i.db
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  br i1 %brmerge.i, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.dg = call noundef i32 @_ZNK6icu_7812RegexMatcher5startEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.df, i32 noundef %.0118159, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.di = call noundef i32 @_ZNK6icu_7812RegexMatcher3endEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.dh, i32 noundef %.0118159, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 1
  br i1 %i.dk, label %bb.r, label %uregex_group_78.exit

bb.r:                                             ; preds = %bb.q
  %i.dl = sub nsw i32 %i.di, %i.dg                ; 6 uses
  %i.dm = icmp slt i32 %i.dl, %i.cy
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.dn
  store i16 0, ptr %i.do, align 2, !tbaa !24
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.dp = icmp eq i32 %i.dl, %i.cy
  br i1 %i.dp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 -124, ptr %i.a, align 4, !tbaa !21
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 15, ptr %i.a, align 4, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.049.i = phi i32 [ %i.dl, %bb.s ], [ %i.cy, %bb.u ], [ %i.cy, %bb.v ] ; 2 uses
  %i.dq = icmp sgt i32 %.049.i, 0
  br i1 %i.dq, label %bb.x, label %uregex_group_78.exitthread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ds = sext i32 %i.dg to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.ds
  %i.du = call ptr @u_memcpy_78(ptr noundef %i.cv, ptr noundef %i.dt, i32 noundef %.049.i) ; 0 uses
  br label %uregex_group_78.exitthread-pre-split

bb.y:                                             ; preds = %bb.p
  %i.dv = call noundef i64 @_ZNK6icu_7812RegexMatcher7start64EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.df, i32 noundef %.0118159, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.dx = call noundef i64 @_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.dw, i32 noundef %.0118159, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.z, label %uregex_group_78.exit

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.eb = call noundef ptr @_ZNK6icu_7812RegexMatcher9inputTextEv(ptr noundef nonnull align 8 dereferenceable(336) %i.ea)
  %i.ec = call i32 @utext_extract_78(ptr noundef %i.eb, i64 noundef %i.dv, i64 noundef %i.dx, ptr noundef %i.cv, i32 noundef %i.cy, ptr noundef nonnull %i.a)
  br label %uregex_group_78.exitthread-pre-split

uregex_group_78.exitthread-pre-split:             ; preds = %bb.z, %bb.x, %bb.w
  %.2.i.ph = phi i32 [ %i.ec, %bb.z ], [ %i.dl, %bb.x ], [ %i.dl, %bb.w ]
  %.pr = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ed = add nsw i32 %.2.i.ph, 1
  br label %uregex_group_78.exit

uregex_group_78.exit.thread:                      ; preds = %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.i, %.lr.ph.split.split, %bb.o
  %.ph = phi i32 [ 66306, %bb.o ], [ 1, %_ZL10validateREPKN6icu_7817RegularExpressionEaP10UErrorCode.exit.i ], [ 1, %.lr.ph.split.split ] ; 2 uses
  store i32 %.ph, ptr %i.a, align 4, !tbaa !21
  %i.ee = add nsw i32 %.2158, 1
  br label %bb.ab

uregex_group_78.exit:                             ; preds = %uregex_group_78.exitthread-pre-split, %bb.q, %bb.y
  %i.ef = phi i32 [ %.pr, %uregex_group_78.exitthread-pre-split ], [ %i.dj, %bb.q ], [ %i.dy, %bb.y ] ; 2 uses
  %.2.i = phi i32 [ %i.ed, %uregex_group_78.exitthread-pre-split ], [ 1, %bb.q ], [ 1, %bb.y ]
  %i.eg = add nsw i32 %.2.i, %.2158               ; 2 uses
  %i.eh = icmp eq i32 %i.ef, 15
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %uregex_group_78.exit
  store i32 0, ptr %i.a, align 4, !tbaa !21
  br label %bb.ac

bb.ab:                                            ; preds = %uregex_group_78.exit.thread, %uregex_group_78.exit
  %i.ei = phi i32 [ %i.ee, %uregex_group_78.exit.thread ], [ %i.eg, %uregex_group_78.exit ]
  %i.ej = phi i32 [ %.ph, %uregex_group_78.exit.thread ], [ %i.ef, %uregex_group_78.exit ]
  store i32 %i.ej, ptr %6, align 4, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ek = phi i32 [ %i.ei, %bb.ab ], [ %i.eg, %bb.aa ] ; 2 uses
  %i.el = add nuw nsw i32 %.0118159, 1
  %.not134 = icmp sge i32 %.0118159, %i.k
  %i.em = trunc nsw i64 %indvars.iv.next278 to i32 ; 2 uses
  %i.en = icmp eq i32 %i.l, %i.em
  %or.cond = or i1 %i.en, %.not134
  br i1 %or.cond, label %._crit_edge.split, label %.lr.ph.split.split, !llvm.loop !84

end_hunk_0
