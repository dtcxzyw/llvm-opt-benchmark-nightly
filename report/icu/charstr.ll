Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/charstr?download=true
inline.NumInlined: 81
inline.NumDeleted: 24
begin_hunk_0_@_ZN6icu_7810CharString6appendEPKciR10UErrorCode:bb.a
  store i32 5, ptr %3, align 4, !tbaa !17
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.l, %.028                  ; 2 uses
  store i32 %i.s, ptr %i.k, align 8, !tbaa !15
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !19
  br label %bb.s

bb.l:                                             ; preds = %bb.h
  %.not31 = icmp ule ptr %i.j, %1
  %i.v = icmp ult ptr %1, %i.n
  %or.cond35 = and i1 %.not31, %i.v
  br i1 %or.cond35, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !12
  %i.y = sub nsw i32 %i.x, %i.l
  %.not32 = icmp slt i32 %.028, %i.y
  br i1 %.not32, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %1, i32 noundef %.028, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.aa

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.ab = add nuw i32 %.028, 1
  %i.ac = add i32 %i.ab, %i.l
  %i.ad = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ac, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not33 = icmp eq i8 %i.ad, 0
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = load ptr, ptr %0, align 8, !tbaa !11
  %i.af = load i32, ptr %i.k, align 8, !tbaa !15
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  %i.ai = zext nneg i32 %.028 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %1, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !15
  %i.ak = add nsw i32 %i.aj, %.028                ; 2 uses
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !15
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %0, align 8, !tbaa !11
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.r, %bb.q, %bb.j, %bb.k, %bb.a, %bb.o, %bb.d
  %.0 = phi ptr [ %i.z, %bb.o ], [ %0, %bb.d ], [ %0, %bb.a ], [ %0, %bb.k ], [ %0, %bb.j ], [ %0, %bb.q ], [ %0, %bb.r ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8, !tbaa !15
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.e = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %0) #18
  resume { ptr, i32 } %i.f
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !13
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString12appendNumberElR10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = add nsw i32 %i.c, 2
  %i.e = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.b, align 8, !tbaa !15
  %i.h = sext i32 %i.f to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %i.h
  store i8 45, ptr %i.j, align 1, !tbaa !19
  %i.k = load i32, ptr %i.b, align 8, !tbaa !15
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !11
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !19
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.b, %bb.c
  %i.o = load i32, ptr %2, align 4, !tbaa !17
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %.preheader, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

bb.d:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !15
  %i.u = add nsw i32 %i.t, 2
  %i.v = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.u, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i27 = icmp eq i8 %i.v, 0
  br i1 %.not.i27, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.s, align 8, !tbaa !15
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !19
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !15
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %0, align 8, !tbaa !11
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !19
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

bb.g:                                             ; preds = %.preheader, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30
  %indvars.iv38 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next39, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 2 uses
  %.023 = phi i64 [ %1, %.preheader ], [ %i.af, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 3 uses
  %.021 = phi i32 [ 0, %.preheader ], [ %i.aw, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 2 uses
  %.not25 = icmp eq i64 %.023, 0
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sdiv i64 %.023, 10
  %i.ag = srem i64 %.023, 10
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !15
  %i.ai = add nsw i32 %i.ah, 2
  %i.aj = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ai, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i29 = icmp eq i8 %i.aj, 0
  br i1 %.not.i29, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc nsw i64 %i.ag to i8
  %i.al = tail call i8 @llvm.abs.i8(i8 %i.ak, i1 true)
  %i.am = add nuw nsw i8 %i.al, 48
  %i.an = load i32, ptr %i.r, align 8, !tbaa !15  ; 2 uses
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.r, align 8, !tbaa !15
  %i.ap = sext i32 %i.an to i64
  %i.aq = load ptr, ptr %0, align 8, !tbaa !11
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ap
  store i8 %i.am, ptr %i.ar, align 1, !tbaa !19
  %i.as = load i32, ptr %i.r, align 8, !tbaa !15
  %i.at = sext i32 %i.as to i64
  %i.au = load ptr, ptr %0, align 8, !tbaa !11
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !19
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30: ; preds = %bb.h, %bb.i
  %i.aw = add nuw nsw i32 %.021, 1
  %i.ax = load i32, ptr %2, align 4, !tbaa !17
  %i.ay = icmp slt i32 %i.ax, 1
  %indvars.iv.next39 = add i64 %indvars.iv38, -1
  br i1 %i.ay, label %bb.g, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, !llvm.loop !22

bb.j:                                             ; preds = %bb.g
  %i.az = load i32, ptr %i.r, align 8, !tbaa !15  ; 3 uses
  %i.ba = sub nsw i32 %i.az, %.021
  %.033 = add nsw i32 %i.az, -1
  %i.bb = icmp slt i32 %i.ba, %.033
  br i1 %i.bb, label %.lr.ph.preheader, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bc = sext i32 %i.az to i64                   ; 2 uses
  %i.bd = add nsw i64 %i.bc, -1
  %3 = add nsw i64 %indvars.iv38, %i.bc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next42, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %indvars.iv41 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !19
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !19
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bj = icmp slt i64 %indvars.iv.next42, %indvars.iv.next
  br i1 %i.bj, label %.lr.ph, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, !llvm.loop !23

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28: ; preds = %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30, %.lr.ph, %bb.j, %bb.f, %bb.e, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = xor i32 %i.f, -1
  %i.h = add i32 %i.d, %i.g                       ; 2 uses
  %.not14 = icmp slt i32 %i.h, %1
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %3, align 4, !tbaa !24
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = load i32, ptr %i.e, align 8, !tbaa !15
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = add i32 %1, 1
  %i.n = add i32 %i.m, %i.f
  %i.o = add i32 %2, 1
  %i.p = add i32 %i.o, %i.f
  %i.q = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %.not15 = icmp eq i8 %i.q, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 8, !tbaa !12
  %i.s = load i32, ptr %i.e, align 8, !tbaa !15
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %i.r, %i.t
  store i32 %i.u, ptr %3, align 4, !tbaa !24
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = load i32, ptr %i.e, align 8, !tbaa !15
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %3, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.l, %bb.d ], [ %i.y, %bb.f ], [ null, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !19   ; 4 uses
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 4 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !17
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.p = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %.0.i, i32 noundef %i.m)
  %.not10.i = icmp eq i8 %i.p, 0
  br i1 %.not10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 26, ptr %2, align 4, !tbaa !17
  br label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !15
  %i.s = add i32 %i.m, 1
  %i.t = add i32 %i.s, %i.r
  %i.u = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.t, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not11.i = icmp eq i8 %i.u, 0
  br i1 %.not11.i, label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = load i32, ptr %i.q, align 8, !tbaa !15
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @u_UCharsToChars_78(ptr noundef %.0.i, ptr noundef %i.y, i32 noundef %i.m)
  %i.z = load i32, ptr %i.q, align 8, !tbaa !15
  %i.aa = add nsw i32 %i.z, %i.m                  ; 2 uses
  store i32 %i.aa, ptr %i.q, align 8, !tbaa !15
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  br label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.f, %bb.g, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %1, i32 noundef %2)
  %.not10 = icmp eq i8 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 26, ptr %3, align 4, !tbaa !17
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = add i32 %2, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.g, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not11 = icmp eq i8 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = load i32, ptr %i.d, align 8, !tbaa !15
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  tail call void @u_UCharsToChars_78(ptr noundef %1, ptr noundef %i.l, i32 noundef %2)
  %i.m = load i32, ptr %i.d, align 8, !tbaa !15
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !15
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !11
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  ret ptr %0
}

declare signext i8 @uprv_isInvariantUString_78(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(60) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17
end_hunk_0
