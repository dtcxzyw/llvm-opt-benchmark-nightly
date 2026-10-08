Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/xmltok?download=true
inline.NumInlined: 153
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@gdcmexpat_XmlInitEncoding:bb.a
  store ptr %1, ptr %i.g, align 8, !tbaa !32
  store ptr %0, ptr %1, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 7) i32 @getEncodingIndex(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %streqci.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a, %.preheader.preheader
  %.020.i = phi ptr [ %i.b, %.preheader.preheader ], [ %0, %bb.a ] ; 2 uses
  %.019.i = phi ptr [ %i.d, %.preheader.preheader ], [ @KW_ISO_8859_1, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  %i.c = load i8, ptr %.020.i, align 1, !tbaa !10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  %i.e = load i8, ptr %.019.i, align 1, !tbaa !10 ; 3 uses
  %i.f = add i8 %i.c, -97
  %or.cond.i = icmp ult i8 %i.f, 26
  %narrow.i = add nsw i8 %i.c, -32
  %spec.select.i = select i1 %or.cond.i, i8 %narrow.i, i8 %i.c ; 2 uses
  %i.g = add i8 %i.e, -97
  %or.cond5.i = icmp ult i8 %i.g, 26
  %narrow24.i = add nsw i8 %i.e, -32
  %.017.i = select i1 %or.cond5.i, i8 %narrow24.i, i8 %i.e
  %.not.i = icmp eq i8 %spec.select.i, %.017.i
  %.not25.i = icmp eq i8 %spec.select.i, 0
  %..i = select i1 %.not25.i, i32 2, i32 0
  %.0.i = select i1 %.not.i, i32 %..i, i32 1
  switch i32 %.0.i, label %.preheader.preheader.unreachabledefault [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader.1
    i32 2, label %streqci.exit
  ]

.preheader.preheader.unreachabledefault:          ; preds = %.preheader.preheader
  unreachable

default.unreachable:                              ; preds = %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader, %.preheader.1
  %.020.i.1 = phi ptr [ %i.h, %.preheader.1 ], [ %0, %.preheader.preheader ] ; 2 uses
  %.019.i.1 = phi ptr [ %i.j, %.preheader.1 ], [ @KW_US_ASCII, %.preheader.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.020.i.1, i64 1
  %i.i = load i8, ptr %.020.i.1, align 1, !tbaa !10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i.1, i64 1
  %i.k = load i8, ptr %.019.i.1, align 1, !tbaa !10 ; 3 uses
  %i.l = add i8 %i.i, -97
  %or.cond.i.1 = icmp ult i8 %i.l, 26
  %narrow.i.1 = add nsw i8 %i.i, -32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %narrow.i.1, i8 %i.i ; 2 uses
  %i.m = add i8 %i.k, -97
  %or.cond5.i.1 = icmp ult i8 %i.m, 26
  %narrow24.i.1 = add nsw i8 %i.k, -32
  %.017.i.1 = select i1 %or.cond5.i.1, i8 %narrow24.i.1, i8 %i.k
  %.not.i.1 = icmp eq i8 %spec.select.i.1, %.017.i.1
  %.not25.i.1 = icmp eq i8 %spec.select.i.1, 0
  %..i.1 = select i1 %.not25.i.1, i32 2, i32 0
  %.0.i.1 = select i1 %.not.i.1, i32 %..i.1, i32 1
  switch i32 %.0.i.1, label %default.unreachable [
    i32 0, label %.preheader.1
    i32 1, label %.preheader.2
    i32 2, label %streqci.exit
  ]

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.020.i.2 = phi ptr [ %i.n, %.preheader.2 ], [ %0, %.preheader.1 ] ; 2 uses
  %.019.i.2 = phi ptr [ %i.p, %.preheader.2 ], [ @KW_UTF_8, %.preheader.1 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.020.i.2, i64 1
  %i.o = load i8, ptr %.020.i.2, align 1, !tbaa !10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019.i.2, i64 1
  %i.q = load i8, ptr %.019.i.2, align 1, !tbaa !10 ; 3 uses
  %i.r = add i8 %i.o, -97
  %or.cond.i.2 = icmp ult i8 %i.r, 26
  %narrow.i.2 = add nsw i8 %i.o, -32
  %spec.select.i.2 = select i1 %or.cond.i.2, i8 %narrow.i.2, i8 %i.o ; 2 uses
  %i.s = add i8 %i.q, -97
  %or.cond5.i.2 = icmp ult i8 %i.s, 26
  %narrow24.i.2 = add nsw i8 %i.q, -32
  %.017.i.2 = select i1 %or.cond5.i.2, i8 %narrow24.i.2, i8 %i.q
  %.not.i.2 = icmp eq i8 %spec.select.i.2, %.017.i.2
  %.not25.i.2 = icmp eq i8 %spec.select.i.2, 0
  %..i.2 = select i1 %.not25.i.2, i32 2, i32 0
  %.0.i.2 = select i1 %.not.i.2, i32 %..i.2, i32 1 ; 2 uses
  switch i32 %.0.i.2, label %default.unreachable [
    i32 0, label %.preheader.2
    i32 1, label %.preheader.3
    i32 2, label %streqci.exit
  ]

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.020.i.3 = phi ptr [ %i.t, %.preheader.3 ], [ %0, %.preheader.2 ] ; 2 uses
  %.019.i.3 = phi ptr [ %i.v, %.preheader.3 ], [ @KW_UTF_16, %.preheader.2 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.020.i.3, i64 1
  %i.u = load i8, ptr %.020.i.3, align 1, !tbaa !10 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.3, i64 1
  %i.w = load i8, ptr %.019.i.3, align 1, !tbaa !10 ; 3 uses
  %i.x = add i8 %i.u, -97
  %or.cond.i.3 = icmp ult i8 %i.x, 26
  %narrow.i.3 = add nsw i8 %i.u, -32
  %spec.select.i.3 = select i1 %or.cond.i.3, i8 %narrow.i.3, i8 %i.u ; 2 uses
  %i.y = add i8 %i.w, -97
  %or.cond5.i.3 = icmp ult i8 %i.y, 26
  %narrow24.i.3 = add nsw i8 %i.w, -32
  %.017.i.3 = select i1 %or.cond5.i.3, i8 %narrow24.i.3, i8 %i.w
  %.not.i.3 = icmp eq i8 %spec.select.i.3, %.017.i.3
  %.not25.i.3 = icmp eq i8 %spec.select.i.3, 0
  %..i.3 = select i1 %.not25.i.3, i32 2, i32 0
  %.0.i.3 = select i1 %.not.i.3, i32 %..i.3, i32 1
  switch i32 %.0.i.3, label %default.unreachable [
    i32 0, label %.preheader.3
    i32 1, label %.preheader.4
    i32 2, label %streqci.exit
  ]

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.020.i.4 = phi ptr [ %i.z, %.preheader.4 ], [ %0, %.preheader.3 ] ; 2 uses
  %.019.i.4 = phi ptr [ %i.ab, %.preheader.4 ], [ @KW_UTF_16BE, %.preheader.3 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i.4, i64 1
  %i.aa = load i8, ptr %.020.i.4, align 1, !tbaa !10 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.019.i.4, i64 1
  %i.ac = load i8, ptr %.019.i.4, align 1, !tbaa !10 ; 3 uses
  %i.ad = add i8 %i.aa, -97
  %or.cond.i.4 = icmp ult i8 %i.ad, 26
  %narrow.i.4 = add nsw i8 %i.aa, -32
  %spec.select.i.4 = select i1 %or.cond.i.4, i8 %narrow.i.4, i8 %i.aa ; 2 uses
  %i.ae = add i8 %i.ac, -97
  %or.cond5.i.4 = icmp ult i8 %i.ae, 26
  %narrow24.i.4 = add nsw i8 %i.ac, -32
  %.017.i.4 = select i1 %or.cond5.i.4, i8 %narrow24.i.4, i8 %i.ac
  %.not.i.4 = icmp eq i8 %spec.select.i.4, %.017.i.4
  %.not25.i.4 = icmp eq i8 %spec.select.i.4, 0
  %..i.4 = select i1 %.not25.i.4, i32 2, i32 0
  %.0.i.4 = select i1 %.not.i.4, i32 %..i.4, i32 1
  switch i32 %.0.i.4, label %default.unreachable [
    i32 0, label %.preheader.4
    i32 1, label %.preheader.5
    i32 2, label %streqci.exit
  ]

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %.020.i.5 = phi ptr [ %i.af, %.preheader.5 ], [ %0, %.preheader.4 ] ; 2 uses
  %.019.i.5 = phi ptr [ %i.ah, %.preheader.5 ], [ @KW_UTF_16LE, %.preheader.4 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.020.i.5, i64 1
  %i.ag = load i8, ptr %.020.i.5, align 1, !tbaa !10 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.5, i64 1
  %i.ai = load i8, ptr %.019.i.5, align 1, !tbaa !10 ; 3 uses
  %i.aj = add i8 %i.ag, -97
  %or.cond.i.5 = icmp ult i8 %i.aj, 26
  %narrow.i.5 = add nsw i8 %i.ag, -32
  %spec.select.i.5 = select i1 %or.cond.i.5, i8 %narrow.i.5, i8 %i.ag ; 2 uses
  %i.ak = add i8 %i.ai, -97
  %or.cond5.i.5 = icmp ult i8 %i.ak, 26
  %narrow24.i.5 = add nsw i8 %i.ai, -32
  %.017.i.5 = select i1 %or.cond5.i.5, i8 %narrow24.i.5, i8 %i.ai
  %.not.i.5 = icmp eq i8 %spec.select.i.5, %.017.i.5
  %.not25.i.5 = icmp eq i8 %spec.select.i.5, 0
  %..i.5 = select i1 %.not25.i.5, i32 2, i32 0
  %.0.i.5 = select i1 %.not.i.5, i32 %..i.5, i32 1
  switch i32 %.0.i.5, label %default.unreachable [
    i32 0, label %.preheader.5
    i32 1, label %streqci.exit.loopexit53
    i32 2, label %streqci.exit
  ]

streqci.exit.loopexit53:                          ; preds = %.preheader.5
  br label %streqci.exit

streqci.exit:                                     ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %streqci.exit.loopexit53, %bb.a
  %.06 = phi i32 [ 5, %.preheader.5 ], [ 6, %bb.a ], [ 4, %.preheader.4 ], [ 3, %.preheader.3 ], [ -1, %streqci.exit.loopexit53 ], [ %.0.i.2, %.preheader.2 ], [ 1, %.preheader.1 ], [ 0, %.preheader.preheader ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanProlog(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = tail call fastcc i32 @initScan(ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanContent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = tail call fastcc i32 @initScan(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @initUpdatePosition(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %.not24.i = icmp eq ptr %1, %2
  br i1 %.not24.i, label %normal_updatePosition.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %i.b = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.w, %bb.j ] ; 4 uses
  %.025.i = phi ptr [ %1, %.lr.ph.i ], [ %.2.i, %bb.j ] ; 8 uses
  %i.c = load i8, ptr %.025.i, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @utf8_encoding, i64 136), i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  switch i8 %i.f, label %bb.i [
    i8 5, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 10, label %bb.f
    i8 9, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.025.i, i64 3
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %3, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %.025.i, i64 1
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.m = load i64, ptr %3, align 8, !tbaa !38
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %3, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %.025.i, i64 1 ; 3 uses
  %.not23.i = icmp eq ptr %i.o, %2
  br i1 %.not23.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !37
  br label %normal_updatePosition.exit

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @utf8_encoding, i64 136), i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = icmp eq i8 %i.s, 10
  %i.u = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  %spec.select.i = select i1 %i.t, ptr %i.u, ptr %i.o
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.025.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %4 = phi i64 [ %i.b, %bb.i ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ -1, %bb.f ], [ -1, %bb.h ]
  %.2.i = phi ptr [ %i.v, %bb.i ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.l, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.w = add i64 %4, 1                            ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq ptr %.2.i, %2
  br i1 %.not.i, label %normal_updatePosition.exit, label %bb.b, !llvm.loop !0

normal_updatePosition.exit:                       ; preds = %bb.j, %.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gdcmexpat_XmlParseXmlDecl(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 13 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  %i.l = alloca ptr, align 8                      ; 9 uses
  %i.m = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store ptr null, ptr %i.k, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store ptr null, ptr %i.l, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  store ptr null, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = mul nsw i32 %i.o, 5
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !23
  %i.s = shl nsw i32 %i.o, 1
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %3, i64 %i.u ; 6 uses
  %i.w = call fastcc i32 @parsePseudoAttribute(ptr noundef %1, ptr noundef %i.r, ptr noundef %i.v, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.k, ptr noundef %i.j)
  %i.x = icmp ne i32 %i.w, 0
  %i.y = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.z = icmp ne ptr %i.y, null
  %or.cond.i = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !23
  br label %.thread.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %i.ae = tail call i32 %i.ac(ptr noundef nonnull %1, ptr noundef nonnull %i.y, ptr noundef %i.ad, ptr noundef nonnull @KW_version) #11, !inline_history !74
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not75.i = icmp eq i32 %0, 0
  br i1 %.not75.i, label %.thread.sink.split.i, label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not76.i = icmp eq ptr %5, null
  br i1 %.not76.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !23
  store ptr %i.af, ptr %5, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not77.i = icmp eq ptr %6, null
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  br i1 %.not77.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.pre.i, ptr %6, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = call fastcc i32 @parsePseudoAttribute(ptr noundef nonnull %1, ptr noundef %.pre.i, ptr noundef %i.v, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.k, ptr noundef %i.j)
  %.not78.i = icmp eq i32 %i.ag, 0
  br i1 %.not78.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !23
  br label %.thread.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %.not79.i = icmp eq ptr %i.ai, null
  br i1 %.not79.i, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre7.i = load ptr, ptr %i.m, align 8, !tbaa !23
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not80.i = icmp eq i32 %0, 0
  br i1 %.not80.i, label %doParseXmlDecl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !23
  br label %.thread.sink.split.i

bb.n:                                             ; preds = %._crit_edge.i, %bb.d
  %i.ak = phi ptr [ %.pre7.i, %._crit_edge.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.al = phi ptr [ %i.ai, %._crit_edge.i ], [ %i.y, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.an = tail call i32 %i.am(ptr noundef nonnull %1, ptr noundef nonnull %i.al, ptr noundef %i.ak, ptr noundef nonnull @KW_encoding) #11, !inline_history !74
  %.not81.i = icmp eq i32 %i.an, 0
  br i1 %.not81.i, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void %i.aq(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef %i.v, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ar) #11, !inline_history !75
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.at = icmp ne ptr %i.as, %i.h
  %i.au = load i8, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.av = and i8 %i.au, -33
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -65
  %or.cond925.i = icmp ult i32 %i.ax, 26
  %or.cond92.i = select i1 %i.at, i1 %or.cond925.i, i1 false
  br i1 %or.cond92.i, label %bb.p, label %.thread.sink.split.i

bb.p:                                             ; preds = %bb.o
  %.not82.i = icmp eq ptr %7, null
  br i1 %.not82.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ao, ptr %7, align 8, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not83.i = icmp eq ptr %8, null
  %.pre8.i = load ptr, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  br i1 %.not83.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load i32, ptr %i.n, align 8, !tbaa !39
  %i.az = sext i32 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %.pre8.i, i64 %i.ba ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 127
  call void %i.bc(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef %i.bb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bd) #11, !inline_history !76
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.be, %i.bb
  br i1 %.not.i.i, label %bb.t, label %findEncoding.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !23
  store i8 0, ptr %i.bf, align 1, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.020.i.i.i = phi ptr [ %i.e, %bb.t ], [ %i.bg, %bb.u ] ; 2 uses
  %.019.i.i.i = phi ptr [ @KW_UTF_16, %bb.t ], [ %i.bi, %bb.u ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 1
  %i.bh = load i8, ptr %.020.i.i.i, align 1, !tbaa !10 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 1
  %i.bj = load i8, ptr %.019.i.i.i, align 1, !tbaa !10 ; 3 uses
  %i.bk = add i8 %i.bh, -97
  %or.cond.i.i.i = icmp ult i8 %i.bk, 26
  %narrow.i.i.i = add nsw i8 %i.bh, -32
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i8 %narrow.i.i.i, i8 %i.bh ; 2 uses
  %i.bl = add i8 %i.bj, -97
  %or.cond5.i.i.i = icmp ult i8 %i.bl, 26
  %narrow24.i.i.i = add nsw i8 %i.bj, -32
  %.017.i.i.i = select i1 %or.cond5.i.i.i, i8 %narrow24.i.i.i, i8 %i.bj
  %.not.i.i.i = icmp eq i8 %spec.select.i.i.i, %.017.i.i.i
  %.not25.i.i.i = icmp eq i8 %spec.select.i.i.i, 0
  %..i.i.i = select i1 %.not25.i.i.i, i32 2, i32 0
  %.0.i.i.i = select i1 %.not.i.i.i, i32 %..i.i.i, i32 1
  switch i32 %.0.i.i.i, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %streqci.exit.thread.i.i
    i32 2, label %streqci.exit.i.i
  ]

default.unreachable:                              ; preds = %bb.u
  unreachable

streqci.exit.i.i:                                 ; preds = %bb.u
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !39
end_hunk_0
