inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@H5P__encode_double:bb.a
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.s, ptr %i.q, align 1, !tbaa !10
  %i.u = lshr i64 %.0.copyload, 32
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.v, ptr %i.t, align 1, !tbaa !10
  %i.x = lshr i64 %.0.copyload, 40
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i8 %i.y, ptr %i.w, align 1, !tbaa !10
  %i.aa = lshr i64 %.0.copyload, 48
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !10
  %i.ad = lshr i64 %.0.copyload, 56
  %i.ae = trunc nuw i64 %i.ad to i8
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !10
  %i.af = load ptr, ptr %1, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %1, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = load i64, ptr %2, align 8, !tbaa !8
  %i.ai = add i64 %i.ah, 9
  store i64 %i.ai, ptr %2, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5P__encode_uint64_t(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !16
  store i8 8, ptr %i.g, align 1, !tbaa !10
  %i.i = load i32, ptr %0, align 4, !tbaa !25     ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !16     ; 5 uses
  %i.k = trunc i32 %i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.k, ptr %i.j, align 1, !tbaa !10
  %i.m = lshr i32 %i.i, 8
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.n, ptr %i.l, align 1, !tbaa !10
  %i.p = lshr i32 %i.i, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %i.q, ptr %i.o, align 1, !tbaa !10
  %i.s = lshr i32 %i.i, 24
  %i.t = trunc nuw i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 %i.t, ptr %i.r, align 1, !tbaa !10
  store i32 0, ptr %i.u, align 1
  %i.v = load ptr, ptr %1, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %1, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load i64, ptr %2, align 8, !tbaa !8
  %i.y = add i64 %i.x, 9
  store i64 %i.y, ptr %2, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5P__encode(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.H5P_enc_iter_ud_t, align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %2, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.k, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %3, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !8
  %i.l = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5P__encode, i32 noundef 409, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ne ptr %2, null                     ; 3 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %2, align 1, !tbaa !10
  %i.p = load ptr, ptr %0, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  store ptr %i.t, ptr %i.a, align 8, !tbaa !16
  store i8 %i.s, ptr %i.o, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 2, ptr %i.c, align 8, !tbaa !8
  %i.u = zext i1 %i.n to i8
  store i8 %i.u, ptr %4, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.w, align 8, !tbaa !37
  store i32 0, ptr %i.b, align 4, !tbaa !25
  %i.x = call i32 @H5P__iterate_plist(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull %i.b, ptr noundef nonnull @H5P__encode_cb, ptr noundef nonnull %4) #10
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !8
  %i.aa = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !8
  %i.ab = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5P__encode, i32 noundef 435, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !16
  store i8 0, ptr %i.ac, align 1, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %3, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ 0, %bb.j ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @H5P__iterate_plist(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1, -2147483648) i32 @H5P__encode_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  %i.b = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.k, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.j = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #11 ; 2 uses
  %i.l = add i64 %i.k, 1
  %i.m = load i8, ptr %1, align 8, !tbaa !32, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.j) #10 ; 0 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %3 = getelementptr i8, ptr %i.t, i64 %i.k
  %i.u = getelementptr i8, ptr %3, i64 1
  store ptr %i.u, ptr %i.s, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8
  %i.y = add i64 %i.l, %i.x
  store i64 %i.y, ptr %i.w, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.z = call i32 @H5_user_cb_prepare(ptr noundef nonnull %2) #10
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ag = call i32 %i.ab(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.ah = call i32 @H5_user_cb_restore(ptr noundef nonnull %2) #10
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTSET_g, %bb.e ], [ @H5E_CANTRESTORE_g, %bb.f ]
  %.sink = phi i32 [ 356, %bb.e ], [ 362, %bb.f ]
  %i.aj = load i64, ptr @H5E_LIB_g, align 8, !tbaa !8
  %i.ak = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !8
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5P__encode_cb, i32 noundef %.sink, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.13) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.am = icmp slt i32 %i.ag, 0
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !8
  %i.ao = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !8
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5P__encode_cb, i32 noundef 364, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.18) #10 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !8
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !36  ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !8
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.h
  %.123 = phi i32 [ -1, %bb.h ], [ %i.ag, %bb.i ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.j
  %.2 = phi i32 [ 0, %bb.a ], [ %.123, %bb.j ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5P__decode_size_t(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  %i.i = load i8, ptr %i.g, align 1, !tbaa !10    ; 3 uses
  %i.j = zext i8 %i.i to i64                      ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 3 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i8 %i.i, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 252
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.m = phi ptr [ %i.k, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 4 uses
  %.01315 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i64
  %i.q = shl i64 %.01315, 16
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 -2 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 -3 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !16
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = zext i8 %i.y to i64
  %i.aa = shl i64 %i.w, 16
  %i.ab = shl nuw nsw i64 %i.z, 8
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 5 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !16
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ac, %i.af            ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.01315.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ah = phi ptr [ %i.aj, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %.01315.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.01315.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ai = shl i64 %.01315.epil, 8
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !16
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ai, %i.al            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !44

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %i.an = phi ptr [ %i.k, %bb.b ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil ]
  %.013.lcssa = phi i64 [ 0, %bb.b ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %0, align 8, !tbaa !16
  store i64 %.013.lcssa, ptr %1, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5P__decode_hsize_t(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  %i.i = load i8, ptr %i.g, align 1, !tbaa !10    ; 3 uses
  %i.j = zext i8 %i.i to i64                      ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 3 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i8 %i.i, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 252
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.m = phi ptr [ %i.k, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 4 uses
  %.01315 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i64
  %i.q = shl i64 %.01315, 16
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 -2 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i64
end_hunk_0
