Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/paq8p?download=true
inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z6squashi:bb.a
  %i.b = icmp slt i32 %0, -2047
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 127                          ; 2 uses
  %i.d = ashr i32 %0, 7
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %i.i = sub nuw nsw i32 128, %i.c
  %i.j = mul nsw i32 %i.h, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = mul nsw i32 %i.l, %i.c
  %i.n = add i32 %i.j, 64
  %i.o = add i32 %i.n, %i.m
  %i.p = ashr i32 %i.o, 7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ 4095, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7StretchD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !guid !480 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !370
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !359
  %i.c = shl i32 %i.a, 1
  %i.d = sub i32 %i.b, %i.c                       ; 3 uses
  store i32 %i.d, ptr @programChecker, align 8, !tbaa !359
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !360
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5ArrayIsLi0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !360
  br label %_ZN5ArrayIsLi0EED2Ev.exit

_ZN5ArrayIsLi0EED2Ev.exit:                        ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !371
  tail call void @free(ptr noundef %i.h) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7StretchC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !484 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4096, ptr %i.a, align 4, !tbaa !372
  store i32 4096, ptr %0, align 8, !tbaa !370
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !359
  %i.c = add nsw i32 %i.b, 8192                   ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !359
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !360
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !360
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #40 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !371
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5ArrayIsLi0EEC2Ei.exit

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIsLi0EEC2Ei.exit:                        ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !373
  br label %_Z6squashi.exit

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8190
  store i16 2047, ptr %i.i, align 2, !tbaa !375
  ret void

_Z6squashi.exit:                                  ; preds = %_ZN5ArrayIsLi0EEC2Ei.exit, %._crit_edge
  %.01016 = phi i32 [ -2047, %_ZN5ArrayIsLi0EEC2Ei.exit ], [ %i.ah, %._crit_edge ] ; 4 uses
  %.01115 = phi i32 [ 0, %_ZN5ArrayIsLi0EEC2Ei.exit ], [ %.pre-phi, %._crit_edge ] ; 3 uses
  %i.j = and i32 %.01016, 127                     ; 2 uses
  %i.k = ashr i32 %.01016, 7
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = sub nuw nsw i32 128, %i.j
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.m, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  %i.t = mul nsw i32 %i.s, %i.j
  %i.u = add i32 %i.q, 64
  %i.v = add i32 %i.u, %i.t
  %i.w = ashr i32 %i.v, 7                         ; 4 uses
  %.not13 = icmp sgt i32 %.01115, %i.w
  br i1 %.not13, label %_Z6squashi.exit.._crit_edge_crit_edge, label %iter.check

_Z6squashi.exit.._crit_edge_crit_edge:            ; preds = %_Z6squashi.exit
  %.pre = add nsw i32 %i.w, 1
  br label %._crit_edge

iter.check:                                       ; preds = %_Z6squashi.exit
  %i.x = trunc i32 %.01016 to i16                 ; 3 uses
  %i.y = sext i32 %.01115 to i64                  ; 5 uses
  %i.z = add nsw i32 %i.w, 1                      ; 4 uses
  %wide.trip.count = sext i32 %i.z to i64
  %narrow = add nsw i32 %i.w, 1
  %narrow29 = sub nsw i32 %narrow, %.01115        ; 3 uses
  %i.aa = zext nneg i32 %narrow29 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %narrow29, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i32 %narrow29, 16
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 2147483632              ; 4 uses
  %i.ac = add nsw i64 %n.vec, %i.y
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !375
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 2, !tbaa !375
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !378

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.aa, 2147483644            ; 3 uses
  %i.af = add nsw i64 %n.vec23, %i.y
  %broadcast.splatinsert24 = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat25 = shufflevector <4 x i16> %broadcast.splatinsert24, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep30 = getelementptr [2 x i8], ptr %i.f, i64 %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %gep31 = getelementptr [2 x i8], ptr %invariant.gep30, i64 %index26
  store <4 x i16> %broadcast.splat25, ptr %gep31, align 2, !tbaa !375
  %index.next27 = add nuw i64 %index26, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !482

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %n.vec23, %i.aa
  br i1 %cmp.n28, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_Z6squashi.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %_Z6squashi.exit.._crit_edge_crit_edge ], [ %i.z, %middle.block ], [ %i.z, %vec.epilog.middle.block ], [ %i.z, %vec.epilog.scalar.ph ]
  %i.ah = add nsw i32 %.01016, 1                  ; 2 uses
  %exitcond18.not = icmp eq i32 %i.ah, 2048
  br i1 %exitcond18.not, label %bb.d, label %_Z6squashi.exit, !llvm.loop !1

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.f, i64 %indvars.iv
  store i16 %i.x, ptr %i.ai, align 2, !tbaa !375
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !483
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z11dot_productPsS_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 !guid !487 {
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
  %wide.vec = load <8 x i16>, ptr %i.k, align 2, !tbaa !375 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec18 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec19 = load <8 x i16>, ptr %i.l, align 2, !tbaa !375 ; 2 uses
  %strided.vec20 = shufflevector <8 x i16> %wide.vec19, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec21 = shufflevector <8 x i16> %wide.vec19, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.m = sext <4 x i16> %strided.vec to <4 x i32>
  %i.n = sext <4 x i16> %strided.vec20 to <4 x i32>
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.i
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.j
  %wide.vec22 = load <8 x i16>, ptr %i.o, align 2, !tbaa !375 ; 2 uses
  %strided.vec23 = shufflevector <8 x i16> %wide.vec22, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec24 = shufflevector <8 x i16> %wide.vec22, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec25 = load <8 x i16>, ptr %i.p, align 2, !tbaa !375 ; 2 uses
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
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !485

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
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !375
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !375
  %i.an = sext i16 %i.am to i32
  %i.ao = mul nsw i32 %i.an, %i.ak
  %i.ap = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !375
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap
  %i.au = load i16, ptr %i.at, align 2, !tbaa !375
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.as
  %i.ax = add nsw i32 %i.aw, %i.ao
  %i.ay = ashr i32 %i.ax, 8
  %i.az = add nsw i32 %i.ay, %.01314              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !486
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z5trainPsS_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !guid !493 {
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
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %i.f
  %bound1 = icmp ult ptr %0, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !375, !alias.scope !494, !noalias !495
  %i.h = sext <8 x i16> %wide.load to <8 x i32>
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load17 = load <8 x i16>, ptr %i.i, align 2, !tbaa !375, !alias.scope !495
  %i.j = sext <8 x i16> %wide.load17 to <8 x i32>
  %i.k = mul nsw <8 x i32> %broadcast.splat, %i.j
  %i.l = ashr <8 x i32> %i.k, splat (i32 15)
  %i.m = add nsw <8 x i32> %i.l, splat (i32 1)
  %i.n = ashr <8 x i32> %i.m, splat (i32 1)
  %i.o = add nsw <8 x i32> %i.n, %i.h
  %i.p = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.o, <8 x i32> splat (i32 -32768))
  %i.q = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.p, <8 x i32> splat (i32 32767))
  %i.r = trunc nsw <8 x i32> %i.q to <8 x i16>
  store <8 x i16> %i.r, ptr %i.g, align 2, !tbaa !375, !alias.scope !494, !noalias !495
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !491

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
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !375
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !375
  %i.y = sext i16 %i.x to i32
  %i.z = mul nsw i32 %3, %i.y
  %i.aa = ashr i32 %i.z, 15
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = add nsw i32 %i.ac, %i.v
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -32768)
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32767)
  %i.ae = trunc nsw i32 %spec.store.select1 to i16
  store i16 %i.ae, ptr %i.t, align 2, !tbaa !375
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !492
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5MixerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(136) dereferenceable(136) %0) unnamed_addr #7 align 2 !guid !496 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5MixerD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.b) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !384
  %i.f = load i32, ptr @programChecker, align 8, !tbaa !359
  %i.g = shl i32 %i.e, 2
  %i.h = sub i32 %i.f, %i.g                       ; 3 uses
  store i32 %i.h, ptr @programChecker, align 8, !tbaa !359
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !360
  %i.j = icmp sgt i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZN5ArrayIiLi0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN5Mixer1pEv:bb.a
bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.6 = add i32 %i.c, 7            ; 2 uses
  %i.r = and i32 %indvars.iv.next.6, 7
  %.not.6 = icmp eq i32 %i.r, 0
  %indvars.iv.next.7 = add i32 %i.c, 8
  %spec.select = select i1 %.not.6, i32 %indvars.iv.next.6, i32 %indvars.iv.next.7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %.lcssa106 = phi i32 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.next.1, %bb.b ], [ %indvars.iv.next.2, %bb.c ], [ %indvars.iv.next.3, %bb.d ], [ %indvars.iv.next.4, %bb.e ], [ %indvars.iv.next.5, %bb.f ], [ %spec.select, %bb.g ] ; 2 uses
  store i32 %.lcssa106, ptr %i.b, align 8, !tbaa !394
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %tailrecurse
  %.lcssa24 = phi i32 [ %.lcssa106, %._crit_edge ], [ %i.c, %tailrecurse ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !383  ; 13 uses
  %.not8 = icmp eq ptr %i.t, null
  br i1 %.not8, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !392  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %_ZN5Mixer6updateEv.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.x = load i32, ptr @y, align 4, !tbaa !18
  %i.y = shl i32 %i.x, 12                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !391
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.t, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.aj = load i32, ptr %i.ai, align 8
  %.fr8.i = freeze i32 %i.aj                      ; 2 uses
  %i.ak = icmp sgt i32 %.fr8.i, 0
  %i.al = add i32 %.fr8.i, 7                      ; 2 uses
  %i.am = and i32 %i.al, -8
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 4 uses
  br i1 %i.ak, label %.lr.ph.split.us.preheader.i, label %_ZN5Mixer6updateEv.exit

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  %i.an = shl nuw nsw i64 %wide.trip.count.i.i, 1 ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ac, i64 %i.an
  %scevgep65 = getelementptr i8, ptr %i.ah, i64 %i.an
  %min.iters.check67 = icmp slt i32 %i.al, 8
  %n.vec69 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n75 = icmp eq i64 %n.vec69, %wide.trip.count.i.i
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_Z5trainPsS_ii.exit.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i, %_Z5trainPsS_ii.exit.us.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %.not.us.i = icmp eq i32 %i.y, %i.ap
  br i1 %.not.us.i, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.lr.ph.split.us.i
  %i.aq = sub nsw i32 %i.y, %i.ap
  %i.ar = mul nsw i32 %i.aq, 7                    ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = mul nsw i32 %i.at, %i.af
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  br i1 %min.iters.check67, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.us.i
  %i.ax = shl nsw i64 %i.av, 1
  %i.ay = getelementptr i8, ptr %scevgep65, i64 %i.ax
  %bound0 = icmp ult ptr %i.aw, %scevgep64
  %bound1 = icmp ult ptr %i.ac, %i.ay
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next73, %vector.body70 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index71 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.az, align 2, !tbaa !375, !alias.scope !620, !noalias !621
  %i.ba = sext <8 x i16> %wide.load to <8 x i32>
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %index71
  %wide.load72 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !375, !alias.scope !621
  %i.bc = sext <8 x i16> %wide.load72 to <8 x i32>
  %i.bd = mul nsw <8 x i32> %broadcast.splat, %i.bc
  %i.be = ashr <8 x i32> %i.bd, splat (i32 15)
  %i.bf = add nsw <8 x i32> %i.be, splat (i32 1)
  %i.bg = ashr <8 x i32> %i.bf, splat (i32 1)
  %i.bh = add nsw <8 x i32> %i.bg, %i.ba
  %i.bi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bh, <8 x i32> splat (i32 -32768))
  %i.bj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bi, <8 x i32> splat (i32 32767))
  %i.bk = trunc nsw <8 x i32> %i.bj to <8 x i16>
  store <8 x i16> %i.bk, ptr %i.az, align 2, !tbaa !375, !alias.scope !620, !noalias !621
  %index.next73 = add nuw i64 %index71, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next73, %n.vec69
  br i1 %i.bl, label %middle.block74, label %vector.body70, !llvm.loop !612

middle.block74:                                   ; preds = %vector.body70
  br i1 %cmp.n75, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.us.i, %middle.block74
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.us.i ], [ %n.vec69, %middle.block74 ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i.us.i ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !375
  %i.bo = sext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.i.us.i
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !375
  %i.br = sext i16 %i.bq to i32
  %i.bs = mul nsw i32 %i.ar, %i.br
  %i.bt = ashr i32 %i.bs, 15
  %i.bu = add nsw i32 %i.bt, 1
  %i.bv = ashr i32 %i.bu, 1
  %i.bw = add nsw i32 %i.bv, %i.bo
  %spec.store.select.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 -32768)
  %spec.store.select1.i.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.us.i, i32 32767)
  %i.bx = trunc nsw i32 %spec.store.select1.i.us.i to i16
  store i16 %i.bx, ptr %i.bm, align 2, !tbaa !375
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !613

_Z5trainPsS_ii.exit.us.i:                         ; preds = %.lr.ph.i.us.i, %middle.block74, %.lr.ph.split.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Mixer6updateEv.exit, label %.lr.ph.split.us.i, !llvm.loop !3

_ZN5Mixer6updateEv.exit:                          ; preds = %_Z5trainPsS_ii.exit.us.i, %bb.i, %.lr.ph.i
  store i32 0, ptr %i.u, align 8, !tbaa !392
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 92 ; 4 uses
  store i32 0, ptr %i.by, align 4, !tbaa !393
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 3 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !394
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr, i64 88 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !392
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %_ZN5Mixer6updateEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !389 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !391
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !389
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !391
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !389
  br label %bb.j

._crit_edge32.loopexit:                           ; preds = %_Z6squashi.exit
  %.pre = load i32, ptr %i.by, align 4, !tbaa !393
  %.pre39 = load i32, ptr %i.u, align 8, !tbaa !392
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %_ZN5Mixer6updateEv.exit
  %i.cn = phi i32 [ %.pre39, %._crit_edge32.loopexit ], [ 0, %_ZN5Mixer6updateEv.exit ] ; 2 uses
  %i.co = phi i32 [ %.pre, %._crit_edge32.loopexit ], [ 0, %_ZN5Mixer6updateEv.exit ]
  %i.cp = add nsw i32 %i.cn, 1
  store i32 %i.cp, ptr %i.u, align 8, !tbaa !392
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !391
  %i.cs = sext i32 %i.cn to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cs
  store i32 %i.co, ptr %i.ct, align 4, !tbaa !18
  %i.cu = load i32, ptr %i.by, align 4, !tbaa !393
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.by, align 4, !tbaa !393
  br label %tailrecurse

bb.j:                                             ; preds = %.lr.ph31, %_Z6squashi.exit
  %indvars.iv36 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next37, %_Z6squashi.exit ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv36
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !18
  %i.cy = load i32, ptr %.tr, align 8, !tbaa !388
  %i.cz = mul nsw i32 %i.cy, %i.cx
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.da ; 4 uses
  %i.dc = load i32, ptr %i.b, align 8, !tbaa !394 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.preheader.i, label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.de = add nuw nsw i32 %i.dc, 7
  %i.df = and i32 %i.de, 2147483640
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = tail call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 2) ; 2 uses
  %i.di = lshr exact i64 %i.dh, 1
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dh, 14
  br i1 %min.iters.check, label %.lr.ph.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dj, 2147483640              ; 3 uses
  %i.dk = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %i.dl = shl nuw i64 %index, 1                   ; 3 uses
  %i.dm = or disjoint i64 %i.dl, 8                ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.dl
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.dm
  %wide.vec = load <8 x i16>, ptr %i.dn, align 2, !tbaa !375 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec51 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec52 = load <8 x i16>, ptr %i.do, align 2, !tbaa !375 ; 2 uses
  %strided.vec53 = shufflevector <8 x i16> %wide.vec52, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec54 = shufflevector <8 x i16> %wide.vec52, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dp = sext <4 x i16> %strided.vec to <4 x i32>
  %i.dq = sext <4 x i16> %strided.vec53 to <4 x i32>
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dl
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dm
  %wide.vec55 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !375 ; 2 uses
  %strided.vec56 = shufflevector <8 x i16> %wide.vec55, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec57 = shufflevector <8 x i16> %wide.vec55, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec58 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !375 ; 2 uses
  %strided.vec59 = shufflevector <8 x i16> %wide.vec58, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec60 = shufflevector <8 x i16> %wide.vec58, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dt = sext <4 x i16> %strided.vec56 to <4 x i32>
  %i.du = sext <4 x i16> %strided.vec59 to <4 x i32>
  %i.dv = mul nsw <4 x i32> %i.dt, %i.dp
  %i.dw = mul nsw <4 x i32> %i.du, %i.dq
  %i.dx = sext <4 x i16> %strided.vec51 to <4 x i32>
  %i.dy = sext <4 x i16> %strided.vec54 to <4 x i32>
  %i.dz = sext <4 x i16> %strided.vec57 to <4 x i32>
  %i.ea = sext <4 x i16> %strided.vec60 to <4 x i32>
  %i.eb = mul nsw <4 x i32> %i.dz, %i.dx
  %i.ec = mul nsw <4 x i32> %i.ea, %i.dy
  %i.ed = add nsw <4 x i32> %i.eb, %i.dv
  %i.ee = add nsw <4 x i32> %i.ec, %i.dw
  %i.ef = ashr <4 x i32> %i.ed, splat (i32 8)
  %i.eg = ashr <4 x i32> %i.ee, splat (i32 8)
  %i.eh = add <4 x i32> %i.ef, %vec.phi           ; 2 uses
  %i.ei = add <4 x i32> %i.eg, %vec.phi50         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !614

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_Z11dot_productPsS_i.exit, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i10.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.dk, %middle.block ]
  %.01314.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ek, %middle.block ]
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %.lr.ph.i9 ], [ %indvars.iv.i10.ph, %.lr.ph.i9.preheader ] ; 4 uses
  %.01314.i = phi i32 [ %i.fc, %.lr.ph.i9 ], [ %.01314.i.ph, %.lr.ph.i9.preheader ]
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.i10
  %i.em = load i16, ptr %i.el, align 2, !tbaa !375
  %i.en = sext i16 %i.em to i32
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv.i10
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !375
  %i.eq = sext i16 %i.ep to i32
  %i.er = mul nsw i32 %i.eq, %i.en
  %i.es = or disjoint i64 %indvars.iv.i10, 1      ; 2 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !375
  %i.ev = sext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.es
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !375
  %i.ey = sext i16 %i.ex to i32
  %i.ez = mul nsw i32 %i.ey, %i.ev
  %i.fa = add nsw i32 %i.ez, %i.er
  %i.fb = ashr i32 %i.fa, 8
  %i.fc = add nsw i32 %i.fb, %.01314.i            ; 2 uses
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 2 ; 2 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next.i11, %i.dg
  br i1 %i.fd, label %.lr.ph.i9, label %_Z11dot_productPsS_i.exit, !llvm.loop !615

_Z11dot_productPsS_i.exit:                        ; preds = %.lr.ph.i9, %middle.block
  %.lcssa49 = phi i32 [ %i.ek, %middle.block ], [ %i.fc, %.lr.ph.i9 ]
  %i.fe = ashr i32 %.lcssa49, 5                   ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 2047
  br i1 %i.ff, label %_Z6squashi.exit, label %bb.k

bb.k:                                             ; preds = %_Z11dot_productPsS_i.exit
  %i.fg = icmp slt i32 %i.fe, -2047
  br i1 %i.fg, label %_Z6squashi.exit, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.fh = phi i32 [ %i.fe, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.fi = and i32 %i.fh, 127                      ; 2 uses
  %i.fj = ashr i32 %i.fh, 7
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.fk ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 64
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !18
  %i.fo = sub nuw nsw i32 128, %i.fi
  %i.fp = mul nsw i32 %i.fo, %i.fn
  %i.fq = getelementptr i8, ptr %i.fl, i64 68
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !18
  %i.fs = mul nsw i32 %i.fr, %i.fi
  %i.ft = add i32 %i.fp, 64
  %i.fu = add i32 %i.ft, %i.fs
  %i.fv = ashr i32 %i.fu, 7
  br label %_Z6squashi.exit

_Z6squashi.exit:                                  ; preds = %_Z11dot_productPsS_i.exit, %bb.k, %.thread
  %.0.i = phi i32 [ %i.fv, %.thread ], [ 4095, %_Z11dot_productPsS_i.exit ], [ 0, %bb.k ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv36
  store i32 %.0.i, ptr %i.fw, align 4, !tbaa !18
  %i.fx = sext i32 %.0.i to i64
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !375
  %i.ga = load i32, ptr %i.bz, align 8, !tbaa !394 ; 2 uses
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.bz, align 8, !tbaa !394
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.gc
  store i16 %i.fz, ptr %i.gd, align 2, !tbaa !375
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ge = load i32, ptr %i.ca, align 8, !tbaa !392
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next37, %i.gf
  br i1 %i.gg, label %bb.j, label %._crit_edge32.loopexit, !llvm.loop !616

bb.l:                                             ; preds = %bb.h
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !389 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !389 ; 4 uses
  %i.gl = icmp sgt i32 %.lcssa24, 0
  br i1 %i.gl, label %.lr.ph.preheader.i13, label %.thread23

.lr.ph.preheader.i13:                             ; preds = %bb.l
  %i.gm = zext nneg i32 %.lcssa24 to i64          ; 2 uses
  %i.gn = add nsw i64 %i.gm, -1
  %i.go = lshr i64 %i.gn, 1
  %i.gp = add nuw i64 %i.go, 1                    ; 2 uses
  %min.iters.check78 = icmp ult i32 %.lcssa24, 15
  br i1 %min.iters.check78, label %.lr.ph.i14.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.preheader.i13
  %n.vec80 = and i64 %i.gp, -8                    ; 3 uses
  %i.gq = shl i64 %n.vec80, 1
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next97, %vector.body81 ] ; 2 uses
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.hn, %vector.body81 ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.ho, %vector.body81 ]
  %i.gr = shl nuw i64 %index82, 1                 ; 3 uses
  %i.gs = or disjoint i64 %i.gr, 8                ; 2 uses
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gr
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gs
  %wide.vec85 = load <8 x i16>, ptr %i.gt, align 2, !tbaa !375 ; 2 uses
  %strided.vec86 = shufflevector <8 x i16> %wide.vec85, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec87 = shufflevector <8 x i16> %wide.vec85, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec88 = load <8 x i16>, ptr %i.gu, align 2, !tbaa !375 ; 2 uses
  %strided.vec89 = shufflevector <8 x i16> %wide.vec88, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec90 = shufflevector <8 x i16> %wide.vec88, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gv = sext <4 x i16> %strided.vec86 to <4 x i32>
  %i.gw = sext <4 x i16> %strided.vec89 to <4 x i32>
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gr
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gs
  %wide.vec91 = load <8 x i16>, ptr %i.gx, align 2, !tbaa !375 ; 2 uses
  %strided.vec92 = shufflevector <8 x i16> %wide.vec91, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec93 = shufflevector <8 x i16> %wide.vec91, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec94 = load <8 x i16>, ptr %i.gy, align 2, !tbaa !375 ; 2 uses
  %strided.vec95 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec96 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gz = sext <4 x i16> %strided.vec92 to <4 x i32>
  %i.ha = sext <4 x i16> %strided.vec95 to <4 x i32>
  %i.hb = mul nsw <4 x i32> %i.gz, %i.gv
  %i.hc = mul nsw <4 x i32> %i.ha, %i.gw
  %i.hd = sext <4 x i16> %strided.vec87 to <4 x i32>
  %i.he = sext <4 x i16> %strided.vec90 to <4 x i32>
  %i.hf = sext <4 x i16> %strided.vec93 to <4 x i32>
  %i.hg = sext <4 x i16> %strided.vec96 to <4 x i32>
  %i.hh = mul nsw <4 x i32> %i.hf, %i.hd
  %i.hi = mul nsw <4 x i32> %i.hg, %i.he
  %i.hj = add nsw <4 x i32> %i.hh, %i.hb
  %i.hk = add nsw <4 x i32> %i.hi, %i.hc
  %i.hl = ashr <4 x i32> %i.hj, splat (i32 8)
  %i.hm = ashr <4 x i32> %i.hk, splat (i32 8)
  %i.hn = add <4 x i32> %i.hl, %vec.phi83         ; 2 uses
  %i.ho = add <4 x i32> %i.hm, %vec.phi84         ; 2 uses
  %index.next97 = add nuw i64 %index82, 8         ; 2 uses
  %i.hp = icmp eq i64 %index.next97, %n.vec80
  br i1 %i.hp, label %middle.block98, label %vector.body81, !llvm.loop !617

middle.block98:                                   ; preds = %vector.body81
end_hunk_1
