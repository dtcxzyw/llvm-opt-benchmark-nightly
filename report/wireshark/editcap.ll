Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/editcap?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@handle_chopping:bb.a
  %i.ak = phi i32 [ %i.af, %bb.k ], [ %i.b, %bb.j ], [ %i.b, %bb.i ]
  %i.al = phi i32 [ %i.ah, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ] ; 6 uses
  %i.am = phi i32 [ %i.ae, %bb.k ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 5 uses
  %i.an = sub i32 %i.am, %i.al
  %i.ao = icmp ult i32 %.pre.pre.pre, %i.an       ; 2 uses
  %spec.select = select i1 %i.ao, i32 0, i32 %i.aj ; 2 uses
  %spec.select65 = select i1 %i.ao, i32 0, i32 %i.ak ; 2 uses
  %i.ap = sub i32 %spec.select65, %spec.select
  %.neg = sub i32 %i.al, %i.am
  %i.aq = add i32 %.neg, %.pre.pre.pre            ; 2 uses
  %i.ar = icmp ugt i32 %i.ap, %i.aq               ; 2 uses
  %i.as = select i1 %i.ar, i32 0, i32 %spec.select ; 4 uses
  %i.at = select i1 %i.ar, i32 %i.aq, i32 %spec.select65 ; 6 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.av = icmp sgt i32 %i.am, 0
  %i.aw = getelementptr i8, ptr %1, i64 264       ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val43 = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %1, i64 280
  %.val44 = load i64, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.val43, i64 %.val44
  %i.az = zext nneg i32 %i.am to i64
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az  ; 2 uses
  %i.bb = zext nneg i32 %i.at to i64
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  %i.bd = add nuw i32 %i.am, %i.at
  %i.be = sub i32 %.pre.pre.pre, %i.bd
  %i.bf = zext i32 %i.be to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.ba, ptr noundef align 1 %i.bc, i64 noundef range(i64 -2147483648, 4294967296) %i.bf, i1 noundef false) #18
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bg = zext nneg i32 %i.at to i64
  tail call void @ws_buffer_remove_start(ptr noundef %i.aw, i64 noundef %i.bg)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = load i32, ptr %i.a, align 8
  %i.bi = sub i32 %i.bh, %i.at                    ; 3 uses
  store i32 %i.bi, ptr %i.a, align 8
  br i1 %2, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %.sink = tail call i32 @llvm.usub.sat.i32(i32 %i.bk, i32 %i.at)
  store i32 %.sink, ptr %i.bj, align 4
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o, %._crit_edge
  %i.bl = phi i32 [ %i.bi, %bb.o ], [ %.pre.pre.pre, %._crit_edge ], [ %i.bi, %.sink.split ] ; 2 uses
  %i.bm = icmp slt i32 %i.as, 0
  br i1 %i.bm, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp slt i32 %i.al, 0
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %1, i64 280
  %.val42 = load i64, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %.val, i64 %.val42
  %i.br = sext i32 %i.bl to i64
  %i.bs = getelementptr i8, ptr %i.bq, i64 %i.br  ; 2 uses
  %i.bt = add i32 %i.as, %i.al
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.bs, i64 %i.bu
  %i.bw = sext i32 %i.al to i64
  %i.bx = getelementptr i8, ptr %i.bs, i64 %i.bw
  %i.by = sub i32 0, %i.al
  %i.bz = sext i32 %i.by to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.bv, ptr noundef align 1 %i.bx, i64 noundef range(i64 -2147483648, 4294967296) %i.bz, i1 noundef false) #18
  %.pre54 = load i32, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = phi i32 [ %.pre54, %bb.r ], [ %i.bl, %bb.q ]
  %i.cb = add i32 %i.ca, %i.as
  store i32 %i.cb, ptr %i.a, align 8
  br i1 %2, label %.sink.split66, label %bb.t

.sink.split66:                                    ; preds = %bb.s
  %i.cc = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add i32 %i.cd, %i.as
  %. = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  store i32 %., ptr %i.cc, align 4
  br label %bb.t

bb.t:                                             ; preds = %.sink.split66, %bb.s, %bb.p
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @set_unused_info(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %sll_set_unused_info.exit [
    i32 25, label %bb.b
    i32 210, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 264
  %.val4 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 280
  %.val5 = load i64, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val4, i64 %.val5 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val.i = load i8, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %i.e, i64 5
  %.val6.i = load i8, ptr %i.g, align 1
  %i.h = zext i8 %.val.i to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = zext i8 %.val6.i to i16
  %i.k = or disjoint i16 %i.i, %i.j               ; 3 uses
  %i.l = icmp ult i16 %i.k, 8
  br i1 %i.l, label %bb.c, label %sll_set_unused_info.exit

bb.c:                                             ; preds = %bb.b
  %narrow.i = sub nuw nsw i16 8, %i.k
  %i.m = getelementptr i8, ptr %i.e, i64 6
  %i.n = zext nneg i16 %i.k to i64
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n
  %i.p = zext nneg i16 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.o, i8 noundef 0, i64 noundef range(i64 1, 297) %i.p, i1 noundef false) #18
  br label %sll_set_unused_info.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 280
  %.val3 = load i64, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val, i64 %.val3  ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 11
  %i.u = load i8, ptr %i.t, align 1               ; 3 uses
  %i.v = icmp ult i8 %i.u, 8
  br i1 %i.v, label %bb.e, label %sll_set_unused_info.exit

bb.e:                                             ; preds = %bb.d
  %narrow.i6 = sub nuw nsw i8 8, %i.u
  %i.w = getelementptr i8, ptr %i.s, i64 12
  %i.x = zext nneg i8 %i.u to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = zext nneg i8 %narrow.i6 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.y, i8 noundef 0, i64 noundef range(i64 1, 297) %i.z, i1 noundef false) #18
  br label %sll_set_unused_info.exit

sll_set_unused_info.exit:                         ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define internal fastcc void @remove_vlan_info(ptr nofree noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %cond = icmp eq i32 %i.b, 25
  br i1 %cond, label %bb.b, label %sll_remove_vlan_info.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 280
  %.val3 = load i64, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val, i64 %.val3  ; 3 uses
  %i.g = load i32, ptr %i.c, align 8              ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.h, i64 14) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.j, label %sll_remove_vlan_info.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.f, i64 14       ; 2 uses
  %.val.i = load i8, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %i.f, i64 15
  %.val10.i = load i8, ptr %i.n, align 1
  %i.o = zext i8 %.val.i to i16
  %i.p = shl nuw i16 %i.o, 8
  %i.q = zext i8 %.val10.i to i16
  %i.r = or disjoint i16 %i.p, %i.q
  %i.s = icmp eq i16 %i.r, -32512
  br i1 %i.s, label %bb.d, label %sll_remove_vlan_info.exit

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i32 %i.l, 5
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sub i32 %i.g, %i.l
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.v = add nsw i64 %i.k, 4294967292
  %i.w = getelementptr i8, ptr %i.f, i64 18
  %i.x = and i64 %i.v, 4294967295
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.w, i64 noundef range(i64 -2147483648, 4294967296) %i.x, i1 noundef false) #18
  %i.y = load i32, ptr %i.c, align 8
  %i.z = add i32 %i.y, -4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  %.sink.i = phi i32 [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  store i32 %.sink.i, ptr %i.c, align 8
  br label %sll_remove_vlan_info.exit

sll_remove_vlan_info.exit:                        ; preds = %.sink.split.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @is_duplicate(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 280
  %.val30 = load i64, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 %.val30 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = load i32, ptr @ignored_bytes, align 4    ; 2 uses
  %.not = icmp ugt i32 %i.e, %i.f
  %spec.select = select i1 %.not, i32 %i.f, i32 0
  %.b = load i1, ptr @skip_radiotap, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 2
  %.val31 = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.val31 to i32                  ; 2 uses
  %.not27 = icmp ugt i32 %i.e, %i.h
  %spec.store.select = select i1 %.not27, i32 %i.h, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %spec.store.select, %bb.b ], [ %spec.select, %bb.a ] ; 2 uses
  %i.i = zext i32 %.1 to i64
  %i.j = getelementptr i8, ptr %i.c, i64 %i.i
  %i.k = sub i32 %i.e, %.1
  %i.l = load i32, ptr @cur_dup_entry, align 4
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = load i32, ptr @dup_window, align 4
  %.not28 = icmp ult i32 %i.m, %i.n
  %spec.store.select1 = select i1 %.not28, i32 %i.m, i32 0 ; 2 uses
  store i32 %spec.store.select1, ptr @cur_dup_entry, align 4
  %i.o = zext i32 %spec.store.select1 to i64
  %i.p = getelementptr [40 x i8], ptr @fd_hash, i64 %i.o
  %i.q = zext i32 %i.k to i64
  tail call void @gcry_md_hash_buffer(i32 noundef 1, ptr noundef %i.p, ptr noundef %i.j, i64 noundef %i.q)
  %i.r = load i32, ptr @cur_dup_entry, align 4
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr [40 x i8], ptr @fd_hash, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i32 %i.e, ptr %i.u, align 8
  %i.v = load i32, ptr @dup_window, align 4       ; 2 uses
  %.not2933.not = icmp eq i32 %i.v, 0
  br i1 %.not2933.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.w = icmp eq i64 %indvars.iv, %i.s
  br i1 %i.w, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr [40 x i8], ptr @fd_hash, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.z, %i.e
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load i128, ptr %i.x, align 1
  %i.ac = load i128, ptr %i.t, align 1
  %i.ad = icmp ne i128 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !44

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.c
  %.not29.lcssa = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.e ]
  ret i1 %.not29.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @is_duplicate_rel_time(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 280
  %.val30 = load i64, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 %.val30
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = load i32, ptr @ignored_bytes, align 4    ; 2 uses
  %.not = icmp ugt i32 %i.e, %i.f
  %spec.select = select i1 %.not, i32 %i.f, i32 0 ; 2 uses
  %i.g = zext i32 %spec.select to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  %i.i = sub i32 %i.e, %spec.select
  %i.j = load i32, ptr @cur_dup_entry, align 4
  %i.k = add i32 %i.j, 1                          ; 2 uses
  %i.l = load i32, ptr @dup_window, align 4
  %.not29 = icmp ult i32 %i.k, %i.l
  %spec.store.select = select i1 %.not29, i32 %i.k, i32 0 ; 2 uses
  store i32 %spec.store.select, ptr @cur_dup_entry, align 4
  %i.m = zext i32 %spec.store.select to i64
  %i.n = getelementptr [40 x i8], ptr @fd_hash, i64 %i.m
  %i.o = zext i32 %i.i to i64
  tail call void @gcry_md_hash_buffer(i32 noundef 1, ptr noundef %i.n, ptr noundef %i.h, i64 noundef %i.o)
  %i.p = load i32, ptr @cur_dup_entry, align 4    ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr [40 x i8], ptr @fd_hash, i64 %i.q ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store i32 %i.e, ptr %i.s, align 8
  %i.t = load i64, ptr %1, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 24
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.r, i64 32
  store i32 %i.w, ptr %i.x, align 8
  %.02535 = add i32 %i.p, -1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.y = icmp slt i32 %.02535, 0
  %i.z = load i32, ptr @dup_window, align 4
  %i.aa = add i32 %i.z, -1
  %.136 = select i1 %i.y, i32 %i.aa, i32 %.02535  ; 2 uses
  %i.ab = icmp eq i32 %.136, %i.p
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.137 = phi i32 [ %.136, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %i.ad = sext i32 %.137 to i64
  %i.ae = getelementptr [40 x i8], ptr @fd_hash, i64 %i.ad ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24     ; 2 uses
  %i.ag = call zeroext i1 @nstime_is_unset(ptr noundef %i.af)
  br i1 %i.ag, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @nstime_delta(ptr noundef nonnull %2, ptr noundef %1, ptr noundef %i.af)
  %i.ah = load i64, ptr %2, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  %i.aj = load i32, ptr %i.ac, align 8
  %i.ak = icmp slt i32 %i.aj, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond, label %._crit_edge40, label %bb.d

._crit_edge40:                                    ; preds = %bb.c
  %.pre = load i32, ptr @cur_dup_entry, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.al = call i32 @nstime_cmp(ptr noundef nonnull %2, ptr noundef @relative_time_window)
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ae, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = load i32, ptr @cur_dup_entry, align 4   ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr [40 x i8], ptr @fd_hash, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.ao, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = load i128, ptr %i.ae, align 1
  %i.aw = load i128, ptr %i.ar, align 1
  %i.ax = icmp ne i128 %i.av, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %._crit_edge40, %bb.f, %bb.e
end_hunk_0
