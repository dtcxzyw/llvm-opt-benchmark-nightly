inline.NumInlined: 18
begin_hunk_0_@assemble:bb.a
  %i.it = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 24), align 8, !tbaa !8
  %i.iu = zext i8 %i.it to i16
  %i.iv = shl nuw i16 %i.iu, 8
  %i.iw = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 25), align 1, !tbaa !8
  %i.ix = zext i8 %i.iw to i16
  %i.iy = or disjoint i16 %i.iv, %i.ix
  %i.iz = xor i16 %i.iy, %i.is
  store i16 %i.iz, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 24), align 8, !tbaa !9
  %i.ja = add i16 %i.in, %i.ip
  %i.jb = zext i16 %i.ip to i64
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr @x1a0, i64 %i.jb ; 2 uses
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !9  ; 2 uses
  %i.je = mul i16 %i.ja, 20021
  %i.jf = mul i16 %i.jd, 346                      ; 2 uses
  %i.jg = add i16 %i.jf, %i.je
  %i.jh = mul i16 %i.jd, 20021
  %i.ji = add i16 %i.jg, %i.ik                    ; 2 uses
  %i.jj = add i16 %i.jh, 1                        ; 2 uses
  store i16 %i.jj, ptr %i.jc, align 2, !tbaa !9
  %i.jk = add i16 %i.h, 13                        ; 2 uses
  %i.jl = xor i16 %i.jj, %i.ir
  %i.jm = xor i16 %i.jl, %i.ji
  %i.jn = load i16, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 24), align 8, !tbaa !9
  %i.jo = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 26), align 2, !tbaa !8
  %i.jp = zext i8 %i.jo to i16
  %i.jq = shl nuw i16 %i.jp, 8
  %i.jr = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 27), align 1, !tbaa !8
  %i.js = zext i8 %i.jr to i16
  %i.jt = or disjoint i16 %i.jq, %i.js
  %i.ju = xor i16 %i.jt, %i.jn
  store i16 %i.ju, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 26), align 2, !tbaa !9
  %i.jv = add i16 %i.ji, %i.jk
  %i.jw = zext i16 %i.jk to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr @x1a0, i64 %i.jw ; 2 uses
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !9  ; 2 uses
  %i.jz = mul i16 %i.jv, 20021
  %i.ka = mul i16 %i.jy, 346                      ; 2 uses
  %i.kb = add i16 %i.ka, %i.jz
  %i.kc = mul i16 %i.jy, 20021
  %i.kd = add i16 %i.kb, %i.jf                    ; 2 uses
  %i.ke = add i16 %i.kc, 1                        ; 2 uses
  store i16 %i.ke, ptr %i.jx, align 2, !tbaa !9
  %i.kf = add i16 %i.h, 14                        ; 2 uses
  %i.kg = xor i16 %i.ke, %i.jm
  %i.kh = xor i16 %i.kg, %i.kd
  %i.ki = load i16, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 26), align 2, !tbaa !9
  %i.kj = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 28), align 4, !tbaa !8
  %i.kk = zext i8 %i.kj to i16
  %i.kl = shl nuw i16 %i.kk, 8
  %i.km = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 29), align 1, !tbaa !8
  %i.kn = zext i8 %i.km to i16
  %i.ko = or disjoint i16 %i.kl, %i.kn
  %i.kp = xor i16 %i.ko, %i.ki
  store i16 %i.kp, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 28), align 4, !tbaa !9
  %i.kq = add i16 %i.kd, %i.kf
  %i.kr = zext i16 %i.kf to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr @x1a0, i64 %i.kr ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !9  ; 2 uses
  %i.ku = mul i16 %i.kq, 20021
  %i.kv = mul i16 %i.kt, 346                      ; 2 uses
  %i.kw = add i16 %i.kv, %i.ku
  %i.kx = mul i16 %i.kt, 20021
  %i.ky = add i16 %i.kw, %i.ka                    ; 2 uses
  %i.kz = add i16 %i.kx, 1                        ; 2 uses
  store i16 %i.kz, ptr %i.ks, align 2, !tbaa !9
  %i.la = add i16 %i.h, 15                        ; 2 uses
  %i.lb = xor i16 %i.kz, %i.kh
  %i.lc = xor i16 %i.lb, %i.ky
  %i.ld = load i16, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 28), align 4, !tbaa !9
  %i.le = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 30), align 2, !tbaa !8
  %i.lf = zext i8 %i.le to i16
  %i.lg = shl nuw i16 %i.lf, 8
  %i.lh = load i8, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 31), align 1, !tbaa !8
  %i.li = zext i8 %i.lh to i16
  %i.lj = or disjoint i16 %i.lg, %i.li
  %i.lk = xor i16 %i.lj, %i.ld
  store i16 %i.lk, ptr getelementptr inbounds nuw (i8, ptr @x1a0, i64 30), align 2, !tbaa !9
  %i.ll = add i16 %i.ky, %i.la
  %i.lm = zext i16 %i.la to i64
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr @x1a0, i64 %i.lm ; 2 uses
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !9  ; 2 uses
  store i16 20021, ptr @bx, align 2, !tbaa !9
  %i.lp = mul i16 %i.ll, 20021
  %i.lq = mul i16 %i.lo, 346                      ; 3 uses
  %i.lr = add i16 %i.lq, %i.lp                    ; 2 uses
  store i16 %i.lr, ptr @cx, align 2, !tbaa !9
  store i16 %i.lq, ptr @tmp, align 2, !tbaa !9
  store i16 %i.lq, ptr @si, align 2, !tbaa !9
  %i.ls = mul i16 %i.lo, 20021
  %i.lt = add i16 %i.lr, %i.kv                    ; 3 uses
  store i16 %i.lt, ptr @dx, align 2, !tbaa !9
  %i.lu = add i16 %i.ls, 1                        ; 3 uses
  store i16 %i.lu, ptr @ax, align 2, !tbaa !9
  store i16 %i.lt, ptr @x1a2, align 2, !tbaa !9
  store i16 %i.lu, ptr %i.ln, align 2, !tbaa !9
  %i.lv = xor i16 %i.lt, %i.lu                    ; 2 uses
  store i16 %i.lv, ptr @res, align 2, !tbaa !9
  %i.lw = xor i16 %i.lv, %i.lc
  store i16 %i.lw, ptr @inter, align 2, !tbaa !9
  store i16 0, ptr @i, align 2, !tbaa !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @code() local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr @x1a2, align 2, !tbaa !9
  %i.b = load i16, ptr @i, align 2, !tbaa !9      ; 3 uses
  %i.c = add i16 %i.b, %i.a
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @x1a0, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !9    ; 2 uses
  store i16 20021, ptr @bx, align 2, !tbaa !9
  %i.g = load i16, ptr @si, align 2, !tbaa !9
  %i.h = mul i16 %i.c, 20021
  %i.i = mul i16 %i.f, 346                        ; 3 uses
  %i.j = add i16 %i.h, %i.i                       ; 2 uses
  store i16 %i.j, ptr @cx, align 2, !tbaa !9
  store i16 %i.i, ptr @tmp, align 2, !tbaa !9
  store i16 %i.i, ptr @si, align 2, !tbaa !9
  %i.k = mul i16 %i.f, 20021
  %i.l = add i16 %i.j, %i.g                       ; 3 uses
  store i16 %i.l, ptr @dx, align 2, !tbaa !9
  %i.m = add i16 %i.k, 1                          ; 3 uses
  store i16 %i.m, ptr @ax, align 2, !tbaa !9
  store i16 %i.l, ptr @x1a2, align 2, !tbaa !9
  store i16 %i.m, ptr %i.e, align 2, !tbaa !9
  %i.n = xor i16 %i.l, %i.m
  store i16 %i.n, ptr @res, align 2, !tbaa !9
  %i.o = add i16 %i.b, 1
  store i16 %i.o, ptr @i, align 2, !tbaa !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 32768) i32 @my_rand_r(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = mul i32 %i.a, 1664525
  %i.c = add i32 %i.b, 1013904223                 ; 2 uses
  store i32 %i.c, ptr %0, align 4, !tbaa !4
  %i.d = lshr i32 %i.c, 16
  %i.e = and i32 %i.d, 32767
  ret i32 %i.e
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 10) #9, !inline_history !14
  %i.e = trunc i64 %i.d to i32
  %i.f = add nsw i32 %i.e, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.03 = phi i32 [ %i.f, %bb.b ], [ 19999, %bb.a ] ; 2 uses
  store i16 0, ptr @si, align 2, !tbaa !9
  store i16 0, ptr @x1a2, align 2, !tbaa !9
  store i16 0, ptr @i, align 2, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @cle, ptr noundef nonnull align 1 dereferenceable(32) @.str, i64 32, i1 false)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @buff, i64 1), align 1, !tbaa !8
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @buff) #10 ; 2 uses
  %storemerge10 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 32) ; 2 uses
  %storemerge = trunc nuw nsw i64 %storemerge10 to i32
  store i32 %storemerge, ptr @count, align 4, !tbaa !4
  %.not17 = icmp eq i64 %i.g, 0
  br i1 %.not17, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.h = add nuw nsw i64 %storemerge10, 4294967295
  %i.i = and i64 %i.h, 4294967295
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) @cle, ptr noundef nonnull align 16 dereferenceable(1) @buff, i64 %i.j, i1 false), !tbaa !8
  %i.k = trunc nuw nsw i64 %i.j to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.c
  %storemerge7.lcssa = phi i32 [ 0, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  store i32 %storemerge7.lcssa, ptr @c1, align 4, !tbaa !4
  %.not13 = icmp eq i32 %.03, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader, %bb.e
  %i.l = phi i32 [ %i.al, %bb.e ], [ %.03, %.preheader ]
  %.015 = phi i32 [ %i.af, %bb.e ], [ 0, %.preheader ]
  %.0914 = phi i32 [ %i.n, %bb.e ], [ 1, %.preheader ]
  %i.m = mul i32 %.0914, 1664525
  %i.n = add i32 %i.m, 1013904223                 ; 2 uses
  %i.o = lshr i32 %i.n, 16
  %i.p = trunc nuw i32 %i.o to i16
  %i.q = and i16 %i.p, 32767
  store i16 %i.q, ptr @c, align 2, !tbaa !9
  %i.r = tail call i32 @assemble()                ; 0 uses
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @inter, i64 1), align 1, !tbaa !9
  %3 = zext i8 %2 to i16                          ; 2 uses
  store i16 %3, ptr @cfc, align 2, !tbaa !9
  %4 = load i16, ptr @inter, align 2, !tbaa !9
  %i.s = and i16 %4, 255                          ; 2 uses
  store i16 %i.s, ptr @cfd, align 2, !tbaa !9
  %i.t = load i16, ptr @c, align 2, !tbaa !9      ; 2 uses
  %i.u = trunc i16 %i.t to i8
  %i.v = load <16 x i8>, ptr @cle, align 16, !tbaa !8
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.y = xor <16 x i8> %i.v, %i.x
  store <16 x i8> %i.y, ptr @cle, align 16, !tbaa !8
  %i.z = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 16), align 16, !tbaa !8
  %i.aa = xor <16 x i8> %i.z, %i.x
  store <16 x i8> %i.aa, ptr getelementptr inbounds nuw (i8, ptr @cle, i64 16), align 16, !tbaa !8
  store i16 32, ptr @compte, align 2, !tbaa !9
  %i.ab = xor i16 %i.t, %3
  %i.ac = xor i16 %i.ab, %i.s                     ; 3 uses
  store i16 %i.ac, ptr @c, align 2, !tbaa !9
  %i.ad = ashr i16 %i.ac, 4                       ; 2 uses
  store i16 %i.ad, ptr @d, align 2, !tbaa !9
  %i.ae = and i16 %i.ac, 15                       ; 2 uses
  store i16 %i.ae, ptr @e, align 2, !tbaa !9
  %i.af = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.ag = and i32 %i.af, 2047
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph16
  %i.ai = sext i16 %i.ad to i32
  %i.aj = zext nneg i16 %i.ae to i32
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ai, i32 noundef %i.aj) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph16
  %i.al = add nsw i32 %i.l, -1                    ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = distinct !{null}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
