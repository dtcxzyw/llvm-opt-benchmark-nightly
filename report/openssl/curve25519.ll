Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/curve25519?download=true
inline.NumInlined: 218
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@x25519_scalar_mult:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.s, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.523.i = phi i32 [ 1, %bb.h ], [ %i.nq, %bb.i ]
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  %i.nq = add nuw nsw i32 %.523.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.nq, 100
  br i1 %exitcond.not.i, label %fe51_invert.exit, label %bb.i, !llvm.loop !26

fe51_invert.exit:                                 ; preds = %bb.i
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #7
  %i.nr = load i64, ptr %i.r, align 16, !tbaa !28 ; 2 uses
  %i.ns = load i64, ptr %i.ha, align 8, !tbaa !28 ; 2 uses
  %i.nt = load i64, ptr %i.hg, align 16, !tbaa !28 ; 2 uses
  %i.nu = load i64, ptr %i.hh, align 8, !tbaa !28 ; 2 uses
  %i.nv = load i64, ptr %i.hi, align 16, !tbaa !28 ; 2 uses
  %i.nw = add i64 %i.nr, 19
  %i.nx = lshr i64 %i.nw, 51
  %i.ny = add i64 %i.nx, %i.ns
  %i.nz = lshr i64 %i.ny, 51
  %i.oa = add i64 %i.nz, %i.nt
  %i.ob = lshr i64 %i.oa, 51
  %i.oc = add i64 %i.ob, %i.nu
  %i.od = lshr i64 %i.oc, 51
  %i.oe = add i64 %i.od, %i.nv
  %i.of = lshr i64 %i.oe, 51
  %i.og = mul nuw nsw i64 %i.of, 19
  %i.oh = add i64 %i.og, %i.nr                    ; 8 uses
  %i.oi = lshr i64 %i.oh, 51
  %i.oj = add i64 %i.oi, %i.ns                    ; 8 uses
  %i.ok = lshr i64 %i.oj, 51
  %i.ol = add i64 %i.ok, %i.nt                    ; 9 uses
  %i.om = lshr i64 %i.ol, 51
  %i.on = add i64 %i.om, %i.nu                    ; 8 uses
  %i.oo = lshr i64 %i.on, 51
  %i.op = add i64 %i.oo, %i.nv                    ; 7 uses
  %3 = trunc i64 %i.oh to i8
  store i8 %3, ptr %0, align 1, !tbaa !8
  %4 = lshr i64 %i.oh, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !8
  %7 = lshr i64 %i.oh, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !8
  %10 = lshr i64 %i.oh, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !8
  %i.oq = lshr i64 %i.oh, 32
  %i.or = trunc i64 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.or, ptr %i.os, align 1, !tbaa !8
  %i.ot = lshr i64 %i.oh, 40
  %i.ou = trunc i64 %i.ot to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !8
  %i.ow = lshr i64 %i.oh, 48
  %i.ox = and i64 %i.ow, 7
  %i.oy = shl i64 %i.oj, 3
  %i.oz = or disjoint i64 %i.oy, %i.ox
  %i.pa = trunc i64 %i.oz to i8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !8
  %i.pc = lshr i64 %i.oj, 5
  %i.pd = trunc i64 %i.pc to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !8
  %i.pf = lshr i64 %i.oj, 13
  %i.pg = trunc i64 %i.pf to i8
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !8
  %i.pi = lshr i64 %i.oj, 21
  %i.pj = trunc i64 %i.pi to i8
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !8
  %i.pl = lshr i64 %i.oj, 29
  %i.pm = trunc i64 %i.pl to i8
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !8
  %i.po = lshr i64 %i.oj, 37
  %i.pp = trunc i64 %i.po to i8
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !8
  %i.pr = lshr i64 %i.oj, 45
  %i.ps = and i64 %i.pr, 63
  %i.pt = shl i64 %i.ol, 6
  %i.pu = or disjoint i64 %i.pt, %i.ps
  %i.pv = trunc i64 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !8
  %i.px = lshr i64 %i.ol, 2
  %i.py = trunc i64 %i.px to i8
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !8
  %i.qa = lshr i64 %i.ol, 10
  %i.qb = trunc i64 %i.qa to i8
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !8
  %i.qd = lshr i64 %i.ol, 18
  %i.qe = trunc i64 %i.qd to i8
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !8
  %i.qg = lshr i64 %i.ol, 26
  %i.qh = trunc i64 %i.qg to i8
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !8
  %i.qj = lshr i64 %i.ol, 34
  %i.qk = trunc i64 %i.qj to i8
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !8
  %i.qm = lshr i64 %i.ol, 42
  %i.qn = trunc i64 %i.qm to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !8
  %i.qp = lshr i64 %i.ol, 50
  %i.qq = and i64 %i.qp, 1
  %i.qr = shl i64 %i.on, 1
  %i.qs = or disjoint i64 %i.qr, %i.qq
  %i.qt = trunc i64 %i.qs to i8
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.qt, ptr %i.qu, align 1, !tbaa !8
  %i.qv = lshr i64 %i.on, 7
  %i.qw = trunc i64 %i.qv to i8
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !8
  %i.qy = lshr i64 %i.on, 15
  %i.qz = trunc i64 %i.qy to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !8
  %i.rb = lshr i64 %i.on, 23
  %i.rc = trunc i64 %i.rb to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !8
  %i.re = lshr i64 %i.on, 31
  %i.rf = trunc i64 %i.re to i8
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !8
  %i.rh = lshr i64 %i.on, 39
  %i.ri = trunc i64 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !8
  %i.rk = lshr i64 %i.on, 47
  %i.rl = and i64 %i.rk, 15
  %i.rm = shl i64 %i.op, 4
  %i.rn = or disjoint i64 %i.rm, %i.rl
  %i.ro = trunc i64 %i.rn to i8
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !8
  %i.rq = lshr i64 %i.op, 4
  %i.rr = trunc i64 %i.rq to i8
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !8
  %i.rt = lshr i64 %i.op, 12
  %i.ru = trunc i64 %i.rt to i8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !8
  %i.rw = lshr i64 %i.op, 20
  %i.rx = trunc i64 %i.rw to i8
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !8
  %i.rz = lshr i64 %i.op, 28
  %i.sa = trunc i64 %i.rz to i8
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !8
  %i.sc = lshr i64 %i.op, 36
  %i.sd = trunc i64 %i.sc to i8
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !8
  %i.sf = lshr i64 %i.op, 44
  %i.sg = trunc i64 %i.sf to i8
  %i.sh = and i8 %i.sg, 127
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.x, i64 noundef 32) #7
  br label %bb.j

bb.j:                                             ; preds = %fe51_invert.exit, %x25519_scalar_mulx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_x25519_public_from_private(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %2 = alloca %struct.ge_p3, align 4              ; 23 uses
  %i.b = alloca [10 x i32], align 16              ; 15 uses
  %i.c = alloca [10 x i32], align 16              ; 13 uses
  %i.d = alloca [10 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = load i8, ptr %i.a, align 16, !tbaa !8
  %i.f = and i8 %i.e, -8
  store i8 %i.f, ptr %i.a, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, 64
  store i8 %i.j, ptr %i.g, align 1, !tbaa !8
  call fastcc void @ge_scalarmult_base(ptr noundef %2, ptr noundef %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i32, ptr %i.k, align 4, !tbaa !9    ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !9    ; 2 uses
  %i.o = add nsw i32 %i.n, %i.m
  store i32 %i.o, ptr %i.b, align 16, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9    ; 2 uses
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9    ; 2 uses
  %i.z = add nsw i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.al = add nsw i32 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.al, ptr %i.am, align 16, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 60
end_hunk_0
