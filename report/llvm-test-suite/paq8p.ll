inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z6squashi:bb.a
  %i.p = ashr i32 %i.o, 7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ 4095, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7StretchD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !27
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = shl i32 %i.a, 1
  %i.d = sub i32 %i.b, %i.c                       ; 3 uses
  store i32 %i.d, ptr @programChecker, align 8, !tbaa !15
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5ArrayIsLi0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIsLi0EED2Ev.exit

_ZN5ArrayIsLi0EED2Ev.exit:                        ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.h) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7StretchC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4096, ptr %i.a, align 4, !tbaa !31
  store i32 4096, ptr %0, align 8, !tbaa !27
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, 8192                   ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #40 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5ArrayIsLi0EEC2Ei.exit

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIsLi0EEC2Ei.exit:                        ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !32
  br label %_Z6squashi.exit

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8190
  store i16 2047, ptr %i.i, align 2, !tbaa !33
  ret void

_Z6squashi.exit:                                  ; preds = %_ZN5ArrayIsLi0EEC2Ei.exit, %._crit_edge
  %.01016 = phi i32 [ 0, %_ZN5ArrayIsLi0EEC2Ei.exit ], [ %.pre-phi, %._crit_edge ] ; 3 uses
  %.01115 = phi i32 [ -2047, %_ZN5ArrayIsLi0EEC2Ei.exit ], [ %i.ag, %._crit_edge ] ; 4 uses
  %i.j = and i32 %.01115, 127                     ; 2 uses
  %i.k = ashr i32 %.01115, 7
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = sub nuw nsw i32 128, %i.j
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.m, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = mul nsw i32 %i.s, %i.j
  %i.u = add i32 %i.q, 64
  %i.v = add i32 %i.u, %i.t
  %i.w = ashr i32 %i.v, 7                         ; 4 uses
  %.not13 = icmp sgt i32 %.01016, %i.w
  br i1 %.not13, label %_Z6squashi.exit.._crit_edge_crit_edge, label %iter.check

_Z6squashi.exit.._crit_edge_crit_edge:            ; preds = %_Z6squashi.exit
  %.pre = add nsw i32 %i.w, 1
  br label %._crit_edge

iter.check:                                       ; preds = %_Z6squashi.exit
  %i.x = trunc i32 %.01115 to i16                 ; 3 uses
  %i.y = sext i32 %.01016 to i64                  ; 5 uses
  %i.z = add nsw i32 %i.w, 1                      ; 4 uses
  %wide.trip.count = sext i32 %i.z to i64
  %narrow = add nsw i32 %i.w, 1
  %narrow30 = sub nsw i32 %narrow, %.01016        ; 3 uses
  %i.aa = zext nneg i32 %narrow30 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %narrow30, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i32 %narrow30, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 2147483632              ; 4 uses
  %i.ab = add nsw i64 %n.vec, %i.y
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.ac, align 2, !tbaa !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.aa, 2147483644            ; 3 uses
  %i.ae = add nsw i64 %n.vec23, %i.y
  %broadcast.splatinsert24 = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat25 = shufflevector <4 x i16> %broadcast.splatinsert24, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep31 = getelementptr [2 x i8], ptr %i.f, i64 %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %gep32 = getelementptr [2 x i8], ptr %invariant.gep31, i64 %index26
  store <4 x i16> %broadcast.splat25, ptr %gep32, align 2, !tbaa !33
  %index.next27 = add nuw i64 %index26, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %n.vec23, %i.aa
  br i1 %cmp.n28, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_Z6squashi.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %_Z6squashi.exit.._crit_edge_crit_edge ], [ %i.z, %middle.block ], [ %i.z, %vec.epilog.middle.block ], [ %i.z, %vec.epilog.scalar.ph ]
  %i.ag = add nsw i32 %.01115, 1                  ; 2 uses
  %exitcond18.not = icmp eq i32 %i.ag, 2048
  br i1 %exitcond18.not, label %bb.d, label %_Z6squashi.exit, !llvm.loop !40

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.f, i64 %indvars.iv
  store i16 %i.x, ptr %i.ah, align 2, !tbaa !33
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z11dot_productPsS_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw nsw i32 %2, 7
  %i.c = and i32 %i.b, 2147483640
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 2) ; 2 uses
  %i.f = lshr exact i64 %i.e, 1
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.e, 14
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, 2147483640               ; 3 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.i = shl nuw i64 %index, 1                    ; 3 uses
  %i.j = or disjoint i64 %i.i, 8                  ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.j
  %wide.vec = load <8 x i16>, ptr %i.k, align 2, !tbaa !33 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec18 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec19 = load <8 x i16>, ptr %i.l, align 2, !tbaa !33 ; 2 uses
  %strided.vec20 = shufflevector <8 x i16> %wide.vec19, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec21 = shufflevector <8 x i16> %wide.vec19, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.m = sext <4 x i16> %strided.vec to <4 x i32>
  %i.n = sext <4 x i16> %strided.vec20 to <4 x i32>
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.i
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.j
  %wide.vec22 = load <8 x i16>, ptr %i.o, align 2, !tbaa !33 ; 2 uses
  %strided.vec23 = shufflevector <8 x i16> %wide.vec22, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec24 = shufflevector <8 x i16> %wide.vec22, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec25 = load <8 x i16>, ptr %i.p, align 2, !tbaa !33 ; 2 uses
  %strided.vec26 = shufflevector <8 x i16> %wide.vec25, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec27 = shufflevector <8 x i16> %wide.vec25, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = sext <4 x i16> %strided.vec23 to <4 x i32>
  %i.r = sext <4 x i16> %strided.vec26 to <4 x i32>
  %i.s = mul nsw <4 x i32> %i.q, %i.m
  %i.t = mul nsw <4 x i32> %i.r, %i.n
  %i.u = sext <4 x i16> %strided.vec18 to <4 x i32>
  %i.v = sext <4 x i16> %strided.vec21 to <4 x i32>
  %i.w = sext <4 x i16> %strided.vec24 to <4 x i32>
  %i.x = sext <4 x i16> %strided.vec27 to <4 x i32>
  %i.y = mul nsw <4 x i32> %i.w, %i.u
  %i.z = mul nsw <4 x i32> %i.x, %i.v
  %i.aa = add nsw <4 x i32> %i.y, %i.s
  %i.ab = add nsw <4 x i32> %i.z, %i.t
  %i.ac = ashr <4 x i32> %i.aa, splat (i32 8)
  %i.ad = ashr <4 x i32> %i.ab, splat (i32 8)
  %i.ae = add <4 x i32> %i.ac, %vec.phi           ; 2 uses
  %i.af = add <4 x i32> %i.ad, %vec.phi17         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  %.01314.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.ah, %middle.block ], [ %i.az, %.lr.ph ]
  ret i32 %.013.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader28 ] ; 4 uses
  %.01314 = phi i32 [ %i.az, %.lr.ph ], [ %.01314.ph, %.lr.ph.preheader28 ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !33
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !33
  %i.an = sext i16 %i.am to i32
  %i.ao = mul nsw i32 %i.an, %i.ak
  %i.ap = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !33
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap
  %i.au = load i16, ptr %i.at, align 2, !tbaa !33
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.as
  %i.ax = add nsw i32 %i.aw, %i.ao
  %i.ay = ashr i32 %i.ax, 8
  %i.az = add nsw i32 %i.ay, %.01314              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z5trainPsS_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw i32 %2, 7                        ; 2 uses
  %i.c = and i32 %i.b, -8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %min.iters.check = icmp slt i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.d
  %scevgep16 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep16
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !33, !alias.scope !44, !noalias !47
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load17 = load <8 x i16>, ptr %i.g, align 2, !tbaa !33, !alias.scope !47
  %i.h = sext <8 x i16> %wide.load17 to <8 x i32>
  %i.i = mul nsw <8 x i32> %broadcast.splat, %i.h
  %i.j = ashr <8 x i32> %i.i, splat (i32 15)
  %i.k = add nsw <8 x i32> %i.j, splat (i32 1)
  %i.l = ashr <8 x i32> %i.k, splat (i32 1)
  %i.m = add nsw <8 x i32> %i.l, %i.f
  %i.n = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.m, <8 x i32> splat (i32 -32768))
  %i.o = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.n, <8 x i32> splat (i32 32767))
  %i.p = trunc nsw <8 x i32> %i.o to <8 x i16>
  store <8 x i16> %i.p, ptr %i.e, align 2, !tbaa !33, !alias.scope !44, !noalias !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !33
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !33
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %3, %i.w
  %i.y = ashr i32 %i.x, 15
  %i.z = add nsw i32 %i.y, 1
  %i.aa = ashr i32 %i.z, 1
  %i.ab = add nsw i32 %i.aa, %i.t
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 -32768)
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32767)
  %i.ac = trunc nsw i32 %spec.store.select1 to i16
  store i16 %i.ac, ptr %i.r, align 2, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5MixerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(136) dereferenceable(136) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5MixerD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.b) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56
  %i.f = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.g = shl i32 %i.e, 2
  %i.h = sub i32 %i.f, %i.g                       ; 3 uses
  store i32 %i.h, ptr @programChecker, align 8, !tbaa !15
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.j = icmp sgt i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZN5ArrayIiLi0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIiLi0EED2Ev.exit

_ZN5ArrayIiLi0EED2Ev.exit:                        ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.l) #38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56
  %i.o = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.p = shl i32 %i.n, 2
  %i.q = sub i32 %i.o, %i.p                       ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5Mixer1pEv:bb.a
  %.not8 = icmp eq ptr %i.s, null
  br i1 %.not8, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZN5Mixer6updateEv.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.w = load i32, ptr @y, align 4, !tbaa !4
  %i.x = shl i32 %i.w, 12                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ai = load i32, ptr %i.ah, align 8
  %.fr8.i = freeze i32 %i.ai                      ; 2 uses
  %i.aj = icmp sgt i32 %.fr8.i, 0
  %i.ak = add i32 %.fr8.i, 7                      ; 2 uses
  %i.al = and i32 %i.ak, -8
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 4 uses
  br i1 %i.aj, label %.lr.ph.split.us.preheader.i, label %_ZN5Mixer6updateEv.exit

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  %i.am = shl nuw nsw i64 %wide.trip.count.i.i, 1 ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ag, i64 %i.am
  %scevgep63 = getelementptr i8, ptr %i.ab, i64 %i.am
  %min.iters.check65 = icmp slt i32 %i.ak, 8
  %n.vec68 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n74 = icmp eq i64 %n.vec68, %wide.trip.count.i.i
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_Z5trainPsS_ii.exit.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i, %_Z5trainPsS_ii.exit.us.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %.not.us.i = icmp eq i32 %i.x, %i.ao
  br i1 %.not.us.i, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.lr.ph.split.us.i
  %i.ap = sub nsw i32 %i.x, %i.ao
  %i.aq = mul nsw i32 %i.ap, 7                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = mul nsw i32 %i.as, %i.ae
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.au ; 3 uses
  br i1 %min.iters.check65, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.us.i
  %i.aw = shl nsw i64 %i.au, 1
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.aw
  %bound0 = icmp ult ptr %i.av, %scevgep63
  %bound1 = icmp ult ptr %i.ab, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph66
  %index70 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body69 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index70 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !33, !alias.scope !174, !noalias !177
  %i.ay = sext <8 x i16> %wide.load to <8 x i32>
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index70
  %wide.load71 = load <8 x i16>, ptr %i.az, align 2, !tbaa !33, !alias.scope !177
  %i.ba = sext <8 x i16> %wide.load71 to <8 x i32>
  %i.bb = mul nsw <8 x i32> %broadcast.splat, %i.ba
  %i.bc = ashr <8 x i32> %i.bb, splat (i32 15)
  %i.bd = add nsw <8 x i32> %i.bc, splat (i32 1)
  %i.be = ashr <8 x i32> %i.bd, splat (i32 1)
  %i.bf = add nsw <8 x i32> %i.be, %i.ay
  %i.bg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 -32768))
  %i.bh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bg, <8 x i32> splat (i32 32767))
  %i.bi = trunc nsw <8 x i32> %i.bh to <8 x i16>
  store <8 x i16> %i.bi, ptr %i.ax, align 2, !tbaa !33, !alias.scope !174, !noalias !177
  %index.next72 = add nuw i64 %index70, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next72, %n.vec68
  br i1 %i.bj, label %middle.block73, label %vector.body69, !llvm.loop !179

middle.block73:                                   ; preds = %vector.body69
  br i1 %cmp.n74, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.us.i, %middle.block73
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.us.i ], [ %n.vec68, %middle.block73 ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.i.us.i ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !33
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.us.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !33
  %i.bp = sext i16 %i.bo to i32
  %i.bq = mul nsw i32 %i.aq, %i.bp
  %i.br = ashr i32 %i.bq, 15
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = ashr i32 %i.bs, 1
  %i.bu = add nsw i32 %i.bt, %i.bm
  %spec.store.select.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 -32768)
  %spec.store.select1.i.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.us.i, i32 32767)
  %i.bv = trunc nsw i32 %spec.store.select1.i.us.i to i16
  store i16 %i.bv, ptr %i.bk, align 2, !tbaa !33
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !180

_Z5trainPsS_ii.exit.us.i:                         ; preds = %.lr.ph.i.us.i, %middle.block73, %.lr.ph.split.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Mixer6updateEv.exit, label %.lr.ph.split.us.i, !llvm.loop !173

_ZN5Mixer6updateEv.exit:                          ; preds = %_Z5trainPsS_ii.exit.us.i, %bb.i, %.lr.ph.i
  store i32 0, ptr %i.t, align 8, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 92 ; 4 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 3 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %.tr, i64 88 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !67
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %_ZN5Mixer6updateEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !64 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !66
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !64
  br label %bb.j

._crit_edge32.loopexit:                           ; preds = %_Z6squashi.exit
  %.pre = load i32, ptr %i.bw, align 4, !tbaa !68
  %.pre39 = load i32, ptr %i.t, align 8, !tbaa !67
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %_ZN5Mixer6updateEv.exit
  %i.cl = phi i32 [ %.pre39, %._crit_edge32.loopexit ], [ 0, %_ZN5Mixer6updateEv.exit ] ; 2 uses
  %i.cm = phi i32 [ %.pre, %._crit_edge32.loopexit ], [ 0, %_ZN5Mixer6updateEv.exit ]
  %i.cn = add nsw i32 %i.cl, 1
  store i32 %i.cn, ptr %i.t, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66
  %i.cq = sext i32 %i.cl to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cq
  store i32 %i.cm, ptr %i.cr, align 4, !tbaa !4
  %i.cs = load i32, ptr %i.bw, align 4, !tbaa !68
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.bw, align 4, !tbaa !68
  br label %tailrecurse

bb.j:                                             ; preds = %.lr.ph31, %_Z6squashi.exit
  %indvars.iv36 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next37, %_Z6squashi.exit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = load i32, ptr %.tr, align 8, !tbaa !60
  %i.cx = mul nsw i32 %i.cw, %i.cv
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.cy ; 4 uses
  %i.da = load i32, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.preheader.i, label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dc = add nuw nsw i32 %i.da, 7
  %i.dd = and i32 %i.dc, 2147483640
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 2) ; 2 uses
  %i.dg = lshr exact i64 %i.df, 1
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.df, 14
  br i1 %min.iters.check, label %.lr.ph.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dh, 2147483640              ; 3 uses
  %i.di = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.dj = shl nuw i64 %index, 1                   ; 3 uses
  %i.dk = or disjoint i64 %i.dj, 8                ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dj
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dk
  %wide.vec = load <8 x i16>, ptr %i.dl, align 2, !tbaa !33 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec51 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec52 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !33 ; 2 uses
  %strided.vec53 = shufflevector <8 x i16> %wide.vec52, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec54 = shufflevector <8 x i16> %wide.vec52, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dn = sext <4 x i16> %strided.vec to <4 x i32>
  %i.do = sext <4 x i16> %strided.vec53 to <4 x i32>
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dj
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dk
  %wide.vec55 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !33 ; 2 uses
  %strided.vec56 = shufflevector <8 x i16> %wide.vec55, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec57 = shufflevector <8 x i16> %wide.vec55, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec58 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !33 ; 2 uses
  %strided.vec59 = shufflevector <8 x i16> %wide.vec58, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec60 = shufflevector <8 x i16> %wide.vec58, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dr = sext <4 x i16> %strided.vec56 to <4 x i32>
  %i.ds = sext <4 x i16> %strided.vec59 to <4 x i32>
  %i.dt = mul nsw <4 x i32> %i.dr, %i.dn
  %i.du = mul nsw <4 x i32> %i.ds, %i.do
  %i.dv = sext <4 x i16> %strided.vec51 to <4 x i32>
  %i.dw = sext <4 x i16> %strided.vec54 to <4 x i32>
  %i.dx = sext <4 x i16> %strided.vec57 to <4 x i32>
  %i.dy = sext <4 x i16> %strided.vec60 to <4 x i32>
  %i.dz = mul nsw <4 x i32> %i.dx, %i.dv
  %i.ea = mul nsw <4 x i32> %i.dy, %i.dw
  %i.eb = add nsw <4 x i32> %i.dz, %i.dt
  %i.ec = add nsw <4 x i32> %i.ea, %i.du
  %i.ed = ashr <4 x i32> %i.eb, splat (i32 8)
  %i.ee = ashr <4 x i32> %i.ec, splat (i32 8)
  %i.ef = add <4 x i32> %i.ed, %vec.phi           ; 2 uses
  %i.eg = add <4 x i32> %i.ee, %vec.phi50         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eg, %i.ef
  %i.ei = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_Z11dot_productPsS_i.exit, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i10.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.di, %middle.block ]
  %.01314.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ei, %middle.block ]
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %.lr.ph.i9 ], [ %indvars.iv.i10.ph, %.lr.ph.i9.preheader ] ; 4 uses
  %.01314.i = phi i32 [ %i.fa, %.lr.ph.i9 ], [ %.01314.i.ph, %.lr.ph.i9.preheader ]
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.i10
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !33
  %i.el = sext i16 %i.ek to i32
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.i10
  %i.en = load i16, ptr %i.em, align 2, !tbaa !33
  %i.eo = sext i16 %i.en to i32
  %i.ep = mul nsw i32 %i.eo, %i.el
  %i.eq = or disjoint i64 %indvars.iv.i10, 1      ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !33
  %i.et = sext i16 %i.es to i32
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.eq
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !33
  %i.ew = sext i16 %i.ev to i32
  %i.ex = mul nsw i32 %i.ew, %i.et
  %i.ey = add nsw i32 %i.ex, %i.ep
  %i.ez = ashr i32 %i.ey, 8
  %i.fa = add nsw i32 %i.ez, %.01314.i            ; 2 uses
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 2 ; 2 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next.i11, %i.de
  br i1 %i.fb, label %.lr.ph.i9, label %_Z11dot_productPsS_i.exit, !llvm.loop !182

_Z11dot_productPsS_i.exit:                        ; preds = %.lr.ph.i9, %middle.block
  %.lcssa49 = phi i32 [ %i.ei, %middle.block ], [ %i.fa, %.lr.ph.i9 ]
  %i.fc = ashr i32 %.lcssa49, 5                   ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 2047
  br i1 %i.fd, label %_Z6squashi.exit, label %bb.k

bb.k:                                             ; preds = %_Z11dot_productPsS_i.exit
  %i.fe = icmp slt i32 %i.fc, -2047
  br i1 %i.fe, label %_Z6squashi.exit, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.ff = phi i32 [ %i.fc, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.fg = and i32 %i.ff, 127                      ; 2 uses
  %i.fh = ashr i32 %i.ff, 7
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.fi ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 64
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = sub nuw nsw i32 128, %i.fg
  %i.fn = mul nsw i32 %i.fm, %i.fl
  %i.fo = getelementptr i8, ptr %i.fj, i64 68
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = mul nsw i32 %i.fp, %i.fg
  %i.fr = add i32 %i.fn, 64
  %i.fs = add i32 %i.fr, %i.fq
  %i.ft = ashr i32 %i.fs, 7
  br label %_Z6squashi.exit

_Z6squashi.exit:                                  ; preds = %_Z11dot_productPsS_i.exit, %bb.k, %.thread
  %.0.i = phi i32 [ %i.ft, %.thread ], [ 4095, %_Z11dot_productPsS_i.exit ], [ 0, %bb.k ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv36
  store i32 %.0.i, ptr %i.fu, align 4, !tbaa !4
  %i.fv = sext i32 %.0.i to i64
  %i.fw = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !33
  %i.fy = load i32, ptr %i.bx, align 8, !tbaa !69 ; 2 uses
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.bx, align 8, !tbaa !69
  %i.ga = sext i32 %i.fy to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.ga
  store i16 %i.fx, ptr %i.gb, align 2, !tbaa !33
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.gc = load i32, ptr %i.by, align 8, !tbaa !67
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next37, %i.gd
  br i1 %i.ge, label %bb.j, label %._crit_edge32.loopexit, !llvm.loop !183

bb.l:                                             ; preds = %bb.h
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !64 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !64 ; 4 uses
  %i.gj = icmp sgt i32 %.lcssa24, 0
  br i1 %i.gj, label %.lr.ph.preheader.i13, label %.thread23

.lr.ph.preheader.i13:                             ; preds = %bb.l
  %i.gk = zext nneg i32 %.lcssa24 to i64          ; 2 uses
  %i.gl = add nsw i64 %i.gk, -1
  %i.gm = lshr i64 %i.gl, 1
  %i.gn = add nuw i64 %i.gm, 1                    ; 2 uses
  %min.iters.check77 = icmp ult i32 %.lcssa24, 15
  br i1 %min.iters.check77, label %.lr.ph.i14.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.preheader.i13
  %n.vec80 = and i64 %i.gn, -8                    ; 3 uses
  %i.go = shl i64 %n.vec80, 1
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next97, %vector.body81 ] ; 2 uses
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.hl, %vector.body81 ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.hm, %vector.body81 ]
  %i.gp = shl nuw i64 %index82, 1                 ; 3 uses
  %i.gq = or disjoint i64 %i.gp, 8                ; 2 uses
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.gp
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.gq
  %wide.vec85 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !33 ; 2 uses
  %strided.vec86 = shufflevector <8 x i16> %wide.vec85, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec87 = shufflevector <8 x i16> %wide.vec85, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec88 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !33 ; 2 uses
  %strided.vec89 = shufflevector <8 x i16> %wide.vec88, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec90 = shufflevector <8 x i16> %wide.vec88, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gt = sext <4 x i16> %strided.vec86 to <4 x i32>
  %i.gu = sext <4 x i16> %strided.vec89 to <4 x i32>
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gp
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gq
  %wide.vec91 = load <8 x i16>, ptr %i.gv, align 2, !tbaa !33 ; 2 uses
  %strided.vec92 = shufflevector <8 x i16> %wide.vec91, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec93 = shufflevector <8 x i16> %wide.vec91, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec94 = load <8 x i16>, ptr %i.gw, align 2, !tbaa !33 ; 2 uses
  %strided.vec95 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec96 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gx = sext <4 x i16> %strided.vec92 to <4 x i32>
  %i.gy = sext <4 x i16> %strided.vec95 to <4 x i32>
  %i.gz = mul nsw <4 x i32> %i.gx, %i.gt
  %i.ha = mul nsw <4 x i32> %i.gy, %i.gu
  %i.hb = sext <4 x i16> %strided.vec87 to <4 x i32>
  %i.hc = sext <4 x i16> %strided.vec90 to <4 x i32>
  %i.hd = sext <4 x i16> %strided.vec93 to <4 x i32>
  %i.he = sext <4 x i16> %strided.vec96 to <4 x i32>
  %i.hf = mul nsw <4 x i32> %i.hd, %i.hb
  %i.hg = mul nsw <4 x i32> %i.he, %i.hc
  %i.hh = add nsw <4 x i32> %i.hf, %i.gz
  %i.hi = add nsw <4 x i32> %i.hg, %i.ha
  %i.hj = ashr <4 x i32> %i.hh, splat (i32 8)
  %i.hk = ashr <4 x i32> %i.hi, splat (i32 8)
  %i.hl = add <4 x i32> %i.hj, %vec.phi83         ; 2 uses
  %i.hm = add <4 x i32> %i.hk, %vec.phi84         ; 2 uses
  %index.next97 = add nuw i64 %index82, 8         ; 2 uses
  %i.hn = icmp eq i64 %index.next97, %n.vec80
  br i1 %i.hn, label %middle.block98, label %vector.body81, !llvm.loop !184

middle.block98:                                   ; preds = %vector.body81
  %bin.rdx99 = add <4 x i32> %i.hm, %i.hl
  %i.ho = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx99) ; 2 uses
  %cmp.n100 = icmp eq i64 %i.gn, %n.vec80
  br i1 %cmp.n100, label %_Z11dot_productPsS_i.exit18, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %.lr.ph.preheader.i13, %middle.block98
  %indvars.iv.i15.ph = phi i64 [ 0, %.lr.ph.preheader.i13 ], [ %i.go, %middle.block98 ]
  %.01314.i16.ph = phi i32 [ 0, %.lr.ph.preheader.i13 ], [ %i.ho, %middle.block98 ]
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %.lr.ph.i14 ], [ %indvars.iv.i15.ph, %.lr.ph.i14.preheader ] ; 4 uses
  %.01314.i16 = phi i32 [ %i.ig, %.lr.ph.i14 ], [ %.01314.i16.ph, %.lr.ph.i14.preheader ]
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %indvars.iv.i15
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !33
  %i.hr = sext i16 %i.hq to i32
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %indvars.iv.i15
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !33
  %i.hu = sext i16 %i.ht to i32
  %i.hv = mul nsw i32 %i.hu, %i.hr
  %i.hw = or disjoint i64 %indvars.iv.i15, 1      ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !33
  %i.hz = sext i16 %i.hy to i32
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hw
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !33
  %i.ic = sext i16 %i.ib to i32
  %i.id = mul nsw i32 %i.ic, %i.hz
  %i.ie = add nsw i32 %i.id, %i.hv
  %i.if = ashr i32 %i.ie, 8
  %i.ig = add nsw i32 %i.if, %.01314.i16          ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 2 ; 2 uses
  %i.ih = icmp samesign ult i64 %indvars.iv.next.i17, %i.gk
  br i1 %i.ih, label %.lr.ph.i14, label %_Z11dot_productPsS_i.exit18, !llvm.loop !185

_Z11dot_productPsS_i.exit18:                      ; preds = %.lr.ph.i14, %middle.block98
  %.lcssa = phi i32 [ %i.ho, %middle.block98 ], [ %i.ig, %.lr.ph.i14 ]
  %i.ii = ashr i32 %.lcssa, 8                     ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 2047
  br i1 %i.ij, label %_Z6squashi.exit20, label %bb.m

bb.m:                                             ; preds = %_Z11dot_productPsS_i.exit18
  %i.ik = icmp slt i32 %i.ii, -2047
  br i1 %i.ik, label %_Z6squashi.exit20, label %.thread23

.thread23:                                        ; preds = %bb.l, %bb.m
  %i.il = phi i32 [ %i.ii, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %i.im = and i32 %i.il, 127                      ; 2 uses
  %i.in = ashr i32 %i.il, 7
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.io ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 64
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = sub nuw nsw i32 128, %i.im
  %i.it = mul nsw i32 %i.is, %i.ir
  %i.iu = getelementptr i8, ptr %i.ip, i64 68
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = mul nsw i32 %i.iv, %i.im
  %i.ix = add i32 %i.it, 64
  %i.iy = add i32 %i.ix, %i.iw
  %i.iz = ashr i32 %i.iy, 7
  br label %_Z6squashi.exit20

_Z6squashi.exit20:                                ; preds = %_Z11dot_productPsS_i.exit18, %bb.m, %.thread23
  %.0.i19 = phi i32 [ %i.iz, %.thread23 ], [ 4095, %_Z11dot_productPsS_i.exit18 ], [ 0, %bb.m ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.tr, i64 120
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !66
  store i32 %.0.i19, ptr %i.jb, align 4, !tbaa !4
  ret i32 %.0.i19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN3APM1pEiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 4 uses
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = icmp slt i32 %i.h, %3
  %i.j = add i32 %i.g, 1
  %i.k = and i32 %i.g, -1024
  %i.l = or i32 %i.k, %3
  %.0.i = select i1 %i.i, i32 %i.j, i32 %i.l
  %i.m = lshr i32 %i.g, 10
  %i.n = load i32, ptr @y, align 4, !tbaa !4
  %i.o = shl i32 %i.n, 22
  %i.p = sub nsw i32 %i.o, %i.m
  %i.q = ashr i32 %i.p, 3
  %i.r = zext nneg i32 %i.h to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZL2dt, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = mul nsw i32 %i.q, %i.t
  %i.v = and i32 %i.u, -1024
  %i.w = add i32 %i.v, %.0.i
  store i32 %i.w, ptr %i.f, align 4, !tbaa !4
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !33
  %i.ab = sext i16 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, 23
  %i.ad = add nsw i32 %i.ac, 47104                ; 2 uses
  %i.ae = and i32 %i.ad, 4095                     ; 3 uses
  %i.af = mul nsw i32 %2, 24
  %i.ag = ashr i32 %i.ad, 12
  %i.ah = add nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = lshr i32 %i.ae, 11
  %i.aj = add nsw i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !86
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr [4 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = lshr i32 %i.am, 13
  %i.ao = sub nuw nsw i32 4096, %i.ae
  %i.ap = mul nuw nsw i32 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.al, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = lshr i32 %i.ar, 13
  %i.at = mul nuw nsw i32 %i.as, %i.ae
  %i.au = add nuw i32 %i.ap, %i.at
  %i.av = lshr i32 %i.au, 19
  ret i32 %i.av
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z8wavModelR5Mixer(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [49 x [49 x [2 x double]]], align 16 ; 13 uses
  %i.b = alloca [49 x [49 x double]], align 16    ; 11 uses
  %i.c = load atomic i8, ptr @_ZGVZ8wavModelR5MixerE1K acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ8wavModelR5MixerE1K) #38
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @level, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, -1
  %i.h = lshr i32 128, %i.g
  store i32 %i.h, ptr @_ZZ8wavModelR5MixerE1K, align 4, !tbaa !4
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ8wavModelR5MixerE1K) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.i = load atomic i8, ptr @_ZGVZ8wavModelR5MixerE4scm1 acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.h, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ8wavModelR5MixerE4scm1) #38
  %.not288 = icmp eq i32 %i.k, 0
end_hunk_1
