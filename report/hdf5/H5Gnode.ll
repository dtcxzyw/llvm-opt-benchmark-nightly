Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Gnode?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5G__node_remove:bb.a
  %i.ez = phi i32 [ %.pre200, %._crit_edge199 ], [ %i.en, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp samesign ult i64 %indvars.iv.next, %i.fa
  br i1 %i.fb, label %bb.ad, label %._crit_edge192, !llvm.loop !73

._crit_edge192:                                   ; preds = %bb.ag, %bb.ac
  store i32 0, ptr %i.ej, align 8, !tbaa !35
  br label %.thread174

.thread174:                                       ; preds = %bb.af, %._crit_edge192
  %.2148 = phi i32 [ 0, %bb.af ], [ 259, %._crit_edge192 ]
  %.6 = phi i32 [ -1, %bb.af ], [ 5, %._crit_edge192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.ah

.thread179:                                       ; preds = %bb.h, %bb.k, %bb.n, %bb.u, %bb.y, %bb.ab, %bb.aa, %bb.w, %bb.q, %bb.t, %.thread
  %.1147.ph = phi i32 [ 2, %bb.ab ], [ 2, %bb.aa ], [ 2, %bb.y ], [ 259, %bb.w ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %.thread ]
  %.5.ph = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 5, %bb.w ], [ -1, %bb.q ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.h ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ah

.critedge193:                                     ; preds = %bb.d, %._crit_edge
  %i.fc = load i64, ptr @H5E_SYM_g, align 8, !tbaa !14
  %i.fd = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !14
  %i.fe = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5G__node_remove, i32 noundef 743, i64 noundef %i.fc, i64 noundef %i.fd, ptr noundef nonnull @.str.51) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge193, %.thread179, %.thread174
  %.7178 = phi i32 [ %.6, %.thread174 ], [ -1, %.critedge193 ], [ %.5.ph, %.thread179 ]
  %.3149177 = phi i32 [ %.2148, %.thread174 ], [ 0, %.critedge193 ], [ %.1147.ph, %.thread179 ]
  %i.ff = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_SNODE, i64 noundef %1, ptr noundef nonnull %i.g, i32 noundef %.3149177) #8
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fh = load i64, ptr @H5E_SYM_g, align 8, !tbaa !14
  %i.fi = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !14
  %i.fj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5G__node_remove, i32 noundef 885, i64 noundef %i.fh, i64 noundef %i.fi, ptr noundef nonnull @.str.36) #8 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.thread171, %bb.a, %bb.ai, %bb.ah
  %.8 = phi i32 [ -1, %bb.ai ], [ %.7178, %bb.ah ], [ -1, %.thread171 ], [ -1, %bb.a ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5G__node_decode_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #1 {
bb.a:
  %i.a = load i8, ptr @H5G_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !55
  switch i64 %i.h, label %.loopexit [
    i64 4, label %bb.c
    i64 8, label %.loopexit.loopexit
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 1, !tbaa !47
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  store i64 %i.j, ptr %2, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = or disjoint i64 %i.n, %i.j               ; 2 uses
  store i64 %i.o, ptr %2, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !47
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 16
  %i.t = or disjoint i64 %i.s, %i.o               ; 2 uses
  store i64 %i.t, ptr %2, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 24
  %i.y = or disjoint i64 %i.x, %i.t
  br label %.loopexit.sink.split

.loopexit.loopexit:                               ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  store i64 %i.ab, ptr %2, align 8, !tbaa !29
  %i.ac = shl nuw nsw i64 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !47
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ac, %i.af            ; 2 uses
  store i64 %i.ag, ptr %2, align 8, !tbaa !29
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ah, %i.ak            ; 2 uses
  store i64 %i.al, ptr %2, align 8, !tbaa !29
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !47
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.am, %i.ap            ; 2 uses
  store i64 %i.aq, ptr %2, align 8, !tbaa !29
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !47
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au            ; 2 uses
  store i64 %i.av, ptr %2, align 8, !tbaa !29
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !47
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.aw, %i.az            ; 2 uses
  store i64 %i.ba, ptr %2, align 8, !tbaa !29
  %i.bb = shl nuw nsw i64 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !47
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.bb, %i.be            ; 2 uses
  store i64 %i.bf, ptr %2, align 8, !tbaa !29
  %i.bg = shl nuw i64 %i.bf, 8
  %i.bh = load i8, ptr %1, align 1, !tbaa !47
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.bg, %i.bi
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.bk = load i8, ptr %1, align 1, !tbaa !47
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  store i64 %i.bl, ptr %2, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 8
  %i.bq = or disjoint i64 %i.bp, %i.bl
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.d, %bb.c, %.loopexit.loopexit
  %.sink = phi i64 [ %i.bj, %.loopexit.loopexit ], [ %i.y, %bb.c ], [ %i.bq, %bb.d ]
  store i64 %.sink, ptr %2, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5G__node_encode_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load i8, ptr @H5G_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !55
  switch i64 %i.h, label %.loopexit [
    i64 4, label %bb.c
    i64 8, label %.loopexit.loopexit
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %2, align 8, !tbaa !29
  %i.j = trunc i64 %i.i to i8
  store i8 %i.j, ptr %1, align 1, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i64, ptr %2, align 8, !tbaa !29
  %i.m = lshr i64 %i.l, 8
  %i.n = trunc i64 %i.m to i8
  store i8 %i.n, ptr %i.k, align 1, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i64, ptr %2, align 8, !tbaa !29
  %i.q = lshr i64 %i.p, 16
  %i.r = trunc i64 %i.q to i8
  store i8 %i.r, ptr %i.o, align 1, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = load i64, ptr %2, align 8, !tbaa !29
  %i.u = lshr i64 %i.t, 24
  %i.v = trunc i64 %i.u to i8
  store i8 %i.v, ptr %i.s, align 1, !tbaa !47
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %3 = load <8 x i8>, ptr %2, align 8, !tbaa !29
  store <8 x i8> %3, ptr %1, align 1, !tbaa !47
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = load i64, ptr %2, align 8, !tbaa !29
  %i.x = trunc i64 %i.w to i8
  store i8 %i.x, ptr %1, align 1, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.z = load i64, ptr %2, align 8, !tbaa !29
  %i.aa = lshr i64 %i.z, 8
  %i.ab = trunc i64 %i.aa to i8
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %bb.d, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5G__node_debug_key(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i8, ptr @H5G_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %3, align 8, !tbaa !29
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %1, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef nonnull @.str.38, i32 noundef %i.h) #8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %1, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef nonnull @.str.32) #8 ; 0 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.n = load i64, ptr %3, align 8, !tbaa !29
  %i.o = tail call ptr @H5HL_offset_into(ptr noundef %i.m, i64 noundef %i.n) #8 ; 2 uses
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.o) #8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %1, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef nonnull @.str.41) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @H5G__node_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5G_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_H5G_entry_t_seq_free_list, ptr noundef nonnull %i.h) #8
  store ptr %i.i, ptr %i.g, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5G_node_t_reg_free_list, ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

declare ptr @H5FL_seq_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @H5G__node_iterate(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5O_link_t, align 8         ; 6 uses
  %i.a = load i8, ptr @H5G_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.q, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_SNODE, i64 noundef %2, ptr noundef %0, i32 noundef 128) #8 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %.not47 = icmp eq i32 %i.l, 0
  br i1 %.not47, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.m, align 8, !tbaa !82
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv
  %i.t = load ptr, ptr %4, align 8, !tbaa !83
  %i.u = call i32 @H5G__ent_to_link(ptr noundef %i.s, ptr noundef %i.t, ptr noundef nonnull %5) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @H5E_SYM_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5G__node_iterate, i32 noundef 934, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !84
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.ab = call i32 %i.z(ptr noundef nonnull %5, ptr noundef %i.aa) #8
  %i.ac = call i32 @H5O_msg_reset(i32 noundef 6, ptr noundef nonnull %5) #8
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr @H5E_SYM_g, align 8, !tbaa !14
  %i.af = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !14
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5G__node_iterate, i32 noundef 941, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %._crit_edge.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.j ]    ; 4 uses
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !86  ; 3 uses
  %.not36 = icmp eq ptr %i.ah, null
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !35
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  %i.an = icmp eq i32 %.2, 0
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.d, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.m
  %i.ap = icmp slt i32 %.2, 0
  br i1 %i.ap, label %bb.n, label %._crit_edge.thread

bb.n:                                             ; preds = %._crit_edge
  %i.aq = load i64, ptr @H5E_SYM_g, align 8, !tbaa !14
  %i.ar = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !14
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5G__node_iterate, i32 noundef 950, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %._crit_edge.thread
end_hunk_0
