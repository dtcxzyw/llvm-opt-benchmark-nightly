Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/extradata?download=true
inline.NumInlined: 66
inline.NumDeleted: 29
begin_hunk_0_@_ZN6icu_789ExtraDataC2ERNS_5NormsEa:bb.a
bb.n:                                             ; preds = %bb.m
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.q:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.r:                                             ; preds = %bb.e, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.k, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.m, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ap) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bd, %bb.u ]
  call void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.aj) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.bc, %bb.t ]
  call void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ad) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.bb, %bb.s ]
  call void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.x) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.ba, %bb.r ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.q) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.o) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.n) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.z ], [ %i.az, %bb.q ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.m) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aa ], [ %i.ay, %bb.p ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.l) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ab ], [ %i.ax, %bb.o ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.h) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #11
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @uhash_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #12
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483647, 34) i32 @_ZN6icu_789ExtraData12writeMappingEiRKNS_4NormERNS_13UnicodeStringE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !45     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.o = load i8, ptr %i.n, align 2, !tbaa !46
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or i32 %i.q, %i.m                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 7 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !13   ; 5 uses
  %i.w = icmp slt i16 %i.v, 0
  %i.x = ashr i16 %i.v, 5
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = select i1 %i.w, i32 %i.aa, i32 %i.y     ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 31
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.ae = sext i32 %1 to i64
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str, i64 noundef %i.ae, i32 noundef 31) #13 ; 0 uses
  tail call void @exit(i32 noundef 3) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not44 = icmp eq i32 %i.ab, 0
  br i1 %.not44, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = and i16 %i.v, 2
  %.not.i.i.i = icmp eq i16 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %.not.i.i.i, ptr %i.aj, ptr %i.ah
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !36
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.d, %bb.e
  %.0.i.i = phi i16 [ %i.al, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.am = add nsw i32 %i.m, -1
  %i.an = icmp eq i32 %i.ab, %i.am
  br i1 %i.an, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ao = and i16 %i.g, 1
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = trunc i16 %i.v to i8
  %i.aq = and i8 %i.ap, 1
  %i.ar = xor i8 %i.aq, 1
  br label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit

.sink.split.i.i.i:                                ; preds = %bb.f
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 2) ; 2 uses
  %i.as = sub nsw i32 %i.m, %spec.select.i.i
  %i.at = and i16 %i.g, 2
  %.not.i.i.i43 = icmp eq i16 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = select i1 %.not.i.i.i43, ptr %i.aw, ptr %i.au
  %i.ay = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef 1, i32 noundef 99, ptr noundef %i.ax, i32 noundef %spec.select.i.i, i32 noundef %i.as)
  br label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit

_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit: ; preds = %bb.g, %.sink.split.i.i.i
  %.0.i.i42 = phi i8 [ %i.ar, %bb.g ], [ %i.ay, %.sink.split.i.i.i ]
  %i.az = icmp eq i8 %.0.i.i42, 0
  %i.ba = icmp ugt i16 %.0.i.i, 31
  %or.cond = and i1 %i.ba, %i.az
  br i1 %or.cond, label %bb.h, label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit._crit_edge

_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit._crit_edge: ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit
  %.pre = load i16, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %.pre45 = load i32, ptr %i.z, align 4
  %.pre46 = ashr i16 %.pre, 5
  %.pre47 = sext i16 %.pre46 to i32
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %.0.i.i, ptr %i.d, align 2, !tbaa !36
  %i.bb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit._crit_edge, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.pre-phi48 = phi i32 [ %.pre47, %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit._crit_edge ], [ %i.y, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  %i.bc = phi i32 [ %.pre45, %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit._crit_edge ], [ %i.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  %i.bd = phi i16 [ %.pre, %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit._crit_edge ], [ %i.v, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  %i.be = icmp slt i16 %i.bd, 0
  %i.bf = select i1 %i.be, i32 %i.bc, i32 %.pre-phi48
  %i.bg = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef 0, i32 noundef %i.bf) ; 0 uses
  %i.bh = trunc i32 %i.ab to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.bh, ptr %i.c, align 2, !tbaa !36
  %i.bi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bj = add nsw i32 %i.ab, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ 1, %bb.h ], [ %i.bj, %bb.i ]
  %i.bk = or i32 %i.r, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.036 = phi i32 [ %i.bk, %bb.j ], [ %i.r, %bb.a ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.j ], [ 0, %bb.a ]      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load i16, ptr %i.bl, align 8            ; 2 uses
  %.not41 = icmp eq i16 %i.bm, 0
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.bm, ptr %i.b, align 2, !tbaa !36
  %i.bn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bo = add nsw i32 %.1, 1
  %i.bp = or i32 %.036, 128
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.137 = phi i32 [ %i.bp, %bb.l ], [ %.036, %bb.k ]
  %.2 = phi i32 [ %i.bo, %bb.l ], [ %.1, %bb.k ]
  %i.bq = trunc i32 %.137 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bq, ptr %i.a, align 2, !tbaa !36
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = load i16, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = ashr i16 %i.bs, 5
  %i.bv = sext i16 %i.bu to i32
  %i.bw = load i32, ptr %i.k, align 4
  %i.bx = select i1 %i.bt, i32 %i.bw, i32 %i.bv
  %i.by = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i32 noundef 0, i32 noundef %i.bx) ; 0 uses
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN6icu_789ExtraData16writeNoNoMappingEiRKNS_4NormERNS_13UnicodeStringERNS_9HashtableE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i16 2, ptr %i.b, align 8, !tbaa !13
  %i.c = invoke noundef i32 @_ZN6icu_789ExtraData12writeMappingEiRKNS_4NormERNS_13UnicodeStringE(ptr nonnull align 8 poison, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 0, ptr %i.a, align 1, !tbaa !13
  %i.d = load ptr, ptr %4, align 8, !tbaa !25
  %i.e = invoke noundef i32 @uhash_getiAndFound_78(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNK6icu_789Hashtable12getiAndFoundERKNS_13UnicodeStringERa.exit unwind label %bb.d

_ZNK6icu_789Hashtable12getiAndFoundERKNS_13UnicodeStringERa.exit: ; preds = %bb.b
  %i.f = load i8, ptr %i.a, align 1, !tbaa !13
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %_ZNK6icu_789Hashtable12getiAndFoundERKNS_13UnicodeStringERa.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m
  %i.q = add nsw i32 %i.p, %i.c                   ; 2 uses
  %i.r = load i16, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = select i1 %i.s, i32 %i.w, i32 %i.u
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.x)
          to label %bb.f unwind label %bb.d       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %6, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.1, ptr %i.aa, align 8, !tbaa !51
  %i.ab = load ptr, ptr %4, align 8, !tbaa !25
  %i.ac = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #11 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = invoke noundef i32 @uhash_putiAllowZero_78(ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %_ZN6icu_789Hashtable13putiAllowZeroERKNS_13UnicodeStringEiR10UErrorCode.exit unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ac) #11
  br label %.body

_ZN6icu_789Hashtable13putiAllowZeroERKNS_13UnicodeStringEiR10UErrorCode.exit: ; preds = %bb.h
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.af, %bb.i ]
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.l

bb.k:                                             ; preds = %_ZNK6icu_789Hashtable12getiAndFoundERKNS_13UnicodeStringERa.exit, %_ZN6icu_789Hashtable13putiAllowZeroERKNS_13UnicodeStringEiR10UErrorCode.exit
  %.015 = phi i32 [ %i.q, %_ZN6icu_789Hashtable13putiAllowZeroERKNS_13UnicodeStringEiR10UErrorCode.exit ], [ %i.e, %_ZNK6icu_789Hashtable12getiAndFoundERKNS_13UnicodeStringERa.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.015

bb.l:                                             ; preds = %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
end_hunk_0
