Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_string_concat_subst:bb.a
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge166, %.preheader, %bb.i
  %i.bc = phi ptr [ %i.bb, %bb.i ], [ %i.w, %.preheader ], [ %i.ay, %.critedge166 ] ; 2 uses
  %i.bd = load i64, ptr %3, align 8, !tbaa !46
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !46
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -16 ; 2 uses
  store ptr %i.bf, ptr %i.j, align 8, !tbaa !42
  store i64 11, ptr %i.bf, align 8, !tbaa !46
  %i.bg = add nuw nsw i32 %7, 2
  %i.bh = call i64 @JS_Call(ptr noundef nonnull %0, i32 noundef %i.bg) #28 ; 2 uses
  %.not180 = icmp eq i64 %i.bh, 15
  br i1 %.not180, label %JS_StackCheck.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.bi = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.bh) #28 ; 0 uses
  br label %JS_StackCheck.exit

JS_StackCheck.exit:                               ; preds = %bb.g, %JS_StackCheck.exit172, %bb.c, %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ad

JS_IsFunction.exit.thread:                        ; preds = %.split, %bb.b
  %i.bj = call fastcc ptr @get_string_ptr(ptr noundef %9, i64 noundef %i.a) #28
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = lshr i64 %i.bk, 7                       ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 5 uses
  %.not157 = icmp eq ptr %6, null
  %sext = shl i64 %i.bl, 32
  %i.bn = ashr exact i64 %sext, 32
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %JS_IsFunction.exit.thread
  %.0136 = phi i32 [ 0, %JS_IsFunction.exit.thread ], [ %.0136.be, %.backedge ] ; 5 uses
  %i.bo = load i64, ptr %3, align 8, !tbaa !46
  %i.bp = call fastcc ptr @get_string_ptr(ptr noundef %9, i64 noundef %i.bo) #28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = icmp slt i32 %.0136, %i.bm
  br i1 %i.br, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bs = sext i32 %.0136 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.bs, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !51
  %.not153 = icmp eq i8 %i.bu, 36
  br i1 %.not153, label %.critedge.loopexit.split.loop.exit207, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bn
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !357

.critedge.loopexit.split.loop.exit207:            ; preds = %.lr.ph
  %i.bv = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit207, %bb.k
  %.0134.lcssa = phi i32 [ %.0136, %bb.k ], [ %i.bv, %.critedge.loopexit.split.loop.exit207 ], [ %i.bm, %bb.l ] ; 4 uses
  %i.bw = add nsw i32 %.0134.lcssa, 1             ; 2 uses
  %.not154 = icmp slt i32 %i.bw, %i.bm
  br i1 %.not154, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %.critedge
  %i.bx = add nsw i32 %.0134.lcssa, 2             ; 10 uses
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bq, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51  ; 3 uses
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = load i64, ptr %3, align 8, !tbaa !46
  %i.cd = shl nsw i32 %.0136, 1
  %i.ce = shl nsw i32 %.0134.lcssa, 1             ; 2 uses
  %i.cf = call fastcc i32 @string_buffer_concat_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce) #28 ; 0 uses
  switch i8 %i.ca, label %bb.t [
    i8 36, label %bb.n
    i8 38, label %bb.o
    i8 96, label %bb.r
    i8 39, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.cg = call fastcc range(i32 -1, 1) i32 @string_buffer_concat_str(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 1179) #28 ; 0 uses
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  br i1 %.not157, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load i64, ptr %2, align 8, !tbaa !46
  call fastcc void @string_buffer_concat_utf16(ptr noundef %0, ptr noundef %1, i64 noundef %i.ch, i32 noundef %4, i32 noundef %5) #28
  br label %.backedge

bb.q:                                             ; preds = %bb.o
  %i.ci = load i64, ptr %8, align 8, !tbaa !46
  %i.cj = call fastcc i32 @string_buffer_concat_str(ptr noundef %0, ptr noundef %1, i64 noundef %i.ci) #28 ; 0 uses
  br label %.backedge

bb.r:                                             ; preds = %bb.m
  %i.ck = load i64, ptr %2, align 8, !tbaa !46
  call fastcc void @string_buffer_concat_utf16(ptr noundef %0, ptr noundef %1, i64 noundef %i.ck, i32 noundef 0, i32 noundef %4) #28
  br label %.backedge

bb.s:                                             ; preds = %bb.m
  %i.cl = load i64, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.cm = call fastcc i32 @js_string_len(ptr noundef %0, i64 noundef %i.cl) #28
  call fastcc void @string_buffer_concat_utf16(ptr noundef %0, ptr noundef %1, i64 noundef %i.cl, i32 noundef %5, i32 noundef %i.cm) #28
  br label %.backedge

bb.t:                                             ; preds = %bb.m
  %i.cn = add i8 %i.ca, -48
  %or.cond = icmp ult i8 %i.cn, 10
  br i1 %or.cond, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.co = add nsw i32 %i.cb, -48                  ; 3 uses
  %i.cp = icmp slt i32 %i.bx, %i.bm
  br i1 %i.cp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cq = sext i32 %i.bx to i64
  %i.cr = getelementptr inbounds i8, ptr %i.bq, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !51  ; 2 uses
  %i.ct = add i8 %i.cs, -48
  %or.cond3 = icmp ult i8 %i.ct, 10
  br i1 %or.cond3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = zext nneg i8 %i.cs to i32
  %i.cv = mul nuw nsw i32 %i.co, 10
  %i.cw = add nsw i32 %i.cv, -48
  %i.cx = add nsw i32 %i.cw, %i.cu
  %i.cy = add nsw i32 %.0134.lcssa, 3
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.1135 = phi i32 [ %i.cy, %bb.w ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ] ; 4 uses
  %.1 = phi i32 [ %i.cx, %bb.w ], [ %i.co, %bb.v ], [ %i.co, %bb.u ] ; 3 uses
  %i.cz = icmp ne i32 %.1, 0
  %i.da = icmp ult i32 %.1, %7
  %or.cond167 = and i1 %i.cz, %i.da
  br i1 %or.cond167, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.db = load i64, ptr %6, align 8, !tbaa !46
  %i.dc = add i64 %i.db, -1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = shl nuw nsw i32 %.1, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !45 ; 2 uses
  %.not155 = icmp eq i32 %i.di, -1
  br i1 %.not155, label %.backedge, label %bb.z

.backedge:                                        ; preds = %bb.y, %bb.z, %bb.aa, %bb.q, %bb.p, %bb.s, %bb.ab, %bb.r, %bb.n
  %.0136.be = phi i32 [ %i.bx, %bb.n ], [ %i.bx, %bb.p ], [ %i.bx, %bb.q ], [ %i.bx, %bb.r ], [ %i.bx, %bb.s ], [ %.2, %bb.ab ], [ %.1135, %bb.aa ], [ %.1135, %bb.z ], [ %.1135, %bb.y ]
  br label %bb.k

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !45 ; 2 uses
  %.not156 = icmp eq i32 %i.dk, -1
  br i1 %.not156, label %.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = load i64, ptr %2, align 8, !tbaa !46
  %i.dm = shl i32 %i.di, 1
  %i.dn = shl i32 %i.dk, 1
  %i.do = call fastcc i32 @string_buffer_concat_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dn) #28 ; 0 uses
  br label %.backedge

bb.ab:                                            ; preds = %bb.t, %bb.x
  %.2 = phi i32 [ %i.bx, %bb.t ], [ %.1135, %bb.x ] ; 2 uses
  %i.dp = load i64, ptr %3, align 8, !tbaa !46
  %i.dq = shl nsw i32 %.2, 1
  %i.dr = call fastcc i32 @string_buffer_concat_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %i.dp, i32 noundef %i.ce, i32 noundef %i.dq) #28 ; 0 uses
  br label %.backedge

bb.ac:                                            ; preds = %.critedge
  %i.ds = load i64, ptr %3, align 8, !tbaa !46
  %i.dt = shl nsw i32 %.0136, 1
  %i.du = shl nsw i32 %i.bm, 1
  %i.dv = call fastcc i32 @string_buffer_concat_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du) #28 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %JS_StackCheck.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_string_indexof(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = sub nsw i32 %4, %5
  %.not23 = icmp sgt i32 %3, %i.a
  br i1 %.not23, label %.loopexit, label %.preheader.lr.ph.a

.preheader.lr.ph.a:                               ; preds = %bb.a
  %6 = icmp sgt i32 %5, 0
  %i.b = add i32 %4, 1
  %i.c = sub i32 %i.b, %5
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.a, %bb.c
  %.01624 = phi i32 [ %3, %.preheader.lr.ph.a ], [ %i.h, %bb.c ] ; 3 uses
  br i1 %6, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !358

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.021 = phi i32 [ %i.d, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.e = add nsw i32 %.021, %.01624
  %i.f = tail call fastcc i32 @string_getcp(ptr noundef %0, i64 noundef %1, i32 noundef %i.e, i32 noundef 0) #28
  %i.g = tail call fastcc i32 @string_getcp(ptr noundef %0, i64 noundef %2, i32 noundef %.021, i32 noundef 0) #28
  %.not18 = icmp eq i32 %i.f, %i.g
  br i1 %.not18, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add i32 %.01624, 1                       ; 2 uses
  %exitcond27.not = icmp eq i32 %i.h, %i.c
  br i1 %exitcond27.not, label %.loopexit, label %.preheader, !llvm.loop !359

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  %.017 = phi i32 [ -1, %bb.a ], [ %.01624, %bb.b ], [ -1, %bb.c ], [ %3, %.preheader ]
  ret i32 %.017
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_split(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.JSGCRef, align 8            ; 11 uses
  %5 = alloca %struct.JSGCRef, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = load i64, ptr %1, align 8, !tbaa !46
  %i.c = tail call i64 @JS_ToString(ptr noundef %0, i64 noundef %i.b) #28 ; 2 uses
  store i64 %i.c, ptr %1, align 8, !tbaa !46
  %.not = icmp eq i64 %i.c, 15
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %.not224 = icmp eq i64 %i.e, 11
  br i1 %.not224, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.a, align 4, !tbaa !45
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.e, i32 noundef 0) #28, !inline_history !103
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load i64, ptr %3, align 8, !tbaa !46     ; 4 uses
  %i.i = and i64 %i.h, 7
  %.not.i = icmp eq i64 %i.i, 1
  br i1 %.not.i, label %bb.f, label %JS_GetClassID.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 4094
  %or.cond = icmp eq i64 %i.m, 130
  br i1 %or.cond, label %bb.g, label %JS_GetClassID.exit.thread

JS_GetClassID.exit.thread:                        ; preds = %bb.e, %bb.f
  %i.n = icmp ne i64 %i.h, 11
  %i.o = tail call i64 @JS_ToString(ptr noundef %0, i64 noundef %i.h) #28 ; 2 uses
  store i64 %i.o, ptr %3, align 8, !tbaa !46
  %.not225 = icmp eq i64 %i.o, 15
  br i1 %.not225, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f, %JS_GetClassID.exit.thread
  %i.p = phi i1 [ false, %JS_GetClassID.exit.thread ], [ true, %bb.f ]
  %.0145 = phi i1 [ %i.n, %JS_GetClassID.exit.thread ], [ true, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !39
  store i64 11, ptr %4, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.t, align 8, !tbaa !39
  store ptr %5, ptr %i.q, align 8, !tbaa !36
  store i64 11, ptr %5, align 8, !tbaa !40
  %i.u = call i64 @JS_NewArray(ptr noundef %0, i32 noundef 0) #28 ; 2 uses
  store i64 %i.u, ptr %4, align 8, !tbaa !46
  %.not226 = icmp eq i64 %i.u, 15
  br i1 %.not226, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %1, align 8, !tbaa !46
  %i.w = call fastcc i32 @js_string_len(ptr noundef nonnull %0, i64 noundef %i.v) #28 ; 8 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread207, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.0145, label %bb.j, label %.thread200

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %3, align 8, !tbaa !46     ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !51
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val193 = load i16, ptr %i.ag, align 1, !tbaa !89
  %i.ah = icmp eq i32 %i.w, 0
  br i1 %i.ah, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ai = icmp sgt i32 %i.w, 0
  br i1 %i.ai, label %.lr.ph271, label %.thread200

.lr.ph271:                                        ; preds = %.preheader
  %i.aj = and i16 %.val193, 32
  %.not186 = icmp eq i16 %i.aj, 0                 ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 96
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !51
  %i.am = call i64 @js_regexp_exec(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 poison, ptr noundef nonnull %1, i32 noundef 3) #28 ; 2 uses
  store i64 %i.am, ptr %5, align 8, !tbaa !46
  switch i64 %i.am, label %.thread207 [
    i64 15, label %.thread
    i64 7, label %.thread200
  ]

bb.m:                                             ; preds = %.lr.ph271, %.loopexit
  %.0147270 = phi i32 [ 0, %.lr.ph271 ], [ %.3, %.loopexit ] ; 4 uses
  %.0150269 = phi i32 [ 0, %.lr.ph271 ], [ %.1151, %.loopexit ] ; 5 uses
  %.0155268 = phi i32 [ 0, %.lr.ph271 ], [ %.2157, %.loopexit ] ; 5 uses
  %i.an = load i64, ptr %3, align 8, !tbaa !46
  %i.ao = add i64 %i.an, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 %.0147270, ptr %i.aq, align 8, !tbaa !51
  %i.ar = call i64 @js_regexp_exec(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 poison, ptr noundef nonnull %1, i32 noundef 3) #28 ; 3 uses
  store i64 %i.ar, ptr %5, align 8, !tbaa !46
  switch i64 %i.ar, label %bb.p [
    i64 15, label %.thread
    i64 7, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br i1 %.not186, label %.thread200, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr %1, align 8, !tbaa !46
  %i.at = call fastcc i32 @string_getcp(ptr noundef nonnull %0, i64 noundef %i.as, i32 noundef %.0147270, i32 noundef 1) #28
  %i.au = icmp sgt i32 %i.at, 65535
  %i.av = select i1 %i.au, i32 2, i32 1
  %i.aw = add nsw i32 %i.av, %.0147270
  br label %.loopexit

bb.p:                                             ; preds = %bb.m
  br i1 %.not186, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 1256
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = add i64 %i.ay, 1
  %i.ba = call fastcc i64 @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 noundef %i.ar, i64 noundef %i.az, i32 noundef 0) #28, !inline_history !5 ; 2 uses
  %.not231 = icmp eq i64 %i.ba, 15
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = ashr i32 %i.bb, 1
  br i1 %.not231, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2149 = phi i32 [ %.0147270, %bb.p ], [ %i.bc, %bb.q ] ; 3 uses
  %i.bd = load i64, ptr %3, align 8, !tbaa !46
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !51
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.w) ; 5 uses
  %i.bi = icmp eq i32 %spec.select, %.0150269
  %i.bj = load i64, ptr %1, align 8, !tbaa !46    ; 2 uses
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = call fastcc i32 @string_getcp(ptr noundef nonnull %0, i64 noundef %i.bj, i32 noundef %.2149, i32 noundef 1) #28
  %i.bl = icmp sgt i32 %i.bk, 65535
  %i.bm = select i1 %i.bl, i32 2, i32 1
  %i.bn = add nsw i32 %i.bm, %.2149
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.bo = call fastcc i64 @js_sub_string(ptr noundef nonnull %0, i64 noundef %i.bj, i32 noundef %.0150269, i32 noundef %.2149) #28 ; 2 uses
  %.not232 = icmp eq i64 %i.bo, 15
  br i1 %.not232, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load i64, ptr %4, align 8, !tbaa !46
  %i.bq = add i32 %.0155268, 1                    ; 3 uses
  %i.br = call i64 @JS_SetPropertyUint32(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef %.0155268, i64 noundef %i.bo) #28
  %.not233 = icmp eq i64 %i.br, 15
  br i1 %.not233, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp eq i32 %i.bq, %i.x
  br i1 %i.bs, label %.thread207, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = load i64, ptr %5, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 1
end_hunk_0
