inline.NumInlined: 62
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@default_fixup_args:bb.a
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !40 ; 2 uses
  br i1 %.not173, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hg = tail call i32 @OSSL_PARAM_set_BN(ptr noundef %i.hf, ptr noundef nonnull %i.hd) #7
  br label %.thread200

bb.br:                                            ; preds = %bb.bp
  %i.hh = tail call i32 @OSSL_PARAM_set_uint(ptr noundef %i.hf, i32 noundef %i.ew) #7
  br label %.thread200

bb.bs:                                            ; preds = %bb.bn
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !38
  %i.hm = tail call i32 @OSSL_PARAM_set_utf8_string(ptr noundef %i.hj, ptr noundef %i.hl) #7
  br label %.thread200

bb.bt:                                            ; preds = %bb.bn
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !40
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !38
  %i.hr = tail call i32 @OSSL_PARAM_set_octet_string(ptr noundef %i.ho, ptr noundef %i.hq, i64 noundef %.0) #7
  br label %.thread200

bb.bu:                                            ; preds = %bb.bn
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !40
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !38
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !48
  %i.hx = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef %i.ht, ptr noundef %i.hw, i64 noundef %.0) #7
  br label %.thread200

bb.bv:                                            ; preds = %bb.bn
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 694, ptr noundef nonnull @__func__.default_fixup_args) #7
  %i.hy = load i32, ptr %i.gk, align 8, !tbaa !32
  %i.hz = load i32, ptr %i.gn, align 8, !tbaa !44
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, ptr noundef nonnull @.str.7, i32 noundef %i.hy, i32 noundef %0, i32 noundef %i.hz) #7
  br label %.thread200

bb.bw:                                            ; preds = %.thread192
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !44
  %i.ic = icmp eq i32 %i.ib, 7
  br i1 %i.ic, label %bb.bx, label %.thread200

bb.bx:                                            ; preds = %bb.bw
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !38
  br label %.thread200

.thread200:                                       ; preds = %.thread192, %bb.bg, %bb.bf, %bb.at, %.thread, %bb.b, %bb.aa, %bb.ac, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.u, %bb.t, %bb.aj, %bb.ah, %bb.bw, %bb.bx, %bb.ai, %bb.bl, %bb.bo, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.az, %bb.ay, %bb.x, %bb.a, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.aw, %bb.ab, %bb.z, %bb.s, %bb.e, %bb.c
  %.2 = phi i32 [ 0, %bb.az ], [ 0, %bb.c ], [ 0, %bb.e ], [ -2, %bb.s ], [ 0, %bb.bl ], [ %i.b, %bb.a ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %i.ew, %bb.bg ], [ 0, %bb.be ], [ %i.ff, %bb.aw ], [ 1, %bb.ba ], [ 0, %bb.x ], [ 0, %bb.ay ], [ %i.ft, %bb.bb ], [ %i.ga, %bb.bc ], [ %i.gg, %bb.bd ], [ 0, %bb.bv ], [ %i.hb, %bb.bo ], [ %i.hg, %bb.bq ], [ %i.hh, %bb.br ], [ %i.hm, %bb.bs ], [ %i.hr, %bb.bt ], [ %i.hx, %bb.bu ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ah ], [ 1, %bb.b ], [ %.0158195, %bb.bx ], [ %.0158195, %bb.bw ], [ %.0158195, %.thread192 ], [ 1, %bb.at ], [ %.0157.ph, %.thread ], [ %i.ew, %bb.bf ]
  ret i32 %.2
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @evp_pkey_ctx_get_params_strict(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @evp_pkey_ctx_set_params_strict(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @evp_pkey_ctx_ctrl_str_to_param(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.translation_ctx_st, align 8 ; 13 uses
  %4 = alloca %struct.translation_st, align 8     ; 10 uses
  %5 = alloca [2 x %struct.ossl_param_st], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9    ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %spec.select = select i1 %i.e, i32 -1, i32 %i.d
  store i32 2, ptr %4, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.c, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.c, ptr %i.g, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %spec.select, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !61
  %i.k = call fastcc ptr @lookup_translation(ptr noundef nonnull %4, ptr noundef nonnull @evp_pkey_ctx_translations, i64 noundef 86) ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %.not29 = icmp eq ptr %i.m, null
  %spec.select30 = select i1 %.not29, ptr @default_fixup_args, ptr %i.m
  %i.n = load i32, ptr %i.k, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.p = icmp ne ptr %i.o, null
  %i.q = zext i1 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.q, ptr %i.r, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %.1 = phi ptr [ %spec.select30, %bb.b ], [ @default_fixup_args, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %.sink, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.t, align 8, !tbaa !53
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #8
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.v, ptr %i.w, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %2, ptr %i.x, align 8, !tbaa !38
  store ptr %0, ptr %3, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %5, ptr %i.y, align 8, !tbaa !40
  %i.z = call i32 %.1(i32 noundef 4, ptr noundef %i.k, ptr noundef nonnull %3) #7 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = load i32, ptr %i.s, align 8
  %cond = icmp eq i32 %i.ab, 2
  %or.cond = select i1 %i.aa, i1 %cond, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.ad = call i32 @evp_pkey_ctx_set_params_strict(ptr noundef nonnull %0, ptr noundef %i.ac) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024 = phi i32 [ %i.ad, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %i.ae = icmp sgt i32 %.024, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = call i32 %.1(i32 noundef 5, ptr noundef %i.k, ptr noundef nonnull %3) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.125 = phi i32 [ %i.af, %bb.f ], [ %.024, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %cleanup_translation_ctx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @CRYPTO_free(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str, i32 noundef 718) #7
  br label %cleanup_translation_ctx.exit

cleanup_translation_ctx.exit:                     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.125
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @evp_pkey_ctx_set_params_to_ctrl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @evp_pkey_ctx_setget_params_to_ctrl(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @evp_pkey_ctx_setget_params_to_ctrl(ptr noundef %0, i32 noundef range(i32 1, 3) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.translation_ctx_st, align 8 ; 13 uses
  %4 = alloca %struct.translation_st, align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %spec.select = select i1 %i.d, i32 -1, i32 %i.c ; 2 uses
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %.not4056 = icmp eq ptr %i.o, null
  br i1 %.not4056, label %.critedge, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %.lr.ph
  %5 = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph58

bb.b:                                             ; preds = %cleanup_translation_ctx.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.0364857, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %.not40 = icmp eq ptr %i.q, null
  br i1 %.not40, label %.critedge, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ %i.o, %.lr.ph58.preheader ]
  %.0364857 = phi ptr [ %i.p, %bb.b ], [ %2, %.lr.ph58.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  store i32 %1, ptr %4, align 8, !tbaa !31
  store i32 %1, ptr %i.e, align 8, !tbaa !32
  store <2 x i32> %6, ptr %i.f, align 4, !tbaa !5
  store i32 %spec.select, ptr %i.g, align 4, !tbaa !26
  store ptr %i.r, ptr %i.h, align 8, !tbaa !45
  %i.s = call fastcc ptr @lookup_translation(ptr noundef nonnull %4, ptr noundef nonnull @evp_pkey_ctx_translations, i64 noundef 86) ; 5 uses
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph58
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %.not42 = icmp eq ptr %i.u, null
  %spec.select43 = select i1 %.not42, ptr @default_fixup_args, ptr %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !22
  store i32 %i.w, ptr %i.i, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph58
  %.133 = phi ptr [ %spec.select43, %bb.c ], [ @default_fixup_args, %.lr.ph58 ] ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !39
  store ptr %.0364857, ptr %i.j, align 8, !tbaa !40
  %i.x = call i32 %.133(i32 noundef 7, ptr noundef %i.s, ptr noundef nonnull %3) #7 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = load i32, ptr %i.e, align 8
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !36
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !37
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.ae = call i32 @EVP_PKEY_CTX_ctrl(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %spec.select, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef %i.ad) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.031 = phi i32 [ %i.ae, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.af = icmp sgt i32 %.031, -1
  br i1 %i.af, label %bb.g, label %.critedge.critedge

bb.g:                                             ; preds = %bb.f
  store i32 %.031, ptr %i.k, align 4, !tbaa !37
  %i.ag = call i32 %.133(i32 noundef 8, ptr noundef %i.s, ptr noundef nonnull %3) #7 ; 0 uses
  %i.ah = load i32, ptr %i.k, align 4, !tbaa !37
  %i.ai = icmp slt i32 %i.ah, 1
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %cleanup_translation_ctx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @CRYPTO_free(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str, i32 noundef 718) #7
  br label %cleanup_translation_ctx.exit

cleanup_translation_ctx.exit:                     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br i1 %i.ai, label %.critedge, label %bb.b

.critedge.critedge:                               ; preds = %bb.f
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %.not.i45 = icmp eq ptr %i.ak, null
  br i1 %.not.i45, label %cleanup_translation_ctx.exit46, label %bb.i

bb.i:                                             ; preds = %.critedge.critedge
  call void @CRYPTO_free(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str, i32 noundef 718) #7
  br label %cleanup_translation_ctx.exit46

cleanup_translation_ctx.exit46:                   ; preds = %.critedge.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %cleanup_translation_ctx.exit, %.lr.ph, %bb.a, %cleanup_translation_ctx.exit46
  %.2 = phi i32 [ 0, %cleanup_translation_ctx.exit46 ], [ 1, %bb.a ], [ 1, %.lr.ph ], [ 0, %cleanup_translation_ctx.exit ], [ 1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @evp_pkey_ctx_get_params_to_ctrl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @evp_pkey_ctx_setget_params_to_ctrl(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @evp_pkey_get_params_to_ctrl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.translation_ctx_st, align 8 ; 9 uses
  %3 = alloca %struct.translation_st, align 8     ; 7 uses
  %.not41.i = icmp eq ptr %1, null
  br i1 %.not41.i, label %evp_pkey_setget_params_to_ctrl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.f = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %.not28.i3 = icmp eq ptr %i.f, null
  br i1 %.not28.i3, label %evp_pkey_setget_params_to_ctrl.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %cleanup_translation_ctx.exit.i
  %i.g = phi ptr [ %i.p, %cleanup_translation_ctx.exit.i ], [ %i.f, %.lr.ph.i ]
  %.02242.i4 = phi ptr [ %i.o, %cleanup_translation_ctx.exit.i ], [ %1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !31
  store ptr %i.g, ptr %i.a, align 8, !tbaa !45
  %i.h = call fastcc ptr @lookup_translation(ptr noundef nonnull %3, ptr noundef nonnull @evp_pkey_translations, i64 noundef 41) ; 4 uses
  %.not29.i = icmp eq ptr %i.h, null
  br i1 %.not29.i, label %.critedge35.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not30.i = icmp eq ptr %i.j, null
  %i.k = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !32
  store ptr %0, ptr %i.c, align 8, !tbaa !38
  store ptr %.02242.i4, ptr %i.d, align 8, !tbaa !40
  %i.l = icmp ne i32 %i.k, 1
  %brmerge.i = select i1 %i.l, i1 true, i1 %.not30.i, !prof !64
  br i1 %brmerge.i, label %.critedge35.i, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.h, ptr noundef nonnull %2) #7, !inline_history !66
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %cleanup_translation_ctx.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @CRYPTO_free(ptr noundef nonnull %i.n, ptr noundef nonnull @.str, i32 noundef 718) #7
  br label %cleanup_translation_ctx.exit.i

cleanup_translation_ctx.exit.i:                   ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.o = getelementptr inbounds nuw i8, ptr %.02242.i4, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  %.not28.i = icmp eq ptr %i.p, null
  br i1 %.not28.i, label %evp_pkey_setget_params_to_ctrl.exit, label %.lr.ph

.critedge35.i:                                    ; preds = %bb.b, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %evp_pkey_setget_params_to_ctrl.exit

evp_pkey_setget_params_to_ctrl.exit:              ; preds = %cleanup_translation_ctx.exit.i, %.lr.ph.i, %bb.a, %.critedge35.i
  %.2.i = phi i32 [ -2, %.critedge35.i ], [ 1, %bb.a ], [ 1, %.lr.ph.i ], [ %i.m, %cleanup_translation_ctx.exit.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 2) i32 @default_check(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.l [
    i32 1, label %bb.b
    i32 4, label %bb.e
    i32 7, label %bb.i
    i32 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %.sink.split, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %.sink.split, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.sink.split, label %bb.l, !prof !58

bb.e:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr %1, align 8, !tbaa !31
  %.not15 = icmp eq i32 %i.e, 1
  br i1 %.not15, label %.sink.split, label %bb.g, !prof !58

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %.sink.split, label %bb.h, !prof !58

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %.sink.split, label %bb.l, !prof !58

bb.i:                                             ; preds = %bb.a, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.sink.split, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %.sink.split, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_0
