Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/keys?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@SetKeys:bb.a
  br i1 %.not246, label %bb.bo, label %.thread253

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bk
  br i1 %.not237, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dn = load ptr, ptr %1, align 8, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.dp = load i16, ptr %3, align 2, !tbaa !45
  %i.dq = zext i16 %i.dp to i32
  %i.dr = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.dn, ptr noundef nonnull %i.do, i32 noundef %i.dq) #5 ; 2 uses
  %.not247 = icmp eq i32 %i.dr, 0
  br i1 %.not247, label %.sink.split, label %.thread253

bb.bq:                                            ; preds = %bb.bj
  br i1 %.not236, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ds = load ptr, ptr %0, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.du = load i16, ptr %3, align 2, !tbaa !45
  %i.dv = zext i16 %i.du to i32
  %i.dw = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.ds, ptr noundef nonnull %i.dt, i32 noundef %i.dv) #5 ; 2 uses
  %.not240 = icmp eq i32 %i.dw, 0
  br i1 %.not240, label %bb.bs, label %.thread253

bb.bs:                                            ; preds = %bb.br
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dx, ptr noundef nonnull align 4 dereferenceable(12) %i.dy, i64 12, i1 false)
  %.not241 = icmp eq i32 %8, 0
  br i1 %.not241, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.dz = load ptr, ptr %0, align 8, !tbaa !61
  %i.ea = tail call i32 @wc_AesGcmSetIV(ptr noundef %i.dz, i32 noundef 12, ptr noundef nonnull %i.dy, i32 noundef 4, ptr noundef %7) #5 ; 2 uses
  %.not242 = icmp eq i32 %i.ea, 0
  br i1 %.not242, label %bb.bu, label %.thread253

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bq
  br i1 %.not237, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eb = load ptr, ptr %1, align 8, !tbaa !61
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ed = load i16, ptr %3, align 2, !tbaa !45
  %i.ee = zext i16 %i.ed to i32
  %i.ef = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.eb, ptr noundef nonnull %i.ec, i32 noundef %i.ee) #5 ; 2 uses
  %.not243 = icmp eq i32 %i.ef, 0
  br i1 %.not243, label %.sink.split, label %.thread253

.sink.split:                                      ; preds = %bb.bv, %bb.bp
  %.sink306 = phi i64 [ 208, %bb.bp ], [ 192, %bb.bv ]
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 244
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %.sink306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eg, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i64 12, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.bu, %bb.bo
  br i1 %.not236, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.ei, align 1, !tbaa !60
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %.not237, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.ej, align 1, !tbaa !60
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.au
  %.not248 = icmp eq ptr %0, null
  br i1 %.not248, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 264
  store i32 0, ptr %i.ek, align 4, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i32 0, ptr %i.el, align 4, !tbaa !63
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.not249 = icmp eq ptr %1, null
  br i1 %.not249, label %.thread253, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 256
  store i32 0, ptr %i.em, align 4, !tbaa !64
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 260
  store i32 0, ptr %i.en, align 4, !tbaa !65
  br label %.thread253

.thread253:                                       ; preds = %bb.bt, %bb.bp, %bb.bl, %bb.bv, %bb.bn, %bb.bi, %bb.bg, %bb.bc, %bb.ax, %bb.br, %bb.al, %bb.ap, %bb.aj, %bb.ag, %bb.ae, %bb.aa, %bb.v, %bb.an, %bb.j, %bb.n, %bb.h, %bb.f, %bb.d, %bb.l, %bb.cc, %bb.cd
  %.5 = phi i32 [ 0, %bb.cc ], [ %i.ce, %bb.an ], [ %i.aj, %bb.l ], [ 0, %bb.cd ], [ %i.ab, %bb.j ], [ %i.ar, %bb.n ], [ %i.t, %bb.h ], [ -125, %bb.f ], [ -125, %bb.d ], [ %i.by, %bb.al ], [ %i.ck, %bb.ap ], [ %i.bs, %bb.aj ], [ -182, %bb.ag ], [ -182, %bb.ae ], [ -125, %bb.aa ], [ -125, %bb.v ], [ %i.ea, %bb.bt ], [ %i.dr, %bb.bp ], [ %i.di, %bb.bl ], [ %i.ef, %bb.bv ], [ %i.dm, %bb.bn ], [ -182, %bb.bi ], [ -182, %bb.bg ], [ -125, %bb.bc ], [ -125, %bb.ax ], [ %i.dw, %bb.br ]
  ret i32 %.5
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #1

declare i32 @wc_Chacha_SetKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @wc_AesFree(ptr noundef) local_unnamed_addr #1

declare i32 @wc_AesInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wc_AesSetKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wc_AesGcmSetKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wc_AesGcmSetIV(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @SetKeysSide(ptr noundef initializes((1396, 1400)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 0, ptr %i.b, align 4, !tbaa !66
  switch i32 %1, label %SetAuthKeys.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.026 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ], [ %i.e, %bb.d ]
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !67
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.k = load i8, ptr %i.j, align 2, !tbaa !68
  %i.l = icmp eq i8 %i.k, 9
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %SetAuthKeys.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @wolfSSL_Malloc(i64 noundef 96) #5 ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !69
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %SetAuthKeys.exit, label %SetAuthKeys.exit.thread

SetAuthKeys.exit.thread:                          ; preds = %bb.g, %bb.h
  store i8 1, ptr %i.h, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %SetAuthKeys.exit.thread, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 730
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = and i32 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.z = load i32, ptr %i.y, align 4, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = lshr i32 %i.t, 16
  %i.ad = and i32 %i.ac, 1
  %i.ae = tail call i32 @SetKeys(ptr noundef %.026, ptr noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.q, i32 noundef %i.v, ptr noundef %i.x, i32 noundef %i.z, ptr noundef %i.ab, i32 noundef %i.ad)
  br label %SetAuthKeys.exit

SetAuthKeys.exit:                                 ; preds = %bb.h, %bb.a, %bb.i
  %.027 = phi i32 [ -173, %bb.a ], [ %i.ae, %bb.i ], [ -125, %bb.h ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @StoreKeys(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 730 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 739
  %i.d = load i8, ptr %i.c, align 1, !tbaa !44
  %.not = icmp eq i8 %i.d, 2                      ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = trunc i32 %2 to i1
  %3 = load i16, ptr %i.b, align 2, !tbaa !74     ; 3 uses
  %4 = zext i16 %3 to i64                         ; 2 uses
  br i1 %.pre, label %bb.g, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.f = load i8, ptr %i.e, align 1, !tbaa !75    ; 5 uses
  %i.g = zext i8 %i.f to i64                      ; 3 uses
  %.not46 = trunc i32 %2 to i1
  br i1 %.not46, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %1, i64 %i.g, i1 false)
  %i.h = zext i8 %i.f to i32                      ; 2 uses
  %5 = and i32 %2, 2
  %.not47 = icmp eq i32 %5, 0
  br i1 %.not47, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %2, 2
  %.not47.a = icmp eq i32 %i.i, 0
  br i1 %.not47.a, label %.thread57, label %.split.thread

.thread57:                                        ; preds = %bb.d
  %6 = load i16, ptr %i.b, align 2, !tbaa !74     ; 2 uses
  %7 = zext i16 %6 to i64
  br label %bb.h

.split.thread:                                    ; preds = %bb.d
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 812
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %1, i64 %i.g, i1 false)
  %9 = zext i8 %i.f to i32
  %10 = load i16, ptr %i.b, align 2, !tbaa !74    ; 2 uses
  %11 = zext i16 %10 to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.k = zext i8 %i.f to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.l, i64 %i.g, i1 false)
  %i.m = zext i8 %i.f to i32
  %i.n = add nuw nsw i32 %i.h, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.152.ph = phi i32 [ %i.n, %bb.e ], [ %i.h, %bb.c ]
  %i.o = load i16, ptr %i.b, align 2, !tbaa !74   ; 2 uses
  %i.p = zext i16 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %12 = phi i64 [ %4, %._crit_edge ], [ %i.p, %bb.f ] ; 2 uses
  %13 = phi i16 [ %3, %._crit_edge ], [ %i.o, %bb.f ] ; 2 uses
  %.152 = phi i32 [ 0, %._crit_edge ], [ %.152.ph, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.r = zext nneg i32 %.152 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 1 %i.s, i64 %12, i1 false)
  %i.t = zext i16 %13 to i32
  %i.u = add nuw nsw i32 %.152, %i.t
  br label %bb.h

bb.h:                                             ; preds = %.thread57, %.split.thread, %._crit_edge, %bb.g
  %14 = phi i64 [ %12, %bb.g ], [ %11, %.split.thread ], [ %4, %._crit_edge ], [ %7, %.thread57 ]
  %15 = phi i16 [ %13, %bb.g ], [ %10, %.split.thread ], [ %3, %._crit_edge ], [ %6, %.thread57 ]
  %.not48.pre-phi50 = phi i1 [ true, %bb.g ], [ false, %.split.thread ], [ false, %._crit_edge ], [ false, %.thread57 ]
  %.2 = phi i32 [ %i.u, %bb.g ], [ %9, %.split.thread ], [ 0, %._crit_edge ], [ 0, %.thread57 ] ; 3 uses
  %i.v = and i32 %2, 2
  %.not49 = icmp eq i32 %i.v, 0                   ; 2 uses
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.x = zext nneg i32 %.2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 1 %i.y, i64 %14, i1 false)
  %i.z = zext i16 %15 to i32
  %i.aa = add nuw nsw i32 %.2, %i.z
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi i32 [ %i.aa, %bb.i ], [ %.2, %bb.h ]  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !76 ; 2 uses
  %i.ad = zext i16 %i.ac to i64                   ; 2 uses
  br i1 %.not48.pre-phi50, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.af = zext nneg i32 %.3 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 1 %i.ag, i64 %i.ad, i1 false)
  %i.ah = zext i16 %i.ac to i32
  %i.ai = add nuw nsw i32 %.3, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4 = phi i32 [ %i.ai, %bb.k ], [ %.3, %bb.j ]
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.ak = zext nneg i32 %.4 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 1 %i.al, i64 %i.ad, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i64 0, ptr %i.am, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @MakeMasterSecret(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @MakeTlsMasterSecret(ptr noundef %0) #5
  ret i32 %i.a
}

declare i32 @MakeTlsMasterSecret(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11WOLFSSL_CTX", !8, i64 0}
!10 = !{!"p1 _ZTS6Suites", !8, i64 0}
!11 = !{!"p1 _ZTS6Arrays", !8, i64 0}
!12 = !{!"p1 _ZTS9HS_Hashes", !8, i64 0}
!13 = !{!"p1 _ZTS6WC_RNG", !8, i64 0}
!14 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !8, i64 0}
!15 = !{!"p1 _ZTS7WOLFSSL", !8, i64 0}
!16 = !{!"WOLFSSL_CIPHER", !4, i64 0, !4, i64 1, !15, i64 8}
!17 = !{!"p1 _ZTS3Aes", !8, i64 0}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!"p1 _ZTS6ChaCha", !8, i64 0}
!20 = !{!"Ciphers", !17, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !4, i64 32, !4, i64 33}
!21 = !{!"", !4, i64 0, !18, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 29}
!22 = !{!"WOLFSSL_BUFFER_INFO", !18, i64 0, !5, i64 8}
!23 = !{!"p1 _ZTS5DhKey", !8, i64 0}
!24 = !{!"p1 _ZTS9DerBuffer", !8, i64 0}
!25 = !{!"Buffers", !21, i64 0, !21, i64 32, !22, i64 64, !22, i64 80, !22, i64 96, !22, i64 112, !22, i64 128, !5, i64 144, !5, i64 148, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !22, i64 160, !22, i64 176, !22, i64 192, !22, i64 208, !23, i64 224, !24, i64 232, !24, i64 240, !4, i64 248, !4, i64 249, !4, i64 249, !5, i64 252, !5, i64 256, !24, i64 264, !5, i64 272, !4, i64 280}
!26 = !{!"p1 _ZTS15WOLFSSL_SESSION", !8, i64 0}
!27 = !{!"p1 _ZTS13ClientSession", !8, i64 0}
!28 = !{!"WOLFSSL_ALERT", !5, i64 0, !5, i64 4}
!29 = !{!"WOLFSSL_ALERT_HISTORY", !28, i64 0, !28, i64 8}
!30 = !{!"short", !4, i64 0}
!31 = !{!"RecordLayerHeader", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!32 = !{!"MsgsReceived", !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 2, !30, i64 2, !30, i64 2}
!33 = !{!"ProtocolVersion", !4, i64 0, !4, i64 1}
!34 = !{!"CipherSpecs", !30, i64 0, !30, i64 2, !30, i64 4, !30, i64 6, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !4, i64 13, !4, i64 14, !4, i64 15}
!35 = !{!"Keys", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !4, i64 232, !4, i64 244, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !4, i64 280, !4, i64 281, !4, i64 282, !4, i64 283}
!36 = !{!"long", !4, i64 0}
!37 = !{!"Options", !36, i64 0, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 15, !30, i64 15, !30, i64 15, !30, i64 15, !30, i64 15, !30, i64 15, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 22, !4, i64 23, !4, i64 24, !4, i64 25, !4, i64 26, !4, i64 27, !4, i64 28, !4, i64 29, !4, i64 30, !4, i64 31, !4, i64 32, !4, i64 33, !4, i64 34, !4, i64 35, !4, i64 36, !4, i64 37, !4, i64 38, !4, i64 39, !30, i64 40, !30, i64 42, !30, i64 44, !30, i64 46, !30, i64 48, !4, i64 50}
!38 = !{!"p1 _ZTS6RsaKey", !8, i64 0}
!39 = !{!"p1 _ZTS7ecc_key", !8, i64 0}
!40 = !{!"p1 _ZTS8Poly1305", !8, i64 0}
!41 = !{!"OneTimeAuth", !40, i64 0, !4, i64 8}
!42 = !{!"p1 _ZTS4TLSX", !8, i64 0}
!43 = !{!"WOLFSSL", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !4, i64 32, !4, i64 80, !12, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !14, i64 216, !8, i64 224, !5, i64 232, !16, i64 240, !8, i64 256, !20, i64 264, !20, i64 304, !25, i64 352, !26, i64 640, !27, i64 648, !29, i64 656, !28, i64 672, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !30, i64 708, !5, i64 712, !4, i64 716, !31, i64 717, !32, i64 722, !33, i64 726, !33, i64 728, !34, i64 730, !35, i64 748, !37, i64 1032, !38, i64 1088, !4, i64 1096, !4, i64 1097, !30, i64 1098, !4, i64 1100, !4, i64 1172, !30, i64 1174, !30, i64 1176, !4, i64 1178, !5, i64 1308, !5, i64 1312, !39, i64 1320, !4, i64 1328, !4, i64 1329, !39, i64 1336, !39, i64 1344, !30, i64 1352, !4, i64 1354, !5, i64 1356, !4, i64 1360, !5, i64 1364, !41, i64 1368, !42, i64 1384, !30, i64 1392, !5, i64 1396}
!44 = !{!43, !4, i64 739}
!45 = !{!34, !30, i64 0}
!46 = !{!43, !4, i64 1053}
!47 = !{!43, !4, i64 1054}
!48 = !{!43, !4, i64 726}
!49 = !{!43, !4, i64 727}
!50 = !{!43, !8, i64 256}
!51 = !{!4, !4, i64 0}
!52 = !{!34, !4, i64 12}
!53 = !{!34, !4, i64 13}
!54 = !{!34, !4, i64 14}
!55 = !{!30, !30, i64 0}
!56 = !{!34, !30, i64 2}
!57 = !{!34, !30, i64 4}
!58 = !{!34, !4, i64 8}
!59 = !{!20, !19, i64 24}
!60 = !{!20, !4, i64 33}
!61 = !{!20, !17, i64 0}
!62 = !{!35, !5, i64 264}
!63 = !{!35, !5, i64 268}
!64 = !{!35, !5, i64 256}
!65 = !{!35, !5, i64 260}
!66 = !{!43, !5, i64 1396}
!67 = !{!43, !4, i64 1376}
!68 = !{!43, !4, i64 738}
!69 = !{!41, !40, i64 0}
!70 = !{!41, !4, i64 8}
!71 = !{!43, !8, i64 176}
!72 = !{!43, !5, i64 1364}
!73 = !{!43, !13, i64 152}
!74 = !{!43, !30, i64 730}
!75 = !{!43, !4, i64 743}
!76 = !{!43, !30, i64 732}
end_hunk_0
