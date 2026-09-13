Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/strutil?download=true
inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 52
begin_hunk_0_@oiio_stbsp_snprintf:bb.a
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL27stbsp__count_clamp_callbackPKcPvi, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %oiio_stbsp_vsnprintf.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %.not34.i.i = icmp eq ptr %0, null
  %.pre36.i.i = sext i32 %1 to i64
  call void @llvm.assume(i1 %.not34.i.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !74
  store i32 0, ptr %i.f, align 8, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select17.i = select i1 %i.k, ptr %0, ptr %i.l
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit.i

_ZL21stbsp__clamp_callbackPKcPvi.exit.i:          ; preds = %bb.f, %bb.e
  %.028.i.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17.i, %bb.f ]
  %i.m = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL21stbsp__clamp_callbackPKcPvi, ptr noundef nonnull %3, ptr noundef %.028.i.i, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !74
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select.i to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !54
  br label %oiio_stbsp_vsnprintf.exit

oiio_stbsp_vsnprintf.exit:                        ; preds = %bb.b, %_ZL21stbsp__clamp_callbackPKcPvi.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_vsprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @oiio_stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr nofree noundef captures(none) dead_on_return %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not4.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.pr = phi i64 [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54    ; 4 uses
  switch i8 %i.e, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit [
    i8 32, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !78
  %i.g = add i64 %.pr, -1                         ; 3 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !79
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread, label %.lr.ph.i, !llvm.loop !0

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %.lr.ph.i
  %i.h = icmp eq i8 %i.e, 45                      ; 4 uses
  switch i8 %i.e, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit52 [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !78
  %i.j = add i64 %.pr, -1                         ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !79
  %.not.not.i51.not = icmp eq i64 %.pr, 1
  br i1 %.not.not.i51.not, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1, !tbaa !54
  %i.l = freeze i8 %i.k
  br label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit52

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit52: ; preds = %bb.d, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.m = phi ptr [ %i.i, %bb.d ], [ %i.d, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit ] ; 4 uses
  %i.n = phi i64 [ %i.j, %bb.d ], [ %.pr, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit ] ; 5 uses
  %.040 = phi i8 [ %i.l, %bb.d ], [ %i.e, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit ] ; 3 uses
  %i.o = and i32 %2, -17
  %or.cond4 = icmp eq i32 %i.o, 0
  %i.p = icmp eq i8 %.040, 48
  %or.cond7 = and i1 %or.cond4, %i.p
  br i1 %or.cond7, label %bb.e, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit52
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !54
  switch i8 %i.r, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread [
    i8 120, label %bb.f
    i8 88, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %spec.select.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.i.i53 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !78
  %i.t = sub nuw i64 %i.n, %spec.select.i.i53     ; 2 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !79
  %.not.not.i54 = icmp ugt i64 %i.n, 2
  br i1 %.not.not.i54, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread, !prof !81

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113: ; preds = %bb.f
  %i.u = load i8, ptr %i.s, align 1, !tbaa !54
  %.141.fr116 = freeze i8 %i.u
  br label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread: ; preds = %bb.e
  %i.v = icmp eq i32 %2, 0                        ; 2 uses
  %i.w = select i1 %i.h, i64 2147483648, i64 2147483647
  %narrow = select i1 %i.v, i32 8, i32 %2
  %spec.select157 = select i1 %i.v, i32 8, i32 %2
  br label %.lr.ph.thread148

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55: ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit52
  %i.x = icmp eq i32 %2, 0
  %i.y = icmp eq i8 %.040, 48
  %. = select i1 %i.y, i32 8, i32 10
  %spec.select155 = select i1 %i.x, i32 %., i32 %2
  br label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread: ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113
  %i.z = phi ptr [ %i.s, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113 ], [ %i.m, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55 ] ; 2 uses
  %i.aa = phi i64 [ %i.t, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113 ], [ %i.n, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55 ] ; 2 uses
  %.1417080 = phi i8 [ %.141.fr116, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113 ], [ %.040, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55 ] ; 4 uses
  %i.ab = phi i32 [ 16, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread113 ], [ %spec.select155, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55 ] ; 4 uses
  %i.ac = select i1 %i.h, i64 2147483648, i64 2147483647 ; 2 uses
  %.not4688 = icmp eq i8 %.1417080, 0
  br i1 %.not4688, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread, label %.lr.ph, !prof !380

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread
  %i.ad = zext i8 %.1417080 to i32                ; 2 uses
  %i.ae = add i8 %.1417080, -48                   ; 2 uses
  %isdigit.peel = icmp ult i8 %i.ae, 10
  br i1 %isdigit.peel, label %.lr.ph.thread148, label %bb.g, !prof !381

bb.g:                                             ; preds = %.lr.ph
  %i.af = tail call i32 @isalpha(i32 noundef %i.ad) #46
  %.not47.peel = icmp eq i32 %i.af, 0
  br i1 %.not47.peel, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i32 @isupper(i32 noundef %i.ad) #46
  %.not48.peel = icmp eq i32 %i.ag, 0
  %.neg.peel = select i1 %.not48.peel, i8 -87, i8 -55
  %i.ah = add i8 %.neg.peel, %.1417080
  br label %.lr.ph.thread148

.lr.ph.thread148:                                 ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread, %bb.h, %.lr.ph
  %.in = phi i32 [ %i.ab, %bb.h ], [ %i.ab, %.lr.ph ], [ %narrow, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread ]
  %i.ai = phi ptr [ %i.z, %bb.h ], [ %i.z, %.lr.ph ], [ %i.m, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread ]
  %i.aj = phi i64 [ %i.aa, %bb.h ], [ %i.aa, %.lr.ph ], [ %i.n, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread ] ; 2 uses
  %i.ak = phi i32 [ %i.ab, %bb.h ], [ %i.ab, %.lr.ph ], [ %spec.select157, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread ] ; 2 uses
  %i.al = phi i64 [ %i.ac, %bb.h ], [ %i.ac, %.lr.ph ], [ %i.w, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread ]
  %.3.peel = phi i8 [ %i.ah, %bb.h ], [ %i.ae, %.lr.ph ], [ 0, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread ] ; 2 uses
  %i.am = zext i32 %.in to i64
  %i.an = zext i8 %.3.peel to i32
  %.not49.peel = icmp sgt i32 %i.ak, %i.an
  br i1 %.not49.peel, label %bb.i, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread

bb.i:                                             ; preds = %.lr.ph.thread148
  %i.ao = zext i8 %.3.peel to i64                 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 5 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !78
  %3 = add i64 %i.aj, -1                          ; 2 uses
  store i64 %3, ptr %i.b, align 8, !tbaa !79
  %.not.not.i57.peel = icmp ugt i64 %i.aj, 1
  br i1 %.not.not.i57.peel, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel, label %._crit_edge.thread138, !prof !81

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel: ; preds = %bb.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !54  ; 2 uses
  %.not46.peel = icmp eq i8 %i.aq, 0
  br i1 %.not46.peel, label %._crit_edge.thread138, label %.peel.next, !prof !380

.peel.next:                                       ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58
  %i.ar = phi ptr [ %i.bf, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %i.ap, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ] ; 3 uses
  %i.as = phi i64 [ %i.bg, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %3, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ] ; 3 uses
  %.03791 = phi i8 [ %.1, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ 0, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ] ; 4 uses
  %.03890 = phi i64 [ %.139, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %i.ao, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ] ; 4 uses
  %.24289 = phi i8 [ %i.bh, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %i.aq, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ] ; 3 uses
  %i.at = zext i8 %.24289 to i32                  ; 2 uses
  %i.au = add i8 %.24289, -48                     ; 2 uses
  %isdigit = icmp ult i8 %i.au, 10
  br i1 %isdigit, label %bb.l, label %bb.j, !prof !81

bb.j:                                             ; preds = %.peel.next
  %i.av = tail call i32 @isalpha(i32 noundef %i.at) #46
  %.not47 = icmp eq i32 %i.av, 0
  br i1 %.not47, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call i32 @isupper(i32 noundef %i.at) #46
  %.not48 = icmp eq i32 %i.aw, 0
  %.neg = select i1 %.not48, i8 -87, i8 -55
  %i.ax = add i8 %.neg, %.24289
  br label %bb.l

bb.l:                                             ; preds = %.peel.next, %bb.k
  %.3 = phi i8 [ %i.ax, %bb.k ], [ %i.au, %.peel.next ] ; 2 uses
  %i.ay = zext i8 %.3 to i32
  %.not49 = icmp samesign ugt i32 %i.ak, %i.ay
  br i1 %.not49, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.az = trunc nuw i8 %.03791 to i1
  %i.ba = mul nsw i64 %.03890, %i.am
  %i.bb = zext i8 %.3 to i64
  %i.bc = add nuw nsw i64 %i.ba, %i.bb
  %.139 = select i1 %i.az, i64 %.03890, i64 %i.bc, !prof !80 ; 4 uses
  %i.bd = icmp sgt i64 %.139, %i.al
  br i1 %i.bd, label %bb.n, label %bb.o, !prof !80

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.1 = phi i8 [ 1, %bb.n ], [ %.03791, %bb.m ]   ; 3 uses
  %i.be = icmp ne i64 %i.as, 0
  %spec.select.i.i56 = zext i1 %i.be to i64       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %spec.select.i.i56 ; 5 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !78
  %i.bg = sub nuw i64 %i.as, %spec.select.i.i56   ; 2 uses
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !79
  %.not.not.i57 = icmp ugt i64 %i.as, 1
  br i1 %.not.not.i57, label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58, label %._crit_edge, !prof !81

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58: ; preds = %bb.o
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !54  ; 2 uses
  %.not46 = icmp eq i8 %i.bh, 0
  br i1 %.not46, label %._crit_edge, label %.peel.next, !prof !380, !llvm.loop !379

._crit_edge:                                      ; preds = %bb.o, %bb.l, %bb.j, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58
  %i.bi = phi ptr [ %i.ar, %bb.l ], [ %i.ar, %bb.j ], [ %i.bf, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %i.bf, %bb.o ] ; 2 uses
  %.038.lcssa.ph.ph = phi i64 [ %.03890, %bb.l ], [ %.03890, %bb.j ], [ %.139, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %.139, %bb.o ]
  %.037.lcssa.ph.ph = phi i8 [ %.03791, %bb.l ], [ %.03791, %bb.j ], [ %.1, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58 ], [ %.1, %bb.o ]
  %i.bj = trunc nuw i8 %.037.lcssa.ph.ph to i1
  br i1 %i.bj, label %bb.p, label %._crit_edge.thread138, !prof !384

bb.p:                                             ; preds = %._crit_edge
  %i.bk = select i1 %i.h, i64 -2147483648, i64 2147483647
  br label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread

._crit_edge.thread138:                            ; preds = %bb.i, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel, %._crit_edge
  %.038.lcssa141 = phi i64 [ %.038.lcssa.ph.ph, %._crit_edge ], [ %i.ao, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ], [ %i.ao, %bb.i ] ; 2 uses
  %i.bl = phi ptr [ %i.bi, %._crit_edge ], [ %i.ap, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit58.peel ], [ %i.ap, %bb.i ]
  %i.bm = sub nsw i64 0, %.038.lcssa141
  %spec.select = select i1 %i.h, i64 %i.bm, i64 %.038.lcssa141
  br label %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread

_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread: ; preds = %bb.b, %.lr.ph.thread148, %bb.g, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread, %bb.f, %bb.c, %bb.a, %._crit_edge.thread138, %bb.p
  %i.bn = phi ptr [ %i.bl, %._crit_edge.thread138 ], [ %i.bi, %bb.p ], [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %.lr.ph.thread148 ], [ %i.a, %bb.f ], [ %i.a, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.b ]
  %.2 = phi i64 [ %spec.select, %._crit_edge.thread138 ], [ %i.bk, %bb.p ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %.lr.ph.thread148 ], [ 0, %bb.f ], [ 0, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread ], [ 0, %bb.g ], [ 0, %bb.b ]
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.a to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %1, align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11OpenImageIO4v3_15cnextERNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit55.thread74.thread.thread
  %i.br = trunc i64 %.2 to i32
  ret i32 %i.br
}

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_15c_strENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef readonly captures(none) dead_on_return %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !54
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.d, ptr %1, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %i.h, align 8, !tbaa !79
  %i.i = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %.0 = phi ptr [ %i.i, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ @.str.7, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Strutil11sync_outputEP8_IO_FILENS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i1 noundef zeroext %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11OpenImageIO4v3_112_GLOBAL__N_112output_mutexE) #13 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #47
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !78
  %i.g = load i64, ptr %i.a, align 8, !tbaa !79
  %i.h = tail call i64 @fwrite(ptr noundef %i.f, i64 noundef 1, i64 noundef %i.g, ptr noundef nonnull %0) ; 0 uses
  br i1 %2, label %bb.d, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = tail call i32 @fflush(ptr noundef nonnull %0) ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.d
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11OpenImageIO4v3_112_GLOBAL__N_112output_mutexE) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Strutil11sync_outputERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i1 noundef zeroext %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11OpenImageIO4v3_112_GLOBAL__N_112output_mutexE) #13 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #47
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !84
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.k = load ptr, ptr %1, align 8, !tbaa !78
  %i.l = load i64, ptr %i.a, align 8, !tbaa !79
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.k, i64 noundef %i.l)
          to label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit ; 0 uses
end_hunk_0
