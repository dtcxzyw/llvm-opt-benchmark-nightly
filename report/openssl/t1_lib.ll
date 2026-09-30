Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/t1_lib?download=true
inline.NumInlined: 109
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@tls12_sigalg_allowed:bb.a
  br i1 %i.ce, label %bb.ab, label %sigalg_security_bits.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 1736
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !107
  %i.ch = zext nneg i32 %i.ca to i64
  %i.ci = getelementptr inbounds nuw [104 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !199
  br label %sigalg_security_bits.exit

sigalg_security_bits.exit.fold.split:             ; preds = %bb.y
  br label %sigalg_security_bits.exit

sigalg_security_bits.exit:                        ; preds = %bb.y, %sigalg_security_bits.exit.fold.split, %bb.t, %bb.u, %bb.v, %.fold.split.thread.i, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab
  %.118.i = phi i32 [ %i.bv, %.fold.split.thread.i ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.ck, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ %i.bs, %bb.v ], [ 39, %bb.x ], [ 67, %bb.w ], [ 128, %bb.y ], [ 224, %sigalg_security_bits.exit.fold.split ]
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !178 ; 2 uses
  %i.cn = lshr i16 %i.cm, 8
  %i.co = trunc nuw i16 %i.cn to i8
  store i8 %i.co, ptr %i.a, align 1, !tbaa !139
  %i.cp = trunc i16 %i.cm to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !139
  %i.cr = load i32, ptr %i.bl, align 4, !tbaa !170
  %i.cs = call i32 @ssl_security(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.118.i, i32 noundef %i.cr, ptr noundef nonnull %i.a) #15
  br label %.critedge

.critedge:                                        ; preds = %select.unfold, %bb.q, %bb.p, %bb.m, %.thread73, %bb.h, %bb.i, %bb.i, %bb.i, %bb.e, %bb.a, %bb.b, %._crit_edge, %sigalg_security_bits.exit
  %.151 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ %i.cs, %sigalg_security_bits.exit ], [ 0, %._crit_edge ], [ 0, %.thread73 ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.151
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls12_copy_sigalgs(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not44 = icmp eq i64 %3, 0
  br i1 %.not44, label %._crit_edge.thread54, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1680
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %._crit_edge.thread54, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %.02143 = phi i32 [ %.02143.be, %.lr.ph.split.backedge ], [ 0, %.lr.ph ] ; 5 uses
  %.02242 = phi i64 [ %.02242.be, %.lr.ph.split.backedge ], [ 0, %.lr.ph ] ; 2 uses
  %.02641 = phi ptr [ %.02641.be, %.lr.ph.split.backedge ], [ %2, %.lr.ph ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.h = load i16, ptr %.02641, align 2, !tbaa !153
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1680
  %i.j = load i64, ptr %i.i, align 8, !tbaa !183  ; 2 uses
  %.not12.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not12.not.i.i, label %tls1_lookup_sigalg.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.split
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1696
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %.0914.i.i = phi i64 [ %i.q, %bb.b ], [ 0, %.lr.ph.preheader.i.i ]
  %.01013.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %.lr.ph.preheader.i.i ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 16
  %i.n = load i16, ptr %i.m, align 8, !tbaa !178
  %i.o = icmp eq i16 %i.n, %i.h
  br i1 %i.o, label %tls1_find_sigalg.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 72
  %i.q = add nuw i64 %.0914.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i.i, label %tls1_lookup_sigalg.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

tls1_find_sigalg.exit.i:                          ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !173
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %tls1_lookup_sigalg.exit.thread, label %tls1_lookup_sigalg.exit

tls1_lookup_sigalg.exit:                          ; preds = %tls1_find_sigalg.exit.i
  %i.t = tail call fastcc i32 @tls_sigalg_compat(ptr noundef %0, ptr noundef nonnull %.01013.i.i)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %tls1_lookup_sigalg.exit.thread, label %bb.c

bb.c:                                             ; preds = %tls1_lookup_sigalg.exit
  %i.u = load i16, ptr %.02641, align 2, !tbaa !153
  %i.v = zext i16 %i.u to i64
  %i.w = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.v, i64 noundef 2) #15
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %.02143, 0
  br i1 %i.x, label %bb.e, label %tls1_lookup_sigalg.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !138
  %i.ad = and i32 %i.ac, 8
  %.not31 = icmp eq i32 %i.ad, 0
  br i1 %.not31, label %bb.f, label %tls1_lookup_sigalg.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !85  ; 2 uses
  %i.af = icmp slt i32 %i.ae, 772
  %.not32 = icmp eq i32 %i.ae, 65536
  %or.cond = or i1 %i.af, %.not32
  br i1 %or.cond, label %tls1_lookup_sigalg.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !174
  %.not33 = icmp eq i32 %i.ah, 6
  br i1 %.not33, label %tls1_lookup_sigalg.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !170 ; 2 uses
  %switch.selectcmp.case1 = icmp ne i32 %i.aj, 64
  %switch.selectcmp.case2 = icmp ne i32 %i.aj, 675
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ak = zext i1 %switch.selectcmp.not to i32
  br label %tls1_lookup_sigalg.exit.thread

tls1_lookup_sigalg.exit.thread:                   ; preds = %bb.b, %bb.e, %bb.f, %bb.h, %tls1_find_sigalg.exit.i, %.lr.ph.split, %tls1_lookup_sigalg.exit, %bb.d
  %.2.ph = phi i32 [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ %.02143, %tls1_find_sigalg.exit.i ], [ %i.ak, %bb.h ], [ %.02143, %tls1_lookup_sigalg.exit ], [ %.02143, %.lr.ph.split ], [ %.02143, %bb.b ] ; 2 uses
  %i.al = add nuw i64 %.02242, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %tls1_lookup_sigalg.exit.thread, %tls1_lookup_sigalg.exit.thread.thread
  %.02143.be = phi i32 [ %.2.ph, %tls1_lookup_sigalg.exit.thread ], [ 0, %tls1_lookup_sigalg.exit.thread.thread ]
  %.02242.be = phi i64 [ %i.al, %tls1_lookup_sigalg.exit.thread ], [ %i.am, %tls1_lookup_sigalg.exit.thread.thread ]
  %.02641.be = getelementptr inbounds nuw i8, ptr %.02641, i64 2
  br label %.lr.ph.split, !llvm.loop !296

tls1_lookup_sigalg.exit.thread.thread:            ; preds = %bb.g
  %i.am = add nuw i64 %.02242, 1                  ; 2 uses
  %exitcond.not52 = icmp eq i64 %i.am, %3
  br i1 %exitcond.not52, label %._crit_edge.thread54, label %.lr.ph.split.backedge

._crit_edge:                                      ; preds = %tls1_lookup_sigalg.exit.thread
  %i.an = icmp eq i32 %.2.ph, 0
  br i1 %i.an, label %._crit_edge.thread54, label %.loopexit

._crit_edge.thread54:                             ; preds = %tls1_lookup_sigalg.exit.thread.thread, %.lr.ph, %bb.a, %._crit_edge
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 3625, ptr noundef nonnull @__func__.tls12_copy_sigalgs) #15
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 118, ptr noundef null) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %._crit_edge.thread54
  %.225 = phi i32 [ 1, %._crit_edge ], [ 0, %._crit_edge.thread54 ], [ 0, %bb.c ]
  ret i32 %.225
}

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls1_save_u16(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !218 ; 3 uses
  %i.b = icmp ne i64 %.val, 0
  %i.c = and i64 %.val, 1
  %.not = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %.val, 1
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %3) ; 4 uses
  %i.e = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %spec.select, i64 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 3723) #15 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !218
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.val.i.i37 = phi i64 [ %.promoted, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %.034 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  %i.g = icmp ult i64 %.val.i.i37, 2
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !219    ; 2 uses
  %4 = load i16, ptr %i.h, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store ptr %i.i, ptr %0, align 8, !tbaa !219
  %i.j = add i64 %.val.i.i37, -2                  ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !218
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.034
  store i16 %5, ptr %i.k, align 2, !tbaa !153
  %i.l = add nuw nsw i64 %.034, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %spec.select
  br i1 %exitcond.not, label %.critedge.thread, label %bb.c, !llvm.loop !4

.critedge:                                        ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.034, %bb.c ]
  %.not29 = icmp eq i64 %.0.lcssa, %spec.select
  br i1 %.not29, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @CRYPTO_free(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.2, i32 noundef 3729) #15
  br label %bb.f

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %i.m = load ptr, ptr %1, align 8, !tbaa !127
  tail call void @CRYPTO_free(ptr noundef %i.m, ptr noundef nonnull @.str.2, i32 noundef 3733) #15
  store ptr %i.e, ptr %1, align 8, !tbaa !127
  store i64 %spec.select, ptr %2, align 8, !tbaa !132
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.critedge.thread, %bb.e
  %.023 = phi i32 [ 1, %.critedge.thread ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls1_save_sigalgs(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !138
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %tls1_save_u16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %tls1_save_u16.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp eq i32 %2, 0
  %i.k = getelementptr i8, ptr %1, i64 16         ; 5 uses
  %.val.i10 = load i64, ptr %i.k, align 8, !tbaa !218 ; 4 uses
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
  %i.p = lshr exact i64 %.val.i10, 1
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 128) ; 4 uses
  %i.q = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %spec.select.i, i64 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 3723) #15 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %tls1_save_u16.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.promoted.i = load i64, ptr %i.k, align 8, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i
  %.val.i.i37.i = phi i64 [ %.promoted.i, %.preheader.i ], [ %i.v, %bb.g ] ; 2 uses
  %.034.i = phi i64 [ 0, %.preheader.i ], [ %i.x, %bb.g ] ; 3 uses
  %i.s = icmp ult i64 %.val.i.i37.i, 2
  br i1 %i.s, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %1, align 8, !tbaa !219    ; 2 uses
  %3 = load i16, ptr %i.t, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.u, ptr %1, align 8, !tbaa !219
  %i.v = add i64 %.val.i.i37.i, -2                ; 2 uses
  store i64 %i.v, ptr %i.k, align 8, !tbaa !218
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.034.i
  store i16 %4, ptr %i.w, align 2, !tbaa !153
  %i.x = add nuw nsw i64 %.034.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %spec.select.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.f, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.f
  %.not29.i = icmp eq i64 %.034.i, %spec.select.i
  br i1 %.not29.i, label %.critedge.thread.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.2, i32 noundef 3729) #15
  br label %tls1_save_u16.exit

.critedge.thread.i:                               ; preds = %bb.g, %.critedge.i
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !127
  tail call void @CRYPTO_free(ptr noundef %i.y, ptr noundef nonnull @.str.2, i32 noundef 3733) #15
  store ptr %i.q, ptr %i.n, align 8, !tbaa !127
  store i64 %spec.select.i, ptr %i.o, align 8, !tbaa !132
  br label %tls1_save_u16.exit

bb.i:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1008
  br i1 %or.cond.i12, label %bb.j, label %tls1_save_u16.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = lshr exact i64 %.val.i10, 1
  %spec.select.i14 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 128) ; 4 uses
  %i.ac = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %spec.select.i14, i64 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 3723) #15 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %tls1_save_u16.exit, label %.preheader.i15

.preheader.i15:                                   ; preds = %bb.j
  %.promoted.i16 = load i64, ptr %i.k, align 8, !tbaa !218
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i15
  %.val.i.i37.i17 = phi i64 [ %.promoted.i16, %.preheader.i15 ], [ %i.ah, %bb.l ] ; 2 uses
  %.034.i18 = phi i64 [ 0, %.preheader.i15 ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ae = icmp ult i64 %.val.i.i37.i17, 2
  br i1 %i.ae, label %.critedge.i21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %1, align 8, !tbaa !219   ; 2 uses
  %5 = load i16, ptr %i.af, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %1, align 8, !tbaa !219
  %i.ah = add i64 %.val.i.i37.i17, -2             ; 2 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !218
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %.034.i18
  store i16 %6, ptr %i.ai, align 2, !tbaa !153
  %i.aj = add nuw nsw i64 %.034.i18, 1            ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.aj, %spec.select.i14
  br i1 %exitcond.not.i19, label %.critedge.thread.i20, label %bb.k, !llvm.loop !4

.critedge.i21:                                    ; preds = %bb.k
  %.not29.i22 = icmp eq i64 %.034.i18, %spec.select.i14
  br i1 %.not29.i22, label %.critedge.thread.i20, label %bb.m

bb.m:                                             ; preds = %.critedge.i21
  tail call void @CRYPTO_free(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.2, i32 noundef 3729) #15
  br label %tls1_save_u16.exit

.critedge.thread.i20:                             ; preds = %bb.l, %.critedge.i21
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !127
  tail call void @CRYPTO_free(ptr noundef %i.ak, ptr noundef nonnull @.str.2, i32 noundef 3733) #15
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !127
  store i64 %spec.select.i14, ptr %i.aa, align 8, !tbaa !132
  br label %tls1_save_u16.exit

tls1_save_u16.exit:                               ; preds = %.critedge.thread.i20, %bb.m, %bb.j, %bb.i, %.critedge.thread.i, %bb.h, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.critedge.thread.i ], [ 0, %bb.d ], [ 0, %bb.h ], [ 1, %.critedge.thread.i20 ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.j ]
  ret i32 %.0
}

declare i32 @ssl_cert_is_disabled(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define i32 @SSL_get_sigalgs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread55, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #15 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread55

.thread55:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1008
  %i.i = load i64, ptr %i.h, align 8, !tbaa !212
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %.not46 = icmp slt i32 %1, %i.j
  br i1 %.not46, label %bb.e, label %.thread

bb.e:                                             ; preds = %.thread55
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 992
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !211  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i32 %1, -1
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.o ; 3 uses
  %.not47 = icmp eq ptr %6, null
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i16, ptr %i.p, align 2, !tbaa !153
  %i.r = lshr i16 %i.q, 8
  %i.s = trunc nuw i16 %i.r to i8
  store i8 %i.s, ptr %6, align 1, !tbaa !139
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not48 = icmp eq ptr %5, null
  br i1 %.not48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i16, ptr %i.p, align 2, !tbaa !153
  %i.u = trunc i16 %i.t to i8
  store i8 %i.u, ptr %5, align 1, !tbaa !139
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !122  ; 2 uses
  %i.x = load i16, ptr %i.p, align 2, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1680
  %i.z = load i64, ptr %i.y, align 8, !tbaa !183  ; 2 uses
  %.not12.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not12.not.i.i, label %tls1_lookup_sigalg.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1696
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.0914.i.i = phi i64 [ %i.ag, %bb.l ], [ 0, %.lr.ph.preheader.i.i ]
  %.01013.i.i = phi ptr [ %i.af, %bb.l ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 16
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !178
  %i.ae = icmp eq i16 %i.ad, %i.x
  br i1 %i.ae, label %tls1_find_sigalg.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 72
  %i.ag = add nuw i64 %.0914.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.z
  br i1 %exitcond.not.i.i, label %tls1_lookup_sigalg.exit, label %.lr.ph.i.i, !llvm.loop !2

tls1_find_sigalg.exit.i:                          ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !173
  %.not4.i = icmp eq i32 %i.ai, 0
  %spec.select.i = select i1 %.not4.i, ptr null, ptr %.01013.i.i
  br label %tls1_lookup_sigalg.exit

tls1_lookup_sigalg.exit:                          ; preds = %bb.l, %bb.k, %tls1_find_sigalg.exit.i
  %i.aj = phi ptr [ %spec.select.i, %tls1_find_sigalg.exit.i ], [ null, %bb.k ], [ null, %bb.l ] ; 6 uses
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.p, label %bb.m

bb.m:                                             ; preds = %tls1_lookup_sigalg.exit
  %.not50 = icmp eq ptr %i.aj, null
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !174
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.am = phi i32 [ %i.al, %bb.n ], [ 0, %bb.m ]
  store i32 %i.am, ptr %2, align 4, !tbaa !134
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %tls1_lookup_sigalg.exit
  %.not51 = icmp eq ptr %3, null
  br i1 %.not51, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not52 = icmp eq ptr %i.aj, null
  br i1 %.not52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !170
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ap = phi i32 [ %i.ao, %bb.r ], [ 0, %bb.q ]
  store i32 %i.ap, ptr %3, align 4, !tbaa !134
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.not53 = icmp eq ptr %4, null
  br i1 %.not53, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not54 = icmp eq ptr %i.aj, null
  br i1 %.not54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !180
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.as = phi i32 [ %i.ar, %bb.v ], [ 0, %bb.u ]
  store i32 %i.as, ptr %4, align 4, !tbaa !134
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.f, %bb.w, %bb.t, %.thread55, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %.thread55 ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.j, %bb.t ], [ %i.j, %bb.w ], [ %i.j, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @SSL_get_shared_sigalgs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread47, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@get_sigorhash:bb.a
  store i32 6, ptr %0, align 4, !tbaa !134
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.108) #15
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.109) #15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 912, ptr %0, align 4, !tbaa !134
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.g = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.12) #15
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 116, ptr %0, align 4, !tbaa !134
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.i = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.110) #15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 408, ptr %0, align 4, !tbaa !134
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = tail call i32 @OBJ_sn2nid(ptr noundef nonnull %2) #15 ; 2 uses
  store i32 %i.k, ptr %1, align 4, !tbaa !134
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = tail call i32 @OBJ_ln2nid(ptr noundef nonnull %2) #15
  store i32 %i.m, ptr %1, align 4, !tbaa !134
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.i, %bb.k, %bb.j, %bb.g, %bb.b
  ret void
}

declare i32 @OBJ_sn2nid(ptr noundef) local_unnamed_addr #0

declare i32 @OBJ_ln2nid(ptr noundef) local_unnamed_addr #0

declare i32 @X509_self_signed(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_nid(ptr noundef) local_unnamed_addr #0

declare i32 @OBJ_find_sigid_algs(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #0

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #0

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ssl_ctx_security(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @X509_get_extension_flags(ptr noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_cert_usable(ptr nofree noundef readonly captures(none) %0, i32 %.20.val, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %.not = icmp eq i32 %.20.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OBJ_nid2sn(i32 noundef %.20.val) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !175
  %i.i = tail call i32 @EVP_PKEY_digestsign_supports_digest(ptr noundef %2, ptr noundef %i.f, ptr noundef %.0, ptr noundef %i.h) #15
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !210
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @X509_get_signature_info(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #15
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i64, ptr %i.n, align 8, !tbaa !350  ; 2 uses
  %.not5 = icmp eq i64 %i.o, 0
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !210
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1680
  %i.s = load i64, ptr %i.r, align 8, !tbaa !183  ; 2 uses
  %.not12.not.i.i = icmp eq i64 %i.s, 0
  %i.t = load i32, ptr %i.a, align 4
  %i.u = load i32, ptr %i.b, align 4
  br i1 %.not12.not.i.i, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1696
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !182
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.split, %tls1_lookup_sigalg.exit.thread
  %.0192 = phi i64 [ 0, %.lr.ph.split ], [ %i.am, %tls1_lookup_sigalg.exit.thread ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.0192
  %i.y = load i16, ptr %i.x, align 2, !tbaa !153
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %.0914.i.i = phi i64 [ %i.ad, %bb.f ], [ 0, %.lr.ph.preheader.i.i ]
  %.01013.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.w, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 16
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !178
  %i.ab = icmp eq i16 %i.aa, %i.y
  br i1 %i.ab, label %tls1_find_sigalg.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 72
  %i.ad = add nuw i64 %.0914.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.s
  br i1 %exitcond.not.i.i, label %tls1_lookup_sigalg.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

tls1_find_sigalg.exit.i:                          ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !173
  %.not4.i = icmp eq i32 %i.af, 0
  br i1 %.not4.i, label %tls1_lookup_sigalg.exit.thread, label %tls1_lookup_sigalg.exit

tls1_lookup_sigalg.exit:                          ; preds = %tls1_find_sigalg.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !170
  %i.ai = icmp eq i32 %i.t, %i.ah
  br i1 %i.ai, label %bb.g, label %tls1_lookup_sigalg.exit.thread

bb.g:                                             ; preds = %tls1_lookup_sigalg.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !174
  %i.al = icmp eq i32 %i.u, %i.ak
  br i1 %i.al, label %.loopexit, label %tls1_lookup_sigalg.exit.thread

tls1_lookup_sigalg.exit.thread:                   ; preds = %bb.f, %tls1_find_sigalg.exit.i, %tls1_lookup_sigalg.exit, %bb.g
  %i.am = add nuw i64 %.0192, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.o
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i.i, !llvm.loop !349

.loopexit:                                        ; preds = %bb.g, %tls1_lookup_sigalg.exit.thread, %.preheader, %.lr.ph, %bb.d, %bb.e, %bb.c
  %.020 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.g ], [ 0, %tls1_lookup_sigalg.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.020
}

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_digestsign_supports_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @EVP_PKEY_get_size(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !115}
!1 = distinct !{!1, !115}
!2 = distinct !{!2, !115}
!3 = distinct !{!3, !115}
!4 = distinct !{!4, !115}
!5 = distinct !{!5, !115}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS10ssl_ctx_st", !14, i64 0}
!16 = !{!"p1 _ZTS13ssl_method_st", !14, i64 0}
!17 = !{!"", !10, i64 0}
!18 = !{!"p1 _ZTS15ossl_lib_ctx_st", !14, i64 0}
!19 = !{!"p1 _ZTS13stack_st_void", !14, i64 0}
!20 = !{!"crypto_ex_data_st", !18, i64 0, !19, i64 8}
!21 = !{!"ssl_st", !11, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !17, i64 32, !14, i64 40, !20, i64 48}
!22 = !{!21, !16, i64 24}
!23 = !{!"long", !10, i64 0}
!24 = !{!"p1 _ZTS15ssl3_enc_method", !14, i64 0}
!25 = !{!"ssl_method_st", !11, i64 0, !11, i64 4, !23, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !24, i64 216, !14, i64 224, !14, i64 232, !14, i64 240}
!26 = !{!21, !11, i64 0}
!27 = !{!"p1 _ZTS6ssl_st", !14, i64 0}
!28 = !{!"p1 _ZTS6bio_st", !14, i64 0}
!29 = !{!"", !23, i64 0}
!30 = !{!"ossl_statem_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !14, i64 56, !14, i64 64, !14, i64 72, !11, i64 80}
!31 = !{!"p1 _ZTS10buf_mem_st", !14, i64 0}
!32 = !{!"ossl_quic_tls_callbacks_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!33 = !{!"p1 _ZTS11quic_tls_st", !14, i64 0}
!34 = !{!"p1 _ZTS13evp_md_ctx_st", !14, i64 0}
!35 = !{!"p1 _ZTS13ssl_cipher_st", !14, i64 0}
!36 = !{!"p1 _ZTS11evp_pkey_st", !14, i64 0}
!37 = !{!"p1 omnipotent char", !14, i64 0}
!38 = !{!"p1 _ZTS18stack_st_X509_NAME", !14, i64 0}
!39 = !{!"p1 _ZTS13evp_cipher_st", !14, i64 0}
!40 = !{!"p1 _ZTS9evp_md_st", !14, i64 0}
!41 = !{!"p1 _ZTS11ssl_comp_st", !14, i64 0}
!42 = !{!"p1 _ZTS16sigalg_lookup_st", !14, i64 0}
!43 = !{!"p1 _ZTS12cert_pkey_st", !14, i64 0}
!44 = !{!"p1 short", !14, i64 0}
!45 = !{!"p1 int", !14, i64 0}
!46 = !{!"", !10, i64 0, !23, i64 128, !10, i64 136, !23, i64 264, !23, i64 272, !11, i64 280, !35, i64 288, !36, i64 296, !10, i64 304, !10, i64 336, !23, i64 344, !11, i64 352, !37, i64 360, !23, i64 368, !38, i64 376, !23, i64 384, !37, i64 392, !39, i64 400, !40, i64 408, !11, i64 416, !23, i64 424, !41, i64 432, !11, i64 440, !37, i64 448, !23, i64 456, !37, i64 464, !23, i64 472, !37, i64 480, !23, i64 488, !42, i64 496, !43, i64 504, !44, i64 512, !44, i64 520, !23, i64 528, !23, i64 536, !42, i64 544, !45, i64 552, !11, i64 560, !11, i64 564, !11, i64 568, !11, i64 572}
!47 = !{!"short", !10, i64 0}
!48 = !{!"", !23, i64 0, !10, i64 8, !10, i64 40, !28, i64 72, !34, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !10, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !46, i64 128, !10, i64 704, !23, i64 768, !10, i64 776, !23, i64 840, !11, i64 848, !11, i64 852, !37, i64 856, !23, i64 864, !37, i64 872, !23, i64 880, !11, i64 888, !10, i64 892, !10, i64 893, !47, i64 894, !36, i64 896, !47, i64 904}
!49 = !{!"p1 _ZTS14dtls1_state_st", !14, i64 0}
!50 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !14, i64 0}
!51 = !{!"p1 _ZTS11dane_ctx_st", !14, i64 0}
!52 = !{!"p1 _ZTS23stack_st_danetls_record", !14, i64 0}
!53 = !{!"p1 _ZTS13stack_st_X509", !14, i64 0}
!54 = !{!"p1 _ZTS17danetls_record_st", !14, i64 0}
!55 = !{!"p1 _ZTS7x509_st", !14, i64 0}
!56 = !{!"ssl_dane_st", !51, i64 0, !52, i64 8, !53, i64 16, !54, i64 24, !55, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !23, i64 56}
!57 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !14, i64 0}
!58 = !{!"p1 _ZTS7cert_st", !14, i64 0}
!59 = !{!"p1 _ZTS14ssl_session_st", !14, i64 0}
!60 = !{!"p1 _ZTS20stack_st_OCSP_RESPID", !14, i64 0}
!61 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !14, i64 0}
!62 = !{!"p1 _ZTS22stack_st_OCSP_RESPONSE", !14, i64 0}
!63 = !{!"", !60, i64 0, !61, i64 8, !37, i64 16, !23, i64 24, !62, i64 32}
!64 = !{!"p1 long", !14, i64 0}
!65 = !{!"p1 _ZTS25tls_session_ticket_ext_st", !14, i64 0}
!66 = !{!"p1 _ZTS16ossl_echstore_st", !14, i64 0}
!67 = !{!"p1 _ZTS16ossl_hpke_ctx_st", !14, i64 0}
!68 = !{!"ossl_ech_conn_st", !66, i64 0, !11, i64 8, !37, i64 16, !37, i64 24, !23, i64 32, !14, i64 40, !37, i64 48, !37, i64 56, !23, i64 64, !37, i64 72, !23, i64 80, !37, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !10, i64 128, !23, i64 168, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !47, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !37, i64 224, !37, i64 232, !23, i64 240, !37, i64 248, !23, i64 256, !37, i64 264, !23, i64 272, !67, i64 280, !11, i64 288, !23, i64 296, !23, i64 304, !23, i64 312, !23, i64 320, !11, i64 328, !11, i64 332, !37, i64 336, !10, i64 344, !10, i64 352, !10, i64 384, !23, i64 392, !10, i64 400}
!69 = !{!"", !10, i64 0, !14, i64 32, !14, i64 40, !37, i64 48, !11, i64 56, !37, i64 64, !47, i64 72, !11, i64 76, !63, i64 80, !11, i64 120, !11, i64 124, !23, i64 128, !37, i64 136, !23, i64 144, !37, i64 152, !23, i64 160, !44, i64 168, !23, i64 176, !44, i64 184, !23, i64 192, !44, i64 200, !23, i64 208, !64, i64 216, !65, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !37, i64 264, !23, i64 272, !37, i64 280, !23, i64 288, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !37, i64 312, !23, i64 320, !11, i64 328, !10, i64 332, !11, i64 336, !10, i64 340, !11, i64 356, !10, i64 360, !10, i64 361, !10, i64 362, !10, i64 363, !68, i64 368}
!70 = !{!"p1 _ZTS12stack_st_SCT", !14, i64 0}
!71 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !14, i64 0}
!72 = !{!"p1 _ZTS26srtp_protection_profile_st", !14, i64 0}
!73 = !{!"p1 _ZTS9bignum_st", !14, i64 0}
!74 = !{!"srp_ctx_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !37, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !73, i64 72, !73, i64 80, !73, i64 88, !73, i64 96, !37, i64 104, !11, i64 112, !23, i64 120}
!75 = !{!"p1 _ZTS17ssl_connection_st", !14, i64 0}
!76 = !{!"p1 _ZTS21ossl_record_method_st", !14, i64 0}
!77 = !{!"p1 _ZTS20ossl_record_layer_st", !14, i64 0}
!78 = !{!"p1 _ZTS20dtls_record_layer_st", !14, i64 0}
!79 = !{!"record_layer_st", !75, i64 0, !76, i64 8, !14, i64 16, !76, i64 24, !76, i64 32, !77, i64 40, !77, i64 48, !28, i64 56, !23, i64 64, !11, i64 72, !23, i64 80, !10, i64 88, !23, i64 96, !23, i64 104, !10, i64 112, !37, i64 120, !11, i64 128, !78, i64 136, !14, i64 144, !14, i64 152, !23, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !10, i64 192}
!80 = !{!"p1 _ZTS12async_job_st", !14, i64 0}
!81 = !{!"p1 _ZTS17async_wait_ctx_st", !14, i64 0}
!82 = !{!"any p2 pointer", !14, i64 0}
!83 = !{!"p2 _ZTS16sigalg_lookup_st", !82, i64 0}
!84 = !{!"ssl_connection_st", !21, i64 0, !27, i64 64, !11, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !11, i64 104, !14, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !29, i64 136, !29, i64 144, !30, i64 152, !11, i64 240, !31, i64 248, !14, i64 256, !23, i64 264, !23, i64 272, !23, i64 280, !32, i64 288, !14, i64 336, !33, i64 344, !48, i64 352, !49, i64 1264, !14, i64 1272, !14, i64 1280, !11, i64 1288, !50, i64 1296, !56, i64 1304, !57, i64 1368, !57, i64 1376, !57, i64 1384, !57, i64 1392, !11, i64 1400, !10, i64 1404, !10, i64 1468, !10, i64 1532, !10, i64 1596, !10, i64 1660, !10, i64 1724, !10, i64 1788, !10, i64 1852, !10, i64 1916, !10, i64 1980, !10, i64 2044, !10, i64 2108, !58, i64 2176, !10, i64 2184, !23, i64 2248, !11, i64 2256, !23, i64 2264, !10, i64 2272, !59, i64 2304, !59, i64 2312, !37, i64 2320, !23, i64 2328, !14, i64 2336, !10, i64 2344, !23, i64 2376, !11, i64 2384, !14, i64 2392, !14, i64 2400, !11, i64 2408, !11, i64 2412, !14, i64 2416, !14, i64 2424, !14, i64 2432, !14, i64 2440, !53, i64 2448, !23, i64 2456, !38, i64 2464, !38, i64 2472, !23, i64 2480, !11, i64 2488, !11, i64 2492, !11, i64 2496, !23, i64 2504, !11, i64 2512, !11, i64 2516, !23, i64 2520, !23, i64 2528, !23, i64 2536, !69, i64 2544, !14, i64 3344, !11, i64 3352, !14, i64 3360, !14, i64 3368, !70, i64 3376, !11, i64 3384, !15, i64 3392, !71, i64 3400, !72, i64 3408, !11, i64 3416, !11, i64 3420, !11, i64 3424, !11, i64 3428, !37, i64 3432, !23, i64 3440, !11, i64 3448, !34, i64 3456, !74, i64 3464, !14, i64 3592, !79, i64 3600, !14, i64 5840, !14, i64 5848, !80, i64 5856, !81, i64 5864, !23, i64 5872, !11, i64 5880, !11, i64 5884, !11, i64 5888, !23, i64 5896, !23, i64 5904, !23, i64 5912, !14, i64 5920, !14, i64 5928, !14, i64 5936, !14, i64 5944, !83, i64 5952, !23, i64 5960, !37, i64 5968, !23, i64 5976, !37, i64 5984, !23, i64 5992}
!85 = !{!25, !11, i64 0}
!86 = !{!84, !11, i64 72}
!87 = !{!"p1 _ZTS13x509_store_st", !14, i64 0}
!88 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !14, i64 0}
!89 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40}
!90 = !{!"p1 _ZTS17stack_st_SSL_COMP", !14, i64 0}
!91 = !{!"p1 _ZTS14ctlog_store_st", !14, i64 0}
!92 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !14, i64 0}
!93 = !{!"ossl_ech_ctx_st", !66, i64 0, !37, i64 8, !23, i64 16, !14, i64 24}
!94 = !{!"", !14, i64 0, !14, i64 8, !10, i64 16, !92, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !11, i64 72, !10, i64 76, !23, i64 80, !37, i64 88, !23, i64 96, !44, i64 104, !23, i64 112, !44, i64 120, !23, i64 128, !64, i64 136, !14, i64 144, !14, i64 152, !37, i64 160, !23, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !10, i64 208, !93, i64 240}
!95 = !{!"p2 _ZTS9evp_md_st", !82, i64 0}
!96 = !{!"dane_ctx_st", !95, i64 0, !37, i64 8, !10, i64 16, !23, i64 24}
!97 = !{!"p1 _ZTS17tls_group_info_st", !14, i64 0}
!98 = !{!"p1 _ZTS18tls_sigalg_info_st", !14, i64 0}
!99 = !{!"p1 _ZTS18ssl_token_store_st", !14, i64 0}
!100 = !{!"ssl_ctx_st", !18, i64 0, !16, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !87, i64 40, !88, i64 48, !23, i64 56, !59, i64 64, !59, i64 72, !11, i64 80, !29, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !89, i64 120, !17, i64 164, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !20, i64 240, !40, i64 256, !40, i64 264, !53, i64 272, !90, i64 280, !14, i64 288, !38, i64 296, !38, i64 304, !23, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !23, i64 336, !58, i64 344, !14, i64 352, !11, i64 360, !14, i64 368, !14, i64 376, !11, i64 384, !23, i64 392, !10, i64 400, !14, i64 432, !14, i64 440, !50, i64 448, !11, i64 456, !91, i64 464, !14, i64 472, !14, i64 480, !23, i64 488, !23, i64 496, !23, i64 504, !23, i64 512, !14, i64 520, !14, i64 528, !14, i64 536, !14, i64 544, !94, i64 552, !14, i64 824, !14, i64 832, !14, i64 840, !14, i64 848, !74, i64 856, !96, i64 984, !71, i64 1016, !14, i64 1024, !14, i64 1032, !14, i64 1040, !11, i64 1048, !11, i64 1052, !14, i64 1056, !14, i64 1064, !23, i64 1072, !23, i64 1080, !14, i64 1088, !14, i64 1096, !14, i64 1104, !23, i64 1112, !14, i64 1120, !14, i64 1128, !11, i64 1136, !14, i64 1144, !14, i64 1152, !37, i64 1160, !10, i64 1168, !10, i64 1232, !10, i64 1440, !10, i64 1560, !23, i64 1680, !23, i64 1688, !42, i64 1696, !44, i64 1704, !97, i64 1712, !23, i64 1720, !23, i64 1728, !98, i64 1736, !23, i64 1744, !23, i64 1752, !11, i64 1760, !11, i64 1764, !11, i64 1768, !11, i64 1772, !37, i64 1776, !23, i64 1784, !37, i64 1792, !23, i64 1800, !23, i64 1808, !99, i64 1816, !37, i64 1824}
!101 = !{!100, !18, i64 0}
!102 = !{!"p1 _ZTS16ossl_provider_st", !14, i64 0}
!103 = !{!"provider_ctx_data_st", !15, i64 0, !102, i64 8}
!104 = !{!103, !15, i64 0}
!105 = !{!103, !102, i64 8}
!106 = !{!100, !23, i64 1744}
!107 = !{!100, !98, i64 1736}
!108 = !{!"tls_sigalg_info_st", !37, i64 0, !47, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!109 = !{!108, !37, i64 64}
!110 = !{!108, !37, i64 32}
!111 = !{!108, !37, i64 16}
!112 = !{!"", !11, i64 0, !11, i64 4}
!113 = !{!112, !11, i64 0}
!114 = !{!112, !11, i64 4}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!100, !23, i64 1720}
!117 = !{!100, !97, i64 1712}
!118 = !{!"tls_group_info_st", !37, i64 0, !37, i64 8, !37, i64 16, !11, i64 24, !47, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !10, i64 48}
!119 = !{!118, !47, i64 28}
!120 = !{!118, !37, i64 0}
!121 = !{!"", !11, i64 0, !47, i64 4}
!122 = !{!84, !15, i64 8}
!123 = !{!84, !58, i64 2176}
!124 = !{!"", !14, i64 0, !23, i64 8}
!125 = !{!"cert_st", !43, i64 0, !36, i64 8, !14, i64 16, !11, i64 24, !11, i64 28, !43, i64 32, !23, i64 40, !37, i64 48, !23, i64 56, !44, i64 64, !23, i64 72, !44, i64 80, !23, i64 88, !14, i64 96, !14, i64 104, !87, i64 112, !87, i64 120, !124, i64 128, !14, i64 144, !11, i64 152, !14, i64 160, !37, i64 168, !17, i64 176}
!126 = !{!125, !11, i64 28}
!127 = !{!44, !44, i64 0}
!128 = !{!84, !44, i64 2712}
!129 = !{!100, !44, i64 656}
!130 = !{!100, !23, i64 648}
!131 = !{!84, !23, i64 2704}
!132 = !{!23, !23, i64 0}
!133 = !{!64, !64, i64 0}
!134 = !{!11, !11, i64 0}
!135 = !{!84, !16, i64 24}
!136 = !{!25, !24, i64 216}
!137 = !{!"ssl3_enc_method", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !37, i64 32, !23, i64 40, !37, i64 48, !23, i64 56, !14, i64 64, !14, i64 72, !11, i64 80, !14, i64 88, !14, i64 96, !14, i64 104}
!138 = !{!137, !11, i64 80}
!139 = !{!10, !10, i64 0}
!140 = !{!118, !11, i64 24}
!141 = !{!"", !97, i64 0, !23, i64 8}
!142 = !{!141, !97, i64 0}
!143 = !{!141, !23, i64 8}
!144 = !{!118, !11, i64 32}
!145 = !{!14, !14, i64 0}
!146 = !{!84, !11, i64 120}
!147 = !{!84, !35, i64 768}
!148 = !{!"ssl_cipher_st", !11, i64 0, !37, i64 8, !37, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72}
!149 = !{!148, !11, i64 24}
!150 = !{!84, !23, i64 2480}
!151 = !{!84, !23, i64 2720}
!152 = !{!84, !44, i64 2728}
!153 = !{!47, !47, i64 0}
!154 = !{!"", !15, i64 0, !23, i64 8, !23, i64 16, !44, i64 24, !23, i64 32, !23, i64 40, !64, i64 48, !23, i64 56, !23, i64 64, !44, i64 72, !11, i64 80, !11, i64 84, !11, i64 88}
!155 = !{!154, !23, i64 8}
!156 = !{!154, !23, i64 32}
!157 = !{!154, !23, i64 56}
!158 = !{!154, !15, i64 0}
!159 = !{!154, !44, i64 24}
!160 = !{!154, !64, i64 48}
!161 = !{!154, !44, i64 72}
!162 = !{!154, !23, i64 40}
!163 = !{!154, !23, i64 64}
!164 = !{!154, !23, i64 16}
!165 = !{!154, !11, i64 84}
!166 = !{!154, !11, i64 88}
!167 = !{!154, !11, i64 80}
!168 = !{!37, !37, i64 0}
!169 = !{!"sigalg_lookup_st", !37, i64 0, !37, i64 8, !47, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!170 = !{!169, !11, i64 20}
!171 = !{!169, !11, i64 24}
!172 = !{!40, !40, i64 0}
!173 = !{!169, !11, i64 44}
end_hunk_1
