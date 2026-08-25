Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/tls1_prf?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@kdf_tls1_prf_reset:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  tail call void @CRYPTO_clear_free(ptr noundef %i.k, i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 157) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_tls1_prf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %tls1_prf_alg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kdf_tls1_prf_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %tls1_prf_alg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @__func__.kdf_tls1_prf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 129, ptr noundef null) #8
  br label %tls1_prf_alg.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @__func__.kdf_tls1_prf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 132, ptr noundef null) #8
  br label %tls1_prf_alg.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 4 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 277, ptr noundef nonnull @__func__.kdf_tls1_prf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 140, ptr noundef null) #8
  br label %tls1_prf_alg.exit

bb.i:                                             ; preds = %bb.g
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull @__func__.kdf_tls1_prf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 105, ptr noundef null) #8
  br label %tls1_prf_alg.exit

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = add i64 %i.p, 1
  %i.t = lshr i64 %i.s, 1                         ; 3 uses
  %i.u = tail call fastcc i32 @tls1_prf_P_hash(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i64 noundef %i.t, ptr noundef %i.r, i64 noundef range(i64 1, 0) %i.j, ptr noundef %1, i64 noundef range(i64 1, 0) %2)
  %.not43.i = icmp eq i32 %i.u, 0
  br i1 %.not43.i, label %tls1_prf_alg.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call noalias ptr @CRYPTO_malloc(i64 noundef range(i64 1, 0) %2, ptr noundef nonnull @.str, i32 noundef 590) #8 ; 7 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %tls1_prf_alg.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.y = sub nsw i64 0, %i.t
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %i.aa = tail call fastcc i32 @tls1_prf_P_hash(ptr noundef %i.n, ptr noundef %i.z, i64 noundef %i.t, ptr noundef %i.r, i64 noundef range(i64 1, 0) %i.j, ptr noundef nonnull %i.v, i64 noundef range(i64 1, 0) %2)
  %.not44.i = icmp eq i32 %i.aa, 0
  br i1 %.not44.i, label %bb.o, label %iter.check

iter.check:                                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %2, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !20
  %wide.load27 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load28 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !20
  %wide.load29 = load <16 x i8>, ptr %i.af, align 1, !tbaa !20
  %i.ag = xor <16 x i8> %wide.load28, %wide.load
  %i.ah = xor <16 x i8> %wide.load29, %wide.load27
  store <16 x i8> %i.ag, ptr %i.ae, align 1, !tbaa !20
  store <16 x i8> %i.ah, ptr %i.af, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %index31
  %wide.load32 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %index31 ; 2 uses
  %wide.load33 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !20
  %i.al = xor <4 x i8> %wide.load33, %wide.load32
  store <4 x i8> %i.al, ptr %i.ak, align 1, !tbaa !20
  %index.next34 = add nuw i64 %index31, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %2, %n.vec30
  br i1 %cmp.n35, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.045.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ]
  br label %.preheader.i

bb.o:                                             ; preds = %bb.n
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.v, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull @.str, i32 noundef 595) #8
  br label %tls1_prf_alg.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.045.i = phi i64 [ %i.as, %.preheader.i ], [ %.045.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %.045.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.045.i ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = xor i8 %i.aq, %i.ao
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !20
  %i.as = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !27

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.v, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull @.str, i32 noundef 600) #8
  br label %tls1_prf_alg.exit

bb.p:                                             ; preds = %bb.k
  %i.at = tail call fastcc i32 @tls1_prf_P_hash(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i64 noundef %i.p, ptr noundef %i.r, i64 noundef range(i64 1, 0) %i.j, ptr noundef %1, i64 noundef range(i64 1, 0) %2)
  br label %tls1_prf_alg.exit

tls1_prf_alg.exit:                                ; preds = %bb.p, %.loopexit, %bb.o, %bb.m, %bb.l, %bb.a, %bb.b, %bb.j, %bb.h, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.at, %bb.p ], [ 0, %bb.m ], [ 0, %bb.l ], [ 1, %.loopexit ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_tls1_prf_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @tls1prf_set_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_tls1_prf_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.tls1prf_set_ctx_params_st, align 8 ; 14 uses
  %3 = alloca %struct.PROV_DIGEST, align 8        ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [6 x ptr], align 16               ; 8 uses
  %i.c = alloca [6 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %tls1prf_set_ctx_params_decoder.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %tls1prf_set_ctx_params_decoder.exit.thread141, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not4351.i = icmp eq ptr %i.e, null
  br i1 %.not4351.i, label %tls1prf_set_ctx_params_decoder.exit.thread141, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.z, %.lr.ph.i
  %5 = phi i32 [ 0, %.lr.ph.i ], [ %6, %bb.z ]    ; 15 uses
  %i.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ay, %bb.z ] ; 18 uses
  %i.j = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ba, %bb.z ] ; 17 uses
  %.03952.i = phi ptr [ %1, %.lr.ph.i ], [ %i.az, %bb.z ] ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  switch i8 %i.k, label %bb.z [
    i8 100, label %bb.d
    i8 115, label %bb.q
    i8 112, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %cond1.i = icmp eq i8 %i.m, 105
  br i1 %cond1.i, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %cond2.i = icmp eq i8 %i.o, 103
  br i1 %cond2.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %cond3.i = icmp eq i8 %i.q, 101
  br i1 %cond3.i, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %cond4.i = icmp eq i8 %i.s, 115
  br i1 %cond4.i, label %bb.h, label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %cond5.i = icmp eq i8 %i.u, 116
  br i1 %cond5.i, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %cond6.i = icmp eq i8 %i.w, 0
  br i1 %cond6.i, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %2, align 8, !tbaa !30
  %.not46.i = icmp eq ptr %i.x, null
  br i1 %.not46.i, label %bb.l, label %bb.k, !prof !33

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 102, ptr noundef nonnull @__func__.tls1prf_set_ctx_params_decoder) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.j) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

bb.l:                                             ; preds = %bb.j
  store ptr %.03952.i, ptr %2, align 8, !tbaa !30
  br label %bb.z

bb.m:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.12, ptr noundef nonnull dereferenceable(1) %i.y) #9
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.z, !prof !33

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %4, align 8, !tbaa !34
  %.not44.i = icmp eq ptr %i.ab, null
  br i1 %.not44.i, label %bb.p, label %bb.o, !prof !33

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 144, ptr noundef nonnull @__func__.tls1prf_set_ctx_params_decoder) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.j) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

bb.p:                                             ; preds = %bb.n
  store ptr %.03952.i, ptr %4, align 8, !tbaa !34
  br label %bb.z

bb.q:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %cond.i = icmp eq i8 %i.ad, 101
  br i1 %cond.i, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  switch i8 %i.af, label %bb.z [
    i8 99, label %bb.s
    i8 101, label %sub_0.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.13, ptr noundef nonnull dereferenceable(1) %i.ag) #9
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.t, label %bb.z, !prof !33

bb.t:                                             ; preds = %bb.s
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !35
  %.not45.i = icmp eq ptr %i.aj, null
  br i1 %.not45.i, label %bb.v, label %bb.u, !prof !33

bb.u:                                             ; preds = %bb.t
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 163, ptr noundef nonnull @__func__.tls1prf_set_ctx_params_decoder) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.j) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

bb.v:                                             ; preds = %bb.t
  store ptr %.03952.i, ptr %i.h, align 8, !tbaa !35
  br label %bb.z

sub_0.i:                                          ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 100, %i.am
  %.not53.i = icmp eq i8 %i.al, 100
  br i1 %.not53.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 0, %i.aq
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %i.as = phi i32 [ %i.an, %sub_0.i ], [ %i.ar, %sub_1.i ]
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.z, !prof !33

bb.w:                                             ; preds = %.tail.i
  %i.au = icmp sgt i32 %i.i, 5
  br i1 %i.au, label %bb.x, label %bb.y, !prof !36

bb.x:                                             ; preds = %bb.w
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 174, ptr noundef nonnull @__func__.tls1prf_set_ctx_params_decoder) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 126, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.j, i32 noundef 6) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.av = add nsw i32 %i.i, 1                     ; 2 uses
  %i.aw = sext i32 %i.i to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aw
  store ptr %.03952.i, ptr %i.ax, align 8, !tbaa !37
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.tail.i, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %6 = phi i32 [ %5, %bb.i ], [ %5, %bb.c ], [ %5, %bb.e ], [ %5, %bb.g ], [ %5, %bb.l ], [ %5, %bb.h ], [ %5, %bb.f ], [ %5, %bb.d ], [ %5, %bb.p ], [ %5, %bb.m ], [ %5, %bb.r ], [ %5, %bb.v ], [ %5, %bb.s ], [ %i.av, %bb.y ], [ %5, %.tail.i ], [ %5, %bb.q ] ; 4 uses
  %i.ay = phi i32 [ %i.i, %bb.i ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.l ], [ %i.i, %bb.h ], [ %i.i, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.p ], [ %i.i, %bb.m ], [ %i.i, %bb.r ], [ %i.i, %bb.v ], [ %i.i, %bb.s ], [ %i.av, %bb.y ], [ %i.i, %.tail.i ], [ %i.i, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %.03952.i, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28 ; 2 uses
  %.not43.i = icmp eq ptr %i.ba, null
  br i1 %.not43.i, label %tls1prf_set_ctx_params_decoder.exit, label %bb.c, !llvm.loop !38

tls1prf_set_ctx_params_decoder.exit.thread141:    ; preds = %.preheader.i, %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !8
  %i.bc = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.bb) #8 ; 0 uses
  br label %bb.aj

tls1prf_set_ctx_params_decoder.exit:              ; preds = %bb.z
  store i32 %6, ptr %i.f, align 8
  %.pr = load ptr, ptr %2, align 8, !tbaa !30     ; 4 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !8
  %i.be = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.bd) #8 ; 4 uses
  %.not71 = icmp eq ptr %.pr, null
  br i1 %.not71, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %tls1prf_set_ctx_params_decoder.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bf = call i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef nonnull %.pr, ptr noundef nonnull %i.a) #8
  %.not72 = icmp eq i32 %i.bf, 0
  br i1 %.not72, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bh = call i32 @OPENSSL_strcasecmp(ptr noundef %i.bg, ptr noundef nonnull @.str.6) #8
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 3 uses
  %i.bm = call i32 @ossl_prov_macctx_load(ptr noundef nonnull %i.bj, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.bl, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %i.be) #8
  %.not74 = icmp eq i32 %i.bm, 0
  br i1 %.not74, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = call i32 @ossl_prov_macctx_load(ptr noundef nonnull %i.bn, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.bl, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef %i.be) #8
  %.not75 = icmp eq i32 %i.bo, 0
  br i1 %.not75, label %.critedge, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15
  call void @EVP_MAC_CTX_free(ptr noundef %i.bq) #8
  store ptr null, ptr %i.bp, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.bu = call i32 @ossl_prov_macctx_load(ptr noundef nonnull %i.br, ptr noundef null, ptr noundef null, ptr noundef nonnull %.pr, ptr noundef %i.bt, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, ptr noundef %i.be) #8
  %.not73 = icmp eq i32 %i.bu, 0
  br i1 %.not73, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bv = phi ptr [ %i.bt, %bb.ae ], [ %i.bl, %bb.ad ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.bw = call i32 @ossl_prov_digest_load(ptr noundef nonnull %3, ptr noundef nonnull %.pr, ptr noundef %i.bv, ptr noundef %i.be) #8
  %.not76 = icmp eq i32 %i.bw, 0
  br i1 %.not76, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = call ptr @ossl_prov_digest_md(ptr noundef nonnull %3) #8
  %i.by = call i32 @EVP_MD_xof(ptr noundef %i.bx) #8
  %.not77 = icmp eq i32 %i.by, 0
  br i1 %.not77, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 348, ptr noundef nonnull @__func__.kdf_tls1_prf_set_ctx_params) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 183, ptr noundef null) #8
  call void @ossl_prov_digest_reset(ptr noundef nonnull %3) #8
  br label %.critedge

bb.ai:                                            ; preds = %bb.ag
  call void @ossl_prov_digest_reset(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.aj

bb.aj:                                            ; preds = %tls1prf_set_ctx_params_decoder.exit.thread141, %bb.ai, %tls1prf_set_ctx_params_decoder.exit
  %i.bz = phi i32 [ 0, %tls1prf_set_ctx_params_decoder.exit.thread141 ], [ %6, %bb.ai ], [ %6, %tls1prf_set_ctx_params_decoder.exit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 2 uses
  %.not78 = icmp eq ptr %i.cb, null
  br i1 %.not78, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !17
  call void @CRYPTO_clear_free(ptr noundef %i.cd, i64 noundef %i.cf, ptr noundef nonnull @.str, i32 noundef 364) #8
  store ptr null, ptr %i.cc, align 8, !tbaa !16
  %i.cg = call i32 @OSSL_PARAM_get_octet_string(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc, i64 noundef 0, ptr noundef nonnull %i.ce) #8
  %.not79 = icmp eq i32 %i.cg, 0
  br i1 %.not79, label %tls1prf_set_ctx_params_decoder.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ch = icmp sgt i32 %i.bz, 0
  br i1 %i.ch, label %bb.am, label %tls1prf_set_ctx_params_decoder.exit.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.as
  %indvars.iv = phi i64 [ 0, %bb.am ], [ %indvars.iv.next, %bb.as ] ; 4 uses
  %.0113 = phi i32 [ 0, %bb.am ], [ %.2, %bb.as ] ; 4 uses
  %.058111 = phi i64 [ %i.cj, %bb.am ], [ %.260, %bb.as ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 0, ptr %i.cl, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr null, ptr %i.cm, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !42
  %.not82 = icmp eq i64 %i.cq, 0
  br i1 %.not82, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43
  %.not83 = icmp eq ptr %i.cs, null
  br i1 %.not83, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = sext i32 %.0113 to i64                  ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ct ; 2 uses
  %i.cw = call i32 @OSSL_PARAM_get_octet_string_ptr(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cv) #8
  %.not84 = icmp eq i32 %i.cw, 0
  br i1 %.not84, label %.critedge90, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !40
  %i.cy = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.058111, i64 %i.cx) ; 2 uses
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.cz, label %.critedge90, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.da = extractvalue { i64, i1 } %i.cy, 0
  %i.db = add nsw i32 %.0113, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an, %bb.ao
  %.260 = phi i64 [ %i.da, %bb.ar ], [ %.058111, %bb.ao ], [ %.058111, %bb.an ] ; 3 uses
  %.2 = phi i32 [ %i.db, %bb.ar ], [ %.0113, %bb.ao ], [ %.0113, %bb.an ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.at, label %bb.an, !llvm.loop !44

bb.at:                                            ; preds = %bb.as
  %i.dc = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %.not80 = icmp eq i64 %.260, %i.dc
  br i1 %.not80, label %.critedge89, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.df = call ptr @CRYPTO_clear_realloc(ptr noundef %i.de, i64 noundef %i.dc, i64 noundef %.260, ptr noundef nonnull @.str, i32 noundef 405) #8 ; 2 uses
  %.not81 = icmp eq ptr %i.df, null
  br i1 %.not81, label %.critedge90, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !18
  %i.dg = icmp sgt i32 %.2, 0
  br i1 %i.dg, label %.lr.ph.preheader, label %.critedge89

.lr.ph.preheader:                                 ; preds = %bb.av
  %wide.trip.count130 = zext nneg i32 %.2 to i64  ; 2 uses
  %.pre = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %xtraiter = and i64 %wide.trip.count130, 1
  %i.dh = icmp eq i32 %.2, 1
  br i1 %i.dh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count130, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.di = phi i64 [ %.pre, %.lr.ph.preheader.new ], [ %i.ea, %.lr.ph ]
  %indvars.iv126 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next127.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv126
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !41
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv126 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 16, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %i.do, i1 false)
  %i.dp = load i64, ptr %i.dn, align 16, !tbaa !40
  %i.dq = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ci, align 8, !tbaa !19
  %indvars.iv.next127 = or disjoint i64 %indvars.iv126, 1 ; 2 uses
  %i.ds = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next127
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next127 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.dv, i64 %i.dx, i1 false)
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !40
  %i.dz = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.ea = add i64 %i.dz, %i.dy                    ; 3 uses
  store i64 %i.ea, ptr %i.ci, align 8, !tbaa !19
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge89.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !45

.critedge89.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge89, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge89.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ %.pre, %.lr.ph.preheader ], [ %i.ea, %.critedge89.loopexit.unr-lcssa ]
  %indvars.iv126.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next127.1, %.critedge89.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod158 = trunc i32 %.2 to i1
  call void @llvm.assume(i1 %lcmp.mod158)
  %i.eb = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.epil.init
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv126.epil.init
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv126.epil.init ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.ee, i64 %i.eg, i1 false)
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !40
  %i.ei = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.ej = add i64 %i.ei, %i.eh
  store i64 %i.ej, ptr %i.ci, align 8, !tbaa !19
  br label %.critedge89

.critedge89:                                      ; preds = %.lr.ph.epil.preheader, %.critedge89.loopexit.unr-lcssa, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

.critedge:                                        ; preds = %bb.af, %bb.ad, %bb.aa, %bb.ac, %bb.ae, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

.critedge90:                                      ; preds = %bb.aq, %bb.ap, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %tls1prf_set_ctx_params_decoder.exit.thread

tls1prf_set_ctx_params_decoder.exit.thread:       ; preds = %bb.o, %bb.x, %bb.u, %bb.k, %bb.al, %.critedge89, %.critedge90, %bb.ak, %.critedge, %bb.a
  %.8 = phi i32 [ 0, %.critedge ], [ 0, %bb.ak ], [ 0, %.critedge90 ], [ 0, %bb.a ], [ 1, %bb.al ], [ 1, %.critedge89 ], [ 0, %bb.k ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_tls1_prf_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @tls1prf_get_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_tls1_prf_get_ctx_params(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not1316.i = icmp eq ptr %i.b, null
  br i1 %.not1316.i, label %.thread, label %.lr.ph.i

end_hunk_0
