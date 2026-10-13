Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepImageChannel?download=true
inline.NumInlined: 102
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEEclEii:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE2atEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  ret ptr %i.i
}

declare void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE2atEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE3rowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE3rowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEEC2ERNS_14DeepImageLevelEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat($_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEEC5ERNS_14DeepImageLevelEb) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7Imf_3_412ImageChannelC2ERNS_10ImageLevelEiib(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_412ImageChannel6resizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  %i.g = shl i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #14
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %bb.c
  store ptr %i.i, ptr %i.a, align 8, !tbaa !25
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE6resizeEv.exit unwind label %bb.d, !inline_history !65

_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE6resizeEv.exit: ; preds = %.noexc4
  ret void

bb.d:                                             ; preds = %.noexc4, %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_416DeepImageChannelC2ERNS_14DeepImageLevelEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7Imf_3_412ImageChannelC2ERNS_10ImageLevelEiib(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_416DeepImageChannelE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_416DeepImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEED5Ev) align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEED5Ev) align 2 {
bb.a:
  tail call void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE16setSamplesToZeroEmjj(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %scevgep = getelementptr nuw i8, ptr %i.e, i64 %i.g
  %i.h = xor i32 %2, -1
  %i.i = add i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = add nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE14moveSampleListEmjjm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 15 uses
  %5 = ptrtoaddr ptr %i.d to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %6 = ptrtoaddr ptr %i.f to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %4 ; 15 uses
  %i.h = icmp ugt i32 %2, %3
  br i1 %i.h, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader30, label %iter.check

iter.check:                                       ; preds = %.preheader32
  %wide.trip.count = zext i32 %2 to i64           ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.i = shl i64 %4, 1
  %i.j = add i64 %i.i, %6
  %i.k = sub i64 %5, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i32 %2, 16
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <8 x i16>, ptr %i.m, align 2, !tbaa !29
  %wide.load51 = load <8 x i16>, ptr %i.o, align 2, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <8 x i16> %wide.load, ptr %i.n, align 2, !tbaa !29
  store <8 x i16> %wide.load51, ptr %i.p, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index53
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index53
  %wide.load54 = load <4 x i16>, ptr %i.r, align 2, !tbaa !29
  store <4 x i16> %wide.load54, ptr %i.s, align 2, !tbaa !29
  %index.next55 = add nuw i64 %index53, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %n.vec52, %wide.trip.count
  br i1 %cmp.n56, label %.preheader30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec52, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.prol
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.w = load i16, ptr %i.u, align 2, !tbaa !29
  store i16 %i.w, ptr %i.v, align 2, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.preheader30, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %.loopexit, label %iter.check72

iter.check72:                                     ; preds = %.preheader
  %wide.trip.count47 = zext i32 %3 to i64         ; 8 uses
  %min.iters.check59 = icmp ult i32 %3, 4
  br i1 %min.iters.check59, label %.lr.ph37.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %iter.check72
  %i.z = shl i64 %4, 1
  %i.aa = add i64 %i.z, %6
  %i.ab = sub i64 %5, %i.aa
  %diff.check58 = icmp ugt i64 %i.ab, -32
  br i1 %diff.check58, label %.lr.ph37.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %vector.memcheck57
  %min.iters.check61 = icmp ult i32 %3, 16
  br i1 %min.iters.check61, label %vec.epilog.ph76, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %i.ac = and i64 %wide.trip.count47, 12
  %n.vec63 = and i64 %wide.trip.count47, 4294967280 ; 4 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.ph62, %vector.body64
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next68, %vector.body64 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index65 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index65 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load66 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !29
  %wide.load67 = load <8 x i16>, ptr %i.af, align 2, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <8 x i16> %wide.load66, ptr %i.ae, align 2, !tbaa !29
  store <8 x i16> %wide.load67, ptr %i.ag, align 2, !tbaa !29
  %index.next68 = add nuw i64 %index65, 16        ; 2 uses
  %i.ah = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.ah, label %middle.block69, label %vector.body64, !llvm.loop !69

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %n.vec63, %wide.trip.count47
  br i1 %cmp.n70, label %.loopexit, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block69
  %min.epilog.iters.check75 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph37.preheader, label %vec.epilog.ph76, !prof !33

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check74
  %vec.epilog.resume.val71 = phi i64 [ %n.vec63, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check60 ]
  %n.vec77 = and i64 %wide.trip.count47, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph76
  %index79 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph76 ], [ %index.next81, %vec.epilog.vector.body78 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index79
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index79
  %wide.load80 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !29
  store <4 x i16> %wide.load80, ptr %i.aj, align 2, !tbaa !29
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.ak, label %vec.epilog.middle.block82, label %vec.epilog.vector.body78, !llvm.loop !70

vec.epilog.middle.block82:                        ; preds = %vec.epilog.vector.body78
  %cmp.n83 = icmp eq i64 %n.vec77, %wide.trip.count47
  br i1 %cmp.n83, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %iter.check72, %vector.memcheck57, %vec.epilog.iter.check74, %vec.epilog.middle.block82
  %indvars.iv44.ph = phi i64 [ 0, %iter.check72 ], [ 0, %vector.memcheck57 ], [ %n.vec63, %vec.epilog.iter.check74 ], [ %n.vec77, %vec.epilog.middle.block82 ] ; 3 uses
  %xtraiter85 = and i64 %wide.trip.count47, 3     ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph37.prol.loopexit, label %.lr.ph37.prol

.lr.ph37.prol:                                    ; preds = %.lr.ph37.preheader, %.lr.ph37.prol
  %indvars.iv44.prol = phi i64 [ %indvars.iv.next45.prol, %.lr.ph37.prol ], [ %indvars.iv44.ph, %.lr.ph37.preheader ] ; 3 uses
  %prol.iter87 = phi i64 [ %prol.iter87.next, %.lr.ph37.prol ], [ 0, %.lr.ph37.preheader ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv44.prol
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv44.prol
  %i.an = load i16, ptr %i.al, align 2, !tbaa !29
  store i16 %i.an, ptr %i.am, align 2, !tbaa !29
  %indvars.iv.next45.prol = add nuw nsw i64 %indvars.iv44.prol, 1 ; 2 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %.lr.ph37.prol.loopexit, label %.lr.ph37.prol, !llvm.loop !71

.lr.ph37.prol.loopexit:                           ; preds = %.lr.ph37.prol, %.lr.ph37.preheader
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %.lr.ph37.preheader ], [ %indvars.iv.next45.prol, %.lr.ph37.prol ]
  %i.ao = sub nsw i64 %indvars.iv44.ph, %wide.trip.count47
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.prol.loopexit, %.lr.ph37
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.3, %.lr.ph37 ], [ %indvars.iv44.unr, %.lr.ph37.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv44
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv44
  %i.as = load i16, ptr %i.aq, align 2, !tbaa !29
  store i16 %i.as, ptr %i.ar, align 2, !tbaa !29
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next45
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next45
  %i.av = load i16, ptr %i.at, align 2, !tbaa !29
  store i16 %i.av, ptr %i.au, align 2, !tbaa !29
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next45.1
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next45.1
  %i.ay = load i16, ptr %i.aw, align 2, !tbaa !29
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !29
  %indvars.iv.next45.2 = add nuw nsw i64 %indvars.iv44, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next45.2
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next45.2
  %i.bb = load i16, ptr %i.az, align 2, !tbaa !29
  store i16 %i.bb, ptr %i.ba, align 2, !tbaa !29
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %exitcond48.not.3 = icmp eq i64 %indvars.iv.next45.3, %wide.trip.count47
  br i1 %exitcond48.not.3, label %.loopexit, label %.lr.ph37, !llvm.loop !72

.preheader30:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader32
  %i.bc = icmp ult i32 %2, %3
  br i1 %i.bc, label %.lr.ph35.preheader, label %.loopexit

.lr.ph35.preheader:                               ; preds = %.preheader30
  %i.bd = zext i32 %2 to i64
  %i.be = add i64 %4, %i.bd
  %i.bf = shl i64 %i.be, 1
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.bf
  %i.bg = xor i32 %2, -1
  %i.bh = add i32 %3, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = add nuw nsw i64 %i.bj, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.bk, i1 false), !tbaa !29
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.bn = load i16, ptr %i.bl, align 2, !tbaa !29
  store i16 %i.bn, ptr %i.bm, align 2, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.bq = load i16, ptr %i.bo, align 2, !tbaa !29
  store i16 %i.bq, ptr %i.bp, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.bt = load i16, ptr %i.br, align 2, !tbaa !29
  store i16 %i.bt, ptr %i.bs, align 2, !tbaa !29
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !29
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader30, label %.lr.ph, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph37.prol.loopexit, %.lr.ph37, %middle.block69, %vec.epilog.middle.block82, %.lr.ph35.preheader, %.preheader30, %.preheader
  store ptr %i.g, ptr %i.c, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIN9Imath_3_24halfEE22moveSamplesToNewBufferEPKjS5_PKm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = shl i64 %i.f, 1
  %.inv = icmp sgt i64 %i.f, -1
  %i.h = select i1 %.inv, i64 %i.g, i64 -1
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #14
  store ptr %i.i, ptr %i.a, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.n = icmp eq ptr %i.b, null
  br i1 %i.n, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %.03849 = phi i64 [ 0, %.lr.ph50 ], [ %i.cq, %.loopexit ] ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.03849 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 15 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03849
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42   ; 4 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03849
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43   ; 8 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03849
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43   ; 7 uses
  %i.aa = icmp ugt i32 %i.x, %i.z
  br i1 %i.aa, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.b
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %.preheader41, label %iter.check90

iter.check90:                                     ; preds = %.preheader43
  %wide.trip.count = zext i32 %i.x to i64         ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_421TypedDeepImageChannelIfEclEii:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIfEclEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_421TypedDeepImageChannelIfE2atEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIfE2atEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_421TypedDeepImageChannelIfE3rowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIfE3rowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIfEC2ERNS_14DeepImageLevelEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat($_ZN7Imf_3_421TypedDeepImageChannelIfEC5ERNS_14DeepImageLevelEb) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7Imf_3_412ImageChannelC2ERNS_10ImageLevelEiib(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_421TypedDeepImageChannelIfEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_412ImageChannel6resizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  store ptr null, ptr %i.a, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  %i.g = shl i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #14
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %bb.c
  store ptr %i.i, ptr %i.a, align 8, !tbaa !55
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %_ZN7Imf_3_421TypedDeepImageChannelIfE6resizeEv.exit unwind label %bb.d, !inline_history !84

_ZN7Imf_3_421TypedDeepImageChannelIfE6resizeEv.exit: ; preds = %.noexc4
  ret void

bb.d:                                             ; preds = %.noexc4, %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIfED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN7Imf_3_421TypedDeepImageChannelIfED5Ev) align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_421TypedDeepImageChannelIfEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIfED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN7Imf_3_421TypedDeepImageChannelIfED5Ev) align 2 {
bb.a:
  tail call void @_ZN7Imf_3_421TypedDeepImageChannelIfED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIfE16setSamplesToZeroEmjj(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %scevgep = getelementptr nuw i8, ptr %i.e, i64 %i.g
  %i.h = xor i32 %2, -1
  %i.i = add i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIfE14moveSampleListEmjjm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 13 uses
  %5 = ptrtoaddr ptr %i.d to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %6 = ptrtoaddr ptr %i.f to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %4 ; 13 uses
  %i.h = icmp ugt i32 %2, %3
  br i1 %i.h, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader32
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %.lr.ph.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.i = shl i64 %4, 2
  %i.j = add i64 %i.i, %6
  %i.k = sub i64 %5, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x float>, ptr %i.l, align 4, !tbaa !58
  %wide.load50 = load <4 x float>, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %wide.load, ptr %i.n, align 4, !tbaa !58
  store <4 x float> %wide.load50, ptr %i.o, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader30, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader66, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader66 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader66 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.prol
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !86

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader66
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader66 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.preheader30, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.preheader
  %wide.trip.count47 = zext i32 %3 to i64         ; 5 uses
  %min.iters.check54 = icmp ult i32 %3, 16
  br i1 %min.iters.check54, label %.lr.ph37.preheader65, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph37.preheader
  %i.v = shl i64 %4, 2
  %i.w = add i64 %i.v, %6
  %i.x = sub i64 %5, %i.w
  %diff.check52 = icmp ugt i64 %i.x, -32
  br i1 %diff.check52, label %.lr.ph37.preheader65, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck51
  %n.vec56 = and i64 %wide.trip.count47, 4294967288 ; 3 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next61, %vector.body57 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index58 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load59 = load <4 x float>, ptr %i.y, align 4, !tbaa !58
  %wide.load60 = load <4 x float>, ptr %i.z, align 4, !tbaa !58
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index58 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x float> %wide.load59, ptr %i.aa, align 4, !tbaa !58
  store <4 x float> %wide.load60, ptr %i.ab, align 4, !tbaa !58
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.ac, label %middle.block62, label %vector.body57, !llvm.loop !87

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %n.vec56, %wide.trip.count47
  br i1 %cmp.n63, label %.loopexit, label %.lr.ph37.preheader65

.lr.ph37.preheader65:                             ; preds = %vector.memcheck51, %.lr.ph37.preheader, %middle.block62
  %indvars.iv44.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %.lr.ph37.preheader ], [ %n.vec56, %middle.block62 ] ; 3 uses
  %xtraiter67 = and i64 %wide.trip.count47, 3     ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph37.prol.loopexit, label %.lr.ph37.prol

.lr.ph37.prol:                                    ; preds = %.lr.ph37.preheader65, %.lr.ph37.prol
  %indvars.iv44.prol = phi i64 [ %indvars.iv.next45.prol, %.lr.ph37.prol ], [ %indvars.iv44.ph, %.lr.ph37.preheader65 ] ; 3 uses
  %prol.iter69 = phi i64 [ %prol.iter69.next, %.lr.ph37.prol ], [ 0, %.lr.ph37.preheader65 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44.prol
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !58
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv44.prol
  store float %i.ae, ptr %i.af, align 4, !tbaa !58
  %indvars.iv.next45.prol = add nuw nsw i64 %indvars.iv44.prol, 1 ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %.lr.ph37.prol.loopexit, label %.lr.ph37.prol, !llvm.loop !88

.lr.ph37.prol.loopexit:                           ; preds = %.lr.ph37.prol, %.lr.ph37.preheader65
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %.lr.ph37.preheader65 ], [ %indvars.iv.next45.prol, %.lr.ph37.prol ]
  %i.ag = sub nsw i64 %indvars.iv44.ph, %wide.trip.count47
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.prol.loopexit, %.lr.ph37
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.3, %.lr.ph37 ], [ %indvars.iv44.unr, %.lr.ph37.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv44
  store float %i.aj, ptr %i.ak, align 4, !tbaa !58
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45
  %i.am = load float, ptr %i.al, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next45
  store float %i.am, ptr %i.an, align 4, !tbaa !58
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45.1
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !58
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next45.1
  store float %i.ap, ptr %i.aq, align 4, !tbaa !58
  %indvars.iv.next45.2 = add nuw nsw i64 %indvars.iv44, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45.2
  %i.as = load float, ptr %i.ar, align 4, !tbaa !58
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next45.2
  store float %i.as, ptr %i.at, align 4, !tbaa !58
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %exitcond48.not.3 = icmp eq i64 %indvars.iv.next45.3, %wide.trip.count47
  br i1 %exitcond48.not.3, label %.loopexit, label %.lr.ph37, !llvm.loop !89

.preheader30:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader32
  %i.au = icmp ult i32 %2, %3
  br i1 %i.au, label %.lr.ph35.preheader, label %.loopexit

.lr.ph35.preheader:                               ; preds = %.preheader30
  %i.av = zext i32 %2 to i64
  %i.aw = add i64 %4, %i.av
  %i.ax = shl i64 %i.aw, 2
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.ax
  %i.ay = xor i32 %2, -1
  %i.az = add i32 %3, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bc, i1 false), !tbaa !58
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !58
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.be, ptr %i.bf, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !58
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store float %i.bh, ptr %i.bi, align 4, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !58
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store float %i.bk, ptr %i.bl, align 4, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !58
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store float %i.bn, ptr %i.bo, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader30, label %.lr.ph, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph37.prol.loopexit, %.lr.ph37, %middle.block62, %.lr.ph35.preheader, %.preheader30, %.preheader
  store ptr %i.g, ptr %i.c, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIfE22moveSamplesToNewBufferEPKjS3_PKm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  %i.h = shl i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #14
  store ptr %i.j, ptr %i.a, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.o = icmp eq ptr %i.b, null
  br i1 %i.o, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %.03849 = phi i64 [ 0, %.lr.ph50 ], [ %i.cj, %.loopexit ] ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03849 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 13 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03849
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v ; 13 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03849
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43   ; 7 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03849
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 6 uses
  %i.ab = icmp ugt i32 %i.y, %i.aa
  br i1 %i.ab, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.b
  %.not51 = icmp eq i32 %i.y, 0
  br i1 %.not51, label %.preheader41, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader43
  %wide.trip.count = zext i32 %i.y to i64         ; 5 uses
  %min.iters.check72 = icmp ult i32 %i.y, 8
  br i1 %min.iters.check72, label %.lr.ph.preheader84, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph.preheader
  %i.ac = shl i64 %i.v, 2
  %i.ad = add i64 %i.ac, %i.t
  %i.ae = sub i64 %i.r, %i.ad
  %diff.check70 = icmp ugt i64 %i.ae, -32
  br i1 %diff.check70, label %.lr.ph.preheader84, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck69
  %n.vec74 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body75 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load77 = load <4 x float>, ptr %i.af, align 4, !tbaa !58
  %wide.load78 = load <4 x float>, ptr %i.ag, align 4, !tbaa !58
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index76 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x float> %wide.load77, ptr %i.ah, align 4, !tbaa !58
  store <4 x float> %wide.load78, ptr %i.ai, align 4, !tbaa !58
  %index.next79 = add nuw i64 %index76, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.aj, label %middle.block80, label %vector.body75, !llvm.loop !91

end_hunk_1
begin_hunk_2_@_ZN7Imf_3_421TypedDeepImageChannelIjEclEii:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIjEclEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_421TypedDeepImageChannelIjE2atEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIjE2atEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_421TypedDeepImageChannelIjE3rowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_421TypedDeepImageChannelIjE3rowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIjEC2ERNS_14DeepImageLevelEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat($_ZN7Imf_3_421TypedDeepImageChannelIjEC5ERNS_14DeepImageLevelEb) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7Imf_3_412ImageChannelC2ERNS_10ImageLevelEiib(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_421TypedDeepImageChannelIjEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_412ImageChannel6resizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  store ptr null, ptr %i.a, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  %i.g = shl i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #14
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %bb.c
  store ptr %i.i, ptr %i.a, align 8, !tbaa !63
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %_ZN7Imf_3_421TypedDeepImageChannelIjE6resizeEv.exit unwind label %bb.d, !inline_history !99

_ZN7Imf_3_421TypedDeepImageChannelIjE6resizeEv.exit: ; preds = %.noexc4
  ret void

bb.d:                                             ; preds = %.noexc4, %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIjED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN7Imf_3_421TypedDeepImageChannelIjED5Ev) align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN7Imf_3_421TypedDeepImageChannelIjEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN7Imf_3_412ImageChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIjED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN7Imf_3_421TypedDeepImageChannelIjED5Ev) align 2 {
bb.a:
  tail call void @_ZN7Imf_3_421TypedDeepImageChannelIjED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIjE16setSamplesToZeroEmjj(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %scevgep = getelementptr nuw i8, ptr %i.e, i64 %i.g
  %i.h = xor i32 %2, -1
  %i.i = add i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIjE14moveSampleListEmjjm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 13 uses
  %5 = ptrtoaddr ptr %i.d to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %6 = ptrtoaddr ptr %i.f to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %4 ; 13 uses
  %i.h = icmp ugt i32 %2, %3
  br i1 %i.h, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader32
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %.lr.ph.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.i = shl i64 %4, 2
  %i.j = add i64 %i.i, %6
  %i.k = sub i64 %5, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !43
  %wide.load50 = load <4 x i32>, ptr %i.m, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !43
  store <4 x i32> %wide.load50, ptr %i.o, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader30, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader66, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader66 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader66 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.prol
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  store i32 %i.r, ptr %i.s, align 4, !tbaa !43
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !101

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader66
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader66 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.preheader30, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.preheader
  %wide.trip.count47 = zext i32 %3 to i64         ; 5 uses
  %min.iters.check54 = icmp ult i32 %3, 16
  br i1 %min.iters.check54, label %.lr.ph37.preheader65, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph37.preheader
  %i.v = shl i64 %4, 2
  %i.w = add i64 %i.v, %6
  %i.x = sub i64 %5, %i.w
  %diff.check52 = icmp ugt i64 %i.x, -32
  br i1 %diff.check52, label %.lr.ph37.preheader65, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck51
  %n.vec56 = and i64 %wide.trip.count47, 4294967288 ; 3 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next61, %vector.body57 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index58 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load59 = load <4 x i32>, ptr %i.y, align 4, !tbaa !43
  %wide.load60 = load <4 x i32>, ptr %i.z, align 4, !tbaa !43
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index58 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load59, ptr %i.aa, align 4, !tbaa !43
  store <4 x i32> %wide.load60, ptr %i.ab, align 4, !tbaa !43
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.ac, label %middle.block62, label %vector.body57, !llvm.loop !102

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %n.vec56, %wide.trip.count47
  br i1 %cmp.n63, label %.loopexit, label %.lr.ph37.preheader65

.lr.ph37.preheader65:                             ; preds = %vector.memcheck51, %.lr.ph37.preheader, %middle.block62
  %indvars.iv44.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %.lr.ph37.preheader ], [ %n.vec56, %middle.block62 ] ; 3 uses
  %xtraiter67 = and i64 %wide.trip.count47, 3     ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph37.prol.loopexit, label %.lr.ph37.prol

.lr.ph37.prol:                                    ; preds = %.lr.ph37.preheader65, %.lr.ph37.prol
  %indvars.iv44.prol = phi i64 [ %indvars.iv.next45.prol, %.lr.ph37.prol ], [ %indvars.iv44.ph, %.lr.ph37.preheader65 ] ; 3 uses
  %prol.iter69 = phi i64 [ %prol.iter69.next, %.lr.ph37.prol ], [ 0, %.lr.ph37.preheader65 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44.prol
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !43
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv44.prol
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !43
  %indvars.iv.next45.prol = add nuw nsw i64 %indvars.iv44.prol, 1 ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %.lr.ph37.prol.loopexit, label %.lr.ph37.prol, !llvm.loop !103

.lr.ph37.prol.loopexit:                           ; preds = %.lr.ph37.prol, %.lr.ph37.preheader65
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %.lr.ph37.preheader65 ], [ %indvars.iv.next45.prol, %.lr.ph37.prol ]
  %i.ag = sub nsw i64 %indvars.iv44.ph, %wide.trip.count47
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.prol.loopexit, %.lr.ph37
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.3, %.lr.ph37 ], [ %indvars.iv44.unr, %.lr.ph37.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !43
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv44
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !43
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next45
  store i32 %i.am, ptr %i.an, align 4, !tbaa !43
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next45.1
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !43
  %indvars.iv.next45.2 = add nuw nsw i64 %indvars.iv44, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45.2
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !43
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next45.2
  store i32 %i.as, ptr %i.at, align 4, !tbaa !43
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %exitcond48.not.3 = icmp eq i64 %indvars.iv.next45.3, %wide.trip.count47
  br i1 %exitcond48.not.3, label %.loopexit, label %.lr.ph37, !llvm.loop !104

.preheader30:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader32
  %i.au = icmp ult i32 %2, %3
  br i1 %i.au, label %.lr.ph35.preheader, label %.loopexit

.lr.ph35.preheader:                               ; preds = %.preheader30
  %i.av = zext i32 %2 to i64
  %i.aw = add i64 %4, %i.av
  %i.ax = shl i64 %i.aw, 2
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.ax
  %i.ay = xor i32 %2, -1
  %i.az = add i32 %3, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bc, i1 false), !tbaa !43
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !43
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !43
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !43
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !43
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !43
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader30, label %.lr.ph, !llvm.loop !105

.loopexit:                                        ; preds = %.lr.ph37.prol.loopexit, %.lr.ph37, %middle.block62, %.lr.ph35.preheader, %.preheader30, %.preheader
  store ptr %i.g, ptr %i.c, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN7Imf_3_421TypedDeepImageChannelIjE22moveSamplesToNewBufferEPKjS3_PKm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  %i.h = shl i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #14
  store ptr %i.j, ptr %i.a, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.o = icmp eq ptr %i.b, null
  br i1 %i.o, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %.03849 = phi i64 [ 0, %.lr.ph50 ], [ %i.at, %.loopexit ] ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03849 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03849
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03849 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03849 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43   ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.b
  %.not51 = icmp eq i32 %i.w, 0
  br i1 %.not51, label %.preheader41, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  %.not52 = icmp eq i32 %i.y, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader, %.lr.ph48
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph48 ], [ 0, %.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv59
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv59
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !43
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !43
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next60, %i.ae
  br i1 %i.af, label %.lr.ph48, label %.loopexit, !llvm.loop !106

.preheader41.loopexit:                            ; preds = %.lr.ph
  %.pre = load i32, ptr %i.x, align 4, !tbaa !43
  br label %.preheader41

.preheader41:                                     ; preds = %.preheader41.loopexit, %.preheader43
  %i.ag = phi i32 [ %i.y, %.preheader43 ], [ %.pre, %.preheader41.loopexit ]
  %.lcssa = phi i32 [ 0, %.preheader43 ], [ %i.am, %.preheader41.loopexit ] ; 2 uses
  %i.ah = icmp ult i32 %.lcssa, %i.ag
  br i1 %i.ah, label %.lr.ph46.preheader, label %.loopexit

.lr.ph46.preheader:                               ; preds = %.preheader41
  %i.ai = zext i32 %.lcssa to i64
  br label %.lr.ph46

.lr.ph:                                           ; preds = %.preheader43, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader43 ] ; 3 uses
end_hunk_2
