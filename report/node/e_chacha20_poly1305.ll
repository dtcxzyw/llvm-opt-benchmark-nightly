Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_chacha20_poly1305?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@chacha20_poly1305_cipher:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.cx = sub i64 0, %.1142
  %i.cy = getelementptr inbounds i8, ptr %.0108140, i64 %i.cx
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %.1142, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  br i1 %.not129, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !25
  %i.db = sext i32 %i.da to i64
  %i.dc = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ct, i64 noundef %i.db) #8
  %.not130 = icmp eq i32 %i.dc, 0
  br i1 %.not130, label %.critedge, label %bb.au

.critedge:                                        ; preds = %bb.as, %bb.at, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.aw

bb.av:                                            ; preds = %.critedge, %bb.ag
  %i.dd = trunc i64 %3 to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.ac, %bb.av, %bb.w, %chacha20_poly1305_tls_cipher.exit
  %.1106 = phi i32 [ %i.bm, %bb.w ], [ %i.dd, %bb.av ], [ -1, %bb.au ], [ %.0.i, %chacha20_poly1305_tls_cipher.exit ], [ -1, %bb.ac ]
  ret i32 %.1106
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha20_poly1305_cleanup(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @Poly1305_ctx_size() #8
  %i.d = add i64 %i.c, 208
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.d) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 17) i32 @chacha20_poly1305_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 24 uses
  switch i32 %1, label %bb.x [
    i32 0, label %bb.b
    i32 8, label %bb.e
    i32 37, label %bb.h
    i32 9, label %bb.i
    i32 18, label %bb.k
    i32 17, label %bb.m
    i32 16, label %bb.p
    i32 22, label %bb.s
    i32 23, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @Poly1305_ctx_size() #8
  %i.e = add i64 %i.d, 208
  %i.f = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 506) #8 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @__func__.chacha20_poly1305_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, ptr noundef null) #8
  br label %.critedge

.thread:                                          ; preds = %bb.b, %bb.c
  %.095110 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.095110, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %.095110, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 12, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %.095110, i64 200
  store i64 -1, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %.095110, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %.not107 = icmp eq ptr %i.b, null
  br i1 %.not107, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i64 @Poly1305_ctx_size() #8
  %i.m = add i64 %i.l, 208
  %i.n = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %i.b, i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 525) #8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.n, ptr %i.o, align 8, !tbaa !15
  %.not108 = icmp eq ptr %i.n, null
  br i1 %.not108, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @__func__.chacha20_poly1305_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 173, ptr noundef null) #8
  br label %.critedge

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  store i32 %i.q, ptr %3, align 4, !tbaa !17
  br label %.critedge

bb.i:                                             ; preds = %bb.a
  %i.r = add i32 %2, -13
  %or.cond = icmp ult i32 %i.r, -12
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store i32 %2, ptr %i.s, align 4, !tbaa !23
  br label %.critedge

bb.k:                                             ; preds = %bb.a
  %.not106 = icmp eq i32 %2, 12
  br i1 %.not106, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.t = load i32, ptr %3, align 1                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.t, ptr %i.u, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.t, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 1              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.x, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.x, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !17
  br label %.critedge

bb.m:                                             ; preds = %bb.a
  %i.ae = add i32 %2, -17
  %or.cond3 = icmp ult i32 %i.ae, -16
  br i1 %or.cond3, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not105 = icmp eq ptr %3, null
  br i1 %.not105, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ag = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 1 %3, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i32 %2, ptr %i.ah, align 8, !tbaa !25
  br label %.critedge

bb.p:                                             ; preds = %bb.a
  %i.ai = add i32 %2, -17
  %or.cond5 = icmp ult i32 %i.ai, -16
  br i1 %or.cond5, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not104 = icmp eq i32 %i.aj, 0
  br i1 %.not104, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.al = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 4 %i.ak, i64 %i.al, i1 false)
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 13
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.am, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 11
  %4 = load i8, ptr %i.an, align 1, !tbaa !16
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %i.ao = zext i8 %8 to i32
  %9 = or disjoint i32 %6, %i.ao                  ; 3 uses
  %i.ap = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not103 = icmp eq i32 %i.ap, 0
  br i1 %.not103, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.aq = icmp samesign ult i32 %9, 16
  br i1 %i.aq, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = add nsw i32 %9, -16                     ; 3 uses
  %i.as = lshr i32 %i.ar, 8
  %i.at = trunc nuw i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 159
  store i8 %i.at, ptr %i.au, align 1, !tbaa !16
  %i.av = trunc i32 %i.ar to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 %i.av, ptr %i.aw, align 4, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0 = phi i32 [ %9, %bb.t ], [ %i.ar, %bb.v ]
  %i.ax = zext nneg i32 %.0 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.be = load <2 x i32>, ptr %i.bc, align 4, !tbaa !17
  %i.bf = load <2 x i32>, ptr %i.am, align 4
  %i.bg = xor <2 x i32> %i.bf, %i.be
  store <2 x i32> %i.bg, ptr %i.bd, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i32 0, ptr %i.bh, align 4, !tbaa !24
  br label %.critedge

bb.x:                                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.a, %bb.w, %bb.u, %bb.s, %bb.p, %bb.q, %bb.n, %bb.o, %bb.m, %bb.k, %bb.i, %bb.x, %bb.r, %bb.l, %bb.j, %bb.h, %.thread, %bb.d
  %.2 = phi i32 [ -1, %bb.x ], [ 0, %bb.d ], [ 1, %.thread ], [ 1, %bb.a ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.u ], [ 1, %bb.j ], [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.r ], [ 0, %bb.p ], [ 0, %bb.s ], [ 1, %bb.o ], [ 0, %bb.q ], [ 16, %bb.w ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @Poly1305_Init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Poly1305_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #4

declare void @Poly1305_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @xor128_encrypt_n_pad(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @xor128_decrypt_n_pad(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @Poly1305_ctx_size() local_unnamed_addr #4

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS13evp_cipher_st", !10, i64 0}
!12 = !{!"p1 _ZTS9engine_st", !10, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"evp_cipher_ctx_st", !11, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 40, !6, i64 56, !7, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !13, i64 112, !10, i64 120, !7, i64 128, !7, i64 132, !6, i64 136, !13, i64 168, !10, i64 176, !11, i64 184}
!15 = !{!14, !10, i64 120}
!16 = !{!6, !6, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!"", !6, i64 0, !6, i64 32, !6, i64 48, !7, i64 112}
!19 = !{!18, !7, i64 112}
!20 = !{!"", !13, i64 0, !13, i64 8}
!21 = !{!"", !18, i64 0, !6, i64 120, !6, i64 132, !6, i64 148, !20, i64 168, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !13, i64 200}
!22 = !{!21, !13, i64 200}
!23 = !{!21, !7, i64 196}
!24 = !{!21, !7, i64 188}
!25 = !{!21, !7, i64 192}
!26 = distinct !{!26, !34, !35, !36}
!27 = distinct !{!27, !34, !35, !36}
!28 = distinct !{!28, !34, !35}
!29 = distinct !{!29, !34}
!30 = distinct !{!30, !34, !35, !36}
!31 = distinct !{!31, !34, !35, !36}
!32 = distinct !{!32, !39}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 28}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!21, !7, i64 112}
!41 = !{!21, !13, i64 168}
!42 = !{!21, !13, i64 176}
!43 = !{!21, !7, i64 184}
end_hunk_0
