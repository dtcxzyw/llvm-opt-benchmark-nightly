Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/csr?download=true
inline.NumInlined: 447
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@write_vsatp:bb.a

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.z) #16
  br label %legalize_xatp.exit

legalize_xatp.exit:                               ; preds = %bb.j, %bb.k
  %.016.i = phi i64 [ %2, %bb.k ], [ %i.b, %bb.j ]
  store i64 %.016.i, ptr %i.a, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @any(ptr nofree readnone captures(none) %0, i32 %1) #9 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_mstatus(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = and i64 %i.b, 24576
  %i.d = icmp eq i64 %i.c, 24576
  %i.e = and i64 %i.b, 1536
  %i.f = icmp eq i64 %i.e, 1536
  %or.cond.i = or i1 %i.d, %i.f
  %i.g = and i64 %i.b, 98304
  %i.h = icmp eq i64 %i.g, 98304
  %or.cond10.i = or i1 %i.h, %or.cond.i
  br i1 %or.cond10.i, label %bb.b, label %add_status_sd.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.i, align 16
  switch i32 %.val, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %add_status_sd.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = or i64 %i.b, 2147483648
  br label %add_status_sd.exit

bb.d:                                             ; preds = %bb.b
  %i.k = or i64 %i.b, -9223372036854775808
  br label %add_status_sd.exit

bb.e:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1935, ptr noundef nonnull @__func__.add_status_sd, ptr noundef null) #15
  unreachable

add_status_sd.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ -9223372036854775808, %bb.b ], [ %i.b, %bb.a ]
  store i64 %.0.i, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_mstatus(ptr noundef %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 4960       ; 3 uses
  %.val = load i32, ptr %i.c, align 16
  %i.d = and i64 %i.b, 6144
  %i.e = lshr i64 %2, 11
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 3, label %legalize_mpp.exit
    i64 1, label %bb.b
    i64 0, label %.split.i
    i64 2, label %.critedge.i
  ]

.split.i:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 4964
  %.val.i = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val.i, 1048576
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.critedge.i, label %legalize_mpp.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 4964
  %.val10.i = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val10.i, 262144
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %.critedge.i, label %legalize_mpp.exit

.critedge.i:                                      ; preds = %bb.b, %.split.i, %bb.a
  %i.k = and i64 %2, -6145
  %i.l = or disjoint i64 %i.d, %i.k
  br label %legalize_mpp.exit

legalize_mpp.exit:                                ; preds = %bb.a, %.split.i, %bb.b, %.critedge.i
  %.07.i = phi i64 [ %2, %bb.b ], [ %i.l, %.critedge.i ], [ %2, %bb.a ], [ %2, %.split.i ] ; 5 uses
  %i.m = xor i64 %.07.i, %i.b
  %i.n = and i64 %i.m, 524288
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %legalize_mpp.exit
  %i.o = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.o) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %legalize_mpp.exit
  %i.p = getelementptr i8, ptr %0, i64 4964
  %.val49 = load i32, ptr %i.p, align 4
  %i.q = and i32 %.val49, 32
  %.not40 = icmp eq i32 %i.q, 0
  %spec.select = select i1 %.not40, i64 8264106, i64 8288682 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 15722
  %i.s = load i8, ptr %i.r, align 2, !range !12, !noundef !13
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = or disjoint i64 %spec.select, 1536
  %.1 = select i1 %i.t, i64 %i.u, i64 %spec.select ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.w = load i8, ptr %i.v, align 16, !range !12, !noundef !13
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = tail call zeroext i1 @riscv_env_smode_dbltrp_enabled(ptr noundef nonnull %0, i1 noundef zeroext %i.x) #16
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or disjoint i64 %.1, 16777216
  %i.aa = and i64 %.07.i, 16777216
  %.not41 = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.07.i, -3
  %spec.select45 = select i1 %.not41, i64 %.07.i, i64 %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.037 = phi i64 [ %.07.i, %bb.d ], [ %spec.select45, %bb.e ] ; 4 uses
  %.2 = phi i64 [ %.1, %bb.d ], [ %i.z, %bb.e ]   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 15697
  %i.ad = load i8, ptr %i.ac, align 1, !range !12, !noundef !13
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = or i64 %.2, 4398046511104
  %i.ag = and i64 %.037, 4398046511104
  %.not42 = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %.037, -9
  %spec.select46 = select i1 %.not42, i64 %.037, i64 %i.ah
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.138 = phi i64 [ %.037, %bb.f ], [ %spec.select46, %bb.g ] ; 6 uses
  %.3 = phi i64 [ %.2, %bb.f ], [ %i.af, %bb.g ]  ; 3 uses
  %.not43 = icmp eq i32 %.val, 1
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 15352
  %i.aj = load i8, ptr %i.ai, align 8, !range !12, !noundef !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = and i64 %.138, 12884901888              ; 2 uses
  %.not44 = icmp ne i64 %i.al, 0
  %or.cond.not = select i1 %i.ak, i1 %.not44, i1 false
  br i1 %or.cond.not, label %bb.k, label %riscv_write_uxl.exit

bb.j:                                             ; preds = %bb.h
  %.old = and i64 %.138, 12884901888              ; 2 uses
  %.not44.old = icmp eq i64 %.old, 0
  br i1 %.not44.old, label %riscv_write_uxl.exit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.al, %bb.i ], [ %.old, %bb.j ]
  %i.am = or i64 %.3, 12884901888                 ; 2 uses
  %i.an = icmp eq i64 %.pre-phi, 12884901888
  br i1 %i.an, label %bb.l, label %riscv_write_uxl.exit

bb.l:                                             ; preds = %bb.k
  %.val50 = load i32, ptr %i.c, align 16          ; 2 uses
  %i.ao = icmp eq i32 %.val50, 3
  %i.ap = select i1 %i.ao, i32 2, i32 %.val50
  %i.aq = zext i32 %i.ap to i64
  %i.ar = and i64 %.138, -12884901889
  %i.as = shl nuw i64 %i.aq, 32
  %i.at = and i64 %i.as, 12884901888
  %i.au = or disjoint i64 %i.at, %i.ar
  br label %riscv_write_uxl.exit

riscv_write_uxl.exit:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.239 = phi i64 [ %.138, %bb.i ], [ %.138, %bb.j ], [ %i.au, %bb.l ], [ %.138, %bb.k ]
  %.4 = phi i64 [ %.3, %bb.i ], [ %.3, %bb.j ], [ %i.am, %bb.l ], [ %i.am, %bb.k ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 15679
  %i.aw = load i8, ptr %i.av, align 1, !range !12, !noundef !13
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = or i64 %.4, 2199031644160
  %spec.select48 = select i1 %i.ax, i64 %i.ay, i64 %.4 ; 2 uses
  %i.az = xor i64 %spec.select48, -1
  %i.ba = and i64 %i.b, %i.az
  %i.bb = and i64 %spec.select48, %.239
  %i.bc = or i64 %i.ba, %i.bb                     ; 3 uses
  store i64 %i.bc, ptr %i.a, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 15352
  %i.be = load i8, ptr %i.bd, align 8, !range !12, !noundef !13
  %i.bf = trunc nuw i8 %i.be to i1
  %4 = lshr i64 %i.bc, 32
  %5 = trunc nuw i64 %4 to i32
  br i1 %i.bf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %riscv_write_uxl.exit
  %i.bg = load i32, ptr %i.c, align 16            ; 2 uses
  %.not.i.i = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i, label %cpu_recompute_xl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5017
  %i.bi = load i8, ptr %i.bh, align 1
  switch i8 %i.bi, label %.sink.split.i.i [
    i8 3, label %cpu_recompute_xl.exit
    i8 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %6 = and i32 %5, 3
  br label %cpu_recompute_xl.exit

.sink.split.i.i:                                  ; preds = %bb.n
  %i.bj = lshr i64 %i.bc, 34
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 3
  br label %cpu_recompute_xl.exit

cpu_recompute_xl.exit:                            ; preds = %bb.m, %bb.n, %bb.o, %.sink.split.i.i
  %.0.i.i = phi i32 [ %i.bl, %.sink.split.i.i ], [ %i.bg, %bb.n ], [ %6, %bb.o ], [ 1, %bb.m ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4972
  store i32 %.0.i.i, ptr %i.bm, align 4
  br label %bb.p

bb.p:                                             ; preds = %cpu_recompute_xl.exit, %riscv_write_uxl.exit
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mstatus_i128(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #7 {
add_status_sd.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = and i64 %i.b, 24576
  %i.d = icmp eq i64 %i.c, 24576
  %i.e = and i64 %i.b, 1536
  %i.f = icmp eq i64 %i.e, 1536
  %or.cond.i = or i1 %i.d, %i.f
  %i.g = and i64 %i.b, 98304
  %i.h = icmp eq i64 %i.g, 98304
  %or.cond10.i = or i1 %i.h, %or.cond.i
  %i.i = zext i64 %i.b to i128                    ; 2 uses
  %i.j = shl nuw i128 %i.i, 64
  %i.k = select i1 %or.cond10.i, i128 -170141183460469231731687303715884105728, i128 %i.j
  %i.l = or disjoint i128 %i.k, %i.i
  store i128 %i.l, ptr %2, align 16
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_misa(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4960
  %i.b = load i32, ptr %i.a, align 16
  switch i32 %i.b, label %bb.c [
    i32 1, label %bb.d
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2150, ptr noundef nonnull @__func__.read_misa, ptr noundef null) #15
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ -9223372036854775808, %bb.b ], [ 1073741824, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = or i64 %.0, %i.e
  store i64 %i.f, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_misa(ptr noundef %0, i32 %1, i64 noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16496 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4964 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 15792
  %i.g = load i8, ptr %i.f, align 8, !range !12, !noundef !13
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4968
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = and i64 %2, %i.k                         ; 4 uses
  %i.m = and i64 %i.l, 4
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !annotation !15
  %i.o = call zeroext i1 @cpu_unwind_state_data(ptr noundef nonnull %i.c, i64 noundef %3, ptr noundef nonnull %i.a) #16
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.q = load i64, ptr %i.p, align 8
  br label %get_next_pc.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 3
  %i.v = icmp eq i64 %i.u, 3
  %i.w = select i1 %i.v, i64 4, i64 2
  %i.x = add i64 %i.w, %i.r
  br label %get_next_pc.exit

get_next_pc.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.y = and i64 %.0.i, 3
  %.not29 = icmp eq i64 %i.y, 0
  %i.z = and i64 %i.l, 4294967291
  %spec.select = select i1 %.not29, i64 %i.l, i64 %i.z
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %get_next_pc.exit, %bb.b
  %i.aa = phi i32 [ %i.e, %bb.b ], [ %.pre, %get_next_pc.exit ]
  %.028 = phi i64 [ %i.l, %bb.b ], [ %spec.select, %get_next_pc.exit ] ; 3 uses
  %i.ab = and i64 %.028, 4393
  %or.cond39.not = icmp eq i64 %i.ab, 4393
  %i.ac = and i64 %.028, -65
  %.1 = select i1 %or.cond39.not, i64 %.028, i64 %i.ac ; 2 uses
  %i.ad = zext i32 %i.aa to i64
  %i.ae = icmp eq i64 %.1, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = trunc nuw i64 %.1 to i32
  store i32 %i.af, ptr %i.d, align 4
  call void @riscv_cpu_validate_set_extensions(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #16
  %i.ag = load ptr, ptr %i.b, align 8
  %.not35 = icmp eq ptr %i.ag, null
  br i1 %.not35, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 2048
  %.not40 = icmp eq i32 %i.ai, 0
  br i1 %.not40, label %bb.k, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.d, align 4
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.439, i32 noundef %i.aj, i32 noundef %i.e) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.e, ptr %i.d, align 4
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = and i32 %i.ak, 32
  %.not36 = icmp eq i32 %i.al, 0
  br i1 %.not36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, -24577
  store i64 %i.ao, ptr %i.am, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4972
  store i32 %.val, ptr %i.aq, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.a, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_misa_i128(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i128
  %i.d = or disjoint i128 %i.c, -85070591730234615865843651857942052864
  store i128 %i.d, ptr %2, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_medeleg(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5144
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_medeleg(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5144 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -16037888
end_hunk_0
