Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uniset_props?download=true
inline.NumInlined: 175
inline.NumDeleted: 65
begin_hunk_0_@_ZN6icu_7810UnicodeSetC2ERKNS_13UnicodeStringER10UErrorCode:bb.a

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.i

.body:                                            ; preds = %bb.g, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.p, %bb.c ]
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN6icu_7813UnicodeFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #14
  resume { ptr, i32 } %.pn.i

bb.i:                                             ; preds = %bb.h, %bb.b
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::ParsePosition", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %3, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -1, ptr %i.c, align 4, !tbaa !31
  invoke void @_ZN6icu_7810UnicodeSet23applyPatternIgnoreSpaceERKNS_13UnicodeStringERNS_13ParsePositionEPKNS_11SymbolTableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !11
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = load i32, ptr %i.b, align 8, !tbaa !30
  store i32 %i.g, ptr %i.a, align 4, !tbaa !32
  %i.h = invoke noundef i32 @_ZN6icu_7811ICU_Utility14skipWhitespaceERKNS_13UnicodeStringERia(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i8 noundef signext 1)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 4, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %.not12 = icmp eq i32 %i.i, %i.q
  br i1 %.not12, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %0

bb.j:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.f, %bb.c ]
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet23applyPatternIgnoreSpaceERKNS_13UnicodeStringERNS_13ParsePositionEPKNS_11SymbolTableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %6 = alloca %"class.icu_78::RuleCharacterIterator", align 8 ; 6 uses
  %i.a = alloca { i64, i64 }, align 8             ; 4 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  %narrow.i.not = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 30, ptr %4, align 4, !tbaa !11
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.i, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZN6icu_7821RuleCharacterIteratorC1ERKNS_13UnicodeStringEPKNS_11SymbolTableERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7810UnicodeSet12applyPatternERNS_21RuleCharacterIteratorEPKNS_11SymbolTableERNS_13UnicodeStringEjMS0_FRS0_iEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 1, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.j = load i32, ptr %4, align 4, !tbaa !11
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.j, %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.l

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 65538, ptr %4, align 4, !tbaa !11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN6icu_7810UnicodeSet10setPatternERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.c
  ret void
}

declare noundef i32 @_ZN6icu_7811ICU_Utility14skipWhitespaceERKNS_13UnicodeStringERia(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

declare void @_ZN6icu_7821RuleCharacterIteratorC1ERKNS_13UnicodeStringEPKNS_11SymbolTableERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet12applyPatternERNS_21RuleCharacterIteratorEPKNS_11SymbolTableERNS_13UnicodeStringEjMS0_FRS0_iEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, ptr nofree noundef readonly byval({ i64, i64 }) align 8 captures(none) %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 31 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %10 = alloca %"struct.icu_78::RuleCharacterIterator::Pos", align 8 ; 14 uses
  %i.k = alloca i8, align 1                       ; 31 uses
  %i.l = alloca { i64, i64 }, align 16            ; 4 uses
  %.elt256 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.unpack.a = load i64, ptr %.elt256, align 8, !tbaa !14
  %11 = load <2 x i64>, ptr %5, align 8, !tbaa !14
  %.unpack257 = load i64, ptr %5, align 8, !tbaa !14 ; 3 uses
  %i.m = load i32, ptr %7, align 4, !tbaa !11
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.em

bb.b:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %6, 100
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %7, align 4, !tbaa !11
  br label %bb.em

bb.d:                                             ; preds = %bb.b
  %i.p = and i32 %4, 1
  %.not258 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not258, i32 3, i32 7 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i16 2, ptr %i.q, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %9, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 2, ptr %i.r, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.s = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet5clearEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %.preheader402 unwind label %.loopexit.split-lp404 ; 0 uses

.preheader402:                                    ; preds = %bb.d
  %.not265 = icmp ne ptr %2, null                 ; 4 uses
  %i.t = add nsw i32 %6, 1
  br label %bb.e

bb.e:                                             ; preds = %.critedge297, %.preheader402
  %.0216499 = phi i8 [ 0, %.preheader402 ], [ %.3219, %.critedge297 ] ; 7 uses
  %.0221498 = phi i16 [ 0, %.preheader402 ], [ %.3224, %.critedge297 ] ; 9 uses
  %.0225497 = phi i32 [ 0, %.preheader402 ], [ %.2227, %.critedge297 ] ; 8 uses
  %i.u = phi i1 [ false, %.preheader402 ], [ true, %.critedge297 ]
  %i.v = phi i1 [ true, %.preheader402 ], [ false, %.critedge297 ] ; 2 uses
  %.0228496 = phi i8 [ 0, %.preheader402 ], [ 1, %.critedge297 ] ; 2 uses
  %.0233495 = phi i8 [ 0, %.preheader402 ], [ %.3236, %.critedge297 ] ; 5 uses
  %.0237494 = phi i8 [ 0, %.preheader402 ], [ %.3240, %.critedge297 ] ; 4 uses
  %.sroa.0313.0493 = phi ptr [ null, %.preheader402 ], [ %.sroa.0313.4, %.critedge297 ] ; 27 uses
  %i.w = invoke noundef signext i8 @_ZNK6icu_7821RuleCharacterIterator5atEndEv(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.h unwind label %.loopexit403.loopexit.split-lp

bb.f:                                             ; preds = %bb.cn, %bb.cg
  %.3236.jt38 = phi i8 [ 2, %bb.cn ], [ %.0233495580879, %bb.cg ] ; 2 uses
  %.3224.jt38 = phi i16 [ 38, %bb.cn ], [ 45, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  %i.x = invoke noundef signext i8 @_ZNK6icu_7821RuleCharacterIterator5atEndEv(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.i unwind label %.loopexit403.loopexit

bb.g:                                             ; preds = %.critedge297.jt0
  %i.y = invoke noundef signext i8 @_ZNK6icu_7821RuleCharacterIterator5atEndEv(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.j unwind label %.loopexit403.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %.not260 = icmp eq i8 %i.w, 0
  br i1 %.not260, label %bb.k, label %.critedge.thread385

bb.i:                                             ; preds = %bb.f
  %.not260.jt38 = icmp eq i8 %i.x, 0
  br i1 %.not260.jt38, label %bb.l, label %.critedge.thread385

bb.j:                                             ; preds = %bb.g
  %.not260.jt0 = icmp eq i8 %i.y, 0
  br i1 %.not260.jt0, label %bb.m, label %.critedge.thread385

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i8 0, ptr %i.k, align 1, !tbaa !14
  %i.z = invoke noundef signext i8 @_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERNS_21RuleCharacterIteratorEi(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i8 0, ptr %i.k, align 1, !tbaa !14
  %i.aa = invoke noundef signext i8 @_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERNS_21RuleCharacterIteratorEi(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i8 0, ptr %i.k, align 1, !tbaa !14
  %i.ab = invoke noundef signext i8 @_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERNS_21RuleCharacterIteratorEi(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.n:                                             ; preds = %bb.k
  %.not261 = icmp eq i8 %i.z, 0
  br i1 %.not261, label %bb.q, label %.thread317

bb.o:                                             ; preds = %bb.l
  %.not261.jt38 = icmp eq i8 %i.aa, 0
  br i1 %.not261.jt38, label %bb.r, label %.thread317.jt38

bb.p:                                             ; preds = %bb.m
  %.not261.jt0 = icmp eq i8 %i.ab, 0
  br i1 %.not261.jt0, label %bb.s, label %.thread317.jt0

.loopexit403.loopexit:                            ; preds = %bb.f
  %lpad.loopexit639 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit403

.loopexit403.loopexit.split-lp:                   ; preds = %bb.e, %bb.g
  %.sroa.0313.0493585.ph = phi ptr [ %.sroa.0313.4.jt0, %bb.g ], [ %.sroa.0313.0493, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit403

.loopexit.split-lp404:                            ; preds = %bb.d, %.critedge.thread, %bb.eb, %bb.ed, %bb.ee, %bb.eh, %bb.eg
  %.sroa.0313.1.ph = phi ptr [ null, %bb.d ], [ %.sroa.0313.6382, %.critedge.thread ], [ %.sroa.0313.6382, %bb.eb ], [ %.sroa.0313.6382, %bb.ed ], [ %.sroa.0313.6382, %bb.ee ], [ %.sroa.0313.6382, %bb.eg ], [ %.sroa.0313.6382, %bb.eh ]
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit403

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNK6icu_7821RuleCharacterIterator6getPosERNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.o
  invoke void @_ZNK6icu_7821RuleCharacterIterator6getPosERNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.p
  invoke void @_ZNK6icu_7821RuleCharacterIterator6getPosERNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.q
  %i.ac = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 4 uses

bb.u:                                             ; preds = %bb.r
  %i.ad = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.v:                                             ; preds = %bb.s
  %i.ae = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 4 uses

bb.w:                                             ; preds = %bb.t
  %i.af = load i32, ptr %7, align 4, !tbaa !11
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.z, label %.critedge297.thread

bb.x:                                             ; preds = %bb.u
  %i.ah = load i32, ptr %7, align 4, !tbaa !11
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.aa, label %.critedge297.thread

bb.y:                                             ; preds = %bb.v
  %i.aj = load i32, ptr %7, align 4, !tbaa !11
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ab, label %.critedge297.thread

bb.z:                                             ; preds = %bb.w
  %i.al = icmp ne i32 %i.ac, 91
  %i.am = load i8, ptr %i.k, align 1
  %i.an = icmp ne i8 %i.am, 0
  %or.cond = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond, label %bb.ar, label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.ao = icmp ne i32 %i.ad, 91
  %i.ap = load i8, ptr %i.k, align 1
  %i.aq = icmp ne i8 %i.ap, 0
  %or.cond.jt38 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.jt38, label %bb.as, label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.ar = icmp ne i32 %i.ae, 91
  %i.as = load i8, ptr %i.k, align 1
  %i.at = icmp ne i8 %i.as, 0
  %or.cond.jt0 = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond.jt0, label %bb.at, label %bb.af

bb.ac:                                            ; preds = %bb.z
  br i1 %i.u, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6icu_7821RuleCharacterIterator6setPosERKNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.thread317 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.ae:                                            ; preds = %bb.aa
  invoke void @_ZN6icu_7821RuleCharacterIterator6setPosERKNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.thread317.jt38 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ab
  invoke void @_ZN6icu_7821RuleCharacterIterator6setPosERKNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.thread317.jt0 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 91, ptr %i.j, align 2, !tbaa !35
  %i.au = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 1)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZNK6icu_7821RuleCharacterIterator6getPosERNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.av = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.aw = load i32, ptr %7, align 4, !tbaa !11
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ak, label %.critedge297.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ay = icmp ne i32 %i.av, 94
  %i.az = load i8, ptr %i.k, align 1
  %i.ba = icmp ne i8 %i.az, 0
  %or.cond6 = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond6, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i16 94, ptr %i.i, align 2, !tbaa !35
  %i.bb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_ZNK6icu_7821RuleCharacterIterator6getPosERNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.am
  %i.bc = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.bd = load i32, ptr %7, align 4, !tbaa !11
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.ap, label %.critedge297.thread

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %.1217 = phi i8 [ %.0216499, %bb.ak ], [ 1, %bb.ao ] ; 2 uses
  %.0212 = phi i32 [ %i.av, %bb.ak ], [ %i.bc, %bb.ao ]
  %i.bf = icmp eq i32 %.0212, 45
  br i1 %i.bf, label %.thread348, label %bb.aq

.thread348:                                       ; preds = %bb.ap
  store i8 1, ptr %i.k, align 1, !tbaa !14
  br label %.loopexit637

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6icu_7821RuleCharacterIterator6setPosERKNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.critedge297 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, !llvm.loop !61

bb.ar:                                            ; preds = %bb.z
  br i1 %.not265, label %bb.au, label %.thread.preheader

bb.as:                                            ; preds = %bb.aa
  br i1 %.not265, label %bb.av, label %.thread.backedge.backedge

.thread.backedge.backedge:                        ; preds = %bb.as, %bb.ay
  br label %.thread.backedge

bb.at:                                            ; preds = %bb.ab
  br i1 %.not265, label %bb.aw, label %.thread.preheader

bb.au:                                            ; preds = %bb.ar
  %i.bg = load ptr, ptr %2, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ac)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 3 uses

bb.av:                                            ; preds = %bb.as
  %i.bk = load ptr, ptr %2, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ad)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.aw:                                            ; preds = %bb.at
  %i.bo = load ptr, ptr %2, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ae)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 3 uses

bb.ax:                                            ; preds = %bb.au
  %.not266 = icmp eq ptr %i.bj, null
  br i1 %.not266, label %.thread.preheader, label %bb.ba

.thread.preheader:                                ; preds = %bb.ar, %bb.ax, %bb.at, %bb.az
  %.ph = phi i32 [ %i.ac, %bb.ar ], [ %i.ac, %bb.ax ], [ %i.ae, %bb.at ], [ %i.ae, %bb.az ]
  %.sroa.0313.0493590.ph = phi ptr [ %.sroa.0313.0493, %bb.ar ], [ %.sroa.0313.0493, %bb.ax ], [ %.sroa.0313.4.jt0, %bb.at ], [ %.sroa.0313.4.jt0, %bb.az ] ; 45 uses
  %.0237494583.ph = phi i8 [ %.0237494, %bb.ar ], [ %.0237494, %bb.ax ], [ %.3240.jt0, %bb.at ], [ %.3240.jt0, %bb.az ] ; 6 uses
  %.0233495580.ph = phi i8 [ %.0233495, %bb.ar ], [ %.0233495, %bb.ax ], [ %.3236.jt0, %bb.at ], [ %.3236.jt0, %bb.az ]
  %.ph636 = phi i1 [ %i.v, %bb.ar ], [ %i.v, %bb.ax ], [ false, %bb.at ], [ false, %bb.az ]
  %.0225497576.ph = phi i32 [ %.0225497, %bb.ar ], [ %.0225497, %bb.ax ], [ %.2227.jt0, %bb.at ], [ %.2227.jt0, %bb.az ] ; 16 uses
  %.0221498571.ph = phi i16 [ %.0221498, %bb.ar ], [ %.0221498, %bb.ax ], [ 0, %bb.at ], [ 0, %bb.az ]
  %.0216499566.ph = phi i8 [ %.0216499, %bb.ar ], [ %.0216499, %bb.ax ], [ %.3219.jt0, %bb.at ], [ %.3219.jt0, %bb.az ] ; 8 uses
  br i1 %.ph636, label %.critedge297.thread.sink.split, label %.thread.backedge

bb.ay:                                            ; preds = %bb.av
  %.not266.jt38 = icmp eq ptr %i.bn, null
  br i1 %.not266.jt38, label %.thread.backedge.backedge, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %.not266.jt0 = icmp eq ptr %i.br, null
  br i1 %.not266.jt0, label %.thread.preheader, label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !13
  %.not = icmp eq ptr %i.bs, getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16)
  br i1 %.not, label %.thread317, label %.critedge297.thread.sink.split

bb.bb:                                            ; preds = %bb.ay
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !13
  %.not.jt38 = icmp eq ptr %i.bt, getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16)
  br i1 %.not.jt38, label %.thread317.jt38, label %.critedge297.thread.sink.split

bb.bc:                                            ; preds = %bb.az
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !13
  %.not.jt0 = icmp eq ptr %i.bu, getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16)
  br i1 %.not.jt0, label %.thread317.jt0, label %.critedge297.thread.sink.split

.thread317:                                       ; preds = %bb.ba, %bb.n, %bb.ad
  %.1229 = phi i8 [ %.0228496, %bb.n ], [ 1, %bb.ad ], [ %.0228496, %bb.ba ] ; 4 uses
  %.3210 = phi ptr [ null, %bb.n ], [ null, %bb.ad ], [ %i.bj, %bb.ba ] ; 4 uses
  %.3206 = phi i8 [ 2, %bb.n ], [ 1, %bb.ad ], [ 3, %bb.ba ] ; 4 uses
  %i.bv = icmp eq i8 %.0233495, 1
  br i1 %i.bv, label %bb.bd, label %bb.bf

.thread317.jt38:                                  ; preds = %bb.o, %bb.ae, %bb.bb
  %.3210.jt38 = phi ptr [ null, %bb.ae ], [ %i.bn, %bb.bb ], [ null, %bb.o ]
  %.3206.jt38 = phi i8 [ 1, %bb.ae ], [ 3, %bb.bb ], [ 2, %bb.o ]
  %i.bw = icmp eq i8 %.3236.jt38, 1
  br i1 %i.bw, label %.critedge297.thread.sink.split, label %bb.bg

.thread317.jt0:                                   ; preds = %bb.p, %bb.af, %bb.bc
  %.3210.jt0 = phi ptr [ null, %bb.p ], [ %i.br, %bb.bc ], [ null, %bb.af ] ; 2 uses
  %.3206.jt0 = phi i8 [ 2, %bb.p ], [ 3, %bb.bc ], [ 1, %bb.af ] ; 2 uses
  %i.bx = icmp eq i8 %.3236.jt0, 1
  br i1 %i.bx, label %.thread603, label %.thread331

bb.bd:                                            ; preds = %.thread317
  %.not280 = icmp eq i16 %.0221498, 0
  br i1 %.not280, label %.thread603, label %.critedge297.thread.sink.split

.thread603:                                       ; preds = %.thread317.jt0, %bb.bd
  %.0216499563617 = phi i8 [ %.0216499, %bb.bd ], [ %.3219.jt0, %.thread317.jt0 ]
  %.0225497573616 = phi i32 [ %.0225497, %bb.bd ], [ %.2227.jt0, %.thread317.jt0 ] ; 4 uses
  %.sroa.0313.0493587615 = phi ptr [ %.sroa.0313.0493, %bb.bd ], [ %.sroa.0313.4.jt0, %.thread317.jt0 ] ; 3 uses
  %.1229594614 = phi i8 [ %.1229, %bb.bd ], [ 1, %.thread317.jt0 ]
  %.3210597613 = phi ptr [ %.3210, %bb.bd ], [ %.3210.jt0, %.thread317.jt0 ]
  %.3206600612 = phi i8 [ %.3206, %bb.bd ], [ %.3206.jt0, %.thread317.jt0 ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.0225497573616, i32 noundef %.0225497573616)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.be:                                            ; preds = %.thread603
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.0225497573616, i8 noundef signext 0)
          to label %.thread331 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.bf:                                            ; preds = %.thread317
  switch i16 %.0221498, label %.thread331 [
    i16 45, label %bb.bg
    i16 38, label %bb.bg
  ]

bb.bg:                                            ; preds = %.thread317.jt38, %bb.bf, %bb.bf
  %.3206601 = phi i8 [ %.3206, %bb.bf ], [ %.3206, %bb.bf ], [ %.3206.jt38, %.thread317.jt38 ]
  %.3210598 = phi ptr [ %.3210, %bb.bf ], [ %.3210, %bb.bf ], [ %.3210.jt38, %.thread317.jt38 ]
  %.1229595 = phi i8 [ %.1229, %bb.bf ], [ %.1229, %bb.bf ], [ 1, %.thread317.jt38 ]
  %.sroa.0313.0493588 = phi ptr [ %.sroa.0313.0493, %bb.bf ], [ %.sroa.0313.0493, %bb.bf ], [ %.sroa.0313.0493590.ph, %.thread317.jt38 ] ; 2 uses
  %.0225497574 = phi i32 [ %.0225497, %bb.bf ], [ %.0225497, %bb.bf ], [ %.0225497576.ph, %.thread317.jt38 ]
  %.0221498569 = phi i16 [ %.0221498, %bb.bf ], [ %.0221498, %bb.bf ], [ %.3224.jt38, %.thread317.jt38 ] ; 2 uses
  %.0216499564 = phi i8 [ %.0216499, %bb.bf ], [ %.0216499, %bb.bf ], [ %.0216499566.ph, %.thread317.jt38 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 %.0221498569, ptr %i.h, align 2, !tbaa !35
  %i.bz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit303 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit303:      ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread331

.thread331:                                       ; preds = %.thread317.jt0, %bb.be, %_ZN6icu_7813UnicodeString6appendEDs.exit303, %bb.bf
  %.3206602 = phi i8 [ %.3206, %bb.bf ], [ %.3206600612, %bb.be ], [ %.3206601, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ %.3206.jt0, %.thread317.jt0 ]
  %.3210599 = phi ptr [ %.3210, %bb.bf ], [ %.3210597613, %bb.be ], [ %.3210598, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ %.3210.jt0, %.thread317.jt0 ] ; 2 uses
  %.1229596 = phi i8 [ %.1229, %bb.bf ], [ %.1229594614, %bb.be ], [ %.1229595, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ 1, %.thread317.jt0 ]
  %.sroa.0313.0493592 = phi ptr [ %.sroa.0313.0493, %bb.bf ], [ %.sroa.0313.0493587615, %bb.be ], [ %.sroa.0313.0493588, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ %.sroa.0313.4.jt0, %.thread317.jt0 ] ; 4 uses
  %.0225497577 = phi i32 [ %.0225497, %bb.bf ], [ %.0225497573616, %bb.be ], [ %.0225497574, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ %.2227.jt0, %.thread317.jt0 ] ; 3 uses
  %.0216499567 = phi i8 [ %.0216499, %bb.bf ], [ %.0216499563617, %bb.be ], [ %.0216499564, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ %.3219.jt0, %.thread317.jt0 ] ; 4 uses
  %.1222335 = phi i16 [ %.0221498, %bb.bf ], [ 0, %bb.be ], [ %.0221498569, %_ZN6icu_7813UnicodeString6appendEDs.exit303 ], [ 0, %.thread317.jt0 ]
  %i.ca = icmp eq ptr %.3210599, null
  br i1 %i.ca, label %bb.bh, label %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread

bb.bh:                                            ; preds = %.thread331
  %i.cb = icmp eq ptr %.sroa.0313.0493592, null
  br i1 %i.cb, label %bb.bi, label %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.cc = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #14 ; 5 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.critedge297.thread.sink.split, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.cc)
          to label %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.cc) #14
  br label %.body

_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread: ; preds = %bb.bj, %bb.bh, %.thread331
  %.sroa.0313.2 = phi ptr [ %.sroa.0313.0493592, %.thread331 ], [ %.sroa.0313.0493592, %bb.bh ], [ %i.cc, %bb.bj ] ; 13 uses
  %.4211 = phi ptr [ %.3210599, %.thread331 ], [ %.sroa.0313.0493592, %bb.bh ], [ %i.cc, %bb.bj ] ; 7 uses
  switch i8 %.3206602, label %default.unreachable559 [
    i8 1, label %bb.bl
    i8 2, label %bb.bn
    i8 3, label %bb.bq
  ]

bb.bl:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store <2 x i64> %11, ptr %i.l, align 16, !tbaa !14
  invoke void @_ZN6icu_7810UnicodeSet12applyPatternERNS_21RuleCharacterIteratorEPKNS_11SymbolTableERNS_13UnicodeStringEjMS0_FRS0_iEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %.4211, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.l, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %bb.br

bb.bn:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread
  invoke void @_ZN6icu_7821RuleCharacterIterator11skipIgnoredEi(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN6icu_7810UnicodeSet20applyPropertyPatternERNS_21RuleCharacterIteratorERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %.4211, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.bp:                                            ; preds = %bb.bo
  %i.cf = load i32, ptr %7, align 4, !tbaa !11
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.br, label %.critedge297.thread

bb.bq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread
  %i.ch = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(200) %.4211, ptr noundef nonnull align 8 dereferenceable(64) %8, i8 noundef signext 0)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

default.unreachable559:                           ; preds = %.loopexit637, %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointer8allocateEv.exit.thread
  unreachable

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bm
  %i.ci = icmp eq i8 %.1229596, 0
  br i1 %i.ci, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.cj = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %.4211)
          to label %.critedge297.thread368 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge297.thread368:                           ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %.critedge.thread

bb.bt:                                            ; preds = %bb.br
  switch i16 %.1222335, label %.unreachabledefault [
    i16 45, label %bb.bu
    i16 38, label %bb.bv
    i16 0, label %bb.bw
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ck = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %.4211)
          to label %.critedge297.jt0 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, !llvm.loop !61 ; 0 uses

bb.bv:                                            ; preds = %bb.bt
  %i.cl = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %.4211)
          to label %.critedge297.jt0 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, !llvm.loop !61 ; 0 uses

bb.bw:                                            ; preds = %bb.bt
  %i.cm = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %.4211)
          to label %.critedge297.jt0 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, !llvm.loop !61 ; 0 uses

.unreachabledefault:                              ; preds = %bb.bt
  unreachable

.thread.backedge:                                 ; preds = %.thread.preheader, %.thread.backedge.backedge
  %.0221498571880 = phi i16 [ %.3224.jt38, %.thread.backedge.backedge ], [ %.0221498571.ph, %.thread.preheader ] ; 8 uses
  %.0233495580879 = phi i8 [ %.3236.jt38, %.thread.backedge.backedge ], [ %.0233495580.ph, %.thread.preheader ] ; 10 uses
  %i.cn = phi i32 [ %i.ad, %.thread.backedge.backedge ], [ %.ph, %.thread.preheader ] ; 3 uses
  %.pr = load i8, ptr %i.k, align 1, !tbaa !14
  %.not269 = icmp eq i8 %.pr, 0
  br i1 %.not269, label %bb.bx, label %.loopexit637

bb.bx:                                            ; preds = %.thread.backedge
  switch i32 %i.cn, label %.loopexit637 [
    i32 93, label %bb.by
    i32 45, label %bb.cf
    i32 38, label %bb.cn
    i32 94, label %.critedge297.thread.sink.split
    i32 123, label %bb.co
    i32 36, label %bb.dc
  ]

bb.by:                                            ; preds = %bb.bx
  %i.co = icmp eq i8 %.0233495580879, 1
  br i1 %i.co, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.cp = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.0225497576.ph, i32 noundef %.0225497576.ph)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.0225497576.ph, i8 noundef signext 0)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca, %bb.by
  switch i16 %.0221498571880, label %bb.ce [
    i16 45, label %bb.cc
    i16 38, label %.critedge297.thread.sink.split
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.cq = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 45, i32 noundef 45)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 45, ptr %i.g, align 2, !tbaa !35
  %i.cr = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit304 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit304:      ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit304, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 93, ptr %i.f, align 2, !tbaa !35
  %i.cs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1)
          to label %.critedge297.thread628 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge297.thread628:                           ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %.critedge.thread.loopexit

bb.cf:                                            ; preds = %bb.bx
  %i.ct = icmp eq i16 %.0221498571880, 0
  br i1 %i.ct, label %bb.cg, label %.critedge297.thread.sink.split

bb.cg:                                            ; preds = %bb.cf
  %.not276 = icmp eq i8 %.0233495580879, 0
  br i1 %.not276, label %bb.ch, label %bb.f, !llvm.loop !61

bb.ch:                                            ; preds = %bb.cg
  %i.cu = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 45, i32 noundef 45)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.cv = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.cw = load i32, ptr %7, align 4, !tbaa !11
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %bb.ck, label %.critedge297.thread

bb.ck:                                            ; preds = %bb.cj
  %i.cy = icmp ne i32 %i.cv, 93
  %i.cz = load i8, ptr %i.k, align 1
  %i.da = icmp ne i8 %i.cz, 0
  %or.cond11 = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond11, label %.critedge297.thread.sink.split, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.db = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 2)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit unwind label %bb.cm ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit: ; preds = %bb.cl
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str) #14, !srcloc !63
  br label %.critedge297.jt0, !llvm.loop !61

bb.cm:                                            ; preds = %bb.cl
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str) #14, !srcloc !63
  br label %.body

bb.cn:                                            ; preds = %bb.bx
  %i.dd = icmp eq i8 %.0233495580879, 2
  %i.de = icmp eq i16 %.0221498571880, 0
  %or.cond14 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond14, label %bb.f, label %..critedge297.thread.sink.split.loopexit778_crit_edge883, !llvm.loop !61

bb.co:                                            ; preds = %bb.bx
  %.not272 = icmp eq i16 %.0221498571880, 0
  br i1 %.not272, label %bb.cp, label %.critedge297.thread.sink.split

bb.cp:                                            ; preds = %bb.co
  %i.df = icmp eq i8 %.0233495580879, 1
  br i1 %i.df, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.dg = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.0225497576.ph, i32 noundef %.0225497576.ph)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.0225497576.ph, i8 noundef signext 0)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %i.dh = invoke noundef signext i8 @_ZN6icu_7813UnicodeString8truncateEi(ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

.preheader:                                       ; preds = %bb.cs, %bb.cx
  %i.di = invoke noundef signext i8 @_ZNK6icu_7821RuleCharacterIterator5atEndEv(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %.preheader
  %.not273.not = icmp eq i8 %i.di, 0
  br i1 %.not273.not, label %bb.cu, label %.critedge297.thread.sink.split

bb.cu:                                            ; preds = %bb.ct
  %i.dj = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
end_hunk_0
begin_hunk_1_@_ZN6icu_7810UnicodeSet12applyPatternERNS_21RuleCharacterIteratorEPKNS_11SymbolTableERNS_13UnicodeStringEjMS0_FRS0_iEiR10UErrorCode:bb.a
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.dd:                                            ; preds = %bb.dc
  %i.dt = invoke noundef i32 @_ZN6icu_7821RuleCharacterIterator4nextEiRaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.du = load i32, ptr %7, align 4, !tbaa !11
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %bb.df, label %.critedge297.thread

bb.df:                                            ; preds = %bb.de
  %i.dw = icmp eq i32 %i.dt, 93
  %i.dx = load i8, ptr %i.k, align 1
  %.not271 = icmp eq i8 %i.dx, 0
  %i.dy = select i1 %i.dw, i1 %.not271, i1 false  ; 2 uses
  %or.cond18 = select i1 %.not265, i1 true, i1 %i.dy
  br i1 %or.cond18, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN6icu_7821RuleCharacterIterator6setPosERKNS0_3PosE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.loopexit637 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit: ; preds = %bb.ae, %bb.af, %bb.aw, %bb.v, %bb.s, %bb.m, %bb.ds, %bb.dn, %bb.dm, %bb.db, %bb.cz, %bb.bg, %bb.al, %bb.ag, %bb.au, %bb.k, %bb.q, %bb.t, %bb.ad, %bb.ah, %bb.ai, %bb.am, %bb.an, %bb.aq, %.thread603, %bb.be, %bb.bl, %bb.bn, %bb.bo, %bb.bq, %bb.bu, %bb.bv, %bb.bw, %bb.ch, %bb.ci, %bb.cq, %bb.cr, %bb.cs, %bb.cy, %bb.da, %bb.dc, %bb.dd, %bb.dq, %bb.dr, %bb.dt, %bb.du, %bb.dv, %bb.dl, %bb.dk, %bb.dj, %bb.dg
  %.sroa.0313.3.ph.ph.ph.ph = phi ptr [ %.sroa.0313.0493593, %bb.dt ], [ %.sroa.0313.0493593, %bb.ds ], [ %.sroa.0313.0493593, %bb.dr ], [ %.sroa.0313.0493593, %bb.dq ], [ %.sroa.0313.0493593, %bb.dv ], [ %.sroa.0313.0493593, %bb.du ], [ %.sroa.0313.0493590.ph, %bb.ci ], [ %.sroa.0313.0493590.ph, %bb.ch ], [ %.sroa.0313.0493, %bb.t ], [ %.sroa.0313.0493590.ph, %bb.db ], [ %.sroa.0313.0493590.ph, %bb.da ], [ %.sroa.0313.0493590.ph, %bb.cz ], [ %.sroa.0313.0493590.ph, %bb.cy ], [ %.sroa.0313.0493, %bb.q ], [ %.sroa.0313.0493, %bb.k ], [ %.sroa.0313.0493590.ph, %bb.cs ], [ %.sroa.0313.0493590.ph, %bb.cr ], [ %.sroa.0313.0493590.ph, %bb.cq ], [ %.sroa.0313.0493590.ph, %bb.dn ], [ %.sroa.0313.0493590.ph, %bb.dm ], [ %.sroa.0313.0493590.ph, %bb.dl ], [ %.sroa.0313.0493590.ph, %bb.dk ], [ %.sroa.0313.0493590.ph, %bb.dj ], [ %.sroa.0313.0493590.ph, %bb.dg ], [ %.sroa.0313.0493590.ph, %bb.dd ], [ %.sroa.0313.0493590.ph, %bb.dc ], [ %.sroa.0313.2, %bb.bu ], [ %.sroa.0313.2, %bb.bv ], [ %.sroa.0313.2, %bb.bw ], [ %.sroa.0313.2, %bb.bl ], [ %.sroa.0313.2, %bb.bo ], [ %.sroa.0313.2, %bb.bn ], [ %.sroa.0313.2, %bb.bq ], [ %.sroa.0313.0493588, %bb.bg ], [ %.sroa.0313.0493587615, %bb.be ], [ %.sroa.0313.0493587615, %.thread603 ], [ %.sroa.0313.0493, %bb.au ], [ %.sroa.0313.0493, %bb.ad ], [ %.sroa.0313.0493, %bb.aq ], [ %.sroa.0313.0493, %bb.an ], [ %.sroa.0313.0493, %bb.am ], [ %.sroa.0313.0493, %bb.al ], [ %.sroa.0313.0493, %bb.ai ], [ %.sroa.0313.0493, %bb.ah ], [ %.sroa.0313.0493, %bb.ag ], [ %.sroa.0313.4.jt0, %bb.m ], [ %.sroa.0313.4.jt0, %bb.s ], [ %.sroa.0313.4.jt0, %bb.v ], [ %.sroa.0313.4.jt0, %bb.aw ], [ %.sroa.0313.4.jt0, %bb.af ], [ %.sroa.0313.0493590.ph, %bb.ae ]
  %lpad.loopexit645 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cx, %bb.cu, %.preheader, %bb.l, %bb.r, %bb.u, %bb.av, %bb.ce, %bb.cd, %bb.bz, %bb.ca, %bb.cc
  %lpad.loopexit.split-lp890 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bs
  %lpad.loopexit.split-lp409 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dh:                                            ; preds = %bb.df
  %i.dz = icmp eq i16 %.0221498571880, 0
  %or.cond21 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond21, label %bb.di, label %.critedge297.thread392

bb.di:                                            ; preds = %bb.dh
  %i.ea = icmp eq i8 %.0233495580879, 1
  br i1 %i.ea, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.eb = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.0225497576.ph, i32 noundef %.0225497576.ph)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.0225497576.ph, i8 noundef signext 0)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.dl:                                            ; preds = %bb.dk, %bb.di
  %i.ec = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 65535)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 36, ptr %i.c, align 2, !tbaa !35
  %i.ed = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 93, ptr %i.b, align 2, !tbaa !35
  %i.ee = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit309 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit309:      ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge297.jt0

.critedge297.thread392:                           ; preds = %bb.dh
  store i32 65538, ptr %7, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.ek

.loopexit637:                                     ; preds = %bb.bx, %.thread.backedge, %bb.dg, %.thread348
  %.sroa.0313.0493593 = phi ptr [ %.sroa.0313.0493590.ph, %bb.dg ], [ %.sroa.0313.0493, %.thread348 ], [ %.sroa.0313.0493590.ph, %.thread.backedge ], [ %.sroa.0313.0493590.ph, %bb.bx ] ; 12 uses
  %.0237494584 = phi i8 [ %.0237494583.ph, %bb.dg ], [ %.0237494, %.thread348 ], [ %.0237494583.ph, %.thread.backedge ], [ %.0237494583.ph, %bb.bx ] ; 4 uses
  %.0233495581 = phi i8 [ %.0233495580879, %bb.dg ], [ %.0233495, %.thread348 ], [ %.0233495580879, %.thread.backedge ], [ %.0233495580879, %bb.bx ]
  %.0225497578 = phi i32 [ %.0225497576.ph, %bb.dg ], [ %.0225497, %.thread348 ], [ %.0225497576.ph, %.thread.backedge ], [ %.0225497576.ph, %bb.bx ] ; 7 uses
  %.0221498572 = phi i16 [ %.0221498571880, %bb.dg ], [ %.0221498, %.thread348 ], [ %.0221498571880, %.thread.backedge ], [ %.0221498571880, %bb.bx ] ; 4 uses
  %.2218.ph346353 = phi i8 [ %.0216499566.ph, %bb.dg ], [ %.1217, %.thread348 ], [ %.0216499566.ph, %.thread.backedge ], [ %.0216499566.ph, %bb.bx ] ; 4 uses
  %.3215 = phi i32 [ 36, %bb.dg ], [ 45, %.thread348 ], [ %i.cn, %.thread.backedge ], [ %i.cn, %bb.bx ] ; 6 uses
  switch i8 %.0233495581, label %default.unreachable559 [
    i8 0, label %.critedge297
    i8 1, label %bb.do
    i8 2, label %bb.dw
  ]

bb.do:                                            ; preds = %.loopexit637
  %i.ef = icmp eq i16 %.0221498572, 45
  br i1 %i.ef, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %.not279 = icmp slt i32 %.0225497578, %.3215
  br i1 %.not279, label %bb.dq, label %.critedge297.thread.sink.split

bb.dq:                                            ; preds = %bb.dp
  %i.eg = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.0225497578, i32 noundef %.3215)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.0225497578, i8 noundef signext 0)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 45, ptr %i.a, align 2, !tbaa !35
  %i.eh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.3215, i8 noundef signext 0)
          to label %.critedge297.jt0 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.du:                                            ; preds = %bb.do
  %i.ei = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.0225497578, i32 noundef %.0225497578)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %.0225497578, i8 noundef signext 0)
          to label %.critedge297 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.dw:                                            ; preds = %.loopexit637
  %.not278 = icmp eq i16 %.0221498572, 0
  br i1 %.not278, label %.critedge297.jt0, label %.critedge297.thread.sink.split

..critedge297.thread.sink.split.loopexit778_crit_edge883: ; preds = %bb.cn
  br label %.critedge297.thread.sink.split, !llvm.loop !61

.critedge297.thread.sink.split:                   ; preds = %bb.dw, %bb.dp, %bb.co, %bb.ck, %bb.bi, %bb.bd, %.thread317.jt38, %bb.ba, %bb.bc, %bb.bb, %.thread.preheader, %bb.cf, %bb.bx, %bb.ct, %..critedge297.thread.sink.split.loopexit778_crit_edge883, %bb.cb
  %.sink = phi i32 [ 65538, %bb.cb ], [ 65538, %..critedge297.thread.sink.split.loopexit778_crit_edge883 ], [ 65538, %bb.cf ], [ 65538, %bb.ct ], [ 65538, %bb.bx ], [ 7, %bb.bi ], [ 65538, %bb.dw ], [ 65538, %bb.dp ], [ 65538, %bb.bc ], [ 65538, %.thread317.jt38 ], [ 65538, %bb.ck ], [ 65538, %bb.co ], [ 65538, %bb.bb ], [ 65538, %.thread.preheader ], [ 65538, %bb.bd ], [ 65538, %bb.ba ]
  %.sroa.0313.4.ph.ph = phi ptr [ %.sroa.0313.0493590.ph, %bb.cb ], [ %.sroa.0313.0493590.ph, %..critedge297.thread.sink.split.loopexit778_crit_edge883 ], [ %.sroa.0313.0493590.ph, %bb.cf ], [ %.sroa.0313.0493590.ph, %bb.ct ], [ %.sroa.0313.0493590.ph, %bb.bx ], [ null, %bb.bi ], [ %.sroa.0313.0493593, %bb.dw ], [ %.sroa.0313.0493593, %bb.dp ], [ %.sroa.0313.4.jt0, %bb.bc ], [ %.sroa.0313.0493590.ph, %.thread317.jt38 ], [ %.sroa.0313.0493590.ph, %bb.ck ], [ %.sroa.0313.0493590.ph, %bb.co ], [ %.sroa.0313.0493590.ph, %bb.bb ], [ %.sroa.0313.0493590.ph, %.thread.preheader ], [ %.sroa.0313.0493, %bb.bd ], [ %.sroa.0313.0493, %bb.ba ]
  store i32 %.sink, ptr %7, align 4, !tbaa !11
  br label %.critedge297.thread

.critedge297.thread:                              ; preds = %bb.bp, %bb.de, %bb.cj, %bb.aj, %bb.w, %bb.ao, %bb.y, %bb.x, %bb.cv, %.critedge297.thread.sink.split
  %.sroa.0313.4.ph = phi ptr [ %.sroa.0313.0493590.ph, %bb.x ], [ %.sroa.0313.4.ph.ph, %.critedge297.thread.sink.split ], [ %.sroa.0313.0493590.ph, %bb.cv ], [ %.sroa.0313.2, %bb.bp ], [ %.sroa.0313.0493, %bb.ao ], [ %.sroa.0313.0493, %bb.aj ], [ %.sroa.0313.4.jt0, %bb.y ], [ %.sroa.0313.0493, %bb.w ], [ %.sroa.0313.0493590.ph, %bb.cj ], [ %.sroa.0313.0493590.ph, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.ek

.critedge297:                                     ; preds = %.loopexit637, %bb.dv, %bb.aq
  %.sroa.0313.4 = phi ptr [ %.sroa.0313.0493, %bb.aq ], [ %.sroa.0313.0493593, %.loopexit637 ], [ %.sroa.0313.0493593, %bb.dv ]
  %.3240 = phi i8 [ %.0237494, %bb.aq ], [ %.0237494584, %.loopexit637 ], [ %.0237494584, %bb.dv ]
  %.3236 = phi i8 [ %.0233495, %bb.aq ], [ 1, %.loopexit637 ], [ 1, %bb.dv ]
  %.2227 = phi i32 [ %.0225497, %bb.aq ], [ %.3215, %.loopexit637 ], [ %.3215, %bb.dv ]
  %.3224 = phi i16 [ %.0221498, %bb.aq ], [ %.0221498572, %.loopexit637 ], [ %.0221498572, %bb.dv ]
  %.3219 = phi i8 [ %.1217, %bb.aq ], [ %.2218.ph346353, %.loopexit637 ], [ %.2218.ph346353, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.e

.critedge297.jt0:                                 ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit309, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit, %bb.bv, %bb.bu, %bb.bw, %bb.dw, %_ZN6icu_7813UnicodeString6appendEDs.exit307, %bb.dt
  %.sroa.0313.4.jt0 = phi ptr [ %.sroa.0313.2, %bb.bu ], [ %.sroa.0313.2, %bb.bv ], [ %.sroa.0313.0493593, %bb.dt ], [ %.sroa.0313.0493590.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit307 ], [ %.sroa.0313.0493590.ph, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ %.sroa.0313.0493593, %bb.dw ], [ %.sroa.0313.2, %bb.bw ], [ %.sroa.0313.0493590.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit309 ] ; 14 uses
  %.3240.jt0 = phi i8 [ 1, %bb.bu ], [ 1, %bb.bv ], [ %.0237494584, %bb.dt ], [ %.0237494583.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit307 ], [ %.0237494583.ph, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ %.0237494584, %bb.dw ], [ 1, %bb.bw ], [ 1, %_ZN6icu_7813UnicodeString6appendEDs.exit309 ] ; 3 uses
  %.3236.jt0 = phi i8 [ 2, %bb.bu ], [ 2, %bb.bv ], [ 0, %bb.dt ], [ 0, %_ZN6icu_7813UnicodeString6appendEDs.exit307 ], [ 0, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ 1, %bb.dw ], [ 2, %bb.bw ], [ %.0233495580879, %_ZN6icu_7813UnicodeString6appendEDs.exit309 ] ; 3 uses
  %.not259.jt0 = phi i1 [ false, %bb.bu ], [ false, %bb.bv ], [ false, %bb.dt ], [ false, %_ZN6icu_7813UnicodeString6appendEDs.exit307 ], [ true, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ false, %bb.dw ], [ false, %bb.bw ], [ true, %_ZN6icu_7813UnicodeString6appendEDs.exit309 ]
  %.2227.jt0 = phi i32 [ %.0225497577, %bb.bu ], [ %.0225497577, %bb.bv ], [ %.0225497578, %bb.dt ], [ %.0225497576.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit307 ], [ %.0225497576.ph, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ %.3215, %bb.dw ], [ %.0225497577, %bb.bw ], [ %.0225497576.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit309 ] ; 4 uses
  %.3219.jt0 = phi i8 [ %.0216499567, %bb.bu ], [ %.0216499567, %bb.bv ], [ %.2218.ph346353, %bb.dt ], [ %.0216499566.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit307 ], [ %.0216499566.ph, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ %.2218.ph346353, %bb.dw ], [ %.0216499567, %bb.bw ], [ %.0216499566.ph, %_ZN6icu_7813UnicodeString6appendEDs.exit309 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br i1 %.not259.jt0, label %.critedge.thread.loopexit, label %bb.g

.body:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.bk, %bb.cm
  %.sroa.0313.5 = phi ptr [ %.sroa.0313.0493590.ph, %bb.cm ], [ null, %bb.bk ], [ %.sroa.0313.3.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ], [ %.sroa.0313.2, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0313.0493590.ph, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.cm ], [ %i.ce, %bb.bk ], [ %lpad.loopexit645, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp409, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp890, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %.loopexit403

.critedge.thread385:                              ; preds = %bb.j, %bb.h, %bb.i
  %.sroa.0313.0493586 = phi ptr [ %.sroa.0313.0493590.ph, %bb.i ], [ %.sroa.0313.4.jt0, %bb.j ], [ %.sroa.0313.0493, %bb.h ]
  store i32 65538, ptr %7, align 4, !tbaa !11
  br label %bb.ek

.critedge.thread.loopexit:                        ; preds = %.critedge297.jt0, %.critedge297.thread628
  %.3219562 = phi i8 [ %.0216499566.ph, %.critedge297.thread628 ], [ %.3219.jt0, %.critedge297.jt0 ]
  %.3240561 = phi i8 [ %.0237494583.ph, %.critedge297.thread628 ], [ %.3240.jt0, %.critedge297.jt0 ]
  %.sroa.0313.4560 = phi ptr [ %.sroa.0313.0493590.ph, %.critedge297.thread628 ], [ %.sroa.0313.4.jt0, %.critedge297.jt0 ]
  %i.ej = icmp eq i8 %.3240561, 0
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge297.thread368
  %.0216442 = phi i8 [ %.0216499567, %.critedge297.thread368 ], [ %.3219562, %.critedge.thread.loopexit ]
  %.4241383 = phi i1 [ false, %.critedge297.thread368 ], [ %i.ej, %.critedge.thread.loopexit ]
  %.sroa.0313.6382 = phi ptr [ %.sroa.0313.2, %.critedge297.thread368 ], [ %.sroa.0313.4560, %.critedge.thread.loopexit ] ; 9 uses
  invoke void @_ZN6icu_7821RuleCharacterIterator11skipIgnoredEi(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.select)
          to label %bb.dx unwind label %.loopexit.split-lp404

bb.dx:                                            ; preds = %.critedge.thread
  %i.ek = and i32 %4, 6
  %.not285 = icmp eq i32 %i.ek, 0
  br i1 %.not285, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.el = getelementptr inbounds i8, ptr %0, i64 %.unpack.a ; 2 uses
  %i.em = and i64 %.unpack257, 1
  %.not286 = icmp eq i64 %i.em, 0
  br i1 %.not286, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !13
  %i.eo = getelementptr i8, ptr %i.en, i64 %.unpack257
  %i.ep = getelementptr i8, ptr %i.eo, i64 -1
  %i.eq = load ptr, ptr %i.ep, align 8, !nosanitize !64
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.er = inttoptr i64 %.unpack257 to ptr
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.es = phi ptr [ %i.eq, %bb.dz ], [ %i.er, %bb.ea ]
  %i.et = invoke noundef nonnull align 8 dereferenceable(200) ptr %i.es(ptr noundef nonnull align 8 dereferenceable(200) %i.el, i32 noundef %4)
          to label %bb.ec unwind label %.loopexit.split-lp404 ; 0 uses

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %.not287 = icmp eq i8 %.0216442, 0
  br i1 %.not287, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.eu = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.ee unwind label %.loopexit.split-lp404

bb.ee:                                            ; preds = %bb.ed
  %i.ev = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet16removeAllStringsEv(ptr noundef nonnull align 8 dereferenceable(200) %i.eu)
          to label %bb.ef unwind label %.loopexit.split-lp404 ; 0 uses

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  br i1 %.4241383, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ew = load i16, ptr %i.q, align 8, !tbaa !14  ; 2 uses
  %i.ex = icmp slt i16 %i.ew, 0
  %i.ey = ashr i16 %i.ew, 5
  %i.ez = sext i16 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = select i1 %i.ex, i32 %i.fb, i32 %i.ez
  %i.fd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.fc)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %.loopexit.split-lp404 ; 0 uses

bb.eh:                                            ; preds = %bb.ef
  %i.fe = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet16_generatePatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 0)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %.loopexit.split-lp404 ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.eg, %bb.eh
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !28
  %i.fh = and i8 %i.fg, 1
  %.not291 = icmp eq i8 %i.fh, 0
  br i1 %.not291, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.fi = load i32, ptr %7, align 4, !tbaa !11
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store i32 7, ptr %7, align 4, !tbaa !11
  br label %bb.ek

bb.ek:                                            ; preds = %.critedge297.thread392, %.critedge297.thread, %_ZN6icu_7813UnicodeString6appendERKS0_.exit, %bb.ei, %bb.ej, %.critedge.thread385
  %.sroa.0313.7 = phi ptr [ %.sroa.0313.6382, %_ZN6icu_7813UnicodeString6appendERKS0_.exit ], [ %.sroa.0313.6382, %bb.ei ], [ %.sroa.0313.6382, %bb.ej ], [ %.sroa.0313.0493586, %.critedge.thread385 ], [ %.sroa.0313.0493590.ph, %.critedge297.thread392 ], [ %.sroa.0313.4.ph, %.critedge297.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.fk = icmp eq ptr %.sroa.0313.7, null
  br i1 %i.fk, label %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointerD2Ev.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %.sroa.0313.7) #14
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %.sroa.0313.7) #14
  br label %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointerD2Ev.exit

_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointerD2Ev.exit: ; preds = %bb.ek, %bb.el
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.em

bb.em:                                            ; preds = %bb.a, %_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointerD2Ev.exit, %bb.c
  ret void

.loopexit403:                                     ; preds = %.loopexit403.loopexit, %.loopexit403.loopexit.split-lp, %.loopexit.split-lp404, %.body
  %.sroa.0313.8 = phi ptr [ %.sroa.0313.5, %.body ], [ %.sroa.0313.1.ph, %.loopexit.split-lp404 ], [ %.sroa.0313.0493590.ph, %.loopexit403.loopexit ], [ %.sroa.0313.0493585.ph, %.loopexit403.loopexit.split-lp ]
  %.pn289 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp406, %.loopexit.split-lp404 ], [ %lpad.loopexit639, %.loopexit403.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit403.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call fastcc void @_ZN6icu_7812_GLOBAL__N_117UnicodeSetPointerD2Ev(ptr %.sroa.0313.8) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn289
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7810UnicodeSet10setPatternERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  tail call void @_ZN6icu_7810UnicodeSet10setPatternEPKDsi(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %.0.i, i32 noundef %i.m)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7810UnicodeSet16resemblesPatternERKNS_13UnicodeStringEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f       ; 5 uses
  %i.j = icmp slt i32 %i.a, %i.i
  %i.k = icmp ult i32 %1, %i.i                    ; 2 uses
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.l = and i16 %i.c, 2
  %.not.i.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %.not.i.i.i, ptr %i.o, ptr %i.m
  %i.q = sext i32 %1 to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !35
  %i.t = icmp eq i16 %i.s, 91
  br i1 %i.t, label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.a
  %i.u = add nsw i32 %1, 5
  %i.v = icmp sle i32 %i.u, %i.i
  %or.cond.i = and i1 %i.v, %i.k
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i:     ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.w = and i16 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i.i.i, ptr %i.z, ptr %i.x ; 3 uses
  %i.ab = sext i32 %1 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  switch i16 %i.ad, label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit [
    i16 91, label %bb.b
    i16 92, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  %i.ae = icmp ult i32 %i.a, %i.i
  br i1 %i.ae, label %_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i11.i

_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit.i: ; preds = %bb.b
  %i.af = sext i32 %i.a to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !35
  %.not.i = icmp eq i16 %i.ah, 58
  br i1 %.not.i, label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i11.i

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  %i.ai = icmp ult i32 %i.a, %i.i
  br i1 %i.ai, label %_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit.i, label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit

_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit.i: ; preds = %bb.c
  %i.aj = sext i32 %i.a to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !35 ; 2 uses
  %i.am = and i16 %i.al, -33
  %.not19.i = icmp eq i16 %i.am, 80
  br i1 %.not19.i, label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit, label %bb.d

_ZNK6icu_7813UnicodeString6charAtEi.exit.i11.i:   ; preds = %_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit.i, %bb.b
  br label %_ZN6icu_7810UnicodeSet24resemblesPropertyPatternERKNS_13UnicodeStringEi.exit
end_hunk_1
