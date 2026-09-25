Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uspoof_impl?download=true
inline.NumInlined: 109
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_789SpoofImpl12validateThisEPK13USpoofCheckerR10UErrorCode:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %.not8.i = icmp eq i8 %i.r, 0
  br i1 %.not8.i, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split

_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.sink.i.sink = phi i32 [ 3, %bb.c ], [ 1, %bb.b ], [ 3, %bb.d ], [ 3, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ]
  store i32 %.sink.i.sink, ptr %1, align 4, !tbaa !22
  br label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit

_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit: ; preds = %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split, %bb.a, %_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit, %bb.i
  %.0 = phi ptr [ %0, %_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit ], [ null, %bb.a ], [ %0, %bb.i ], [ null, %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !22
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !37
  %.not4 = icmp eq i32 %i.e, 944111087
  br i1 %.not4, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !38
  %.not5 = icmp eq i8 %i.g, 2
  br i1 %.not5, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38
  %.not6 = icmp eq i8 %i.i, 0
  br i1 %.not6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.k = load i8, ptr %i.j, align 2, !tbaa !38
  %.not7 = icmp eq i8 %i.k, 0
  br i1 %.not7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.m = load i8, ptr %i.l, align 1, !tbaa !38
  %.not8 = icmp eq i8 %i.m, 0
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  store i32 3, ptr %1, align 4, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.g ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6icu_789SpoofImpl12validateThisEP13USpoofCheckerR10UErrorCode(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !22
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_789SpoofImpl12validateThisEPK13USpoofCheckerR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %.not9.i.i = icmp eq i32 %i.e, 944111087
  br i1 %.not9.i.i, label %_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit.i, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i

_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %_ZN6icu_789SpoofImpl12validateThisEPK13USpoofCheckerR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 4, !tbaa !37
  %.not4.i.i = icmp eq i32 %i.j, 944111087
  br i1 %.not4.i.i, label %bb.f, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !38
  %.not5.i.i = icmp eq i8 %i.l, 2
  br i1 %.not5.i.i, label %bb.g, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  %.not6.i.i = icmp eq i8 %i.n, 0
  br i1 %.not6.i.i, label %bb.h, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.p = load i8, ptr %i.o, align 2, !tbaa !38
  %.not7.i.i = icmp eq i8 %i.p, 0
  br i1 %.not7.i.i, label %bb.i, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %.not8.i.i = icmp eq i8 %i.r, 0
  br i1 %.not8.i.i, label %_ZN6icu_789SpoofImpl12validateThisEPK13USpoofCheckerR10UErrorCode.exit, label %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i

_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i.sink.i = phi i32 [ 3, %bb.c ], [ 1, %bb.b ], [ 3, %bb.d ], [ 3, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ]
  store i32 %.sink.i.sink.i, ptr %1, align 4, !tbaa !22
  br label %_ZN6icu_789SpoofImpl12validateThisEPK13USpoofCheckerR10UErrorCode.exit

_ZN6icu_789SpoofImpl12validateThisEPK13USpoofCheckerR10UErrorCode.exit: ; preds = %bb.a, %_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit.i, %bb.i, %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i
  %.0.i = phi ptr [ %0, %_ZN6icu_7813IcuCApiHelperI13USpoofCheckerNS_9SpoofImplELi944111087EE8validateEPKS1_R10UErrorCode.exit.i ], [ null, %bb.a ], [ %0, %bb.i ], [ null, %_ZNK6icu_789SpoofData19validateDataVersionER10UErrorCode.exit.sink.split.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789SpoofImpl17setAllowedLocalesEPKcR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeSet", align 8 ; 10 uses
  %4 = alloca %"class.icu_78::UnicodeSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %3)
  %i.a = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.058 = phi ptr [ %1, %bb.a ], [ %.260, %.critedge ] ; 2 uses
  %.055 = phi i32 [ 0, %bb.a ], [ %i.q, %.critedge ] ; 2 uses
  %i.c = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.058, i32 noundef 44) #23 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.159 = phi ptr [ %.058, %bb.b ], [ %i.f, %bb.c ] ; 7 uses
  %i.d = load i8, ptr %.159, align 1, !tbaa !38
  %i.e = icmp eq i8 %i.d, 32
  %i.f = getelementptr inbounds nuw i8, ptr %.159, i64 1
  br i1 %i.e, label %bb.c, label %.preheader, !llvm.loop !71

.preheader:                                       ; preds = %bb.c
  %i.g = icmp eq ptr %i.c, null
  %spec.select = select i1 %i.g, ptr %i.b, ptr %i.c ; 3 uses
  %.054100 = getelementptr inbounds i8, ptr %spec.select, i64 -1 ; 2 uses
  %i.h = icmp ugt ptr %.054100, %.159
  br i1 %i.h, label %.lr.ph, label %.preheader._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.054 = getelementptr inbounds i8, ptr %.054102, i64 -1 ; 2 uses
  %i.i = icmp ugt ptr %.054, %.159
  br i1 %i.i, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !72

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.054102 = phi ptr [ %.054, %bb.d ], [ %.054100, %.preheader ] ; 3 uses
  %.057.pn101 = phi ptr [ %.054102, %bb.d ], [ %spec.select, %.preheader ]
  %i.j = load i8, ptr %.054102, align 1, !tbaa !38
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.d, label %bb.e, !llvm.loop !72

bb.e:                                             ; preds = %.lr.ph
  %i.l = ptrtoint ptr %.057.pn101 to i64
  %i.m = ptrtoint ptr %.159 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = invoke ptr @uprv_strndup_78(ptr noundef nonnull %.159, i32 noundef %i.o)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw nsw i32 %.055, 1
  invoke void @_ZN6icu_789SpoofImpl14addScriptCharsEPKcPNS_10UnicodeSetER10UErrorCode(ptr nonnull align 8 poison, ptr noundef %i.p, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @uprv_free_78(ptr noundef %i.p)
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.critedge:                                        ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !22
  %i.t = icmp slt i32 %i.s, 1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %.260 = select i1 %i.t, ptr %i.u, ptr %.159
  %i.v = icmp ult ptr %i.u, %i.b
  %or.cond74 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond74, label %bb.b, label %.thread, !llvm.loop !73

.preheader._crit_edge:                            ; preds = %.preheader, %bb.d
  %i.w = icmp eq i32 %.055, 0
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %.preheader._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  invoke void @uprv_free_78(ptr noundef %i.y)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.z = invoke ptr @uprv_strdup_78(ptr noundef nonnull @.str)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #21 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread82, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6icu_7810UnicodeSetC1Eii(ptr noundef nonnull align 8 dereferenceable(200) %i.aa, i32 noundef 0, i32 noundef 1114111)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread82, label %bb.p

.thread82:                                        ; preds = %bb.k, %bb.m
  store i32 7, ptr %2, align 4, !tbaa !22
  br label %bb.al

bb.n:                                             ; preds = %bb.p, %bb.j, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.aa) #21
  br label %bb.ao

bb.p:                                             ; preds = %bb.m
  %i.ag = invoke noundef ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull align 8 dereferenceable(200) %i.aa)
          to label %bb.q unwind label %bb.n       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.ai) #21
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ai) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %i.aa, ptr %i.ah, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = and i32 %i.al, -65
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !19
  br label %bb.al

.thread:                                          ; preds = %.critedge, %.preheader._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %4)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.thread
  %i.an = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet21applyIntPropertyValueE9UPropertyiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 4106, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.u unwind label %bb.z       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ao = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(200) %4)
          to label %bb.v unwind label %bb.z       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ap = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet21applyIntPropertyValueE9UPropertyiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 4106, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.aq = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(200) %4)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ar = load i32, ptr %2, align 4, !tbaa !22
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.aa, label %bb.ak

bb.y:                                             ; preds = %.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.z:                                             ; preds = %bb.aa, %bb.w, %bb.v, %bb.u, %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aa:                                            ; preds = %bb.x
  %i.av = invoke noundef ptr @_ZNK6icu_7810UnicodeSet5cloneEv(ptr noundef nonnull align 8 dereferenceable(200) %3)
          to label %bb.ab unwind label %bb.z      ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.aw = invoke ptr @uprv_strdup_78(ptr noundef nonnull %1)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ax = icmp eq ptr %i.av, null
  %i.ay = icmp eq ptr %i.aw, null
  %or.cond3 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond3, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store i32 7, ptr %2, align 4, !tbaa !22
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ag, %bb.af, %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !24
  invoke void @uprv_free_78(ptr noundef %i.bb)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  store ptr %i.aw, ptr %i.ba, align 8, !tbaa !24
  %i.bc = invoke noundef ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull align 8 dereferenceable(200) %i.av)
          to label %bb.ah unwind label %bb.ae     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.be) #21
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.be) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store ptr %i.av, ptr %i.bd, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19
  %i.bi = or i32 %i.bh, 64
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %bb.aj, %bb.x
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.s, %.thread82
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.am:                                            ; preds = %bb.ae, %bb.z
  %.pn = phi { ptr, i32 } [ %i.az, %bb.ae ], [ %i.au, %bb.z ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %4) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.at, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.o, %bb.an, %bb.n, %bb.h
  %.pn72 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.af, %bb.o ], [ %i.r, %bb.h ], [ %.pn.pn, %bb.an ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn72
}

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @uprv_strndup_78(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789SpoofImpl14addScriptCharsEPKcPNS_10UnicodeSetER10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [30 x i32], align 16              ; 5 uses
end_hunk_0
