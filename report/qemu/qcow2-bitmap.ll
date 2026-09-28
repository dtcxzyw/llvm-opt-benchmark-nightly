Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2-bitmap?download=true
inline.NumInlined: 80
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qcow2_get_persistent_dirty_bitmap_size:bb.a
}

declare i64 @bdrv_dirty_bitmap_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @bdrv_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

declare i64 @bdrv_getlength(ptr noundef) #2

declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_try_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @bdrv_create_dirty_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @load_bitmap_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call i64 @bdrv_dirty_bitmap_size(ptr noundef %3) #13 ; 2 uses
  %i.d = tail call i64 @bdrv_dirty_bitmap_serialization_size(ptr noundef %3, i64 noundef 0, i64 noundef %i.c) #13
  %.val = load i32, ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %.val56 = load i32, ptr %i.e, align 4           ; 2 uses
  %i.f = add i32 %.val56, -1
  %i.g = sext i32 %i.f to i64
  %i.h = add i64 %i.d, %i.g
  %i.i = zext nneg i32 %.val to i64
  %i.j = lshr i64 %i.h, %i.i                      ; 4 uses
  %i.k = zext i32 %2 to i64
  %i.l = icmp ne i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.j, 134217728
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %.val56 to i64
  %i.o = tail call noalias ptr @g_malloc(i64 noundef %i.n) #14 ; 3 uses
  %i.p = load i32, ptr %i.e, align 4
  %i.q = tail call i64 @bdrv_dirty_bitmap_serialization_coverage(i32 noundef %i.p, ptr noundef %3) #13 ; 2 uses
  %.not64 = icmp eq i64 %i.j, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.05063 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.k ] ; 2 uses
  %.05162 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.k ] ; 4 uses
  %i.v = sub i64 %i.c, %.05162
  %i.w = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.q) ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05063
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = and i64 %i.y, 72057594037927424          ; 3 uses
  %i.aa = load i32, ptr %i.e, align 4
  %i.ab = and i64 %i.y, -72057594037927426
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not8.i = icmp eq i64 %i.z, 0
  br i1 %.not8.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i64 %i.y, 1
  %.not9.i = icmp eq i64 %i.ac, 0
  br i1 %.not9.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = sext i32 %i.aa to i64                   ; 3 uses
  %i.ae = urem i64 %i.z, %i.ad
  %.not10.i = icmp eq i64 %i.ae, 0
  br i1 %.not10.i, label %check_table_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @__PRETTY_FUNCTION__.load_bitmap_data) #15
  unreachable

bb.h:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @bdrv_dirty_bitmap_deserialize_ones(ptr noundef %3, i64 noundef %.05162, i64 noundef %i.w, i1 noundef zeroext false) #13
  br label %bb.k

check_table_entry.exit:                           ; preds = %bb.f
  %i.af = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.s, ptr %4, align 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.t, align 8
  store ptr %i.o, ptr %i.s, align 8
  store i64 %i.ad, ptr %i.u, align 8
  call void @assert_bdrv_graph_readable() #13
  %i.ag = call i32 @bdrv_co_preadv(ptr noundef %i.af, i64 noundef %i.z, i64 noundef %i.ad, ptr noundef nonnull %4, i32 noundef 0) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %check_table_entry.exit
  call void @bdrv_dirty_bitmap_deserialize_part(ptr noundef %3, ptr noundef %i.o, i64 noundef %.05162, i64 noundef %i.w, i1 noundef zeroext false) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  %i.ai = add nuw i64 %.05063, 1                  ; 2 uses
  %i.aj = add i64 %.05162, %i.q
  %exitcond.not = icmp eq i64 %i.ai, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.k, %bb.b
  call void @bdrv_dirty_bitmap_deserialize_finish(ptr noundef %3) #13
  br label %.loopexit

.loopexit:                                        ; preds = %check_table_entry.exit, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %i.ag, %check_table_entry.exit ]
  call void @g_free(ptr noundef %i.o) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.0 = phi i32 [ %.3, %.loopexit ], [ -22, %bb.a ]
  ret i32 %.0
}

declare i64 @bdrv_dirty_bitmap_serialization_size(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

declare i64 @bdrv_dirty_bitmap_serialization_coverage(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bdrv_dirty_bitmap_deserialize_ones(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i32 @bdrv_co_pread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #9 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.c, align 8
  call void @assert_bdrv_graph_readable() #13
  %i.d = call i32 @bdrv_co_preadv(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %i.d
}

declare void @bdrv_dirty_bitmap_deserialize_part(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @bdrv_dirty_bitmap_deserialize_finish(ptr noundef) local_unnamed_addr #2

declare void @assert_bdrv_graph_readable() local_unnamed_addr #2

declare i32 @bdrv_co_preadv(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare zeroext i1 @bdrv_is_read_only(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @bitmap_list_store(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %.069101 = load ptr, ptr %1, align 8            ; 2 uses
  %.not81102 = icmp eq ptr %.069101, null
  br i1 %.not81102, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.069104 = phi ptr [ %.069, %.lr.ph ], [ %.069101, %bb.a ] ; 2 uses
  %.070103 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.069104, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17
  %i.d = shl i64 %i.c, 32
  %i.e = add i64 %i.d, 133143986176
  %sext = ashr exact i64 %i.e, 32
  %i.f = and i64 %sext, -8
  %i.g = add i64 %i.f, %.070103                   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.069104, i64 48
  %.069 = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not81 = icmp eq ptr %.069, null
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph
  %i.i = add i64 %i.g, -67107848
  %or.cond = icmp ult i64 %i.i, -67107840
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  br i1 %4, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8
  %.not82 = icmp eq i64 %i.j, %i.g
  br i1 %.not82, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %2, align 8                ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.071 = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ]   ; 6 uses
  %i.m = tail call noalias ptr @g_try_malloc0(i64 noundef %i.g) #14 ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.1105 = load ptr, ptr %1, align 8              ; 2 uses
  %.not83106 = icmp eq ptr %.1105, null
  br i1 %.not83106, label %.lr.ph.i.preheader, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph109, %check_dir_entry.exit.thread87
  %.1108 = phi ptr [ %.1105, %.lr.ph109 ], [ %.1, %check_dir_entry.exit.thread87 ] ; 6 uses
  %.0107 = phi ptr [ %i.m, %.lr.ph109 ], [ %i.bl, %check_dir_entry.exit.thread87 ] ; 9 uses
  %i.p = load i64, ptr %.1108, align 8            ; 3 uses
  store i64 %i.p, ptr %.0107, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.1108, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  store i32 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.1108, i64 24
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0107, i64 12 ; 2 uses
  store i32 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.0107, i64 16
  store i8 1, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.1108, i64 28
  %i.y = load i8, ptr %i.x, align 4               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0107, i64 17 ; 2 uses
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.1108, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #17 ; 2 uses
  %i.ad = trunc i64 %i.ac to i16                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0107, i64 18 ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0107, i64 20 ; 2 uses
  store i32 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = and i64 %i.ac, 65535
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ag, ptr noundef nonnull align 1 %i.ah, i64 noundef %i.ai, i1 noundef false) #13
  %i.aj = icmp eq i32 %i.r, 0
  %i.ak = icmp eq i64 %i.p, 0
  %or.cond92 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond92, label %check_dir_entry.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.o, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = urem i64 %i.p, %i.ao
  %.not.i = icmp ne i64 %i.ap, 0
  %i.aq = icmp ugt i32 %i.r, 134217728
  %or.cond.i.not97.not100 = or i1 %i.aq, %.not.i
  %i.ar = add i8 %i.y, -32
  %or.cond29.i = icmp ult i8 %i.ar, -23
  %or.cond93.not96.not99 = select i1 %or.cond.i.not97.not100, i1 true, i1 %or.cond29.i
  %.not27.i = icmp ugt i32 %i.u, 3
  %or.cond94.not98 = select i1 %or.cond93.not96.not99, i1 true, i1 %.not27.i
  %i.as = icmp ugt i16 %i.ad, 1023
  %or.cond95 = or i1 %i.as, %or.cond94.not98
  br i1 %or.cond95, label %check_dir_entry.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = zext nneg i32 %i.r to i64
  %i.au = mul nsw i64 %i.ao, %i.at                ; 2 uses
  %i.av = tail call i64 @bdrv_getlength(ptr noundef nonnull %0) #13 ; 3 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %check_dir_entry.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp ugt i64 %i.au, 536870912
  br i1 %i.ax, label %check_dir_entry.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %i.v, align 1
  %i.az = and i32 %i.ay, 1
  %.not28.i = icmp eq i32 %i.az, 0
  br i1 %.not28.i, label %bb.k, label %check_dir_entry.exit.thread87

bb.k:                                             ; preds = %bb.j
  %i.ba = shl nuw nsw i64 %i.au, 3
  %i.bb = load i8, ptr %i.z, align 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = icmp ugt i64 %i.av, %i.bd
  br i1 %i.be, label %check_dir_entry.exit.thread, label %check_dir_entry.exit.thread87

check_dir_entry.exit:                             ; preds = %bb.h
  %i.bf = and i64 %i.av, 2147483648
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %check_dir_entry.exit.thread87, label %check_dir_entry.exit.thread

check_dir_entry.exit.thread87:                    ; preds = %bb.k, %bb.j, %check_dir_entry.exit
  %.val.i = load i16, ptr %i.ae, align 1
  %.val2.i = load i32, ptr %i.af, align 1
  %i.bg = zext i16 %.val.i to i32
  %i.bh = add nuw nsw i32 %i.bg, 31
  %i.bi = add i32 %i.bh, %.val2.i
  %i.bj = and i32 %i.bi, -8
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %.0107, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.1108, i64 48
  %.1 = load ptr, ptr %i.bm, align 8              ; 2 uses
  %.not83 = icmp eq ptr %.1, null
  br i1 %.not83, label %._crit_edge110, label %bb.f, !llvm.loop !39

._crit_edge110:                                   ; preds = %check_dir_entry.exit.thread87
  %.not.i85 = icmp eq i64 %i.g, 0
  br i1 %.not.i85, label %bitmap_directory_to_be.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader, %._crit_edge110
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ] ; 7 uses
  %i.bo = getelementptr i8, ptr %.08.i, i64 18    ; 2 uses
  %.0.val.i = load i16, ptr %i.bo, align 1        ; 2 uses
  %i.bp = getelementptr i8, ptr %.08.i, i64 20    ; 2 uses
  %.0.val7.i = load i32, ptr %i.bp, align 1       ; 2 uses
  %i.bq = zext i16 %.0.val.i to i32
  %i.br = add nuw nsw i32 %i.bq, 31
  %i.bs = add i32 %i.br, %.0.val7.i
  %i.bt = and i32 %i.bs, -8
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %.08.i, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %.08.i, align 1
  %i.bx = tail call noundef i64 @llvm.bswap.i64(i64 %i.bw)
  store i64 %i.bx, ptr %.08.i, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = tail call noundef i32 @llvm.bswap.i32(i32 %i.bz)
  store i32 %i.ca, ptr %i.by, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 1
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cc)
  store i32 %i.cd, ptr %i.cb, align 1
  %i.ce = tail call noundef i16 @llvm.bswap.i16(i16 %.0.val.i)
  store i16 %i.ce, ptr %i.bo, align 1
  %i.cf = tail call noundef i32 @llvm.bswap.i32(i32 %.0.val7.i)
  store i32 %i.cf, ptr %i.bp, align 1
  %i.cg = icmp ult ptr %i.bv, %i.bn
  br i1 %i.cg, label %.lr.ph.i, label %bitmap_directory_to_be.exit, !llvm.loop !40

bitmap_directory_to_be.exit:                      ; preds = %.lr.ph.i, %._crit_edge110
  br i1 %4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bitmap_directory_to_be.exit
  %i.ch = tail call i64 @qcow2_alloc_clusters(ptr noundef %0, i64 noundef %i.g) #13 ; 3 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.cj = trunc i64 %i.ch to i32
  tail call void @g_free(ptr noundef nonnull %i.m) #13
  br label %._crit_edge.thread

bb.m:                                             ; preds = %bb.l, %bitmap_directory_to_be.exit
  %i.ck = phi i32 [ 256, %bitmap_directory_to_be.exit ], [ 0, %bb.l ]
  %.172 = phi i64 [ %.071, %bitmap_directory_to_be.exit ], [ %i.ch, %bb.l ] ; 5 uses
  %i.cl = tail call i32 @qcow2_pre_write_overlap_check(ptr noundef %0, i32 noundef %i.ck, i64 noundef %.172, i64 noundef %i.g, i1 noundef zeroext false) #13 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %check_dir_entry.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call i32 @bdrv_pwrite(ptr noundef %i.co, i64 noundef %.172, i64 noundef %i.g, ptr noundef nonnull %i.m, i32 noundef 0) #13 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %check_dir_entry.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_free(ptr noundef nonnull %i.m) #13
  br i1 %4, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.g, ptr %3, align 8
  store i64 %.172, ptr %2, align 8
  br label %._crit_edge.thread

check_dir_entry.exit.thread:                      ; preds = %bb.f, %bb.g, %bb.k, %bb.i, %check_dir_entry.exit, %bb.n, %bb.m
  %.073 = phi i32 [ %i.cp, %bb.n ], [ %i.cl, %bb.m ], [ -22, %check_dir_entry.exit ], [ -22, %bb.i ], [ -22, %bb.k ], [ -22, %bb.g ], [ -22, %bb.f ] ; 2 uses
  %.2 = phi i64 [ %.172, %bb.n ], [ %.172, %bb.m ], [ %.071, %check_dir_entry.exit ], [ %.071, %bb.i ], [ %.071, %bb.k ], [ %.071, %bb.g ], [ %.071, %bb.f ] ; 2 uses
  tail call void @g_free(ptr noundef nonnull %i.m) #13
  %i.cr = icmp slt i64 %.2, 1
  %or.cond3.not = or i1 %4, %i.cr
  br i1 %or.cond3.not, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %check_dir_entry.exit.thread
  tail call void @qcow2_free_clusters(ptr noundef %0, i64 noundef %.2, i64 noundef %i.g, i32 noundef 4) #13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %.thread, %check_dir_entry.exit.thread, %bb.q, %bb.o, %bb.p, %bb.e, %bb.c, %bb.d, %._crit_edge
  %.074 = phi i32 [ -12, %bb.e ], [ -22, %._crit_edge ], [ -22, %bb.c ], [ 0, %bb.o ], [ -22, %bb.d ], [ 0, %bb.p ], [ %.073, %bb.q ], [ %.073, %check_dir_entry.exit.thread ], [ %i.cj, %.thread ], [ -22, %bb.a ]
  ret i32 %.074
}

declare i32 @qcow2_update_header(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_flush(ptr noundef) #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #3

declare i64 @qcow2_alloc_clusters(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @qcow2_pre_write_overlap_check(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @bdrv_pwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare void @qcow2_free_clusters(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @qcow2_flush_caches(ptr noundef) local_unnamed_addr #2

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_try_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare i64 @bdrv_dirty_bitmap_next_dirty(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @bdrv_dirty_bitmap_serialize_part(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(1) }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{!3, !11}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{!"auto-init"}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !32, !33}
!24 = distinct !{!24, !11, !33, !32}
!25 = distinct !{!25, !11, !32, !33}
!26 = distinct !{!26, !11, !33, !32}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
end_hunk_0
