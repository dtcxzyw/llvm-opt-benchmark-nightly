Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/re?download=true
inline.NumInlined: 580
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@read_escaped_byte:bb.a
  br label %.thread

.thread:                                          ; preds = %.lr.ph.1, %.thread.loopexit175, %.thread.loopexit, %bb.x, %.loopexit265, %.loopexit264, %.loopexit263, %.loopexit262, %.loopexit261, %bb.ab
  %.0170228 = phi i32 [ %.0170229, %bb.ab ], [ %.0170.lcssa222, %.loopexit265 ], [ %.0170.lcssa222, %bb.x ], [ %.0170.lcssa222, %.loopexit264 ], [ %.0170.lcssa222, %.loopexit263 ], [ %.0170.lcssa222, %.loopexit262 ], [ %.0170.lcssa222, %.loopexit261 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.thread.loopexit ], [ %.0170.lcssa222, %.thread.loopexit175 ]
  %.15985 = phi i32 [ %.058.ph173257, %bb.ab ], [ 1, %.loopexit265 ], [ 1, %bb.x ], [ 1, %.loopexit264 ], [ 1, %.loopexit263 ], [ 1, %.loopexit262 ], [ 1, %.loopexit261 ], [ 1, %.lr.ph.1 ], [ 1, %.thread.loopexit ], [ 1, %.thread.loopexit175 ]
  %.06084 = phi i32 [ %.060, %bb.ab ], [ 27, %.loopexit265 ], [ %i.bk, %bb.x ], [ 7, %.loopexit264 ], [ 11, %.loopexit263 ], [ 12, %.loopexit262 ], [ 13, %.loopexit261 ], [ 9, %.lr.ph.1 ], [ 92, %.thread.loopexit ], [ 10, %.thread.loopexit175 ] ; 2 uses
  %.26483 = phi ptr [ %.264, %bb.ab ], [ %i.ak, %.loopexit265 ], [ %i.bl, %bb.x ], [ %i.ak, %.loopexit264 ], [ %i.ak, %.loopexit263 ], [ %i.ak, %.loopexit262 ], [ %i.ak, %.loopexit261 ], [ %i.ak, %.lr.ph.1 ], [ %i.ak, %.thread.loopexit ], [ %i.ak, %.thread.loopexit175 ]
  %.not76 = icmp eq i32 %.0170228, 0
  %i.br = and i32 %.06084, 31
  %spec.select = select i1 %.not76, i32 %.06084, i32 %i.br
  br label %.thread.thread391

.thread.thread391.thread:                         ; preds = %.lr.ph.preheader
  br label %.thread408

.thread.thread391.thread455:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph = phi i32 [ 13, %.peel.next ], [ 12, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread483:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph481 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph482 = phi i32 [ 12, %.peel.next ], [ 11, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread511:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph509 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph510 = phi i32 [ 11, %.peel.next ], [ 7, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread539:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph537 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph538 = phi i32 [ 7, %.peel.next ], [ 27, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread567:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph565 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph566 = phi i32 [ 27, %.peel.next ], [ 92, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread595:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph593 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph594 = phi i32 [ 28, %.peel.next ], [ 10, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391:                                ; preds = %.thread, %.thread.thread
  %.2648393 = phi ptr [ %i.bo, %.thread.thread ], [ %.26483, %.thread ]
  %.1598592 = phi i32 [ %.058.ph173.lcssa251.ph318, %.thread.thread ], [ %.15985, %.thread ]
  %i.bs = phi i32 [ %i.bq, %.thread.thread ], [ %spec.select, %.thread ] ; 2 uses
  %.not77 = icmp eq i32 %.1598592, 0
  %i.bt = or i32 %i.bs, 128
  %spec.select613 = select i1 %.not77, i32 %i.bs, i32 %i.bt
  br label %.thread408

.thread408:                                       ; preds = %.thread.thread391, %.thread.thread391.thread604, %.thread.thread391.thread609, %.thread.thread391.thread595, %.thread.thread391.thread600, %.thread.thread391.thread567, %.thread.thread391.thread572, %.thread.thread391.thread539, %.thread.thread391.thread544, %.thread.thread391.thread511, %.thread.thread391.thread516, %.thread.thread391.thread483, %.thread.thread391.thread488, %.thread.thread391.thread455, %.thread.thread391.thread460, %.peel.next, %.peel.next.1, %.thread.thread391.thread, %.lr.ph.preheader
  %.2648393412 = phi ptr [ %.2648393, %.thread.thread391 ], [ %i.av, %.thread.thread391.thread460 ], [ %i.g, %.lr.ph.preheader ], [ %i.av, %.peel.next.1 ], [ %i.bi, %.peel.next ], [ %i.g, %.thread.thread391.thread ], [ %.2648393.ph, %.thread.thread391.thread455 ], [ %i.av, %.thread.thread391.thread488 ], [ %.2648393.ph481, %.thread.thread391.thread483 ], [ %i.av, %.thread.thread391.thread516 ], [ %.2648393.ph509, %.thread.thread391.thread511 ], [ %i.av, %.thread.thread391.thread544 ], [ %.2648393.ph537, %.thread.thread391.thread539 ], [ %i.av, %.thread.thread391.thread572 ], [ %.2648393.ph565, %.thread.thread391.thread567 ], [ %i.av, %.thread.thread391.thread600 ], [ %.2648393.ph593, %.thread.thread391.thread595 ], [ %i.av, %.thread.thread391.thread609 ], [ %i.bi, %.thread.thread391.thread604 ]
  %i.bu = phi i32 [ %spec.select613, %.thread.thread391 ], [ 141, %.thread.thread391.thread460 ], [ 9, %.lr.ph.preheader ], [ 137, %.peel.next.1 ], [ 9, %.peel.next ], [ 13, %.thread.thread391.thread ], [ %.ph, %.thread.thread391.thread455 ], [ 140, %.thread.thread391.thread488 ], [ %.ph482, %.thread.thread391.thread483 ], [ 139, %.thread.thread391.thread516 ], [ %.ph510, %.thread.thread391.thread511 ], [ 135, %.thread.thread391.thread544 ], [ %.ph538, %.thread.thread391.thread539 ], [ 155, %.thread.thread391.thread572 ], [ %.ph566, %.thread.thread391.thread567 ], [ 156, %.thread.thread391.thread600 ], [ %.ph594, %.thread.thread391.thread595 ], [ 138, %.thread.thread391.thread609 ], [ 10, %.thread.thread391.thread604 ]
  store ptr %.2648393412, ptr %0, align 8, !tbaa !54
  br label %bb.ad

bb.ad:                                            ; preds = %.thread408, %bb.ac, %.loopexit, %.loopexit316, %.loopexit270, %.loopexit269, %bb.y, %.loopexit268.1, %bb.d, %.outer._crit_edge, %bb.c
  %.065 = phi i32 [ -1, %bb.c ], [ -1, %.outer._crit_edge ], [ -1, %.loopexit ], [ -1, %bb.ac ], [ %i.bu, %.thread408 ], [ -1, %bb.d ], [ -1, %.loopexit268.1 ], [ -1, %bb.y ], [ -1, %.loopexit269 ], [ -1, %.loopexit270 ], [ -1, %.loopexit316 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.065
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_escaped_nonascii(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [5 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = load ptr, ptr %0, align 8, !tbaa !54
  store ptr %i.c, ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val = load i32, ptr %i.d, align 8, !tbaa !58  ; 4 uses
  %i.e = sext i32 %.val to i64                    ; 2 uses
  %i.f = alloca i8, i64 %i.e, align 16            ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 %i.f, i8 noundef 0, i64 noundef %i.e, i1 noundef false) #28
  %i.g = call fastcc i32 @read_escaped_byte(ptr noundef %i.a, ptr noundef %1, ptr noundef %5) ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw i32 %i.g to i8
  store i8 %i.i, ptr %i.f, align 16, !tbaa !15
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.l = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.f, ptr noundef %i.k, ptr noundef %2) #28
  %i.m = icmp slt i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %.critedge.split.loop.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = call fastcc i32 @read_escaped_byte(ptr noundef %i.a, ptr noundef %1, ptr noundef %5) ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw i32 %i.n to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  store i8 %i.p, ptr %i.k, align 1, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !135

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit
  %.0.lcssa = phi i32 [ %i.q, %.critedge.split.loop.exit ], [ %.val, %bb.d ] ; 2 uses
  %i.r = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
  %i.t = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.f, ptr noundef %i.s, ptr noundef %2) #28
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

.critedge.thread:                                 ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.f, i64 1
  %i.w = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.f, ptr noundef %i.v, ptr noundef nonnull %2) #28
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge.thread, %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %5, ptr noundef nonnull align 1 dereferenceable(25) @.str.89, i64 noundef 25, i1 false) #28
  br label %.loopexit

bb.f:                                             ; preds = %.critedge
  %i.y = icmp samesign ugt i32 %.0.lcssa, 1
  br i1 %i.y, label %bb.g, label %.thread

.thread:                                          ; preds = %.critedge.thread, %bb.f
  %i.z = phi i64 [ %i.r, %bb.f ], [ 1, %.critedge.thread ]
  %i.aa = load i8, ptr %i.f, align 16, !tbaa !15  ; 2 uses
  %.not = icmp sgt i8 %i.aa, -1
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = phi i64 [ %i.z, %.thread ], [ %i.r, %bb.f ]
  %i.ac = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.f, i64 noundef %i.ab) #28 ; 0 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %4, align 8, !tbaa !55
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not48 = icmp eq ptr %i.ad, %2
  br i1 %.not48, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %5, ptr noundef nonnull align 1 dereferenceable(44) @.str.90, i64 noundef 44, i1 false) #28
  br label %.loopexit

bb.k:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.af = zext nneg i8 %i.aa to i32
  %i.ag = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 5, ptr noundef nonnull @.str.75, i32 noundef %i.af) #28 ; 0 uses
  %i.ah = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !54
  store ptr %i.ai, ptr %0, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.l, %bb.j, %bb.e
  %.044 = phi i32 [ -1, %bb.j ], [ -1, %bb.a ], [ -1, %bb.e ], [ 0, %bb.l ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.044
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_unicode_list(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = icmp ult ptr %i.c, %1
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.c to i64
  %i.f = sub i64 %i.a, %i.e
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02437 = phi ptr [ %i.h, %bb.b ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i8, ptr %.02437, align 1, !tbaa !15
  switch i8 %i.g, label %.critedge [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.h = getelementptr i8, ptr %.02437, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !136

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.024.lcssa = phi ptr [ %i.c, %bb.a ], [ %.02437, %.lr.ph ], [ %scevgep, %bb.b ] ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = ptrtoint ptr %.024.lcssa to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = call i64 @ruby_scan_hex(ptr noundef %.024.lcssa, i64 noundef %i.k, ptr noundef nonnull %i.b) #28
  %i.m = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.critedge49, label %.lr.ph46

.lr.ph46:                                         ; preds = %.critedge, %.critedge2
  %i.o = phi i64 [ %i.aa, %.critedge2 ], [ %i.m, %.critedge ] ; 2 uses
  %i.p = phi i64 [ %i.z, %.critedge2 ], [ %i.l, %.critedge ]
  %.145 = phi ptr [ %.2.lcssa, %.critedge2 ], [ %.024.lcssa, %.critedge ] ; 3 uses
  %.14551 = ptrtoaddr ptr %.145 to i64
  %i.q = icmp ugt i64 %i.o, 6
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 1 dereferenceable(22) @.str.91, i64 noundef 22, i1 false) #28
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph46
  %i.r = call fastcc i32 @append_utf8(i64 noundef %i.p, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %.not27 = icmp eq i32 %i.r, 0
  br i1 %.not27, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.145, i64 %i.o    ; 3 uses
  %i.t = icmp ult ptr %i.s, %1
  br i1 %i.t, label %.lr.ph41.preheader, label %.critedge2

.lr.ph41.preheader:                               ; preds = %bb.e
  %scevgep50 = getelementptr i8, ptr %.145, i64 %i.a
  %i.u = sub i64 0, %.14551
  %scevgep52 = getelementptr i8, ptr %scevgep50, i64 %i.u ; 2 uses
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.f
  %.240 = phi ptr [ %i.w, %bb.f ], [ %i.s, %.lr.ph41.preheader ] ; 3 uses
  %i.v = load i8, ptr %.240, align 1, !tbaa !15
  switch i8 %i.v, label %.critedge2 [
    i8 32, label %bb.f
    i8 13, label %bb.f
    i8 12, label %bb.f
    i8 11, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph41, %.lr.ph41, %.lr.ph41, %.lr.ph41, %.lr.ph41, %.lr.ph41
  %i.w = getelementptr i8, ptr %.240, i64 1       ; 2 uses
  %exitcond53.not = icmp eq ptr %i.w, %scevgep52
  br i1 %exitcond53.not, label %.critedge2, label %.lr.ph41, !llvm.loop !137

.critedge2:                                       ; preds = %bb.f, %.lr.ph41, %bb.e
  %.2.lcssa = phi ptr [ %i.s, %bb.e ], [ %.240, %.lr.ph41 ], [ %scevgep52, %bb.f ] ; 4 uses
  %i.x = ptrtoint ptr %.2.lcssa to i64
  %i.y = sub i64 %i.i, %i.x
  %i.z = call i64 @ruby_scan_hex(ptr noundef %.2.lcssa, i64 noundef %i.y, ptr noundef nonnull %i.b) #28
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph46

.critedge49:                                      ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(21) @.str.80, i64 noundef 21, i1 false) #28
  br label %.loopexit

._crit_edge:                                      ; preds = %.critedge2
  store ptr %.2.lcssa, ptr %0, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %.critedge49, %bb.c
  %.025 = phi i32 [ -1, %.critedge49 ], [ 0, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i32 %.025
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_unicode_bmp(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.d = icmp ult ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.93, i64 noundef 23, i1 false) #28
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = call i64 @ruby_scan_hex(ptr noundef %i.b, i64 noundef 4, ptr noundef nonnull %i.a) #28
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq i64 %i.f, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.93, i64 noundef 23, i1 false) #28
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = call fastcc i32 @append_utf8(i64 noundef %i.e, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.c, ptr %0, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

declare i64 @ruby_scan_hex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @append_utf8(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 5 uses
  %i.c = and i64 %0, -2048
  %or.cond.i = icmp eq i64 %i.c, 55296
  %i.d = icmp ugt i64 %0, 1114111
  %or.cond3.i = or i1 %i.d, %or.cond.i
  br i1 %or.cond3.i, label %check_unicode_range.exit, label %bb.b

check_unicode_range.exit:                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 1 dereferenceable(22) @.str.91, i64 noundef 22, i1 false) #28
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %0, 128
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = trunc nuw nsw i64 %0 to i32
  %i.g = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.75, i32 noundef %i.f) #28 ; 0 uses
  %i.h = call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = call i32 @rb_uv_to_utf8(ptr noundef nonnull %i.b, i64 noundef %0) #28
  %i.j = sext i32 %i.i to i64
  %i.k = call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.j) #28 ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = call nonnull ptr @rb_utf8_encoding() #28 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %2, align 8, !tbaa !55
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %i.l, %i.n
  br i1 %.not17, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.92, i64 noundef 36, i1 false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.thread, %bb.g, %check_unicode_range.exit
  %.1 = phi i32 [ -1, %bb.g ], [ -1, %check_unicode_range.exit ], [ 0, %.thread ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @rb_uv_to_utf8(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_enc_reg_error_desc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i64 @rb_str_buf_new_cstr(ptr noundef nonnull %4) #28 ; 5 uses
  %i.c = tail call ptr @rb_default_internal_encoding() #28 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @rb_default_external_encoding() #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.f = tail call i64 @rb_enc_associate(i64 noundef %i.b, ptr noundef %2) #28 ; 0 uses
  %i.g = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.94, i64 noundef 3) #28 ; 0 uses
  tail call fastcc void @rb_reg_expr_str(i64 noundef %i.b, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %.0, i32 noundef 47)
  store i8 47, ptr %i.a, align 1, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 109, ptr %i.h, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = and i32 %3, 1
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.0.i, i64 1
  store i8 105, ptr %.0.i, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %i.l, %bb.f ], [ %.0.i, %bb.e ] ; 3 uses
  %i.m = and i32 %3, 2
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %option_to_str.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %.1.i, i64 1
  store i8 120, ptr %.1.i, align 1, !tbaa !15
  br label %option_to_str.exit

option_to_str.exit:                               ; preds = %bb.g, %bb.h
  %.2.i = phi ptr [ %i.n, %bb.h ], [ %.1.i, %bb.g ]
  store i8 0, ptr %.2.i, align 1, !tbaa !15
  %i.o = call i64 @rb_str_cat_cstr(i64 noundef %i.b, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.p = load i64, ptr @rb_eRegexpError, align 8, !tbaa !21
  %i.q = call i64 @rb_exc_new_str(i64 noundef %i.p, i64 noundef %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.q
}

declare i64 @rb_str_buf_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #10

declare i64 @rb_str_buf_append(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
end_hunk_0
