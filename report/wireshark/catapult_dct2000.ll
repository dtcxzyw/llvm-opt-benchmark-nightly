Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/catapult_dct2000?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@catapult_dct2000_seek_read:bb.a
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
  %.0358523 = phi i32 [ %i.k, %bb.e ], [ %i.w, %.critedge.thread.loopexit.split.loop.exit ], [ %i.e, %bb.g ], [ %i.e, %bb.b ] ; 7 uses
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
  %18 = zext nneg i32 %i.x to i64
  %i.ae = getelementptr i8, ptr %0, i64 %18
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = icmp ne i8 %i.af, 47                    ; 2 uses
  %i.ah = add i32 %.0358523, 2                    ; 3 uses
  %i.ai = icmp slt i32 %i.ah, %1                  ; 2 uses
  %i.aj = and i1 %i.ai, %i.ag
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.m
  %i.ak = zext i8 %i.af to i64
  %i.al = getelementptr [2 x i8], ptr %i.d, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  %i.an = and i16 %i.am, 8
  %.not401 = icmp eq i16 %i.an, 0
  br i1 %.not401, label %.critedge19, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  store i8 %i.af, ptr %i.a, align 1
  %19 = zext nneg i32 %i.ah to i64
  %i.ao = getelementptr i8, ptr %0, i64 %19
  %i.ap = load i8, ptr %i.ao, align 1             ; 3 uses
  %i.aq = icmp ne i8 %i.ap, 47                    ; 2 uses
  %i.ar = add i32 %.0358523, 3                    ; 3 uses
  %i.as = icmp slt i32 %i.ar, %1                  ; 2 uses
  %i.at = and i1 %i.as, %i.aq                     ; 2 uses
  br i1 %i.at, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %bb.n
  %i.au = zext i8 %i.ap to i64
  %i.av = getelementptr [2 x i8], ptr %i.d, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = and i16 %i.aw, 8
  %.not401.1 = icmp eq i16 %i.ax, 0
  br i1 %.not401.1, label %.critedge19, label %bb.o

bb.o:                                             ; preds = %.lr.ph.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ap, ptr %i.ay, align 1
  %20 = zext nneg i32 %i.ar to i64
  %i.az = getelementptr i8, ptr %0, i64 %20
  %i.ba = load i8, ptr %i.az, align 1             ; 3 uses
  %i.bb = icmp ne i8 %i.ba, 47                    ; 2 uses
  %i.bc = add i32 %.0358523, 4                    ; 3 uses
  %i.bd = icmp slt i32 %i.bc, %1                  ; 2 uses
  %i.be = and i1 %i.bd, %i.bb
  br i1 %i.be, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %bb.o
  %i.bf = zext i8 %i.ba to i64
  %i.bg = getelementptr [2 x i8], ptr %i.d, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = and i16 %i.bh, 8
  %.not401.2 = icmp eq i16 %i.bi, 0
  br i1 %.not401.2, label %.critedge19, label %bb.p

bb.p:                                             ; preds = %.lr.ph.2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ba, ptr %i.bj, align 1
  %21 = zext nneg i32 %i.bc to i64
  %i.bk = getelementptr i8, ptr %0, i64 %21
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp ne i8 %i.bl, 47
  %i.bn = add i32 %.0358523, 5
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.o, %bb.n
  %indvars.iv.next645.lcssa.sroa.phi = phi ptr [ %indvars.iv.next645.lcssa.sroa.gep, %bb.n ], [ %indvars.iv.next645.lcssa.sroa.gep892, %bb.o ], [ %indvars.iv.next645.lcssa.sroa.gep893, %bb.p ]
  %.lcssa885 = phi i1 [ %i.aq, %bb.n ], [ %i.bb, %bb.o ], [ %i.bm, %bb.p ]
  %.lcssa884 = phi i32 [ %i.ar, %bb.n ], [ %i.bc, %bb.o ], [ %i.bn, %bb.p ] ; 2 uses
  %or.cond426 = phi i1 [ %i.as, %bb.n ], [ %i.bd, %bb.o ], [ false, %bb.p ]
  %or.cond426.not = xor i1 %or.cond426, true
  %brmerge = or i1 %.lcssa885, %or.cond426.not
  br i1 %brmerge, label %.critedge19, label %bb.q

._crit_edge.thread:                               ; preds = %bb.m
  %or.cond426.not718 = xor i1 %i.ai, true
  %brmerge719 = or i1 %i.ag, %or.cond426.not718
  br i1 %brmerge719, label %.critedge19, label %.thread722

bb.q:                                             ; preds = %._crit_edge
  store i8 0, ptr %indvars.iv.next645.lcssa.sroa.phi, align 1
  br i1 %i.at, label %.thread722, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i8, ptr %i.a, align 1
  %i.bp = add i8 %i.bo, -48
  store i8 %i.bp, ptr %14, align 1
  br label %bb.s

.thread722:                                       ; preds = %._crit_edge.thread, %bb.q
  %.lcssa515721726 = phi i32 [ %.lcssa884, %bb.q ], [ %i.ah, %._crit_edge.thread ]
  %i.bq = call zeroext i1 @ws_strtou8(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %14)
  br i1 %i.bq, label %bb.s, label %.critedge19

bb.s:                                             ; preds = %.thread722, %bb.r
  %.lcssa515721725 = phi i32 [ %.lcssa515721726, %.thread722 ], [ %.lcssa884, %bb.r ] ; 3 uses
  %i.br = sext i32 %.lcssa515721725 to i64        ; 3 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = icmp ne i8 %i.bt, 47
  %i.bv = icmp slt i32 %.lcssa515721725, %1       ; 2 uses
  %i.bw = and i1 %i.bv, %i.bu
  br i1 %i.bw, label %.lr.ph538, label %._crit_edge539

.lr.ph538:                                        ; preds = %bb.s
  %i.bx = sext i32 %1 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph538, %bb.u
  %indvars.iv648 = phi i64 [ %i.br, %.lr.ph538 ], [ %indvars.iv.next649, %bb.u ]
  %indvars.iv646 = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next647, %bb.u ] ; 3 uses
  %i.by = phi i8 [ %i.bt, %.lr.ph538 ], [ %i.ce, %bb.u ] ; 3 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr [2 x i8], ptr %i.d, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2
  %.fr = freeze i16 %i.cb
  %.not398 = trunc i16 %.fr to i1
  br i1 %.not398, label %bb.u, label %switch.early.test439

switch.early.test439:                             ; preds = %bb.t
  switch i8 %i.by, label %.critedge19 [
    i8 95, label %bb.u
    i8 46, label %bb.u
  ]

bb.u:                                             ; preds = %switch.early.test439, %switch.early.test439, %bb.t
  %i.cc = getelementptr i8, ptr %15, i64 %indvars.iv646
  store i8 %i.by, ptr %i.cc, align 1
  %indvars.iv.next649 = add nsw i64 %indvars.iv648, 1 ; 5 uses
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %indvars.iv.next649
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %i.cf = icmp ne i8 %i.ce, 47
  %i.cg = icmp samesign ult i64 %indvars.iv646, 63
  %or.cond3 = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ch = icmp slt i64 %indvars.iv.next649, %i.bx ; 2 uses
  %i.ci = and i1 %i.ch, %or.cond3
  br i1 %i.ci, label %bb.t, label %._crit_edge539.loopexit, !llvm.loop !15

._crit_edge539.loopexit:                          ; preds = %bb.u
  %i.cj = trunc nsw i64 %indvars.iv.next649 to i32
  %i.ck = trunc nuw nsw i64 %indvars.iv.next647 to i32
  br label %._crit_edge539

._crit_edge539:                                   ; preds = %._crit_edge539.loopexit, %bb.s
  %.lcssa534 = phi i64 [ %i.br, %bb.s ], [ %indvars.iv.next649, %._crit_edge539.loopexit ]
  %.2.lcssa = phi i32 [ %.lcssa515721725, %bb.s ], [ %i.cj, %._crit_edge539.loopexit ] ; 2 uses
  %.0355.lcssa = phi i32 [ 0, %bb.s ], [ %i.ck, %._crit_edge539.loopexit ] ; 2 uses
  %.lcssa507 = phi i1 [ %i.bv, %bb.s ], [ %i.ch, %._crit_edge539.loopexit ]
  %i.cl = icmp ne i32 %.0355.lcssa, 64
  %or.cond429 = and i1 %.lcssa507, %i.cl
  br i1 %or.cond429, label %bb.v, label %.critedge19

bb.v:                                             ; preds = %._crit_edge539
  %i.cm = getelementptr i8, ptr %0, i64 %.lcssa534
  %i.cn = zext nneg i32 %.0355.lcssa to i64
  %i.co = getelementptr i8, ptr %15, i64 %i.cn
  store i8 0, ptr %i.co, align 1
  %i.cp = load i8, ptr %i.cm, align 1
  %.not391 = icmp eq i8 %i.cp, 47
  br i1 %.not391, label %bb.w, label %.critedge19

bb.w:                                             ; preds = %bb.v
  %i.cq = add nsw i32 %.2.lcssa, 1                ; 2 uses
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr [2 x i8], ptr %i.d, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = and i16 %i.cw, 8
  %i.cy = icmp ne i16 %i.cx, 0
  %i.cz = add i32 %.2.lcssa, 2                    ; 3 uses
  %i.da = icmp slt i32 %i.cz, %1                  ; 2 uses
  %i.db = and i1 %i.da, %i.cy
  br i1 %i.db, label %.lr.ph547, label %._crit_edge548.thread

.lr.ph547:                                        ; preds = %bb.w, %.lr.ph547
  %indvars.iv650 = phi i64 [ %indvars.iv.next651, %.lr.ph547 ], [ 0, %bb.w ] ; 5 uses
  %i.dc = phi i32 [ %i.do, %.lr.ph547 ], [ %i.cz, %bb.w ] ; 4 uses
  %i.dd = phi i8 [ %i.dh, %.lr.ph547 ], [ %i.ct, %bb.w ]
  %i.de = getelementptr i8, ptr %16, i64 %indvars.iv650
  store i8 %i.dd, ptr %i.de, align 1
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.df = sext i32 %i.dc to i64                   ; 3 uses
  %i.dg = getelementptr i8, ptr %0, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr [2 x i8], ptr %i.d, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = and i16 %i.dk, 8
  %i.dm = icmp ne i16 %i.dl, 0
  %i.dn = icmp samesign ult i64 %indvars.iv650, 16
  %or.cond5 = select i1 %i.dm, i1 %i.dn, i1 false
  %i.do = add nsw i32 %i.dc, 1                    ; 4 uses
  %i.dp = icmp slt i32 %i.do, %1                  ; 2 uses
  %i.dq = and i1 %i.dp, %or.cond5
  br i1 %i.dq, label %.lr.ph547, label %._crit_edge548, !llvm.loop !16

._crit_edge548:                                   ; preds = %.lr.ph547
  %i.dr = icmp samesign ult i64 %indvars.iv650, 16
  %or.cond430 = and i1 %i.dr, %i.dp
  br i1 %or.cond430, label %bb.x, label %.critedge19

._crit_edge548.thread:                            ; preds = %bb.w
  br i1 %i.da, label %bb.aa, label %.critedge19

bb.x:                                             ; preds = %._crit_edge548
  %i.ds = getelementptr i8, ptr %16, i64 %indvars.iv.next651
  store i8 0, ptr %i.ds, align 1
  %i.dt = icmp eq i64 %indvars.iv650, 0
  br i1 %i.dt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.du = load i8, ptr %16, align 1
  %i.dv = sext i8 %i.du to i32
  %i.dw = add nsw i32 %i.dv, -48
  store i32 %i.dw, ptr %i.b, align 4
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.dx = call zeroext i1 @ws_strtoi32(ptr noundef %16, ptr noundef null, ptr noundef nonnull %i.b)
  br i1 %i.dx, label %bb.ab, label %.critedge19

bb.aa:                                            ; preds = %._crit_edge548.thread
  store i8 49, ptr %16, align 1
  %i.dy = getelementptr i8, ptr %16, i64 1
  store i8 0, ptr %i.dy, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.3.lcssa733743 = phi i32 [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.cq, %bb.aa ]
  %.lcssa504735741 = phi i32 [ %i.do, %bb.y ], [ %i.do, %bb.z ], [ %i.cz, %bb.aa ] ; 2 uses
  %.pn = phi i64 [ %i.df, %bb.y ], [ %i.df, %bb.z ], [ %i.cr, %bb.aa ]
  %i.dz = getelementptr i8, ptr %0, i64 %.pn
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = icmp eq i8 %i.ea, 44
  br i1 %i.eb, label %.preheader474.preheader, label %sub_0

.preheader474.preheader:                          ; preds = %bb.ab
  %i.ec = sext i32 %.lcssa504735741 to i64
  %i.ed = sext i32 %1 to i64
  %i.ee = add nsw i32 %.lcssa504735741, 1
  %smax656 = call i32 @llvm.smax.i32(i32 %1, i32 %i.ee)
  %i.ef = add nsw i32 %smax656, -1
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.preheader, %bb.ag
  %indvars.iv654 = phi i64 [ 0, %.preheader474.preheader ], [ %indvars.iv.next655, %bb.ag ] ; 6 uses
  %indvars.iv652 = phi i64 [ %i.ec, %.preheader474.preheader ], [ %indvars.iv.next653, %bb.ag ] ; 3 uses
  %i.eg = getelementptr i8, ptr %0, i64 %indvars.iv652
  %i.eh = load i8, ptr %i.eg, align 1             ; 4 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr [2 x i8], ptr %i.d, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = and i16 %i.ek, 8                        ; 2 uses
  %.not394 = icmp eq i16 %i.el, 0
  br i1 %.not394, label %bb.ac, label %bb.ad

end_hunk_0
begin_hunk_1_@write_timestamp_string:bb.a
  %i.ai = getelementptr i8, ptr %0, i64 2
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = urem i16 %.lhs.trunc102, 10
  %i.ak = trunc nuw nsw i16 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr i8, ptr %0, i64 3
  store i8 %i.al, ptr %i.am, align 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.an = icmp samesign ult i32 %1, 100000
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = udiv i32 %1, 10000
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  store i8 %i.aq, ptr %0, align 1
  %i.ar = urem i32 %1, 10000
  %.lhs.trunc114 = trunc nuw nsw i32 %i.ar to i16
  %i.as = udiv i16 %.lhs.trunc114, 1000
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = add nuw nsw i8 %i.at, 48
  %i.av = getelementptr i8, ptr %0, i64 1
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = urem i32 %1, 1000
  %.lhs.trunc116 = trunc nuw nsw i32 %i.aw to i16
  %i.ax = udiv i16 %.lhs.trunc116, 100
  %i.ay = trunc nuw nsw i16 %i.ax to i8
  %i.az = or disjoint i8 %i.ay, 48
  %i.ba = getelementptr i8, ptr %0, i64 2
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = urem i32 %1, 100
  %.lhs.trunc118 = trunc nuw nsw i32 %i.bb to i8
  %i.bc = udiv i8 %.lhs.trunc118, 10
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = getelementptr i8, ptr %0, i64 3
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = urem i32 %1, 10
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr i8, ptr %0, i64 4
  store i8 %i.bh, ptr %i.bi, align 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bj = icmp samesign ult i32 %1, 1000000
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = udiv i32 %1, 100000
  %i.bl = trunc nuw nsw i32 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, 48
  store i8 %i.bm, ptr %0, align 1
  %i.bn = urem i32 %1, 100000
  %i.bo = udiv i32 %i.bn, 10000
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %i.bq = or disjoint i8 %i.bp, 48
  %i.br = getelementptr i8, ptr %0, i64 1
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = urem i32 %1, 10000
  %.lhs.trunc120 = trunc nuw nsw i32 %i.bs to i16
  %i.bt = udiv i16 %.lhs.trunc120, 1000
  %i.bu = trunc nuw nsw i16 %i.bt to i8
  %i.bv = add nuw nsw i8 %i.bu, 48
  %i.bw = getelementptr i8, ptr %0, i64 2
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = urem i32 %1, 1000
  %.lhs.trunc122 = trunc nuw nsw i32 %i.bx to i16
  %i.by = udiv i16 %.lhs.trunc122, 100
  %i.bz = trunc nuw nsw i16 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr i8, ptr %0, i64 3
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = urem i32 %1, 100
  %.lhs.trunc124 = trunc nuw nsw i32 %i.cc to i8
  %i.cd = udiv i8 %.lhs.trunc124, 10
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = getelementptr i8, ptr %0, i64 4
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = urem i32 %1, 10
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = getelementptr i8, ptr %0, i64 5
  store i8 %i.ci, ptr %i.cj, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ck = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 21, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.25, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.j, %bb.f, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 5, %bb.j ], [ 6, %bb.l ]
  %i.cl = getelementptr i8, ptr %0, i64 %.0       ; 6 uses
  store i8 46, ptr %i.cl, align 1
  %i.cm = sdiv i32 %2, 1000
  %i.cn = trunc i32 %i.cm to i8
  %i.co = add i8 %i.cn, 48
  %i.cp = getelementptr i8, ptr %i.cl, i64 1
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = srem i32 %2, 1000
  %.lhs.trunc = trunc nsw i32 %i.cq to i16
  %i.cr = sdiv i16 %.lhs.trunc, 100
  %i.cs = trunc nsw i16 %i.cr to i8
  %i.ct = add nsw i8 %i.cs, 48
  %i.cu = getelementptr i8, ptr %i.cl, i64 2
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = srem i32 %2, 100
  %.lhs.trunc89 = trunc nsw i32 %i.cv to i8
  %i.cw = sdiv i8 %.lhs.trunc89, 10
  %i.cx = add nsw i8 %i.cw, 48
  %i.cy = getelementptr i8, ptr %i.cl, i64 3
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = srem i32 %2, 10
  %i.da = trunc nsw i32 %i.cz to i8
  %i.db = add nsw i8 %i.da, 48
  %i.dc = getelementptr i8, ptr %i.cl, i64 4
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = getelementptr i8, ptr %i.cl, i64 5
  store i8 0, ptr %i.dd, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @process_parsed_line(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i8 noundef zeroext %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15, i1 noundef zeroext %16, i32 noundef %17, ptr nofree noundef writeonly captures(none) %18, ptr nofree noundef writeonly captures(none) %19) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.b)
  %i.c = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.d = getelementptr i8, ptr %2, i64 216
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %2, i64 4
  store i32 1, ptr %i.e, align 4
  %i.f = load i64, ptr %1, align 8
  %i.g = sext i32 %5 to i64
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, %6                         ; 2 uses
  %i.m = icmp ugt i32 %i.l, 999999
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.h, 1
  store i64 %i.n, ptr %i.i, align 8
  %.pre = load i32, ptr %i.j, align 8
  %.pre109 = add i32 %.pre, %6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i32 [ %.pre109, %bb.b ], [ %i.l, %bb.a ]
  %i.o = urem i32 %.pre-phi, 1000000
  %i.p = mul nuw nsw i32 %i.o, 1000
  %i.q = getelementptr i8, ptr %2, i64 24
  store i32 %i.p, ptr %i.q, align 8
  %i.r = tail call i64 @strlen(ptr noundef %10) #19
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i64 @strlen(ptr noundef %7) #19
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i64 @strlen(ptr noundef %13) #19
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i64 @strlen(ptr noundef %14) #19
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i64 @strlen(ptr noundef %12) #19
  %i.aa = trunc i64 %i.z to i32
  %i.ab = sdiv i32 %17, 2                         ; 2 uses
  %i.ac = select i1 %16, i32 %17, i32 %i.ab
  %i.ad = add i32 %i.ac, 8
  %i.ae = add i32 %i.ad, %i.s
  %i.af = add i32 %i.ae, %i.u
  %i.ag = add i32 %i.af, %i.w
  %i.ah = add i32 %i.ag, %i.y
  %i.ai = add i32 %i.ah, %i.aa                    ; 4 uses
  %i.aj = getelementptr i8, ptr %2, i64 48        ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = icmp ult i32 %i.ai, 262145              ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -13, ptr %18, align 4
  %i.al = load i32, ptr %i.aj, align 8
  %i.am = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef %i.al, i32 noundef 262144)
  store ptr %i.am, ptr %19, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr i8, ptr %2, i64 52
  store i32 %i.ai, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %2, i64 264       ; 3 uses
  %i.ap = zext nneg i32 %i.ai to i64
  tail call void @ws_buffer_assure_space(ptr noundef %i.ao, i64 noundef %i.ap)
  %.val = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %2, i64 280
  %.val103 = load i64, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.val, i64 %.val103 ; 9 uses
  %i.as = tail call i64 @g_strlcpy(ptr noundef %i.ar, ptr noundef %10, i64 noundef 65)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 64) ; 2 uses
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  store i8 %11, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.av, i64 2
  %i.ay = tail call i64 @g_strlcpy(ptr noundef %i.ax, ptr noundef %7, i64 noundef 22)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 21)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nuw nsw i32 %i.au, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.ba            ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.ar, i64 %i.bd
  %i.bf = tail call i64 @g_strlcpy(ptr noundef %i.be, ptr noundef %12, i64 noundef 65)
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 64)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.bi, %i.bc            ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.ar, i64 %i.bk
  %i.bm = tail call i64 @g_strlcpy(ptr noundef %i.bl, ptr noundef %13, i64 noundef 17)
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 16)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 1
  %i.bq = add nuw nsw i32 %i.bp, %i.bj            ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.ar, i64 %i.br
  %i.bt = tail call i64 @g_strlcpy(ptr noundef %i.bs, ptr noundef %14, i64 noundef 257)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 256)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bv, 1
  %i.bx = add nuw nsw i32 %i.bw, %i.bq            ; 2 uses
  %i.by = trunc i32 %8 to i8
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr i8, ptr %i.ar, i64 %i.bz  ; 2 uses
  store i8 %i.by, ptr %i.ca, align 1
  %i.cb = trunc i32 %9 to i8
  %i.cc = add nuw nsw i32 %i.bx, 2                ; 4 uses
  %i.cd = getelementptr i8, ptr %i.ca, i64 1
  store i8 %i.cb, ptr %i.cd, align 1
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr i8, ptr %2, i64 288       ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, %i.ce                    ; 2 uses
  store i64 %i.ch, ptr %i.cf, align 8
  br i1 %16, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ci = icmp sgt i32 %17, 0
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cj = getelementptr i8, ptr %1, i64 232
  %i.ck = getelementptr i8, ptr %i.cj, i64 %4     ; 3 uses
  %i.cl = zext nneg i32 %17 to i64
  %i.cm = add nsw i64 %i.cl, -1                   ; 2 uses
  %i.cn = lshr i64 %i.cm, 1                       ; 2 uses
  %i.co = add nuw i64 %i.cn, 1                    ; 2 uses
  %i.cp = icmp eq i64 %i.cn, 0
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.co, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.cq = getelementptr i8, ptr %i.ck, i64 %indvars.iv ; 2 uses
  %.val104 = load i8, ptr %i.cq, align 1
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  %.val105 = load i8, ptr %i.cr, align 1
  %i.cs = zext i8 %.val104 to i64
  %i.ct = getelementptr [256 x i8], ptr @s_tableValues, i64 %i.cs
  %i.cu = zext i8 %.val105 to i64
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = lshr exact i32 %i.cx, 1
  %i.cz = add nuw nsw i32 %i.cy, %i.cc
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr i8, ptr %i.ar, i64 %i.da
  store i8 %i.cw, ptr %i.db, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ck, i64 %indvars.iv.next ; 2 uses
  %.val104.1 = load i8, ptr %i.dc, align 1
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  %.val105.1 = load i8, ptr %i.dd, align 1
  %i.de = zext i8 %.val104.1 to i64
  %i.df = getelementptr [256 x i8], ptr @s_tableValues, i64 %i.de
  %i.dg = zext i8 %.val105.1 to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dk = lshr exact i32 %i.dj, 1
  %i.dl = add nuw nsw i32 %i.dk, %i.cc
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.ar, i64 %i.dm
  store i8 %i.di, ptr %i.dn, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !29

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %i.do = and i64 %i.cm, 2
  %lcmp.mod.not.not = icmp eq i64 %i.do, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.loopexit

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i64 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.dp = getelementptr i8, ptr %i.ck, i64 %indvars.iv.epil.init ; 2 uses
  %.val104.epil = load i8, ptr %i.dp, align 1
  %i.dq = getelementptr i8, ptr %i.dp, i64 1
  %.val105.epil = load i8, ptr %i.dq, align 1
  %i.dr = zext i8 %.val104.epil to i64
  %i.ds = getelementptr [256 x i8], ptr @s_tableValues, i64 %i.dr
  %i.dt = zext i8 %.val105.epil to i64
  %i.du = getelementptr i8, ptr %i.ds, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.dx = lshr exact i32 %i.dw, 1
  %i.dy = add nuw nsw i32 %i.dx, %i.cc
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr i8, ptr %i.ar, i64 %i.dz
  store i8 %i.dv, ptr %i.ea, align 1
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.pre108 = load i64, ptr %i.cf, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eb = phi i64 [ %.pre108, %._crit_edge.loopexit ], [ %i.ch, %.preheader ]
  %i.ec = sext i32 %i.ab to i64
  %i.ed = add i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.cf, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ee = getelementptr i8, ptr %1, i64 232
  %i.ef = getelementptr i8, ptr %i.ee, i64 %4
  %i.eg = sext i32 %17 to i64
  tail call void @ws_buffer_append(ptr noundef %i.ao, ptr noundef %i.ef, i64 noundef %i.eg)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.eh = getelementptr i8, ptr %2, i64 64        ; 3 uses
  %i.ei = getelementptr i8, ptr %2, i64 96
  store i64 %3, ptr %i.ei, align 8
  %i.ej = getelementptr i8, ptr %2, i64 104
  store ptr %0, ptr %i.ej, align 8
  switch i32 %9, label %bb.n [
    i32 14, label %bb.i
    i32 17, label %bb.l
    i32 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.eh, align 8
  %i.ek = icmp eq i32 %8, 1
  %i.el = zext i1 %i.ek to i16
  %i.em = getelementptr i8, ptr %2, i64 78
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr i8, ptr %2, i64 68
  store i8 2, ptr %i.en, align 4
  %i.eo = getelementptr i8, ptr %2, i64 69
  store i8 8, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %2, i64 70
  store i8 0, ptr %i.ep, align 2
  %i.eq = getelementptr i8, ptr %15, i64 1
  %.val19.i = load i8, ptr %i.eq, align 1
  %i.er = getelementptr i8, ptr %15, i64 2
  %.val20.i = load i8, ptr %i.er, align 1
  %i.es = zext i8 %.val19.i to i64
  %i.et = getelementptr [256 x i8], ptr @s_tableValues, i64 %i.es
  %i.eu = zext i8 %.val20.i to i64
  %i.ev = getelementptr i8, ptr %i.et, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i16
  %i.ey = getelementptr i8, ptr %2, i64 72
  store i16 %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr i8, ptr %15, i64 3
  %i.fa = load <4 x i8>, ptr %i.ez, align 1       ; 4 uses
  %i.fb = add <4 x i8> %i.fa, splat (i8 -48)
  %i.fc = add <4 x i8> %i.fa, <i8 0, i8 -48, i8 -48, i8 -48>
  %i.fd = icmp ult <4 x i8> %i.fb, splat (i8 10)
  %i.fe = add <4 x i8> %i.fa, splat (i8 -97)
  %i.ff = icmp ult <4 x i8> %i.fe, splat (i8 6)
  %i.fg = add <4 x i8> %i.fa, <i8 9, i8 -87, i8 -87, i8 -87>
  %i.fh = select <4 x i1> %i.ff, <4 x i8> %i.fg, <4 x i8> <i8 15, i8 -1, i8 -1, i8 -1>
  %i.fi = select <4 x i1> %i.fd, <4 x i8> %i.fc, <4 x i8> %i.fh ; 3 uses
  %i.fj = extractelement <4 x i8> %i.fi, i64 0
  %i.fk = zext i8 %i.fj to i16
  %i.fl = shl i16 %i.fk, 12
  %i.fm = shufflevector <4 x i8> %i.fi, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  %i.fn = zext <2 x i8> %i.fm to <2 x i16>
  %i.fo = shl nuw <2 x i16> %i.fn, <i16 8, i16 4> ; 2 uses
  %i.fp = extractelement <2 x i16> %i.fo, i64 0
  %i.fq = or i16 %i.fp, %i.fl
  %i.fr = extractelement <2 x i16> %i.fo, i64 1
  %i.fs = or i16 %i.fq, %i.fr
  %i.ft = extractelement <4 x i8> %i.fi, i64 3
  %i.fu = zext i8 %i.ft to i16
  %i.fv = or i16 %i.fs, %i.fu
  %i.fw = getelementptr i8, ptr %2, i64 74
  store i16 %i.fv, ptr %i.fw, align 2
  %i.fx = getelementptr i8, ptr %2, i64 80
  store i16 0, ptr %i.fx, align 8
  %i.fy = load ptr, ptr @g_ascii_table, align 8
  %i.fz = getelementptr i8, ptr %15, i64 11
  %i.ga = load i8, ptr %i.fz, align 1             ; 2 uses
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  %i.gc = getelementptr [2 x i8], ptr %i.fy, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2
  %i.ge = and i16 %i.gd, 1
  %.not.i = icmp eq i16 %i.ge, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gf = getelementptr i8, ptr %15, i64 10
  %.val.i = load i8, ptr %i.gf, align 1
  %i.gg = zext i8 %.val.i to i64
  %i.gh = getelementptr [256 x i8], ptr @s_tableValues, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gb
  %i.gj = load i8, ptr %i.gi, align 1
  br label %set_aal_info.exit

bb.k:                                             ; preds = %bb.i
  %i.gk = add i8 %i.ga, -48
  br label %set_aal_info.exit

set_aal_info.exit:                                ; preds = %bb.j, %bb.k
  %.sink.i = phi i8 [ %i.gk, %bb.k ], [ %i.gj, %bb.j ]
  %i.gl = getelementptr i8, ptr %2, i64 76
  store i8 %.sink.i, ptr %i.gl, align 4
  br label %bb.n
end_hunk_1
