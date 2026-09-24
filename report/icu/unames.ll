Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unames?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6icu_78L10getExtNameEjPct:bb.a
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
  %.not5867 = icmp eq i32 %0, 0
  br i1 %.not5867, label %._crit_edge72, label %.lr.ph71

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
  %i.f = alloca [120 x i8], align 16              ; 12 uses
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
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %.088138 = phi ptr [ %i.p, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %i.o = load i8, ptr %.088138, align 1, !tbaa !25 ; 3 uses
  %.not99 = icmp eq i8 %i.o, 0
  br i1 %.not99, label %bb.g, label %bb.f

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
  br i1 %exitcond.not, label %.loopexit.sink.split, label %.preheader114, !llvm.loop !52

bb.g:                                             ; preds = %.preheader114
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 0, ptr %i.v, align 1, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 0, ptr %i.w, align 1, !tbaa !25
  %i.x = load i8, ptr %i.f, align 16, !tbaa !25
  %i.y = icmp eq i8 %i.x, 60
  br i1 %i.y, label %bb.h, label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %0, 2
  br i1 %i.z, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.u, -1                    ; 6 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = icmp eq i8 %i.ad, 62
  br i1 %i.ae, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %.old7 = icmp ugt i32 %i.aa, 2
  br i1 %.old7, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.j, %.preheader
  %indvars.iv173 = phi i64 [ %i.af, %.preheader ], [ %i.ab, %bb.j ]
  %i.af = add nsw i64 %indvars.iv173, -1          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = icmp ne i8 %i.ah, 45
  %.wide = icmp ugt i64 %i.af, 2
  %or.cond8 = and i1 %i.ai, %.wide
  br i1 %or.cond8, label %.preheader, label %.critedge.thread.loopexit, !llvm.loop !53

.critedge:                                        ; preds = %bb.j
  %i.aj = icmp eq i32 %i.aa, 2
  br i1 %i.aj, label %.critedge.thread, label %.loopexit.sink.split

.critedge.thread.loopexit:                        ; preds = %.preheader
  %i.ak = trunc i64 %i.af to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %.281106 = phi i32 [ 2, %.critedge ], [ %i.ak, %.critedge.thread.loopexit ] ; 4 uses
  %i.al = zext i32 %.281106 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = icmp eq i8 %i.an, 45
  %i.ap = add nsw i32 %i.u, -3
  %i.aq = sub i32 %i.ap, %.281106
  %i.ar = icmp ult i32 %i.aq, 8
  %or.cond6 = and i1 %i.ao, %i.ar
  br i1 %or.cond6, label %bb.k, label %.loopexit.sink.split

bb.k:                                             ; preds = %.critedge.thread
  store i8 0, ptr %i.am, align 1, !tbaa !25
  %i.as = add i32 %.281106, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.as)
  %.3266 = add i32 %.281106, 1                    ; 2 uses
  %i.at = icmp ult i32 %.3266, %i.aa
  br i1 %i.at, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.n
  %.3 = add i32 %.3268, 1                         ; 2 uses
  %i.au = icmp ult i32 %.3, %i.aa
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !54

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.3268 = phi i32 [ %.3, %bb.l ], [ %.3266, %bb.k ] ; 2 uses
  %.077267 = phi i32 [ %.178, %bb.l ], [ 0, %bb.k ]
  %i.av = zext i32 %.3268 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25  ; 3 uses
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = add i8 %i.ax, -48
  %or.cond103 = icmp ult i8 %i.az, 10
  br i1 %or.cond103, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ba = add i8 %i.ax, -97
  %or.cond104 = icmp ult i8 %i.ba, 6
  br i1 %or.cond104, label %bb.n, label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %.sink246 = phi i32 [ -48, %.lr.ph ], [ -87, %bb.m ]
  %i.bb = shl i32 %.077267, 4
  %i.bc = add i32 %i.bb, %.sink246
  %.178 = add i32 %i.bc, %i.ay                    ; 3 uses
  %i.bd = icmp sgt i32 %.178, 1114111
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.077.lcssa = phi i32 [ 0, %bb.k ], [ %.178, %bb.l ] ; 2 uses
  %i.be = tail call fastcc noundef zeroext i8 @_ZN6icu_78L10getCharCatEi(i32 noundef %.077.lcssa)
  %i.bf = zext i32 %umax to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 59 uses
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 7955443211351191157
  %i.bk = getelementptr i8, ptr %i.bh, i64 3
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 28259022526837619
  %i.bn = or i64 %i.bj, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not102 = icmp eq i32 %i.bp, 0
  br i1 %.not102, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %._crit_edge
  %.0145.lcssa.wide = phi i32 [ 0, %._crit_edge ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 6, %bb.u ], [ 7, %bb.v ], [ 8, %bb.w ], [ 9, %bb.x ], [ 10, %bb.y ], [ 11, %bb.z ], [ 12, %bb.aa ], [ 13, %bb.ab ], [ 14, %bb.ac ], [ 15, %bb.ad ], [ 16, %bb.ae ], [ 17, %bb.af ], [ 18, %bb.ag ], [ 19, %bb.ah ], [ 20, %bb.ai ], [ 21, %bb.aj ], [ 22, %bb.ak ], [ 23, %bb.al ], [ 24, %bb.am ], [ 25, %bb.an ], [ 26, %bb.ao ], [ 27, %bb.ap ], [ 28, %bb.aq ], [ 29, %bb.ar ], [ 30, %bb.as ], [ 31, %bb.at ], [ 32, %bb.au ]
  %i.bq = zext i8 %i.be to i32
  %i.br = icmp eq i32 %.0145.lcssa.wide, %i.bq
  br i1 %i.br, label %.loopexit, label %.loopexit.sink.split

bb.p:                                             ; preds = %._crit_edge
  %i.bs = load i128, ptr %i.bh, align 1
  %i.bt = xor i128 %i.bs, 152058775483562005317584794628922568821
  %i.bu = getelementptr i8, ptr %i.bh, i64 16
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i128
  %i.bx = or i128 %i.bt, %i.bw
  %i.by = icmp ne i128 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not102.1 = icmp eq i32 %i.bz, 0
  br i1 %.not102.1, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i128, ptr %i.bh, align 1
  %i.cb = xor i128 %i.ca, 152058775483562005317584794628923027308
  %i.cc = getelementptr i8, ptr %i.bh, i64 16
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i128
  %i.cf = or i128 %i.cb, %i.ce
  %i.cg = icmp ne i128 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %.not102.2 = icmp eq i32 %i.ch, 0
  br i1 %.not102.2, label %bb.o, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i128, ptr %i.bh, align 1
  %i.cj = xor i128 %i.ci, 152058775483562005317584794573205694836
  %i.ck = getelementptr i8, ptr %i.bh, i64 16
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i128
  %i.cn = or i128 %i.cj, %i.cm
  %i.co = icmp ne i128 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %.not102.3 = icmp eq i32 %i.cp, 0
  br i1 %.not102.3, label %bb.o, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load i128, ptr %i.bh, align 1
  %i.cr = icmp ne i128 %i.cq, 593979591732664084204632485665206125
  %i.cs = zext i1 %i.cr to i32
  %.not102.4 = icmp eq i32 %i.cs, 0
  br i1 %.not102.4, label %bb.o, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = load i64, ptr %i.bh, align 1
  %i.cu = xor i64 %i.ct, 7308251971015177327
  %i.cv = getelementptr i8, ptr %i.bh, i64 5
  %i.cw = load i64, ptr %i.cv, align 1
  %i.cx = xor i64 %i.cw, 32199698188430368
  %i.cy = or i64 %i.cu, %i.cx
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not102.5 = icmp eq i32 %i.da, 0
  br i1 %.not102.5, label %bb.o, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load i128, ptr %i.bh, align 1
  %i.dc = xor i128 %i.db, 142821293430488798095289473538120904558
  %i.dd = getelementptr i8, ptr %i.bh, i64 16
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = zext i8 %i.de to i128
  %i.dg = or i128 %i.dc, %i.df
  %i.dh = icmp ne i128 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not102.6 = icmp eq i32 %i.di, 0
  br i1 %.not102.6, label %bb.o, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load i64, ptr %i.bh, align 1
  %i.dk = xor i64 %i.dj, 7956017139123711589
  %i.dl = getelementptr i8, ptr %i.bh, i64 7
  %i.dm = load i64, ptr %i.dl, align 1
  %i.dn = xor i64 %i.dm, 30243585276274542
  %i.do = or i64 %i.dk, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %.not102.7 = icmp eq i32 %i.dq, 0
  br i1 %.not102.7, label %bb.o, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load i128, ptr %i.bh, align 1
  %i.ds = xor i128 %i.dr, 146762286384970928912371629185672507235
  %i.dt = getelementptr i8, ptr %i.bh, i64 7
  %i.du = load i128, ptr %i.dt, align 1
  %i.dv = xor i128 %i.du, 557895677462846867559724506008282990
  %i.dw = or i128 %i.ds, %i.dv
  %i.dx = icmp ne i128 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %.not102.8 = icmp eq i32 %i.dy, 0
  br i1 %.not102.8, label %bb.o, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = load i128, ptr %i.bh, align 1
  %i.ea = xor i128 %i.dz, 156091486421469099763153504946199160164
  %i.eb = getelementptr i8, ptr %i.bh, i64 5
  %i.ec = load i128, ptr %i.eb, align 1
  %i.ed = xor i128 %i.ec, 593978163478696016689179028642360417
  %i.ee = or i128 %i.ea, %i.ed
  %i.ef = icmp ne i128 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %.not102.9 = icmp eq i32 %i.eg, 0
  br i1 %.not102.9, label %bb.o, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = load i64, ptr %i.bh, align 1
  %i.ei = xor i64 %i.eh, 7935468323497862508
  %i.ej = getelementptr i8, ptr %i.bh, i64 6
  %i.ek = load i64, ptr %i.ej, align 1
  %i.el = xor i64 %i.ek, 32199620762627616
  %i.em = or i64 %i.ei, %i.el
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = zext i1 %i.en to i32
  %.not102.10 = icmp eq i32 %i.eo, 0
  br i1 %.not102.10, label %bb.o, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = load i64, ptr %i.bh, align 1
  %i.eq = xor i64 %i.ep, 8461736425575445615
  %i.er = getelementptr i8, ptr %i.bh, i64 5
  %i.es = load i64, ptr %i.er, align 1
  %i.et = xor i64 %i.es, 32199620762627616
  %i.eu = or i64 %i.eq, %i.et
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %.not102.11 = icmp eq i32 %i.ew, 0
  br i1 %.not102.11, label %bb.o, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = load i128, ptr %i.bh, align 1
  %i.ey = icmp ne i128 %i.ex, 594182409964150978733631820781416563
  %i.ez = zext i1 %i.ey to i32
  %.not102.12 = icmp eq i32 %i.ez, 0
  br i1 %.not102.12, label %bb.o, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load i64, ptr %i.bh, align 1
  %i.fb = xor i64 %i.fa, 8099006087873587564
  %i.fc = getelementptr i8, ptr %i.bh, i64 7
  %i.fd = load i64, ptr %i.fc, align 1
  %i.fe = xor i64 %i.fd, 32210692986790256
  %i.ff = or i64 %i.fb, %i.fe
  %i.fg = icmp ne i64 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
end_hunk_0
begin_hunk_1_@_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_:bb.a
  br i1 %i.bv, label %bb.o, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread

bb.o:                                             ; preds = %bb.n
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !29
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = icmp samesign ult i32 %.pre-phi, %i.bx
  %or.cond8 = and i1 %i.al, %i.by
  br i1 %or.cond8, label %bb.p, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread

bb.p:                                             ; preds = %bb.o
  %i.bz = shl nuw nsw i32 %i.bx, 5
  %spec.select168 = call i32 @llvm.smin.i32(i32 %i.bz, i32 %2) ; 2 uses
  %i.ca = add nsw i32 %spec.select168, -1
  %.not.i184 = icmp eq ptr %3, null
  br i1 %.not.i184, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %.not15.not18.i185.not = icmp slt i32 %.1141, %spec.select168
  br i1 %.not15.not18.i185.not, label %.lr.ph.i186, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread226

.lr.ph.i186:                                      ; preds = %bb.q, %bb.s
  %.01219.i187 = phi i32 [ %i.cg, %bb.s ], [ %.1141, %bb.q ] ; 4 uses
  %i.cb = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.01219.i187, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 3 uses
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc
  store i8 0, ptr %i.cd, align 1, !tbaa !25
  %.not16.i188 = icmp eq i16 %i.cb, 0
  br i1 %.not16.i188, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i186
  %i.ce = zext i16 %i.cb to i32
  %i.cf = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.01219.i187, i32 noundef 2, ptr noundef nonnull %i.c, i32 noundef %i.ce), !inline_history !63
  %.not17.i189 = icmp eq i8 %i.cf, 0
  br i1 %.not17.i189, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i186
  %i.cg = add i32 %.01219.i187, 1
  %exitcond.not.i190 = icmp eq i32 %.01219.i187, %i.ca
  br i1 %exitcond.not.i190, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread226, label %.lr.ph.i186, !llvm.loop !64

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread226: ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread: ; preds = %bb.p, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread226, %bb.n, %bb.o, %bb.m, %bb.j, %bb.l
  %.1131 = phi ptr [ %i.bs, %bb.l ], [ %i.ah, %bb.j ], [ %i.ah, %bb.m ], [ %i.bu, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread226 ], [ %i.bu, %bb.o ], [ %i.bu, %bb.n ], [ %i.bu, %bb.p ] ; 5 uses
  %i.ch = icmp ult ptr %.1131, %i.bi
  br i1 %i.ch, label %.lr.ph, label %.critedge174

.lr.ph:                                           ; preds = %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread
  %.not.i195 = icmp eq ptr %3, null
  %i.ci = load i16, ptr %.1131, align 2, !tbaa !29 ; 2 uses
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = icmp samesign ugt i32 %i.au, %i.cj
  br i1 %i.ck, label %.lr.ph320, label %.critedge

.lr.ph320:                                        ; preds = %.lr.ph, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread
  %i.cl = phi i32 [ %i.dk, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread ], [ %i.cj, %.lr.ph ]
  %.2132251319 = phi ptr [ %i.cr, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread ], [ %.1131, %.lr.ph ] ; 4 uses
  %i.cm = shl nuw nsw i32 %i.cl, 5                ; 4 uses
  %i.cn = or disjoint i32 %i.cm, 31
  %i.co = getelementptr i8, ptr %.2132251319, i64 2
  %.2132.val178 = load i16, ptr %i.co, align 2, !tbaa !29
  %i.cp = getelementptr i8, ptr %.2132251319, i64 4
  %.2132.val179 = load i16, ptr %i.cp, align 2, !tbaa !29
  %i.cq = call fastcc noundef signext i8 @_ZN6icu_78L14enumGroupNamesEPNS_10UCharNamesEPKtiiPFaPvi15UCharNameChoicePKciES4_S5_(ptr noundef %0, i16 %.2132.val178, i16 %.2132.val179, i32 noundef %i.cm, i32 noundef %i.cn, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %.not166 = icmp eq i8 %i.cq, 0
  br i1 %.not166, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216, label %bb.t

bb.t:                                             ; preds = %.lr.ph320
  %i.cr = getelementptr inbounds nuw i8, ptr %.2132251319, i64 6 ; 6 uses
  %i.cs = icmp ult ptr %i.cr, %i.bi
  br i1 %i.cs, label %bb.u, label %.critedge174

bb.u:                                             ; preds = %bb.t
  %i.ct = load i16, ptr %i.cr, align 2, !tbaa !29
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = load i16, ptr %.2132251319, align 2, !tbaa !29
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = add nuw nsw i32 %i.cw, 1
  %i.cy = icmp samesign ult i32 %i.cx, %i.cu
  %or.cond10 = and i1 %i.al, %i.cy
  br i1 %or.cond10, label %bb.v, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread

bb.v:                                             ; preds = %bb.u
  %i.cz = shl nuw nsw i32 %i.cu, 5
  %spec.select171 = call i32 @llvm.smin.i32(i32 %i.cz, i32 %2) ; 2 uses
  %i.da = add nsw i32 %spec.select171, -1
  br i1 %.not.i195, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = shl nuw nsw i32 %i.cw, 5
  %i.dc = add nuw nsw i32 %i.db, 32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.not15.not18.i196.not = icmp slt i32 %i.dc, %spec.select171
  br i1 %.not15.not18.i196.not, label %.lr.ph.i197, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread231

.lr.ph.i197:                                      ; preds = %bb.w, %bb.y
  %.01219.i198 = phi i32 [ %i.di, %bb.y ], [ %i.dc, %bb.w ] ; 4 uses
  %i.dd = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.01219.i198, ptr noundef nonnull %i.b, i16 noundef zeroext 200) ; 3 uses
  %i.de = zext i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de
  store i8 0, ptr %i.df, align 1, !tbaa !25
  %.not16.i199 = icmp eq i16 %i.dd, 0
  br i1 %.not16.i199, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i197
  %i.dg = zext i16 %i.dd to i32
  %i.dh = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.01219.i198, i32 noundef 2, ptr noundef nonnull %i.b, i32 noundef %i.dg), !inline_history !63
  %.not17.i200 = icmp eq i8 %i.dh, 0
  br i1 %.not17.i200, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i197
  %i.di = add i32 %.01219.i198, 1
  %exitcond.not.i201 = icmp eq i32 %.01219.i198, %i.da
  br i1 %exitcond.not.i201, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread231, label %.lr.ph.i197, !llvm.loop !64

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread231: ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread: ; preds = %bb.v, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread231, %bb.u
  %i.dj = load i16, ptr %i.cr, align 2, !tbaa !29 ; 2 uses
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = icmp samesign ugt i32 %i.au, %i.dk
  br i1 %i.dl, label %.lr.ph320, label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread, %.lr.ph
  %.2132251.lcssa = phi ptr [ %.1131, %.lr.ph ], [ %i.cr, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread ] ; 3 uses
  %.2142250.lcssa = phi i32 [ %.1141, %.lr.ph ], [ %i.cm, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread ]
  %.lcssa = phi i16 [ %i.ci, %.lr.ph ], [ %i.dj, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205.thread ]
  %i.dm = trunc i32 %i.g to i16
  %i.dn = icmp eq i16 %.lcssa, %i.dm
  br i1 %i.dn, label %bb.z, label %.critedge174

bb.z:                                             ; preds = %.critedge
  %i.do = and i32 %i.f, -32
  %i.dp = getelementptr i8, ptr %.2132251.lcssa, i64 2
  %.2132.val = load i16, ptr %i.dp, align 2, !tbaa !29
  %i.dq = getelementptr i8, ptr %.2132251.lcssa, i64 4
  %.2132.val177 = load i16, ptr %i.dq, align 2, !tbaa !29
  %i.dr = call fastcc noundef signext i8 @_ZN6icu_78L14enumGroupNamesEPNS_10UCharNamesEPKtiiPFaPvi15UCharNameChoicePKciES4_S5_(ptr noundef %0, i16 %.2132.val, i16 %.2132.val177, i32 noundef %i.do, i32 noundef %i.f, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

.critedge174:                                     ; preds = %bb.t, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread, %.critedge
  %.2142246 = phi i32 [ %.2142250.lcssa, %.critedge ], [ %.1141, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread ], [ %i.cm, %bb.t ]
  %.2132242 = phi ptr [ %.2132251.lcssa, %.critedge ], [ %.1131, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194.thread ], [ %i.cr, %bb.t ]
  %i.ds = icmp eq ptr %.2132242, %i.bi
  %or.cond175 = select i1 %i.al, i1 %i.ds, i1 false
  br i1 %or.cond175, label %.thread, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

.thread:                                          ; preds = %.critedge174
  %i.dt = getelementptr inbounds i8, ptr %i.bi, i64 -6
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !29
  %i.dv = zext i16 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 5
  %i.dx = add nuw nsw i32 %i.dw, 32
  %spec.select176 = call i32 @llvm.smax.i32(i32 %i.dx, i32 %.2142246)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.g
  br i1 %i.al, label %bb.ab, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

bb.ab:                                            ; preds = %.thread, %bb.aa
  %.5145238 = phi i32 [ %spec.select176, %.thread ], [ %.1141, %bb.aa ] ; 2 uses
  %spec.store.select = call i32 @llvm.smin.i32(i32 %2, i32 1114112) ; 2 uses
  %i.dy = add nsw i32 %spec.store.select, -1
  %.not.i206 = icmp eq ptr %3, null
  br i1 %.not.i206, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not15.not18.i207.not = icmp slt i32 %.5145238, %spec.store.select
  br i1 %.not15.not18.i207.not, label %.lr.ph.i208, label %.sink.split.i213

.lr.ph.i208:                                      ; preds = %bb.ac, %bb.ae
  %.01219.i209 = phi i32 [ %i.ee, %bb.ae ], [ %.5145238, %bb.ac ] ; 4 uses
  %i.dz = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.01219.i209, ptr noundef nonnull %i.a, i16 noundef zeroext 200) ; 3 uses
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  store i8 0, ptr %i.eb, align 1, !tbaa !25
  %.not16.i210 = icmp eq i16 %i.dz, 0
  br i1 %.not16.i210, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i208
  %i.ec = zext i16 %i.dz to i32
  %i.ed = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.01219.i209, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.ec), !inline_history !63
  %.not17.i211 = icmp eq i8 %i.ed, 0
  br i1 %.not17.i211, label %.sink.split.i213, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i208
  %i.ee = add i32 %.01219.i209, 1
  %exitcond.not.i212 = icmp eq i32 %.01219.i209, %i.dy
  br i1 %exitcond.not.i212, label %.sink.split.i213, label %.lr.ph.i208, !llvm.loop !64

.sink.split.i213:                                 ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1.ph.i214 = phi i8 [ 1, %bb.ac ], [ 0, %bb.ad ], [ 1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit216: ; preds = %.lr.ph320, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205, %.critedge174, %bb.k, %bb.z, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194, %.sink.split.i213, %bb.ab, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit, %bb.aa, %bb.h
  %.11 = phi i8 [ %i.bb, %bb.h ], [ 1, %bb.aa ], [ 0, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit ], [ %.1.ph.i214, %.sink.split.i213 ], [ 1, %bb.ab ], [ 0, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit205 ], [ 0, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit194 ], [ 1, %.critedge174 ], [ 0, %bb.k ], [ %i.dr, %bb.z ], [ 0, %.lr.ph320 ]
  ret i8 %.11
}

; Function Attrs: mustprogress uwtable
define void @u_enumCharNames_78(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %4, 3
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4, !tbaa !11
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 1114112) ; 6 uses
  %.not61 = icmp ult i32 %0, %spec.store.select
  br i1 %.not61, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc noundef signext i8 @_ZN6icu_78L12isDataLoadedEP10UErrorCode(ptr noundef %5)
  %.not62 = icmp eq i8 %i.f, 0
  br i1 %.not62, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16   ; 2 uses
  %.not6375 = icmp eq i32 %i.l, 0
  br i1 %.not6375, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.078 = phi i32 [ %i.ae, %bb.q ], [ %i.l, %.lr.ph.preheader ]
  %.05277 = phi ptr [ %i.ad, %bb.q ], [ %i.m, %.lr.ph.preheader ] ; 7 uses
  %.05376 = phi i32 [ %.2, %bb.q ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.n = load i32, ptr %.05277, align 4, !tbaa !19 ; 3 uses
  %i.o = icmp ult i32 %.05376, %i.n
  br i1 %i.o, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph
  %.not64 = icmp ugt i32 %spec.store.select, %i.n
  %i.p = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13 ; 2 uses
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call fastcc noundef signext i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %i.p, i32 noundef %.05376, i32 noundef %spec.store.select, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.r = tail call fastcc noundef signext i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %i.p, i32 noundef %.05376, i32 noundef %i.n, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %.not65 = icmp eq i8 %i.r, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %.05277, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.1 = phi i32 [ %i.s, %bb.k ], [ %.05376, %.lr.ph ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05277, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20   ; 2 uses
  %.not66 = icmp ugt i32 %.1, %i.u
  br i1 %.not66, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %.not67 = icmp ugt i32 %spec.store.select, %i.v
  br i1 %.not67, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = tail call fastcc noundef signext i8 @_ZN6icu_78L12enumAlgNamesEPNS_16AlgorithmicRangeEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef nonnull %.05277, i32 noundef %.1, i32 noundef %spec.store.select, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.x = tail call fastcc noundef signext i8 @_ZN6icu_78L12enumAlgNamesEPNS_16AlgorithmicRangeEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef nonnull %.05277, i32 noundef %.1, i32 noundef %i.v, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %.not68 = icmp eq i8 %i.x, 0
  br i1 %.not68, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load i32, ptr %i.t, align 4, !tbaa !20
  %i.z = add nsw i32 %i.y, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.2 = phi i32 [ %i.z, %bb.p ], [ %.1, %bb.l ]   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05277, i64 10
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !21
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.05277, i64 %i.ac
  %i.ae = add i32 %.078, -1                       ; 2 uses
  %.not63 = icmp eq i32 %i.ae, 0
  br i1 %.not63, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.af = phi ptr [ %i.g, %bb.g ], [ %.pre, %._crit_edge.loopexit ]
  %.053.lcssa = phi i32 [ %0, %bb.g ], [ %.2, %._crit_edge.loopexit ]
  %i.ag = tail call fastcc noundef signext i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %i.af, i32 noundef %.053.lcssa, i32 noundef %spec.store.select, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.j, %bb.f, %bb.e, %bb.a, %bb.b, %._crit_edge, %bb.n, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L12enumAlgNamesEPNS_16AlgorithmicRangeEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr noundef %4, i32 noundef range(i32 -2147483648, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 11 uses
  %i.b = alloca [8 x i16], align 16               ; 5 uses
  %i.c = alloca [8 x ptr], align 16               ; 4 uses
  %i.d = alloca [8 x ptr], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = and i32 %5, -3
  %or.cond.not = icmp eq i32 %i.e, 0
  br i1 %or.cond.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !26
  switch i8 %i.g, label %.thread [
    i8 0, label %bb.c
    i8 1, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = call fastcc noundef zeroext i16 @_ZN6icu_78L10getAlgNameEPNS_16AlgorithmicRangeEj15UCharNameChoicePct(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %i.a, i16 noundef zeroext 200) ; 2 uses
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %i.j = icmp eq i16 %i.h, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef signext i8 %3(ptr noundef %4, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %i.a, i32 noundef %i.i)
  %.not121 = icmp eq i8 %i.k, 0
  br i1 %.not121, label %.thread, label %.preheader127.preheader

.preheader127.preheader:                          ; preds = %bb.d
  %strlen188 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %scevgep189 = getelementptr i8, ptr %i.a, i64 %strlen188
  %i.l = getelementptr inbounds i8, ptr %scevgep189, i64 -1 ; 3 uses
  %i.m = add nsw i32 %1, 1                        ; 2 uses
  %i.n = icmp slt i32 %i.m, %2
  br i1 %i.n, label %.preheader, label %.thread

bb.e:                                             ; preds = %.loopexit
  %i.o = add nsw i32 %i.q, 1                      ; 2 uses
  %i.p = icmp slt i32 %i.o, %2
  br i1 %i.p, label %.preheader, label %.thread, !llvm.loop !67

.preheader:                                       ; preds = %.preheader127.preheader, %bb.e
  %i.q = phi i32 [ %i.o, %bb.e ], [ %i.m, %.preheader127.preheader ] ; 2 uses
  %i.r = load i8, ptr %i.l, align 1, !tbaa !25    ; 4 uses
  %i.s = add i8 %i.r, -48
  %or.cond5165 = icmp ult i8 %i.s, 9
  %i.t = add i8 %i.r, -65
  %or.cond8166 = icmp ult i8 %i.t, 5
  %or.cond167 = or i1 %or.cond5165, %or.cond8166
  br i1 %or.cond167, label %._crit_edge169, label %.lr.ph168

._crit_edge169:                                   ; preds = %bb.g, %.preheader
  %.lcssa131 = phi ptr [ %i.l, %.preheader ], [ %i.x, %bb.g ]
  %.lcssa = phi i8 [ %i.r, %.preheader ], [ %i.y, %bb.g ]
  %i.u = add nuw nsw i8 %.lcssa, 1
  br label %.loopexit

.lr.ph168:                                        ; preds = %.preheader, %bb.g
  %i.v = phi i8 [ %i.y, %bb.g ], [ %i.r, %.preheader ]
  %i.w = phi ptr [ %i.x, %bb.g ], [ %i.l, %.preheader ] ; 3 uses
  switch i8 %i.v, label %bb.g [
    i8 57, label %.loopexit
    i8 70, label %bb.f
end_hunk_1
