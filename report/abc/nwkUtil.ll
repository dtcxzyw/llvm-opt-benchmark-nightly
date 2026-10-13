Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/nwkUtil?download=true
inline.NumInlined: 137
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Nwk_ObjPrint:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.b) ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val.i, 7
  %.not.i = icmp eq i32 %i.e, 1
  br i1 %.not.i, label %bb.b, label %Nwk_ObjIsPi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %Nwk_ObjIsPi.exit.thread27, label %Nwk_ObjIsPi.exit

Nwk_ObjIsPi.exit:                                 ; preds = %bb.b
  %i.j = lshr i32 %.val.i, 7
  %i.k = tail call i32 @Tim_ManBoxForCi(ptr noundef nonnull %i.h, i32 noundef %i.j) #18
  %.not = icmp eq i32 %i.k, -1
  br i1 %.not, label %Nwk_ObjIsPi.exit.thread27, label %Nwk_ObjIsPi.exit.thread

Nwk_ObjIsPi.exit.thread27:                        ; preds = %bb.b, %Nwk_ObjIsPi.exit
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %Nwk_ObjIsPi.exit.thread

Nwk_ObjIsPi.exit.thread:                          ; preds = %bb.a, %Nwk_ObjIsPi.exit.thread27, %Nwk_ObjIsPi.exit
  %.val.i24 = load i32, ptr %i.d, align 8         ; 2 uses
  %i.m = and i32 %.val.i24, 7
  %.not.i25 = icmp eq i32 %i.m, 2
  br i1 %.not.i25, label %bb.c, label %Nwk_ObjIsPo.exit.thread

bb.c:                                             ; preds = %Nwk_ObjIsPi.exit.thread
  %i.n = load ptr, ptr %0, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Nwk_ObjIsPo.exit.thread30, label %Nwk_ObjIsPo.exit

Nwk_ObjIsPo.exit:                                 ; preds = %bb.c
  %i.r = lshr i32 %.val.i24, 7
  %i.s = tail call i32 @Tim_ManBoxForCo(ptr noundef nonnull %i.p, i32 noundef %i.r) #18
  %.not32 = icmp eq i32 %i.s, -1
  br i1 %.not32, label %Nwk_ObjIsPo.exit.thread30, label %Nwk_ObjIsPo.exit.thread

Nwk_ObjIsPo.exit.thread30:                        ; preds = %bb.c, %Nwk_ObjIsPo.exit
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) ; 0 uses
  br label %Nwk_ObjIsPo.exit.thread

Nwk_ObjIsPo.exit.thread:                          ; preds = %Nwk_ObjIsPi.exit.thread, %Nwk_ObjIsPo.exit.thread30, %Nwk_ObjIsPo.exit
  %.val = load i32, ptr %i.d, align 8
  %i.u = and i32 %.val, 7
  %.not33 = icmp eq i32 %i.u, 3
  br i1 %.not33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Nwk_ObjIsPo.exit.thread
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Nwk_ObjIsPo.exit.thread
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %.not22 = icmp eq ptr %i.ad, null
  br i1 %.not22, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.af) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !31
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.critedge, !llvm.loop !59

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !42
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph37, label %.critedge2

.lr.ph37:                                         ; preds = %.critedge, %bb.g
  %.136 = phi i32 [ %i.ax, %bb.g ], [ 0, %.critedge ] ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ap = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aq = add nsw i32 %i.ap, %.136
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not23 = icmp eq ptr %i.at, null
  br i1 %.not23, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph37
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !37
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.av) ; 0 uses
  %i.ax = add nuw nsw i32 %.136, 1                ; 2 uses
  %i.ay = load i32, ptr %i.al, align 8, !tbaa !42
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph37, label %.critedge2, !llvm.loop !60

.critedge2:                                       ; preds = %.lr.ph37, %bb.g, %.critedge
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Nwk_ManDumpBlif(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val9.i = load i32, ptr %i.c, align 4, !tbaa !22
  %i.d = icmp sgt i32 %.val9.i, 0
  br i1 %i.d, label %.lr.ph.i, label %Nwk_ManPoNum.exit.thread

.lr.ph.i:                                         ; preds = %bb.a, %Nwk_ObjIsPo.exit.i
  %i.e = phi ptr [ %i.s, %Nwk_ObjIsPo.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Nwk_ObjIsPo.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.011.i = phi i32 [ %i.u, %Nwk_ObjIsPo.exit.i ], [ 0, %bb.a ]
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val8.i = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %.val.i.i = load i32, ptr %i.i, align 8         ; 2 uses
  %i.j = and i32 %.val.i.i, 7
  %.not.i.i = icmp eq i32 %i.j, 2
  br i1 %.not.i.i, label %bb.b, label %Nwk_ObjIsPo.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %Nwk_ObjIsPo.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i32 %.val.i.i, 7
  %i.p = tail call i32 @Tim_ManBoxForCo(ptr noundef nonnull %i.m, i32 noundef %i.o) #18
  %i.q = icmp eq i32 %i.p, -1
  %i.r = zext i1 %i.q to i32
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %Nwk_ObjIsPo.exit.i

Nwk_ObjIsPo.exit.i:                               ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.s = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.t = phi i32 [ 0, %.lr.ph.i ], [ 1, %bb.b ], [ %i.r, %bb.c ]
  %i.u = add nuw nsw i32 %i.t, %.011.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 4
  %.val.i = load i32, ptr %i.v, align 4, !tbaa !22
  %i.w = sext i32 %.val.i to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %Nwk_ManPoNum.exit, !llvm.loop !0

Nwk_ManPoNum.exit:                                ; preds = %Nwk_ObjIsPo.exit.i
  %i.y = icmp eq i32 %i.u, 0
  br i1 %i.y, label %Nwk_ManPoNum.exit.thread, label %bb.d

Nwk_ManPoNum.exit.thread:                         ; preds = %bb.a, %Nwk_ManPoNum.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %Nwk_ManPoNum.exit
  %i.z = getelementptr i8, ptr %0, i64 32
  %.val157 = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr i8, ptr %.val157, i64 4
  %.val157.val = load i32, ptr %i.aa, align 4, !tbaa !22 ; 3 uses
  %i.ab = icmp ult i32 %.val157.val, 2
  br i1 %i.ab, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ac = add i32 %.val157.val, -1
  br label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.ae, %.lr.ph.i164 ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.ad, %.lr.ph.i164 ], [ %i.ac, %.lr.ph.preheader.i ] ; 2 uses
  %i.ad = udiv i32 %.0812.i, 10
  %i.ae = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i164, !llvm.loop !1

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i164, %bb.d
  %.09.i = phi i32 [ %.val157.val, %bb.d ], [ %i.ae, %.lr.ph.i164 ] ; 6 uses
  %i.af = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.10) ; 23 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 51, i64 1, ptr %i.af) ; 0 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !70
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.12, ptr noundef %i.ag) #18 ; 0 uses
  %fwrite119 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 7, i64 1, ptr %i.af) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val141202 = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.al = icmp sgt i32 %.val141202, 0
  br i1 %i.al, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Base10Log.exit
  %.not138 = icmp eq ptr %2, null
  %i.am = getelementptr i8, ptr %2, i64 8
  br i1 %.not138, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.an = phi ptr [ %i.au, %.lr.ph.split.us ], [ %i.aj, %.lr.ph ]
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val150.us = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val150.us, i64 %indvars.iv221
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.15, i32 noundef %.09.i, i32 noundef %i.as) #18 ; 0 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val141.us = load i32, ptr %i.av, align 4, !tbaa !22
  %i.aw = sext i32 %.val141.us to i64
  %i.ax = icmp slt i64 %indvars.iv.next222, %i.aw
  br i1 %i.ax, label %.lr.ph.split.us, label %.critedge, !llvm.loop !61

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.val149 = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val149, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.14, ptr noundef %i.az) #18 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.val141 = load i32, ptr %i.bc, align 4, !tbaa !22
  %i.bd = sext i32 %.val141 to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %.lr.ph.split, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %Abc_Base10Log.exit
  %fputc = tail call i32 @fputc(i32 10, ptr %i.af) ; 0 uses
  %fwrite121 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 8, i64 1, ptr %i.af) ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %.val140204 = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bh = icmp sgt i32 %.val140204, 0
  br i1 %i.bh, label %.lr.ph206, label %.critedge2

.lr.ph206:                                        ; preds = %.critedge
  %.not137 = icmp eq ptr %3, null
  %i.bi = getelementptr i8, ptr %3, i64 8
  br i1 %.not137, label %.lr.ph206.split.us, label %.lr.ph206.split

.lr.ph206.split.us:                               ; preds = %.lr.ph206, %.lr.ph206.split.us
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %.lr.ph206.split.us ], [ 0, %.lr.ph206 ] ; 2 uses
  %i.bj = phi ptr [ %i.bq, %.lr.ph206.split.us ], [ %i.bf, %.lr.ph206 ]
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val148.us = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val148.us, i64 %indvars.iv227
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !37
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.15, i32 noundef %.09.i, i32 noundef %i.bo) #18 ; 0 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %.val140.us = load i32, ptr %i.br, align 4, !tbaa !22
  %i.bs = sext i32 %.val140.us to i64
  %i.bt = icmp slt i64 %indvars.iv.next228, %i.bs
  br i1 %i.bt, label %.lr.ph206.split.us, label %.critedge2, !llvm.loop !62

.lr.ph206.split:                                  ; preds = %.lr.ph206, %.lr.ph206.split
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %.lr.ph206.split ], [ 0, %.lr.ph206 ] ; 2 uses
  %.val147 = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val147, i64 %indvars.iv224
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.14, ptr noundef %i.bv) #18 ; 0 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %.val140 = load i32, ptr %i.by, align 4, !tbaa !22
  %i.bz = sext i32 %.val140 to i64
  %i.ca = icmp slt i64 %indvars.iv.next225, %i.bz
  br i1 %i.ca, label %.lr.ph206.split, label %.critedge2, !llvm.loop !62

.critedge2:                                       ; preds = %.lr.ph206.split, %.lr.ph206.split.us, %.critedge
  %fputc123 = tail call i32 @fputc(i32 10, ptr %i.af) ; 0 uses
  %i.cb = tail call ptr (...) @Aig_MmFlexStart() #18 ; 2 uses
  %i.cc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !45
  store i32 65536, ptr %i.cc, align 8, !tbaa !46
  %i.ce = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !47
  %i.cg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !45
  store i32 65536, ptr %i.cg, align 8, !tbaa !46
  %i.ci = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !47
  %i.ck = tail call ptr @Nwk_ManDfs(ptr noundef nonnull %0) #18 ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 2 uses
  %.val139209 = load i32, ptr %i.cl, align 4, !tbaa !22 ; 2 uses
  %i.cm = icmp sgt i32 %.val139209, 0
  br i1 %i.cm, label %.lr.ph211, label %.critedge4

.lr.ph211:                                        ; preds = %.critedge2
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not135 = icmp eq ptr %2, null
  %i.cp = getelementptr i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph211, %bb.k
  %.val139242 = phi i32 [ %.val139209, %.lr.ph211 ], [ %.val139, %bb.k ]
  %indvars.iv233 = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next234, %bb.k ] ; 2 uses
  %.val146 = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val146, i64 %indvars.iv233
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !24 ; 5 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 32
  %.val151 = load i32, ptr %i.cs, align 8
  %i.ct = and i32 %.val151, 7
  %.not197 = icmp eq i32 %i.ct, 3
  br i1 %.not197, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = and i64 %i.cx, -2
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr i8, ptr %i.cr, i64 60     ; 5 uses
  %.val156 = load i32, ptr %i.da, align 4, !tbaa !31
  %i.db = tail call ptr @Hop_ManConvertAigToTruth(ptr noundef %i.cu, ptr noundef %i.cz, i32 noundef %.val156, ptr noundef nonnull %i.cc, i32 noundef 0) #18 ; 5 uses
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 1
  %.not130 = icmp eq i64 %i.de, 0
  %.val154.pre239 = load i32, ptr %i.da, align 4, !tbaa !31 ; 4 uses
  br i1 %.not130, label %Kit_TruthNot.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = icmp slt i32 %.val154.pre239, 6
  %i.dg = add nsw i32 %.val154.pre239, -5
  %i.dh = shl nuw i32 1, %i.dg
  %spec.select.i = select i1 %i.df, i32 1, i32 %i.dh ; 3 uses
  %i.di = icmp sgt i32 %spec.select.i, 0
  br i1 %i.di, label %select.unfold.preheader.i, label %Kit_TruthNot.exit

select.unfold.preheader.i:                        ; preds = %bb.g
  %i.dj = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  br i1 %min.iters.check, label %select.unfold.i.a, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.dj, 2147483640
  %invariant.gep = getelementptr [4 x i8], ptr %i.db, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dk ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %gep, i64 -12 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %gep, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dl, align 4, !tbaa !49
  %wide.load267 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !49
  %i.dn = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.do = xor <4 x i32> %wide.load267, splat (i32 -1)
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !tbaa !49
  store <4 x i32> %i.do, ptr %i.dm, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %Kit_TruthNot.exit.loopexit, label %vector.body, !llvm.loop !63

select.unfold.i.a:                                ; preds = %select.unfold.preheader.i, %select.unfold.i.a
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166, %select.unfold.i.a ], [ %i.dj, %select.unfold.preheader.i ] ; 2 uses
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i166 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !49
  %i.ds = xor i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !49
  %i.dt = icmp samesign ugt i64 %indvars.iv.i165, 1
  br i1 %i.dt, label %select.unfold.i.a, label %Kit_TruthNot.exit.loopexit, !llvm.loop !64

Kit_TruthNot.exit.loopexit:                       ; preds = %vector.body, %select.unfold.i.a
  %.val154.pre = load i32, ptr %i.da, align 4, !tbaa !31
  br label %Kit_TruthNot.exit

Kit_TruthNot.exit:                                ; preds = %Kit_TruthNot.exit.loopexit, %bb.g, %bb.f
  %.val154 = phi i32 [ %.val154.pre, %Kit_TruthNot.exit.loopexit ], [ %.val154.pre239, %bb.g ], [ %.val154.pre239, %bb.f ]
  %i.du = tail call ptr @Kit_PlaFromTruth(ptr noundef %i.cb, ptr noundef %i.db, i32 noundef %.val154, ptr noundef nonnull %i.cg) #18
  %fwrite131 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr %i.af) ; 0 uses
  %.val153 = load i32, ptr %i.da, align 4, !tbaa !31 ; 3 uses
  %i.dv = icmp slt i32 %.val153, 6
  %i.dw = add nsw i32 %.val153, -5
  %i.dx = shl nuw i32 1, %i.dw
  %spec.select.i167 = select i1 %i.dv, i32 1, i32 %i.dx ; 2 uses
  %i.dy = zext i32 %spec.select.i167 to i64       ; 2 uses
  %i.dz = icmp sgt i32 %spec.select.i167, 0
  br i1 %i.dz, label %.lr.ph264, label %.critedge6

select.unfold.i168:                               ; preds = %.lr.ph264
  %i.ea = trunc nuw i64 %i.ec to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph264, label %.critedge6, !llvm.loop !65

.lr.ph264:                                        ; preds = %Kit_TruthNot.exit, %select.unfold.i168
  %indvars.iv.i169263 = phi i64 [ %i.ec, %select.unfold.i168 ], [ %i.dy, %Kit_TruthNot.exit ]
  %i.ec = add nsw i64 %indvars.iv.i169263, -1     ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !49
  %.not.i170 = icmp eq i32 %i.ee, 0
  br i1 %.not.i170, label %select.unfold.i168, label %.lr.ph266, !llvm.loop !65

select.unfold.i172:                               ; preds = %.lr.ph266
  %i.ef = trunc nuw i64 %i.eh to i32
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph266, label %.critedge6, !llvm.loop !66

.lr.ph266:                                        ; preds = %.lr.ph264, %select.unfold.i172
  %indvars.iv.i173265 = phi i64 [ %i.eh, %select.unfold.i172 ], [ %i.dy, %.lr.ph264 ]
  %i.eh = add nsw i64 %indvars.iv.i173265, -1     ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !49
  %.not.i175 = icmp eq i32 %i.ej, -1
  br i1 %.not.i175, label %select.unfold.i172, label %Kit_TruthIsConst1.exit.preheader, !llvm.loop !66

Kit_TruthIsConst1.exit.preheader:                 ; preds = %.lr.ph266
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.el = icmp sgt i32 %.val153, 0
  br i1 %i.el, label %.lr.ph208, label %.critedge6

.lr.ph208:                                        ; preds = %Kit_TruthIsConst1.exit.preheader, %Kit_TruthIsConst1.exit
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %Kit_TruthIsConst1.exit ], [ 0, %Kit_TruthIsConst1.exit.preheader ] ; 2 uses
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !41
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv230
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !39 ; 4 uses
  %.not134 = icmp eq ptr %i.eo, null
  br i1 %.not134, label %.critedge6, label %bb.h

bb.h:                                             ; preds = %.lr.ph208
  br i1 %.not135, label %Nwk_ObjIsPi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ep = getelementptr i8, ptr %i.eo, i64 32     ; 2 uses
  %.val.i176 = load i32, ptr %i.ep, align 8       ; 3 uses
  %i.eq = and i32 %.val.i176, 7
  %.not.i177 = icmp eq i32 %i.eq, 1
  br i1 %.not.i177, label %bb.j, label %Nwk_ObjIsPi.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !34 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %Nwk_ObjIsPi.exit.thread191, label %Nwk_ObjIsPi.exit

Nwk_ObjIsPi.exit:                                 ; preds = %bb.j
  %i.ev = lshr i32 %.val.i176, 7
  %i.ew = tail call i32 @Tim_ManBoxForCi(ptr noundef nonnull %i.et, i32 noundef %i.ev) #18
  %.not198 = icmp eq i32 %i.ew, -1
  br i1 %.not198, label %Nwk_ObjIsPi.exit.Nwk_ObjIsPi.exit.thread191_crit_edge, label %Nwk_ObjIsPi.exit.thread

Nwk_ObjIsPi.exit.Nwk_ObjIsPi.exit.thread191_crit_edge: ; preds = %Nwk_ObjIsPi.exit
  %.val160.pre = load i32, ptr %i.ep, align 8
  br label %Nwk_ObjIsPi.exit.thread191

Nwk_ObjIsPi.exit.thread191:                       ; preds = %Nwk_ObjIsPi.exit.Nwk_ObjIsPi.exit.thread191_crit_edge, %bb.j
  %.val160 = phi i32 [ %.val160.pre, %Nwk_ObjIsPi.exit.Nwk_ObjIsPi.exit.thread191_crit_edge ], [ %.val.i176, %bb.j ]
  %i.ex = lshr i32 %.val160, 7
  %.val145 = load ptr, ptr %i.cp, align 8, !tbaa !23
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val145, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !24
  %i.fb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.14, ptr noundef %i.fa) #18 ; 0 uses
  br label %Kit_TruthIsConst1.exit

Nwk_ObjIsPi.exit.thread:                          ; preds = %bb.i, %Nwk_ObjIsPi.exit, %bb.h
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !37
  %i.fe = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.15, i32 noundef %.09.i, i32 noundef %i.fd) #18 ; 0 uses
  br label %Kit_TruthIsConst1.exit

Kit_TruthIsConst1.exit:                           ; preds = %Nwk_ObjIsPi.exit.thread191, %Nwk_ObjIsPi.exit.thread
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.ff = load i32, ptr %i.da, align 4, !tbaa !31
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next231, %i.fg
  br i1 %i.fh, label %.lr.ph208, label %.critedge6, !llvm.loop !67

.critedge6:                                       ; preds = %select.unfold.i168, %select.unfold.i172, %Kit_TruthIsConst1.exit, %.lr.ph208, %Kit_TruthNot.exit, %Kit_TruthIsConst1.exit.preheader
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !37
  %i.fk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.18, i32 noundef %.09.i, i32 noundef %i.fj) #18 ; 0 uses
  %fputs = tail call i32 @fputs(ptr %i.du, ptr %i.af) ; 0 uses
  %.val139.pre = load i32, ptr %i.cl, align 4, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %.critedge6
  %.val139 = phi i32 [ %.val139242, %bb.e ], [ %.val139.pre, %.critedge6 ] ; 2 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.fl = sext i32 %.val139 to i64
  %i.fm = icmp slt i64 %indvars.iv.next234, %i.fl
  br i1 %i.fm, label %bb.e, label %.critedge4, !llvm.loop !68

.critedge4:                                       ; preds = %bb.k, %.critedge2
  %i.fn = load ptr, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %.not.i178 = icmp eq ptr %i.fn, null
  br i1 %.not.i178, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %i.fn) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.l
  tail call void @free(ptr noundef nonnull %i.cg) #18
  %i.fo = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %.not.i179 = icmp eq ptr %i.fo, null
  br i1 %.not.i179, label %Vec_IntFree.exit180, label %bb.m

bb.m:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.fo) #18
  br label %Vec_IntFree.exit180

Vec_IntFree.exit180:                              ; preds = %Vec_IntFree.exit, %bb.m
  tail call void @free(ptr noundef nonnull %i.cc) #18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !23 ; 2 uses
  %.not.i181 = icmp eq ptr %i.fq, null
  br i1 %.not.i181, label %Vec_PtrFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_IntFree.exit180
  tail call void @free(ptr noundef nonnull %i.fq) #18
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_IntFree.exit180, %bb.n
  tail call void @free(ptr noundef nonnull %i.ck) #18
  tail call void @Aig_MmFlexStop(ptr noundef %i.cb, i32 noundef 0) #18
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  %.val212 = load i32, ptr %i.fs, align 4, !tbaa !22
  %i.ft = icmp sgt i32 %.val212, 0
  br i1 %i.ft, label %.lr.ph214, label %.critedge8

.lr.ph214:                                        ; preds = %Vec_PtrFree.exit
  %.not = icmp eq ptr %2, null
  %i.fu = getelementptr i8, ptr %2, i64 8
  %.not127 = icmp eq ptr %3, null
  %i.fv = getelementptr i8, ptr %3, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph214, %bb.u
  %indvars.iv236 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next237, %bb.u ] ; 2 uses
  %i.fw = phi ptr [ %i.fr, %.lr.ph214 ], [ %i.hg, %bb.u ]
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %.val144 = load ptr, ptr %i.fx, align 8, !tbaa !23
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.val144, i64 %indvars.iv236
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !24 ; 5 uses
  %fwrite125 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr %i.af) ; 0 uses
  br i1 %.not, label %Nwk_ObjIsPi.exit184.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ga = getelementptr i8, ptr %i.fz, i64 72     ; 2 uses
  %.val163 = load ptr, ptr %i.ga, align 8, !tbaa !41
  %.val163.val = load ptr, ptr %.val163, align 8, !tbaa !39 ; 2 uses
  %i.gb = getelementptr i8, ptr %.val163.val, i64 32
  %.val.i182 = load i32, ptr %i.gb, align 8       ; 3 uses
  %i.gc = and i32 %.val.i182, 7
  %.not.i183 = icmp eq i32 %i.gc, 1
  br i1 %.not.i183, label %bb.q, label %Nwk_ObjIsPi.exit184.thread

bb.q:                                             ; preds = %bb.p
  %i.gd = load ptr, ptr %.val163.val, align 8, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !34 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %Nwk_ObjIsPi.exit184.thread194, label %Nwk_ObjIsPi.exit184

Nwk_ObjIsPi.exit184:                              ; preds = %bb.q
  %i.gh = lshr i32 %.val.i182, 7
  %i.gi = tail call i32 @Tim_ManBoxForCi(ptr noundef nonnull %i.gf, i32 noundef %i.gh) #18
  %.not196 = icmp eq i32 %i.gi, -1
  br i1 %.not196, label %Nwk_ObjIsPi.exit184.Nwk_ObjIsPi.exit184.thread194_crit_edge, label %Nwk_ObjIsPi.exit184.thread

Nwk_ObjIsPi.exit184.Nwk_ObjIsPi.exit184.thread194_crit_edge: ; preds = %Nwk_ObjIsPi.exit184
  %.val162.pre = load ptr, ptr %i.ga, align 8, !tbaa !41
  %.val162.val.pre = load ptr, ptr %.val162.pre, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr i8, ptr %.val162.val.pre, i64 32
  %.val159.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %Nwk_ObjIsPi.exit184.thread194

Nwk_ObjIsPi.exit184.thread194:                    ; preds = %Nwk_ObjIsPi.exit184.Nwk_ObjIsPi.exit184.thread194_crit_edge, %bb.q
  %.val159 = phi i32 [ %.val159.pre, %Nwk_ObjIsPi.exit184.Nwk_ObjIsPi.exit184.thread194_crit_edge ], [ %.val.i182, %bb.q ]
  %i.gj = lshr i32 %.val159, 7
  %.val143 = load ptr, ptr %i.fu, align 8, !tbaa !23
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.val143, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !24
  %i.gn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.14, ptr noundef %i.gm) #18 ; 0 uses
  br label %bb.r

Nwk_ObjIsPi.exit184.thread:                       ; preds = %bb.p, %Nwk_ObjIsPi.exit184, %bb.o
  %i.go = getelementptr i8, ptr %i.fz, i64 72
  %.val161 = load ptr, ptr %i.go, align 8, !tbaa !41
  %.val161.val = load ptr, ptr %.val161, align 8, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %.val161.val, i64 36
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !37
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.15, i32 noundef %.09.i, i32 noundef %i.gq) #18 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %Nwk_ObjIsPi.exit184.thread, %Nwk_ObjIsPi.exit184.thread194
  br i1 %.not127, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = getelementptr i8, ptr %i.fz, i64 32
  %.val158 = load i32, ptr %i.gs, align 8
  %i.gt = lshr i32 %.val158, 7
  %.val142 = load ptr, ptr %i.fv, align 8, !tbaa !23
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val142, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !24
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.20, ptr noundef %i.gw) #18 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fz, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !37
  %i.ha = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.18, i32 noundef %.09.i, i32 noundef %i.gz) #18 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = lshr i32 %i.hc, 3
  %.lobit = and i32 %i.hd, 1
  %i.he = xor i32 %.lobit, 1
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.21, i32 noundef %i.he) #18 ; 0 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  %.val = load i32, ptr %i.hh, align 4, !tbaa !22
  %i.hi = sext i32 %.val to i64
  %i.hj = icmp slt i64 %indvars.iv.next237, %i.hi
  br i1 %i.hj, label %bb.o, label %.critedge8, !llvm.loop !69

.critedge8:                                       ; preds = %bb.u, %Vec_PtrFree.exit
  %fwrite124 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 6, i64 1, ptr %i.af) ; 0 uses
  %i.hk = tail call i32 @fclose(ptr noundef %i.af) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.critedge8, %Nwk_ManPoNum.exit.thread
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @Aig_MmFlexStart(...) local_unnamed_addr #5

declare ptr @Nwk_ManDfs(ptr noundef) local_unnamed_addr #5

declare ptr @Hop_ManConvertAigToTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Kit_PlaFromTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @Aig_MmFlexStop(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Nwk_ManPrintFanioNew(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val121 = load i32, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.e = icmp sgt i32 %.val121, 0                 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %Abc_Base10Log.exit152

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val123 = load ptr, ptr %i.f, align 8, !tbaa !23
  %wide.trip.count = zext nneg i32 %.val121 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.g = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.r, %bb.e ] ; 3 uses
  %i.h = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.s, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val123, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 32
  %.val125 = load i32, ptr %i.l, align 8
  %i.m = and i32 %.val125, 7
  %.not174 = icmp eq i32 %i.m, 3
  br i1 %.not174, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 60
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !49 ; 2 uses
  %i.p = add nsw <2 x i32> %i.o, %i.g
  %i.q = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.h, <2 x i32> %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = phi <2 x i32> [ %i.g, %bb.b ], [ %i.p, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.s = phi <2 x i32> [ %i.h, %bb.b ], [ %i.q, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !73

.critedge:                                        ; preds = %bb.e
  %i.t = sitofp <2 x i32> %i.r to <2 x double>    ; 2 uses
  %i.u = extractelement <2 x i32> %i.s, i64 0     ; 5 uses
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.w = add nsw i32 %i.u, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %i.x = udiv i32 %.0812.i, 10
  %i.y = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !1

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %.critedge
  %.09.i = phi i32 [ %i.u, %.critedge ], [ %i.y, %.lr.ph.i ]
  %i.z = mul i32 %.09.i, 10
  %i.aa = add i32 %i.z, 10                        ; 2 uses
  %i.ab = extractelement <2 x i32> %i.s, i64 1    ; 5 uses
  %i.ac = icmp ult i32 %i.ab, 2
  br i1 %i.ac, label %Abc_Base10Log.exit152, label %.lr.ph.preheader.i146

.lr.ph.preheader.i146:                            ; preds = %Abc_Base10Log.exit
  %i.ad = add nsw i32 %i.ab, -1
  br label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147, %.lr.ph.preheader.i146
  %.013.i148 = phi i32 [ %i.af, %.lr.ph.i147 ], [ 0, %.lr.ph.preheader.i146 ]
  %.0812.i149 = phi i32 [ %i.ae, %.lr.ph.i147 ], [ %i.ad, %.lr.ph.preheader.i146 ] ; 2 uses
  %i.ae = udiv i32 %.0812.i149, 10
  %i.af = add nuw nsw i32 %.013.i148, 1           ; 2 uses
  %.not.i150 = icmp ult i32 %.0812.i149, 10
  br i1 %.not.i150, label %Abc_Base10Log.exit152, label %.lr.ph.i147, !llvm.loop !1

Abc_Base10Log.exit152:                            ; preds = %.lr.ph.i147, %bb.a, %Abc_Base10Log.exit
  %i.ag = phi i32 [ %i.aa, %Abc_Base10Log.exit ], [ 10, %bb.a ], [ %i.aa, %.lr.ph.i147 ]
  %.0109.lcssa249261 = phi i32 [ %i.u, %Abc_Base10Log.exit ], [ 0, %bb.a ], [ %i.u, %.lr.ph.i147 ]
  %.0107.lcssa250260 = phi i32 [ %i.ab, %Abc_Base10Log.exit ], [ 0, %bb.a ], [ %i.ab, %.lr.ph.i147 ]
  %.09.i151 = phi i32 [ %i.ab, %Abc_Base10Log.exit ], [ 0, %bb.a ], [ %i.af, %.lr.ph.i147 ]
  %i.ah = phi <2 x double> [ %i.t, %Abc_Base10Log.exit ], [ zeroinitializer, %bb.a ], [ %i.t, %.lr.ph.i147 ]
  %i.ai = mul i32 %.09.i151, 10
  %i.aj = add i32 %i.ai, 10
  %i.ak = tail call noundef i32 @llvm.smax.i32(i32 %i.ag, i32 %i.aj) ; 8 uses
  %i.al = add i32 %i.ak, -1
  %or.cond.i.i = icmp ult i32 %i.al, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.ak ; 3 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i159, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Abc_Base10Log.exit152
  %i.am = sext i32 %spec.store.select.i.i to i64
  %i.an = shl nsw i64 %i.am, 2                    ; 2 uses
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #19 ; 4 uses
  %.not.i153 = icmp eq ptr %i.ao, null
  br i1 %.not.i153, label %Vec_IntAlloc.exit.i157, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.ap = sext i32 %i.ak to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 0, i64 %i.aq, i1 false)
  br label %Vec_IntAlloc.exit.i157

Vec_IntAlloc.exit.thread.i159:                    ; preds = %Abc_Base10Log.exit152
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.as, align 4, !tbaa !45
  br label %Vec_IntStart.exit160

Vec_IntAlloc.exit.i157:                           ; preds = %Vec_IntAlloc.exit.i, %bb.f
  %i.au = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %spec.store.select.i.i, ptr %i.au, align 8, !tbaa !46
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.an) #19 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.av, align 4, !tbaa !45
  %.not.i158 = icmp eq ptr %i.aw, null
  br i1 %.not.i158, label %Vec_IntStart.exit160, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit.i157
  %i.ay = sext i32 %i.ak to i64
  %i.az = shl nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aw, i8 0, i64 %i.az, i1 false)
  br label %Vec_IntStart.exit160

Vec_IntStart.exit160:                             ; preds = %Vec_IntAlloc.exit.thread.i159, %Vec_IntAlloc.exit.i157, %bb.g
  %.val136 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i159 ], [ null, %Vec_IntAlloc.exit.i157 ], [ %i.aw, %bb.g ] ; 7 uses
  %i.ba = phi ptr [ null, %Vec_IntAlloc.exit.thread.i159 ], [ %i.ao, %Vec_IntAlloc.exit.i157 ], [ %i.ao, %bb.g ] ; 10 uses
  %i.bb = phi ptr [ %i.ar, %Vec_IntAlloc.exit.thread.i159 ], [ %i.au, %Vec_IntAlloc.exit.i157 ], [ %i.au, %bb.g ] ; 3 uses
  br i1 %i.e, label %.lr.ph191, label %.critedge2

.lr.ph191:                                        ; preds = %Vec_IntStart.exit160
  %i.bc = getelementptr i8, ptr %i.c, i64 8
  %.val122 = load ptr, ptr %i.bc, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph191, %bb.al
  %indvars.iv197 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next198, %bb.al ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val122, i64 %indvars.iv197
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr i8, ptr %i.be, i64 32
  %.val124 = load i32, ptr %i.bg, align 8
  %i.bh = and i32 %.val124, 7
  %.not = icmp eq i32 %i.bh, 3
  br i1 %.not, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr i8, ptr %i.be, i64 60
  %.val126 = load i32, ptr %i.bi, align 4, !tbaa !31 ; 14 uses
  %i.bj = getelementptr i8, ptr %i.be, i64 64
  %.val128 = load i32, ptr %i.bj, align 8, !tbaa !42 ; 14 uses
  %i.bk = icmp slt i32 %.val126, 10
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = sext i32 %.val126 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !49
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !49
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp samesign ult i32 %.val126, 100
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc168 = trunc nuw nsw i32 %.val126 to i8
  %i.bq = udiv i8 %.lhs.trunc168, 10
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !49
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !49
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bw = icmp samesign ult i32 %.val126, 1000
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.lhs.trunc170 = trunc nuw nsw i32 %.val126 to i16
  %i.bx = udiv i16 %.lhs.trunc170, 100
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !49
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !49
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.cd = icmp samesign ult i32 %.val126, 10000
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.lhs.trunc172 = trunc nuw nsw i32 %.val126 to i16
  %i.ce = udiv i16 %.lhs.trunc172, 1000
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 120 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !49
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !49
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.ck = icmp samesign ult i32 %.val126, 100000
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = udiv i32 %.val126, 10000
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !49
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !49
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cr = icmp samesign ult i32 %.val126, 1000000
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = udiv i32 %.val126, 100000
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 200 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !49
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !49
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.cy = icmp samesign ult i32 %.val126, 10000000
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = udiv i32 %.val126, 1000000
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 240 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !49
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !49
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.q, %bb.u, %bb.w, %bb.v, %bb.s, %bb.o, %bb.k
  %i.df = icmp slt i32 %.val128, 10
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = sext i32 %.val128 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %.val136, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !49
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !49
  br label %bb.al

bb.z:                                             ; preds = %bb.x
  %i.dk = icmp samesign ult i32 %.val128, 100
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.lhs.trunc = trunc nuw nsw i32 %.val128 to i8
  %i.dl = udiv i8 %.lhs.trunc, 10
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !49
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !49
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  %i.dr = icmp samesign ult i32 %.val128, 1000
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.lhs.trunc164 = trunc nuw nsw i32 %.val128 to i16
  %i.ds = udiv i16 %.lhs.trunc164, 100
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !49
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !49
  br label %bb.al

bb.ad:                                            ; preds = %bb.ab
  %i.dy = icmp samesign ult i32 %.val128, 10000
  br i1 %i.dy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.lhs.trunc166 = trunc nuw nsw i32 %.val128 to i16
  %i.dz = udiv i16 %.lhs.trunc166, 1000
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 120 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !49
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !49
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.ef = icmp samesign ult i32 %.val128, 100000
  br i1 %i.ef, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eg = udiv i32 %.val128, 10000
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 160 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !49
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !49
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.em = icmp samesign ult i32 %.val128, 1000000
  br i1 %i.em, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.en = udiv i32 %.val128, 100000
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 200 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !49
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !49
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.et = icmp samesign ult i32 %.val128, 10000000
  br i1 %i.et, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eu = udiv i32 %.val128, 1000000
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 240 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !49
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !49
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %bb.h, %bb.aa, %bb.ae, %bb.ai, %bb.ak, %bb.aj, %bb.ag, %bb.ac, %bb.y
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %.val = load i32, ptr %i.d, align 4, !tbaa !22
  %i.fa = sext i32 %.val to i64
  %i.fb = icmp slt i64 %indvars.iv.next198, %i.fa
  br i1 %i.fb, label %bb.h, label %.critedge2, !llvm.loop !74

.critedge2:                                       ; preds = %bb.al, %Vec_IntStart.exit160
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.fc = icmp sgt i32 %i.ak, 0
  br i1 %i.fc, label %.lr.ph194, label %._crit_edge

.lr.ph194:                                        ; preds = %.critedge2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %wide.trip.count203 = zext nneg i32 %i.ak to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph194, %bb.ay
  %indvars.iv200 = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next201, %bb.ay ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv200 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !49
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !47
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv200
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !49
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fl = icmp samesign ult i64 %indvars.iv200, 10
  %i.fm = trunc nuw nsw i64 %indvars.iv200 to i32 ; 3 uses
  br i1 %i.fl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.fm) ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fo = udiv i32 %i.fm, 10
  %i.fp = uitofp nneg i32 %i.fo to double
  %i.fq = call double @pow(double noundef 1.000000e+01, double noundef %i.fp) #18
  %i.fr = fptosi double %i.fq to i32              ; 2 uses
  %i.fs = urem i32 %i.fm, 10                      ; 2 uses
  %i.ft = mul nsw i32 %i.fs, %i.fr
  %i.fu = add nuw nsw i32 %i.fs, 1
  %i.fv = mul nsw i32 %i.fu, %i.fr
  %i.fw = add nsw i32 %i.fv, -1
  %i.fx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ft, i32 noundef %i.fw) #18 ; 0 uses
  %i.fy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fz = load i32, ptr %i.fe, align 4, !tbaa !49 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28) ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.fz) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) ; 0 uses
  %i.ge = load ptr, ptr %i.fd, align 8, !tbaa !47
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv200
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !49 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28) ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.gg) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.an, %bb.ax
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.thread, label %bb.am, !llvm.loop !75

._crit_edge:                                      ; preds = %.critedge2
  %.not.i161 = icmp eq ptr %i.ba, null
  br i1 %.not.i161, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ay, %._crit_edge
  call void @free(ptr noundef nonnull %i.ba) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !47 ; 2 uses
  %.not.i162 = icmp eq ptr %i.gl, null
  br i1 %.not.i162, label %Vec_IntFree.exit163, label %bb.az

bb.az:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.gl) #18
  br label %Vec_IntFree.exit163

Vec_IntFree.exit163:                              ; preds = %Vec_IntFree.exit, %bb.az
  call void @free(ptr noundef nonnull %i.bb) #18
  %i.gm = getelementptr i8, ptr %0, i64 52
  %.val145 = load i32, ptr %i.gm, align 4, !tbaa !49
  %i.gn = sitofp i32 %.val145 to double
  %i.go = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = fdiv <2 x double> %i.ah, %i.gp          ; 2 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = extractelement <2 x double> %i.gq, i64 1
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %.0109.lcssa249261, double noundef %i.gr, i32 noundef %.0107.lcssa250260, double noundef %i.gs) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Nwk_ManCleanMarks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val9 = load i32, ptr %i.c, align 4, !tbaa !22
  %i.d = icmp sgt i32 %.val9, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val8 = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, -49
  store i32 %i.l, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val = load i32, ptr %i.n, align 4, !tbaa !22
  %i.o = sext i32 %.val to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %.critedge, !llvm.loop !76

.critedge:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Nwk_ManMinimumBaseNode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %0, i64 60         ; 6 uses
  %.val45 = load i32, ptr %i.i, align 4, !tbaa !31
  %i.j = tail call ptr @Hop_ManConvertAigToTruth(ptr noundef %i.c, ptr noundef %i.h, i32 noundef %.val45, ptr noundef %1, i32 noundef 0) #18 ; 2 uses
  %.val44 = load i32, ptr %i.i, align 4, !tbaa !31
  %i.k = tail call i32 @Kit_TruthSupportSize(ptr noundef %i.j, i32 noundef %.val44) #18 ; 2 uses
  %.val43 = load i32, ptr %i.i, align 4, !tbaa !31 ; 2 uses
  %i.l = icmp eq i32 %i.k, %.val43
  br i1 %i.l, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @Kit_TruthSupport(ptr noundef %i.j, i32 noundef %.val43) #18 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val46 = load i32, ptr %i.n, align 8, !tbaa !42
  %i.o = tail call ptr @Nwk_ManCreateNode(ptr noundef nonnull %i.a, i32 noundef %i.k, i32 noundef %.val46) #18 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.i, align 4, !tbaa !31   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.s = phi i32 [ %i.z, %bb.e ], [ %i.q, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.x, %i.m
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @Nwk_ObjAddFanin(ptr noundef %i.o, ptr noundef nonnull %i.v) #18
  %.pre = load i32, ptr %i.i, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.z = phi i32 [ %i.s, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.b
  %.lcssa = phi i32 [ %i.q, %bb.b ], [ %i.z, %bb.e ], [ %i.s, %.lr.ph ]
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ae = tail call ptr @Hop_Remap(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.m, i32 noundef %.lcssa) #18
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !36
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  %.val40 = load i32, ptr %i.i, align 4, !tbaa !31
  %i.ai = getelementptr i8, ptr %i.o, i64 60
  %.val = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ah, i32 noundef %.val40, i32 noundef %.val) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  tail call void @Nwk_ObjReplace(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.035 = phi i32 [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.035
}

declare i32 @Kit_TruthSupportSize(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Kit_TruthSupport(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Nwk_ManCreateNode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @Nwk_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Hop_Remap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @Nwk_ObjReplace(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @Nwk_ManMinimumBaseInt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !45
  store i32 65536, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val20 = load i32, ptr %i.g, align 4, !tbaa !22
  %i.h = icmp sgt i32 %.val20, 0
  br i1 %i.h, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.i = phi ptr [ %i.r, %bb.d ], [ %i.f, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.022 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]    ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val18 = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val18, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %.val19 = load i32, ptr %i.n, align 8
  %i.o = and i32 %.val19, 7
  %.not = icmp eq i32 %i.o, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @Nwk_ManMinimumBaseNode(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef %1)
  %i.q = add nsw i32 %i.p, %.022
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.r = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.022, %.lr.ph ], [ %i.q, %bb.c ], [ %.022, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val = load i32, ptr %i.s, align 4, !tbaa !22
  %i.t = sext i32 %.val to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !77

.critedge:                                        ; preds = %bb.d
  %i.v = icmp ne i32 %1, 0
  %i.w = icmp ne i32 %.1, 0
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %.critedge
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %.1) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.e, %.critedge
  %.0.lcssa27 = phi i32 [ %.1, %.critedge ], [ %.1, %bb.e ], [ 0, %bb.a ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.y) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge.thread, %bb.f
  tail call void @free(ptr noundef nonnull %i.a) #18
  ret i32 %.0.lcssa27
}

; Function Attrs: nounwind uwtable
define void @Nwk_ManMinimumBaseRec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #18
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !81
  %.neg5 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %.neg = sdiv i64 %i.e, -1000
  %.neg6 = add i64 %.neg, %.neg5
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg6, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %Abc_Clock.exit
  %i.f = call i32 @Nwk_ManMinimumBaseInt(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !78

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.g = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #18
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %Abc_Clock.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %2, align 8, !tbaa !81
  %i.j = mul nsw i64 %i.i, 1000000
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  %i.m = sdiv i64 %i.l, 1000
  %i.n = add nsw i64 %i.m, %i.j
  br label %Abc_Clock.exit4

Abc_Clock.exit4:                                  ; preds = %bb.d, %bb.e
  %.0.i3 = phi i64 [ %i.n, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.o = add i64 %.0.i3, %.0.i.neg
  %i.p = sitofp i64 %i.o to double
  %i.q = fdiv double %i.p, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.36, double noundef %i.q)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !49
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #18 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #18
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #18 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !87
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #18 ; 0 uses
  call void @free(ptr noundef %i.d) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !87, !noalias !88
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #18, !inline_history !85 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @Nwk_ManMinimumBase(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !45
  store i32 65536, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val19 = load i32, ptr %i.g, align 4, !tbaa !22
  %i.h = icmp sgt i32 %.val19, 0
  br i1 %i.h, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.i = phi ptr [ %i.r, %bb.d ], [ %i.f, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.021 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]    ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val17 = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val17, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %.val18 = load i32, ptr %i.n, align 8
  %i.o = and i32 %.val18, 7
  %.not = icmp eq i32 %i.o, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @Nwk_ManMinimumBaseNode(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef %1)
  %i.q = add nsw i32 %i.p, %.021
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.r = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.021, %.lr.ph ], [ %i.q, %bb.c ], [ %.021, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val = load i32, ptr %i.s, align 4, !tbaa !22
  %i.t = sext i32 %.val to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !89

.critedge:                                        ; preds = %bb.d
  %i.v = icmp ne i32 %1, 0
  %i.w = icmp ne i32 %.1, 0
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %.critedge
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %.1) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.e, %.critedge
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.y) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge.thread, %bb.f
  tail call void @free(ptr noundef nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @Nwk_ManRemoveDupFaninsNode(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = tail call ptr @Hop_IthVar(ptr noundef %i.c, i32 noundef %1) #18
  %i.g = tail call ptr @Hop_Compose(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.f, i32 noundef %2) #18
  store ptr %i.g, ptr %i.d, align 8, !tbaa !36
  %i.h = tail call i32 @Nwk_ManMinimumBaseNode(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 0) ; 0 uses
  ret void
}

declare ptr @Hop_Compose(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Hop_IthVar(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Nwk_ManRemoveDupFanins(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !45
  store i32 65536, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val53 = load i32, ptr %i.g, align 4, !tbaa !22
  %i.h = icmp sgt i32 %.val53, 0
  br i1 %i.h, label %.lr.ph55, label %.critedge

.lr.ph55:                                         ; preds = %bb.a
  %.not35 = icmp eq i32 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph55, %Nwk_ManMinimumBaseNode.exit
  %indvars.iv68 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next69, %Nwk_ManMinimumBaseNode.exit ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.lr.ph55 ], [ %i.bs, %Nwk_ManMinimumBaseNode.exit ]
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val40 = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %indvars.iv68
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 10 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Nwk_ManMinimumBaseNode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %.val41 = load i32, ptr %i.n, align 8
  %i.o = and i32 %.val41, 7
  %.not = icmp eq i32 %i.o, 3
  br i1 %.not, label %.critedge39.preheader, label %Nwk_ManMinimumBaseNode.exit

.critedge39.preheader:                            ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph52, label %Nwk_ManMinimumBaseNode.exit

.lr.ph52:                                         ; preds = %.critedge39.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.t = zext nneg i32 %i.q to i64
  %wide.trip.count66 = zext nneg i32 %i.q to i64  ; 2 uses
  br label %bb.d

.critedge39.loopexit:                             ; preds = %bb.m, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %Nwk_ManMinimumBaseNode.exit, label %bb.d, !llvm.loop !90

bb.d:                                             ; preds = %.lr.ph52, %.critedge39.loopexit
  %indvars.iv63 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next64, %.critedge39.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next, %.critedge39.loopexit ] ; 2 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 3 uses
  %.not3749 = icmp samesign ult i64 %indvars.iv.next64, %i.t
  br i1 %.not3749, label %.lr.ph, label %.critedge39.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv63
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv60 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next61, %bb.m ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv60
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = trunc nuw nsw i64 %indvars.iv63 to i32
  %i.ab = trunc nuw nsw i64 %indvars.iv60 to i32
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ah) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = tail call ptr @Hop_IthVar(ptr noundef %i.al, i32 noundef %i.aa) #18
  %i.ap = tail call ptr @Hop_Compose(ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ao, i32 noundef %i.ab) #18 ; 2 uses
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !36
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr
  %.val45.i = load i32, ptr %i.p, align 4, !tbaa !31
  %i.aw = tail call ptr @Hop_ManConvertAigToTruth(ptr noundef %i.as, ptr noundef %i.av, i32 noundef %.val45.i, ptr noundef nonnull %i.a, i32 noundef 0) #18 ; 2 uses
  %.val44.i = load i32, ptr %i.p, align 4, !tbaa !31
  %i.ax = tail call i32 @Kit_TruthSupportSize(ptr noundef %i.aw, i32 noundef %.val44.i) #18 ; 2 uses
  %.val43.i = load i32, ptr %i.p, align 4, !tbaa !31 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, %.val43.i
  br i1 %i.ay, label %Nwk_ManMinimumBaseNode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = tail call i32 @Kit_TruthSupport(ptr noundef %i.aw, i32 noundef %.val43.i) #18 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.l, i64 64
  %.val46.i = load i32, ptr %i.ba, align 8, !tbaa !42
  %i.bb = tail call ptr @Nwk_ManCreateNode(ptr noundef nonnull %i.aq, i32 noundef %i.ax, i32 noundef %.val46.i) #18 ; 3 uses
  %i.bc = load i32, ptr %i.p, align 4, !tbaa !31  ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %i.be = phi i32 [ %i.bl, %bb.l ], [ %i.bc, %bb.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 2 uses
  %.not.i42 = icmp eq ptr %i.bh, null
  br i1 %.not.i42, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bi = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = and i32 %i.bj, %i.az
  %.not39.i = icmp eq i32 %i.bk, 0
  br i1 %.not39.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Nwk_ObjAddFanin(ptr noundef %i.bb, ptr noundef nonnull %i.bh) #18
  %.pre.i = load i32, ptr %i.p, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi i32 [ %i.be, %bb.j ], [ %.pre.i, %bb.k ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %bb.i
  %.lcssa.i = phi i32 [ %i.bc, %bb.i ], [ %i.be, %.lr.ph.i ], [ %i.bl, %bb.l ]
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !48
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.bq = tail call ptr @Hop_Remap(ptr noundef %i.bo, ptr noundef %i.bp, i32 noundef %i.az, i32 noundef %.lcssa.i) #18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !36
  tail call void @Nwk_ObjReplace(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bb) #18
  br label %Nwk_ManMinimumBaseNode.exit

bb.m:                                             ; preds = %bb.e
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count66
  br i1 %exitcond.not, label %.critedge39.loopexit, label %bb.e, !llvm.loop !91

Nwk_ManMinimumBaseNode.exit:                      ; preds = %.critedge39.loopexit, %.critedge39.preheader, %.critedge.i, %bb.h, %bb.c, %bb.b
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %.val = load i32, ptr %i.bt, align 4, !tbaa !22
  %i.bu = sext i32 %.val to i64
  %i.bv = icmp slt i64 %indvars.iv.next69, %i.bu
  br i1 %i.bv, label %bb.b, label %.critedge.loopexit, !llvm.loop !92

.critedge.loopexit:                               ; preds = %Nwk_ManMinimumBaseNode.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.bw = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.bw) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.n
  tail call void @free(ptr noundef nonnull %i.a) #18
  ret void
}

declare i32 @Tim_ManBoxForCi(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Tim_ManBoxForCo(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #12

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #16

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!14 = !{!"p1 _ZTS10Hop_Man_t_", !11, i64 0}
!15 = !{!"p1 _ZTS10Tim_Man_t_", !11, i64 0}
!16 = !{!"p1 _ZTS12If_LibLut_t_", !11, i64 0}
!17 = !{!"p1 _ZTS13Aig_MmFlex_t_", !11, i64 0}
!18 = !{!"Nwk_Man_t_", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !8, i64 60, !14, i64 64, !15, i64 72, !16, i64 80, !17, i64 88, !13, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120}
!19 = !{!18, !13, i64 32}
!20 = !{!"any p2 pointer", !11, i64 0}
!21 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !20, i64 8}
!22 = !{!21, !8, i64 4}
!23 = !{!21, !20, i64 8}
!24 = !{!11, !11, i64 0}
!25 = !{!"p1 _ZTS10Nwk_Man_t_", !11, i64 0}
!26 = !{!"p1 _ZTS10Hop_Obj_t_", !11, i64 0}
!27 = !{!"float", !7, i64 0}
!28 = !{!"p2 _ZTS10Nwk_Obj_t_", !20, i64 0}
!29 = !{!"Nwk_Obj_t_", !25, i64 0, !26, i64 8, !11, i64 16, !7, i64 24, !8, i64 32, !8, i64 32, !8, i64 32, !8, i64 32, !8, i64 32, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !27, i64 48, !27, i64 52, !27, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !28, i64 72}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!29, !8, i64 60}
!32 = !{!18, !13, i64 16}
!33 = !{!29, !25, i64 0}
!34 = !{!18, !15, i64 72}
!35 = !{!18, !13, i64 24}
!36 = !{!29, !26, i64 8}
!37 = !{!29, !8, i64 36}
!38 = !{!"p1 _ZTS10Nwk_Obj_t_", !11, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!29, !8, i64 44}
!41 = !{!29, !28, i64 72}
!42 = !{!29, !8, i64 64}
!43 = !{!"p1 int", !11, i64 0}
!44 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !43, i64 8}
!45 = !{!44, !8, i64 4}
!46 = !{!44, !8, i64 0}
!47 = !{!44, !43, i64 8}
!48 = !{!18, !14, i64 64}
!49 = !{!8, !8, i64 0}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !54}
!52 = !{!18, !8, i64 104}
!53 = !{!29, !8, i64 40}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30, !71, !72}
!64 = distinct !{!64, !30, !72, !71}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = !{!18, !12, i64 0}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30}
!79 = !{!"long", !7, i64 0}
!80 = !{!"timespec", !79, i64 0, !79, i64 8}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 8}
!83 = distinct !{!83, i1 false, !"vprintf"}
!84 = distinct !{!84, !83, !"vprintf: argument 0"}
!85 = distinct !{null}
!86 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!84}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !30}
end_hunk_0
