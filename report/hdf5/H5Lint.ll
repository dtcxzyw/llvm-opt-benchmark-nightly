Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Lint?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@H5L__move_cb:bb.a
  store i32 %i.y, ptr %i.z, align 8, !tbaa !65
  %i.aa = load ptr, ptr %0, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  store ptr %i.ab, ptr %6, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !61, !range !11, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !67
  %i.af = tail call noalias ptr @H5MM_xstrdup(ptr noundef %1) #10 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !93
  %i.ai = tail call i32 @H5CX_set_nlinks(i64 noundef %i.ah) #10
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.al = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.am = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__move_cb, i32 noundef 1495, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.59) #10 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = load ptr, ptr %4, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !59
  %i.as = call i32 @H5G_traverse(ptr noundef %i.ao, ptr noundef %i.ap, i32 noundef %i.ar, ptr noundef nonnull @H5L__move_dest_cb, ptr noundef nonnull %6) #10
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.av = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__move_cb, i32 noundef 1500, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.60) #10 ; 0 uses
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr %i.ac, align 4, !tbaa !61, !range !11, !noundef !12
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %4, align 8, !tbaa !58    ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !31
  %.not = icmp eq i8 %i.ba, 47
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bf = call ptr @H5G_build_fullpath_refstr_str(ptr noundef %i.be, ptr noundef nonnull %i.az) #10 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bi = load i64, ptr @H5E_PATH_g, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__move_cb, i32 noundef 1513, i64 noundef %i.bh, i64 noundef %i.bi, ptr noundef nonnull @.str.61) #10 ; 0 uses
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.bk = call ptr @H5RS_wrap(ptr noundef nonnull %i.az) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.042 = phi ptr [ %i.bf, %bb.n ], [ %i.bk, %bb.p ] ; 3 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !27
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !27
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !33
  %i.bt = call i32 @H5G_name_replace(ptr noundef nonnull %2, i32 noundef 0, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %i.bs, ptr noundef %.042) #10
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call i32 @H5RS_decr(ptr noundef %.042) #10 ; 0 uses
  %i.bw = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bx = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.by = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__move_cb, i32 noundef 1523, i64 noundef %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.62) #10 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %0, align 8, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54
  %i.cd = call i32 @H5G_obj_remove(ptr noundef %i.bz, ptr noundef %i.cc, ptr noundef %i.af) #10
  %i.ce = icmp slt i32 %i.cd, 0
  %i.cf = call i32 @H5RS_decr(ptr noundef %.042) #10 ; 0 uses
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.ch = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.ci = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__move_cb, i32 noundef 1529, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull @.str.63) #10 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.r, %bb.t, %bb.l, %bb.k, %bb.i
  %.1 = phi i32 [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.o ], [ -1, %bb.i ], [ -1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.s ]
  %.not51 = icmp eq ptr %i.af, null
  br i1 %.not51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = call ptr @H5MM_xfree(ptr noundef nonnull %i.af) #10 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.cl = call ptr @H5O_msg_free(i32 noundef 6, ptr noundef %i.ck) #10 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.w
  %.15762 = phi i32 [ %.1, %bb.w ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ]
  store i32 0, ptr %5, align 4, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  %.2 = phi i32 [ %.15762, %bb.x ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5L_exists_tolerant(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5L_trav_le_t, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5L_init_g, align 1, !tbaa !10
  %i.f = tail call i32 @H5L__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11
  %.pre19 = load i8, ptr @H5_libterm_g, align 1, !range !11
  %.pre20 = trunc nuw i8 %.pre to i1
  %.pre21 = trunc nuw i8 %.pre19 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5L_init_g, align 1, !tbaa !10
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L_exists_tolerant, i32 noundef 1737, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi22 = phi i1 [ %.pre21, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre20, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi22, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.l, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @H5MM_strdup(ptr noundef %1) #10 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.013 = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.g ] ; 4 uses
  %i.n = load i8, ptr %.013, align 1, !tbaa !31
  switch i8 %i.n, label %bb.i [
    i8 47, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.013, i64 1
  br label %bb.f, !llvm.loop !94

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %2, align 1, !tbaa !10
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !70
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.013, i32 noundef 47) #12 ; 3 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !71
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit.a, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %i.s = phi ptr [ %i.t, %.preheader ], [ %i.q, %bb.i ] ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !31
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %.preheader, label %.loopexit, !llvm.loop !95

.loopexit:                                        ; preds = %.preheader
  store ptr %i.t, ptr %3, align 8, !tbaa !71
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %.loopexit, %bb.i
  %.015 = phi ptr [ @H5L__exists_final_cb, %bb.i ], [ @H5L__exists_inter_cb, %.loopexit ]
  %i.w = call i32 @H5G_traverse(ptr noundef %0, ptr noundef nonnull %.013, i32 noundef 5, ptr noundef nonnull %.015, ptr noundef nonnull %3) #10
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.a
  %i.y = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.z = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L_exists_tolerant, i32 noundef 1768, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.loopexit.a, %bb.j, %bb.c
  %.014 = phi ptr [ null, %bb.c ], [ %i.m, %bb.h ], [ %i.m, %bb.j ], [ %i.m, %.loopexit.a ]
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.h ], [ -1, %bb.j ], [ 0, %.loopexit.a ]
  %i.ab = call ptr @H5MM_xfree(ptr noundef %.014) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.1 = phi i32 [ %.0, %bb.k ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.1
}

declare noalias ptr @H5MM_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5L__exists_final_cb(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #6 {
bb.a:
  %i.a = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne ptr %2, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = zext i1 %i.g to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10
  store i32 0, ptr %5, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef range(i32 -1, 1) i32 @H5L__exists_inter_cb(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !13

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 47) #12 ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !71
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader
  %i.j = phi ptr [ %i.l, %.preheader ], [ %i.h, %bb.d ]
  store i8 0, ptr %i.j, align 1, !tbaa !31
  %i.k = load ptr, ptr %4, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !71
  %i.m = load i8, ptr %i.l, align 1, !tbaa !31
  %i.n = icmp eq i8 %i.m, 47
  br i1 %i.n, label %.preheader, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.019 = phi ptr [ @H5L__exists_final_cb, %bb.d ], [ @H5L__exists_inter_cb, %.preheader ]
  %i.o = tail call i32 @H5G_traverse(ptr noundef %3, ptr noundef nonnull %i.g, i32 noundef 5, ptr noundef nonnull %.019, ptr noundef nonnull %4) #10
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %.loopexit
  %i.q = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.r = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__exists_inter_cb, i32 noundef 1700, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %bb.f

.thread.sink.split:                               ; preds = %bb.b, %bb.c
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  store i8 %.sink, ptr %i.u, align 1, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit
  store i32 0, ptr %5, align 4, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ -1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5L__exists(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5L_trav_le_t, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %sub_0, label %bb.d, !prof !13

sub_0:                                            ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1
  %.not = icmp eq i8 %i.g, 47
  br i1 %.not, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %.tail.thread

bb.b:                                             ; preds = %.tail
  store i8 1, ptr %2, align 1, !tbaa !10
  br label %bb.d

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !70
  %i.l = call i32 @H5G_traverse(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5, ptr noundef nonnull @H5L__exists_final_cb, ptr noundef nonnull %3) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.thread
  %i.n = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.o = load i64, ptr @H5E_EXISTS_g, align 8, !tbaa !15
  %i.p = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L__exists, i32 noundef 1810, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.15) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.tail.thread, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.c ], [ 0, %.tail.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5L_get_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5L_trav_gi_t, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5L_init_g, align 1, !tbaa !10
  %i.f = tail call i32 @H5L__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !11
  %.pre5 = load i8, ptr @H5_libterm_g, align 1, !range !11
  %.pre6 = trunc nuw i8 %.pre to i1
  %.pre7 = trunc nuw i8 %.pre5 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5L_init_g, align 1, !tbaa !10
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5L_get_info, i32 noundef 1866, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi8 = phi i1 [ %.pre7, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre6, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi8, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.g, !prof !13
end_hunk_0
