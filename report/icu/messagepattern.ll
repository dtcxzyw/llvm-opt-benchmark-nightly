Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messagepattern?download=true
inline.NumInlined: 271
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7814MessagePatternD2Ev:bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #20
  unreachable

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EED2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.b) #18
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EED2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !46
  %.not.i.i.i2 = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i2, label %_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !38
  invoke void @uprv_free_78(ptr noundef %i.n)
          to label %_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #20
  unreachable

_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit:   ; preds = %bb.f, %bb.g
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.j) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.q) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7814MessagePatternD0Ev(ptr noundef nonnull align 8 dereferenceable(127) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7814MessagePatternD1Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !24
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.d, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 0, ptr %i.e, align 4, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7814MessagePattern12parseMessageEiii22UMessagePatternArgTypeP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !24     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit196

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 1023
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit196

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 30 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 21 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = icmp sgt i32 %i.i, %i.e
  br i1 %i.j, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.l = icmp sgt i32 %i.e, 0
  br i1 %i.l, label %bb.f, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.k to i64
  %i.n = shl nuw nsw i64 %i.m, 4
  %i.o = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.n) #19 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.h, align 8, !tbaa !28
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.p)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.k)
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.r = sext i32 %.1.i.i.i to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @uprv_free_78(ptr noundef %i.q)
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.h, %bb.g
  store ptr %i.o, ptr %i.g, align 8, !tbaa !27
  store i32 %i.k, ptr %i.h, align 8, !tbaa !28
  store i8 1, ptr %i.t, align 4, !tbaa !44
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !25
  %.pre12.i = load i32, ptr %i.d, align 8, !tbaa !35
  %.pre.pre = load i32, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread: ; preds = %bb.e, %bb.f
  store i32 7, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit196

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.d, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i
  %.pre = phi i32 [ %.pre.pre, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.a, %bb.d ]
  %i.v = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.g, %bb.d ]
  %i.x = add nsw i32 %i.v, 1
  store i32 %i.x, ptr %i.d, align 8, !tbaa !35
  %i.y = sext i32 %i.v to i64
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.y ; 5 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %1, ptr %i.ab, align 4, !tbaa !51
  %i.ac = trunc i32 %2 to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 %i.ac, ptr %i.ad, align 4, !tbaa !52
  %i.ae = trunc i32 %3 to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !54
  %i.ah = icmp slt i32 %.pre, 1
  br i1 %i.ah, label %.lr.ph, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit196

.lr.ph:                                           ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %i.ai = add nsw i32 %2, %1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = icmp eq i32 %4, 3
  %i.ap = icmp eq i32 %4, 5
  %or.cond15 = or i1 %i.ao, %i.ap                 ; 2 uses
  %i.aq = icmp sgt i32 %3, 0                      ; 2 uses
  %i.ar = icmp eq i32 %4, 2                       ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit135
  %.0102226 = phi i32 [ %i.ai, %.lr.ph ], [ %.3105.ph, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit135 ] ; 13 uses
  %i.au = load i16, ptr %i.ak, align 8, !tbaa !22 ; 3 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.al, align 4
  %i.az = select i1 %i.av, i32 %i.ay, i32 %i.ax   ; 5 uses
  %.not112 = icmp slt i32 %.0102226, %i.az
  br i1 %.not112, label %bb.j, label %bb.br

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %.0102226, 1                ; 10 uses
  %i.bb = icmp ult i32 %.0102226, %i.az
  br i1 %i.bb, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit135

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.j
  %i.bc = and i16 %i.au, 2
  %.not.i.i.i114 = icmp eq i16 %i.bc, 0
  %i.bd = load ptr, ptr %i.an, align 8
  %i.be = select i1 %.not.i.i.i114, ptr %i.bd, ptr %i.am ; 2 uses
  %i.bf = sext i32 %.0102226 to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !34 ; 5 uses
  %i.bi = icmp eq i16 %i.bh, 39
  br i1 %i.bi, label %bb.k, label %bb.bb

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bj = icmp eq i32 %i.ba, %i.az
  br i1 %i.bj, label %bb.l, label %_ZNK6icu_7813UnicodeString6charAtEi.exit126

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !25  ; 5 uses
  %i.bl = load i32, ptr %i.d, align 8, !tbaa !35  ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !28
  %i.bo = icmp sgt i32 %i.bn, %i.bl
  br i1 %i.bo, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i122, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = shl nuw nsw i32 %i.bl, 1                ; 3 uses
  %i.bq = icmp sgt i32 %i.bl, 0
  br i1 %i.bq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = shl nuw nsw i64 %i.br, 4
  %i.bt = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bs) #19 ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i115, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load i32, ptr %i.bm, align 8, !tbaa !28
  %spec.select.i.i.i116 = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bu)
  %.1.i.i.i117 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i116, i32 %i.bp)
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %i.bw = sext i32 %.1.i.i.i117 to i64
  %i.bx = shl nsw i64 %i.bw, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %i.bv, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !44
  %.not.i.i.i.i118 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i118, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i119, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @uprv_free_78(ptr noundef %i.bv)
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i119

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i119: ; preds = %bb.p, %bb.o
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !27
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !28
  store i8 1, ptr %i.by, align 4, !tbaa !44
  %.pre.i120 = load ptr, ptr %i.f, align 8, !tbaa !25
  %.pre12.i121 = load i32, ptr %i.d, align 8, !tbaa !35
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i122

bb.q:                                             ; preds = %bb.n, %bb.m
  store i32 7, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit123

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i122: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i119, %bb.l
  %i.ca = phi i32 [ %.pre12.i121, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i119 ], [ %i.bl, %bb.l ] ; 2 uses
  %i.cb = phi ptr [ %.pre.i120, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i119 ], [ %i.bk, %bb.l ]
  %i.cc = add nsw i32 %i.ca, 1
  store i32 %i.cc, ptr %i.d, align 8, !tbaa !35
  %i.cd = sext i32 %i.ca to i64
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.cd ; 5 uses
  store i32 3, ptr %i.cf, align 4, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.az, ptr %i.cg, align 4, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i16 0, ptr %i.ch, align 4, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  store i16 39, ptr %i.ci, align 2, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !54
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit123

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit123: ; preds = %bb.q, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i122
  store i8 1, ptr %i.at, align 2, !tbaa !42
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit135

_ZNK6icu_7813UnicodeString6charAtEi.exit126:      ; preds = %bb.k
  %i.ck = sext i32 %i.ba to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !34 ; 4 uses
  %i.cn = icmp eq i16 %i.cm, 39
  br i1 %i.cn, label %bb.r, label %_ZNK6icu_7813UnicodeString6charAtEi.exit126.thread

bb.r:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit126
  %i.co = add nuw nsw i32 %.0102226, 2
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !25  ; 5 uses
  %i.cq = load i32, ptr %i.d, align 8, !tbaa !35  ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !28
  %i.ct = icmp sgt i32 %i.cs, %i.cq
  br i1 %i.ct, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i134, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = shl nuw nsw i32 %i.cq, 1                ; 3 uses
  %i.cv = icmp sgt i32 %i.cq, 0
  br i1 %i.cv, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cx) #19 ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i127, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load i32, ptr %i.cr, align 8, !tbaa !28
  %spec.select.i.i.i128 = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cz)
  %.1.i.i.i129 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i128, i32 %i.cu)
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !27 ; 2 uses
  %i.db = sext i32 %.1.i.i.i129 to i64
  %i.dc = shl nsw i64 %i.db, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr align 4 %i.da, i64 %i.dc, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 12 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !44
  %.not.i.i.i.i130 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i130, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i131, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @uprv_free_78(ptr noundef %i.da)
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i131

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i131: ; preds = %bb.v, %bb.u
  store ptr %i.cy, ptr %i.cp, align 8, !tbaa !27
  store i32 %i.cu, ptr %i.cr, align 8, !tbaa !28
  store i8 1, ptr %i.dd, align 4, !tbaa !44
  %.pre.i132 = load ptr, ptr %i.f, align 8, !tbaa !25
  %.pre12.i133 = load i32, ptr %i.d, align 8, !tbaa !35
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i134

bb.w:                                             ; preds = %bb.t, %bb.s
  store i32 7, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit196

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i134: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i131, %bb.r
  %i.df = phi i32 [ %.pre12.i133, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i131 ], [ %i.cq, %bb.r ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i132, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i131 ], [ %i.cp, %bb.r ]
  %i.dh = add nsw i32 %i.df, 1
  store i32 %i.dh, ptr %i.d, align 8, !tbaa !35
  %i.di = sext i32 %i.df to i64
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !27
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.dj, i64 %i.di ; 5 uses
  store i32 2, ptr %i.dk, align 4, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 %i.ba, ptr %i.dl, align 4, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i16 1, ptr %i.dm, align 4, !tbaa !52
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 10
  store i16 0, ptr %i.dn, align 2, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !54
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit135

_ZNK6icu_7813UnicodeString6charAtEi.exit126.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit126
  %i.dp = load i32, ptr %i.as, align 8, !tbaa !21
  %.fr = freeze i32 %i.dp
  %i.dq = icmp eq i32 %.fr, 1
  br i1 %i.dq, label %bb.y, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit126.thread
  switch i16 %i.cm, label %bb.x [
    i16 125, label %bb.y
    i16 123, label %bb.y
  ]

bb.x:                                             ; preds = %switch.early.test
  %i.dr = icmp eq i16 %i.cm, 124
  %or.cond8 = and i1 %i.ar, %i.dr
  %i.ds = icmp eq i16 %i.cm, 35
  %or.cond13 = and i1 %or.cond15, %i.ds
  %or.cond = or i1 %or.cond8, %or.cond13
  br i1 %or.cond, label %bb.y, label %bb.ba

bb.y:                                             ; preds = %switch.early.test, %switch.early.test, %_ZNK6icu_7813UnicodeString6charAtEi.exit126.thread, %bb.x
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !25  ; 5 uses
  %i.du = load i32, ptr %i.d, align 8, !tbaa !35  ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !28
  %i.dx = icmp sgt i32 %i.dw, %i.du
  br i1 %i.dx, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i143, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = shl nuw nsw i32 %i.du, 1                ; 3 uses
  %i.dz = icmp sgt i32 %i.du, 0
  br i1 %i.dz, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.eb) #19 ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i136, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = load i32, ptr %i.dv, align 8, !tbaa !28
  %spec.select.i.i.i137 = tail call i32 @llvm.smin.i32(i32 %i.du, i32 %i.ed)
  %.1.i.i.i138 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i137, i32 %i.dy)
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !27 ; 2 uses
  %i.ef = sext i32 %.1.i.i.i138 to i64
  %i.eg = shl nsw i64 %i.ef, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 4 %i.ee, i64 %i.eg, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !44
  %.not.i.i.i.i139 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i139, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i140, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @uprv_free_78(ptr noundef %i.ee)
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i140

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i140: ; preds = %bb.ac, %bb.ab
  store ptr %i.ec, ptr %i.dt, align 8, !tbaa !27
  store i32 %i.dy, ptr %i.dv, align 8, !tbaa !28
  store i8 1, ptr %i.eh, align 4, !tbaa !44
  %.pre.i141 = load ptr, ptr %i.f, align 8, !tbaa !25
  %.pre12.i142 = load i32, ptr %i.d, align 8, !tbaa !35
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i143

bb.ad:                                            ; preds = %bb.aa, %bb.z
  store i32 7, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.preheader

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i143: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i140, %bb.y
  %i.ej = phi i32 [ %.pre12.i142, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i140 ], [ %i.du, %bb.y ] ; 2 uses
  %i.ek = phi ptr [ %.pre.i141, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i140 ], [ %i.dt, %bb.y ]
  %i.el = add nsw i32 %i.ej, 1
  store i32 %i.el, ptr %i.d, align 8, !tbaa !35
  %i.em = sext i32 %i.ej to i64
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !27
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.en, i64 %i.em ; 5 uses
  store i32 2, ptr %i.eo, align 4, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 %.0102226, ptr %i.ep, align 4, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i16 1, ptr %i.eq, align 4, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 10
  store i16 0, ptr %i.er, align 2, !tbaa !53
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !54
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.preheader

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.preheader: ; preds = %bb.ad, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i143
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144: ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.backedge, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.preheader
  %.1103 = phi i32 [ %i.ba, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.preheader ], [ %i.fg, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.backedge ] ; 2 uses
  %i.et = icmp slt i32 %.1103, -1
  %.pre.i145 = load i16, ptr %i.ak, align 8, !tbaa !22 ; 4 uses
  br i1 %i.et, label %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, label %bb.ae

._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i: ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144
  %.pre4.i = load i32, ptr %i.al, align 4
  %.pre5.i = ashr i16 %.pre.i145, 5
  %.pre6.i = sext i16 %.pre5.i to i32
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

bb.ae:                                            ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144
  %i.eu = add nsw i32 %.1103, 1
  %i.ev = icmp slt i16 %.pre.i145, 0
  %i.ew = ashr i16 %.pre.i145, 5
  %i.ex = sext i16 %i.ew to i32                   ; 2 uses
  %i.ey = load i32, ptr %i.al, align 4            ; 2 uses
  %i.ez = select i1 %i.ev, i32 %i.ey, i32 %i.ex
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.ez)
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, %bb.ae
  %.pre-phi7.i = phi i32 [ %.pre6.i, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %i.ex, %bb.ae ]
  %i.fa = phi i32 [ %.pre4.i, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %i.ey, %bb.ae ]
  %.0.i = phi i32 [ 0, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %spec.select.i, %bb.ae ] ; 2 uses
  %i.fb = icmp slt i16 %.pre.i145, 0
  %i.fc = select i1 %i.fb, i32 %i.fa, i32 %.pre-phi7.i
  %i.fd = sub nsw i32 %i.fc, %.0.i
  %i.fe = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i16 noundef zeroext 39, i32 noundef %.0.i, i32 noundef %i.fd) ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %bb.af, label %bb.at

bb.af:                                            ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.fg = add nuw nsw i32 %i.fe, 1                ; 5 uses
  %i.fh = load i16, ptr %i.ak, align 8, !tbaa !22 ; 3 uses
  %i.fi = icmp slt i16 %i.fh, 0
  %i.fj = ashr i16 %i.fh, 5
  %i.fk = sext i16 %i.fj to i32
  %i.fl = load i32, ptr %i.al, align 4
  %i.fm = select i1 %i.fi, i32 %i.fl, i32 %i.fk
  %i.fn = icmp ult i32 %i.fg, %i.fm
  br i1 %i.fn, label %_ZNK6icu_7813UnicodeString6charAtEi.exit148, label %_ZNK6icu_7813UnicodeString6charAtEi.exit148.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit148:      ; preds = %bb.af
  %i.fo = and i16 %i.fh, 2
  %.not.i.i.i147 = icmp eq i16 %i.fo, 0
  %i.fp = load ptr, ptr %i.an, align 8
  %i.fq = select i1 %.not.i.i.i147, ptr %i.fp, ptr %i.am
  %i.fr = zext nneg i32 %i.fg to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !34
  %i.fu = icmp eq i16 %i.ft, 39
  br i1 %i.fu, label %bb.ag, label %_ZNK6icu_7813UnicodeString6charAtEi.exit148.thread

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit148
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !25  ; 5 uses
  %i.fw = load i32, ptr %i.d, align 8, !tbaa !35  ; 5 uses
  %i.fx = load i32, ptr %6, align 4, !tbaa !24
  %i.fy = icmp slt i32 %i.fx, 1
  br i1 %i.fy, label %bb.ah, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.backedge

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.backedge: ; preds = %bb.ag, %bb.am, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i156
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144, !llvm.loop !59

bb.ah:                                            ; preds = %bb.ag
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !28
  %i.gb = icmp sgt i32 %i.ga, %i.fw
  br i1 %i.gb, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i156, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gc = shl nuw nsw i32 %i.fw, 1                ; 3 uses
  %i.gd = icmp sgt i32 %i.fw, 0
  br i1 %i.gd, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.gf) #19 ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i149, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load i32, ptr %i.fz, align 8, !tbaa !28
  %spec.select.i.i.i150 = tail call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.gh)
  %.1.i.i.i151 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i150, i32 %i.gc)
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !27 ; 2 uses
  %i.gj = sext i32 %.1.i.i.i151 to i64
  %i.gk = shl nsw i64 %i.gj, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gg, ptr align 4 %i.gi, i64 %i.gk, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 12 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !44
  %.not.i.i.i.i152 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i152, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i153, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @uprv_free_78(ptr noundef %i.gi)
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i153

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i153: ; preds = %bb.al, %bb.ak
  store ptr %i.gg, ptr %i.fv, align 8, !tbaa !27
  store i32 %i.gc, ptr %i.fz, align 8, !tbaa !28
  store i8 1, ptr %i.gl, align 4, !tbaa !44
  %.pre.i154 = load ptr, ptr %i.f, align 8, !tbaa !25
  %.pre12.i155 = load i32, ptr %i.d, align 8, !tbaa !35
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i156

bb.am:                                            ; preds = %bb.aj, %bb.ai
  store i32 7, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit144.backedge

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i156: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i153, %bb.ah
  %i.gn = phi i32 [ %.pre12.i155, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i153 ], [ %i.fw, %bb.ah ] ; 2 uses
  %i.go = phi ptr [ %.pre.i154, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i153 ], [ %i.fv, %bb.ah ]
  %i.gp = add nsw i32 %i.gn, 1
  store i32 %i.gp, ptr %i.d, align 8, !tbaa !35
  %i.gq = sext i32 %i.gn to i64
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !27
  %i.gs = getelementptr inbounds [16 x i8], ptr %i.gr, i64 %i.gq ; 5 uses
  store i32 2, ptr %i.gs, align 4, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %i.fg, ptr %i.gt, align 4, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i16 1, ptr %i.gu, align 4, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZN6icu_7814MessagePattern8parseArgEiiiP11UParseErrorR10UErrorCode:bb.a
  %i.gb = select i1 %.not.i.i.i37.i172, ptr %i.ga, ptr %i.fy
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !34
  %i.ge = and i16 %i.gd, -1024
  %i.gf = icmp eq i16 %i.ge, -10240
  %i.gg = select i1 %i.gf, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit38.i169

bb.am:                                            ; preds = %bb.ak
  %i.gh = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.fp) #18, !srcloc !56
  br label %common.resume

_ZNK6icu_7813UnicodeStringixEi.exit38.i169:       ; preds = %bb.al, %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit.i168
  %.1.i170 = phi i32 [ %i.fv, %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit.i168 ], [ %i.gg, %bb.al ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  invoke void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef 0, i32 noundef %.1.i170, ptr noundef nonnull %i.gi, i32 noundef 0)
          to label %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit39.i171 unwind label %bb.an

_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit39.i171: ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit38.i169
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.gi) #18, !srcloc !56
  %i.gj = sext i32 %.1.i170 to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.gj
  store i16 0, ptr %i.gk, align 2, !tbaa !34
  br label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit173

bb.an:                                            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit38.i169
  %i.gl = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.gi) #18, !srcloc !56
  br label %common.resume

_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit173: ; preds = %bb.aj, %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit39.i171
  store i32 65801, ptr %5, align 4, !tbaa !24
  br label %.critedge150

bb.ao:                                            ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit166
  %i.gm = icmp ugt i32 %i.fl, %i.ff
  br i1 %i.gm, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.ao
  %i.gn = and i16 %i.fg, 2
  %.not.i.i.i175 = icmp eq i16 %i.gn, 0
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = select i1 %.not.i.i.i175, ptr %i.gq, ptr %i.go
  %sext216 = shl i64 %i.fd, 31
  %i.gs = ashr i64 %sext216, 32
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !34
  switch i16 %i.gu, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 125, label %.thread249
    i16 44, label %bb.ap
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.ao, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 65799, ptr %5, align 4, !tbaa !24
  br label %.critedge150

bb.ap:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.gv = add nuw nsw i32 %i.ff, 1
  %i.gw = tail call noundef i32 @_ZN6icu_7814MessagePattern14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gv) ; 12 uses
  %i.gx = load i16, ptr %i.ah, align 8, !tbaa !22 ; 3 uses
  %i.gy = icmp slt i16 %i.gx, 0
  %i.gz = ashr i16 %i.gx, 5
  %i.ha = sext i16 %i.gz to i32
  %i.hb = load i32, ptr %i.ar, align 4
  %i.hc = select i1 %i.gy, i32 %i.hb, i32 %i.ha   ; 5 uses
  %i.hd = icmp slt i32 %i.gw, %i.hc
  %i.he = icmp ult i32 %i.gw, %i.hc
  %or.cond217 = and i1 %i.hd, %i.he
  br i1 %or.cond217, label %_ZNK6icu_7813UnicodeString6charAtEi.exit178.lr.ph, label %.critedge

_ZNK6icu_7813UnicodeString6charAtEi.exit178.lr.ph: ; preds = %bb.ap
  %i.hf = and i16 %i.gx, 2
  %.not.i.i.i177 = icmp eq i16 %i.hf, 0
  %i.hg = load ptr, ptr %i.gp, align 8
  %i.hh = select i1 %.not.i.i.i177, ptr %i.hg, ptr %i.go
  %i.hi = sext i32 %i.gw to i64
  %i.hj = sext i32 %i.hc to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit178

_ZNK6icu_7813UnicodeString6charAtEi.exit178:      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit178.lr.ph, %bb.aq
  %indvars.iv = phi i64 [ %i.hi, %_ZNK6icu_7813UnicodeString6charAtEi.exit178.lr.ph ], [ %indvars.iv.next, %bb.aq ] ; 3 uses
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %indvars.iv
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !34
  %i.hm = and i16 %i.hl, -33
  %i.hn = add i16 %i.hm, -91
  %narrow.i = icmp ult i16 %i.hn, -26
  br i1 %narrow.i, label %.critedge.loopexit.split.loop.exit254, label %bb.aq

bb.aq:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit178
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ho = icmp slt i64 %indvars.iv.next, %i.hj
  %i.hp = trunc nsw i64 %indvars.iv.next to i32
  %i.hq = icmp ugt i32 %i.hc, %i.hp
  %or.cond = and i1 %i.ho, %i.hq
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit178, label %.critedge, !llvm.loop !66

.critedge.loopexit.split.loop.exit254:            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit178
  %i.hr = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.aq, %.critedge.loopexit.split.loop.exit254, %bb.ap
  %.0122.lcssa = phi i32 [ %i.gw, %bb.ap ], [ %i.hr, %.critedge.loopexit.split.loop.exit254 ], [ %i.hc, %bb.aq ] ; 3 uses
  %i.hs = sub nuw nsw i32 %.0122.lcssa, %i.gw     ; 3 uses
  %i.ht = tail call noundef i32 @_ZN6icu_7814MessagePattern14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %.0122.lcssa) ; 7 uses
  %i.hu = load i16, ptr %i.ah, align 8, !tbaa !22 ; 3 uses
  %i.hv = icmp slt i16 %i.hu, 0
  %i.hw = ashr i16 %i.hu, 5
  %i.hx = sext i16 %i.hw to i32
  %i.hy = load i32, ptr %i.ar, align 4
  %i.hz = select i1 %i.hv, i32 %i.hy, i32 %i.hx   ; 2 uses
  %i.ia = icmp eq i32 %i.ht, %i.hz
  br i1 %i.ia, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef 0)
  store i32 65801, ptr %5, align 4, !tbaa !24
  br label %.critedge150

bb.as:                                            ; preds = %.critedge
  %i.ib = icmp ne i32 %.0122.lcssa, %i.gw
  %i.ic = icmp ult i32 %i.ht, %i.hz
  %or.cond214 = and i1 %i.ib, %i.ic
  br i1 %or.cond214, label %_ZNK6icu_7813UnicodeString6charAtEi.exit181, label %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit181:      ; preds = %bb.as
  %i.id = and i16 %i.hu, 2
  %.not.i.i.i180 = icmp eq i16 %i.id, 0
  %i.ie = load ptr, ptr %i.gp, align 8
  %i.if = select i1 %.not.i.i.i180, ptr %i.ie, ptr %i.go
  %i.ig = sext i32 %i.ht to i64
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !34 ; 5 uses
  switch i16 %i.ii, label %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread [
    i16 125, label %bb.at
    i16 44, label %bb.at
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit181, %bb.as
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 65799, ptr %5, align 4, !tbaa !24
  br label %.critedge150

bb.at:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit181, %_ZNK6icu_7813UnicodeString6charAtEi.exit181
  %i.ij = icmp sgt i32 %i.hs, 65535
  br i1 %i.ij, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 8, ptr %5, align 4, !tbaa !24
  br label %.critedge150

bb.av:                                            ; preds = %bb.at
  switch i32 %i.hs, label %.thread187 [
    i32 6, label %bb.aw
    i32 13, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ik = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isChoiceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gw)
  %.not142 = icmp eq i8 %i.ik, 0
  br i1 %.not142, label %bb.ax, label %.thread195

bb.ax:                                            ; preds = %bb.aw
  %i.il = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isPluralEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gw)
  %.not143 = icmp eq i8 %i.il, 0
  br i1 %.not143, label %.split, label %.thread195.thread

.split:                                           ; preds = %bb.ax
  %i.im = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isSelectEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gw)
  %.not144 = icmp eq i8 %i.im, 0                  ; 2 uses
  %i.in = select i1 %.not144, i16 1, i16 4
  %i.io = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ip = sext i32 %i.b to i64
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !27
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.iq, i64 %i.ip
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 10
  store i16 %i.in, ptr %i.is, align 2, !tbaa !53
  br i1 %.not144, label %.thread245, label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.it = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isSelectEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gw)
  %.not140 = icmp eq i8 %i.it, 0
  br i1 %.not140, label %.thread187, label %bb.az

.thread187:                                       ; preds = %bb.av, %bb.ay
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.iv = sext i32 %i.b to i64
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !27
  %i.ix = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 10
  store i16 1, ptr %i.iy, align 2, !tbaa !53
  br label %.thread245

bb.az:                                            ; preds = %bb.ay
  %i.iz = add nuw nsw i32 %i.gw, 6
  %i.ja = tail call noundef signext i8 @_ZN6icu_7814MessagePattern9isOrdinalEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.iz)
  %.not141 = icmp eq i8 %i.ja, 0                  ; 2 uses
  %i.jb = select i1 %.not141, i16 1, i16 5
  %i.jc = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.jd = sext i32 %i.b to i64
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !27
  %i.jf = getelementptr inbounds [16 x i8], ptr %i.je, i64 %i.jd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 10
  store i16 %i.jb, ptr %i.jg, align 2, !tbaa !53
  br i1 %.not141, label %.thread245, label %bb.ba

bb.ba:                                            ; preds = %.split, %bb.az
  %.0116189 = phi i32 [ 4, %.split ], [ 5, %bb.az ]
  %i.jh = icmp eq i16 %i.ii, 125
  br i1 %i.jh, label %.thread199, label %.thread204

.thread245:                                       ; preds = %bb.az, %.thread187, %.split
  tail call void @_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 9, i32 noundef %i.gw, i32 noundef %i.hs, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ji = icmp eq i16 %i.ii, 125
  br i1 %i.ji, label %.thread249, label %bb.bb

.thread195:                                       ; preds = %bb.aw
  %i.jj = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.jk = sext i32 %i.b to i64
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !27
  %i.jm = getelementptr inbounds [16 x i8], ptr %i.jl, i64 %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 10
  store i16 2, ptr %i.jn, align 2, !tbaa !53
  %i.jo = icmp eq i16 %i.ii, 125
  br i1 %i.jo, label %.thread199, label %bb.bc

.thread195.thread:                                ; preds = %bb.ax
  %i.jp = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.jq = sext i32 %i.b to i64
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !27
  %i.js = getelementptr inbounds [16 x i8], ptr %i.jr, i64 %i.jq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 10
  store i16 3, ptr %i.jt, align 2, !tbaa !53
  %i.ju = icmp eq i16 %i.ii, 125
  br i1 %i.ju, label %.thread199, label %.thread204

.thread199:                                       ; preds = %bb.ba, %.thread195.thread, %.thread195
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 65799, ptr %5, align 4, !tbaa !24
  br label %.critedge150

bb.bb:                                            ; preds = %.thread245
  %i.jv = add nuw nsw i32 %i.ht, 1
  %i.jw = tail call noundef i32 @_ZN6icu_7814MessagePattern16parseSimpleStyleEiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.jv, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread249

bb.bc:                                            ; preds = %.thread195
  %i.jx = add nuw nsw i32 %i.ht, 1
  %i.jy = tail call noundef i32 @_ZN6icu_7814MessagePattern16parseChoiceStyleEiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.jx, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread249

.thread204:                                       ; preds = %bb.ba, %.thread195.thread
  %.0116189197203206 = phi i32 [ 3, %.thread195.thread ], [ %.0116189, %bb.ba ] ; 2 uses
  %i.jz = add nuw nsw i32 %i.ht, 1
  %i.ka = tail call noundef i32 @_ZN6icu_7814MessagePattern24parsePluralOrSelectStyleE22UMessagePatternArgTypeiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %.0116189197203206, i32 noundef %i.jz, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread249

.thread249:                                       ; preds = %.thread245, %bb.bb, %.thread204, %bb.bc, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.3125 = phi i32 [ %i.ff, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.ka, %.thread204 ], [ %i.jw, %bb.bb ], [ %i.jy, %bb.bc ], [ %i.ht, %.thread245 ] ; 2 uses
  %.2118 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0116189197203206, %.thread204 ], [ 1, %bb.bb ], [ 2, %bb.bc ], [ 1, %.thread245 ]
  tail call void @_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.b, i32 noundef 6, i32 noundef %.3125, i32 noundef 1, i32 noundef %.2118, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.kb = add nsw i32 %.3125, 1
  br label %.critedge150

.critedge150:                                     ; preds = %bb.g, %bb.a, %bb.ae, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit162, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.thread249, %.thread199, %bb.au, %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread, %bb.ar, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit173, %bb.af, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %.7 = phi i32 [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ], [ 0, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit ], [ 0, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit173 ], [ 0, %bb.af ], [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit162 ], [ 0, %bb.ae ], [ %i.kb, %.thread249 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 0, %.thread199 ], [ 0, %bb.au ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread ], [ 0, %bb.ar ], [ 0, %bb.a ], [ 0, %bb.g ]
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 5 uses
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.b, ptr %i.h, align 4, !tbaa !54
  %i.i = load i32, ptr %6, align 4, !tbaa !24
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp sgt i32 %i.l, %i.b
  br i1 %i.m, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw nsw i32 %i.b, 1                  ; 3 uses
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.q) #19 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.k, align 8, !tbaa !28
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.s)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.n)
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.u = sext i32 %.1.i.i.i to i64
  %i.v = shl nsw i64 %i.u, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.t, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef %i.t)
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.f, %bb.e
  store ptr %i.r, ptr %i.d, align 8, !tbaa !27
  store i32 %i.n, ptr %i.k, align 8, !tbaa !28
  store i8 1, ptr %i.w, align 4, !tbaa !44
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !25
  %.pre12.i = load i32, ptr %i.a, align 8, !tbaa !35
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !27
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.g:                                             ; preds = %bb.d, %bb.c
  store i32 7, ptr %6, align 4, !tbaa !24
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %bb.b
  %i.y = phi ptr [ %.pre, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.f, %bb.b ]
  %i.z = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !35
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.ab ; 5 uses
  store i32 %2, ptr %i.ac, align 4, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %3, ptr %i.ad, align 4, !tbaa !51
  %i.ae = trunc i32 %4 to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 %i.ae, ptr %i.af, align 4, !tbaa !52
  %i.ag = trunc i32 %5 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !54
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.a, %bb.g, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i8 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i8 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !32
  %i.c = icmp sgt i32 %2, 15
  br i1 %i.c, label %bb.c, label %_ZNK6icu_7813UnicodeStringixEi.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %2, -15                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i16, ptr %i.e, align 8, !tbaa !22   ; 3 uses
end_hunk_1
