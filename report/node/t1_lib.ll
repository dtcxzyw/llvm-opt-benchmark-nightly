Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/t1_lib?download=true
inline.NumInlined: 100
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@tls12_copy_sigalgs:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.n = load i16, ptr %i.m, align 8, !tbaa !173
  %i.o = icmp eq i16 %i.n, %i.h
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !168
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %tls1_lookup_sigalg.exit.thread, label %tls1_lookup_sigalg.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i, i64 72
  %i.s = add nuw i64 %.0912.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.j
  br i1 %exitcond.not.i, label %tls1_lookup_sigalg.exit.thread, label %.lr.ph.i, !llvm.loop !2

tls1_lookup_sigalg.exit:                          ; preds = %bb.b
  %i.t = tail call fastcc i32 @tls_sigalg_compat(ptr noundef %0, ptr noundef nonnull %.013.i)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %tls1_lookup_sigalg.exit.thread, label %bb.d

bb.d:                                             ; preds = %tls1_lookup_sigalg.exit
  %i.u = load i16, ptr %.02642, align 2, !tbaa !150
  %i.v = zext i16 %i.u to i64
  %i.w = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.v, i64 noundef 2) #14
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %.02144, 0
  br i1 %i.x, label %bb.f, label %tls1_lookup_sigalg.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i32 %i.ac, 8
  %.not31 = icmp eq i32 %i.ad, 0
  br i1 %.not31, label %bb.g, label %tls1_lookup_sigalg.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !82  ; 2 uses
  %i.af = icmp slt i32 %i.ae, 772
  %.not32 = icmp eq i32 %i.ae, 65536
  %or.cond = or i1 %i.af, %.not32
  br i1 %or.cond, label %tls1_lookup_sigalg.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !169
  %.not33 = icmp eq i32 %i.ah, 6
  br i1 %.not33, label %tls1_lookup_sigalg.exit.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !165 ; 2 uses
  %switch.selectcmp.case1 = icmp ne i32 %i.aj, 64
  %switch.selectcmp.case2 = icmp ne i32 %i.aj, 675
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ak = zext i1 %switch.selectcmp.not to i32
  br label %tls1_lookup_sigalg.exit.thread

tls1_lookup_sigalg.exit.thread:                   ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.b, %.lr.ph.split, %tls1_lookup_sigalg.exit, %bb.e
  %.2.ph = phi i32 [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.f ], [ %.02144, %bb.b ], [ %i.ak, %bb.i ], [ %.02144, %tls1_lookup_sigalg.exit ], [ %.02144, %.lr.ph.split ], [ %.02144, %bb.c ] ; 2 uses
  %i.al = add nuw i64 %.02243, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %tls1_lookup_sigalg.exit.thread, %tls1_lookup_sigalg.exit.thread.thread
  %.02144.be = phi i32 [ %.2.ph, %tls1_lookup_sigalg.exit.thread ], [ 0, %tls1_lookup_sigalg.exit.thread.thread ]
  %.02243.be = phi i64 [ %i.al, %tls1_lookup_sigalg.exit.thread ], [ %i.am, %tls1_lookup_sigalg.exit.thread.thread ]
  %.02642.be = getelementptr inbounds nuw i8, ptr %.02642, i64 2
  br label %.lr.ph.split, !llvm.loop !290

tls1_lookup_sigalg.exit.thread.thread:            ; preds = %bb.h
  %i.am = add nuw i64 %.02243, 1                  ; 2 uses
  %exitcond.not53 = icmp eq i64 %i.am, %3
  br i1 %exitcond.not53, label %._crit_edge.thread55, label %.lr.ph.split.backedge

._crit_edge:                                      ; preds = %tls1_lookup_sigalg.exit.thread
  %i.an = icmp eq i32 %.2.ph, 0
  br i1 %i.an, label %._crit_edge.thread55, label %.loopexit

._crit_edge.thread55:                             ; preds = %tls1_lookup_sigalg.exit.thread.thread, %.lr.ph, %bb.a, %._crit_edge
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 3452, ptr noundef nonnull @__func__.tls12_copy_sigalgs) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 118, ptr noundef null) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %._crit_edge.thread55
  %.225 = phi i32 [ 1, %._crit_edge ], [ 0, %._crit_edge.thread55 ], [ 0, %bb.d ]
  ret i32 %.225
}

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tls1_save_u16(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !213 ; 4 uses
  %i.b = icmp ne i64 %.val, 0
  %i.c = and i64 %.val, 1
  %.not = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %.val, 1                  ; 3 uses
  %i.e = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.val, ptr noundef nonnull @.str.2, i32 noundef 3543) #14 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !213
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.val.i.i30 = phi i64 [ %.promoted, %.preheader ], [ %i.q, %bb.d ] ; 2 uses
  %.029 = phi i64 [ 0, %.preheader ], [ %i.s, %bb.d ] ; 3 uses
  %i.g = icmp ult i64 %.val.i.i30, 2
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !214    ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !137
  %i.j = zext i8 %i.i to i16
  %i.k = shl nuw i16 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !137
  %i.n = zext i8 %i.m to i16
  %i.o = or disjoint i16 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store ptr %i.p, ptr %0, align 8, !tbaa !214
  %i.q = add i64 %.val.i.i30, -2                  ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.029
  store i16 %i.o, ptr %i.r, align 2, !tbaa !150
  %i.s = add nuw nsw i64 %.029, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.d
  br i1 %exitcond.not, label %.critedge.thread, label %bb.c, !llvm.loop !4

.critedge:                                        ; preds = %bb.c
  %.not24 = icmp eq i64 %.029, %i.d
  br i1 %.not24, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @CRYPTO_free(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.2, i32 noundef 3549) #14
  br label %bb.f

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %i.t = load ptr, ptr %1, align 8, !tbaa !124
  tail call void @CRYPTO_free(ptr noundef %i.t, ptr noundef nonnull @.str.2, i32 noundef 3553) #14
  store ptr %i.e, ptr %1, align 8, !tbaa !124
  store i64 %i.d, ptr %2, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.critedge.thread, %bb.e
  %.019 = phi i32 [ 1, %.critedge.thread ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tls1_save_sigalgs(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !135
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %tls1_save_u16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %tls1_save_u16.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp eq i32 %2, 0
  %i.k = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %.val.i10 = load i64, ptr %i.k, align 8, !tbaa !213 ; 6 uses
  %i.l = icmp ne i64 %.val.i10, 0
  %i.m = and i64 %.val.i10, 1
  %.not.i11 = icmp eq i64 %i.m, 0
  %or.cond.i12 = and i1 %i.l, %.not.i11           ; 2 uses
  br i1 %.not9, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016
  br i1 %or.cond.i12, label %bb.e, label %tls1_save_u16.exit

bb.e:                                             ; preds = %bb.d
  %i.p = lshr exact i64 %.val.i10, 1              ; 3 uses
  %i.q = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.val.i10, ptr noundef nonnull @.str.2, i32 noundef 3543) #14 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %tls1_save_u16.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.promoted.i = load i64, ptr %i.k, align 8, !tbaa !213
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i
  %.val.i.i30.i = phi i64 [ %.promoted.i, %.preheader.i ], [ %i.ac, %bb.g ] ; 2 uses
  %.029.i = phi i64 [ 0, %.preheader.i ], [ %i.ae, %bb.g ] ; 3 uses
  %i.s = icmp ult i64 %.val.i.i30.i, 2
  br i1 %i.s, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %1, align 8, !tbaa !214    ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !137
  %i.v = zext i8 %i.u to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !137
  %i.z = zext i8 %i.y to i16
  %i.aa = or disjoint i16 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.ab, ptr %1, align 8, !tbaa !214
  %i.ac = add i64 %.val.i.i30.i, -2               ; 2 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !213
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.029.i
  store i16 %i.aa, ptr %i.ad, align 2, !tbaa !150
  %i.ae = add nuw nsw i64 %.029.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.p
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.f, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.f
  %.not24.i = icmp eq i64 %.029.i, %i.p
  br i1 %.not24.i, label %.critedge.thread.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.2, i32 noundef 3549) #14
  br label %tls1_save_u16.exit

.critedge.thread.i:                               ; preds = %bb.g, %.critedge.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !124
  tail call void @CRYPTO_free(ptr noundef %i.af, ptr noundef nonnull @.str.2, i32 noundef 3553) #14
  store ptr %i.q, ptr %i.n, align 8, !tbaa !124
  store i64 %i.p, ptr %i.o, align 8, !tbaa !129
  br label %tls1_save_u16.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1008
  br i1 %or.cond.i12, label %bb.j, label %tls1_save_u16.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr exact i64 %.val.i10, 1             ; 3 uses
  %i.aj = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.val.i10, ptr noundef nonnull @.str.2, i32 noundef 3543) #14 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %tls1_save_u16.exit, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.j
  %.promoted.i15 = load i64, ptr %i.k, align 8, !tbaa !213
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i14
  %.val.i.i30.i16 = phi i64 [ %.promoted.i15, %.preheader.i14 ], [ %i.av, %bb.l ] ; 2 uses
  %.029.i17 = phi i64 [ 0, %.preheader.i14 ], [ %i.ax, %bb.l ] ; 3 uses
  %i.al = icmp ult i64 %.val.i.i30.i16, 2
  br i1 %i.al, label %.critedge.i20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %1, align 8, !tbaa !214   ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !137
  %i.ao = zext i8 %i.an to i16
  %i.ap = shl nuw i16 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !137
  %i.as = zext i8 %i.ar to i16
  %i.at = or disjoint i16 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store ptr %i.au, ptr %1, align 8, !tbaa !214
  %i.av = add i64 %.val.i.i30.i16, -2             ; 2 uses
  store i64 %i.av, ptr %i.k, align 8, !tbaa !213
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.029.i17
  store i16 %i.at, ptr %i.aw, align 2, !tbaa !150
  %i.ax = add nuw nsw i64 %.029.i17, 1            ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %i.ax, %i.ai
  br i1 %exitcond.not.i18, label %.critedge.thread.i19, label %bb.k, !llvm.loop !4

.critedge.i20:                                    ; preds = %bb.k
  %.not24.i21 = icmp eq i64 %.029.i17, %i.ai
  br i1 %.not24.i21, label %.critedge.thread.i19, label %bb.m

bb.m:                                             ; preds = %.critedge.i20
  tail call void @CRYPTO_free(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.2, i32 noundef 3549) #14
  br label %tls1_save_u16.exit

.critedge.thread.i19:                             ; preds = %bb.l, %.critedge.i20
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !124
  tail call void @CRYPTO_free(ptr noundef %i.ay, ptr noundef nonnull @.str.2, i32 noundef 3553) #14
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !124
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !129
  br label %tls1_save_u16.exit

tls1_save_u16.exit:                               ; preds = %.critedge.thread.i19, %bb.m, %bb.j, %bb.i, %.critedge.thread.i, %bb.h, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.critedge.thread.i ], [ 0, %bb.d ], [ 0, %bb.h ], [ 1, %.critedge.thread.i19 ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.j ]
  ret i32 %.0
}

declare i32 @ssl_cert_is_disabled(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @SSL_get_sigalgs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #14 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %.thread61

.thread61:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 992
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1008
  %i.k = load i64, ptr %i.j, align 8, !tbaa !207  ; 2 uses
  %i.l = icmp eq ptr %i.i, null
  %i.m = icmp ugt i64 %i.k, 2147483647
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread61
  %i.n = icmp sgt i32 %1, -1
  %i.o = trunc nuw nsw i64 %i.k to i32            ; 4 uses
  br i1 %i.n, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.not52 = icmp samesign ult i32 %1, %i.o
  br i1 %.not52, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.p ; 3 uses
  %.not53 = icmp eq ptr %6, null
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i16, ptr %i.q, align 2, !tbaa !150
  %i.s = lshr i16 %i.r, 8
  %i.t = trunc nuw i16 %i.s to i8
  store i8 %i.t, ptr %6, align 1, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not54 = icmp eq ptr %5, null
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i16, ptr %i.q, align 2, !tbaa !150
  %i.v = trunc i16 %i.u to i8
  store i8 %i.v, ptr %5, align 1, !tbaa !137
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119  ; 2 uses
  %i.y = load i16, ptr %i.q, align 2, !tbaa !150
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1616
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !178 ; 2 uses
  %.not14.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.i, label %tls1_lookup_sigalg.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1632
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !177
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.013.i = phi ptr [ %i.ai, %bb.m ], [ %i.ac, %.lr.ph.preheader.i ] ; 4 uses
  %.0912.i = phi i64 [ %i.aj, %bb.m ], [ 0, %.lr.ph.preheader.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !173
  %i.af = icmp eq i16 %i.ae, %i.y
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !168
  %.not.i = icmp eq i32 %i.ah, 0
  %..0.i = select i1 %.not.i, ptr null, ptr %.013.i
  br label %tls1_lookup_sigalg.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i, i64 72
  %i.aj = add nuw i64 %.0912.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.aa
  br i1 %exitcond.not.i, label %tls1_lookup_sigalg.exit, label %.lr.ph.i, !llvm.loop !2

tls1_lookup_sigalg.exit:                          ; preds = %bb.m, %bb.k, %bb.l
  %.010.i = phi ptr [ %..0.i, %bb.l ], [ null, %bb.k ], [ null, %bb.m ] ; 6 uses
  %.not55 = icmp eq ptr %2, null
  br i1 %.not55, label %bb.q, label %bb.n

bb.n:                                             ; preds = %tls1_lookup_sigalg.exit
  %.not56 = icmp eq ptr %.010.i, null
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !169
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.am = phi i32 [ %i.al, %bb.o ], [ 0, %bb.n ]
  store i32 %i.am, ptr %2, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %tls1_lookup_sigalg.exit
  %.not57 = icmp eq ptr %3, null
  br i1 %.not57, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not58 = icmp eq ptr %.010.i, null
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !165
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ap = phi i32 [ %i.ao, %bb.s ], [ 0, %bb.r ]
  store i32 %i.ap, ptr %3, align 4, !tbaa !131
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.not59 = icmp eq ptr %4, null
  br i1 %.not59, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not60 = icmp eq ptr %.010.i, null
  br i1 %.not60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !175
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.as = phi i32 [ %i.ar, %bb.w ], [ 0, %bb.v ]
  store i32 %i.as, ptr %4, align 4, !tbaa !131
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.u, %bb.x, %bb.c, %bb.a, %bb.f, %.thread61, %bb.d
  %.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.thread61 ], [ 0, %bb.a ], [ %i.o, %bb.u ], [ %i.o, %bb.x ], [ %i.o, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_get_shared_sigalgs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread47, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #14 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread47

.thread47:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5512
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp slt i32 %1, 0
  %or.cond = or i1 %i.k, %i.j
end_hunk_0
