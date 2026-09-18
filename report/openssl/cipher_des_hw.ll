Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_des_hw?download=true
begin_hunk_0_@cipher_hw_des_copyctx:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, i64 328, i1 false), !tbaa.struct !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.a, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @DES_set_key_unchecked(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @DES_ecb_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @cipher_hw_des_cbc_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 1073741823
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void %i.c(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #6
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.032 = phi i64 [ %3, %.lr.ph ], [ %i.l, %bb.c ]
  %.02531 = phi ptr [ %2, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %.02630 = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  %i.h = load i8, ptr %i.f, align 4
  %i.i = lshr i8 %i.h, 1
  %i.j = and i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32
  tail call void @DES_ncbc_encrypt(ptr noundef %.02531, ptr noundef %.02630, i64 noundef 1073741824, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.k) #6
  %i.l = add i64 %.032, -1073741824               ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02531, i64 1073741824 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02630, i64 1073741824 ; 2 uses
  %i.o = icmp ugt i64 %i.l, 1073741823
  br i1 %i.o, label %bb.c, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.026.lcssa = phi ptr [ %1, %.preheader ], [ %i.n, %bb.c ]
  %.025.lcssa = phi ptr [ %2, %.preheader ], [ %i.m, %bb.c ]
  %.0.lcssa = phi i64 [ %3, %.preheader ], [ %i.l, %bb.c ] ; 2 uses
  %.not29 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.r = load i8, ptr %i.q, align 4
  %i.s = lshr i8 %i.r, 1
  %i.t = and i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i32
  tail call void @DES_ncbc_encrypt(ptr noundef %.025.lcssa, ptr noundef %.026.lcssa, i64 noundef %.0.lcssa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, i32 noundef %i.u) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  ret i32 1
}

declare void @DES_ncbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @cipher_hw_des_ofb64_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  store i32 %i.c, ptr %i.a, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.e = icmp ugt i64 %3, 1073741823
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ %3, %.lr.ph ], [ %i.g, %bb.b ]
  %.01619 = phi ptr [ %2, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %.01718 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  call void @DES_ofb64_encrypt(ptr noundef %.01619, ptr noundef %.01718, i64 noundef 1073741824, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #6
  %i.g = add i64 %.020, -1073741824               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01619, i64 1073741824 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01718, i64 1073741824 ; 2 uses
  %i.j = icmp ugt i64 %i.g, 1073741823
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.017.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %bb.b ]
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %bb.b ]
  %.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.0.lcssa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @DES_ofb64_encrypt(ptr noundef %.016.lcssa, ptr noundef %.017.lcssa, i64 noundef %.0.lcssa, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.l = load i32, ptr %i.a, align 4, !tbaa !16
  store i32 %i.l, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 1
}

declare void @DES_ofb64_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @cipher_hw_des_cfb64_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !16
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 1073741824)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.132 = phi i64 [ %spec.select, %.lr.ph ], [ %spec.select28, %bb.b ] ; 5 uses
  %.02331 = phi i64 [ %3, %.lr.ph ], [ %i.k, %bb.b ]
  %.02430 = phi ptr [ %2, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.02529 = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = lshr i8 %i.g, 1
  %i.i = and i8 %i.h, 1
  %i.j = zext nneg i8 %i.i to i32
  call void @DES_cfb64_encrypt(ptr noundef %.02430, ptr noundef %.02529, i64 noundef %.132, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef %i.j) #6
  %i.k = sub nuw i64 %.02331, %.132               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02430, i64 %.132
  %i.m = getelementptr inbounds nuw i8, ptr %.02529, i64 %.132
  %spec.select28 = call i64 @llvm.umin.i64(i64 %i.k, i64 %.132)
  %.not33 = icmp eq i64 %i.k, 0
  br i1 %.not33, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  store i32 %i.n, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 1
}

declare void @DES_cfb64_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @cipher_hw_des_cfb1_cipher(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1
  %.not43 = icmp eq i64 %3, 0
  br i1 %.not43, label %._crit_edge42, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 134217728)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.141 = phi i64 [ %spec.select, %.preheader.lr.ph ], [ %spec.select36, %._crit_edge ] ; 6 uses
  %.03140 = phi i64 [ %3, %.preheader.lr.ph ], [ %i.af, %._crit_edge ]
  %.03239 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.ag, %._crit_edge ] ; 2 uses
  %.03338 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ] ; 2 uses
  %.not44 = icmp eq i64 %.141, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %4 = shl nuw nsw i64 %.141, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03037 = phi i64 [ %i.ae, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.f = lshr i64 %.03037, 3                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03239, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i32
  %i.j = and i64 %.03037, 7                       ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = lshr exact i32 128, %i.k
  %i.m = and i32 %i.l, %i.i
  %.not = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not, i8 0, i8 -128
  store i8 %i.n, ptr %i.a, align 1, !tbaa !8
  %i.o = load i8, ptr %i.e, align 4
  %i.p = lshr i8 %i.o, 1
  %i.q = and i8 %i.p, 1
  %i.r = zext nneg i8 %i.q to i32
  call void @DES_cfb_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.r) #6
  %i.s = getelementptr inbounds nuw i8, ptr %.03338, i64 %i.f ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i16
  %i.v = trunc nuw nsw i64 %i.j to i16            ; 2 uses
  %i.w = ashr i16 -129, %i.v
  %i.x = and i16 %i.w, %i.u
  %i.y = load i8, ptr %i.b, align 1, !tbaa !8
  %i.z = and i8 %i.y, -128
  %i.aa = zext i8 %i.z to i16
  %i.ab = lshr exact i16 %i.aa, %i.v
  %i.ac = or i16 %i.ab, %i.x
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.s, align 1, !tbaa !8
  %i.ae = add nuw i64 %.03037, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.af = sub nuw i64 %.03140, %.141              ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03239, i64 %.141
  %i.ah = getelementptr inbounds nuw i8, ptr %.03338, i64 %.141
  %spec.select36 = call i64 @llvm.umin.i64(i64 %i.af, i64 %.141)
  %.not45 = icmp eq i64 %i.af, 0
  br i1 %.not45, label %._crit_edge42, label %.preheader, !llvm.loop !31

._crit_edge42:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 1
}

declare void @DES_cfb_encrypt(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @cipher_hw_des_cfb8_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = icmp ugt i64 %3, 1073741823
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ %3, %.lr.ph ], [ %i.i, %bb.b ]
  %.01619 = phi ptr [ %2, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.01718 = phi ptr [ %1, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = lshr i8 %i.e, 1
  %i.g = and i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  tail call void @DES_cfb_encrypt(ptr noundef %.01619, ptr noundef %.01718, i32 noundef 8, i64 noundef 1073741824, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.h) #6
  %i.i = add i64 %.020, -1073741824               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01619, i64 1073741824 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01718, i64 1073741824 ; 2 uses
  %i.l = icmp ugt i64 %i.i, 1073741823
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.017.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %bb.b ]
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %bb.b ]
  %.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.0.lcssa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load i8, ptr %i.n, align 4
  %i.p = lshr i8 %i.o, 1
  %i.q = and i8 %i.p, 1
  %i.r = zext nneg i8 %i.q to i32
  tail call void @DES_cfb_encrypt(ptr noundef %.016.lcssa, ptr noundef %.017.lcssa, i32 noundef 8, i64 noundef %.0.lcssa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, i32 noundef %i.r) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS17prov_cipher_hw_st", !9, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!14 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !9, i64 48, !4, i64 56, !5, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !11, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !10, i64 152, !5, i64 160, !12, i64 168, !9, i64 176, !13, i64 184}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!5, !5, i64 0}
!17 = !{!14, !5, i64 160}
!18 = distinct !{!18, !15}
!19 = !{!14, !10, i64 88}
!20 = !{!9, !9, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!11, !11, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{i64 0, i64 16, !8, i64 16, i64 16, !8, i64 32, i64 16, !8, i64 48, i64 8, !20, i64 56, i64 8, !8, i64 64, i64 4, !16, i64 72, i64 8, !21, i64 80, i64 8, !21, i64 88, i64 8, !21, i64 96, i64 8, !21, i64 104, i64 4, !16, i64 108, i64 1, !8, i64 112, i64 4, !16, i64 120, i64 8, !22, i64 128, i64 4, !16, i64 136, i64 8, !21, i64 144, i64 4, !16, i64 152, i64 8, !21, i64 160, i64 4, !16, i64 168, i64 8, !23, i64 176, i64 8, !20, i64 184, i64 8, !24, i64 192, i64 128, !8, i64 320, i64 8, !8}
!26 = !{!14, !9, i64 176}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
end_hunk_0
