inline.NumInlined: 156
inline.NumDeleted: 15
begin_hunk_0_@getEncodingIndex:bb.a
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
  %i.af = getelementptr i8, ptr %.020.i.5, i64 1
  %i.ag = load i8, ptr %.020.i.5, align 1, !tbaa !13 ; 3 uses
  %i.ah = getelementptr i8, ptr %.019.i.5, i64 1
  %i.ai = load i8, ptr %.019.i.5, align 1, !tbaa !13 ; 3 uses
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
define internal i32 @initScanProlog(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = tail call fastcc i32 @initScan(ptr noundef nonnull @encodings, ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanContent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = tail call fastcc i32 @initScan(ptr noundef nonnull @encodings, ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @initUpdatePosition(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %normal_updatePosition.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 8          ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i
  %.023.i = phi ptr [ %1, %.lr.ph.i ], [ %.2.i, %bb.k ] ; 8 uses
  %i.f = load i8, ptr %.023.i, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @utf8_encoding, i64 136), i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  switch i8 %i.i, label %bb.j [
    i8 5, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 10, label %bb.f
    i8 9, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.023.i, i64 2
  %i.k = load i64, ptr %i.e, align 8, !tbaa !48
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.e, align 8, !tbaa !48
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.023.i, i64 3
  %i.n = load i64, ptr %i.e, align 8, !tbaa !48
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.e, align 8, !tbaa !48
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.023.i, i64 4
  %i.q = load i64, ptr %i.e, align 8, !tbaa !48
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.e, align 8, !tbaa !48
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !48
  %i.s = load i64, ptr %3, align 8, !tbaa !51
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %3, align 8, !tbaa !51
  %i.u = getelementptr i8, ptr %.023.i, i64 1
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.v = load i64, ptr %3, align 8, !tbaa !51
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %3, align 8, !tbaa !51
  %i.x = getelementptr i8, ptr %.023.i, i64 1     ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.a, %i.y
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @utf8_encoding, i64 136), i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = icmp eq i8 %i.ae, 10
  %i.ag = getelementptr i8, ptr %.023.i, i64 2
  %spec.select.i = select i1 %i.af, ptr %i.ag, ptr %i.x
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi ptr [ %i.x, %bb.g ], [ %spec.select.i, %bb.h ]
  store i64 0, ptr %i.e, align 8, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %.023.i, i64 1
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !48
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.e, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.2.i = phi ptr [ %i.ah, %bb.j ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.u, %bb.f ], [ %.1.i, %bb.i ] ; 2 uses
  %i.ak = ptrtoint ptr %.2.i to i64
  %i.al = sub i64 %i.a, %i.ak
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %bb.b, label %normal_updatePosition.exit, !llvm.loop !52

normal_updatePosition.exit:                       ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @PyExpat_XmlParseXmlDecl(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @doParseXmlDecl(ptr noundef nonnull @findEncoding, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @doParseXmlDecl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 11 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %i.j = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store ptr null, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store ptr null, ptr %i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store ptr null, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr i8, ptr %2, i64 128        ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = mul i32 %i.l, 5
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %3, i64 %i.n       ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !10
  %i.p = shl i32 %i.l, 1
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %4, i64 %i.r       ; 6 uses
  %i.t = call fastcc i32 @parsePseudoAttribute(ptr noundef %2, ptr noundef %i.o, ptr noundef %i.s, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.h, ptr noundef %i.g)
  %11 = trunc nuw i32 %i.t to i1
  %i.u = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.v = icmp ne ptr %i.u, null
  %or.cond = select i1 %11, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %2, i64 48         ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.aa = tail call i32 %i.y(ptr noundef nonnull %2, ptr noundef nonnull %i.u, ptr noundef %i.z, ptr noundef nonnull @KW_version) #13
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not75 = icmp eq i32 %1, 0
  br i1 %.not75, label %.thread.sink.split, label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not76 = icmp eq ptr %6, null
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !10
  store ptr %i.ab, ptr %6, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not77 = icmp eq ptr %7, null
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.pre, ptr %7, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = call fastcc i32 @parsePseudoAttribute(ptr noundef nonnull %2, ptr noundef %.pre, ptr noundef %i.s, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.h, ptr noundef %i.g)
  %.not78 = icmp eq i32 %i.ac, 0
  br i1 %.not78, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %.thread.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %.not79 = icmp eq ptr %i.ae, null
  br i1 %.not79, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre102 = load ptr, ptr %i.j, align 8, !tbaa !10
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not80 = icmp eq i32 %1, 0
  br i1 %.not80, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %.thread.sink.split

bb.n:                                             ; preds = %._crit_edge, %bb.d
  %i.ag = phi ptr [ %.pre102, %._crit_edge ], [ %i.z, %bb.d ] ; 2 uses
  %i.ah = phi ptr [ %i.ae, %._crit_edge ], [ %i.u, %bb.d ] ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %2, ptr noundef nonnull %i.ah, ptr noundef %i.ag, ptr noundef nonnull @KW_encoding) #13
  %.not81 = icmp eq i32 %i.aj, 0
  br i1 %.not81, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !10  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store ptr %i.e, ptr %i.f, align 8, !tbaa !10
  %i.al = getelementptr i8, ptr %2, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ao = call i32 %i.am(ptr noundef nonnull %2, ptr noundef nonnull %i.d, ptr noundef %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.an) #13, !inline_history !56 ; 0 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.aq = icmp ne ptr %i.ap, %i.e
  %i.ar = load i8, ptr %i.e, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.as = and i8 %i.ar, -33
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -65
  %or.cond92100 = icmp ult i32 %i.au, 26
  %or.cond92 = select i1 %i.aq, i1 %or.cond92100, i1 false
  br i1 %or.cond92, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %bb.o
  %.not82 = icmp eq ptr %8, null
  br i1 %.not82, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ak, ptr %8, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not83 = icmp eq ptr %9, null
  %.pre103 = load ptr, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  br i1 %.not83, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i32, ptr %i.k, align 8, !tbaa !53
  %i.aw = sext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr i8, ptr %.pre103, i64 %i.ax
  %i.az = call ptr %0(ptr noundef nonnull %2, ptr noundef %i.ak, ptr noundef %i.ay) #13, !callees !57
  store ptr %i.az, ptr %9, align 8, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ba = call fastcc i32 @parsePseudoAttribute(ptr noundef nonnull %2, ptr noundef %.pre103, ptr noundef %i.s, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.h, ptr noundef %i.g)
  %.not84 = icmp eq i32 %i.ba, 0
  br i1 %.not84, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %.thread.sink.split

bb.v:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %.not85.not = icmp eq ptr %i.bc, null
  br i1 %.not85.not, label %.thread, label %._crit_edge104

._crit_edge104:                                   ; preds = %bb.v
  %.pre105 = load ptr, ptr %i.j, align 8, !tbaa !10
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge104, %bb.n
  %i.bd = phi ptr [ %.pre105, %._crit_edge104 ], [ %i.ag, %bb.n ]
  %i.be = phi ptr [ %i.bc, %._crit_edge104 ], [ %i.ah, %bb.n ] ; 2 uses
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.bg = call i32 %i.bf(ptr noundef nonnull %2, ptr noundef nonnull %i.be, ptr noundef %i.bd, ptr noundef nonnull @KW_standalone) #13
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp ne i32 %1, 0
  %or.cond7 = or i1 %i.bi, %i.bh
  br i1 %or.cond7, label %.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !10  ; 3 uses
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !10  ; 3 uses
  %i.bm = load i32, ptr %i.k, align 8, !tbaa !53
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr i8, ptr %i.bl, i64 %i.bo
  %i.bq = call i32 %i.bj(ptr noundef nonnull %2, ptr noundef %i.bk, ptr noundef %i.bp, ptr noundef nonnull @KW_yes) #13
  %.not86 = icmp eq i32 %i.bq, 0
  br i1 %.not86, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not89 = icmp eq ptr %10, null
  br i1 %.not89, label %bb.ab, label %.sink.split

bb.z:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.bs = load i32, ptr %i.k, align 8, !tbaa !53
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu
  %i.bw = call i32 %i.br(ptr noundef nonnull %2, ptr noundef %i.bk, ptr noundef %i.bv, ptr noundef nonnull @KW_no) #13
  %.not87 = icmp eq i32 %i.bw, 0
  br i1 %.not87, label %.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not88 = icmp eq ptr %10, null
  br i1 %.not88, label %bb.ab, label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.y
  %.sink = phi i32 [ 1, %bb.y ], [ 0, %bb.aa ]
  store i32 %.sink, ptr %10, align 4, !tbaa !6
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.aa, %bb.y
  %i.bx = getelementptr i8, ptr %2, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %isSpace.exit, %bb.ab
  %i.bz = phi ptr [ %i.ci, %isSpace.exit ], [ %i.bl, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr %i.b, ptr %i.c, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.cb = call i32 %i.ca(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull %i.by) #13, !inline_history !56 ; 0 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.cd = icmp eq ptr %i.cc, %i.b
  %i.ce = load i8, ptr %i.b, align 1
  %i.cf = sext i8 %i.ce to i32
end_hunk_0
begin_hunk_1_@little2_scanAtts:bb.a
  %i.dv = icmp sgt i64 %i.du, 1
  br i1 %i.dv, label %.lr.ph313, label %.thread

.thread120:                                       ; preds = %unicode_byte_type.exit102
  %i.dw = getelementptr i8, ptr %i.cw, i64 2      ; 8 uses
  store ptr %i.dw, ptr %i.a, align 8, !tbaa !10
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.b, %i.dx
  %i.dz = icmp sgt i64 %i.dy, 1
  br i1 %i.dz, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %.thread120
  %i.ea = getelementptr i8, ptr %i.cw, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %cond699 = icmp eq i8 %i.eb, 0
  br i1 %cond699, label %unicode_byte_type.exit105, label %.thread.sink.split

unicode_byte_type.exit105:                        ; preds = %bb.ad
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.f, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  switch i8 %i.ef, label %.thread.sink.split [
    i8 21, label %bb.ae
    i8 9, label %bb.ae
    i8 10, label %bb.ae
    i8 17, label %.loopexit144
    i8 11, label %.loopexit145
  ]

bb.ae:                                            ; preds = %unicode_byte_type.exit105, %unicode_byte_type.exit105, %unicode_byte_type.exit105
  %i.eg = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.b, %i.eh                     ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %.lr.ph331, label %.thread

.lr.ph331:                                        ; preds = %bb.ae, %bb.ah
  %i.ek = phi i64 [ %i.fp, %bb.ah ], [ %i.ei, %bb.ae ] ; 2 uses
  %i.el = phi ptr [ %i.fn, %bb.ah ], [ %i.eg, %bb.ae ] ; 17 uses
  %i.em = phi ptr [ %i.el, %bb.ah ], [ %i.dw, %bb.ae ] ; 3 uses
  %i.en = getelementptr i8, ptr %i.em, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  switch i8 %i.eo, label %unicode_byte_type.exit108.thread533 [
    i8 0, label %unicode_byte_type.exit108
    i8 -40, label %unicode_byte_type.exit108.thread536
    i8 -39, label %unicode_byte_type.exit108.thread536
    i8 -38, label %unicode_byte_type.exit108.thread536
    i8 -37, label %unicode_byte_type.exit108.thread536
    i8 -36, label %.thread.sink.split
    i8 -35, label %.thread.sink.split
    i8 -34, label %.thread.sink.split
    i8 -33, label %.thread.sink.split
    i8 -1, label %bb.af
  ]

bb.af:                                            ; preds = %.lr.ph331
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !13
  %switch.i106 = icmp ugt i8 %i.ep, -3
  br i1 %switch.i106, label %.thread.sink.split, label %unicode_byte_type.exit108.thread533

unicode_byte_type.exit108:                        ; preds = %.lr.ph331
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !13
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.f, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13
  switch i8 %i.et, label %.thread.sink.split [
    i8 29, label %unicode_byte_type.exit108.thread533
    i8 22, label %.loopexit
    i8 24, label %.loopexit
    i8 17, label %.loopexit144
    i8 6, label %bb.ag
    i8 7, label %unicode_byte_type.exit108.thread536
    i8 21, label %bb.ah
    i8 9, label %bb.ah
    i8 10, label %bb.ah
    i8 11, label %.loopexit145
  ]

unicode_byte_type.exit108.thread533:              ; preds = %.lr.ph331, %unicode_byte_type.exit108, %bb.af
  %i.eu = getelementptr i8, ptr %i.em, i64 3
  store ptr %i.el, ptr %i.a, align 8, !tbaa !10
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr i8, ptr @nmstrtPages, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 3
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !13
  %i.fc = zext i8 %i.fb to i32                    ; 2 uses
  %i.fd = lshr i32 %i.fc, 5
  %i.fe = or disjoint i32 %i.fd, %i.fa
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !6
  %i.fi = and i32 %i.fc, 31
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = and i32 %i.fj, %i.fh
  %.not = icmp eq i32 %i.fk, 0
  br i1 %.not, label %.thread.sink.split, label %.loopexit

bb.ag:                                            ; preds = %unicode_byte_type.exit108
  %i.fl = icmp eq i64 %i.ek, 2
  br i1 %i.fl, label %.thread, label %.thread.sink.split

unicode_byte_type.exit108.thread536:              ; preds = %.lr.ph331, %.lr.ph331, %.lr.ph331, %.lr.ph331, %unicode_byte_type.exit108
  %i.fm = icmp samesign ult i64 %i.ek, 4
  br i1 %i.fm, label %.thread, label %.thread.sink.split

bb.ah:                                            ; preds = %unicode_byte_type.exit108, %unicode_byte_type.exit108, %unicode_byte_type.exit108
  %i.fn = getelementptr i8, ptr %i.el, i64 2      ; 2 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.b, %i.fo                     ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 1
  br i1 %i.fq, label %.lr.ph331, label %.thread

.loopexit145:                                     ; preds = %unicode_byte_type.exit105, %unicode_byte_type.exit108
  %i.fr = phi ptr [ %i.el, %unicode_byte_type.exit108 ], [ %i.dw, %unicode_byte_type.exit105 ]
  %i.fs = getelementptr i8, ptr %i.fr, i64 2
  br label %.thread.sink.split

.loopexit144:                                     ; preds = %unicode_byte_type.exit105, %unicode_byte_type.exit108
  %i.ft = phi ptr [ %i.el, %unicode_byte_type.exit108 ], [ %i.dw, %unicode_byte_type.exit105 ] ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 2      ; 5 uses
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !10
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.b, %i.fv
  %i.fx = icmp sgt i64 %i.fw, 1
  br i1 %i.fx, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %.loopexit144
  %i.fy = getelementptr i8, ptr %i.ft, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.aj, label %.thread.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.gc = icmp eq i8 %i.gb, 62                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ft, i64 4
  %spec.select = select i1 %i.gc, ptr %i.gd, ptr %i.fu
  %spec.select700 = select i1 %i.gc, i32 3, i32 0
  br label %.thread.sink.split

.loopexit:                                        ; preds = %unicode_byte_type.exit108, %unicode_byte_type.exit108, %unicode_byte_type.exit108.thread533
  %i.ge = getelementptr i8, ptr %i.em, i64 4
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.j, %bb.d
  %.sink = phi ptr [ %i.ge, %.loopexit ], [ %i.bg, %bb.j ], [ %i.ad, %bb.d ] ; 3 uses
  %.173 = phi i32 [ 0, %.loopexit ], [ 1, %bb.j ], [ %.072335, %bb.d ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !10
  %i.gf = ptrtoint ptr %.sink to i64
  %i.gg = sub i64 %i.b, %i.gf                     ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 1
  br i1 %i.gh, label %bb.b, label %.thread, !llvm.loop !127

.thread.sink.split:                               ; preds = %unicode_byte_type.exit, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.af, %unicode_byte_type.exit108.thread533, %unicode_byte_type.exit105, %bb.ad, %unicode_byte_type.exit93, %bb.i, %bb.h, %bb.h, %bb.h, %bb.h, %unicode_byte_type.exit93.thread526, %bb.f, %unicode_byte_type.exit.thread520, %.lr.ph, %unicode_byte_type.exit96, %unicode_byte_type.exit99.thread, %.lr.ph310, %bb.t, %bb.t, %bb.t, %bb.t, %unicode_byte_type.exit108, %.lr.ph331, %.lr.ph331, %.lr.ph331, %.lr.ph331, %bb.aj, %bb.ai, %unicode_byte_type.exit108.thread536, %bb.ag, %unicode_byte_type.exit93.thread529, %bb.k, %unicode_byte_type.exit.thread523, %bb.e, %.loopexit145, %bb.ab
  %.sink698 = phi ptr [ %i.dq, %bb.ab ], [ %spec.select, %bb.aj ], [ %.promoted, %bb.e ], [ %i.cw, %bb.t ], [ %i.el, %unicode_byte_type.exit108.thread536 ], [ %i.ag, %unicode_byte_type.exit93.thread529 ], [ %i.fs, %.loopexit145 ], [ %i.el, %bb.ag ], [ %i.ag, %bb.k ], [ %i.cd, %unicode_byte_type.exit99.thread ], [ %i.bn, %.lr.ph ], [ %i.fu, %bb.ai ], [ %i.el, %unicode_byte_type.exit108 ], [ %.promoted, %unicode_byte_type.exit.thread523 ], [ %i.el, %.lr.ph331 ], [ %i.el, %.lr.ph331 ], [ %i.el, %.lr.ph331 ], [ %i.el, %.lr.ph331 ], [ %i.cw, %bb.t ], [ %i.cw, %bb.t ], [ %i.cw, %bb.t ], [ %i.cd, %.lr.ph310 ], [ %i.bn, %unicode_byte_type.exit96 ], [ %.promoted, %bb.f ], [ %.promoted, %unicode_byte_type.exit ], [ %.promoted, %unicode_byte_type.exit.thread520 ], [ %i.ag, %bb.h ], [ %i.ag, %bb.h ], [ %i.ag, %bb.h ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ], [ %.promoted, %bb.b ], [ %.promoted, %bb.b ], [ %.promoted, %bb.c ], [ %i.dw, %bb.ad ], [ %.promoted, %bb.b ], [ %.promoted, %bb.b ], [ %i.el, %unicode_byte_type.exit108.thread533 ], [ %i.dw, %unicode_byte_type.exit105 ], [ %i.el, %bb.af ], [ %i.ag, %unicode_byte_type.exit93 ], [ %i.ag, %unicode_byte_type.exit93.thread526 ]
  %.10.ph = phi i32 [ 0, %bb.ab ], [ %spec.select700, %bb.aj ], [ 0, %bb.e ], [ 0, %bb.t ], [ 0, %unicode_byte_type.exit108.thread536 ], [ 0, %unicode_byte_type.exit93.thread529 ], [ 1, %.loopexit145 ], [ 0, %bb.ag ], [ 0, %bb.k ], [ 0, %unicode_byte_type.exit99.thread ], [ 0, %.lr.ph ], [ 0, %bb.ai ], [ 0, %unicode_byte_type.exit108 ], [ 0, %unicode_byte_type.exit.thread523 ], [ 0, %.lr.ph331 ], [ 0, %.lr.ph331 ], [ 0, %.lr.ph331 ], [ 0, %.lr.ph331 ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %.lr.ph310 ], [ 0, %unicode_byte_type.exit96 ], [ 0, %unicode_byte_type.exit.thread520 ], [ 0, %bb.f ], [ 0, %unicode_byte_type.exit93.thread526 ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %unicode_byte_type.exit93 ], [ 0, %bb.ad ], [ 0, %unicode_byte_type.exit105 ], [ 0, %unicode_byte_type.exit108.thread533 ], [ 0, %bb.af ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %unicode_byte_type.exit ]
  store ptr %.sink698, ptr %3, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.ak, %.thread120, %bb.o, %bb.l, %.thread111, %bb.ae, %bb.m, %bb.n, %select.unfold, %bb.x, %bb.v, %bb.ah, %.thread.sink.split, %bb.a, %bb.aa, %.loopexit144, %unicode_byte_type.exit108.thread536, %bb.ag, %unicode_byte_type.exit93.thread529, %bb.k, %unicode_byte_type.exit.thread523, %bb.e
  %.10 = phi i32 [ -1, %bb.n ], [ -2, %unicode_byte_type.exit108.thread536 ], [ -2, %unicode_byte_type.exit93.thread529 ], [ -1, %bb.m ], [ -1, %bb.ah ], [ -2, %bb.k ], [ -2, %bb.e ], [ -1, %.loopexit144 ], [ -2, %bb.ag ], [ -2, %unicode_byte_type.exit.thread523 ], [ -1, %bb.a ], [ -1, %select.unfold ], [ %i.dn, %bb.aa ], [ %.10.ph, %.thread.sink.split ], [ -2, %bb.v ], [ -2, %bb.x ], [ -1, %bb.ae ], [ -1, %.thread111 ], [ -1, %bb.l ], [ -1, %bb.o ], [ -1, %.thread120 ], [ -1, %bb.ak ], [ -1, %bb.g ]
  ret i32 %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @initScan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %.not = icmp ult ptr %3, %4
  br i1 %.not, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %i.c = getelementptr i8, ptr %3, i64 1          ; 2 uses
  %i.d = icmp eq ptr %i.c, %4
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 133
  %i.f = load i8, ptr %i.e, align 1, !tbaa !39    ; 2 uses
  %.off = add i8 %i.f, -3
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %3, align 1, !tbaa !13
  switch i8 %i.g, label %bb.y [
    i8 -2, label %bb.e
    i8 -1, label %bb.e
    i8 -17, label %bb.e
    i8 0, label %bb.z
    i8 60, label %bb.z
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.h = icmp eq i8 %i.f, 0
  %6 = trunc nuw i32 %2 to i1
  %or.cond = and i1 %i.h, %6
  br i1 %or.cond, label %bb.y, label %bb.z

bb.f:                                             ; preds = %bb.b
  %i.i = load i8, ptr %3, align 1, !tbaa !13      ; 2 uses
  %i.j = zext i8 %i.i to i16
  %i.k = shl nuw i16 %i.j, 8
  %i.l = load i8, ptr %i.c, align 1, !tbaa !13    ; 2 uses
  %i.m = zext i8 %i.l to i16
  %trunc = or disjoint i16 %i.k, %i.m
  switch i16 %trunc, label %bb.s [
    i16 -257, label %bb.g
    i16 15360, label %bb.i
    i16 -2, label %bb.m
    i16 -4165, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %1, i64 133
  %i.o = load i8, ptr %i.n, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.o, 0
  %7 = trunc nuw i32 %2 to i1
  %or.cond3 = and i1 %i.p, %7
  br i1 %or.cond3, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %3, i64 2
  store ptr %i.q, ptr %5, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  store ptr %i.s, ptr %i.b, align 8, !tbaa !46
  br label %bb.z

bb.i:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %1, i64 133
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39    ; 2 uses
  %i.v = icmp eq i8 %i.u, 4
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i8 %i.u, 3
  %8 = trunc nuw i32 %2 to i1
  %or.cond5 = and i1 %i.w, %8
  br i1 %or.cond5, label %bb.y, label %bb.l

bb.k:                                             ; preds = %bb.i
  %.old4.not = icmp eq i32 %2, 0
  br i1 %.old4.not, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 3 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !46
  %i.z = zext nneg i32 %2 to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = tail call i32 %i.ab(ptr noundef %i.y, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.m:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %1, i64 133
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39
  %i.af = icmp eq i8 %i.ae, 0
  %9 = trunc nuw i32 %2 to i1
  %or.cond8 = and i1 %i.af, %9
  br i1 %or.cond8, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %3, i64 2
  store ptr %i.ag, ptr %5, align 8, !tbaa !10
  %i.ah = getelementptr i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !46
  br label %bb.z

bb.o:                                             ; preds = %bb.f
  %.not106 = icmp eq i32 %2, 0
  br i1 %.not106, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr i8, ptr %1, i64 133
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39
  switch i8 %i.ak, label %.thread [
    i8 5, label %bb.y
    i8 4, label %bb.y
    i8 3, label %bb.y
    i8 0, label %bb.y
  ]

.thread:                                          ; preds = %bb.p, %bb.o
  %i.al = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.am = icmp eq ptr %i.al, %4
  br i1 %i.am, label %bb.z, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.an = load i8, ptr %i.al, align 1, !tbaa !13
  %i.ao = icmp eq i8 %i.an, -65
  br i1 %i.ao, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %3, i64 3
  store ptr %i.ap, ptr %5, align 8, !tbaa !10
  %i.aq = getelementptr i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !46
  br label %bb.z

bb.s:                                             ; preds = %bb.f
  %i.as = icmp eq i8 %i.i, 0
  br i1 %i.as, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not107 = icmp eq i32 %2, 0
  br i1 %.not107, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr i8, ptr %1, i64 133
  %i.au = load i8, ptr %i.at, align 1, !tbaa !39
  %i.av = icmp eq i8 %i.au, 5
  br i1 %i.av, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 3 uses
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !46
  %i.ay = zext nneg i32 %2 to i64
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bb = tail call i32 %i.ba(ptr noundef %i.ax, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.bc = icmp ne i8 %i.l, 0
  %10 = trunc nuw i32 %2 to i1
  %or.cond20 = or i1 %i.bc, %10
  br i1 %or.cond20, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46 ; 3 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !46
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = tail call i32 %i.bf(ptr noundef nonnull %i.be, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.y:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.g, %bb.j, %bb.k, %bb.m, %bb.q, %bb.u, %bb.w, %bb.d, %bb.e
  %i.bh = getelementptr i8, ptr %1, i64 133
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !39
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46 ; 3 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !46
  %i.bm = zext nneg i32 %2 to i64
  %i.bn = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = tail call i32 %i.bo(ptr noundef %i.bl, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.d, %bb.d, %bb.e, %bb.c, %bb.a, %bb.y, %bb.x, %bb.v, %bb.r, %bb.n, %bb.l, %bb.h
  %.0 = phi i32 [ 14, %bb.r ], [ %i.bp, %bb.y ], [ -1, %bb.c ], [ -4, %bb.a ], [ %i.bb, %bb.v ], [ %i.bg, %bb.x ], [ 14, %bb.h ], [ %i.ac, %bb.l ], [ 14, %bb.n ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %.thread ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @ascii_toUtf8(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(address) %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.b = icmp ult ptr %i.a, %2
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.j, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp ult ptr %i.d, %4
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.c, i64 1
  store ptr %i.f, ptr %1, align 8, !tbaa !10
  %i.g = load i8, ptr %i.c, align 1, !tbaa !13
  %i.h = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %3, align 8, !tbaa !10
  store i8 %i.g, ptr %i.h, align 1, !tbaa !13
  %i.j = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.k = icmp ult ptr %i.j, %2
  br i1 %i.k, label %.lr.ph, label %.thread, !llvm.loop !128

.critedge:                                        ; preds = %.lr.ph
  %i.l = icmp eq ptr %i.d, %4
  br i1 %i.l, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %.critedge
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ 2, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @big2_prologTok(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #9 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %.not221 = trunc i64 %i.c to i1
  %i.d = and i64 %i.c, -2                         ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %.not248 = and i1 %i.e, %.not221
  %.1211 = select i1 %.not248, ptr %i.f, ptr %2   ; 17 uses
  %cond.not = icmp eq i64 %i.c, 1
  br i1 %cond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !13      ; 2 uses
  switch i8 %i.g, label %unicode_byte_type.exit.thread392 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread390
    i8 -39, label %unicode_byte_type.exit.thread390
    i8 -38, label %unicode_byte_type.exit.thread390
    i8 -37, label %unicode_byte_type.exit.thread390
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread392

unicode_byte_type.exit:                           ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 136
  %i.k = getelementptr i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  switch i8 %i.o, label %unicode_byte_type.exit.thread [
    i8 12, label %bb.e
    i8 13, label %bb.f
    i8 2, label %bb.g
    i8 9, label %bb.l
    i8 21, label %bb.n
    i8 10, label %bb.n
    i8 30, label %bb.r
    i8 35, label %bb.s
    i8 20, label %bb.t
    i8 4, label %bb.u
    i8 31, label %bb.ac
    i8 32, label %bb.ad
    i8 36, label %bb.aj
    i8 11, label %bb.ak
    i8 19, label %bb.al
    i8 5, label %bb.am
    i8 6, label %bb.ao
    i8 7, label %unicode_byte_type.exit.thread390
    i8 22, label %bb.at
    i8 24, label %bb.at
    i8 25, label %bb.ar
    i8 26, label %bb.ar
    i8 27, label %bb.ar
    i8 23, label %bb.ar
    i8 29, label %unicode_byte_type.exit.thread392
  ]

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.p = getelementptr i8, ptr %1, i64 2
  %i.q = tail call fastcc i32 @big2_scanLit(i32 noundef 12, ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %.1211, ptr noundef %3)
  br label %.loopexit

bb.f:                                             ; preds = %unicode_byte_type.exit
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = tail call fastcc i32 @big2_scanLit(i32 noundef 13, ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef %.1211, ptr noundef %3)
  br label %.loopexit

bb.g:                                             ; preds = %unicode_byte_type.exit
  %i.t = getelementptr i8, ptr %1, i64 2          ; 3 uses
  %i.u = ptrtoint ptr %.1211 to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.t, align 1, !tbaa !13
  switch i8 %i.y, label %unicode_byte_type.exit235.thread396 [
    i8 0, label %unicode_byte_type.exit235
    i8 -1, label %bb.i
    i8 -33, label %unicode_byte_type.exit235.thread
    i8 -34, label %unicode_byte_type.exit235.thread
    i8 -35, label %unicode_byte_type.exit235.thread
    i8 -36, label %unicode_byte_type.exit235.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %1, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %switch.i233 = icmp ugt i8 %i.aa, -3
  br i1 %switch.i233, label %unicode_byte_type.exit235.thread, label %unicode_byte_type.exit235.thread396

unicode_byte_type.exit235:                        ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %0, i64 136
  %i.ac = getelementptr i8, ptr %1, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  switch i8 %i.ag, label %unicode_byte_type.exit235.thread [
    i8 16, label %bb.j
    i8 15, label %bb.k
    i8 22, label %unicode_byte_type.exit235.thread396
    i8 24, label %unicode_byte_type.exit235.thread396
    i8 29, label %unicode_byte_type.exit235.thread396
    i8 5, label %unicode_byte_type.exit235.thread396
    i8 6, label %unicode_byte_type.exit235.thread396
    i8 7, label %unicode_byte_type.exit235.thread396
  ]

bb.j:                                             ; preds = %unicode_byte_type.exit235
  %i.ah = getelementptr i8, ptr %1, i64 4
  %i.ai = tail call fastcc i32 @big2_scanDecl(ptr noundef nonnull %0, ptr noundef %i.ah, ptr noundef %.1211, ptr noundef %3)
  br label %.loopexit

bb.k:                                             ; preds = %unicode_byte_type.exit235
  %i.aj = getelementptr i8, ptr %1, i64 4
end_hunk_1
