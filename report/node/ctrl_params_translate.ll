begin_hunk_0
    i32 2, label %bb.ah
    i32 4, label %bb.ak
    i32 5, label %.thread200
    i32 0, label %bb.be
    i32 8, label %bb.be
    i32 7, label %.thread192
  ]

end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread200

.thread192:                                       ; preds = %bb.b
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !32
  switch i32 %i.ew, label %.thread200 [
end_hunk_1
begin_hunk_2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, ptr noundef nonnull @.str.6, i32 noundef %i.ge, i32 noundef 7, i32 noundef %i.gf) #8
  br label %.thread200

bb.be:                                            ; preds = %bb.b, %bb.b
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %11 = load i32, ptr %10, align 4, !tbaa !37     ; 5 uses
  %i.gg = icmp eq i32 %0, 0
  switch i32 %0, label %.thread200 [
    i32 8, label %bb.bf
end_hunk_2
begin_hunk_3
bb.bg:                                            ; preds = %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !44 ; 2 uses
  %i.gm = sext i32 %11 to i64
  br i1 %i.gg, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
end_hunk_3
begin_hunk_4
bb.bn:                                            ; preds = %bb.bm
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !40
  %i.gy = tail call i32 @OSSL_PARAM_set_int(ptr noundef %i.gx, i32 noundef %11) #8
  br label %.thread200

bb.bo:                                            ; preds = %bb.bm
end_hunk_4
begin_hunk_5
  br label %.thread200

bb.bq:                                            ; preds = %bb.bo
  %i.he = tail call i32 @OSSL_PARAM_set_uint(ptr noundef %i.hc, i32 noundef %11) #8
  br label %.thread200

bb.br:                                            ; preds = %bb.bm
end_hunk_5
begin_hunk_6
  br label %.thread200

.thread200:                                       ; preds = %.thread192, %bb.bf, %bb.be, %bb.at, %.thread, %bb.b, %bb.aa, %bb.ac, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.u, %bb.t, %bb.aj, %bb.ah, %bb.bv, %bb.bw, %bb.ai, %bb.bk, %bb.bn, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.ay, %bb.ax, %bb.x, %bb.a, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.av, %bb.ab, %bb.z, %bb.s, %bb.e, %bb.c
  %.2 = phi i32 [ 0, %bb.ay ], [ 0, %bb.c ], [ 0, %bb.e ], [ -2, %bb.s ], [ 0, %bb.bk ], [ %i.b, %bb.a ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %.0157.ph, %.thread ], [ 0, %bb.bd ], [ %i.fc, %bb.av ], [ 1, %bb.az ], [ 0, %bb.x ], [ 0, %bb.ax ], [ %i.fq, %bb.ba ], [ %i.fx, %bb.bb ], [ %i.gd, %bb.bc ], [ 0, %bb.bu ], [ %i.gy, %bb.bn ], [ %i.hd, %bb.bp ], [ %i.he, %bb.bq ], [ %i.hj, %bb.br ], [ %i.ho, %bb.bs ], [ %i.hu, %bb.bt ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ah ], [ 1, %bb.b ], [ 1, %bb.bw ], [ 1, %bb.bv ], [ 1, %.thread192 ], [ 1, %bb.at ], [ %11, %bb.be ], [ %11, %bb.bf ]
  ret i32 %.2
}

end_hunk_6
