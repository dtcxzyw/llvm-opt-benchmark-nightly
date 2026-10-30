Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unistr_cnv?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
begin_hunk_0_@_ZN6icu_7813UnicodeString16doCodepageCreateEPKciS2_:bb.a
bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.h, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @u_releaseDefaultConverter_78(ptr noundef %.1)
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

bb.ab:                                            ; preds = %bb.z
  call void @ucnv_close_78(ptr noundef %.1)
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

_ZN6icu_7813UnicodeString9setLengthEi.exit:       ; preds = %bb.s, %bb.r, %bb.aa, %bb.ab, %bb.t, %.critedge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN6icu_7813UnicodeString9setLengthEi.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeStringC2EPKciS2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 10)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7813UnicodeString16doCodepageCreateEPKciS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #7
  resume { ptr, i32 } %i.b

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeStringC2EPKciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 10)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %4, align 4, !tbaa !12
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.thread, label %bb.c

bb.b:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #7
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %2, -1
  br i1 %i.f, label %.thread30, label %bb.d

.thread30:                                        ; preds = %bb.c
  store i32 1, ptr %4, align 4, !tbaa !12
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %2, -1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6
  %i.i = trunc i64 %i.h to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.i, %bb.e ], [ %2, %bb.d ]    ; 3 uses
  %i.j = icmp sgt i32 %.0, 0
  br i1 %i.j, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @ucnv_resetToUnicode_78(ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6icu_7813UnicodeString16doCodepageCreateEPKciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, i32 noundef %.0, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.m unwind label %bb.b

bb.j:                                             ; preds = %bb.g
  %i.k = invoke ptr @u_getDefaultConverter_78(ptr noundef nonnull %4)
          to label %bb.k unwind label %bb.b       ; 2 uses

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6icu_7813UnicodeString16doCodepageCreateEPKciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, i32 noundef %.0, ptr noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  invoke void @u_releaseDefaultConverter_78(ptr noundef %i.k)
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.f
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  %i.l = icmp slt i32 %.pr, 1
  br i1 %i.l, label %.thread, label %bb.n

bb.n:                                             ; preds = %.thread30, %bb.m
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %bb.m, %bb.n, %bb.a
  ret void
}

declare void @ucnv_resetToUnicode_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeString16doCodepageCreateEPKciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !12
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.h = lshr i32 %2, 2
  %i.i = add nuw nsw i32 %i.h, %2
  %.inv = icmp sgt i32 %2, 27
  %.018 = select i1 %.inv, i32 %i.i, i32 27       ; 2 uses
  %i.j = tail call noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.018, i32 noundef %.018, i8 noundef signext 0, ptr noundef null, i8 noundef signext 0)
  %.not2228 = icmp eq i8 %i.j, 0
  br i1 %.not2228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = ptrtoint ptr %i.g to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.h, %bb.b
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.q = load i16, ptr %i.k, align 8, !tbaa !10   ; 3 uses
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0                   ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = select i1 %.not.i, ptr %i.s, ptr %i.l    ; 3 uses
  %i.u = icmp slt i16 %i.q, 0
  %i.v = ashr i16 %i.q, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.n, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.z
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.ab = load i32, ptr %i.o, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = select i1 %.not.i, i64 %i.ac, i64 27
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ad
  call void @ucnv_toUnicode_78(ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef %i.g, ptr noundef null, i8 noundef signext 1, ptr noundef nonnull %i.c)
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.t to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 1                 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1024
  %i.am = load i16, ptr %i.k, align 8, !tbaa !10  ; 2 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = and i16 %i.am, 31
  %.tr.i.i = trunc i64 %i.aj to i16
  %i.ao = shl i16 %.tr.i.i, 5                     ; 2 uses
  %i.ap = or disjoint i16 %i.ao, %i.an
  %5 = icmp slt i16 %i.ao, 0
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = or i16 %i.am, -32
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !10
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

_ZN6icu_7813UnicodeString9setLengthEi.exit:       ; preds = %bb.d, %bb.e
  %6 = phi i1 [ %5, %bb.d ], [ true, %bb.e ]
  %i.ar = phi i16 [ %i.ap, %bb.d ], [ %i.aq, %bb.e ] ; 2 uses
  store i16 %i.ar, ptr %i.k, align 8, !tbaa !10
  %i.as = load i32, ptr %i.c, align 4, !tbaa !12  ; 3 uses
  %i.at = icmp eq i32 %i.as, 15
  br i1 %i.at, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7813UnicodeString9setLengthEi.exit
  %i.au = icmp slt i32 %i.as, 1
  br i1 %i.au, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.as, ptr %4, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.i

bb.h:                                             ; preds = %_ZN6icu_7813UnicodeString9setLengthEi.exit
  %i.av = ashr i16 %i.ar, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.n, align 4
  %i.ay = select i1 %6, i32 %i.ax, i32 %i.aw
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.p, %i.ba
  %.tr = trunc i64 %i.bb to i32
  %i.bc = shl i32 %.tr, 1
  %i.bd = add i32 %i.bc, %i.ay                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.be = call noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bd, i32 noundef %i.bd, i8 noundef signext 1, ptr noundef null, i8 noundef signext 0)
  %.not22 = icmp eq i8 %i.be, 0
  br i1 %.not22, label %._crit_edge, label %bb.c

bb.i:                                             ; preds = %.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

declare ptr @u_getDefaultConverter_78(ptr noundef) local_unnamed_addr #3

declare void @u_releaseDefaultConverter_78(ptr noundef) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPcjPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = icmp ne i32 %4, 0
  %i.c = icmp eq ptr %3, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.s, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !10   ; 3 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h       ; 2 uses
  %i.l = icmp slt i32 %1, 0
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.k)
  %.061 = select i1 %i.l, i32 0, i32 %spec.select ; 5 uses
  %i.m = icmp slt i32 %2, 0
  %i.n = sub nsw i32 %i.k, %.061
  %spec.select69 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.n) ; 6 uses
  %i.o = icmp ult i32 %4, 2147483647
  %i.p = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.q = add i64 %i.p, 2147483647
  %i.r = icmp ult ptr %3, inttoptr (i64 -2147483647 to ptr)
  %i.s = select i1 %i.r, i64 %i.q, i64 4294967295
  %i.t = sub i64 %i.s, %i.p
  %i.u = trunc i64 %i.t to i32
  %.046 = select i1 %i.o, i32 %4, i32 %i.u        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.v = icmp eq i32 %spec.select69, 0
  %i.w = select i1 %i.m, i1 true, i1 %i.v
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.sink.split.i
  %i.x = call i32 @u_terminateChars_78(ptr noundef %3, i32 noundef %.046, i32 noundef 0, ptr noundef nonnull %i.a)
  br label %bb.r

bb.c:                                             ; preds = %.sink.split.i
  %i.y = icmp eq ptr %5, null
  br i1 %i.y, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @ucnv_getDefaultName_78()  ; 9 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  switch i8 %i.aa, label %bb.p [
    i8 85, label %bb.e
    i8 117, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = icmp eq i8 %i.ac, 84
  br i1 %i.ad, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = icmp eq i8 %i.af, 70
  br i1 %i.ag, label %bb.i, label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = icmp eq i8 %i.ai, 116
  br i1 %i.aj, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = icmp eq i8 %i.al, 102
  br i1 %i.am, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  switch i8 %i.ao, label %bb.p [
    i8 45, label %bb.j
    i8 56, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = icmp eq i8 %i.aq, 56
  br i1 %i.ar, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ay = tail call noundef i32 @_ZNK6icu_7813UnicodeString6toUTF8EiiPci(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.061, i32 noundef %spec.select69, ptr noundef %3, i32 noundef %.046)
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  %i.az = load i8, ptr %5, align 1, !tbaa !10
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.046. = tail call i32 @llvm.smin.i32(i32 %spec.select69, i32 %.046)
  %i.bb = and i16 %i.e, 2
  %.not.i = icmp eq i16 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = select i1 %.not.i, ptr %i.be, ptr %i.bc
  %i.bg = sext i32 %.061 to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bg
  tail call void @u_UCharsToChars_78(ptr noundef %i.bh, ptr noundef %3, i32 noundef %.046.)
  %i.bi = call i32 @u_terminateChars_78(ptr noundef %3, i32 noundef %.046, i32 noundef %spec.select69, ptr noundef nonnull %i.a)
  br label %bb.r

bb.p:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.d, %bb.i
  %i.bj = call ptr @u_getDefaultConverter_78(ptr noundef nonnull %i.a) ; 2 uses
  %i.bk = call noundef i32 @_ZNK6icu_7813UnicodeString9doExtractEiiPciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.061, i32 noundef %spec.select69, ptr noundef %3, i32 noundef %.046, ptr noundef %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @u_releaseDefaultConverter_78(ptr noundef %i.bj)
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bl = call ptr @ucnv_open_78(ptr noundef nonnull %5, ptr noundef nonnull %i.a) ; 2 uses
  %i.bm = call noundef i32 @_ZNK6icu_7813UnicodeString9doExtractEiiPciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.061, i32 noundef %spec.select69, ptr noundef %3, i32 noundef %.046, ptr noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @ucnv_close_78(ptr noundef %i.bl)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.o, %bb.b
  %.145 = phi i32 [ %i.x, %bb.b ], [ %i.bi, %bb.o ], [ %i.ay, %bb.m ], [ %i.bm, %bb.q ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.2 = phi i32 [ %.145, %bb.r ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @u_terminateChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ucnv_getDefaultName_78() local_unnamed_addr #3

declare noundef i32 @_ZNK6icu_7813UnicodeString6toUTF8EiiPci(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ucnv_open_78(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7813UnicodeString9doExtractEiiPciP10UConverterR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca [1024 x i8], align 16             ; 5 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !15
  %i.e = load i32, ptr %6, align 4, !tbaa !12
end_hunk_0
