Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/fpositer?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

@_ZTVN6icu_7821FieldPositionIteratorE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6icu_7821FieldPositionIteratorE, ptr @_ZN6icu_7821FieldPositionIteratorD1Ev, ptr @_ZN6icu_7821FieldPositionIteratorD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv] }, align 8
@_ZTIN6icu_7821FieldPositionIteratorE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7821FieldPositionIteratorE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7821FieldPositionIteratorE = constant [33 x i8] c"N6icu_7821FieldPositionIteratorE\00", align 1
@_ZTIN6icu_787UObjectE = external constant ptr

@_ZN6icu_7821FieldPositionIteratorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7821FieldPositionIteratorD2Ev
@_ZN6icu_7821FieldPositionIteratorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7821FieldPositionIteratorC2Ev
@_ZN6icu_7821FieldPositionIteratorC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7821FieldPositionIteratorC2ERKS0_

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7821FieldPositionIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) initializes((0, 8), (16, 20)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7821FieldPositionIteratorE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.g, align 8, !tbaa !15
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7821FieldPositionIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7821FieldPositionIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) #8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7821FieldPositionIteratorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7821FieldPositionIteratorE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.b, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7821FieldPositionIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7821FieldPositionIteratorE, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  store i32 %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.h = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #8 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke void @_ZN6icu_789UVector32C1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.b, align 8, !tbaa !10
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  invoke void @_ZN6icu_789UVector326assignERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4, !tbaa !16
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.b, align 8, !tbaa !10
  store i32 -1, ptr %i.c, align 8, !tbaa !15
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.h) #8
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.p, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #8
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN6icu_789UVector32C1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6icu_789UVector326assignERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_7821FieldPositionIteratoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(20) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %.not11 = icmp eq ptr %i.g, null                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 2 uses
  %i.j = icmp eq ptr %i.i, null                   ; 2 uses
  %brmerge = select i1 %.not11, i1 true, i1 %i.j
  %.mux = select i1 %.not11, i1 %i.j, i1 false
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK6icu_789UVector32eqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ %.mux, %bb.c ], [ true, %bb.a ], [ false, %bb.b ], [ %i.k, %bb.d ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK6icu_789UVector32eqERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7821FieldPositionIterator7setDataEPNS_9UVector32ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 5 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader, label %.loopexit.thread.thread

.preheader:                                       ; preds = %bb.c
  %i.h = icmp sgt i32 %i.e, 2
  br i1 %i.h, label %_ZNK6icu_789UVector3210elementAtiEi.exit.lr.ph, label %.loopexit.thread37

_ZNK6icu_789UVector3210elementAtiEi.exit.lr.ph:   ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = zext nneg i32 %i.e to i64
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit

.loopexit.thread.thread:                          ; preds = %bb.c
  store i32 1, ptr %2, align 4, !tbaa !16
  br label %bb.g

bb.d:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next to i32
  %4 = icmp sgt i32 %i.e, %3
  br i1 %4, label %_ZNK6icu_789UVector3210elementAtiEi.exit, label %.loopexit, !llvm.loop !22

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 2, %_ZNK6icu_789UVector3210elementAtiEi.exit.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %i.n = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.o = icmp samesign ult i64 %i.n, %i.k
  br i1 %i.o, label %bb.e, label %_ZNK6icu_789UVector3210elementAtiEi.exit24

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit24

_ZNK6icu_789UVector3210elementAtiEi.exit24:       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %bb.e
  %i.r = phi i32 [ %i.q, %bb.e ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit ]
  %.not22 = icmp slt i32 %i.m, %i.r
  br i1 %.not22, label %bb.d, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit24
  store i32 1, ptr %2, align 4, !tbaa !16
  br label %.loopexit.thread

.loopexit:                                        ; preds = %bb.d, %bb.a
  %i.s = icmp sgt i32 %i.a, 0
  br i1 %i.s, label %.loopexit.thread, label %.loopexit.thread37

.thread:                                          ; preds = %bb.b
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  %i.w = load i32, ptr %2, align 4, !tbaa !16
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.thread29, label %.loopexit.thread37

.loopexit.thread:                                 ; preds = %bb.f, %.loopexit
  %i.y = icmp eq ptr %1, null
  br i1 %i.y, label %.thread29, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread.thread, %.loopexit.thread
  %i.z = load ptr, ptr %1, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  br label %.thread29

.loopexit.thread37:                               ; preds = %.preheader, %.thread, %.loopexit
  %.01927 = phi ptr [ null, %.thread ], [ %1, %.loopexit ], [ %1, %.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.thread37
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit.thread37
  store ptr %.01927, ptr %i.ac, align 8, !tbaa !10
  %i.ai = icmp eq ptr %.01927, null
  %i.aj = sext i1 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !15
  br label %.thread29

.thread29:                                        ; preds = %.thread, %.loopexit.thread, %bb.g, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7821FieldPositionIterator4nextERNS_13FieldPositionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  %i.g = add nsw i32 %i.b, 2                      ; 3 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !15
  %i.h = icmp sgt i32 %i.b, -2
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, %i.d
  %or.cond.i = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK6icu_789UVector3210elementAtiEi.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = zext nneg i32 %i.d to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %bb.b, %bb.c
  %i.q = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = add nsw i32 %i.b, 3                      ; 3 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !15
  %i.t = icmp sgt i32 %i.b, -3
  %i.u = load i32, ptr %i.i, align 8
  %i.v = icmp sgt i32 %i.u, %i.g
  %or.cond.i5 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond.i5, label %bb.d, label %_ZNK6icu_789UVector3210elementAtiEi.exit6

bb.d:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = zext nneg i32 %i.g to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit6

_ZNK6icu_789UVector3210elementAtiEi.exit6:        ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %bb.d
  %i.ab = phi i32 [ %i.aa, %bb.d ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !27
  %i.ad = add nsw i32 %i.b, 4                     ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !15
  %i.ae = icmp sgt i32 %i.b, -4
  %i.af = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %i.s
  %or.cond.i7 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i7, label %bb.e, label %_ZNK6icu_789UVector3210elementAtiEi.exit8

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = zext nneg i32 %i.s to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit8

_ZNK6icu_789UVector3210elementAtiEi.exit8:        ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit6, %bb.e
  %i.am = phi i32 [ %i.al, %bb.e ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit6 ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.am, ptr %i.an, align 8, !tbaa !28
  %i.ao = icmp eq i32 %i.ad, %i.af
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit8
  store i32 -1, ptr %i.a, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit8, %bb.f, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.f ], [ 1, %_ZNK6icu_789UVector3210elementAtiEi.exit8 ]
  ret i8 %.0
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTSN6icu_7821FieldPositionIteratorE", !12, i64 0, !13, i64 8, !5, i64 16}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"p1 _ZTSN6icu_789UVector32E", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!11, !5, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"_ZTS10UErrorCode", !6, i64 0}
!18 = !{!19, !5, i64 8}
!19 = !{!"_ZTSN6icu_789UVector32E", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !20, i64 24}
!20 = !{!"p1 int", !14, i64 0}
!21 = !{!19, !20, i64 24}
!22 = distinct !{!22, !23}
end_hunk_0
