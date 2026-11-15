Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_evaluation?download=true
inline.NumInlined: 416
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6icu_788message215FunctionOptions23getStringFunctionOptionESt17basic_string_viewIDsSt11char_traitsIDsEE:bb.a
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.i, %bb.d, %bb.c, %_ZNK6icu_788message211Formattable9getStringER10UErrorCode.exit
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp18

bb.f:                                             ; preds = %.thread, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.ah, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_788message211Formattable9getStringER10UErrorCode.exit, %bb.f
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef i32 @_ZNK6icu_788message211Formattable7getTypeEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(20) ptr @_ZN6icu_788message215FunctionOptionsaSEOS1_(ptr nofree noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(20) initializes((8, 20)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !40
  store i32 0, ptr %i.a, align 8, !tbaa !38
  store ptr null, ptr %i.d, align 8, !tbaa !40
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_788message215FunctionOptionsC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %1) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  store i32 %i.c, ptr %i.a, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !40
  store i32 0, ptr %i.b, align 8, !tbaa !38
  store ptr null, ptr %i.d, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message215FunctionOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.d, 272
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -272 ; 3 uses
  tail call void @_ZN6icu_788message222ResolvedFunctionOptionD1Ev(ptr noundef nonnull align 8 dead_on_return(265) dereferenceable(265) %i.h) #19
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.c) #19
  store ptr null, ptr %i.a, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message215FunctionOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) #19
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message215FunctionOptions12mergeOptionsEOS1_R10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::FunctionOptions") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UVector", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.a = invoke noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !42
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.preheader36, label %bb.c

.preheader36:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.preheader32

.lr.ph:                                           ; preds = %.preheader36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !40
  br label %bb.s

.preheader32:                                     ; preds = %bb.i, %.preheader36
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %.preheader32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw [272 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %3, align 4, !tbaa !42
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 272) #19 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6icu_788message222ResolvedFunctionOptionC1EOS1_(ptr noundef nonnull align 8 dereferenceable(265) %i.s, ptr noundef nonnull align 8 dereferenceable(265) %i.p)
          to label %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 7, ptr %3, align 4, !tbaa !42
  br label %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.s) #19
  br label %.body

_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ %i.s, %bb.f ]
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.d, align 8, !tbaa !38
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.d, label %.preheader32, !llvm.loop !91

._crit_edge:                                      ; preds = %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread, %.preheader32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %bb.q

bb.j:                                             ; preds = %.lr.ph45, %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread
  %indvars.iv54 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next55, %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread ] ; 3 uses
  %5 = load ptr, ptr %i.m, align 8, !tbaa !40     ; 2 uses
  %6 = getelementptr inbounds nuw [272 x i8], ptr %5, i64 %indvars.iv54 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !45
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %.lr.ph.i
  %.0711.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bf, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ] ; 2 uses
  %i.ag = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %.0711.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !14 ; 3 uses
  %i.ak = and i16 %i.aj, 1
  %.not.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i, label %bb.l, label %.split.i

.split.i:                                         ; preds = %.noexc
  %i.al = load i16, ptr %7, align 8, !tbaa !14
  %i.am = trunc i16 %i.al to i1
  br i1 %i.am, label %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

bb.l:                                             ; preds = %.noexc
  %i.an = icmp slt i16 %i.aj, 0
  %i.ao = ashr i16 %i.aj, 5
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = select i1 %i.an, i32 %i.ar, i32 %i.ap   ; 2 uses
  %i.at = load i16, ptr %7, align 8, !tbaa !14    ; 4 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.ad, align 4
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.aw
  %i.az = and i16 %i.at, 1
  %.not9.i.i = icmp eq i16 %i.az, 0
  %i.ba = icmp eq i32 %i.as, %i.ay
  %or.cond.i.i = and i1 %.not9.i.i, %i.ba
  br i1 %or.cond.i.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i:        ; preds = %bb.l
  %i.bb = and i16 %i.at, 2
  %.not.i.i.i.i = icmp eq i16 %i.bb, 0
  %i.bc = load ptr, ptr %i.af, align 8
  %i.bd = select i1 %.not.i.i.i.i, ptr %i.bc, ptr %i.ae
  %i.be = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef %i.bd, i32 noundef %i.as)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i
  %.not.i = icmp eq i8 %i.be, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, label %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i: ; preds = %.noexc25, %bb.l, %.split.i
  %i.bf = add nuw nsw i32 %.0711.i, 1             ; 2 uses
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !45
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.loopexit, !llvm.loop !92

_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.loopexit: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !40
  br label %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit

_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit: ; preds = %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.loopexit, %bb.j
  %8 = phi ptr [ %.pre, %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.loopexit ], [ %5, %bb.j ]
  %i.bi = getelementptr inbounds nuw [272 x i8], ptr %8, i64 %indvars.iv54
  %i.bj = load i32, ptr %3, align 4, !tbaa !42
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %bb.m, label %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit29

bb.m:                                             ; preds = %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit
  %i.bl = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 272) #19 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6icu_788message222ResolvedFunctionOptionC1EOS1_(ptr noundef nonnull align 8 dereferenceable(265) %i.bl, ptr noundef nonnull align 8 dereferenceable(265) %i.bi)
          to label %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit29 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 7, ptr %3, align 4, !tbaa !42
  br label %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit29

bb.p:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bl) #19
  br label %.body

_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit29: ; preds = %bb.o, %bb.n, %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit
  %.0.i26 = phi ptr [ null, %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit ], [ null, %bb.o ], [ %i.bl, %bb.n ]
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %.0.i26, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit29, %bb.k, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit, %bb.a, %bb.r
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.bn, %bb.p ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %eh.lpad-body

_ZN6icu_788message2L14containsOptionERKNS_7UVectorERKNS0_22ResolvedFunctionOptionE.exit.thread: ; preds = %.noexc25, %.split.i, %_ZN6icu_788message26createINS0_22ResolvedFunctionOptionEEEPT_OS3_R10UErrorCode.exit29
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bo = load i32, ptr %i.j, align 8, !tbaa !38
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next55, %i.bp
  br i1 %i.bq, label %bb.j, label %._crit_edge, !llvm.loop !93

bb.q:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.q
  %.idx = mul nsw i64 %i.bs, 272
  %i.bu = getelementptr inbounds i8, ptr %i.z, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.bv = phi ptr [ %i.bw, %.preheader ], [ %i.bu, %.preheader.preheader ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -272 ; 3 uses
  call void @_ZN6icu_788message222ResolvedFunctionOptionD1Ev(ptr noundef nonnull align 8 dead_on_return(265) dereferenceable(265) %i.bw) #19
  %i.bx = icmp eq ptr %i.bw, %i.z
  br i1 %i.bx, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.q
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.br) #19
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %._crit_edge
  store ptr null, ptr %i.y, align 8, !tbaa !40
  store i32 0, ptr %i.d, align 8, !tbaa !38
  invoke void @_ZN6icu_788message215FunctionOptionsC1EONS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %bb.c
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @uprv_deleteUObject_78(ptr noundef) #2

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message218PrioritizedVariantltERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = icmp slt i32 %i.b, %i.d
  %. = zext i1 %i.e to i8
  ret i8 %.
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message218PrioritizedVariantD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message218PrioritizedVariantE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.b) #19
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message218PrioritizedVariantD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message218PrioritizedVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #19
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788message211Environment6createERKNS_13UnicodeStringEONS0_7ClosureEPS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 104) #19 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message219NonEmptyEnvironmentE, i64 16), ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message27ClosureE, i64 16), ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %2, ptr %i.i, align 8, !tbaa !49
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  store i32 7, ptr %3, align 4, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.c) #19
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.c, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN6icu_788message211Environment6createER10UErrorCode(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 8) #19 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message216EmptyEnvironmentE, i64 16), ptr %i.c, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 4, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.1
}
end_hunk_0
