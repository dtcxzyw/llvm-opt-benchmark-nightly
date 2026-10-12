Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_dsa_ntt?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@ossl_ml_dsa_poly_ntt:bb.a
  %.03140 = phi i32 [ 1, %bb.a ], [ %i.az, %._crit_edge39 ] ; 3 uses
  %i.a = lshr i32 %.03041, 1                      ; 3 uses
  %i.b = icmp sgt i32 %.03140, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.b
  %i.c = and i32 %.03041, 510
  %i.d = zext nneg i32 %i.c to i64
  %i.e = zext nneg i32 %i.a to i64                ; 2 uses
  %i.f = zext nneg i32 %.03140 to i64             ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %invariant.gep47 = getelementptr inbounds nuw [4 x i8], ptr @zetas_montgomery, i64 %i.f
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph38, %._crit_edge
  %indvars.iv44 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next45, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.g = add nuw nsw i64 %indvars.iv, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %gep48 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep47, i64 %indvars.iv44
  %i.h = load i32, ptr %gep48, align 4, !tbaa !8
  %i.i = zext i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv42 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next43, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv42 ; 2 uses
  %i.l = load i32, ptr %gep, align 4, !tbaa !8
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw i64 %i.m, %i.i                   ; 2 uses
  %i.o = mul i64 %i.n, 4236238847
  %i.p = and i64 %i.o, 4294967295
  %i.q = mul nuw nsw i64 %i.p, 8380417
  %i.r = add i64 %i.q, %i.n
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32                ; 3 uses
  %i.u = add i32 %i.t, -8380417                   ; 2 uses
  %i.v = xor i32 %i.t, -1
  %i.w = and i32 %i.u, %i.v
  %.neg.i.i.i.i = ashr i32 %i.w, 31               ; 2 uses
  %i.x = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #1, !srcloc !9
  %i.y = and i32 %i.x, %i.t
  %i.z = xor i32 %.neg.i.i.i.i, -1
  %i.aa = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.z) #1, !srcloc !9
  %i.ab = and i32 %i.u, %i.aa
  %i.ac = or i32 %i.ab, %i.y                      ; 2 uses
  %i.ad = add i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = add i32 %i.ad, -8380417                 ; 2 uses
  %i.af = xor i32 %i.ad, -1
  %i.ag = and i32 %i.ae, %i.af
  %.neg.i.i.i = ashr i32 %i.ag, 31                ; 2 uses
  %i.ah = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i) #1, !srcloc !9
  %i.ai = and i32 %i.ad, %i.ah
  %i.aj = xor i32 %.neg.i.i.i, -1
  %i.ak = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.aj) #1, !srcloc !9
  %i.al = and i32 %i.ae, %i.ak
  %i.am = or i32 %i.al, %i.ai
  store i32 %i.am, ptr %i.j, align 4, !tbaa !8
  %i.an = add i32 %i.k, 8380417
  %i.ao = sub i32 %i.an, %i.ac                    ; 3 uses
  %i.ap = add i32 %i.ao, -8380417                 ; 2 uses
  %i.aq = xor i32 %i.ao, -1
  %i.ar = and i32 %i.ap, %i.aq
  %.neg.i.i.i.i33 = ashr i32 %i.ar, 31            ; 2 uses
  %i.as = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i33) #1, !srcloc !9
  %i.at = and i32 %i.ao, %i.as
  %i.au = xor i32 %.neg.i.i.i.i33, -1
  %i.av = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.au) #1, !srcloc !9
  %i.aw = and i32 %i.ap, %i.av
  %i.ax = or i32 %i.aw, %i.at
  store i32 %i.ax, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next43, %i.g
  br i1 %i.ay, label %bb.d, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.d
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %i.f
  br i1 %exitcond.not, label %._crit_edge39, label %bb.c, !llvm.loop !13

._crit_edge39:                                    ; preds = %._crit_edge, %bb.b
  %i.az = shl i32 %.03140, 1                      ; 2 uses
  %i.ba = icmp slt i32 %i.az, 256
  br i1 %i.ba, label %bb.b, label %bb.e, !llvm.loop !14

bb.e:                                             ; preds = %._crit_edge39
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define void @ossl_ml_dsa_poly_ntt_inverse(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge48
  %.03750 = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge48 ] ; 2 uses
  %.03849 = phi i32 [ 1, %bb.a ], [ %.pre-phi, %._crit_edge48 ] ; 4 uses
  %i.a = lshr i32 %.03750, 1                      ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.._crit_edge48_crit_edge, label %.lr.ph47

.._crit_edge48_crit_edge:                         ; preds = %bb.b
  %.pre = shl i32 %.03849, 1
  br label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.b
  %reass.add = and i32 %.03750, 510
  %i.b = shl i32 %.03849, 1                       ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = sext i32 %.03849 to i64
  %i.e = zext nneg i32 %reass.add to i64
  %wide.trip.count62 = zext nneg i32 %i.a to i64
  %i.f = getelementptr [4 x i8], ptr @zetas_montgomery, i64 %i.e
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph47
  %indvars.iv57 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i32 [ %.03849, %.lr.ph47 ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.g = xor i64 %indvars.iv57, -1
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = sub i32 8380417, %i.i
  %i.k = zext i32 %i.j to i64
  %wide.trip.count = zext i32 %indvars.iv55 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv52 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next53, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv52 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv52 ; 2 uses
  %i.n = load i32, ptr %gep, align 4, !tbaa !8    ; 2 uses
  %i.o = add i32 %i.n, %i.m                       ; 3 uses
  %i.p = add i32 %i.o, -8380417                   ; 2 uses
  %i.q = xor i32 %i.o, -1
  %i.r = and i32 %i.p, %i.q
  %.neg.i.i.i = ashr i32 %i.r, 31                 ; 2 uses
  %i.s = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i) #1, !srcloc !9
  %i.t = and i32 %i.s, %i.o
  %i.u = xor i32 %.neg.i.i.i, -1
  %i.v = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.u) #1, !srcloc !9
  %i.w = and i32 %i.v, %i.p
  %i.x = or i32 %i.w, %i.t
  store i32 %i.x, ptr %i.l, align 4, !tbaa !8
  %i.y = add i32 %i.m, 8380417
  %i.z = sub i32 %i.y, %i.n
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nuw i64 %i.aa, %i.k                 ; 2 uses
  %i.ac = mul i64 %i.ab, 4236238847
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = mul nuw nsw i64 %i.ad, 8380417
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32              ; 3 uses
  %i.ai = add i32 %i.ah, -8380417                 ; 2 uses
  %i.aj = xor i32 %i.ah, -1
  %i.ak = and i32 %i.ai, %i.aj
  %.neg.i.i.i.i = ashr i32 %i.ak, 31              ; 2 uses
  %i.al = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #1, !srcloc !9
  %i.am = and i32 %i.al, %i.ah
  %i.an = xor i32 %.neg.i.i.i.i, -1
  %i.ao = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.an) #1, !srcloc !9
  %i.ap = and i32 %i.ai, %i.ao
  %i.aq = or i32 %i.ap, %i.am
  store i32 %i.aq, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.c
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %indvars.iv.next56 = add i32 %indvars.iv55, %i.b
  %exitcond63.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge48, label %.lr.ph, !llvm.loop !16

._crit_edge48:                                    ; preds = %._crit_edge, %.._crit_edge48_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge48_crit_edge ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.ar = icmp slt i32 %.pre-phi, 256
  br i1 %i.ar, label %bb.b, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %._crit_edge48, %.preheader
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader ], [ 0, %._crit_edge48 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 41978
  %i.aw = mul nuw nsw i64 %i.au, 8395782
  %i.ax = and i64 %i.aw, 4294967294
  %i.ay = mul nuw nsw i64 %i.ax, 8380417
  %i.az = add nuw nsw i64 %i.ay, %i.av
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bc = add nsw i32 %i.bb, -8380417             ; 2 uses
  %.neg.i.i.i.i42 = ashr i32 %i.bc, 31            ; 2 uses
  %i.bd = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i42) #1, !srcloc !9
  %i.be = and i32 %i.bd, %i.bb
  %i.bf = xor i32 %.neg.i.i.i.i42, -1
  %i.bg = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %i.bf) #1, !srcloc !9
  %i.bh = and i32 %i.bc, %i.bg
  %i.bi = or i32 %i.bh, %i.be
  store i32 %i.bi, ptr %i.as, align 4, !tbaa !8
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 256
  br i1 %exitcond67.not, label %bb.d, label %.preheader, !llvm.loop !18

bb.d:                                             ; preds = %.preheader
  ret void
}

attributes #0 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(none) }

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
!8 = !{!5, !5, i64 0}
!9 = !{i64 355018}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
end_hunk_0
