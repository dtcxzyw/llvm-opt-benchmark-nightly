Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unames?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_78L10getExtNameEjPct:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 65008
  br i1 %i.b, label %_ZN6icu_78L10getCharCatEi.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 65534
  %i.d = icmp eq i32 %i.c, 65534
  %i.e = icmp samesign ult i32 %0, 1114112
  %or.cond.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i, label %_ZN6icu_78L10getCharCatEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call signext i8 @u_charType_78(i32 noundef %0) ; 3 uses
  %i.g = icmp eq i8 %i.f, 18
  %i.h = and i32 %0, -1024
  %i.i = icmp eq i32 %i.h, 55296
  %i.j = select i1 %i.i, i8 31, i8 32
  br i1 %i.g, label %_ZN6icu_78L10getCharCatEi.exit.thread.i, label %_ZN6icu_78L10getCharCatEi.exit.i

_ZN6icu_78L10getCharCatEi.exit.i:                 ; preds = %bb.d
  %i.k = icmp ugt i8 %i.f, 32
  br i1 %i.k, label %_ZN6icu_78L14getCharCatNameEi.exit, label %_ZN6icu_78L10getCharCatEi.exit.thread.i

_ZN6icu_78L10getCharCatEi.exit.thread.i:          ; preds = %_ZN6icu_78L10getCharCatEi.exit.i, %bb.d, %bb.c, %bb.b
  %.010.i4.i = phi i8 [ %i.f, %_ZN6icu_78L10getCharCatEi.exit.i ], [ 30, %bb.b ], [ 30, %bb.c ], [ %i.j, %bb.d ]
  %i.l = zext nneg i8 %.010.i4.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L12charCatNamesE, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  br label %_ZN6icu_78L14getCharCatNameEi.exit

_ZN6icu_78L14getCharCatNameEi.exit:               ; preds = %_ZN6icu_78L10getCharCatEi.exit.i, %_ZN6icu_78L10getCharCatEi.exit.thread.i
  %.0.i = phi ptr [ %i.n, %_ZN6icu_78L10getCharCatEi.exit.thread.i ], [ @.str.8, %_ZN6icu_78L10getCharCatEi.exit.i ] ; 2 uses
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_78L14getCharCatNameEi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 60, ptr %1, align 1, !tbaa !25
  %i.p = add i16 %2, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_78L14getCharCatNameEi.exit
  %.049 = phi ptr [ %i.o, %bb.e ], [ %1, %_ZN6icu_78L14getCharCatNameEi.exit ] ; 2 uses
  %.047 = phi i16 [ %i.p, %bb.e ], [ 0, %_ZN6icu_78L14getCharCatNameEi.exit ] ; 2 uses
  %i.q = load i8, ptr %.0.i, align 1, !tbaa !25   ; 2 uses
  %.not5661 = icmp eq i8 %i.q, 0
  br i1 %.not5661, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %i.r = phi i8 [ %i.y, %bb.h ], [ %i.q, %bb.f ]
  %.04664 = phi i16 [ %i.u, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.14863 = phi i16 [ %.2, %bb.h ], [ %.047, %bb.f ] ; 2 uses
  %.15062 = phi ptr [ %.251, %bb.h ], [ %.049, %bb.f ] ; 3 uses
  %.not60 = icmp eq i16 %.14863, 0
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.15062, i64 1
  store i8 %i.r, ptr %.15062, align 1, !tbaa !25
  %i.t = add i16 %.14863, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.251 = phi ptr [ %i.s, %bb.g ], [ %.15062, %.lr.ph ] ; 2 uses
  %.2 = phi i16 [ %i.t, %bb.g ], [ 0, %.lr.ph ]   ; 2 uses
  %i.u = add i16 %.04664, 1                       ; 2 uses
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr i8, ptr %.0.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25    ; 2 uses
  %.not56 = icmp eq i8 %i.y, 0
  br i1 %.not56, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.z = add i16 %.04664, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.150.lcssa = phi ptr [ %.049, %bb.f ], [ %.251, %._crit_edge.loopexit ] ; 3 uses
  %.148.lcssa = phi i16 [ %.047, %bb.f ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %.046.lcssa = phi i16 [ 3, %bb.f ], [ %i.z, %._crit_edge.loopexit ]
  %.not57 = icmp eq i16 %.148.lcssa, 0
  br i1 %.not57, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.150.lcssa, i64 1
  store i8 45, ptr %.150.lcssa, align 1, !tbaa !25
  %i.ab = add i16 %.148.lcssa, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.352 = phi ptr [ %i.aa, %bb.i ], [ %.150.lcssa, %._crit_edge ] ; 2 uses
  %.3 = phi i16 [ %i.ab, %bb.i ], [ 0, %._crit_edge ] ; 2 uses
  %.not5867.not = icmp eq i32 %0, 0
  br i1 %.not5867.not, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.j, %.lr.ph71
  %.04469 = phi i32 [ %i.ac, %.lr.ph71 ], [ 0, %bb.j ]
  %.04568 = phi i32 [ %i.ad, %.lr.ph71 ], [ %0, %bb.j ]
  %i.ac = add nuw nsw i32 %.04469, 1              ; 2 uses
  %i.ad = ashr i32 %.04568, 4                     ; 2 uses
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %._crit_edge72.loopexit, label %.lr.ph71, !llvm.loop !50

._crit_edge72.loopexit:                           ; preds = %.lr.ph71
  %i.ae = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 4)
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %bb.j
  %.044.lcssa = phi i32 [ 4, %bb.j ], [ %i.ae, %._crit_edge72.loopexit ] ; 3 uses
  %.not89 = icmp eq i16 %.3, 0
  br i1 %.not89, label %._crit_edge80.thread, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %._crit_edge72
  %i.af = sext i32 %.044.lcssa to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %indvars.iv = phi i64 [ %i.af, %.lr.ph79.preheader ], [ %indvars.iv.next, %.lr.ph79 ] ; 2 uses
  %.176 = phi i32 [ %0, %.lr.ph79.preheader ], [ %i.an, %.lr.ph79 ] ; 2 uses
  %.475 = phi i16 [ %.3, %.lr.ph79.preheader ], [ %i.ao, %.lr.ph79 ]
  %i.ag = and i32 %.176, 15                       ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  %i.ai = or disjoint i32 %i.ag, 48
  %i.aj = add nuw nsw i32 %i.ag, 55
  %i.ak = select i1 %i.ah, i32 %i.ai, i32 %i.aj
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.352, i64 %indvars.iv.next
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  %i.an = ashr i32 %.176, 4                       ; 2 uses
  %i.ao = add i16 %.475, -1                       ; 3 uses
  %i.ap = icmp ne i32 %i.an, 0
  %i.aq = icmp sgt i64 %indvars.iv, 1
  %or.cond = or i1 %i.ap, %i.aq
  %i.ar = icmp ne i16 %i.ao, 0
  %i.as = select i1 %or.cond, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph79, label %._crit_edge80, !llvm.loop !51

._crit_edge80:                                    ; preds = %.lr.ph79
  %i.at = icmp eq i16 %i.ao, 0
  br i1 %i.at, label %._crit_edge80.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge80
  %i.au = zext nneg i32 %.044.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.352, i64 %i.au
  store i8 62, ptr %i.av, align 1, !tbaa !25
  br label %._crit_edge80.thread

._crit_edge80.thread:                             ; preds = %._crit_edge72, %bb.k, %._crit_edge80
  %i.aw = trunc i32 %.044.lcssa to i16
  %i.ax = add i16 %.046.lcssa, %i.aw
  ret i16 %i.ax
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i32 @u_getISOComment_78(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ne i32 %2, 0
  %i.f = icmp eq ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %3, align 4, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call i32 @u_terminateChars_78(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define i32 @u_charFromName_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i16], align 16               ; 6 uses
  %i.c = alloca [8 x ptr], align 16               ; 5 uses
  %i.d = alloca [8 x ptr], align 16               ; 7 uses
  %i.e = alloca [120 x i8], align 16              ; 8 uses
  %i.f = alloca [120 x i8], align 16              ; 19 uses
  %3 = alloca %"struct.icu_78::FindName", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.e, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.f, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !11
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %0, 3
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %1, align 1, !tbaa !25
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc noundef signext i8 @_ZN6icu_78L12isDataLoadedEP10UErrorCode(ptr noundef %2)
  %.not98 = icmp eq i8 %i.n, 0
  br i1 %.not98, label %.loopexit, label %.preheader114

.preheader114:                                    ; preds = %bb.e, %bb.f
  %indvars.iv172 = phi i32 [ %indvars.iv.next173, %bb.f ], [ -1, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %.088138 = phi ptr [ %i.p, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %i.o = load i8, ptr %.088138, align 1, !tbaa !25 ; 3 uses
  %.not99 = icmp eq i8 %i.o, 0
  br i1 %.not99, label %.thread, label %bb.f

bb.f:                                             ; preds = %.preheader114
  %i.p = getelementptr inbounds nuw i8, ptr %.088138, i64 1
  %i.q = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 1, !tbaa !25
  %i.s = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.o)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.s, ptr %i.t, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 120
  %indvars.iv.next173 = add nsw i32 %indvars.iv172, 1
  br i1 %exitcond.not, label %.loopexit.sink.split, label %.preheader114, !llvm.loop !52

.thread:                                          ; preds = %.preheader114
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 0, ptr %i.v, align 1, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 0, ptr %i.w, align 1, !tbaa !25
  %i.x = load i8, ptr %i.f, align 16, !tbaa !25
  %i.y = icmp eq i8 %i.x, 60
  br i1 %i.y, label %bb.g, label %bb.au

bb.g:                                             ; preds = %.thread
  %i.z = icmp eq i32 %0, 2
  br i1 %i.z, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.u, -1                    ; 11 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = icmp eq i8 %i.ad, 62
  br i1 %i.ae, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h
  %.old7 = icmp ugt i32 %i.aa, 2
  br i1 %.old7, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %bb.i
  %i.af = zext i32 %indvars.iv172 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv175 = phi i64 [ %i.af, %.preheader.preheader ], [ %i.ag, %.preheader ]
  %i.ag = add nsw i64 %indvars.iv175, -1          ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25
  %i.aj = icmp ne i8 %i.ai, 45
  %.wide = icmp ugt i64 %i.ag, 2
  %or.cond8 = and i1 %i.aj, %.wide
  br i1 %or.cond8, label %.preheader, label %.critedge.thread.loopexit, !llvm.loop !53

.critedge:                                        ; preds = %bb.i
  %i.ak = icmp eq i32 %i.aa, 2
  br i1 %i.ak, label %.critedge.thread, label %.loopexit.sink.split

.critedge.thread.loopexit:                        ; preds = %.preheader
  %i.al = trunc i64 %i.ag to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %.281106 = phi i32 [ 2, %.critedge ], [ %i.al, %.critedge.thread.loopexit ] ; 11 uses
  %i.am = zext i32 %.281106 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %i.ap = icmp eq i8 %i.ao, 45
  %i.aq = add nsw i32 %i.u, -3
  %i.ar = sub i32 %i.aq, %.281106
  %i.as = icmp ult i32 %i.ar, 8
  %or.cond6 = and i1 %i.ap, %i.as
  br i1 %or.cond6, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %.critedge.thread
  store i8 0, ptr %i.an, align 1, !tbaa !25
  %i.at = add i32 %.281106, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv172, i32 %i.at)
  %.3272 = add i32 %.281106, 1                    ; 2 uses
  %i.au = icmp ult i32 %.3272, %i.aa
  br i1 %i.au, label %.lr.ph, label %._crit_edge

4:                                                ; preds = %89
  %.3 = add i32 %.281106, 2                       ; 2 uses
  %5 = icmp ult i32 %.3, %i.aa
  br i1 %5, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %4
  %6 = zext i32 %.3 to i64
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !25        ; 3 uses
  %9 = zext nneg i8 %8 to i32
  %10 = add i8 %8, -48
  %or.cond103.1 = icmp ult i8 %10, 10
  br i1 %or.cond103.1, label %13, label %11

11:                                               ; preds = %.lr.ph.1
  %12 = add i8 %8, -97
  %or.cond104.1 = icmp ult i8 %12, 6
  br i1 %or.cond104.1, label %13, label %.loopexit.sink.split

13:                                               ; preds = %11, %.lr.ph.1
  %.sink251.1 = phi i32 [ -48, %.lr.ph.1 ], [ -87, %11 ]
  %14 = shl nsw i32 %.178, 4
  %15 = add nsw i32 %14, %.sink251.1
  %.178.1 = add nsw i32 %15, %9                   ; 3 uses
  %16 = icmp sgt i32 %.178.1, 1114111
  br i1 %16, label %.loopexit.sink.split, label %17, !llvm.loop !54

17:                                               ; preds = %13
  %.3.1 = add i32 %.281106, 3                     ; 2 uses
  %18 = icmp ult i32 %.3.1, %i.aa
  br i1 %18, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %17
  %19 = zext i32 %.3.1 to i64
  %20 = getelementptr inbounds nuw i8, ptr %i.f, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !25      ; 3 uses
  %22 = zext nneg i8 %21 to i32
  %23 = add i8 %21, -48
  %or.cond103.2 = icmp ult i8 %23, 10
  br i1 %or.cond103.2, label %26, label %24

24:                                               ; preds = %.lr.ph.2
  %25 = add i8 %21, -97
  %or.cond104.2 = icmp ult i8 %25, 6
  br i1 %or.cond104.2, label %26, label %.loopexit.sink.split

26:                                               ; preds = %24, %.lr.ph.2
  %.sink251.2 = phi i32 [ -48, %.lr.ph.2 ], [ -87, %24 ]
  %27 = shl nsw i32 %.178.1, 4
  %28 = add i32 %27, %.sink251.2
  %.178.2 = add i32 %28, %22                      ; 3 uses
  %29 = icmp sgt i32 %.178.2, 1114111
  br i1 %29, label %.loopexit.sink.split, label %30, !llvm.loop !54

30:                                               ; preds = %26
  %.3.2 = add i32 %.281106, 4                     ; 2 uses
  %31 = icmp ult i32 %.3.2, %i.aa
  br i1 %31, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %30
  %32 = zext i32 %.3.2 to i64
  %33 = getelementptr inbounds nuw i8, ptr %i.f, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !25      ; 3 uses
  %35 = zext nneg i8 %34 to i32
  %36 = add i8 %34, -48
  %or.cond103.3 = icmp ult i8 %36, 10
  br i1 %or.cond103.3, label %39, label %37

37:                                               ; preds = %.lr.ph.3
  %38 = add i8 %34, -97
  %or.cond104.3 = icmp ult i8 %38, 6
  br i1 %or.cond104.3, label %39, label %.loopexit.sink.split

39:                                               ; preds = %37, %.lr.ph.3
  %.sink251.3 = phi i32 [ -48, %.lr.ph.3 ], [ -87, %37 ]
  %40 = shl i32 %.178.2, 4
  %41 = add i32 %40, %.sink251.3
  %.178.3 = add i32 %41, %35                      ; 3 uses
  %42 = icmp sgt i32 %.178.3, 1114111
  br i1 %42, label %.loopexit.sink.split, label %43, !llvm.loop !54

43:                                               ; preds = %39
  %.3.3 = add i32 %.281106, 5                     ; 2 uses
  %44 = icmp ult i32 %.3.3, %i.aa
  br i1 %44, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %43
  %45 = zext i32 %.3.3 to i64
  %46 = getelementptr inbounds nuw i8, ptr %i.f, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !25      ; 3 uses
  %48 = zext nneg i8 %47 to i32
  %49 = add i8 %47, -48
  %or.cond103.4 = icmp ult i8 %49, 10
  br i1 %or.cond103.4, label %52, label %50

50:                                               ; preds = %.lr.ph.4
  %51 = add i8 %47, -97
  %or.cond104.4 = icmp ult i8 %51, 6
  br i1 %or.cond104.4, label %52, label %.loopexit.sink.split

52:                                               ; preds = %50, %.lr.ph.4
  %.sink251.4 = phi i32 [ -48, %.lr.ph.4 ], [ -87, %50 ]
  %53 = shl i32 %.178.3, 4
  %54 = add i32 %53, %.sink251.4
  %.178.4 = add i32 %54, %48                      ; 3 uses
  %55 = icmp sgt i32 %.178.4, 1114111
  br i1 %55, label %.loopexit.sink.split, label %56, !llvm.loop !54

56:                                               ; preds = %52
  %.3.4 = add i32 %.281106, 6                     ; 2 uses
  %57 = icmp ult i32 %.3.4, %i.aa
  br i1 %57, label %.lr.ph.5, label %._crit_edge

.lr.ph.5:                                         ; preds = %56
  %58 = zext i32 %.3.4 to i64
  %59 = getelementptr inbounds nuw i8, ptr %i.f, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !25      ; 3 uses
  %61 = zext nneg i8 %60 to i32
  %62 = add i8 %60, -48
  %or.cond103.5 = icmp ult i8 %62, 10
  br i1 %or.cond103.5, label %65, label %63

63:                                               ; preds = %.lr.ph.5
  %64 = add i8 %60, -97
  %or.cond104.5 = icmp ult i8 %64, 6
  br i1 %or.cond104.5, label %65, label %.loopexit.sink.split

65:                                               ; preds = %63, %.lr.ph.5
  %.sink251.5 = phi i32 [ -48, %.lr.ph.5 ], [ -87, %63 ]
  %66 = shl i32 %.178.4, 4
  %67 = add i32 %66, %.sink251.5
  %.178.5 = add i32 %67, %61                      ; 3 uses
  %68 = icmp sgt i32 %.178.5, 1114111
  br i1 %68, label %.loopexit.sink.split, label %69, !llvm.loop !54

69:                                               ; preds = %65
  %.3.5 = add i32 %.281106, 7                     ; 2 uses
  %70 = icmp ult i32 %.3.5, %i.aa
  br i1 %70, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %69
  %71 = zext i32 %.3.5 to i64
  %72 = getelementptr inbounds nuw i8, ptr %i.f, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !25      ; 3 uses
  %74 = zext nneg i8 %73 to i32
  %75 = add i8 %73, -48
  %or.cond103.6 = icmp ult i8 %75, 10
  br i1 %or.cond103.6, label %78, label %76

76:                                               ; preds = %.lr.ph.6
  %77 = add i8 %73, -97
  %or.cond104.6 = icmp ult i8 %77, 6
  br i1 %or.cond104.6, label %78, label %.loopexit.sink.split

78:                                               ; preds = %76, %.lr.ph.6
  %.sink251.6 = phi i32 [ -48, %.lr.ph.6 ], [ -87, %76 ]
  %79 = shl i32 %.178.5, 4
  %80 = add i32 %79, %.sink251.6
  %.178.6 = add i32 %80, %74                      ; 3 uses
  %81 = icmp sgt i32 %.178.6, 1114111
  br i1 %81, label %.loopexit.sink.split, label %bb.k, !llvm.loop !54

bb.k:                                             ; preds = %78
  %.3.a = add i32 %.281106, 8                     ; 2 uses
  %i.av = icmp ult i32 %.3.a, %i.aa
  br i1 %i.av, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.k
  %i.aw = zext i32 %.3.a to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25  ; 3 uses
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = add i8 %i.ay, -48
  %or.cond103.a = icmp ult i8 %i.ba, 10
  br i1 %or.cond103.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.a
  %i.bb = add i8 %i.ay, -97
  %or.cond104.a = icmp ult i8 %i.bb, 6
  br i1 %or.cond104.a, label %bb.m, label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.l, %.lr.ph.a
  %.sink251.a = phi i32 [ -48, %.lr.ph.a ], [ -87, %bb.l ]
  %i.bc = shl i32 %.178.6, 4
  %i.bd = add i32 %i.bc, %.sink251.a
  %.178.a = add i32 %i.bd, %i.az                  ; 2 uses
  %i.be = icmp sgt i32 %.178.a, 1114111
  br i1 %i.be, label %.loopexit.sink.split, label %._crit_edge, !llvm.loop !54

.lr.ph:                                           ; preds = %bb.j
  %82 = zext i32 %.3272 to i64
  %83 = getelementptr inbounds nuw i8, ptr %i.f, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !25      ; 3 uses
  %85 = zext nneg i8 %84 to i32
  %86 = add i8 %84, -48
  %or.cond103 = icmp ult i8 %86, 10
  br i1 %or.cond103, label %89, label %87

87:                                               ; preds = %.lr.ph
  %88 = add i8 %84, -97
  %or.cond104 = icmp ult i8 %88, 6
  br i1 %or.cond104, label %89, label %.loopexit.sink.split

89:                                               ; preds = %87, %.lr.ph
  %.sink251 = phi i32 [ -48, %.lr.ph ], [ -87, %87 ]
  %.178 = add nsw i32 %.sink251, %85              ; 3 uses
  %90 = icmp sgt i32 %.178, 1114111
  br i1 %90, label %.loopexit.sink.split, label %4, !llvm.loop !54

._crit_edge:                                      ; preds = %4, %17, %30, %43, %56, %69, %bb.k, %bb.m, %bb.j
  %.077.lcssa = phi i32 [ 0, %bb.j ], [ %.178, %4 ], [ %.178.1, %17 ], [ %.178.2, %30 ], [ %.178.3, %43 ], [ %.178.4, %56 ], [ %.178.5, %69 ], [ %.178.6, %bb.k ], [ %.178.a, %bb.m ] ; 2 uses
  %i.bf = tail call fastcc noundef zeroext i8 @_ZN6icu_78L10getCharCatEi(i32 noundef %.077.lcssa)
  %i.bg = zext i32 %umax to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bg
  store i8 0, ptr %i.bh, align 1, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 59 uses
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = xor i64 %i.bj, 7955443211351191157
  %i.bl = getelementptr i8, ptr %i.bi, i64 3
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = xor i64 %i.bm, 28259022526837619
  %i.bo = or i64 %i.bk, %i.bn
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %.not102 = icmp eq i32 %i.bq, 0
  br i1 %.not102, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %._crit_edge
  %.0145.lcssa.wide = phi i32 [ 0, %._crit_edge ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ], [ 6, %bb.t ], [ 7, %bb.u ], [ 8, %bb.v ], [ 9, %bb.w ], [ 10, %bb.x ], [ 11, %bb.y ], [ 12, %bb.z ], [ 13, %bb.aa ], [ 14, %bb.ab ], [ 15, %bb.ac ], [ 16, %bb.ad ], [ 17, %bb.ae ], [ 18, %bb.af ], [ 19, %bb.ag ], [ 20, %bb.ah ], [ 21, %bb.ai ], [ 22, %bb.aj ], [ 23, %bb.ak ], [ 24, %bb.al ], [ 25, %bb.am ], [ 26, %bb.an ], [ 27, %bb.ao ], [ 28, %bb.ap ], [ 29, %bb.aq ], [ 30, %bb.ar ], [ 31, %bb.as ], [ 32, %bb.at ]
  %i.br = zext i8 %i.bf to i32
  %i.bs = icmp eq i32 %.0145.lcssa.wide, %i.br
  br i1 %i.bs, label %.loopexit, label %.loopexit.sink.split

bb.o:                                             ; preds = %._crit_edge
  %i.bt = load i128, ptr %i.bi, align 1
  %i.bu = xor i128 %i.bt, 152058775483562005317584794628922568821
  %i.bv = getelementptr i8, ptr %i.bi, i64 16
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i128
  %i.by = or i128 %i.bu, %i.bx
  %i.bz = icmp ne i128 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not102.1 = icmp eq i32 %i.ca, 0
  br i1 %.not102.1, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load i128, ptr %i.bi, align 1
  %i.cc = xor i128 %i.cb, 152058775483562005317584794628923027308
  %i.cd = getelementptr i8, ptr %i.bi, i64 16
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i128
  %i.cg = or i128 %i.cc, %i.cf
  %i.ch = icmp ne i128 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %.not102.2 = icmp eq i32 %i.ci, 0
  br i1 %.not102.2, label %bb.n, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load i128, ptr %i.bi, align 1
  %i.ck = xor i128 %i.cj, 152058775483562005317584794573205694836
  %i.cl = getelementptr i8, ptr %i.bi, i64 16
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i128
  %i.co = or i128 %i.ck, %i.cn
  %i.cp = icmp ne i128 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %.not102.3 = icmp eq i32 %i.cq, 0
  br i1 %.not102.3, label %bb.n, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load i128, ptr %i.bi, align 1
  %i.cs = icmp ne i128 %i.cr, 593979591732664084204632485665206125
  %i.ct = zext i1 %i.cs to i32
  %.not102.4 = icmp eq i32 %i.ct, 0
  br i1 %.not102.4, label %bb.n, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = load i64, ptr %i.bi, align 1
  %i.cv = xor i64 %i.cu, 7308251971015177327
  %i.cw = getelementptr i8, ptr %i.bi, i64 5
  %i.cx = load i64, ptr %i.cw, align 1
  %i.cy = xor i64 %i.cx, 32199698188430368
  %i.cz = or i64 %i.cv, %i.cy
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %.not102.5 = icmp eq i32 %i.db, 0
  br i1 %.not102.5, label %bb.n, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = load i128, ptr %i.bi, align 1
  %i.dd = xor i128 %i.dc, 142821293430488798095289473538120904558
  %i.de = getelementptr i8, ptr %i.bi, i64 16
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i128
  %i.dh = or i128 %i.dd, %i.dg
  %i.di = icmp ne i128 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %.not102.6 = icmp eq i32 %i.dj, 0
  br i1 %.not102.6, label %bb.n, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = load i64, ptr %i.bi, align 1
  %i.dl = xor i64 %i.dk, 7956017139123711589
  %i.dm = getelementptr i8, ptr %i.bi, i64 7
  %i.dn = load i64, ptr %i.dm, align 1
  %i.do = xor i64 %i.dn, 30243585276274542
  %i.dp = or i64 %i.dl, %i.do
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not102.7 = icmp eq i32 %i.dr, 0
  br i1 %.not102.7, label %bb.n, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = load i128, ptr %i.bi, align 1
  %i.dt = xor i128 %i.ds, 146762286384970928912371629185672507235
  %i.du = getelementptr i8, ptr %i.bi, i64 7
  %i.dv = load i128, ptr %i.du, align 1
  %i.dw = xor i128 %i.dv, 557895677462846867559724506008282990
  %i.dx = or i128 %i.dt, %i.dw
  %i.dy = icmp ne i128 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not102.8 = icmp eq i32 %i.dz, 0
  br i1 %.not102.8, label %bb.n, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = load i128, ptr %i.bi, align 1
  %i.eb = xor i128 %i.ea, 156091486421469099763153504946199160164
  %i.ec = getelementptr i8, ptr %i.bi, i64 5
  %i.ed = load i128, ptr %i.ec, align 1
  %i.ee = xor i128 %i.ed, 593978163478696016689179028642360417
  %i.ef = or i128 %i.eb, %i.ee
  %i.eg = icmp ne i128 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %.not102.9 = icmp eq i32 %i.eh, 0
  br i1 %.not102.9, label %bb.n, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = load i64, ptr %i.bi, align 1
  %i.ej = xor i64 %i.ei, 7935468323497862508
  %i.ek = getelementptr i8, ptr %i.bi, i64 6
  %i.el = load i64, ptr %i.ek, align 1
  %i.em = xor i64 %i.el, 32199620762627616
  %i.en = or i64 %i.ej, %i.em
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %.not102.10 = icmp eq i32 %i.ep, 0
  br i1 %.not102.10, label %bb.n, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = load i64, ptr %i.bi, align 1
  %i.er = xor i64 %i.eq, 8461736425575445615
  %i.es = getelementptr i8, ptr %i.bi, i64 5
  %i.et = load i64, ptr %i.es, align 1
  %i.eu = xor i64 %i.et, 32199620762627616
  %i.ev = or i64 %i.er, %i.eu
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  %.not102.11 = icmp eq i32 %i.ex, 0
  br i1 %.not102.11, label %bb.n, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = load i128, ptr %i.bi, align 1
  %i.ez = icmp ne i128 %i.ey, 594182409964150978733631820781416563
  %i.fa = zext i1 %i.ez to i32
  %.not102.12 = icmp eq i32 %i.fa, 0
  br i1 %.not102.12, label %bb.n, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = load i64, ptr %i.bi, align 1
  %i.fc = xor i64 %i.fb, 8099006087873587564
  %i.fd = getelementptr i8, ptr %i.bi, i64 7
  %i.fe = load i64, ptr %i.fd, align 1
  %i.ff = xor i64 %i.fe, 32210692986790256
  %i.fg = or i64 %i.fc, %i.ff
  %i.fh = icmp ne i64 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %.not102.13 = icmp eq i32 %i.fi, 0
  br i1 %.not102.13, label %bb.n, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fj = load i128, ptr %i.bi, align 1
  %i.fk = xor i128 %i.fj, 129529013731692731334456943973086945648
  %i.fl = getelementptr i8, ptr %i.bi, i64 16
  %i.fm = load i32, ptr %i.fl, align 1
  %i.fn = zext i32 %i.fm to i128
  %i.fo = xor i128 %i.fn, 7499636
  %i.fp = or i128 %i.fk, %i.fo
  %i.fq = icmp ne i128 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %.not102.14 = icmp eq i32 %i.fr, 0
  br i1 %.not102.14, label %bb.n, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = load i64, ptr %i.bi, align 1
  %i.ft = icmp ne i64 %i.fs, 30521834855100259
  %i.fu = zext i1 %i.ft to i32
  %.not102.15 = icmp eq i32 %i.fu, 0
  br i1 %.not102.15, label %bb.n, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = load i32, ptr %i.bi, align 1
  %i.fw = xor i32 %i.fv, 1836216166
  %i.fx = getelementptr i8, ptr %i.bi, i64 3
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = xor i32 %i.fy, 7627117
  %i.ga = or i32 %i.fw, %i.fz
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %.not102.16 = icmp eq i32 %i.gc, 0
  br i1 %.not102.16, label %bb.n, label %bb.ae

end_hunk_0
begin_hunk_1_@u_charFromName_78:bb.a
  br i1 %exitcond179.not.i, label %._crit_edge157.i, label %.lr.ph156.i, !llvm.loop !56

._crit_edge157.i:                                 ; preds = %bb.ba, %bb.ay
  %.191.lcssa.i = phi ptr [ %.090.i, %bb.ay ], [ %i.lf, %bb.ba ]
  %.088.lcssa.i = phi i32 [ 0, %bb.ay ], [ %i.lm, %bb.ba ] ; 3 uses
  %i.lo = load i8, ptr %.191.lcssa.i, align 1, !tbaa !25
  %i.lp = icmp eq i8 %i.lo, 0
  br i1 %i.lp, label %bb.bb, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

bb.bb:                                            ; preds = %._crit_edge157.i
  %i.lq = load i32, ptr %.082141, align 4, !tbaa !19
  %.not108.i = icmp ugt i32 %i.lq, %.088.lcssa.i
  br i1 %.not108.i, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lr = getelementptr inbounds nuw i8, ptr %.082141, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !20
  %.not109.i = icmp ugt i32 %.088.lcssa.i, %i.ls
  br i1 %.not109.i, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit

bb.bd:                                            ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.lt = getelementptr inbounds nuw i8, ptr %.082141, i64 12 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.082141, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !27  ; 3 uses
  %i.lw = zext i8 %i.lv to i16                    ; 3 uses
  %i.lx = zext i8 %i.lv to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.lx
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %.292.i = phi ptr [ %i.e, %bb.bd ], [ %i.mb, %bb.bf ] ; 5 uses
  %.080.i = phi ptr [ %i.ly, %bb.bd ], [ %i.lz, %bb.bf ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.080.i, i64 1 ; 2 uses
  %i.ma = load i8, ptr %.080.i, align 1, !tbaa !25 ; 2 uses
  %.not.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds nuw i8, ptr %.292.i, i64 1
  %i.mc = load i8, ptr %.292.i, align 1, !tbaa !25
  %.not106.i = icmp eq i8 %i.ma, %i.mc
  br i1 %.not106.i, label %bb.be, label %.thread115.i, !llvm.loop !57

bb.bg:                                            ; preds = %bb.be
  %i.md = load i32, ptr %.082141, align 4, !tbaa !19 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.082141, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !20 ; 2 uses
  %i.mg = call fastcc noundef zeroext i16 @_ZN6icu_78L17writeFactorSuffixEPKttPKcjPtPS3_S5_Pct(ptr noundef nonnull %i.lt, i16 noundef zeroext %i.lw, ptr noundef nonnull %i.lz, i32 noundef 0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i16 noundef zeroext 64) ; 0 uses
  %i.mh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.292.i, ptr noundef nonnull dereferenceable(1) %i.a) #12
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %.thread115.i, label %.preheader120.i

.preheader120.i:                                  ; preds = %bb.bg
  %i.mj = add i32 %i.mf, 1
  %i.mk = add nsw i32 %i.md, 1                    ; 2 uses
  %i.ml = icmp slt i32 %i.mk, %i.mj
  br i1 %i.ml, label %.preheader.lr.ph.i, label %._crit_edge151.i

.preheader.lr.ph.i:                               ; preds = %.preheader120.i
  %i.mm = add nsw i16 %i.lw, -1                   ; 2 uses
  %i.mn = zext i16 %i.mm to i64                   ; 4 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.mn ; 3 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.mn
  %.not160.i = icmp eq i8 %i.lv, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bh, %.preheader.lr.ph.i
  %i.mq = phi i32 [ %i.mk, %.preheader.lr.ph.i ], [ %i.nz, %bb.bh ] ; 3 uses
  %i.mr = load i16, ptr %i.mo, align 2, !tbaa !29
  %i.ms = add i16 %i.mr, 1                        ; 2 uses
  %i.mt = load i16, ptr %i.mp, align 2, !tbaa !29
  %i.mu = icmp ult i16 %i.ms, %i.mt
  br i1 %i.mu, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa126.i = phi i64 [ %i.mn, %.preheader.i ], [ %i.ne, %.lr.ph.i ]
  %.lcssa125.i = phi ptr [ %i.mo, %.preheader.i ], [ %i.nf, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ms, %.preheader.i ], [ %i.nh, %.lr.ph.i ]
  store i16 %.lcssa.i, ptr %.lcssa125.i, align 2, !tbaa !29
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.lcssa126.i ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !32 ; 2 uses
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.mw)
  %scevgep.i = getelementptr i8, ptr %i.mw, i64 1
  %scevgep178.i = getelementptr i8, ptr %scevgep.i, i64 %strlen.i
  store ptr %scevgep178.i, ptr %i.mv, align 8, !tbaa !32
  br i1 %.not160.i, label %._crit_edge148.thread.i, label %.lr.ph147.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.mx = phi ptr [ %i.nf, %.lr.ph.i ], [ %i.mo, %.preheader.i ]
  %i.my = phi i64 [ %i.ne, %.lr.ph.i ], [ %i.mn, %.preheader.i ] ; 2 uses
  %i.mz = phi i16 [ %i.nd, %.lr.ph.i ], [ %i.mm, %.preheader.i ]
  store i16 0, ptr %i.mx, align 2, !tbaa !29
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.my
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !32
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.my
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !32
  %i.nd = add i16 %i.mz, -1                       ; 2 uses
  %i.ne = zext i16 %i.nd to i64                   ; 4 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ne ; 3 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !29
  %i.nh = add i16 %i.ng, 1                        ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.ne
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !29
  %i.nk = icmp ult i16 %i.nh, %i.nj
  br i1 %i.nk, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

.lr.ph147.i:                                      ; preds = %._crit_edge.i, %._crit_edge141.i
  %.1145.i = phi i16 [ %i.nu, %._crit_edge141.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %.078144.i = phi ptr [ %.179.lcssa.i, %._crit_edge141.i ], [ %.292.i, %._crit_edge.i ] ; 2 uses
  %i.nl = zext i16 %.1145.i to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nl
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !32 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !25  ; 2 uses
  %.not104135.i = icmp eq i8 %i.no, 0
  br i1 %.not104135.i, label %._crit_edge141.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph147.i, %.lr.ph140.i
  %i.np = phi i8 [ %i.nt, %.lr.ph140.i ], [ %i.no, %.lr.ph147.i ]
  %.2138.i = phi i16 [ %spec.select111.i, %.lr.ph140.i ], [ %.1145.i, %.lr.ph147.i ]
  %.179137.i = phi ptr [ %i.nr, %.lr.ph140.i ], [ %.078144.i, %.lr.ph147.i ] ; 2 uses
  %.282136.i = phi ptr [ %spec.select.i, %.lr.ph140.i ], [ %i.nn, %.lr.ph147.i ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.282136.i, i64 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.179137.i, i64 1 ; 2 uses
  %i.ns = load i8, ptr %.179137.i, align 1, !tbaa !25
  %.not105.i = icmp eq i8 %i.np, %i.ns            ; 2 uses
  %spec.select.i = select i1 %.not105.i, ptr %i.nq, ptr @.str.42 ; 2 uses
  %spec.select111.i = select i1 %.not105.i, i16 %.2138.i, i16 99 ; 2 uses
  %i.nt = load i8, ptr %spec.select.i, align 1, !tbaa !25 ; 2 uses
  %.not104.i = icmp eq i8 %i.nt, 0
  br i1 %.not104.i, label %._crit_edge141.i, label %.lr.ph140.i, !llvm.loop !59

._crit_edge141.i:                                 ; preds = %.lr.ph140.i, %.lr.ph147.i
  %.179.lcssa.i = phi ptr [ %.078144.i, %.lr.ph147.i ], [ %i.nr, %.lr.ph140.i ] ; 2 uses
  %.2.lcssa.i = phi i16 [ %.1145.i, %.lr.ph147.i ], [ %spec.select111.i, %.lr.ph140.i ]
  %i.nu = add i16 %.2.lcssa.i, 1                  ; 3 uses
  %i.nv = icmp ult i16 %i.nu, %i.lw
  br i1 %i.nv, label %.lr.ph147.i, label %._crit_edge148.i, !llvm.loop !60

._crit_edge148.i:                                 ; preds = %._crit_edge141.i
  %i.nw = icmp ult i16 %i.nu, 99
  br i1 %i.nw, label %._crit_edge148.thread.i, label %bb.bh

._crit_edge148.thread.i:                          ; preds = %._crit_edge148.i, %._crit_edge.i
  %.078.lcssa191.i = phi ptr [ %.179.lcssa.i, %._crit_edge148.i ], [ %.292.i, %._crit_edge.i ]
  %i.nx = load i8, ptr %.078.lcssa191.i, align 1, !tbaa !25
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %.thread115.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge148.thread.i, %._crit_edge148.i
  %i.nz = add i32 %i.mq, 1
  %exitcond.not.i = icmp eq i32 %i.mq, %i.mf
  br i1 %exitcond.not.i, label %._crit_edge151.i, label %.preheader.i, !llvm.loop !61

.thread115.i:                                     ; preds = %bb.bf, %._crit_edge148.thread.i, %bb.bg
  %.194.ph.i = phi i32 [ %i.md, %bb.bg ], [ %i.mq, %._crit_edge148.thread.i ], [ 65535, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit

._crit_edge151.i:                                 ; preds = %bb.bh, %.preheader120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit: ; preds = %bb.bc, %.thread115.i
  %.295.i = phi i32 [ %.194.ph.i, %.thread115.i ], [ %.088.lcssa.i, %bb.bc ] ; 2 uses
  %.not101 = icmp eq i32 %.295.i, 65535
  br i1 %.not101, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %.loopexit

_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread: ; preds = %bb.ax, %bb.az, %bb.bc, %._crit_edge157.i, %bb.bb, %._crit_edge151.i, %.lr.ph.split, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %.082141, i64 10
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !21
  %i.oc = zext i16 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %.082141, i64 %i.oc
  %i.oe = add i32 %.4144, -1                      ; 2 uses
  %.not100 = icmp eq i32 %i.oe, 0
  br i1 %.not100, label %._crit_edge.split.loopexit, label %.lr.ph.split, !llvm.loop !62

._crit_edge.split.loopexit:                       ; preds = %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread
  %.pre = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.au
  %i.of = phi ptr [ %.pre, %._crit_edge.split.loopexit ], [ %i.kn, %bb.au ]
  store ptr %i.e, ptr %3, align 8, !tbaa !34
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 65535, ptr %i.og, align 8, !tbaa !35
  %i.oh = call fastcc noundef signext i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %i.of, i32 noundef 0, i32 noundef 1114112, ptr noundef null, ptr noundef nonnull %3, i32 noundef %0) ; 0 uses
  %i.oi = load i32, ptr %i.og, align 8, !tbaa !35 ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 65535
  br i1 %i.oj, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.f, %89, %87, %11, %13, %24, %26, %37, %39, %50, %52, %63, %65, %76, %78, %bb.l, %bb.m, %._crit_edge.split, %bb.g, %bb.h, %.critedge, %.critedge.thread, %bb.n, %bb.at, %bb.c, %bb.d
  %.sink = phi i32 [ 12, %bb.g ], [ 12, %bb.h ], [ 12, %89 ], [ 12, %._crit_edge.split ], [ 1, %bb.c ], [ 1, %bb.d ], [ 12, %bb.at ], [ 12, %bb.n ], [ 12, %.critedge.thread ], [ 12, %.critedge ], [ 12, %bb.m ], [ 12, %bb.l ], [ 12, %78 ], [ 12, %76 ], [ 12, %65 ], [ 12, %63 ], [ 12, %52 ], [ 12, %50 ], [ 12, %39 ], [ 12, %37 ], [ 12, %26 ], [ 12, %24 ], [ 12, %13 ], [ 12, %11 ], [ 12, %87 ], [ 12, %bb.f ]
  store i32 %.sink, ptr %2, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit, %.loopexit.sink.split, %._crit_edge.split, %bb.n, %bb.e, %bb.a, %bb.b
  %.487 = phi i32 [ 65535, %bb.a ], [ %.077.lcssa, %bb.n ], [ 65535, %bb.b ], [ 65535, %.loopexit.sink.split ], [ %i.oi, %._crit_edge.split ], [ 65535, %bb.e ], [ %.295.i, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  ret i32 %.487
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare signext i8 @uprv_toupper_78(i8 noundef signext) local_unnamed_addr #2

declare signext i8 @uprv_asciitolower_78(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZN6icu_78L10getCharCatEi(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 64975
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 65008
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 65534
  %i.d = icmp eq i32 %i.c, 65534
  %i.e = icmp samesign ult i32 %0, 1114112
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call signext i8 @u_charType_78(i32 noundef %0) ; 2 uses
  %i.g = icmp eq i8 %i.f, 18
  %i.h = and i32 %0, -1024
  %i.i = icmp eq i32 %i.h, 55296
  %i.j = select i1 %i.i, i8 31, i8 32
  %.0 = select i1 %i.g, i8 %i.j, i8 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.010 = phi i8 [ %.0, %bb.d ], [ 30, %bb.b ], [ 30, %bb.c ]
  ret i8 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i32 noundef range(i32 -2147483648, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 6 uses
  %i.c = alloca [200 x i8], align 16              ; 6 uses
  %i.d = alloca [200 x i8], align 16              ; 6 uses
  %i.e = lshr i32 %1, 5                           ; 3 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = lshr i32 %i.f, 5                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.k, align 2, !tbaa !29   ; 3 uses
  %i.n = icmp ugt i16 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge

._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge: ; preds = %bb.a
  %.pre = and i32 %i.e, 65535
  br label %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = zext i16 %i.m to i32
  %i.p = and i32 %i.e, 65535                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.q = phi i32 [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.b ]
  %i.r = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %.019.i = phi i16 [ %i.m, %.lr.ph.i ], [ %..0.i, %bb.b ]
  %.01418.i = phi i16 [ 0, %.lr.ph.i ], [ %.014..i, %bb.b ]
  %i.s = add nuw nsw i32 %i.r, %i.q
  %i.t = lshr i32 %i.s, 1                         ; 2 uses
  %i.u = trunc nuw i32 %i.t to i16                ; 2 uses
  %i.v = mul nuw nsw i32 %i.t, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp samesign ult i32 %i.p, %i.z        ; 2 uses
  %.014..i = select i1 %i.aa, i16 %.01418.i, i16 %i.u ; 2 uses
  %..0.i = select i1 %i.aa, i16 %i.u, i16 %.019.i ; 2 uses
  %i.ab = zext i16 %.014..i to i32                ; 3 uses
  %i.ac = zext i16 %..0.i to i32                  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = icmp sgt i32 %i.ad, %i.ab
  br i1 %i.ae, label %bb.b, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.af = mul nuw nsw i32 %i.ab, 3
  %i.ag = zext nneg i32 %i.af to i64
  br label %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit

_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit:     ; preds = %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge, %._crit_edge.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge ], [ %i.p, %._crit_edge.loopexit.i ] ; 6 uses
  %.lcssa.i = phi i64 [ 0, %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge ], [ %i.ag, %._crit_edge.loopexit.i ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.lcssa.i ; 11 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = icmp samesign ult i32 %.pre-phi, %i.aj
  %i.al = icmp eq i32 %5, 2                       ; 5 uses
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.c, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread

bb.c:                                             ; preds = %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit
  %i.am = shl nuw nsw i32 %i.aj, 5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %2) ; 4 uses
  %i.an = add nsw i32 %spec.select, -1
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %.not15.not18.i.not = icmp slt i32 %1, %spec.select
  br i1 %.not15.not18.i.not, label %.lr.ph.i183, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread220

.lr.ph.i183:                                      ; preds = %bb.d, %bb.f
  %.01219.i = phi i32 [ %i.at, %bb.f ], [ %1, %bb.d ] ; 4 uses
  %i.ao = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.01219.i, ptr noundef nonnull %i.d, i16 noundef zeroext 200) ; 3 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !25
  %.not16.i = icmp eq i16 %i.ao, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i183
  %i.ar = zext i16 %i.ao to i32
  %i.as = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.01219.i, i32 noundef 2, ptr noundef nonnull %i.d, i32 noundef %i.ar), !inline_history !63
  %.not17.i = icmp eq i8 %i.as, 0
  br i1 %.not17.i, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i183
  %i.at = add i32 %.01219.i, 1
  %exitcond.not.i = icmp eq i32 %.01219.i, %i.an
  br i1 %exitcond.not.i, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread220, label %.lr.ph.i183, !llvm.loop !64

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread220: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread: ; preds = %bb.c, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread220, %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit
  %.1141 = phi i32 [ %spec.select, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread220 ], [ %1, %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit ], [ %spec.select, %bb.c ] ; 8 uses
  %i.au = and i32 %i.g, 65535                     ; 3 uses
  %i.av = icmp eq i32 %.pre-phi, %i.au
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread
  %i.aw = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.ax = trunc i32 %i.e to i16
  %i.ay = icmp eq i16 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr i8, ptr %i.ah, i64 2
  %.val181 = load i16, ptr %i.az, align 2, !tbaa !29
  %i.ba = getelementptr i8, ptr %i.ah, i64 4
  %.val182 = load i16, ptr %i.ba, align 2, !tbaa !29
  %i.bb = call fastcc noundef signext i8 @_ZN6icu_78L14enumGroupNamesEPNS_10UCharNamesEPKtiiPFaPvi15UCharNameChoicePKciES4_S5_(ptr noundef nonnull %0, i16 %.val181, i16 %.val182, i32 noundef %.1141, i32 noundef %i.f, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

bb.i:                                             ; preds = %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !28
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.be, align 2, !tbaa !29
  %i.bh = zext i16 %i.bg to i64
  %.idx = mul nuw nsw i64 %i.bh, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx ; 5 uses
  %i.bj = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = icmp eq i32 %.pre-phi, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bm = and i32 %.1141, 31
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = shl nuw nsw i32 %.pre-phi, 5
  %i.bo = or disjoint i32 %i.bn, 31
end_hunk_1
