Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/UriQuery?download=true
inline.NumInlined: 24
begin_hunk_0_@uriDissectQueryMallocExMmA:bb.a

.thread:                                          ; preds = %uriAppendQueryItemA.exit, %bb.m, %.split79, %bb.g
  %i.bh = load ptr, ptr %.0140.ph, align 8, !tbaa !24 ; 2 uses
  %.not95 = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %spec.select = select i1 %.not95, ptr %.0140.ph, ptr %i.bi ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.075134, i64 1 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %3
  %.173 = select i1 %i.bk, ptr %i.bj, ptr null    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.075134, i64 1 ; 2 uses
  %exitcond.not175 = icmp eq ptr %i.bl, %3
  br i1 %exitcond.not175, label %.split83, label %.lr.ph.outer, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.q
  %i.bm = icmp eq ptr %.265, null
  %.not92 = icmp eq ptr %.167, null
  br i1 %.not92, label %.split83, label %uriAppendQueryItemA.exit103

.split83:                                         ; preds = %.thread, %bb.e, %._crit_edge
  %.0.lcssa169 = phi ptr [ %0, %bb.e ], [ %.0140.ph, %._crit_edge ], [ %spec.select, %.thread ] ; 4 uses
  %.063.lcssa168 = phi i1 [ true, %bb.e ], [ %i.bm, %._crit_edge ], [ true, %.thread ]
  %.072.lcssa167 = phi ptr [ %2, %bb.e ], [ %.072136.ph, %._crit_edge ], [ %.173, %.thread ] ; 5 uses
  %.075.lcssa166 = phi ptr [ %2, %bb.e ], [ %scevgep, %._crit_edge ], [ %scevgep, %.thread ] ; 3 uses
  %i.bn = ptrtoint ptr %.075.lcssa166 to i64
  %i.bo = ptrtoint ptr %.072.lcssa167 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = icmp eq ptr %.072.lcssa167, null
  %i.bs = icmp ugt ptr %.072.lcssa167, %.075.lcssa166
  %or.cond.i99 = or i1 %i.bs, %i.br
  %i.bt = icmp eq ptr %.072.lcssa167, %.075.lcssa166
  %i.bu = and i1 %i.bt, %.063.lcssa168
  %or.cond200 = select i1 %or.cond.i99, i1 true, i1 %i.bu
  br i1 %or.cond200, label %uriFreeQueryListMmA.exit, label %bb.r

bb.r:                                             ; preds = %.split83
  %i.bv = load ptr, ptr %.076, align 8, !tbaa !20
  %i.bw = call ptr %i.bv(ptr noundef nonnull %.076, i64 noundef 24) #5, !inline_history !39 ; 3 uses
  store ptr %i.bw, ptr %.0.lcssa169, align 8, !tbaa !24
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %uriAppendQueryItemA.exit103.thread117, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr null, ptr %i.by, align 8, !tbaa !16
  %i.bz = load ptr, ptr %.076, align 8, !tbaa !20
  %i.ca = shl i64 %i.bp, 32                       ; 2 uses
  %sext.i100 = add i64 %i.ca, 4294967296
  %i.cb = ashr exact i64 %sext.i100, 32
  %i.cc = call ptr %i.bz(ptr noundef nonnull %.076, i64 noundef %i.cb) #5, !inline_history !39 ; 5 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.076, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cg = load ptr, ptr %.0.lcssa169, align 8, !tbaa !24
  call void %i.cf(ptr noundef nonnull %.076, ptr noundef %i.cg) #5, !inline_history !39
  store ptr null, ptr %.0.lcssa169, align 8, !tbaa !24
  br label %uriAppendQueryItemA.exit103.thread117

bb.u:                                             ; preds = %bb.s
  %i.ch = ashr exact i64 %i.ca, 32                ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 %i.ch
  store i8 0, ptr %i.ci, align 1, !tbaa !15
  %i.cj = icmp sgt i32 %i.bq, 0
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %.072.lcssa167, i64 %i.ch, i1 false)
  %i.ck = call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.cc, i32 noundef %4, i32 noundef %5) #5 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = load ptr, ptr %.0.lcssa169, align 8, !tbaa !24 ; 2 uses
  store ptr %i.cc, ptr %i.cl, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !14
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !8
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.e, align 4, !tbaa !8
  br label %uriFreeQueryListMmA.exit

uriAppendQueryItemA.exit103:                      ; preds = %._crit_edge
  %i.cp = call fastcc i32 @uriAppendQueryItemA(ptr noundef %.0140.ph, ptr noundef nonnull %i.e, ptr noundef %.072136.ph, ptr noundef %.270, ptr noundef nonnull %.167, ptr noundef nonnull %scevgep, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %.076)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %uriAppendQueryItemA.exit103.thread117, label %uriFreeQueryListMmA.exit

uriAppendQueryItemA.exit103.thread117:            ; preds = %bb.r, %bb.t, %uriAppendQueryItemA.exit103
  store i32 0, ptr %i.e, align 4, !tbaa !8
  %i.cr = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.cs = call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %.076) #5
  %.not.i104 = icmp ne i32 %i.cs, 1
  %.not1718.i106 = icmp eq ptr %i.cr, null
  %or.cond120 = select i1 %.not.i104, i1 true, i1 %.not1718.i106
  br i1 %or.cond120, label %uriFreeQueryListMmA.exit, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %uriAppendQueryItemA.exit103.thread117
  %i.ct = getelementptr inbounds nuw i8, ptr %.076, i64 32 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i107
  %.01519.i108 = phi ptr [ %i.cr, %.lr.ph.i107 ], [ %i.cv, %bb.x ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01519.i108, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !16 ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.cx = load ptr, ptr %.01519.i108, align 8, !tbaa !13
  call void %i.cw(ptr noundef nonnull %.076, ptr noundef %i.cx) #5, !inline_history !23
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.01519.i108, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !14
  call void %i.cy(ptr noundef nonnull %.076, ptr noundef %i.da) #5, !inline_history !23
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !21
  call void %i.db(ptr noundef nonnull %.076, ptr noundef nonnull %.01519.i108) #5, !inline_history !23
  %.not17.i109 = icmp eq ptr %i.cv, null
  br i1 %.not17.i109, label %uriFreeQueryListMmA.exit, label %bb.x, !llvm.loop !0

uriFreeQueryListMmA.exit:                         ; preds = %bb.n, %bb.x, %.split83, %bb.w, %uriAppendQueryItemA.exit103.thread117, %uriAppendQueryItemA.exit.thread113, %uriAppendQueryItemA.exit103, %bb.d, %bb.b, %bb.a
  %.077 = phi i32 [ 9, %bb.b ], [ 2, %bb.a ], [ 0, %uriAppendQueryItemA.exit103 ], [ 0, %.split83 ], [ 10, %bb.d ], [ 3, %uriAppendQueryItemA.exit.thread113 ], [ 3, %bb.x ], [ 0, %bb.w ], [ 3, %uriAppendQueryItemA.exit103.thread117 ], [ 3, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriAppendQueryItemA(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = ptrtoint ptr %5 to i64
  %i.f = ptrtoint ptr %4 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp eq ptr %1, null
  %i.j = icmp eq ptr %2, null
  %or.cond3 = or i1 %i.i, %i.j
  %i.k = icmp eq ptr %3, null
  %or.cond5 = or i1 %or.cond3, %i.k
  %i.l = icmp ugt ptr %2, %3
  %or.cond = or i1 %i.l, %or.cond5
  %i.m = icmp ugt ptr %4, %5
  %or.cond88 = or i1 %or.cond, %i.m
  br i1 %or.cond88, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %2, %3
  %i.o = icmp eq ptr %4, null
  %i.p = icmp eq ptr %5, null
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !20
  %i.s = tail call ptr %i.r(ptr noundef nonnull %8, i64 noundef 24) #5 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !24
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !16
  %i.v = load ptr, ptr %8, align 8, !tbaa !20
  %i.w = shl i64 %i.c, 32                         ; 2 uses
  %sext = add i64 %i.w, 4294967296
  %i.x = ashr exact i64 %sext, 32
  %i.y = tail call ptr %i.v(ptr noundef nonnull %8, i64 noundef %i.x) #5 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = load ptr, ptr %0, align 8, !tbaa !24
  tail call void %i.ab(ptr noundef nonnull %8, ptr noundef %i.ac) #5
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ad = ashr exact i64 %i.w, 32                 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !15
  %i.af = icmp sgt i32 %i.d, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %2, i64 %i.ad, i1 false)
  %i.ag = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.y, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  store ptr %i.y, ptr %i.ah, align 8, !tbaa !13
  br i1 %i.o, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %8, align 8, !tbaa !20
  %i.aj = shl i64 %i.g, 32                        ; 2 uses
  %sext86 = add i64 %i.aj, 4294967296
  %i.ak = ashr exact i64 %sext86, 32
  %i.al = tail call ptr %i.ai(ptr noundef nonnull %8, i64 noundef %i.ak) #5 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  tail call void %i.ao(ptr noundef nonnull %8, ptr noundef nonnull %i.y) #5
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.aq = load ptr, ptr %0, align 8, !tbaa !24
  tail call void %i.ap(ptr noundef nonnull %8, ptr noundef %i.aq) #5
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ar = ashr exact i64 %i.aj, 32                ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !15
  %i.at = icmp sgt i32 %i.h, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %4, i64 %i.ar, i1 false)
  %i.au = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.al, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = load ptr, ptr %0, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.aw = phi ptr [ %i.av, %bb.m ], [ %i.ah, %bb.h ]
  %.0 = phi ptr [ %i.al, %bb.m ], [ null, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.0, ptr %i.ax, align 8, !tbaa !14
  %i.ay = load i32, ptr %1, align 4, !tbaa !8
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %1, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.n, %bb.j, %bb.e
  %.075 = phi i32 [ 1, %bb.n ], [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.j ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.075
}

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @uriComposeQueryCharsRequiredW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriComposeQueryCharsRequiredExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @uriComposeQueryEngineW(ptr noundef null, ptr noundef readonly %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1)
  br label %uriComposeQueryCharsRequiredExW.exit

uriComposeQueryCharsRequiredExW.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @uriComposeQueryCharsRequiredExW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @uriComposeQueryEngineW(ptr noundef null, ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @uriComposeQueryEngineW(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq i32 %6, 1                        ; 2 uses
  %i.c = select i1 %i.b, i32 6, i32 3             ; 8 uses
  %i.d = select i1 %i.b, i32 357913941, i32 715827882 ; 8 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 4 uses
  br i1 %i.a, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.f = add nsw i32 %2, -1
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !28     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 4 uses
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.preheader
  %i.l = tail call i64 @wcslen(ptr noundef nonnull %i.h) #4
  %i.m = trunc i64 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.preheader
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %.split.preheader ] ; 3 uses
  %i.o = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @wcslen(ptr noundef nonnull %i.j) #4
  %i.q = trunc i64 %i.p to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  %.not89.peel = icmp slt i32 %i.n, %i.d
  %.not90.peel = icmp slt i32 %i.r, %i.d
  %or.cond.peel = select i1 %.not89.peel, i1 %.not90.peel, i1 false
  br i1 %or.cond.peel, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.s = mul nsw i32 %i.n, %i.c
  %i.t = mul nsw i32 %i.r, %i.c
  %.not135 = icmp slt i32 %i.s, %2
  br i1 %.not135, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = tail call ptr @uriEscapeExW(ptr noundef %i.h, ptr noundef %i.v, ptr noundef nonnull %0, i32 noundef %5, i32 noundef %6) #5 ; 4 uses
  br i1 %i.o, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = sext i32 %i.t to i64
  %i.ab = add nsw i64 %i.aa, 1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = icmp sgt i64 %i.ac, %i.g
  br i1 %i.ad, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 61, ptr %i.w, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.af = sext i32 %i.r to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.af
  %i.ah = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ae, i32 noundef %5, i32 noundef %6) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.2.peel = phi ptr [ %i.w, %bb.g ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %.not.peel = icmp eq ptr %i.aj, null
  br i1 %.not.peel, label %.split97.us.thread130, label %.split

.split.us.preheader:                              ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.ak = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = icmp eq ptr %i.ak, null
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.us.preheader
  %i.ao = tail call i64 @wcslen(ptr noundef nonnull %i.ak) #4
  %i.ap = trunc i64 %i.ao to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.us.preheader
  %i.aq = phi i32 [ %i.ap, %bb.k ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.ar = icmp eq ptr %i.am, null                 ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call i64 @wcslen(ptr noundef nonnull %i.am) #4
  %i.at = trunc i64 %i.as to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = phi i32 [ %i.at, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %.not89.us.peel = icmp slt i32 %i.aq, %i.d
  %.not90.us.peel = icmp slt i32 %i.au, %i.d
  %or.cond.us.peel = select i1 %.not89.us.peel, i1 %.not90.us.peel, i1 false
  br i1 %or.cond.us.peel, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.av = mul nsw i32 %i.aq, %i.c
  %i.aw = mul nsw i32 %i.au, %i.c
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = select i1 %i.ar, i32 0, i32 %i.ax
  %i.az = add nsw i32 %i.av, %i.ay
  %i.ba = load i32, ptr %4, align 4, !tbaa !8
  %i.bb = add nsw i32 %i.az, %i.ba                ; 2 uses
  store i32 %i.bb, ptr %4, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30 ; 2 uses
  %.not.us.peel = icmp eq ptr %i.bd, null
  br i1 %.not.us.peel, label %.critedge, label %.split.us

.split.us:                                        ; preds = %bb.o, %bb.t
  %i.be = phi i32 [ %i.bw, %bb.t ], [ %i.bb, %bb.o ]
  %.07493.us = phi ptr [ %i.by, %bb.t ], [ %i.bd, %bb.o ] ; 3 uses
  %i.bf = load ptr, ptr %.07493.us, align 8, !tbaa !28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.07493.us, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = icmp eq ptr %i.bf, null
  br i1 %i.bi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.split.us
  %i.bj = tail call i64 @wcslen(ptr noundef nonnull %i.bf) #4
  %i.bk = trunc i64 %i.bj to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.us
  %i.bl = phi i32 [ %i.bk, %bb.p ], [ 0, %.split.us ] ; 2 uses
  %i.bm = icmp eq ptr %i.bh, null                 ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = tail call i64 @wcslen(ptr noundef nonnull %i.bh) #4
  %i.bo = trunc i64 %i.bn to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = phi i32 [ %i.bo, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %.not89.us = icmp slt i32 %i.bl, %i.d
end_hunk_0
begin_hunk_1_@uriDissectQueryMallocExMmW:bb.a
  %.173 = select i1 %i.bl, ptr %i.bk, ptr null    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.075134, i64 4 ; 3 uses
  %i.bn = icmp ult ptr %i.bm, %3
  br i1 %i.bn, label %.lr.ph.outer, label %.split83, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.q
  %i.bo = icmp eq ptr %.265, null
  %.not92 = icmp eq ptr %.167, null
  br i1 %.not92, label %.split83, label %uriAppendQueryItemW.exit103

.split83:                                         ; preds = %.thread, %bb.e, %._crit_edge
  %.0.lcssa169 = phi ptr [ %0, %bb.e ], [ %.0140.ph, %._crit_edge ], [ %spec.select, %.thread ] ; 4 uses
  %.063.lcssa168 = phi i1 [ true, %bb.e ], [ %i.bo, %._crit_edge ], [ true, %.thread ]
  %.072.lcssa167 = phi ptr [ %2, %bb.e ], [ %.072136.ph, %._crit_edge ], [ %.173, %.thread ] ; 5 uses
  %.075.lcssa166 = phi ptr [ %2, %bb.e ], [ %i.bg, %._crit_edge ], [ %i.bm, %.thread ] ; 3 uses
  %i.bp = ptrtoint ptr %.075.lcssa166 to i64
  %i.bq = ptrtoint ptr %.072.lcssa167 to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp eq ptr %.072.lcssa167, null
  %i.bv = icmp ugt ptr %.072.lcssa167, %.075.lcssa166
  %or.cond.i99 = or i1 %i.bv, %i.bu
  %i.bw = icmp eq ptr %.072.lcssa167, %.075.lcssa166
  %i.bx = and i1 %i.bw, %.063.lcssa168
  %or.cond200 = select i1 %or.cond.i99, i1 true, i1 %i.bx
  br i1 %or.cond200, label %uriFreeQueryListMmW.exit, label %bb.r

bb.r:                                             ; preds = %.split83
  %i.by = load ptr, ptr %.076, align 8, !tbaa !20
  %i.bz = call ptr %i.by(ptr noundef nonnull %.076, i64 noundef 24) #5, !inline_history !45 ; 3 uses
  store ptr %i.bz, ptr %.0.lcssa169, align 8, !tbaa !33
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %uriAppendQueryItemW.exit103.thread117, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr null, ptr %i.cb, align 8, !tbaa !30
  %i.cc = load ptr, ptr %.076, align 8, !tbaa !20
  %i.cd = shl i64 %i.br, 30                       ; 2 uses
  %sext.i100 = add i64 %i.cd, 4294967296
  %i.ce = ashr exact i64 %sext.i100, 30
  %i.cf = and i64 %i.ce, -4
  %i.cg = call ptr %i.cc(ptr noundef nonnull %.076, i64 noundef %i.cf) #5, !inline_history !45 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.076, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !21
  %i.ck = load ptr, ptr %.0.lcssa169, align 8, !tbaa !33
  call void %i.cj(ptr noundef nonnull %.076, ptr noundef %i.ck) #5, !inline_history !45
  store ptr null, ptr %.0.lcssa169, align 8, !tbaa !33
  br label %uriAppendQueryItemW.exit103.thread117

bb.u:                                             ; preds = %bb.s
  %i.cl = ashr i64 %i.cd, 32                      ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cl
  store i32 0, ptr %i.cm, align 4, !tbaa !8
  %i.cn = icmp sgt i32 %i.bt, 0
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = shl nsw i64 %i.cl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr nonnull align 4 %.072.lcssa167, i64 %i.co, i1 false)
  %i.cp = call ptr @uriUnescapeInPlaceExW(ptr noundef nonnull %i.cg, i32 noundef %4, i32 noundef %5) #5 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cq = load ptr, ptr %.0.lcssa169, align 8, !tbaa !33 ; 2 uses
  store ptr %i.cg, ptr %i.cq, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !29
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.c, align 4, !tbaa !8
  br label %uriFreeQueryListMmW.exit

uriAppendQueryItemW.exit103:                      ; preds = %._crit_edge
  %i.cu = call fastcc i32 @uriAppendQueryItemW(ptr noundef %.0140.ph, ptr noundef nonnull %i.c, ptr noundef %.072136.ph, ptr noundef %.270, ptr noundef nonnull %.167, ptr noundef nonnull %i.bg, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %.076)
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %uriAppendQueryItemW.exit103.thread117, label %uriFreeQueryListMmW.exit

uriAppendQueryItemW.exit103.thread117:            ; preds = %bb.r, %bb.t, %uriAppendQueryItemW.exit103
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.cw = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.cx = call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %.076) #5
  %.not.i104 = icmp ne i32 %i.cx, 1
  %.not1718.i106 = icmp eq ptr %i.cw, null
  %or.cond120 = select i1 %.not.i104, i1 true, i1 %.not1718.i106
  br i1 %or.cond120, label %uriFreeQueryListMmW.exit, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %uriAppendQueryItemW.exit103.thread117
  %i.cy = getelementptr inbounds nuw i8, ptr %.076, i64 32 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i107
  %.01519.i108 = phi ptr [ %i.cw, %.lr.ph.i107 ], [ %i.da, %bb.x ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01519.i108, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !30 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.dc = load ptr, ptr %.01519.i108, align 8, !tbaa !28
  call void %i.db(ptr noundef nonnull %.076, ptr noundef %i.dc) #5, !inline_history !32
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %.01519.i108, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  call void %i.dd(ptr noundef nonnull %.076, ptr noundef %i.df) #5, !inline_history !32
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !21
  call void %i.dg(ptr noundef nonnull %.076, ptr noundef nonnull %.01519.i108) #5, !inline_history !32
  %.not17.i109 = icmp eq ptr %i.da, null
  br i1 %.not17.i109, label %uriFreeQueryListMmW.exit, label %bb.x, !llvm.loop !1

uriFreeQueryListMmW.exit:                         ; preds = %bb.n, %bb.x, %.split83, %bb.w, %uriAppendQueryItemW.exit103.thread117, %uriAppendQueryItemW.exit.thread113, %uriAppendQueryItemW.exit103, %bb.d, %bb.b, %bb.a
  %.077 = phi i32 [ 9, %bb.b ], [ 2, %bb.a ], [ 0, %uriAppendQueryItemW.exit103 ], [ 0, %.split83 ], [ 10, %bb.d ], [ 3, %uriAppendQueryItemW.exit.thread113 ], [ 3, %bb.x ], [ 0, %bb.w ], [ 3, %uriAppendQueryItemW.exit103.thread117 ], [ 3, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriAppendQueryItemW(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr exact i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32
  %i.f = ptrtoint ptr %5 to i64
  %i.g = ptrtoint ptr %4 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp eq ptr %1, null
  %i.l = icmp eq ptr %2, null
  %or.cond3 = or i1 %i.k, %i.l
  %i.m = icmp eq ptr %3, null
  %or.cond5 = or i1 %or.cond3, %i.m
  %i.n = icmp ugt ptr %2, %3
  %or.cond = or i1 %i.n, %or.cond5
  %i.o = icmp ugt ptr %4, %5
  %or.cond88 = or i1 %or.cond, %i.o
  br i1 %or.cond88, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %2, %3
  %i.q = icmp eq ptr %4, null
  %i.r = icmp eq ptr %5, null
  %i.s = and i1 %i.p, %i.r
  br i1 %i.s, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %8, align 8, !tbaa !20
  %i.u = tail call ptr %i.t(ptr noundef nonnull %8, i64 noundef 24) #5 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !33
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !30
  %i.x = load ptr, ptr %8, align 8, !tbaa !20
  %i.y = shl i64 %i.c, 30                         ; 2 uses
  %sext = add i64 %i.y, 4294967296
  %i.z = ashr exact i64 %sext, 30
  %i.aa = and i64 %i.z, -4
  %i.ab = tail call ptr %i.x(ptr noundef nonnull %8, i64 noundef %i.aa) #5 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = load ptr, ptr %0, align 8, !tbaa !33
  tail call void %i.ae(ptr noundef nonnull %8, ptr noundef %i.af) #5
  store ptr null, ptr %0, align 8, !tbaa !33
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ag = ashr i64 %i.y, 32                       ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ag
  store i32 0, ptr %i.ah, align 4, !tbaa !8
  %i.ai = icmp sgt i32 %i.e, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = shl nsw i64 %i.ag, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr nonnull align 4 %2, i64 %i.aj, i1 false)
  %i.ak = tail call ptr @uriUnescapeInPlaceExW(ptr noundef nonnull %i.ab, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  store ptr %i.ab, ptr %i.al, align 8, !tbaa !28
  br i1 %i.q, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %8, align 8, !tbaa !20
  %i.an = shl i64 %i.h, 30                        ; 2 uses
  %sext86 = add i64 %i.an, 4294967296
  %i.ao = ashr exact i64 %sext86, 30
  %i.ap = and i64 %i.ao, -4
  %i.aq = tail call ptr %i.am(ptr noundef nonnull %8, i64 noundef %i.ap) #5 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  tail call void %i.at(ptr noundef nonnull %8, ptr noundef nonnull %i.ab) #5
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.av = load ptr, ptr %0, align 8, !tbaa !33
  tail call void %i.au(ptr noundef nonnull %8, ptr noundef %i.av) #5
  store ptr null, ptr %0, align 8, !tbaa !33
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.aw = ashr i64 %i.an, 32                      ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.aw
  store i32 0, ptr %i.ax, align 4, !tbaa !8
  %i.ay = icmp sgt i32 %i.j, 0
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = shl nsw i64 %i.aw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull align 4 %4, i64 %i.az, i1 false)
  %i.ba = tail call ptr @uriUnescapeInPlaceExW(ptr noundef nonnull %i.aq, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = load ptr, ptr %0, align 8, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.bc = phi ptr [ %i.bb, %bb.m ], [ %i.al, %bb.h ]
  %.0 = phi ptr [ %i.aq, %bb.m ], [ null, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0, ptr %i.bd, align 8, !tbaa !29
  %i.be = load i32, ptr %1, align 4, !tbaa !8
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %1, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.n, %bb.j, %bb.e
  %.075 = phi i32 [ 1, %bb.n ], [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.j ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.075
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @uriEscapeExA(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @uriUnescapeInPlaceExA(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @uriEscapeExW(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uriUnescapeInPlaceExW(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 _ZTS19UriQueryListStructA", !9, i64 0}
!12 = !{!"UriQueryListStructA", !10, i64 0, !10, i64 8, !11, i64 16}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !10, i64 8}
!15 = !{!6, !6, i64 0}
!16 = !{!12, !11, i64 16}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = !{!"UriMemoryManagerStruct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!20 = !{!19, !9, i64 0}
!21 = !{!19, !9, i64 32}
!22 = !{!10, !10, i64 0}
!23 = !{ptr @uriFreeQueryListMmA}
!24 = !{!11, !11, i64 0}
!25 = !{!"p1 int", !9, i64 0}
!26 = !{!"p1 _ZTS19UriQueryListStructW", !9, i64 0}
!27 = !{!"UriQueryListStructW", !25, i64 0, !25, i64 8, !26, i64 16}
!28 = !{!27, !25, i64 0}
!29 = !{!27, !25, i64 8}
!30 = !{!27, !26, i64 16}
!31 = !{!25, !25, i64 0}
!32 = !{ptr @uriFreeQueryListMmW}
!33 = !{!26, !26, i64 0}
!34 = distinct !{!34, !17, !18}
!35 = distinct !{!35, !17, !18}
!36 = !{ptr @uriComposeQueryMallocExA, ptr @uriComposeQueryMallocExMmA}
!37 = !{ptr @uriComposeQueryMallocExMmA}
!38 = distinct !{!38, !17}
!39 = !{ptr @uriAppendQueryItemA}
!40 = distinct !{!40, !17, !18}
!41 = distinct !{!41, !17, !18}
!42 = !{ptr @uriComposeQueryMallocExW, ptr @uriComposeQueryMallocExMmW}
!43 = !{ptr @uriComposeQueryMallocExMmW}
!44 = distinct !{!44, !17}
!45 = !{ptr @uriAppendQueryItemW}
end_hunk_1
