Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/catapult_dct2000?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@catapult_dct2000_seek_read:bb.a
  %i.be = call fastcc zeroext i1 @process_parsed_line(ptr noundef %0, ptr noundef %i.s, ptr noundef %2, i64 noundef %1, i64 noundef %i.ax, i32 noundef %i.au, i32 noundef %i.av, ptr noundef nonnull %i.q, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef nonnull %i.e, i8 noundef zeroext %i.ba, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, i1 noundef zeroext %i.bc, i32 noundef %i.bd, ptr noundef %3, ptr noundef %4) ; 2 uses
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.t, align 4
  store i32 0, ptr %3, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.t, align 4
  store i32 %i.bf, ptr %3, align 4
  %i.bg = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.27, i64 noundef %1)
  store ptr %i.bg, ptr %4, align 8
  br label %bb.k

bb.k:                                             ; preds = %read_new_line.exit, %bb.a, %bb.j, %bb.i
  %.1 = phi i1 [ false, %bb.a ], [ %i.be, %bb.i ], [ false, %bb.j ], [ false, %read_new_line.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @catapult_dct2000_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 224      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @g_hash_table_foreach_remove(ptr noundef %i.d, ptr noundef nonnull @free_line_prefix_info, ptr noundef null) ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.f)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @packet_offset_hash_func(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @packet_offset_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_generated_idb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_dct2000() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @dct2000_info) ; 2 uses
  store i32 %i.a, ptr @dct2000_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @parse_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef captures(none) initializes((0, 1)) %10, ptr nofree noundef captures(none) initializes((0, 1)) %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(none) %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr nofree noundef writeonly captures(none) %17) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [17 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i8 0, ptr %10, align 1
  store i8 0, ptr %11, align 1
  %i.d = load ptr, ptr @g_ascii_table, align 8    ; 18 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %i.e = add nsw i32 %smax, -1                    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %indvars.iv.next645.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %indvars.iv.next645.lcssa.sroa.gep892 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %indvars.iv.next645.lcssa.sroa.gep893 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.j ] ; 7 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  switch i8 %i.g, label %bb.f [
    i8 46, label %.critedge.thread.loopexit.split.loop.exit
    i8 47, label %bb.d
  ]

bb.d:                                             ; preds = %bb.h, %bb.c
  %indvars.iv.lcssa888 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 %indvars.iv.lcssa888
  %i.i = getelementptr i8, ptr %13, i64 %indvars.iv.lcssa888
  store i8 0, ptr %i.i, align 1
  %i.j = tail call i32 @strncmp(ptr noundef %i.h, ptr noundef nonnull dereferenceable(6) @.str.2, i64 noundef 5) #19
  %.not386 = icmp eq i32 %i.j, 0
  br i1 %.not386, label %bb.e, label %.critedge19

bb.e:                                             ; preds = %bb.d
  %i.k = trunc nuw nsw i64 %indvars.iv.lcssa888 to i32
  %i.l = tail call i64 @g_strlcpy(ptr noundef %15, ptr noundef nonnull @.str.3, i64 noundef 64) ; 0 uses
  store i8 1, ptr %10, align 1
  br label %.critedge.thread

bb.f:                                             ; preds = %bb.c
  %i.m = zext i8 %i.g to i64
  %i.n = getelementptr [2 x i8], ptr %i.d, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %.fr456 = freeze i16 %i.o
  %.not383 = trunc i16 %.fr456 to i1
  br i1 %.not383, label %bb.g, label %switch.early.test

switch.early.test:                                ; preds = %bb.f
  switch i8 %i.g, label %.critedge19 [
    i8 95, label %bb.g
    i8 45, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test, %switch.early.test, %bb.f
  %i.p = getelementptr i8, ptr %13, i64 %indvars.iv
  store i8 %i.g, ptr %i.p, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.1, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 %indvars.iv.next
  %i.r = load i8, ptr %i.q, align 1               ; 4 uses
  switch i8 %i.r, label %bb.i [
    i8 46, label %.critedge.thread.loopexit.split.loop.exit
    i8 47, label %bb.d
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr [2 x i8], ptr %i.d, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %.fr456.1 = freeze i16 %i.u
  %.not383.1 = trunc i16 %.fr456.1 to i1
  br i1 %.not383.1, label %bb.j, label %switch.early.test.1

switch.early.test.1:                              ; preds = %bb.i
  switch i8 %i.r, label %.critedge19 [
    i8 95, label %bb.j
    i8 45, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test.1, %switch.early.test.1, %bb.i
  %i.v = getelementptr i8, ptr %13, i64 %indvars.iv.next
  store i8 %i.r, ptr %i.v, align 1
  %exitcond643.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond643.not.1, label %.critedge19, label %bb.b, !llvm.loop !14

.critedge.thread.loopexit.split.loop.exit:        ; preds = %bb.h, %bb.c
  %indvars.iv.lcssa887 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.h ]
  %i.w = trunc nuw nsw i64 %indvars.iv.lcssa887 to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.g, %.critedge.thread.loopexit.split.loop.exit, %bb.e
  %.0358523 = phi i32 [ %i.k, %bb.e ], [ %i.w, %.critedge.thread.loopexit.split.loop.exit ], [ %i.e, %bb.g ], [ %i.e, %bb.b ] ; 4 uses
  %i.x = add nuw nsw i32 %.0358523, 1             ; 2 uses
  %.not387 = icmp slt i32 %i.x, %1
  br i1 %.not387, label %bb.k, label %.critedge19

bb.k:                                             ; preds = %.critedge.thread
  store i8 0, ptr %16, align 1
  store i8 0, ptr %17, align 1
  store i8 0, ptr %i.a, align 1
  %i.y = load i8, ptr %10, align 1, !range !8, !noundef !9
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %sub_0, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = zext nneg i32 %.0358523 to i64          ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %.not388 = icmp eq i8 %i.ac, 46
  br i1 %.not388, label %bb.m, label %.critedge19

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %13, i64 %i.aa
  store i8 0, ptr %i.ad, align 1
  %i.ae = sext i32 %i.x to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1             ; 3 uses
  %i.ah = icmp ne i8 %i.ag, 47                    ; 2 uses
  %i.ai = add i32 %.0358523, 2                    ; 3 uses
  %i.aj = icmp slt i32 %i.ai, %1                  ; 2 uses
  %i.ak = and i1 %i.aj, %i.ah
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.m
  %18 = sext i32 %i.ai to i64                     ; 4 uses
  %19 = sext i32 %1 to i64                        ; 2 uses
  %i.al = zext i8 %i.ag to i64
  %i.am = getelementptr [2 x i8], ptr %i.d, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = and i16 %i.an, 8
  %.not401 = icmp eq i16 %i.ao, 0
  br i1 %.not401, label %.critedge19, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  store i8 %i.ag, ptr %i.a, align 1
  %i.ap = getelementptr i8, ptr %0, i64 %18
  %i.aq = load i8, ptr %i.ap, align 1             ; 3 uses
  %i.ar = icmp ne i8 %i.aq, 47                    ; 2 uses
  %indvars.iv.next645 = add nsw i64 %18, 1        ; 3 uses
  %i.as = icmp slt i64 %indvars.iv.next645, %19   ; 2 uses
  %i.at = and i1 %i.as, %i.ar                     ; 2 uses
  br i1 %i.at, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %bb.n
  %i.au = zext i8 %i.aq to i64
  %i.av = getelementptr [2 x i8], ptr %i.d, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = and i16 %i.aw, 8
  %.not401.1 = icmp eq i16 %i.ax, 0
  br i1 %.not401.1, label %.critedge19, label %bb.o

bb.o:                                             ; preds = %.lr.ph.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aq, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %0, i64 %indvars.iv.next645
  %i.ba = load i8, ptr %i.az, align 1             ; 3 uses
  %i.bb = icmp ne i8 %i.ba, 47                    ; 2 uses
  %indvars.iv.next645.1 = add nsw i64 %18, 2      ; 3 uses
  %i.bc = icmp slt i64 %indvars.iv.next645.1, %19 ; 2 uses
  %i.bd = and i1 %i.bc, %i.bb
  br i1 %i.bd, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %bb.o
  %i.be = zext i8 %i.ba to i64
  %i.bf = getelementptr [2 x i8], ptr %i.d, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = and i16 %i.bg, 8
  %.not401.2 = icmp eq i16 %i.bh, 0
  br i1 %.not401.2, label %.critedge19, label %bb.p

bb.p:                                             ; preds = %.lr.ph.2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ba, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %0, i64 %indvars.iv.next645.1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp ne i8 %i.bk, 47
  %indvars.iv.next645.2 = add nsw i64 %18, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.o, %bb.n
  %indvars.iv.next645.lcssa.sroa.phi = phi ptr [ %indvars.iv.next645.lcssa.sroa.gep, %bb.n ], [ %indvars.iv.next645.lcssa.sroa.gep892, %bb.o ], [ %indvars.iv.next645.lcssa.sroa.gep893, %bb.p ]
  %.lcssa885 = phi i1 [ %i.ar, %bb.n ], [ %i.bb, %bb.o ], [ %i.bl, %bb.p ]
  %indvars.iv.next645.lcssa = phi i64 [ %indvars.iv.next645, %bb.n ], [ %indvars.iv.next645.1, %bb.o ], [ %indvars.iv.next645.2, %bb.p ]
  %or.cond426 = phi i1 [ %i.as, %bb.n ], [ %i.bc, %bb.o ], [ false, %bb.p ]
  %20 = trunc nsw i64 %indvars.iv.next645.lcssa to i32 ; 2 uses
  %or.cond426.not = xor i1 %or.cond426, true
  %brmerge = or i1 %.lcssa885, %or.cond426.not
  br i1 %brmerge, label %.critedge19, label %bb.q

._crit_edge.thread:                               ; preds = %bb.m
  %or.cond426.not718 = xor i1 %i.aj, true
  %brmerge719 = or i1 %i.ah, %or.cond426.not718
  br i1 %brmerge719, label %.critedge19, label %.thread722

bb.q:                                             ; preds = %._crit_edge
  store i8 0, ptr %indvars.iv.next645.lcssa.sroa.phi, align 1
  br i1 %i.at, label %.thread722, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load i8, ptr %i.a, align 1
  %i.bn = add i8 %i.bm, -48
  store i8 %i.bn, ptr %14, align 1
  br label %bb.s

.thread722:                                       ; preds = %._crit_edge.thread, %bb.q
  %.lcssa515721726 = phi i32 [ %20, %bb.q ], [ %i.ai, %._crit_edge.thread ]
  %i.bo = call zeroext i1 @ws_strtou8(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %14)
  br i1 %i.bo, label %bb.s, label %.critedge19

bb.s:                                             ; preds = %.thread722, %bb.r
  %.lcssa515721725 = phi i32 [ %.lcssa515721726, %.thread722 ], [ %20, %bb.r ] ; 3 uses
  %i.bp = sext i32 %.lcssa515721725 to i64        ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bs = icmp ne i8 %i.br, 47
  %i.bt = icmp slt i32 %.lcssa515721725, %1       ; 2 uses
  %i.bu = and i1 %i.bt, %i.bs
  br i1 %i.bu, label %.lr.ph538, label %._crit_edge539

.lr.ph538:                                        ; preds = %bb.s
  %i.bv = sext i32 %1 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph538, %bb.u
  %indvars.iv648.a = phi i64 [ %i.bp, %.lr.ph538 ], [ %indvars.iv.next649.a, %bb.u ]
  %indvars.iv646 = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next647, %bb.u ] ; 3 uses
  %i.bw = phi i8 [ %i.br, %.lr.ph538 ], [ %i.cc, %bb.u ] ; 3 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr [2 x i8], ptr %i.d, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  %.fr = freeze i16 %i.bz
  %.not398 = trunc i16 %.fr to i1
  br i1 %.not398, label %bb.u, label %switch.early.test439

switch.early.test439:                             ; preds = %bb.t
  switch i8 %i.bw, label %.critedge19 [
    i8 95, label %bb.u
    i8 46, label %bb.u
  ]

bb.u:                                             ; preds = %switch.early.test439, %switch.early.test439, %bb.t
  %i.ca = getelementptr i8, ptr %15, i64 %indvars.iv646
  store i8 %i.bw, ptr %i.ca, align 1
  %indvars.iv.next649.a = add nsw i64 %indvars.iv648.a, 1 ; 5 uses
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.cb = getelementptr i8, ptr %0, i64 %indvars.iv.next649.a
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cd = icmp ne i8 %i.cc, 47
  %i.ce = icmp samesign ult i64 %indvars.iv646, 63
  %or.cond3 = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cf = icmp slt i64 %indvars.iv.next649.a, %i.bv ; 2 uses
  %i.cg = and i1 %i.cf, %or.cond3
  br i1 %i.cg, label %bb.t, label %._crit_edge539.loopexit, !llvm.loop !15

._crit_edge539.loopexit:                          ; preds = %bb.u
  %i.ch = trunc nsw i64 %indvars.iv.next649.a to i32
  %i.ci = trunc nuw nsw i64 %indvars.iv.next647 to i32
  br label %._crit_edge539

._crit_edge539:                                   ; preds = %._crit_edge539.loopexit, %bb.s
  %.lcssa534 = phi i64 [ %i.bp, %bb.s ], [ %indvars.iv.next649.a, %._crit_edge539.loopexit ]
  %.2.lcssa = phi i32 [ %.lcssa515721725, %bb.s ], [ %i.ch, %._crit_edge539.loopexit ] ; 2 uses
  %.0355.lcssa = phi i32 [ 0, %bb.s ], [ %i.ci, %._crit_edge539.loopexit ] ; 2 uses
  %.lcssa507 = phi i1 [ %i.bt, %bb.s ], [ %i.cf, %._crit_edge539.loopexit ]
  %i.cj = icmp ne i32 %.0355.lcssa, 64
  %or.cond429 = and i1 %.lcssa507, %i.cj
  br i1 %or.cond429, label %bb.v, label %.critedge19

bb.v:                                             ; preds = %._crit_edge539
  %i.ck = getelementptr i8, ptr %0, i64 %.lcssa534
  %i.cl = zext nneg i32 %.0355.lcssa to i64
  %i.cm = getelementptr i8, ptr %15, i64 %i.cl
  store i8 0, ptr %i.cm, align 1
  %i.cn = load i8, ptr %i.ck, align 1
  %.not391 = icmp eq i8 %i.cn, 47
  br i1 %.not391, label %bb.w, label %.critedge19

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %.2.lcssa, 1                ; 2 uses
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr i8, ptr %0, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1             ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr [2 x i8], ptr %i.d, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = and i16 %i.cu, 8
  %i.cw = icmp ne i16 %i.cv, 0
  %i.cx = add i32 %.2.lcssa, 2                    ; 3 uses
  %i.cy = icmp slt i32 %i.cx, %1                  ; 2 uses
  %i.cz = and i1 %i.cy, %i.cw
  br i1 %i.cz, label %.lr.ph547.preheader, label %._crit_edge548.thread

.lr.ph547.preheader:                              ; preds = %bb.w
  %21 = sext i32 %i.cx to i64
  %22 = sext i32 %1 to i64
  br label %.lr.ph547

.lr.ph547:                                        ; preds = %.lr.ph547.preheader, %.lr.ph547
  %indvars.iv650 = phi i64 [ 0, %.lr.ph547.preheader ], [ %indvars.iv.next651, %.lr.ph547 ] ; 5 uses
  %indvars.iv652 = phi i64 [ %21, %.lr.ph547.preheader ], [ %indvars.iv.next653, %.lr.ph547 ] ; 5 uses
  %i.da = phi i8 [ %i.cr, %.lr.ph547.preheader ], [ %i.dd, %.lr.ph547 ]
  %i.db = getelementptr i8, ptr %16, i64 %indvars.iv650
  store i8 %i.da, ptr %i.db, align 1
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 %indvars.iv652
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr [2 x i8], ptr %i.d, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.dg, 8
  %i.di = icmp ne i16 %i.dh, 0
  %i.dj = icmp samesign ult i64 %indvars.iv650, 16
  %or.cond5 = select i1 %i.di, i1 %i.dj, i1 false
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, 1 ; 3 uses
  %i.dk = icmp slt i64 %indvars.iv.next653, %22   ; 2 uses
  %i.dl = and i1 %i.dk, %or.cond5
  br i1 %i.dl, label %.lr.ph547, label %._crit_edge548, !llvm.loop !16

._crit_edge548:                                   ; preds = %.lr.ph547
  %23 = trunc nsw i64 %indvars.iv652 to i32       ; 2 uses
  %24 = trunc nsw i64 %indvars.iv.next653 to i32  ; 2 uses
  %i.dm = icmp samesign ult i64 %indvars.iv650, 16
  %or.cond430 = and i1 %i.dm, %i.dk
  br i1 %or.cond430, label %bb.x, label %.critedge19

._crit_edge548.thread:                            ; preds = %bb.w
  br i1 %i.cy, label %bb.aa, label %.critedge19

bb.x:                                             ; preds = %._crit_edge548
  %i.dn = getelementptr i8, ptr %16, i64 %indvars.iv.next651
  store i8 0, ptr %i.dn, align 1
  %i.do = icmp eq i64 %indvars.iv650, 0
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = load i8, ptr %16, align 1
  %i.dq = sext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48
  store i32 %i.dr, ptr %i.b, align 4
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ds = call zeroext i1 @ws_strtoi32(ptr noundef %16, ptr noundef null, ptr noundef nonnull %i.b)
  br i1 %i.ds, label %bb.ab, label %.critedge19

bb.aa:                                            ; preds = %._crit_edge548.thread
  store i8 49, ptr %16, align 1
  %i.dt = getelementptr i8, ptr %16, i64 1
  store i8 0, ptr %i.dt, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.3.lcssa733743 = phi i32 [ %23, %bb.y ], [ %23, %bb.z ], [ %i.co, %bb.aa ]
  %.lcssa504735741 = phi i32 [ %24, %bb.y ], [ %24, %bb.z ], [ %i.cx, %bb.aa ] ; 2 uses
  %.pn = phi i64 [ %indvars.iv652, %bb.y ], [ %indvars.iv652, %bb.z ], [ %i.cp, %bb.aa ]
  %i.du = getelementptr i8, ptr %0, i64 %.pn
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 44
  br i1 %i.dw, label %.preheader474.preheader, label %sub_0

.preheader474.preheader:                          ; preds = %bb.ab
  %i.dx = sext i32 %.lcssa504735741 to i64
  %i.dy = sext i32 %1 to i64
  %i.dz = add i32 %.lcssa504735741, 1
  %smax656 = call i32 @llvm.smax.i32(i32 %1, i32 %i.dz)
  %i.ea = add nsw i32 %smax656, -1
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.preheader, %bb.ag
  %indvars.iv654 = phi i64 [ 0, %.preheader474.preheader ], [ %indvars.iv.next655, %bb.ag ] ; 6 uses
  %indvars.iv652.a = phi i64 [ %i.dx, %.preheader474.preheader ], [ %indvars.iv.next653.a, %bb.ag ] ; 3 uses
  %i.eb = getelementptr i8, ptr %0, i64 %indvars.iv652.a
  %i.ec = load i8, ptr %i.eb, align 1             ; 4 uses
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr [2 x i8], ptr %i.d, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = and i16 %i.ef, 8                        ; 2 uses
  %.not394 = icmp eq i16 %i.eg, 0
  br i1 %.not394, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader474
  %i.eh = icmp eq i8 %i.ec, 44
  %i.ei = icmp samesign ult i64 %indvars.iv654, 257
  %or.cond7 = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond7, label %bb.ae, label %.critedge9.split.loop.exit

bb.ad:                                            ; preds = %.preheader474
  %.old6 = icmp samesign ult i64 %indvars.iv654, 257
  br i1 %.old6, label %bb.ae, label %.critedge19

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %indvars.iv.next653.a = add nsw i64 %indvars.iv652.a, 1 ; 2 uses
  %i.ej = icmp slt i64 %indvars.iv.next653.a, %i.dy
  br i1 %i.ej, label %bb.af, label %.critedge9

bb.af:                                            ; preds = %bb.ae
  %.not396 = icmp ne i16 %i.eg, 0
  %.not397 = icmp eq i8 %i.ec, 44
  %or.cond431 = or i1 %.not397, %.not396
  br i1 %or.cond431, label %bb.ag, label %.critedge19

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr i8, ptr %17, i64 %indvars.iv654
  store i8 %i.ec, ptr %i.ek, align 1
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1
  br label %.preheader474, !llvm.loop !17

.critedge9.split.loop.exit:                       ; preds = %bb.ac
  %i.el = trunc nsw i64 %indvars.iv652.a to i32
  br label %.critedge9

.critedge9:                                       ; preds = %bb.ae, %.critedge9.split.loop.exit
  %.4.lcssa618 = phi i32 [ %i.el, %.critedge9.split.loop.exit ], [ %i.ea, %bb.ae ] ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv654, 257
  %i.en = add nsw i32 %.4.lcssa618, 1
  %.not395 = icmp slt i32 %i.en, %1
  %or.cond432 = and i1 %i.em, %.not395
  br i1 %or.cond432, label %bb.ah, label %.critedge19

bb.ah:                                            ; preds = %.critedge9
  %i.eo = getelementptr i8, ptr %17, i64 %indvars.iv654
  store i8 0, ptr %i.eo, align 1
  br label %sub_0

sub_0:                                            ; preds = %bb.k, %bb.ah, %bb.ab
  %.5 = phi i32 [ %.0358523, %bb.k ], [ %.4.lcssa618, %bb.ah ], [ %.3.lcssa733743, %bb.ab ] ; 4 uses
  %i.ep = load i8, ptr %15, align 1               ; 2 uses
  %.not = icmp eq i8 %i.ep, 105
  br i1 %.not, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.er = load i8, ptr %i.eq, align 1
  %.not588 = icmp eq i8 %i.er, 112
  br i1 %.not588, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 2
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %.thread.sink.split, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.ev = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.5) #19
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.thread.sink.split, label %bb.ai

bb.ai:                                            ; preds = %.tail.thread
  %i.ex = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.6) #19
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %.thread.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(6) @.str.7) #19
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.thread.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.8) #19
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.thread.sink.split, label %sub_0458

sub_0458:                                         ; preds = %bb.ak
  %.not589 = icmp eq i8 %i.ep, 102
  br i1 %.not589, label %sub_1459, label %.tail457.thread

sub_1459:                                         ; preds = %sub_0458
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.fe = load i8, ptr %i.fd, align 1
  %.not590 = icmp eq i8 %i.fe, 112
  br i1 %.not590, label %.tail457, label %.tail457.thread

.tail457:                                         ; preds = %sub_1459
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 2
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = icmp eq i8 %i.fg, 0
  br i1 %i.fh, label %bb.al, label %.tail457.thread

.tail457.thread:                                  ; preds = %sub_1459, %sub_0458, %.tail457
  %i.fi = call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #19
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.tail457.thread, %.tail457
  %i.fk = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 256
  %i.fm = and i32 %i.fk, 255
  %i.fn = icmp eq i32 %i.fm, 3
  %or.cond434 = and i1 %i.fl, %i.fn
  br i1 %or.cond434, label %.thread.sink.split, label %bb.ay

bb.am:                                            ; preds = %.tail457.thread
  %i.fo = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(9) @.str.11) #19
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.12) #19
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.thread.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fs = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.13) #19
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.thread.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fu = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.14) #19
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(9) @.str.15) #19
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %.thread.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fy = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(14) @.str.16) #19
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.thread.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ga = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(14) @.str.17) #19
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.thread.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gc = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(10) @.str.18) #19
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(9) @.str.19) #19
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.20) #19
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %.thread.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gi = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.21) #19
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %.thread.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gk = call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(13) @.str.22, i64 noundef 12) #19
  %i.gl = icmp eq i32 %i.gk, 0
  %spec.select807 = select i1 %i.gl, i32 103, i32 0
  br label %.thread.sink.split

bb.ay:                                            ; preds = %bb.am, %bb.al
  store i32 14, ptr %9, align 4
  %i.gm = add i32 %.5, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = xor i32 %.5, -1
  %i.gp = add i32 %1, %i.go
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv669 = phi i32 [ %i.gp, %bb.ay ], [ %indvars.iv.next670, %bb.az ] ; 2 uses
  %indvars.iv662 = phi i64 [ %i.gn, %bb.ay ], [ %indvars.iv.next663, %bb.az ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.ay ], [ %i.gu, %bb.az ] ; 3 uses
end_hunk_0
