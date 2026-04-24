inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@ossl_cipher_generic_block_update:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 28
  %n.vec = and i64 %i.o, 480                      ; 10 uses
  %i.w = add i64 %5, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.x = getelementptr i8, ptr %1, i64 %5         ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.x, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %6, align 1, !tbaa !34
  %7 = icmp eq i64 %n.vec, 32
  br i1 %7, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %8 = getelementptr i8, ptr %1, i64 %5           ; 2 uses
  %9 = getelementptr i8, ptr %8, i64 32
  %10 = getelementptr i8, ptr %8, i64 48
  store <16 x i8> %broadcast.splat, ptr %9, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %10, align 1, !tbaa !34
  %11 = icmp eq i64 %n.vec, 64
  br i1 %11, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %12 = getelementptr i8, ptr %1, i64 %5          ; 2 uses
  %13 = getelementptr i8, ptr %12, i64 64
  %14 = getelementptr i8, ptr %12, i64 80
  store <16 x i8> %broadcast.splat, ptr %13, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %14, align 1, !tbaa !34
  %15 = icmp eq i64 %n.vec, 96
  br i1 %15, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %16 = getelementptr i8, ptr %1, i64 %5          ; 2 uses
  %17 = getelementptr i8, ptr %16, i64 96
  %18 = getelementptr i8, ptr %16, i64 112
  store <16 x i8> %broadcast.splat, ptr %17, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %18, align 1, !tbaa !34
  %19 = icmp eq i64 %n.vec, 128
  br i1 %19, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %20 = getelementptr i8, ptr %1, i64 %5          ; 2 uses
  %21 = getelementptr i8, ptr %20, i64 128
  %22 = getelementptr i8, ptr %20, i64 144
  store <16 x i8> %broadcast.splat, ptr %21, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %22, align 1, !tbaa !34
  %23 = icmp eq i64 %n.vec, 160
  br i1 %23, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %24 = getelementptr i8, ptr %1, i64 %5          ; 2 uses
  %25 = getelementptr i8, ptr %24, i64 160
  %26 = getelementptr i8, ptr %24, i64 176
  store <16 x i8> %broadcast.splat, ptr %25, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %26, align 1, !tbaa !34
  %27 = icmp eq i64 %n.vec, 192
  br i1 %27, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.5
  %28 = getelementptr i8, ptr %1, i64 %5          ; 2 uses
  %i.y = getelementptr i8, ptr %28, i64 192
  %i.z = getelementptr i8, ptr %28, i64 208
  store <16 x i8> %broadcast.splat, ptr %i.y, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %i.z, align 1, !tbaa !34
  %i.aa = icmp eq i64 %n.vec, 224
  br i1 %i.aa, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body
  %29 = getelementptr i8, ptr %1, i64 %5          ; 2 uses
  %30 = getelementptr i8, ptr %29, i64 224
  %31 = getelementptr i8, ptr %29, i64 240
  store <16 x i8> %broadcast.splat, ptr %30, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %31, align 1, !tbaa !34
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@ossl_cipher_generic_block_update:bb.a
  store <4 x i8> %broadcast.splat154, ptr %i.ad, align 1, !tbaa !34
  %index.next156 = add nuw i64 %index155, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next156, %n.vec152
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.o, %n.vec152
end_hunk_1
begin_hunk_2_@ossl_cipher_generic_block_update:bb.a
  store i8 %i.t, ptr %i.ak, align 1, !tbaa !34
  %i.al = add nuw i64 %.0139, 1                   ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.p
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.n, %.preheader, %bb.f
  %i.an = phi i64 [ %5, %bb.f ], [ %i.p, %bb.n ], [ %i.p, %.preheader ], [ %i.p, %middle.block ], [ %i.p, %vec.epilog.middle.block ], [ %i.p, %.lr.ph ] ; 3 uses
end_hunk_2
begin_hunk_3_@ossl_cipher_generic_block_update:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.at = tail call i32 %i.as(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i64 noundef %i.an) #6
  %.not124 = icmp eq i32 %i.at, 0
  br i1 %.not124, label %bb.q, label %bb.r
end_hunk_3
begin_hunk_4_@ossl_cipher_generic_block_update:bb.a

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bc = load i32, ptr %i.h, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !43
  %i.bg = tail call i32 @ossl_cipher_tlsunpadblock(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.d, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.au, i64 noundef %i.bf, i32 noundef 0) #6
  %.not127 = icmp eq i32 %i.bg, 0
  br i1 %.not127, label %bb.v, label %.critedge
end_hunk_4
begin_hunk_5_@ossl_cipher_generic_block_update:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = call i32 %i.by(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.bz, i64 noundef %i.d) #6
  %.not111 = icmp eq i32 %i.ca, 0
end_hunk_5
begin_hunk_6_@ossl_cipher_generic_block_update:bb.a

bb.ai:                                            ; preds = %bb.ah
  %.not115 = icmp ult i64 %.094, %i.d
  br i1 %.not115, label %bb.aj, label %bb.ak, !prof !44

bb.aj:                                            ; preds = %bb.ai
  call void @ERR_new() #6
end_hunk_6
begin_hunk_7_@ossl_cipher_generic_block_update:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !41
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.co = call i32 %i.cm(ptr noundef nonnull %0, ptr noundef %.092, ptr noundef %i.cn, i64 noundef %.195) #6
  %.not117 = icmp eq i32 %i.co, 0
end_hunk_7
begin_hunk_8_@ossl_cipher_generic_block_final:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = tail call i32 %i.t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.u, i64 noundef %i.b) #6
  %.not59 = icmp eq i32 %i.v, 0
end_hunk_8
begin_hunk_9_@ossl_cipher_generic_block_final:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ag = tail call i32 %i.ae(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.af, i64 noundef %i.b) #6
  %.not53 = icmp eq i32 %i.ag, 0
end_hunk_9
begin_hunk_10_@ossl_cipher_generic_stream_update:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5) #6
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.h, label %bb.i
end_hunk_10
begin_hunk_11_@ossl_cipher_generic_stream_update:bb.a

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45
  %.not44 = icmp eq i32 %i.p, 0
  br i1 %.not44, label %bb.n, label %bb.l

end_hunk_11
begin_hunk_12_@ossl_cipher_generic_stream_update:bb.a
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %.not45.not = icmp ugt i64 %5, %i.t
  br i1 %.not45.not, label %bb.m, label %bb.r, !prof !46

bb.m:                                             ; preds = %bb.l
  %.neg = xor i64 %i.t, -1
end_hunk_12
begin_hunk_13_@ossl_cipher_generic_stream_update:bb.a
bb.n:                                             ; preds = %bb.m, %bb.k
  %i.v = phi i64 [ %i.u, %bb.m ], [ %5, %bb.k ]   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %.not46 = icmp ult i64 %i.v, %i.x
  br i1 %.not46, label %bb.r, label %bb.o, !prof !44

bb.o:                                             ; preds = %bb.n
  %i.y = sub nuw i64 %i.v, %i.x                   ; 4 uses
  store i64 %i.y, ptr %2, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !43  ; 4 uses
  %.not47 = icmp eq i64 %i.aa, 0
  br i1 %.not47, label %bb.r, label %bb.p

end_hunk_13
begin_hunk_14_@ossl_cipher_generic_cipher:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5) #6
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.g, label %bb.h
end_hunk_14
begin_hunk_15_@ossl_cipher_generic_get_ctx_params:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.ak = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.af, ptr noundef %i.ah, i64 noundef %i.aj) #6
  %.not59 = icmp eq i32 %i.ak, 0
  br i1 %.not59, label %.sink.split, label %bb.q
end_hunk_15
begin_hunk_16_@ossl_cipher_generic_initkey:bb.a
bb.c:                                             ; preds = %._crit_edge
  %i.s = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef nonnull %7) #6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.s, ptr %i.t, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
end_hunk_16
begin_hunk_17_@ossl_prov_ctx_get0_libctx
!32 = !{!15, !13, i64 88}
!33 = !{!15, !6, i64 112}
!34 = !{!7, !7, i64 0}
!35 = !{!"branch_weights", i32 4, i32 28}
!36 = distinct !{!36, !37, !38, !39}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !37, !39, !38}
!41 = !{!27, !12, i64 8}
!42 = !{!15, !17, i64 184}
!43 = !{!15, !13, i64 136}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!15, !6, i64 144}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!15, !13, i64 152}
end_hunk_17
