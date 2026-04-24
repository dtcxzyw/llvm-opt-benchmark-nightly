inline.NumInlined: 64
inline.NumDeleted: 30
begin_hunk_0_@EVP_DecryptFinal_ex:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 9 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !72
  %wide.load91 = load <16 x i8>, ptr %3, align 1, !tbaa !72
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <16 x i8> %wide.load, ptr %1, align 1, !tbaa !72
  store <16 x i8> %wide.load91, ptr %4, align 1, !tbaa !72
  %5 = icmp eq i64 %n.vec, 32
  br i1 %5, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %wide.load.1 = load <16 x i8>, ptr %6, align 1, !tbaa !72
  %wide.load91.1 = load <16 x i8>, ptr %7, align 1, !tbaa !72
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <16 x i8> %wide.load.1, ptr %8, align 1, !tbaa !72
  store <16 x i8> %wide.load91.1, ptr %9, align 1, !tbaa !72
  %10 = icmp eq i64 %n.vec, 64
  br i1 %10, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %wide.load.2 = load <16 x i8>, ptr %11, align 1, !tbaa !72
  %wide.load91.2 = load <16 x i8>, ptr %12, align 1, !tbaa !72
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <16 x i8> %wide.load.2, ptr %13, align 1, !tbaa !72
  store <16 x i8> %wide.load91.2, ptr %14, align 1, !tbaa !72
  %15 = icmp eq i64 %n.vec, 96
  br i1 %15, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %wide.load.3 = load <16 x i8>, ptr %16, align 1, !tbaa !72
  %wide.load91.3 = load <16 x i8>, ptr %17, align 1, !tbaa !72
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <16 x i8> %wide.load.3, ptr %18, align 1, !tbaa !72
  store <16 x i8> %wide.load91.3, ptr %19, align 1, !tbaa !72
  %20 = icmp eq i64 %n.vec, 128
  br i1 %20, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %wide.load.4 = load <16 x i8>, ptr %21, align 1, !tbaa !72
  %wide.load91.4 = load <16 x i8>, ptr %22, align 1, !tbaa !72
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <16 x i8> %wide.load.4, ptr %23, align 1, !tbaa !72
  store <16 x i8> %wide.load91.4, ptr %24, align 1, !tbaa !72
  %25 = icmp eq i64 %n.vec, 160
  br i1 %25, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 312
  %wide.load.a = load <16 x i8>, ptr %i.bk, align 1, !tbaa !72
  %wide.load91.a = load <16 x i8>, ptr %i.bl, align 1, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <16 x i8> %wide.load.a, ptr %i.bm, align 1, !tbaa !72
  store <16 x i8> %wide.load91.a, ptr %i.bn, align 1, !tbaa !72
  %i.bo = icmp eq i64 %n.vec, 192
  br i1 %i.bo, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %wide.load.6 = load <16 x i8>, ptr %26, align 1, !tbaa !72
  %wide.load91.6 = load <16 x i8>, ptr %27, align 1, !tbaa !72
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <16 x i8> %wide.load.6, ptr %28, align 1, !tbaa !72
  store <16 x i8> %wide.load91.6, ptr %29, align 1, !tbaa !72
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@EVP_DecryptFinal_ex:bb.a
  store <4 x i8> %wide.load95, ptr %i.bq, align 1, !tbaa !72
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %n.vec93, %wide.trip.count
end_hunk_1
begin_hunk_2_@EVP_DecryptFinal_ex:bb.a
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !78

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
end_hunk_2
begin_hunk_3_@EVP_DecryptFinal_ex:bb.a
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !72
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond77.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond77.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.ae
  store i32 %i.bg, ptr %2, align 4, !tbaa !5
end_hunk_3
begin_hunk_4_@EVP_CipherPipelineFinal:bb.a
  %i.m = add nuw i64 %.019, 1                     ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ %i.n, %.lr.ph ]
end_hunk_4
begin_hunk_5_@EVP_CIPHER_CTX_set_key_length:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %EVP_CIPHER_settable_ctx_params.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %i.g) #9
  %i.k = tail call ptr @ossl_provider_ctx(ptr noundef %i.j) #9
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.m = tail call ptr %i.l(ptr noundef null, ptr noundef %i.k) #9, !inline_history !83
  br label %EVP_CIPHER_settable_ctx_params.exit

EVP_CIPHER_settable_ctx_params.exit:              ; preds = %bb.c, %bb.d, %bb.e
end_hunk_5
begin_hunk_6_@EVP_CIPHER_settable_ctx_params:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %0) #9
  %i.d = tail call ptr @ossl_provider_ctx(ptr noundef %i.c) #9
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.f = tail call ptr %i.e(ptr noundef null, ptr noundef %i.d) #9
  br label %bb.d

end_hunk_6
begin_hunk_7_@EVP_CIPHER_CTX_ctrl:bb.a
bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.af = load ptr, ptr %0, align 8, !tbaa !9
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !20
end_hunk_7
begin_hunk_8_@EVP_CIPHER_CTX_ctrl:bb.a
bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !20
end_hunk_8
begin_hunk_9_@EVP_CIPHER_CTX_ctrl:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !88
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.18, ptr noundef %i.az, i64 noundef %i.bb) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.be = load ptr, ptr %0, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
end_hunk_9
begin_hunk_10_@EVP_CIPHER_CTX_ctrl:bb.a
bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %10, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.bk = load ptr, ptr %0, align 8, !tbaa !9
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !20
end_hunk_10
begin_hunk_11_@EVP_CIPHER_CTX_ctrl:bb.a
  br label %bb.ax

bb.an:                                            ; preds = %bb.e
  %i.bq = load ptr, ptr %3, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !88
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.21, ptr noundef %i.bq, i64 noundef %i.bs) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !86
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !88
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %12, ptr noundef nonnull @.str.22, ptr noundef %i.bv, i64 noundef %i.bw) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %13, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.by) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.bz = load ptr, ptr %0, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
end_hunk_11
begin_hunk_12_@EVP_CIPHER_CTX_ctrl:bb.a
bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %14, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %15) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.ce = load ptr, ptr %0, align 8, !tbaa !9
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !20
end_hunk_12
begin_hunk_13_@EVP_CIPHER_CTX_ctrl:bb.a

bb.at:                                            ; preds = %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !90 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.au, label %bb.av

end_hunk_13
begin_hunk_14_@EVP_CIPHER_get_params:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

end_hunk_14
begin_hunk_15_@EVP_CIPHER_CTX_get_params:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.d, label %bb.c

end_hunk_15
begin_hunk_16_@EVP_CIPHER_gettable_params:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

end_hunk_16
begin_hunk_17_@EVP_CIPHER_gettable_ctx_params:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %0) #9
  %i.d = tail call ptr @ossl_provider_ctx(ptr noundef %i.c) #9
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.f = tail call ptr %i.e(ptr noundef null, ptr noundef %i.d) #9
  br label %bb.d

end_hunk_17
begin_hunk_18_@EVP_CIPHER_CTX_settable_params:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.d, label %bb.c

end_hunk_18
begin_hunk_19_@EVP_CIPHER_CTX_settable_params:bb.a
  %i.e = tail call ptr @ossl_provider_ctx(ptr noundef %i.d) #9
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call ptr %i.h(ptr noundef %i.j, ptr noundef %i.e) #9
end_hunk_19
begin_hunk_20_@EVP_CIPHER_CTX_gettable_params:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.d, label %bb.c

end_hunk_20
begin_hunk_21_@EVP_CIPHER_CTX_gettable_params:bb.a
  %i.e = tail call ptr @ossl_provider_ctx(ptr noundef %i.d) #9
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call ptr %i.h(ptr noundef %i.j, ptr noundef %i.e) #9
end_hunk_21
begin_hunk_22_@EVP_CIPHER_CTX_copy:bb.a

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

end_hunk_22
begin_hunk_23_@EVP_CIPHER_CTX_copy:bb.a

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @EVP_CIPHER_CTX_reset(ptr noundef %0) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false), !tbaa.struct !96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
end_hunk_23
begin_hunk_24_@EVP_CIPHER_CTX_copy:bb.a
EVP_CIPHER_up_ref.exit:                           ; preds = %bb.i, %bb.h, %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = tail call ptr %i.u(ptr noundef %i.w) #9  ; 2 uses
end_hunk_24
begin_hunk_25_@EVP_CIPHER_CTX_copy:bb.a

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %0) #9
  %.not45 = icmp eq i32 %i.aw, 0
  br i1 %.not45, label %bb.u, label %bb.v
end_hunk_25
begin_hunk_26_@evp_cipher_new:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store atomic i32 1, ptr %i.b seq_cst, align 4, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_26
begin_hunk_27_@evp_cipher_from_algorithm
define internal ptr @evp_cipher_from_algorithm(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 296, ptr noundef nonnull @.str, i32 noundef 1837) #9 ; 35 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c
end_hunk_27
begin_hunk_28_@evp_cipher_from_algorithm:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  store atomic i32 1, ptr %i.d seq_cst, align 4, !tbaa !99
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.e = tail call i32 @evp_names_do_all(ptr noundef %2, i32 noundef %0, ptr noundef nonnull @set_legacy_nid, ptr noundef nonnull %i.c) #9
  %.not = icmp eq i32 %i.e, 0
end_hunk_28
begin_hunk_29_@evp_cipher_from_algorithm:bb.a

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 %0, ptr %i.h, align 8, !tbaa !103
  %i.i = tail call ptr @ossl_algorithm_get1_first_name(ptr noundef nonnull %1) #9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.i, ptr %i.j, align 8, !tbaa !24
end_hunk_29
begin_hunk_30_@evp_cipher_from_algorithm:bb.a

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.m, ptr %i.n, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
end_hunk_30
begin_hunk_31_@evp_cipher_from_algorithm:bb.a
  %.0114 = phi i32 [ 0, %bb.f ], [ %.1115, %bb.av ] ; 40 uses
  %.0112 = phi i32 [ 0, %bb.f ], [ %.1113, %bb.av ] ; 44 uses
  %.0 = phi i32 [ 0, %bb.f ], [ %.1, %bb.av ]     ; 43 uses
  %i.ai = load i32, ptr %.0120, align 8, !tbaa !106
  switch i32 %i.ai, label %bb.av [
    i32 0, label %bb.aw
    i32 1, label %bb.h
end_hunk_31
begin_hunk_32_@evp_cipher_from_algorithm:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %.0120, i64 8
  %.0120.val = load ptr, ptr %i.ak, align 8, !tbaa !108
  store ptr %.0120.val, ptr %i.ah, align 8, !tbaa !33
  %i.al = add nsw i32 %.0, 1
  br label %bb.av
end_hunk_32
begin_hunk_33_@evp_cipher_from_algorithm:bb.a

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %.0120, i64 8
  %.0120.val150 = load ptr, ptr %i.an, align 8, !tbaa !108
  store ptr %.0120.val150, ptr %i.ag, align 8, !tbaa !42
  br label %bb.av

end_hunk_33
begin_hunk_34_@evp_cipher_from_algorithm:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %.0120, i64 8
  %.0120.val151 = load ptr, ptr %i.ap, align 8, !tbaa !108
  store ptr %.0120.val151, ptr %i.af, align 8, !tbaa !45
  br label %bb.av

end_hunk_34
begin_hunk_35_@evp_cipher_from_algorithm:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %.0120, i64 8
  %.0120.val152 = load ptr, ptr %i.ar, align 8, !tbaa !108
  store ptr %.0120.val152, ptr %i.ae, align 8, !tbaa !39
  br label %bb.av

end_hunk_35
begin_hunk_36_@evp_cipher_from_algorithm:bb.a

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %.0120, i64 8
  %.0120.val153 = load ptr, ptr %i.at, align 8, !tbaa !108
  store ptr %.0120.val153, ptr %i.ad, align 8, !tbaa !44
  br label %bb.av

end_hunk_36
begin_hunk_37_@evp_cipher_from_algorithm:bb.a

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %.0120, i64 8
  %.0120.val154 = load ptr, ptr %i.av, align 8, !tbaa !108
  store ptr %.0120.val154, ptr %i.ac, align 8, !tbaa !66
  %i.aw = add nsw i32 %.0118, 1
  br label %bb.av
end_hunk_37
begin_hunk_38_@evp_cipher_from_algorithm:bb.a

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %.0120, i64 8
  %.0120.val155 = load ptr, ptr %i.ay, align 8, !tbaa !108
  store ptr %.0120.val155, ptr %i.ab, align 8, !tbaa !71
  %i.az = add nsw i32 %.0118, 1
  br label %bb.av

bb.v:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !109
  %.not142 = icmp eq ptr %i.ba, null
  br i1 %.not142, label %bb.w, label %bb.av

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %.0120, i64 8
  %.0120.val156 = load ptr, ptr %i.bb, align 8, !tbaa !108
  store ptr %.0120.val156, ptr %i.aa, align 8, !tbaa !109
  br label %bb.av

bb.x:                                             ; preds = %bb.g
end_hunk_38
begin_hunk_39_@evp_cipher_from_algorithm:bb.a

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr i8, ptr %.0120, i64 8
  %.0120.val157 = load ptr, ptr %i.bd, align 8, !tbaa !108
  store ptr %.0120.val157, ptr %i.z, align 8, !tbaa !49
  %i.be = add nsw i32 %.0112, 1
  br label %bb.av
end_hunk_39
begin_hunk_40_@evp_cipher_from_algorithm:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr i8, ptr %.0120, i64 8
  %.0120.val158 = load ptr, ptr %i.bg, align 8, !tbaa !108
  store ptr %.0120.val158, ptr %i.y, align 8, !tbaa !50
  %i.bh = add nsw i32 %.0112, 1
  br label %bb.av
end_hunk_40
begin_hunk_41_@evp_cipher_from_algorithm:bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr i8, ptr %.0120, i64 8
  %.0120.val159 = load ptr, ptr %i.bj, align 8, !tbaa !108
  store ptr %.0120.val159, ptr %i.x, align 8, !tbaa !51
  %i.bk = add nsw i32 %.0112, 1
  br label %bb.av
end_hunk_41
begin_hunk_42_@evp_cipher_from_algorithm:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.bm = getelementptr i8, ptr %.0120, i64 8
  %.0120.val160 = load ptr, ptr %i.bm, align 8, !tbaa !108
  store ptr %.0120.val160, ptr %i.w, align 8, !tbaa !52
  %i.bn = add nsw i32 %.0112, 1
  br label %bb.av
end_hunk_42
begin_hunk_43_@evp_cipher_from_algorithm:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.bp = getelementptr i8, ptr %.0120, i64 8
  %.0120.val161 = load ptr, ptr %i.bp, align 8, !tbaa !108
  store ptr %.0120.val161, ptr %i.v, align 8, !tbaa !21
  %i.bq = add nsw i32 %.0, 1
  br label %bb.av

bb.ah:                                            ; preds = %bb.g
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !95
  %.not136 = icmp eq ptr %i.br, null
  br i1 %.not136, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %bb.ah
  %i.bs = getelementptr i8, ptr %.0120, i64 8
  %.0120.val162 = load ptr, ptr %i.bs, align 8, !tbaa !108
  store ptr %.0120.val162, ptr %i.u, align 8, !tbaa !95
  br label %bb.av

bb.aj:                                            ; preds = %bb.g
  %i.bt = load ptr, ptr %i.t, align 8, !tbaa !91
  %.not135 = icmp eq ptr %i.bt, null
  br i1 %.not135, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.bu = getelementptr i8, ptr %.0120, i64 8
  %.0120.val163 = load ptr, ptr %i.bu, align 8, !tbaa !108
  store ptr %.0120.val163, ptr %i.t, align 8, !tbaa !91
  br label %bb.av

bb.al:                                            ; preds = %bb.g
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !92
  %.not134 = icmp eq ptr %i.bv, null
  br i1 %.not134, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.bw = getelementptr i8, ptr %.0120, i64 8
  %.0120.val164 = load ptr, ptr %i.bw, align 8, !tbaa !108
  store ptr %.0120.val164, ptr %i.s, align 8, !tbaa !92
  br label %bb.av

bb.an:                                            ; preds = %bb.g
end_hunk_43
begin_hunk_44_@evp_cipher_from_algorithm:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.by = getelementptr i8, ptr %.0120, i64 8
  %.0120.val165 = load ptr, ptr %i.by, align 8, !tbaa !108
  store ptr %.0120.val165, ptr %i.r, align 8, !tbaa !53
  br label %bb.av

bb.ap:                                            ; preds = %bb.g
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !93
  %.not132 = icmp eq ptr %i.bz, null
  br i1 %.not132, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ca = getelementptr i8, ptr %.0120, i64 8
  %.0120.val166 = load ptr, ptr %i.ca, align 8, !tbaa !108
  store ptr %.0120.val166, ptr %i.q, align 8, !tbaa !93
  br label %bb.av

bb.ar:                                            ; preds = %bb.g
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !94
  %.not131 = icmp eq ptr %i.cb, null
  br i1 %.not131, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.cc = getelementptr i8, ptr %.0120, i64 8
  %.0120.val167 = load ptr, ptr %i.cc, align 8, !tbaa !108
  store ptr %.0120.val167, ptr %i.p, align 8, !tbaa !94
  br label %bb.av

bb.at:                                            ; preds = %bb.g
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !82
  %.not130 = icmp eq ptr %i.cd, null
  br i1 %.not130, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ce = getelementptr i8, ptr %.0120, i64 8
  %.0120.val168 = load ptr, ptr %i.ce, align 8, !tbaa !108
  store ptr %.0120.val168, ptr %i.o, align 8, !tbaa !82
  br label %bb.av

bb.av:                                            ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at
end_hunk_44
begin_hunk_45_@evp_cipher_from_algorithm:bb.a
  %.1113 = phi i32 [ %.0112, %bb.g ], [ %.0112, %bb.h ], [ %.0112, %bb.i ], [ %.0112, %bb.j ], [ %.0112, %bb.k ], [ %.0112, %bb.l ], [ %.0112, %bb.m ], [ %.0112, %bb.n ], [ %.0112, %bb.o ], [ %.0112, %bb.p ], [ %.0112, %bb.q ], [ %.0112, %bb.r ], [ %.0112, %bb.s ], [ %.0112, %bb.t ], [ %.0112, %bb.u ], [ %.0112, %bb.v ], [ %.0112, %bb.w ], [ %.0112, %bb.x ], [ %i.be, %bb.y ], [ %.0112, %bb.z ], [ %i.bh, %bb.aa ], [ %.0112, %bb.ab ], [ %i.bk, %bb.ac ], [ %.0112, %bb.ad ], [ %i.bn, %bb.ae ], [ %.0112, %bb.af ], [ %.0112, %bb.ag ], [ %.0112, %bb.ah ], [ %.0112, %bb.ai ], [ %.0112, %bb.aj ], [ %.0112, %bb.ak ], [ %.0112, %bb.al ], [ %.0112, %bb.am ], [ %.0112, %bb.an ], [ %.0112, %bb.ao ], [ %.0112, %bb.ap ], [ %.0112, %bb.aq ], [ %.0112, %bb.ar ], [ %.0112, %bb.as ], [ %.0112, %bb.at ], [ %.0112, %bb.au ]
  %.1 = phi i32 [ %.0, %bb.g ], [ %.0, %bb.h ], [ %i.al, %bb.i ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ %.0, %bb.w ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %.0, %bb.z ], [ %.0, %bb.aa ], [ %.0, %bb.ab ], [ %.0, %bb.ac ], [ %.0, %bb.ad ], [ %.0, %bb.ae ], [ %.0, %bb.af ], [ %i.bq, %bb.ag ], [ %.0, %bb.ah ], [ %.0, %bb.ai ], [ %.0, %bb.aj ], [ %.0, %bb.ak ], [ %.0, %bb.al ], [ %.0, %bb.am ], [ %.0, %bb.an ], [ %.0, %bb.ao ], [ %.0, %bb.ap ], [ %.0, %bb.aq ], [ %.0, %bb.ar ], [ %.0, %bb.as ], [ %.0, %bb.at ], [ %.0, %bb.au ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  br label %bb.g, !llvm.loop !110

bb.aw:                                            ; preds = %bb.g
  %i.cg = add i32 %.0116, %.0118
end_hunk_45
begin_hunk_46_@evp_cipher_from_algorithm:bb.a
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ci = load ptr, ptr %i.aa, align 8, !tbaa !109
  %i.cj = icmp eq ptr %i.ci, null
  %i.ck = icmp eq i32 %.0112, 0
  %or.cond5 = select i1 %i.cj, i1 %i.ck, i1 false
end_hunk_46
begin_hunk_47_@EVP_CIPHER_get_nid
!71 = !{!16, !12, i64 168}
!72 = !{!7, !7, i64 0}
!73 = distinct !{!73, !70}
!74 = !{!"branch_weights", i32 4, i32 28}
!75 = distinct !{!75, !70, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !70, !76}
!81 = distinct !{!81, !70}
!82 = !{!16, !12, i64 272}
!83 = !{ptr @EVP_CIPHER_settable_ctx_params}
!84 = !{i64 0, i64 8, !40, i64 8, i64 4, !5, i64 16, i64 8, !85, i64 24, i64 8, !41, i64 32, i64 8, !41}
!85 = !{!12, !12, i64 0}
!86 = !{!87, !17, i64 8}
!87 = !{!"", !17, i64 0, !17, i64 8, !14, i64 16, !6, i64 24}
!88 = !{!87, !14, i64 16}
!89 = !{!87, !17, i64 0}
!90 = !{!16, !12, i64 80}
!91 = !{!16, !12, i64 232}
!92 = !{!16, !12, i64 240}
!93 = !{!16, !12, i64 256}
!94 = !{!16, !12, i64 264}
!95 = !{!16, !12, i64 224}
!96 = !{i64 0, i64 8, !97, i64 8, i64 8, !98, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 16, !72, i64 40, i64 16, !72, i64 56, i64 32, !72, i64 88, i64 4, !5, i64 96, i64 8, !85, i64 104, i64 4, !5, i64 108, i64 4, !5, i64 112, i64 8, !41, i64 120, i64 8, !85, i64 128, i64 4, !5, i64 132, i64 4, !5, i64 136, i64 32, !72, i64 168, i64 8, !41, i64 176, i64 8, !85, i64 184, i64 8, !97}
!97 = !{!11, !11, i64 0}
!98 = !{!13, !13, i64 0}
!99 = !{!19, !7, i64 0}
!100 = !{!101, !102, i64 16}
!101 = !{!"ossl_algorithm_st", !17, i64 0, !17, i64 8, !102, i64 16, !17, i64 24}
!102 = !{!"p1 _ZTS16ossl_dispatch_st", !12, i64 0}
!103 = !{!16, !6, i64 96}
!104 = !{!101, !17, i64 24}
!105 = !{!16, !17, i64 112}
!106 = !{!107, !6, i64 0}
!107 = !{!"ossl_dispatch_st", !6, i64 0, !12, i64 8}
!108 = !{!107, !12, i64 8}
!109 = !{!16, !12, i64 176}
!110 = distinct !{!110, !70}
end_hunk_47
