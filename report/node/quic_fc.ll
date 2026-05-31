inline.NumInlined: 41
inline.NumDeleted: 21
begin_hunk_0_@ossl_quic_rxfc_on_rx_stream_frame:bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  br i1 %.not48, label %.thread47, label %.thread46

.thread46:                                        ; preds = %bb.e, %bb.h
  store i8 1, ptr %i.f, align 2, !tbaa !30
  br label %.thread47

.thread47:                                        ; preds = %bb.f, %.thread46, %bb.h
  %i.j = phi i1 [ true, %.thread46 ], [ false, %bb.h ], [ false, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %i.m = icmp ugt i64 %1, %i.l
  br i1 %i.m, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.thread47
  %i.n = sub nuw i64 %1, %i.l                     ; 4 uses
  store i64 %1, ptr %i.k, align 8, !tbaa !31
  %i.o = load i64, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.r = sub i64 %i.o, %i.q                       ; 2 uses
  %i.s = icmp ugt i64 %i.n, %i.r
  br i1 %i.s, label %bb.j, label %on_rx_controlled_bytes.exit

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 3, ptr %i.t, align 8, !tbaa !32
  br label %on_rx_controlled_bytes.exit

on_rx_controlled_bytes.exit:                      ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.r, %bb.j ], [ %i.n, %bb.i ]
  %i.u = add i64 %.0.i, %i.q
  store i64 %i.u, ptr %i.p, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 4 uses
  %.not34 = icmp eq ptr %i.w, null
  br i1 %.not34, label %bb.o, label %bb.k

bb.k:                                             ; preds = %on_rx_controlled_bytes.exit
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = sub i64 %i.x, %i.z                      ; 2 uses
  %i.ab = icmp ugt i64 %i.n, %i.aa
  br i1 %i.ab, label %bb.l, label %on_rx_controlled_bytes.exit37

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i8 3, ptr %i.ac, align 8, !tbaa !32
  br label %on_rx_controlled_bytes.exit37

on_rx_controlled_bytes.exit37:                    ; preds = %bb.k, %bb.l
  %.0.i36 = phi i64 [ %i.aa, %bb.l ], [ %i.n, %bb.k ]
  %i.ad = add i64 %.0.i36, %i.z
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !21
  br label %bb.o

bb.m:                                             ; preds = %.thread47
  %i.ae = icmp ult i64 %1, %i.l
  %or.cond = and i1 %i.j, %i.ae
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 6, ptr %i.af, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %on_rx_controlled_bytes.exit37, %on_rx_controlled_bytes.exit, %bb.m, %bb.b, %bb.n, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.b ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %on_rx_controlled_bytes.exit ], [ 1, %on_rx_controlled_bytes.exit37 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rxfc_on_retire(ptr noundef captures(none) %0, i64 noundef %1, i64 %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = add i64 %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @rxfc_on_retire(ptr noundef nonnull %0, i64 noundef %1, i64 noundef 0, i64 %2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %.not14 = icmp eq i8 %i.n, 0
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  tail call fastcc void @rxfc_on_retire(ptr noundef %i.o, i64 noundef %1, i64 noundef %i.q, i64 %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rxfc_on_retire(ptr noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2, i64 %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = tail call i64 %i.d(ptr noundef %i.f) #8, !inline_history !34
  store i64 %i.g, ptr %i.a, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %i.j, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = add i64 %i.k, %1                         ; 4 uses
  store i64 %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = load i64, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23   ; 5 uses
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 3) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %safe_mul_uint64_t.exit33.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = lshr i64 %i.s, 2
  br label %rxfc_cwm_bump_desired.exit.i

safe_mul_uint64_t.exit33.i.i.i:                   ; preds = %bb.c
  %i.u = lshr i64 %i.p, 2
  %i.v = mul nuw i64 %i.u, 3
  %i.w = and i64 %i.p, 3
  %i.x = mul nuw nsw i64 %i.w, 3
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw i64 %i.y, %i.v
  br label %rxfc_cwm_bump_desired.exit.i

rxfc_cwm_bump_desired.exit.i:                     ; preds = %safe_mul_uint64_t.exit33.i.i.i, %bb.d
  %.0.i.i = phi i64 [ %i.z, %safe_mul_uint64_t.exit33.i.i.i ], [ %i.t, %bb.d ]
  %i.aa = sub i64 %i.n, %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !30
  %.not6.i.i = icmp ne i8 %i.ac, 0
  %i.ad = icmp ugt i64 %i.aa, %.0.i.i
  %.not10.i = select i1 %.not6.i.i, i1 true, i1 %i.ad
  br i1 %.not10.i, label %rxfc_update_cwm.exit, label %bb.e

bb.e:                                             ; preds = %rxfc_cwm_bump_desired.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ag = icmp eq i64 %i.m, %i.af
  br i1 %i.ag, label %rxfc_should_bump_window_size.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 %i.m, %i.af                     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.am = tail call i64 %i.aj(ptr noundef %i.al) #8, !inline_history !36
  %i.an = load i64, ptr %i.a, align 8
  %..i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.an) ; 3 uses
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !23  ; 3 uses
  %i.ap = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %..i.i.i.i, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %safe_mul_time.exit35.i.i.i.i.i, label %safe_muldiv_time.exit.thread.i.i.i.i

safe_muldiv_time.exit.thread.i.i.i.i:             ; preds = %bb.f
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = udiv i64 %i.ar, %i.ah
  br label %rxfc_should_bump_window_size.exit.i.i

safe_mul_time.exit35.i.i.i.i.i:                   ; preds = %bb.f
  %spec.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %..i.i.i.i) ; 2 uses
  %spec.select31.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %..i.i.i.i) ; 2 uses
  %4 = urem i64 %spec.select31.i.i.i.i.i, %i.ah
  %i.at = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %spec.select.i.i.i.i.i) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  %5 = extractvalue { i64, i1 } %i.at, 0
  %6 = udiv i64 %spec.select31.i.i.i.i.i, %i.ah
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %6, i64 %spec.select.i.i.i.i.i) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  %i.av = extractvalue { i64, i1 } %7, 0
  %i.aw = udiv i64 %5, %i.ah
  %i.ax = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  %9 = select i1 %i.ay, i1 true, i1 %8
  %i.ba = select i1 %9, i1 true, i1 %i.au
  %spec.select14.i.i.i.i = select i1 %i.ba, i64 0, i64 %i.az
  br label %rxfc_should_bump_window_size.exit.i.i

rxfc_should_bump_window_size.exit.i.i:            ; preds = %safe_mul_time.exit35.i.i.i.i.i, %safe_muldiv_time.exit.thread.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.as, %safe_muldiv_time.exit.thread.i.i.i.i ], [ %spec.select14.i.i.i.i, %safe_mul_time.exit35.i.i.i.i.i ]
  %i.bb = icmp ugt i64 %3, 4611686018427387903
  %i.bc = shl i64 %3, 2
  %.sroa.02.0.i.i.i.i = select i1 %i.bb, i64 -1, i64 %i.bc
  %i.bd = icmp uge i64 %.sroa.03.0.i.i.i.i, %.sroa.02.0.i.i.i.i
  %i.be = shl i64 %i.p, 1
  %cond.fr.i.i = freeze i1 %i.bd
  br i1 %cond.fr.i.i, label %rxfc_should_bump_window_size.exit.thread.i.i, label %rxfc_adjust_window_size.exit.i

rxfc_should_bump_window_size.exit.thread.i.i:     ; preds = %rxfc_should_bump_window_size.exit.i.i, %bb.e
  br label %rxfc_adjust_window_size.exit.i

rxfc_adjust_window_size.exit.i:                   ; preds = %rxfc_should_bump_window_size.exit.thread.i.i, %rxfc_should_bump_window_size.exit.i.i
  %i.bf = phi i64 [ %i.p, %rxfc_should_bump_window_size.exit.thread.i.i ], [ %i.be, %rxfc_should_bump_window_size.exit.i.i ]
  %.1.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %2)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24
  %.2.i.i = tail call i64 @llvm.umin.i64(i64 %.1.i.i, i64 %i.bh)
  store i64 %.2.i.i, ptr %i.o, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = tail call i64 %i.bj(ptr noundef %i.bl) #8, !inline_history !37
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !25
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  store i64 %i.bn, ptr %i.ae, align 8, !tbaa !35
  %i.bo = load i64, ptr %i.o, align 8, !tbaa !23
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = load i64, ptr %0, align 8, !tbaa !22
  %i.br = icmp ugt i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %rxfc_update_cwm.exit

bb.g:                                             ; preds = %rxfc_adjust_window_size.exit.i
  store i64 %i.bp, ptr %0, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 1, ptr %i.bs, align 1, !tbaa !38
  br label %rxfc_update_cwm.exit

rxfc_update_cwm.exit:                             ; preds = %rxfc_cwm_bump_desired.exit.i, %rxfc_adjust_window_size.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_rxfc_get_cwm(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_rxfc_get_swm(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_rxfc_get_rwm(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_rxfc_get_credit(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = sub i64 %i.a, %i.c
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 256) i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !38
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 256) i32 @ossl_quic_rxfc_get_error(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rxfc_get_final_size(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.b = load i8, ptr %i.a, align 2, !tbaa !30
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.d, ptr %1, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"quic_txfc_st", !11, i64 0, !13, i64 8, !13, i64 16, !7, i64 24}
!11 = !{!"p1 _ZTS12quic_txfc_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !7, i64 24}
!15 = !{!10, !13, i64 16}
!16 = !{!10, !13, i64 8}
!17 = !{!18, !20, i64 80}
!18 = !{!"quic_rxfc_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !19, i64 56, !12, i64 64, !12, i64 72, !20, i64 80, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91}
!19 = !{!"", !13, i64 0}
!20 = !{!"p1 _ZTS12quic_rxfc_st", !12, i64 0}
!21 = !{!18, !13, i64 8}
!22 = !{!18, !13, i64 0}
!23 = !{!18, !13, i64 40}
!24 = !{!18, !13, i64 48}
!25 = !{!13, !13, i64 0}
!26 = !{!18, !12, i64 64}
!27 = !{!18, !12, i64 72}
!28 = !{!7, !7, i64 0}
!29 = !{!18, !7, i64 91}
!30 = !{!18, !7, i64 90}
!31 = !{!18, !13, i64 32}
!32 = !{!18, !7, i64 88}
!33 = !{!18, !13, i64 16}
!34 = distinct !{null}
!35 = !{!18, !13, i64 24}
!36 = distinct !{null, null, null}
!37 = distinct !{null, null, null}
end_hunk_0
