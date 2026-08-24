Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvsel?download=true
inline.NumInlined: 70
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ucnvsel_open_78:bb.a
  %.pre = load ptr, ptr %5, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.loopexit, %bb.m
  %i.ac = phi ptr [ %i.m, %bb.m ], [ %.pre, %._crit_edge.loopexit ], [ %i.m, %.lr.ph.split ]
  %.056.lcssa = phi i32 [ 0, %bb.m ], [ %i.t, %._crit_edge.loopexit ], [ %i.ab, %.lr.ph.split ] ; 2 uses
  %i.ad = and i32 %.056.lcssa, 3                  ; 3 uses
  %.not73 = icmp eq i32 %i.ad, 0                  ; 2 uses
  %i.ae = sub nuw nsw i32 4, %i.ad
  %spec.select = select i1 %.not73, i32 0, i32 %i.ae
  %i.af = add nsw i32 %spec.select, %.056.lcssa   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !24
  %i.ah = sext i32 %i.af to i64
  %i.ai = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ah) #16
          to label %bb.o unwind label %.loopexit.split-lp ; 4 uses

bb.o:                                             ; preds = %._crit_edge
  %.not74 = icmp eq ptr %i.ai, null
  br i1 %.not74, label %bb.q, label %.preheader82

.preheader82:                                     ; preds = %bb.o
  br i1 %i.o, label %.lr.ph90, label %.preheader

.lr.ph90:                                         ; preds = %.preheader82
  %.not76 = icmp eq ptr %.065, null
  br i1 %.not76, label %.lr.ph90.split.us.preheader, label %.lr.ph90.split

.lr.ph90.split.us.preheader:                      ; preds = %.lr.ph90
  %wide.trip.count113 = zext nneg i32 %.066 to i64
  %.pre116 = load ptr, ptr %5, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre116, i64 24
  %.pre117 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %.lr.ph90.split.us

.lr.ph90.split.us:                                ; preds = %.lr.ph90.split.us.preheader, %bb.p
  %i.aj = phi ptr [ %.pre117, %.lr.ph90.split.us.preheader ], [ %i.aq, %bb.p ]
  %indvars.iv110 = phi i64 [ 0, %.lr.ph90.split.us.preheader ], [ %indvars.iv.next111, %bb.p ] ; 4 uses
  %.089.us = phi ptr [ %i.ai, %.lr.ph90.split.us.preheader ], [ %i.av, %bb.p ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv110
  store ptr %.089.us, ptr %i.ak, align 8, !tbaa !21
  %i.al = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.am = invoke ptr @ucnv_getAvailableName_78(i32 noundef %i.al)
          to label %bb.p unwind label %.loopexit.split.us

bb.p:                                             ; preds = %.lr.ph90.split.us
  %i.an = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.089.us, ptr noundef nonnull dereferenceable(1) %i.am) #15 ; 0 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv110
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #17
  %i.au = getelementptr i8, ptr %.089.us, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 1      ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.preheader, label %.lr.ph90.split.us, !llvm.loop !25

.loopexit.split.us:                               ; preds = %.lr.ph90.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph90.split:                                   ; preds = %.lr.ph90
  %i.aw = load ptr, ptr %5, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %.066 to i64
  %.pre115 = load ptr, ptr %i.ax, align 8, !tbaa !14
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i32 7, ptr %4, align 4, !tbaa !8
  br label %bb.x

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.preheader:                                       ; preds = %bb.r, %bb.p, %.preheader82
  %.0.lcssa = phi ptr [ %i.ai, %.preheader82 ], [ %i.av, %bb.p ], [ %i.bj, %bb.r ]
  br i1 %.not73, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.preheader
  %narrow = sub nuw nsw i32 4, %i.ad
  %i.ay = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i8 0, i64 %i.ay, i1 false), !tbaa !26
  br label %._crit_edge96

bb.r:                                             ; preds = %.lr.ph90.split, %bb.r
  %i.az = phi ptr [ %.pre115, %.lr.ph90.split ], [ %i.be, %bb.r ]
  %indvars.iv105 = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next106, %bb.r ] ; 4 uses
  %.089 = phi ptr [ %i.ai, %.lr.ph90.split ], [ %i.bj, %bb.r ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv105
  store ptr %.089, ptr %i.ba, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.065, i64 %indvars.iv105
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bd = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.089, ptr noundef nonnull dereferenceable(1) %i.bc) #15 ; 0 uses
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv105
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #17
  %i.bi = getelementptr i8, ptr %.089, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 1      ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.preheader, label %bb.r, !llvm.loop !25

._crit_edge96:                                    ; preds = %.lr.ph95.preheader, %.preheader
  %i.bk = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 49
  store i8 1, ptr %i.bl, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i32 %.066, ptr %i.bm, align 8, !tbaa !28
  %i.bn = add nsw i32 %.066, 31
  %i.bo = sdiv i32 %i.bn, 32
  %i.bp = invoke ptr @upvec_open_78(i32 noundef %i.bo, ptr noundef nonnull %4)
          to label %bb.s unwind label %bb.v       ; 2 uses

bb.s:                                             ; preds = %._crit_edge96
  %i.bq = load ptr, ptr %5, align 8, !tbaa !10
  invoke fastcc void @_ZL20generateSelectorDataP18UConverterSelectorP13UPropsVectorsPK4USet20UConverterUnicodeSetP10UErrorCode(ptr noundef %i.bq, ptr noundef %i.bp, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @upvec_close_78(ptr noundef %i.bp)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = load i32, ptr %4, align 4, !tbaa !8
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.s, %._crit_edge96
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %5, align 8, !tbaa !10
  store ptr null, ptr %5, align 8, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %bb.u, %bb.w, %bb.l, %bb.f
  %.264 = phi ptr [ null, %bb.f ], [ null, %bb.l ], [ null, %bb.q ], [ %i.bu, %bb.w ], [ null, %bb.u ]
  call void @_ZN6icu_788internal16LocalOpenPointerI18UConverterSelectorXadL_Z16ucnvsel_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.z

bb.y:                                             ; preds = %.loopexit.split.us, %.loopexit.split-lp, %.split.us, %bb.v, %bb.g
  %.pn79.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.v, %.split.us ], [ %i.bt, %bb.v ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_788internal16LocalOpenPointerI18UConverterSelectorXadL_Z16ucnvsel_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn79.pn

bb.z:                                             ; preds = %bb.a, %bb.x, %bb.d
  %.3 = phi ptr [ %.264, %bb.x ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ucnv_countAvailable_78() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @ucnv_getAvailableName_78(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @upvec_open_78(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20generateSelectorDataP18UConverterSelectorP13UPropsVectorsPK4USet20UConverterUnicodeSetP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = load i32, ptr %4, align 4, !tbaa !8
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %.fr90 = freeze i32 %i.i                        ; 2 uses
  %i.j = add i32 %.fr90, 31
  %i.k = sdiv i32 %i.j, 32                        ; 3 uses
  %i.l = icmp sgt i32 %.fr90, 0                   ; 2 uses
  br i1 %i.l, label %.lr.ph.preheader, label %.critedge75

.lr.ph.preheader:                                 ; preds = %bb.b
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.pre = load i32, ptr %i.h, align 8, !tbaa !28
  %i.m = icmp sgt i32 %.pre, 0
  br i1 %i.m, label %.lr.ph82, label %.critedge75

.lr.ph82:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.06677 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  tail call void @upvec_setValue_78(ptr noundef %1, i32 noundef 1114113, i32 noundef 1114113, i32 noundef %.06677, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %4)
  %i.o = add nuw nsw i32 %.06677, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %smax
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !29

bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.h, align 8, !tbaa !28
  %i.q = sext i32 %i.p to i64
  %.not73 = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %.not73, label %bb.d, label %.critedge75, !llvm.loop !30

bb.d:                                             ; preds = %.lr.ph82, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = call ptr @ucnv_open_78(ptr noundef %i.t, ptr noundef nonnull %4) ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !8
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.x = call ptr @uset_open_78(i32 noundef 1, i32 noundef 0) ; 4 uses
  call void @ucnv_getUnicodeSet_78(ptr noundef %i.u, ptr noundef %i.x, i32 noundef %3, ptr noundef nonnull %4)
  %i.y = load i32, ptr %4, align 4, !tbaa !8
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ucnv_close_78(ptr noundef %i.u)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = lshr i32 %i.aa, 5
  %i.ac = and i32 %i.aa, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = call i32 @uset_getItemCount_78(ptr noundef %i.x) ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %bb.g, %bb.i
  %.06378 = phi i32 [ %i.al, %bb.i ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.ag = call i32 @uset_getItem_78(ptr noundef %i.x, i32 noundef %.06378, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph79
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !31
  call void @upvec_setValue_78(ptr noundef %1, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.ab, i32 noundef -1, i32 noundef %i.ad, ptr noundef nonnull %4)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph79, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.al = add nuw nsw i32 %.06378, 1              ; 2 uses
  %exitcond94.not = icmp eq i32 %i.al, %i.ae
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph79, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.i, %bb.g
  call void @ucnv_close_78(ptr noundef %i.u)
  call void @uset_close_78(ptr noundef %i.x)
  %i.am = load i32, ptr %4, align 4, !tbaa !8
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.c, label %.critedge

.critedge75:                                      ; preds = %bb.c, %bb.b, %.preheader
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.critedge75
  %i.ao = call i32 @uset_getItemCount_78(ptr noundef nonnull %2) ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph89, label %.loopexit

.lr.ph89:                                         ; preds = %bb.j
  br i1 %i.l, label %.lr.ph85.us.preheader, label %.lr.ph89.split

.lr.ph85.us.preheader:                            ; preds = %.lr.ph89
  %smax97 = call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  br label %.lr.ph85.us

.lr.ph85.us:                                      ; preds = %.lr.ph85.us.preheader, %._crit_edge86.us
  %.06287.us = phi i32 [ %i.au, %._crit_edge86.us ], [ 0, %.lr.ph85.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.aq = call i32 @uset_getItem_78(ptr noundef nonnull %2, i32 noundef %.06287.us, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph85.us, %bb.k
  %.083.us = phi i32 [ 0, %.lr.ph85.us ], [ %i.at, %bb.k ] ; 2 uses
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !31
  %i.as = load i32, ptr %i.e, align 4, !tbaa !31
  call void @upvec_setValue_78(ptr noundef %1, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %.083.us, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %4)
  %i.at = add nuw nsw i32 %.083.us, 1             ; 2 uses
  %exitcond98.not = icmp eq i32 %i.at, %smax97
  br i1 %exitcond98.not, label %._crit_edge86.us, label %bb.k, !llvm.loop !33

._crit_edge86.us:                                 ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.au = add nuw nsw i32 %.06287.us, 1           ; 2 uses
  %exitcond99.not = icmp eq i32 %i.au, %i.ao
  br i1 %exitcond99.not, label %.loopexit, label %.lr.ph85.us, !llvm.loop !34

.lr.ph89.split:                                   ; preds = %.lr.ph89, %.lr.ph89.split
  %.06287 = phi i32 [ %i.aw, %.lr.ph89.split ], [ 0, %.lr.ph89 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.av = call i32 @uset_getItem_78(ptr noundef nonnull %2, i32 noundef %.06287, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.aw = add nuw nsw i32 %.06287, 1              ; 2 uses
  %exitcond96.not = icmp eq i32 %i.aw, %i.ao
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph89.split, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph89.split, %._crit_edge86.us, %bb.j, %.critedge75
  %i.ax = call ptr @upvec_compactToUTrie2WithRowIndexes_78(ptr noundef %1, ptr noundef nonnull %4)
  store ptr %i.ax, ptr %0, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = call ptr @upvec_cloneArray_78(ptr noundef %1, ptr noundef nonnull %i.ay, ptr noundef null, ptr noundef nonnull %4)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !36
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !37
  %i.bc = mul nsw i32 %i.bb, %i.k
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.bd, align 8, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.d, %bb.f, %.loopexit, %bb.a
  ret void
}

declare void @upvec_close_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI18UConverterSelectorXadL_Z16ucnvsel_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %ucnvsel_close_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %.not9.i = icmp eq i8 %i.c, 0
  br i1 %.not9.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  invoke void @uprv_free_78(ptr noundef %i.f)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  invoke void @uprv_free_78(ptr noundef %i.h)
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i8, ptr %i.i, align 8, !tbaa !38
  %.not10.i = icmp eq i8 %i.j, 0
  br i1 %.not10.i, label %.noexc2, label %bb.d

bb.d:                                             ; preds = %.noexc1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@ucnvsel_selectForString_78:bb.a
  %i.bc = add nuw nsw i32 %i.ba, %i.bb
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bd
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.056, i64 4
  %i.bg = shl nuw nsw i32 %i.y, 10
  %i.bh = add nsw i32 %i.bg, -56613888
  %i.bi = add nuw nsw i32 %i.bh, %i.ap            ; 3 uses
  %i.bj = load ptr, ptr %.pre73, align 8, !tbaa !55 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre73, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !60
  %.not65 = icmp slt i32 %i.bi, %i.bl
  br i1 %.not65, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre73, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !61
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bo = lshr i32 %i.bi, 11
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4160
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !59
  %i.bt = zext i16 %i.bs to i32
  %i.bu = lshr i32 %i.bi, 5
  %i.bv = and i32 %i.bu, 63
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !59
  %i.ca = zext i16 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 2
  %i.cc = and i32 %i.ap, 31
  %i.cd = add nuw nsw i32 %i.cb, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = phi i32 [ %i.bn, %bb.q ], [ %i.cd, %bb.r ]
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.cf
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.l
  %.157 = phi ptr [ %i.x, %bb.o ], [ %i.bf, %bb.s ], [ %i.x, %bb.l ]
  %.0.in = phi ptr [ %i.be, %bb.o ], [ %i.cg, %bb.s ], [ %i.am, %bb.l ]
  %.0 = load i16, ptr %.0.in, align 2, !tbaa !59
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !36  ; 2 uses
  %i.ci = zext i16 %.0 to i64                     ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci ; 5 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %_ZL14intersectMasksPjPKji.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.t
  br i1 %min.iters.check, label %.lr.ph.i.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %scevgep80 = getelementptr i8, ptr %i.ch, i64 %i.t
  %i.ck = shl nuw nsw i64 %i.ci, 2
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ck
  %bound0 = icmp ult ptr %i.l, %scevgep81
  %bound1 = icmp ult ptr %i.cj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader86, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.cr, %vector.body ], [ zeroinitializer, %vector.memcheck ]
  %vec.phi82 = phi <4 x i32> [ %i.cs, %vector.body ], [ zeroinitializer, %vector.memcheck ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !31, !alias.scope !62
  %wide.load83 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !31, !alias.scope !62
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load84 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !31, !alias.scope !65, !noalias !62
  %wide.load85 = load <4 x i32>, ptr %i.co, align 4, !tbaa !31, !alias.scope !65, !noalias !62
  %i.cp = and <4 x i32> %wide.load84, %wide.load  ; 2 uses
  %i.cq = and <4 x i32> %wide.load85, %wide.load83 ; 2 uses
  store <4 x i32> %i.cp, ptr %i.cn, align 4, !tbaa !31, !alias.scope !65, !noalias !62
  store <4 x i32> %i.cq, ptr %i.co, align 4, !tbaa !31, !alias.scope !65, !noalias !62
  %i.cr = or <4 x i32> %i.cp, %vec.phi            ; 2 uses
  %i.cs = or <4 x i32> %i.cq, %vec.phi82          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.cs, %i.cr
  %i.cu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %_ZL14intersectMasksPjPKji.exit, label %.lr.ph.i.preheader86

.lr.ph.i.preheader86:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.010.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %i.cu, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader86
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.ph
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !31
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.ph ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !31
  %i.cz = and i32 %i.cy, %i.cw                    ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !31
  %i.da = or i32 %i.cz, %.010.i.ph                ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader86
  %.lcssa89.unr = phi i32 [ poison, %.lr.ph.i.preheader86 ], [ %i.da, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader86 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.010.i.unr = phi i32 [ %.010.i.ph, %.lr.ph.i.preheader86 ], [ %i.da, %.lr.ph.i.prol ]
  %i.db = icmp eq i64 %indvars.iv.i.ph, %i.u
  br i1 %i.db, label %_ZL14intersectMasksPjPKji.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.010.i = phi i32 [ %i.dn, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !31
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %i.dg = and i32 %i.df, %i.dd                    ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !31
  %i.dh = or i32 %i.dg, %.010.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !31
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31
  %i.dm = and i32 %i.dl, %i.dj                    ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !31
  %i.dn = or i32 %i.dm, %i.dh                     ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZL14intersectMasksPjPKji.exit, label %.lr.ph.i, !llvm.loop !70

_ZL14intersectMasksPjPKji.exit:                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.cu, %middle.block ], [ %.lcssa89.unr, %.lr.ph.i.prol.loopexit ], [ %i.dn, %.lr.ph.i ]
  %.not70 = icmp eq i32 %.lcssa, 0
  br i1 %.not70, label %_ZL14intersectMasksPjPKji.exit.thread, label %bb.i

_ZL14intersectMasksPjPKji.exit.thread:            ; preds = %bb.t, %.split, %_ZL14intersectMasksPjPKji.exit, %bb.j, %bb.g
  %i.do = tail call fastcc noundef ptr @_ZL13selectForMaskPK18UConverterSelectorPjP10UErrorCode(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull %3)
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %_ZL14intersectMasksPjPKji.exit.thread, %bb.a, %bb.d
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ %i.do, %_ZL14intersectMasksPjPKji.exit.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL13selectForMaskPK18UConverterSelectorPjP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias dereferenceable_or_null(24) ptr @uprv_malloc_78(i64 noundef 24) #16
          to label %bb.b unwind label %bb.d       ; 10 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !8
  br label %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit36

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryI10EnumeratorED2Ev.exit

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 0, ptr %i.c, align 2, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i16 0, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !75
  %i.f = invoke noalias dereferenceable_or_null(56) ptr @uprv_malloc_78(i64 noundef 56) #16
          to label %bb.f unwind label %bb.h       ; 6 uses

bb.f:                                             ; preds = %bb.e
  %.not61 = icmp eq ptr %i.f, null
  br i1 %.not61, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %2, align 4, !tbaa !8
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) @_ZL16defaultEncodings, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28   ; 3 uses
  %i.j = add i32 %i.i, 31
  %i.k = sdiv i32 %i.j, 32                        ; 3 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph17.preheader.i, label %_ZL9countOnesPji.exit.thread

.lr.ph17.preheader.i:                             ; preds = %bb.i
  %wide.trip.count.i = zext i32 %i.k to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp ult i32 %i.i, 33
  br i1 %i.m, label %.lr.ph17.i.epil.preheader, label %.lr.ph17.preheader.i.new

.lr.ph17.preheader.i.new:                         ; preds = %.lr.ph17.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %._crit_edge.i.1, %.lr.ph17.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.preheader.i.new ], [ %indvars.iv.next.i.1, %._crit_edge.i.1 ] ; 3 uses
  %.0915.i = phi i16 [ 0, %.lr.ph17.preheader.i.new ], [ %.1.lcssa.i.1, %._crit_edge.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph17.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.1 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 2 uses
  %.not11.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph17.i, %.lr.ph.i
  %.013.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.o, %.lr.ph17.i ] ; 2 uses
  %.112.i = phi i16 [ %i.r, %.lr.ph.i ], [ %.0915.i, %.lr.ph17.i ]
  %i.p = add i32 %.013.i, -1
  %i.q = and i32 %i.p, %.013.i                    ; 2 uses
  %i.r = add i16 %.112.i, 1                       ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !76

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph17.i
  %.1.lcssa.i = phi i16 [ %.0915.i, %.lr.ph17.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31   ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.u, 0
  br i1 %.not11.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.013.i.1 = phi i32 [ %i.w, %.lr.ph.i.1 ], [ %i.u, %._crit_edge.i ] ; 2 uses
  %.112.i.1 = phi i16 [ %i.x, %.lr.ph.i.1 ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.v = add i32 %.013.i.1, -1
  %i.w = and i32 %i.v, %.013.i.1                  ; 2 uses
  %i.x = add i16 %.112.i.1, 1                     ; 2 uses
  %.not.i.1 = icmp eq i32 %i.w, 0
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !76

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %.1.lcssa.i.1 = phi i16 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.x, %.lr.ph.i.1 ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL9countOnesPji.exit.unr-lcssa, label %.lr.ph17.i, !llvm.loop !77

_ZL9countOnesPji.exit.unr-lcssa:                  ; preds = %._crit_edge.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL9countOnesPji.exit, label %.lr.ph17.i.epil.preheader

.lr.ph17.i.epil.preheader:                        ; preds = %_ZL9countOnesPji.exit.unr-lcssa, %.lr.ph17.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph17.preheader.i ], [ %indvars.iv.next.i.1, %_ZL9countOnesPji.exit.unr-lcssa ]
  %.0915.i.epil.init = phi i16 [ 0, %.lr.ph17.preheader.i ], [ %.1.lcssa.i.1, %_ZL9countOnesPji.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod73 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31   ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.z, 0
  br i1 %.not11.i.epil, label %_ZL9countOnesPji.exit, label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph17.i.epil.preheader, %.lr.ph.i.epil
  %.013.i.epil = phi i32 [ %i.ab, %.lr.ph.i.epil ], [ %i.z, %.lr.ph17.i.epil.preheader ] ; 2 uses
  %.112.i.epil = phi i16 [ %i.ac, %.lr.ph.i.epil ], [ %.0915.i.epil.init, %.lr.ph17.i.epil.preheader ]
  %i.aa = add i32 %.013.i.epil, -1
  %i.ab = and i32 %i.aa, %.013.i.epil             ; 2 uses
  %i.ac = add i16 %.112.i.epil, 1                 ; 2 uses
  %.not.i.epil = icmp eq i32 %i.ab, 0
  br i1 %.not.i.epil, label %_ZL9countOnesPji.exit, label %.lr.ph.i.epil, !llvm.loop !76

_ZL9countOnesPji.exit:                            ; preds = %.lr.ph17.i.epil.preheader, %.lr.ph.i.epil, %_ZL9countOnesPji.exit.unr-lcssa
  %.1.lcssa.i.lcssa = phi i16 [ %.1.lcssa.i.1, %_ZL9countOnesPji.exit.unr-lcssa ], [ %.0915.i.epil.init, %.lr.ph17.i.epil.preheader ], [ %i.ac, %.lr.ph.i.epil ] ; 2 uses
  %i.ad = icmp sgt i16 %.1.lcssa.i.lcssa, 0
  br i1 %i.ad, label %bb.j, label %_ZL9countOnesPji.exit.thread

bb.j:                                             ; preds = %_ZL9countOnesPji.exit
  %i.ae = shl nuw i16 %.1.lcssa.i.lcssa, 1
  %i.af = zext i16 %i.ae to i64
  %i.ag = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.af) #16
          to label %bb.k unwind label %bb.m       ; 3 uses

bb.k:                                             ; preds = %bb.j
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !71
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !28
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4, !tbaa !8
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @uprv_free_78(ptr noundef nonnull %i.f)
          to label %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #18
  unreachable

bb.o:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.02366 = phi i16 [ 0, %.lr.ph ], [ %.1.lcssa, %.critedge ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.064 = phi i32 [ %i.an, %bb.o ], [ %i.av, %bb.s ] ; 2 uses
  %.163 = phi i16 [ %.02366, %bb.o ], [ %i.ax, %bb.s ] ; 4 uses
  %.02562 = phi i32 [ 0, %bb.o ], [ %i.aw, %bb.s ]
  %i.ao = sext i16 %.163 to i32
  %i.ap = icmp sgt i32 %i.ai, %i.ao
  br i1 %i.ap, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.aq = and i32 %.064, 1
  %.not35 = icmp eq i32 %i.aq, 0
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = load i16, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %i.as = add i16 %i.ar, 1
  store i16 %i.as, ptr %i.d, align 8, !tbaa !74
  %i.at = sext i16 %i.ar to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.at
  store i16 %.163, ptr %i.au, align 2, !tbaa !59
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = lshr i32 %.064, 1
  %i.aw = add nuw nsw i32 %.02562, 1              ; 2 uses
  %i.ax = add i16 %.163, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, 32
  br i1 %exitcond.not, label %.critedge, label %bb.p, !llvm.loop !78

.critedge:                                        ; preds = %bb.s, %bb.p
  %.1.lcssa = phi i16 [ %i.ax, %bb.s ], [ %.163, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond67.not, label %_ZL9countOnesPji.exit.thread, label %bb.o, !llvm.loop !79

_ZL9countOnesPji.exit.thread:                     ; preds = %.critedge, %bb.i, %_ZL9countOnesPji.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.a, ptr %i.ay, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %_ZL9countOnesPji.exit.thread, %bb.g
  %.sroa.044.0 = phi ptr [ %i.a, %bb.l ], [ null, %_ZL9countOnesPji.exit.thread ], [ %i.a, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.l ], [ null, %_ZL9countOnesPji.exit.thread ], [ null, %bb.g ]
  %.131 = phi ptr [ null, %bb.l ], [ %i.f, %_ZL9countOnesPji.exit.thread ], [ null, %bb.g ]
  invoke void @uprv_free_78(ptr noundef %.sroa.0.0)
          to label %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit36 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #18
  unreachable

_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit: ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.aj, %bb.m ]
  invoke void @uprv_free_78(ptr noundef nonnull %i.a)
          to label %_ZN6icu_7811LocalMemoryI10EnumeratorED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #18
  unreachable

_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit36: ; preds = %bb.t, %bb.c
  %.sroa.044.1 = phi ptr [ null, %bb.c ], [ %.sroa.044.0, %bb.t ]
  %.2 = phi ptr [ null, %bb.c ], [ %.131, %bb.t ]
  invoke void @uprv_free_78(ptr noundef %.sroa.044.1)
          to label %_ZN6icu_7811LocalMemoryI10EnumeratorED2Ev.exit37 unwind label %bb.w

bb.w:                                             ; preds = %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit36
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #18
  unreachable

_ZN6icu_7811LocalMemoryI10EnumeratorED2Ev.exit37: ; preds = %_ZN6icu_7811LocalMemoryI12UEnumerationED2Ev.exit36
  invoke void @uprv_free_78(ptr noundef nonnull %1)
          to label %_ZN6icu_7811LocalMemoryIjED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7811LocalMemoryI10EnumeratorED2Ev.exit37
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
end_hunk_1
