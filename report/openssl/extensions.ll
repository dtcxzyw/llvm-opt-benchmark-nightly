Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/extensions?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@final_server_name:bb.a
  %.not78 = icmp eq i64 %i.bb, 0
  br i1 %.not78, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ax, align 8, !tbaa !134
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !105
  %.not79 = icmp eq i32 %i.bd, 0
  br i1 %.not79, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.be = call ptr @SSL_get_session(ptr noundef nonnull %0) #9 ; 3 uses
  %.not80 = icmp eq ptr %i.be, null
  br i1 %.not80, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 808 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !172
  call void @CRYPTO_free(ptr noundef %i.bg, ptr noundef nonnull @.str, i32 noundef 1314) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bf, i8 0, i64 28, i1 false)
  %i.bh = call i32 @ssl_generate_session_id(ptr noundef nonnull %0, ptr noundef nonnull %i.be) #9
  %.not81 = icmp eq i32 %i.bh, 0
  br i1 %.not81, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1320, ptr noundef nonnull @__func__.final_server_name) #9
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #9
  br label %.critedge

bb.x:                                             ; preds = %bb.u
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @__func__.final_server_name) #9
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #9
  br label %.critedge

bb.y:                                             ; preds = %bb.q
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1332, ptr noundef nonnull @__func__.final_server_name) #9
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !95
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef %i.bi, i32 noundef 234, ptr noundef null) #9
  br label %.critedge

bb.z:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !99
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !101
  %i.bp = and i32 %i.bo, 8
  %.not82 = icmp eq i32 %i.bp, 0
  br i1 %.not82, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !103 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 772
  %.not83 = icmp eq i32 %i.bq, 65536
  %or.cond84 = or i1 %i.br, %.not83
  br i1 %or.cond84, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !95
  %i.bt = call i32 @ssl3_send_alert(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.bs) #9 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3352
  store i32 0, ptr %i.bu, align 8, !tbaa !132
  br label %.critedge

bb.ad:                                            ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3352
  store i32 0, ptr %i.bv, align 8, !tbaa !132
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.t, %bb.v, %bb.x, %bb.w, %bb.q, %bb.ad, %bb.ac, %bb.y, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.y ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 0, %bb.x ], [ 1, %bb.q ], [ 0, %bb.w ], [ 1, %bb.v ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

declare i32 @tls_parse_ctos_maxfragmentlen(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_maxfragmentlen(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_maxfragmentlen(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_maxfragmentlen(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @final_maxfragmentlen(ptr noundef %0, i32 %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 856 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !173   ; 3 uses
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !173
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.e, -1
  %or.cond = icmp ult i8 %i.g, 4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i8 %i.e to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !177
  %i.o = shl nuw nsw i32 256, %i.h
  %i.p = zext nneg i32 %i.o to i64
  tail call void %i.l(ptr noundef %i.n, i64 noundef %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !178
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179
  %i.w = tail call i32 @ssl_get_max_send_fragment(ptr noundef nonnull %0) #9
  %i.x = zext i32 %i.w to i64
  tail call void %i.t(ptr noundef %i.v, i64 noundef %i.x) #9
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @init_srp(ptr nofree noundef captures(none) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3496 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 1486) #9
  store ptr null, ptr %i.a, align 8, !tbaa !180
  ret i32 1
}

declare i32 @tls_parse_ctos_srp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_srp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @init_ec_point_formats(ptr nofree noundef captures(none) initializes((2688, 2696)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 1495) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i32 1
}

declare i32 @tls_parse_ctos_ec_pt_formats(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_ec_pt_formats(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_ec_pt_formats(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_ec_pt_formats(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @final_ec_pt_formats(ptr noundef %0, i32 %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183
  %.not21 = icmp eq ptr %i.h, null
  br i1 %.not21, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.j = load i64, ptr %i.i, align 8, !tbaa !184
  %.not22 = icmp eq i64 %i.j, 0
  br i1 %.not22, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135  ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %.critedge, label %3

3:                                                ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %5 = load i64, ptr %4, align 8, !tbaa !185      ; 3 uses
  %.not24 = icmp eq i64 %5, 0
  br i1 %.not24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %3
  %6 = and <2 x i32> %i.f, <i32 4, i32 8>
  %7 = icmp eq <2 x i32> %6, zeroinitializer      ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond = select i1 %8, i1 %9, i1 false
  br i1 %or.cond, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.f
  %.029 = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %.01828 = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.m = load i8, ptr %.029, align 1, !tbaa !108
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.p = add nuw i64 %.01828, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %5
  br i1 %exitcond.not, label %.thread, label %.preheader, !llvm.loop !181

bb.g:                                             ; preds = %.preheader
  %.not27 = icmp eq i64 %.01828, %5
  br i1 %.not27, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.f, %bb.g
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1382, ptr noundef nonnull @__func__.final_ec_pt_formats) #9
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 47, i32 noundef 157, ptr noundef null) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %3, %bb.e, %bb.g, %.thread, %bb.a
  %.1 = phi i32 [ 0, %.thread ], [ 1, %bb.a ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %3 ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.1
}

declare i32 @tls_parse_ctos_supported_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_supported_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_supported_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @init_session_ticket(ptr nofree noundef captures(none) %0, i32 %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  store i32 0, ptr %i.c, align 8, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare i32 @tls_parse_ctos_session_ticket(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_session_ticket(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_session_ticket(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_session_ticket(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @init_status_request(ptr nofree noundef captures(none) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i32 -1, ptr %i.c, align 8, !tbaa !186
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 1408) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.g, ptr noundef nonnull @sk_OCSP_RESPONSE_freefunc_thunk) #9
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.h, ptr noundef nonnull @OCSP_RESPONSE_free) #9
  store ptr null, ptr %i.f, align 8, !tbaa !188
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

declare i32 @tls_parse_ctos_status_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_status_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_status_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_status_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @init_npn(ptr nofree noundef writeonly captures(none) initializes((1204, 1208)) %0, i32 %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store i32 0, ptr %i.a, align 4, !tbaa !189
  ret i32 1
}

declare i32 @tls_parse_ctos_npn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_npn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_next_proto_neg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_npn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @init_alpn(ptr nofree noundef captures(none) initializes((1216, 1224)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 1431) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 1435) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare i32 @tls_parse_ctos_alpn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_alpn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_alpn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_alpn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @final_alpn(ptr noundef %0, i32 %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = or i32 %i.b, %2
  %or.cond.not = icmp eq i32 %i.c, 0
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2852
  store i32 0, ptr %i.h, align 4, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101
  %i.o = and i32 %i.n, 8
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %i.q = icmp slt i32 %i.p, 772
  %.not13 = icmp eq i32 %i.p, 65536
  %or.cond = or i1 %i.q, %.not13
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @tls_handle_alpn(ptr noundef nonnull %0) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ %i.r, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @init_srtp(ptr nofree noundef captures(none) %0, i32 %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3408
  store ptr null, ptr %i.c, align 8, !tbaa !193
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare i32 @tls_parse_ctos_use_srtp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_use_srtp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_use_srtp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_use_srtp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @init_etm(ptr nofree noundef writeonly captures(none) initializes((2844, 2848)) %0, i32 %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2844
end_hunk_0
