Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_io?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ucnv_getCanonicalName_78:bb.a
bb.e:                                             ; preds = %_ZL12getTagNumberPKc.exit.i
  store i32 %i.t, ptr %2, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZL12getTagNumberPKc.exit.i
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 76), align 4, !tbaa !28
  %i.v = add i32 %i.u, -1
  %i.w = icmp ult i32 %.1.i.i, %i.v
  br i1 %i.w, label %bb.g, label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 72), align 8, !tbaa !18 ; 4 uses
  %i.y = icmp ult i32 %i.s, %i.x
  br i1 %i.y, label %bb.h, label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 32), align 8, !tbaa !36 ; 2 uses
  %i.aa = mul i32 %i.x, %.1.i.i                   ; 4 uses
  %i.ab = add i32 %i.aa, %i.s
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !24 ; 2 uses
  %.not32.i = icmp eq i16 %i.ae, 0
  br i1 %.not32.i, label %_ZL13isAliasInListPKcj.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 40), align 8, !tbaa !37
  %i.ag = zext i16 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %.not1617.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not1617.not.i.i, label %_ZL13isAliasInListPKcj.exit.thread.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 56), align 8 ; 2 uses
  %wide.trip.count.i.i = zext i16 %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i37.i
  %indvars.iv.i38.i = phi i64 [ 0, %.lr.ph.i37.i ], [ %indvars.iv.next.i40.i, %bb.l ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.i38.i
  %i.am = load i16, ptr %i.al, align 2, !tbaa !24 ; 2 uses
  %.not.i39.i = icmp eq i16 %i.am, 0
  br i1 %.not.i39.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.an
  %i.ap = tail call i32 @ucnv_compareNames_78(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ao)
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i38.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i40.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL13isAliasInListPKcj.exit.thread.i, label %bb.j, !llvm.loop !3

_ZL13isAliasInListPKcj.exit.thread.i:             ; preds = %bb.l, %bb.i, %bb.h
  %i.ar = icmp eq i32 %i.t, -122
  br i1 %i.ar, label %bb.m, label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread

bb.m:                                             ; preds = %_ZL13isAliasInListPKcj.exit.thread.i
  %i.as = add i32 %.1.i.i, 1
  %i.at = mul i32 %i.x, %i.as                     ; 2 uses
  %.not3658.i = icmp ult i32 %i.aa, %i.at
  br i1 %.not3658.i, label %.lr.ph.i, label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread

.lr.ph.i:                                         ; preds = %bb.m
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 40), align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 56), align 8 ; 2 uses
  %i.aw = zext i32 %i.aa to i64
  %wide.trip.count.i = zext i32 %i.at to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZL13isAliasInListPKcj.exit49.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZL13isAliasInListPKcj.exit49.thread.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !24 ; 2 uses
  %.not34.i = icmp eq i16 %i.ay, 0
  br i1 %.not34.i, label %_ZL13isAliasInListPKcj.exit49.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %.not1617.not.i41.i = icmp eq i16 %i.bb, 0
  br i1 %.not1617.not.i41.i, label %_ZL13isAliasInListPKcj.exit49.thread.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %bb.o
  %wide.trip.count.i43.i = zext i16 %i.bb to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i42.i
  %indvars.iv.i44.i = phi i64 [ 0, %.lr.ph.i42.i ], [ %indvars.iv.next.i46.i, %bb.r ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i44.i
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !24 ; 2 uses
  %.not.i45.i = icmp eq i16 %i.be, 0
  br i1 %.not.i45.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.bf
  %i.bh = tail call i32 @ucnv_compareNames_78(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.bg)
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i44.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count.i43.i
  br i1 %exitcond.not.i47.i, label %_ZL13isAliasInListPKcj.exit49.thread.i, label %bb.p, !llvm.loop !3

_ZL13isAliasInListPKcj.exit49.thread.i:           ; preds = %bb.r, %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread, label %bb.n, !llvm.loop !76

bb.s:                                             ; preds = %bb.q
  %i.bj = trunc nuw i64 %indvars.iv.i to i32
  %i.bk = sub nuw i32 %i.bj, %i.aa
  br label %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit

_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread: ; preds = %_ZL13isAliasInListPKcj.exit49.thread.i, %bb.m, %bb.f, %_ZL13isAliasInListPKcj.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread

_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit: ; preds = %bb.k, %bb.s
  %i.bl = phi ptr [ %i.av, %bb.s ], [ %i.ak, %bb.k ]
  %.1.i = phi i32 [ %i.bk, %bb.s ], [ %i.s, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bm = icmp ult i32 %.1.i, %i.x
  br i1 %i.bm, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit
  %i.bn = load ptr, ptr @_ZL10gMainTable, align 8, !tbaa !22
  %i.bo = zext i32 %.1.i to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !24
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.br
  br label %.thread

.thread:                                          ; preds = %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread, %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit, %bb.a, %_ZL7isAliasPKcP10UErrorCode.exit, %_ZL7isAliasPKcP10UErrorCode.exit.thread, %bb.t
  %.1 = phi ptr [ %i.bs, %bb.t ], [ null, %bb.a ], [ null, %_ZL7isAliasPKcP10UErrorCode.exit.thread ], [ null, %_ZL7isAliasPKcP10UErrorCode.exit ], [ null, %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit ], [ null, %_ZL22findTaggedConverterNumPKcS0_P10UErrorCode.exit.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @ucnv_openAllNames_78(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef signext i8 @_ZL13haveAliasDataP10UErrorCode(ptr noundef %0)
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @uprv_malloc_78(i64 noundef 56) #16 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 4, !tbaa !20
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) @_ZL18gEnumAllConverters, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(2) ptr @uprv_malloc_78(i64 noundef 2) #16 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %0, align 4, !tbaa !20
  tail call void @uprv_free_78(ptr noundef nonnull %i.b)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  store i16 0, ptr %i.d, align 2, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.a, %bb.f
  %.1 = phi ptr [ null, %bb.a ], [ %i.b, %bb.f ], [ null, %bb.e ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define zeroext i16 @ucnv_io_countKnownConverters_78(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef signext i8 @_ZL13haveAliasDataP10UErrorCode(ptr noundef %0)
  %.not = icmp eq i8 %i.a, 0
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 72), align 8
  %i.c = trunc i32 %i.b to i16
  %.0 = select i1 %.not, i16 0, i16 %i.c
  ret i16 %.0
}

; Function Attrs: mustprogress uwtable
define i32 @ucnv_swapAliases_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 19 uses
  %5 = alloca [500 x %struct.TempRow], align 16   ; 5 uses
  %i.b = alloca [500 x i16], align 16             ; 3 uses
  %6 = alloca %struct.TempAliasTable, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.c = tail call i32 @udata_swapDataHeader_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) ; 4 uses
  %i.d = icmp eq ptr %4, null
  %indvars.iv223.lcssa.sroa.gep279 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %indvars.iv223.lcssa.sroa.gep280 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %indvars.iv223.lcssa.sroa.gep281 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !20
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i8, ptr %i.g, align 2, !tbaa !12    ; 2 uses
  %i.i = icmp eq i8 %i.h, 67
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12    ; 2 uses
  %i.l = icmp eq i8 %i.k, 118
  %or.cond272 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond272, label %bb.d, label %._crit_edge248

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.n = load i8, ptr %i.m, align 2, !tbaa !12
  %i.o = icmp eq i8 %i.n, 65
  br i1 %i.o, label %bb.e, label %._crit_edge248

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = icmp eq i8 %i.q, 108
  br i1 %i.r, label %bb.f, label %._crit_edge248

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i8, ptr %i.s, align 2, !tbaa !12
  %i.u = icmp eq i8 %i.t, 3
  br i1 %i.u, label %bb.g, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %i.v = phi i8 [ %i.k, %bb.c ], [ 118, %bb.f ], [ 118, %bb.e ], [ 118, %bb.d ]
  %i.w = zext i8 %i.h to i32
  %i.x = zext i8 %i.v to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.z = load i8, ptr %i.y, align 2, !tbaa !12
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !12
  %i.ag = zext i8 %i.af to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag)
  store i32 16, ptr %4, align 4, !tbaa !20
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp sgt i32 %2, -1                     ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = sub nsw i32 %2, %i.c                    ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 36
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.ai)
  store i32 8, ptr %4, align 4, !tbaa !20
  br label %.critedge

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ak = sext i32 %i.c to i64                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !25
  %i.ap = tail call noundef i32 %i.an(i32 noundef %i.ao) ; 4 uses
  store i32 %i.ap, ptr %i.a, align 16, !tbaa !25
  %i.aq = add i32 %i.ap, -10
  %or.cond = icmp ult i32 %i.aq, -2
  br i1 %or.cond, label %bb.k, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ar = add nuw nsw i32 %i.ap, 1                ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.ap)
  store i32 3, ptr %4, align 4, !tbaa !20
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  %i.av = tail call noundef i32 %i.as(i32 noundef %i.au)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph203.preheader, label %.lr.ph, !llvm.loop !77

.lr.ph203.preheader:                              ; preds = %.lr.ph
  %i.ax = shl nuw nsw i32 %i.ar, 1                ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !25
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !25
  %i.bd = add i32 %i.bc, %i.ba                    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25
  %i.bg = add i32 %i.bf, %i.bd                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !25
  %i.bj = add i32 %i.bi, %i.bg                    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !25
  %i.bp = add i32 %i.bo, %i.bm                    ; 2 uses
  %exitcond227.not.5 = icmp eq i32 %i.ar, 8
  br i1 %exitcond227.not.5, label %._crit_edge204, label %.lr.ph203.6

.lr.ph203.6:                                      ; preds = %.lr.ph203.preheader
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = add i32 %8, %i.bp                          ; 4 uses
  %exitcond227.not.6 = icmp eq i32 %i.ar, 9
  br i1 %exitcond227.not.6, label %._crit_edge204, label %.lr.ph203.7

.lr.ph203.7:                                      ; preds = %.lr.ph203.6
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %11 = load i32, ptr %10, align 16, !tbaa !25
  %12 = add i32 %11, %9
  br label %._crit_edge204

._crit_edge204:                                   ; preds = %.lr.ph203.7, %.lr.ph203.6, %.lr.ph203.preheader
  %.sroa.15.0 = phi i32 [ %9, %.lr.ph203.7 ], [ %9, %.lr.ph203.6 ], [ 0, %.lr.ph203.preheader ] ; 3 uses
  %indvars.iv223.lcssa.sroa.phi = phi ptr [ %indvars.iv223.lcssa.sroa.gep281, %.lr.ph203.7 ], [ %indvars.iv223.lcssa.sroa.gep280, %.lr.ph203.6 ], [ %indvars.iv223.lcssa.sroa.gep279, %.lr.ph203.preheader ]
  %.lcssa = phi i32 [ %12, %.lr.ph203.7 ], [ %9, %.lr.ph203.6 ], [ %i.bp, %.lr.ph203.preheader ]
  %13 = load i32, ptr %indvars.iv223.lcssa.sroa.phi, align 4, !tbaa !25
  %14 = add i32 %13, %.lcssa                      ; 2 uses
  br i1 %i.ah, label %bb.l, label %._crit_edge204._crit_edge

._crit_edge204._crit_edge:                        ; preds = %._crit_edge204
  %.pre255 = shl nsw i32 %14, 1
  br label %bb.ah

bb.l:                                             ; preds = %._crit_edge204
  %i.bq = sub nsw i32 %2, %i.c                    ; 2 uses
  %i.br = shl nsw i32 %14, 1                      ; 3 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.bq)
  store i32 8, ptr %4, align 4, !tbaa !20
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.ak ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84
  %i.bw = shl nuw nsw i32 %i.ar, 2
  %i.bx = tail call noundef i32 %i.bv(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i32 noundef %i.bw, ptr noundef %i.bt, ptr noundef nonnull %4) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !85
  %i.ca = zext i32 %.sroa.15.0 to i64             ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cd = load i32, ptr %i.cc, align 16, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = shl nsw i32 %i.cg, 1
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ca ; 2 uses
  %i.cj = tail call noundef i32 %i.bz(ptr noundef nonnull %0, ptr noundef nonnull %i.cb, i32 noundef %i.ch, ptr noundef %i.ci, ptr noundef nonnull %4) ; 0 uses
  %i.ck = load i32, ptr %4, align 4, !tbaa !20
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !86
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !87  ; 2 uses
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.ct = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ct
  %i.cv = sub i32 %.sroa.15.0, %i.ax
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ct
  %i.cy = tail call noundef i32 %i.cs(ptr noundef nonnull %0, ptr noundef nonnull %i.cu, i32 noundef %i.cw, ptr noundef nonnull %i.cx, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ah

bb.r:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !25 ; 10 uses
  store ptr %i.ci, ptr %6, align 8, !tbaa !49
  %i.db = icmp ult i32 %i.da, 501
  br i1 %i.db, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.dc, align 8, !tbaa !89
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.b, ptr %i.dd, align 8, !tbaa !90
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.de = zext i32 %i.da to i64                   ; 2 uses
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = shl i32 %i.da, 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.df, %i.dh
  %i.dj = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.di) #16 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !89
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.da)
  store i32 7, ptr %4, align 4, !tbaa !20
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.de
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !90
  %.pre253 = load i8, ptr %i.co, align 1, !tbaa !87
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.do = phi ptr [ %i.dj, %bb.v ], [ %5, %bb.s ] ; 2 uses
  %i.dp = phi i8 [ %.pre253, %bb.v ], [ %i.cp, %bb.s ]
  %i.dq = icmp eq i8 %i.dp, 0
  %spec.select = select i1 %i.dq, ptr @ucnv_io_stripASCIIForCompare_78, ptr @ucnv_io_stripEBCDICForCompare_78
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %spec.select, ptr %i.dr, align 8, !tbaa !50
  %i.ds = zext i32 %i.bd to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ds ; 2 uses
  %i.dv = zext i32 %i.bg to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.dv ; 2 uses
  %.not = icmp eq i32 %i.da, 0                    ; 3 uses
  br i1 %.not, label %._crit_edge208, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count231 = zext i32 %i.da to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph207, %bb.x
  %indvars.iv228 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next229, %bb.x ] ; 4 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !91
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv228
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !24
  %i.ec = call noundef zeroext i16 %i.dz(i16 noundef zeroext %i.eb)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv228 ; 2 uses
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !52
  %i.ee = trunc i64 %indvars.iv228 to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !92
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge208, label %bb.x, !llvm.loop !78

._crit_edge208:                                   ; preds = %bb.x, %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @uprv_sortArray_78(ptr noundef nonnull %i.do, i32 noundef %i.da, i32 noundef 4, ptr noundef nonnull @_ZL14io_compareRowsPKvS0_S0_, ptr noundef nonnull %6, i8 noundef signext 0, ptr noundef nonnull %4)
  %i.eh = load i32, ptr %4, align 4, !tbaa !20
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge208
  %.not194 = icmp eq ptr %1, %3
  br i1 %.not194, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.y
  br i1 %.not, label %.loopexit, label %.lr.ph210

.lr.ph210:                                        ; preds = %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.trip.count236 = zext i32 %i.da to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph210, %bb.z
  %indvars.iv233 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next234, %bb.z ] ; 4 uses
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !89
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv233
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !92
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.ep = zext i16 %i.en to i64                   ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv233
  %i.es = call noundef i32 %i.eo(ptr noundef nonnull %0, ptr noundef nonnull %i.eq, i32 noundef 2, ptr noundef %i.er, ptr noundef nonnull %4) ; 0 uses
  %i.et = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.ep
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv233
  %i.ew = call noundef i32 %i.et(ptr noundef nonnull %0, ptr noundef nonnull %i.eu, i32 noundef 2, ptr noundef %i.ev, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %.loopexit, label %bb.z, !llvm.loop !79

bb.aa:                                            ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !90 ; 4 uses
  br i1 %.not, label %._crit_edge218, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count241 = zext i32 %i.da to i64     ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph213, %bb.ab
  %indvars.iv238 = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next239, %bb.ab ] ; 3 uses
  %i.fa = load ptr, ptr %i.eg, align 8, !tbaa !89
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv238
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !92
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !88
  %i.ff = zext i16 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv238
  %i.fi = call noundef i32 %i.fe(ptr noundef nonnull %0, ptr noundef nonnull %i.fg, i32 noundef 2, ptr noundef %i.fh, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.lr.ph217, label %bb.ab, !llvm.loop !80

.lr.ph217:                                        ; preds = %bb.ab
  %i.fj = shl nuw nsw i64 %wide.trip.count241, 1  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.du, ptr align 2 %i.ey, i64 %i.fj, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph217, %bb.ac
  %indvars.iv243 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next244, %bb.ac ] ; 3 uses
  %i.fl = load ptr, ptr %i.eg, align 8, !tbaa !89
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv243
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !92
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !88
  %i.fq = zext i16 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.fq
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv243
  %i.ft = call noundef i32 %i.fp(ptr noundef nonnull %0, ptr noundef nonnull %i.fr, i32 noundef 2, ptr noundef %i.fs, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count241
  br i1 %exitcond247.not, label %._crit_edge218, label %bb.ac, !llvm.loop !81

._crit_edge218:                                   ; preds = %bb.ac, %bb.aa
  %i.fu = phi i64 [ 0, %bb.aa ], [ %i.fj, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dx, ptr align 2 %i.ey, i64 %i.fu, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.preheader, %._crit_edge218, %._crit_edge208
  %i.fv = load ptr, ptr %i.eg, align 8, !tbaa !89 ; 2 uses
  %.not195 = icmp eq ptr %i.fv, %5
  br i1 %.not195, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  call void @uprv_free_78(ptr noundef %i.fv)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  %i.fw = load i32, ptr %4, align 4, !tbaa !20
  %i.fx = icmp slt i32 %i.fw, 1
  br i1 %i.fx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.da)
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !88
  %i.ga = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ga
  %i.gc = sub i32 %i.bd, %i.ax
  %i.gd = shl nsw i32 %i.gc, 1
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ga
  %i.gf = call noundef i32 %i.fz(ptr noundef nonnull %0, ptr noundef nonnull %i.gb, i32 noundef %i.gd, ptr noundef nonnull %i.ge, ptr noundef nonnull %4) ; 0 uses
  %i.gg = load ptr, ptr %i.fy, align 8, !tbaa !88
  %i.gh = zext i32 %i.bj to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.gh
  %i.gj = sub i32 %.sroa.15.0, %i.bj
  %i.gk = shl nsw i32 %i.gj, 1
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.gh
  %i.gm = call noundef i32 %i.gg(ptr noundef nonnull %0, ptr noundef nonnull %i.gi, i32 noundef %i.gk, ptr noundef %i.gl, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge204._crit_edge, %bb.ag, %bb.q
  %.pre-phi256 = phi i32 [ %.pre255, %._crit_edge204._crit_edge ], [ %i.br, %bb.ag ], [ %i.br, %bb.q ]
  %i.gn = add nsw i32 %.pre-phi256, %i.c
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.o, %bb.u, %bb.af, %bb.a, %bb.b, %bb.ah, %bb.k, %bb.i, %._crit_edge248
  %.1175 = phi i32 [ 0, %._crit_edge248 ], [ 0, %bb.i ], [ 0, %bb.k ], [ %i.gn, %bb.ah ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.af ], [ 0, %bb.u ], [ 0, %bb.o ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.1175
}

declare i32 @udata_swapDataHeader_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @uprv_sortArray_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL14io_compareRowsPKvS0_S0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 3 uses
  %i.b = alloca [60 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = load i16, ptr %1, align 2, !tbaa !52
  %i.g = zext i16 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = call noundef ptr %i.e(ptr noundef nonnull %i.a, ptr noundef %i.i)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.l = load i16, ptr %2, align 2, !tbaa !52
  %i.m = zext i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %i.p = call noundef ptr %i.k(ptr noundef nonnull %i.b, ptr noundef %i.o)
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.q
}

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef signext i8 @_ZL15ucnv_io_cleanupv() #3 {
bb.a:
  %i.a = load ptr, ptr @_ZL10gAliasData, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @udata_close_78(ptr noundef nonnull %i.a)
  store ptr null, ptr @_ZL10gAliasData, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store atomic i32 0, ptr @_ZL18gAliasDataInitOnce seq_cst, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) @_ZL10gMainTable, i8 0, i64 112, i1 false)
  ret i8 1
}

declare ptr @udata_openChoice_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL12isAcceptablePvPKcS1_PK9UDataInfo(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = load i16, ptr %3, align 2, !tbaa !94
  %i.b = icmp ugt i16 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i8, ptr %i.c, align 2, !tbaa !95
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !96
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i8, ptr %i.i, align 2, !tbaa !12
  %i.k = icmp eq i8 %i.j, 67
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = icmp eq i8 %i.m, 118
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !12
  %i.q = icmp eq i8 %i.p, 65
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = icmp eq i8 %i.s, 108
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load i8, ptr %i.u, align 2, !tbaa !12
  %i.w = icmp eq i8 %i.v, 3
  %i.x = zext i1 %i.w to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.y = phi i8 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.h ]
  ret i8 %i.y
}

declare ptr @udata_getMemory_78(ptr noundef) local_unnamed_addr #6

declare i32 @udata_getLength_78(ptr noundef) local_unnamed_addr #6

declare void @udata_close_78(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @uprv_stricmp_78(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZL25ucnv_io_closeUEnumerationP12UEnumeration(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  tail call void @uprv_free_78(ptr noundef %i.b)
  tail call void @uprv_free_78(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 65536) i32 @_ZL28ucnv_io_countStandardAliasesP12UEnumerationP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 40), align 8, !tbaa !37
  %i.e = zext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !24
  %i.h = zext i16 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @uenum_unextDefault_78(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZL27ucnv_io_nextStandardAliasesP12UEnumerationPiP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 40), align 8, !tbaa !37
  %i.e = zext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !24
end_hunk_0
