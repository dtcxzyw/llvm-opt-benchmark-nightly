Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriQuery?download=true
inline.NumInlined: 23
begin_hunk_0_@uriDissectQueryMallocExMmA:bb.a
  %.077 = phi i32 [ 9, %bb.b ], [ 2, %bb.a ], [ 0, %uriAppendQueryItemA.exit103 ], [ 3, %bb.y ], [ 10, %bb.d ], [ 3, %uriAppendQueryItemA.exit.thread ], [ 0, %bb.r ], [ 0, %bb.x ], [ 3, %uriAppendQueryItemA.exit103.thread ], [ 0, %.split83 ], [ 3, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriAppendQueryItemA(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ptrtoint ptr %5 to i64
  %i.e = ptrtoint ptr %4 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp eq ptr %1, null
  %i.h = icmp eq ptr %2, null
  %or.cond3 = or i1 %i.g, %i.h
  %i.i = icmp eq ptr %3, null
  %or.cond5 = or i1 %or.cond3, %i.i
  %i.j = icmp ugt ptr %2, %3
  %or.cond = or i1 %i.j, %or.cond5
  %i.k = icmp ugt ptr %4, %5
  %or.cond104 = or i1 %or.cond, %i.k
  br i1 %or.cond104, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %2, %3                       ; 2 uses
  %i.m = icmp eq ptr %4, null
  %i.n = icmp eq ptr %5, null
  %or.cond9 = and i1 %i.l, %i.n
  br i1 %or.cond9, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %8, align 8, !tbaa !31
  %i.p = tail call ptr %i.o(ptr noundef nonnull %8, i64 noundef 24) #5 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !30
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !21
  %i.s = icmp eq i64 %i.c, -1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = load ptr, ptr %0, align 8, !tbaa !30
  tail call void %i.u(ptr noundef nonnull %8, ptr noundef %i.v) #5
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.c, 1
  %i.x = load ptr, ptr %8, align 8, !tbaa !31
  %i.y = tail call ptr %i.x(ptr noundef nonnull %8, i64 noundef %i.w) #5 ; 7 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.ac = load ptr, ptr %0, align 8, !tbaa !30
  tail call void %i.ab(ptr noundef nonnull %8, ptr noundef %i.ac) #5
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.c
  store i8 0, ptr %i.ad, align 1, !tbaa !20
  br i1 %i.l, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  %i.ae = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.y, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  store ptr %i.y, ptr %i.af, align 8, !tbaa !18
  br i1 %i.m, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp eq i64 %i.f, -1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  tail call void %i.ai(ptr noundef nonnull %8, ptr noundef nonnull %i.y) #5
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ak = load ptr, ptr %0, align 8, !tbaa !30
  tail call void %i.aj(ptr noundef nonnull %8, ptr noundef %i.ak) #5
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.al = add nuw i64 %i.f, 1
  %i.am = load ptr, ptr %8, align 8, !tbaa !31
  %i.an = tail call ptr %i.am(ptr noundef nonnull %8, i64 noundef %i.al) #5 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  tail call void %i.aq(ptr noundef nonnull %8, ptr noundef nonnull %i.y) #5
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.as = load ptr, ptr %0, align 8, !tbaa !30
  tail call void %i.ar(ptr noundef nonnull %8, ptr noundef %i.as) #5
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.f
  store i8 0, ptr %i.at, align 1, !tbaa !20
  %.not103 = icmp eq ptr %5, %4
  br i1 %.not103, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %4, i64 %i.f, i1 false)
  %i.au = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.an, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.an, ptr %i.aw, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.q
  %i.ax = phi ptr [ %i.av, %bb.q ], [ %i.af, %bb.j ]
  %.0 = phi ptr [ %i.an, %bb.q ], [ null, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.0, ptr %i.ay, align 8, !tbaa !19
  %i.az = load i32, ptr %1, align 4, !tbaa !22
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %1, align 4, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.r, %bb.n, %bb.l, %bb.g, %bb.e
  %.090 = phi i32 [ 1, %bb.r ], [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.090
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriComposeQueryCharsRequiredW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
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
define hidden range(i32 0, 5) i32 @uriComposeQueryCharsRequiredExW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
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
  %i.d = select i1 %i.b, i64 357913941, i64 715827882 ; 8 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 4 uses
  br i1 %i.a, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.f = add nsw i32 %2, -1
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 4 uses
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.preheader
  %i.l = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.h) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.preheader
  %i.m = phi i64 [ %i.l, %bb.b ], [ 0, %.split.preheader ] ; 3 uses
  %i.n = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.j) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  %.not96.peel = icmp ult i64 %i.m, %i.d
  %.not97.peel = icmp ult i64 %i.p, %i.d
  %or.cond.peel = select i1 %.not96.peel, i1 %.not97.peel, i1 false
  br i1 %or.cond.peel, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %i.m to i32
  %i.r = mul nuw nsw i32 %i.c, %i.q
  %i.s = trunc nuw nsw i64 %i.p to i32
  %i.t = mul nuw nsw i32 %i.c, %i.s
  %.not144 = icmp samesign ult i32 %i.r, %2
  br i1 %.not144, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.m
  %i.v = tail call ptr @uriEscapeExW(ptr noundef %i.h, ptr noundef %i.u, ptr noundef nonnull %0, i32 noundef %5, i32 noundef %6) #5 ; 4 uses
  br i1 %i.n, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  %i.y = ashr exact i64 %i.x, 2
  %narrow.peel = add nuw i32 %i.t, 1
  %i.z = zext i32 %narrow.peel to i64
  %i.aa = add nsw i64 %i.y, %i.z
  %i.ab = icmp sgt i64 %i.aa, %i.g
  br i1 %i.ab, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 61, ptr %i.v, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.ae = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac, i32 noundef %5, i32 noundef %6) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.2.peel = phi ptr [ %i.v, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %.not.peel = icmp eq ptr %i.ag, null
  br i1 %.not.peel, label %.split106.us.thread139, label %.split

.split.us.preheader:                              ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !22
  %i.ah = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, null
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.us.preheader
  %i.al = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ah) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.us.preheader
  %i.am = phi i64 [ %i.al, %bb.k ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.an = icmp eq ptr %i.aj, null                 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.aj) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ %i.ao, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %.not96.us.peel = icmp ult i64 %i.am, %i.d
  %.not97.us.peel = icmp ult i64 %i.ap, %i.d
  %or.cond.us.peel = select i1 %.not96.us.peel, i1 %.not97.us.peel, i1 false
  br i1 %or.cond.us.peel, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.aq = trunc nuw nsw i64 %i.am to i32
  %i.ar = mul nuw nsw i32 %i.c, %i.aq
  %i.as = trunc nuw nsw i64 %i.ap to i32
  %i.at = mul nuw nsw i32 %i.c, %i.as
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = select i1 %i.an, i32 0, i32 %i.au
  %i.aw = add nuw nsw i32 %i.ar, %i.av
  %i.ax = load i32, ptr %4, align 4, !tbaa !22
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 2 uses
  store i32 %i.ay, ptr %4, align 4, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  %.not.us.peel = icmp eq ptr %i.ba, null
  br i1 %.not.us.peel, label %.critedge, label %.split.us

.split.us:                                        ; preds = %bb.o, %bb.t
  %i.bb = phi i32 [ %i.bt, %bb.t ], [ %i.ay, %bb.o ]
  %.080102.us = phi ptr [ %i.bv, %bb.t ], [ %i.ba, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %.080102.us, align 8, !tbaa !35 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.080102.us, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.bf = icmp eq ptr %i.bc, null
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.split.us
  %i.bg = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.bc) #4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.us
  %i.bh = phi i64 [ %i.bg, %bb.p ], [ 0, %.split.us ] ; 2 uses
  %i.bi = icmp eq ptr %i.be, null                 ; 2 uses
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.be) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %.not96.us = icmp ult i64 %i.bh, %i.d
  %.not97.us = icmp ult i64 %i.bk, %i.d
  %or.cond.us = select i1 %.not96.us, i1 %.not97.us, i1 false
  br i1 %or.cond.us, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bl = trunc nuw nsw i64 %i.bh to i32
  %i.bm = mul nuw nsw i32 %i.c, %i.bl
  %i.bn = trunc nuw nsw i64 %i.bk to i32
  %i.bo = mul nuw nsw i32 %i.c, %i.bn
  %i.bp = add nuw nsw i32 %i.bm, 1
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = select i1 %i.bi, i32 0, i32 %i.bq
  %i.bs = add nuw nsw i32 %i.bp, %i.br
  %i.bt = add nsw i32 %i.bs, %i.bb                ; 2 uses
  store i32 %i.bt, ptr %4, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %.080102.us, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %.not.us = icmp eq ptr %i.bv, null
  br i1 %.not.us, label %.split106.us, label %.split.us, !llvm.loop !47

.split:                                           ; preds = %bb.j, %bb.ac
  %.066104 = phi ptr [ %.2, %bb.ac ], [ %.2.peel, %bb.j ] ; 3 uses
  %.080102 = phi ptr [ %i.dd, %bb.ac ], [ %i.ag, %bb.j ] ; 3 uses
  %i.bw = load ptr, ptr %.080102, align 8, !tbaa !35 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.080102, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 4 uses
  %i.bz = icmp eq ptr %i.bw, null
  br i1 %i.bz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split
  %i.ca = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.bw) #4
  br label %bb.v

bb.v:                                             ; preds = %.split, %bb.u
  %i.cb = phi i64 [ %i.ca, %bb.u ], [ 0, %.split ] ; 3 uses
  %i.cc = icmp eq ptr %i.by, null                 ; 2 uses
  br i1 %i.cc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.by) #4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ce = phi i64 [ %i.cd, %bb.w ], [ 0, %bb.v ]  ; 3 uses
  %.not96 = icmp ult i64 %i.cb, %i.d
  %.not97 = icmp ult i64 %i.ce, %i.d
  %or.cond = select i1 %.not96, i1 %.not97, i1 false
  br i1 %or.cond, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.cf = trunc nuw nsw i64 %i.cb to i32
  %i.cg = mul nuw nsw i32 %i.c, %i.cf
  %i.ch = trunc nuw nsw i64 %i.ce to i32
  %i.ci = mul nuw nsw i32 %i.c, %i.ch
  %i.cj = ptrtoint ptr %.066104 to i64
  %i.ck = sub i64 %i.cj, %i.e
  %i.cl = ashr exact i64 %i.ck, 2
  %i.cm = add nsw i64 %i.cl, 1
  %i.cn = zext nneg i32 %i.cg to i64
  %i.co = add nsw i64 %i.cm, %i.cn
  %i.cp = icmp sgt i64 %i.co, %i.g
  br i1 %i.cp, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 38, ptr %.066104, align 4, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %.066104, i64 4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cb
  %i.cs = tail call ptr @uriEscapeExW(ptr noundef %i.bw, ptr noundef %i.cr, ptr noundef nonnull %i.cq, i32 noundef %5, i32 noundef %6) #5 ; 4 uses
  br i1 %i.cc, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.e
  %i.cv = ashr exact i64 %i.cu, 2
  %narrow = add nuw i32 %i.ci, 1
  %i.cw = zext i32 %narrow to i64
  %i.cx = add nsw i64 %i.cv, %i.cw
  %i.cy = icmp sgt i64 %i.cx, %i.g
  br i1 %i.cy, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 61, ptr %i.cs, align 4, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ce
  %i.db = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.by, ptr noundef nonnull %i.da, ptr noundef nonnull %i.cz, i32 noundef %5, i32 noundef %6) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.2 = phi ptr [ %i.cs, %bb.z ], [ %i.db, %bb.ab ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.080102, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %.split106.us, label %.split, !llvm.loop !48

.split106.us:                                     ; preds = %bb.ac, %bb.t
  %.us-phi = phi ptr [ null, %bb.t ], [ %.2, %bb.ac ]
  br i1 %i.a, label %.critedge, label %.split106.us.thread139

.split106.us.thread139:                           ; preds = %bb.j, %.split106.us
  %.us-phi141 = phi ptr [ %.us-phi, %.split106.us ], [ %.2.peel, %bb.j ] ; 2 uses
  store i32 0, ptr %.us-phi141, align 4, !tbaa !22
  %.not95 = icmp eq ptr %3, null
  br i1 %.not95, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.split106.us.thread139
  %i.de = ptrtoint ptr %.us-phi141 to i64
  %i.df = sub i64 %i.de, %i.e
  %i.dg = ashr exact i64 %i.df, 2                 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, 2147483647
  br i1 %i.dh, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.di = trunc nuw nsw i64 %i.dg to i32
  %i.dj = add nuw nsw i32 %i.di, 1
  store i32 %i.dj, ptr %3, align 4, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.x, %bb.y, %bb.s, %bb.o, %bb.e, %bb.f, %bb.h, %bb.n, %.split106.us, %.split106.us.thread139, %bb.ae, %bb.ad
  %.379 = phi i32 [ 0, %bb.ae ], [ 0, %.split106.us.thread139 ], [ 4, %bb.ad ], [ 0, %.split106.us ], [ 4, %bb.e ], [ 4, %bb.n ], [ 0, %bb.o ], [ 4, %bb.h ], [ 4, %bb.f ], [ 4, %bb.s ], [ 4, %bb.y ], [ 4, %bb.x ], [ 4, %bb.aa ]
  ret i32 %.379
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriComposeQueryW(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriComposeQueryExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %uriComposeQueryExW.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @uriComposeQueryEngineW(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef 1, i32 noundef 1)
  br label %uriComposeQueryExW.exit

uriComposeQueryExW.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.c ], [ 2, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriComposeQueryExW(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @uriComposeQueryEngineW(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 2, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriComposeQueryMallocW(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %uriComposeQueryMallocExW.exit, label %uriComposeQueryCharsRequiredExW.exit.i.i

uriComposeQueryCharsRequiredExW.exit.i.i:         ; preds = %bb.a
  %i.d = call fastcc i32 @uriComposeQueryEngineW(ptr noundef null, ptr noundef readonly %1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1) ; 2 uses
  %.not29.i.i = icmp eq i32 %i.d, 0
  br i1 %.not29.i.i, label %bb.b, label %uriComposeQueryMallocExW.exit

bb.b:                                             ; preds = %uriComposeQueryCharsRequiredExW.exit.i.i
  %i.e = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.f = icmp eq i32 %i.e, 2147483647
  br i1 %i.f, label %uriComposeQueryMallocExW.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, 1                      ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultMemoryManager, i64 8), align 8, !tbaa !26
  %i.i = sext i32 %i.g to i64
  %i.j = tail call ptr %i.h(ptr noundef nonnull @defaultMemoryManager, i64 noundef %i.i, i64 noundef 4) #5, !inline_history !49 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %uriComposeQueryMallocExW.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.e, 0
  br i1 %i.l, label %uriComposeQueryExW.exit.thread.i.i, label %uriComposeQueryExW.exit.i.i

uriComposeQueryExW.exit.i.i:                      ; preds = %bb.d
  %i.m = tail call fastcc i32 @uriComposeQueryEngineW(ptr noundef nonnull %i.j, ptr noundef readonly %1, i32 noundef %i.g, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1) ; 2 uses
  %.not30.i.i = icmp eq i32 %i.m, 0
  br i1 %.not30.i.i, label %bb.e, label %uriComposeQueryExW.exit.thread.i.i

uriComposeQueryExW.exit.thread.i.i:               ; preds = %uriComposeQueryExW.exit.i.i, %bb.d
  %.0.i3136.i.i = phi i32 [ %i.m, %uriComposeQueryExW.exit.i.i ], [ 4, %bb.d ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultMemoryManager, i64 32), align 8, !tbaa !27
  tail call void %i.n(ptr noundef nonnull @defaultMemoryManager, ptr noundef nonnull %i.j) #5, !inline_history !49
  br label %uriComposeQueryMallocExW.exit

bb.e:                                             ; preds = %uriComposeQueryExW.exit.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !38
  br label %uriComposeQueryMallocExW.exit

uriComposeQueryMallocExW.exit:                    ; preds = %bb.a, %uriComposeQueryCharsRequiredExW.exit.i.i, %bb.b, %bb.c, %uriComposeQueryExW.exit.thread.i.i, %bb.e
  %.022.i.i = phi i32 [ 2, %bb.a ], [ 3, %bb.c ], [ %i.d, %uriComposeQueryCharsRequiredExW.exit.i.i ], [ 3, %bb.b ], [ %.0.i3136.i.i, %uriComposeQueryExW.exit.thread.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.022.i.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriComposeQueryMallocExW(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %uriComposeQueryMallocExMmW.exit, label %uriComposeQueryCharsRequiredExW.exit.i

uriComposeQueryCharsRequiredExW.exit.i:           ; preds = %bb.a
  %i.d = call fastcc i32 @uriComposeQueryEngineW(ptr noundef null, ptr noundef readonly %1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3) ; 2 uses
  %.not29.i = icmp eq i32 %i.d, 0
  br i1 %.not29.i, label %bb.b, label %uriComposeQueryMallocExMmW.exit

bb.b:                                             ; preds = %uriComposeQueryCharsRequiredExW.exit.i
  %i.e = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.f = icmp eq i32 %i.e, 2147483647
  br i1 %i.f, label %uriComposeQueryMallocExMmW.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, 1                      ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultMemoryManager, i64 8), align 8, !tbaa !26
end_hunk_0
