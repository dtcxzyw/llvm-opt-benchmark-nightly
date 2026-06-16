inline.NumInlined: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UriMemoryManagerStruct = type { ptr, ptr, ptr, ptr, ptr, ptr }

@defaultMemoryManager = external global %struct.UriMemoryManagerStruct, align 8

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @uriComposeQueryCharsRequiredA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriComposeQueryCharsRequiredExA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @uriComposeQueryEngineA(ptr noundef null, ptr noundef readonly %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1)
  br label %uriComposeQueryCharsRequiredExA.exit

uriComposeQueryCharsRequiredExA.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @uriComposeQueryCharsRequiredExA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @uriComposeQueryEngineA(ptr noundef null, ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @uriComposeQueryEngineA(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
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
  %i.h = load ptr, ptr %1, align 8, !tbaa !7      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 4 uses
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.preheader
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #4
  %i.m = trunc i64 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.preheader
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %.split.preheader ] ; 3 uses
  %i.o = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #4
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
  %.not136 = icmp slt i32 %i.s, %2
  br i1 %.not136, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 %i.u
  %i.w = tail call ptr @uriEscapeExA(ptr noundef %i.h, ptr noundef %i.v, ptr noundef nonnull %0, i32 noundef %5, i32 noundef %6) #5 ; 4 uses
  br i1 %i.o, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sext i32 %i.t to i64
  %reass.sub.peel = sub i64 %i.y, %i.e
  %i.z = add i64 %reass.sub.peel, 1
  %i.aa = add i64 %i.z, %i.x
  %i.ab = icmp sgt i64 %i.aa, %i.g
  br i1 %i.ab, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 61, ptr %i.w, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ad = sext i32 %i.r to i64
  %i.ae = getelementptr inbounds i8, ptr %i.j, i64 %i.ad
  %i.af = tail call ptr @uriEscapeExA(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ac, i32 noundef %5, i32 noundef %6) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.275.peel = phi ptr [ %i.w, %bb.g ], [ %i.af, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %.not.peel = icmp eq ptr %i.ah, null
  br i1 %.not.peel, label %.split97.us.thread129, label %.split.preheader142

.split.preheader142:                              ; preds = %bb.j
  %invariant.op = sub i64 1, %i.e
  %invariant.op145 = sub i64 1, %i.e
  br label %.split

.split.us.preheader:                              ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.ai = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.al = icmp eq ptr %i.ai, null
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.us.preheader
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #4
  %i.an = trunc i64 %i.am to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.us.preheader
  %i.ao = phi i32 [ %i.an, %bb.k ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.ap = icmp eq ptr %i.ak, null                 ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #4
  %i.ar = trunc i64 %i.aq to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = phi i32 [ %i.ar, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %.not89.us.peel = icmp slt i32 %i.ao, %i.d
  %.not90.us.peel = icmp slt i32 %i.as, %i.d
  %or.cond.us.peel = select i1 %.not89.us.peel, i1 %.not90.us.peel, i1 false
  br i1 %or.cond.us.peel, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.at = mul nsw i32 %i.ao, %i.c
  %i.au = mul nsw i32 %i.as, %i.c
  %i.av = add nsw i32 %i.au, 1
  %i.aw = select i1 %i.ap, i32 0, i32 %i.av
  %i.ax = add nsw i32 %i.at, %i.aw
  %i.ay = load i32, ptr %4, align 4, !tbaa !3
  %i.az = add nsw i32 %i.ax, %i.ay                ; 2 uses
  store i32 %i.az, ptr %4, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %.not.us.peel = icmp eq ptr %i.bb, null
  br i1 %.not.us.peel, label %.critedge, label %.split.us

.split.us:                                        ; preds = %bb.o, %bb.t
  %i.bc = phi i32 [ %i.bu, %bb.t ], [ %i.az, %bb.o ]
  %.06395.us = phi ptr [ %i.bw, %bb.t ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bd = load ptr, ptr %.06395.us, align 8, !tbaa !7 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06395.us, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, null
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.split.us
  %i.bh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #4
  %i.bi = trunc i64 %i.bh to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.us
  %i.bj = phi i32 [ %i.bi, %bb.p ], [ 0, %.split.us ] ; 2 uses
  %i.bk = icmp eq ptr %i.bf, null                 ; 2 uses
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #4
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = phi i32 [ %i.bm, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %.not89.us = icmp slt i32 %i.bj, %i.d
  %.not90.us = icmp slt i32 %i.bn, %i.d
  %or.cond.us = select i1 %.not89.us, i1 %.not90.us, i1 false
  br i1 %or.cond.us, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bo = mul nsw i32 %i.bj, %i.c
  %i.bp = mul nsw i32 %i.bn, %i.c
  %i.bq = add nsw i32 %i.bo, 1
  %i.br = add nsw i32 %i.bp, 1
  %i.bs = select i1 %i.bk, i32 0, i32 %i.br
  %i.bt = add nsw i32 %i.bq, %i.bs
  %i.bu = add nsw i32 %i.bt, %i.bc                ; 2 uses
  store i32 %i.bu, ptr %4, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.06395.us, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %.not.us = icmp eq ptr %i.bw, null
  br i1 %.not.us, label %.split97.us, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %.split.preheader142, %bb.ac
  %.06395 = phi ptr [ %i.db, %bb.ac ], [ %i.ah, %.split.preheader142 ] ; 3 uses
  %.07393 = phi ptr [ %.275, %bb.ac ], [ %.275.peel, %.split.preheader142 ] ; 3 uses
  %i.bx = load ptr, ptr %.06395, align 8, !tbaa !7 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.06395, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !12 ; 4 uses
  %i.ca = icmp eq ptr %i.bx, null
  br i1 %i.ca, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split
  %i.cb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #4
  %i.cc = trunc i64 %i.cb to i32
  br label %bb.v

bb.v:                                             ; preds = %.split, %bb.u
  %i.cd = phi i32 [ %i.cc, %bb.u ], [ 0, %.split ] ; 3 uses
  %i.ce = icmp eq ptr %i.bz, null                 ; 2 uses
  br i1 %i.ce, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bz) #4
  %i.cg = trunc i64 %i.cf to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ch = phi i32 [ %i.cg, %bb.w ], [ 0, %bb.v ]  ; 3 uses
  %.not89 = icmp slt i32 %i.cd, %i.d
  %.not90 = icmp slt i32 %i.ch, %i.d
  %or.cond = select i1 %.not89, i1 %.not90, i1 false
  br i1 %or.cond, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.ci = mul nsw i32 %i.cd, %i.c
  %i.cj = mul nsw i32 %i.ch, %i.c
  %i.ck = ptrtoint ptr %.07393 to i64
  %.reass.reass = add i64 %i.ck, %invariant.op
  %i.cl = sext i32 %i.ci to i64
  %i.cm = add nsw i64 %.reass.reass, %i.cl
  %i.cn = icmp sgt i64 %i.cm, %i.g
  br i1 %i.cn, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 38, ptr %.07393, align 1, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.07393, i64 1
  %i.cp = sext i32 %i.cd to i64
  %i.cq = getelementptr inbounds i8, ptr %i.bx, i64 %i.cp
  %i.cr = tail call ptr @uriEscapeExA(ptr noundef %i.bx, ptr noundef %i.cq, ptr noundef nonnull %i.co, i32 noundef %5, i32 noundef %6) #5 ; 4 uses
  br i1 %i.ce, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sext i32 %i.cj to i64
  %.reass135.reass = add i64 %i.ct, %invariant.op145
  %i.cu = add i64 %.reass135.reass, %i.cs
  %i.cv = icmp sgt i64 %i.cu, %i.g
  br i1 %i.cv, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 61, ptr %i.cr, align 1, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cx = sext i32 %i.ch to i64
  %i.cy = getelementptr inbounds i8, ptr %i.bz, i64 %i.cx
  %i.cz = tail call ptr @uriEscapeExA(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cw, i32 noundef %5, i32 noundef %6) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.275 = phi ptr [ %i.cr, %bb.z ], [ %i.cz, %bb.ab ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.06395, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %.split97.us, label %.split, !llvm.loop !18

.split97.us:                                      ; preds = %bb.ac, %bb.t
  %.us-phi = phi ptr [ null, %bb.t ], [ %.275, %bb.ac ]
  br i1 %i.a, label %.critedge, label %.split97.us.thread129
end_hunk_0
begin_hunk_1_@uriDissectQueryMallocExMmA:bb.a
  %.not.i104 = icmp ne i32 %i.cs, 1
  %.not1718.i106 = icmp eq ptr %i.cr, null
  %or.cond120 = select i1 %.not.i104, i1 true, i1 %.not1718.i106
  br i1 %or.cond120, label %uriFreeQueryListMmA.exit, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %uriAppendQueryItemA.exit103.thread117
  %i.ct = getelementptr inbounds nuw i8, ptr %.077, i64 32 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i107
  %.01519.i108 = phi ptr [ %i.cr, %.lr.ph.i107 ], [ %i.cv, %bb.x ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01519.i108, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !14 ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !22
  %i.cx = load ptr, ptr %.01519.i108, align 8, !tbaa !7
  call void %i.cw(ptr noundef nonnull %.077, ptr noundef %i.cx) #5, !inline_history !25
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %.01519.i108, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !12
  call void %i.cy(ptr noundef nonnull %.077, ptr noundef %i.da) #5, !inline_history !25
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !22
  call void %i.db(ptr noundef nonnull %.077, ptr noundef nonnull %.01519.i108) #5, !inline_history !25
  %.not17.i109 = icmp eq ptr %i.cv, null
  br i1 %.not17.i109, label %uriFreeQueryListMmA.exit, label %bb.x, !llvm.loop !26

uriFreeQueryListMmA.exit:                         ; preds = %bb.n, %bb.x, %.split83, %bb.w, %uriAppendQueryItemA.exit103.thread117, %uriAppendQueryItemA.exit.thread113, %uriAppendQueryItemA.exit103, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 9, %bb.b ], [ 2, %bb.a ], [ 0, %uriAppendQueryItemA.exit103 ], [ 0, %.split83 ], [ 10, %bb.d ], [ 3, %uriAppendQueryItemA.exit.thread113 ], [ 3, %bb.x ], [ 0, %bb.w ], [ 3, %uriAppendQueryItemA.exit103.thread117 ], [ 3, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i32 %.0
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
  %i.r = load ptr, ptr %8, align 8, !tbaa !19
  %i.s = tail call ptr %i.r(ptr noundef nonnull %8, i64 noundef 24) #5 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !27
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !14
  %i.v = load ptr, ptr %8, align 8, !tbaa !19
  %i.w = shl i64 %i.c, 32                         ; 2 uses
  %sext = add i64 %i.w, 4294967296
  %i.x = ashr exact i64 %sext, 32
  %i.y = tail call ptr %i.v(ptr noundef nonnull %8, i64 noundef %i.x) #5 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = load ptr, ptr %0, align 8, !tbaa !27
  tail call void %i.ab(ptr noundef nonnull %8, ptr noundef %i.ac) #5
  store ptr null, ptr %0, align 8, !tbaa !27
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ad = ashr exact i64 %i.w, 32                 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !13
  %i.af = icmp sgt i32 %i.d, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %2, i64 %i.ad, i1 false)
  %i.ag = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.y, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  store ptr %i.y, ptr %i.ah, align 8, !tbaa !7
  br i1 %i.o, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %8, align 8, !tbaa !19
  %i.aj = shl i64 %i.g, 32                        ; 2 uses
  %sext86 = add i64 %i.aj, 4294967296
  %i.ak = ashr exact i64 %sext86, 32
  %i.al = tail call ptr %i.ai(ptr noundef nonnull %8, i64 noundef %i.ak) #5 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  tail call void %i.ao(ptr noundef nonnull %8, ptr noundef nonnull %i.y) #5
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.aq = load ptr, ptr %0, align 8, !tbaa !27
  tail call void %i.ap(ptr noundef nonnull %8, ptr noundef %i.aq) #5
  store ptr null, ptr %0, align 8, !tbaa !27
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ar = ashr exact i64 %i.aj, 32                ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !13
  %i.at = icmp sgt i32 %i.h, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %4, i64 %i.ar, i1 false)
  %i.au = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %i.al, i32 noundef %6, i32 noundef %7) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.al, ptr %i.aw, align 8, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.ax = phi ptr [ %i.av, %bb.m ], [ %i.ah, %bb.h ]
  %.0 = phi ptr [ %i.al, %bb.m ], [ null, %bb.h ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.0, ptr %i.ay, align 8, !tbaa !12
  %i.az = load i32, ptr %1, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %1, align 4, !tbaa !3
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
  %i.h = load ptr, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 4 uses
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
  %.not134 = icmp slt i32 %i.s, %2
  br i1 %.not134, label %bb.g, label %.critedge

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
  store i32 61, ptr %i.w, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.af = sext i32 %i.r to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.af
  %i.ah = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ae, i32 noundef %5, i32 noundef %6) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.275.peel = phi ptr [ %i.w, %bb.g ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %.not.peel = icmp eq ptr %i.aj, null
  br i1 %.not.peel, label %.split97.us.thread129, label %.split

.split.us.preheader:                              ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.ak = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34 ; 2 uses
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
  %i.ba = load i32, ptr %4, align 4, !tbaa !3
  %i.bb = add nsw i32 %i.az, %i.ba                ; 2 uses
  store i32 %i.bb, ptr %4, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %.not.us.peel = icmp eq ptr %i.bd, null
  br i1 %.not.us.peel, label %.critedge, label %.split.us

.split.us:                                        ; preds = %bb.o, %bb.t
  %i.be = phi i32 [ %i.bw, %bb.t ], [ %i.bb, %bb.o ]
  %.06395.us = phi ptr [ %i.by, %bb.t ], [ %i.bd, %bb.o ] ; 3 uses
  %i.bf = load ptr, ptr %.06395.us, align 8, !tbaa !30 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.06395.us, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34 ; 2 uses
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
  %.not90.us = icmp slt i32 %i.bp, %i.d
  %or.cond.us = select i1 %.not89.us, i1 %.not90.us, i1 false
  br i1 %or.cond.us, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bq = mul nsw i32 %i.bl, %i.c
  %i.br = mul nsw i32 %i.bp, %i.c
  %i.bs = add nsw i32 %i.bq, 1
  %i.bt = add nsw i32 %i.br, 1
  %i.bu = select i1 %i.bm, i32 0, i32 %i.bt
  %i.bv = add nsw i32 %i.bs, %i.bu
  %i.bw = add nsw i32 %i.bv, %i.be                ; 2 uses
  store i32 %i.bw, ptr %4, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.06395.us, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not.us = icmp eq ptr %i.by, null
  br i1 %.not.us, label %.split97.us, label %.split.us, !llvm.loop !36

.split:                                           ; preds = %bb.j, %bb.ac
  %.06395 = phi ptr [ %i.dj, %bb.ac ], [ %i.aj, %bb.j ] ; 3 uses
  %.07393 = phi ptr [ %.275, %bb.ac ], [ %.275.peel, %bb.j ] ; 3 uses
  %i.bz = load ptr, ptr %.06395, align 8, !tbaa !30 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06395, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 4 uses
  %i.cc = icmp eq ptr %i.bz, null
  br i1 %i.cc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split
  %i.cd = tail call i64 @wcslen(ptr noundef nonnull %i.bz) #4
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.v

bb.v:                                             ; preds = %.split, %bb.u
  %i.cf = phi i32 [ %i.ce, %bb.u ], [ 0, %.split ] ; 3 uses
  %i.cg = icmp eq ptr %i.cb, null                 ; 2 uses
  br i1 %i.cg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = tail call i64 @wcslen(ptr noundef nonnull %i.cb) #4
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cj = phi i32 [ %i.ci, %bb.w ], [ 0, %bb.v ]  ; 3 uses
  %.not89 = icmp slt i32 %i.cf, %i.d
  %.not90 = icmp slt i32 %i.cj, %i.d
  %or.cond = select i1 %.not89, i1 %.not90, i1 false
  br i1 %or.cond, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.ck = mul nsw i32 %i.cf, %i.c
  %i.cl = mul nsw i32 %i.cj, %i.c
  %i.cm = ptrtoint ptr %.07393 to i64
  %i.cn = sub i64 %i.cm, %i.e
  %i.co = ashr exact i64 %i.cn, 2
  %i.cp = add nsw i64 %i.co, 1
  %i.cq = sext i32 %i.ck to i64
  %i.cr = add nsw i64 %i.cp, %i.cq
  %i.cs = icmp sgt i64 %i.cr, %i.g
  br i1 %i.cs, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 38, ptr %.07393, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.07393, i64 4
  %i.cu = sext i32 %i.cf to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cu
  %i.cw = tail call ptr @uriEscapeExW(ptr noundef %i.bz, ptr noundef %i.cv, ptr noundef nonnull %i.ct, i32 noundef %5, i32 noundef %6) #5 ; 4 uses
  br i1 %i.cg, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.e
  %i.cz = ashr exact i64 %i.cy, 2
  %i.da = sext i32 %i.cl to i64
  %i.db = add nsw i64 %i.da, 1
  %i.dc = add nsw i64 %i.db, %i.cz
  %i.dd = icmp sgt i64 %i.dc, %i.g
  br i1 %i.dd, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 61, ptr %i.cw, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.df = sext i32 %i.cj to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.df
  %i.dh = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, i32 noundef %5, i32 noundef %6) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.275 = phi ptr [ %i.cw, %bb.z ], [ %i.dh, %bb.ab ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.06395, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %.split97.us, label %.split, !llvm.loop !37

.split97.us:                                      ; preds = %bb.ac, %bb.t
  %.us-phi = phi ptr [ null, %bb.t ], [ %.275, %bb.ac ]
  br i1 %i.a, label %.critedge, label %.split97.us.thread129
end_hunk_1
