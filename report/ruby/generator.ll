inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0_@generate_json_float:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bg = bitcast double %i.d to i64              ; 4 uses
  %.not.i30 = icmp slt i64 %i.bg, 0               ; 2 uses
  br i1 %.not.i30, label %bb.m, label %bb.n

bb.m:                                             ; preds = %fbuffer_inc_capa.exit
end_hunk_0
begin_hunk_1_@generate_json_float:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %fbuffer_inc_capa.exit
  %.016.i = phi i32 [ 1, %bb.m ], [ 0, %fbuffer_inc_capa.exit ] ; 2 uses
  %3 = zext nneg i32 %.016.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %3 ; 25 uses
  %i.bi = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.bi, label %bb.o, label %bb.p

end_hunk_1
begin_hunk_2_@generate_json_float:bb.a
  %i.fz = trunc i64 %i.fv to i8
  %i.ga = add i8 %i.fz, 48
  %i.gb = add nuw nsw i32 %.179.i.i.i, 1
  %4 = zext nneg i32 %.179.i.i.i to i64
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  store i8 %i.ga, ptr %5, align 1, !tbaa !79
  br label %round_digit.exit.thread.1.i.i.i

round_digit.exit.thread.1.i.i.i:                  ; preds = %bb.x, %bb.w
end_hunk_2
begin_hunk_3_@generate_json_float:bb.a
  br label %round_digit.exit.thread.i.i.i

round_digit.exit.thread.i.i.i:                    ; preds = %bb.ao, %find_cachedpow10.exit.i.i
  %.179.i.i.i = phi i32 [ 1, %bb.ao ], [ 0, %find_cachedpow10.exit.i.i ] ; 3 uses
  %.neg.i.i.i = mul nsw i64 %i.fu, -1000000000
  %i.jy = add i64 %.neg.i.i.i, %i.fq              ; 3 uses
  %i.jz = shl i64 %i.jy, %i.fo
end_hunk_3
begin_hunk_4_@generate_json_float:bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 46, ptr %i.ng, align 1, !tbaa !79
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ni = add nsw i32 %i.nd, -1
  %i.nj = zext nneg i32 %i.ni to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nh, ptr nonnull readonly align 1 %6, i64 %i.nj, i1 false)
  %i.nk = add nuw nsw i32 %i.nd, 1
  br label %bb.bg

end_hunk_4
begin_hunk_5_@generate_json_float:bb.a

fpconv_dtoa.exit:                                 ; preds = %bb.o, %bb.r, %bb.s, %bb.ay, %bb.bc, %bb.bd, %bb.bk
  %.pn.i = phi i32 [ %i.nb, %bb.bd ], [ %i.mj, %bb.ay ], [ %i.or, %bb.bk ], [ %i.mu, %bb.bc ], [ 3, %bb.o ], [ 3, %bb.s ], [ 3, %bb.r ]
  %.0.i = add nsw i32 %.pn.i, %.016.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ou = sext i32 %.0.i to i64
  %i.ov = load i64, ptr %i.ay, align 8, !tbaa !81
end_hunk_5
