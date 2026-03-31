begin_hunk_0
  %.sroa.7.0..sroa_idx222 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx222, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.gq = load ptr, ptr %.sroa.7.0..sroa_idx222, align 8, !alias.scope !1277, !noalias !1280, !nonnull !12, !noundef !12 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !1277, !noalias !1280, !noundef !12 ; 3 uses
  switch i64 %i.gs, label %bb.ck [
    i64 0, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i.i
    i64 1, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.gt = load i8, ptr %i.gq, align 1, !alias.scope !1282, !noalias !1285, !noundef !12
  switch i8 %i.gt, label %thread-pre-split.i.i.i [
    i8 43, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i.i
    i8 45, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.ck, %bb.cj
  %.sroa.0.270.i.i.i.ph = phi ptr [ %i.gq, %bb.cj ], [ %.sroa.0.0.i.i.i, %bb.ck ]
  %.sroa.15.269.i.i.i.ph = phi i64 [ 1, %bb.cj ], [ %.sroa.15.0.i.i.i, %bb.ck ]
  br label %.lr.ph.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %.pr.i.i.i = load i8, ptr %i.gq, align 1, !alias.scope !1282, !noalias !1285
  %cond.i.i.i = icmp eq i8 %.pr.i.i.i, 43         ; 2 uses
  %i.gu = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.gs, %i.gu    ; 3 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.gv = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.gv, label %thread-pre-split.i.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i:                               ; preds = %bb.cn
  %.not52.i.i.i.not = icmp eq i64 %i.gx, 0
end_hunk_0
begin_hunk_1
  %i.hj = icmp ult i64 %i.hi, %i.gz
  br i1 %i.hj, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i.i, label %.preheader56.i.i.i, !prof !14

.lr.ph.i.i.i:                                     ; preds = %thread-pre-split.i.i.i, %bb.co
  %.sroa.0.269.i.i.i = phi ptr [ %i.hq, %bb.co ], [ %.sroa.0.270.i.i.i.ph, %thread-pre-split.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.hp, %bb.co ], [ %.sroa.15.269.i.i.i.ph, %thread-pre-split.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.hs, %bb.co ], [ 0, %thread-pre-split.i.i.i ]
  %i.hk = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !1282, !noalias !1285, !noundef !12
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -48                  ; 2 uses
end_hunk_1
begin_hunk_2
  %.not53.i.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not53.i.i.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i.i, label %.lr.ph.i.i.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i.i: ; preds = %bb.cl, %bb.cn, %.preheader56.i.i.i, %.lr.ph.i.i.i, %bb.co, %bb.ci, %bb.cj, %bb.cj, %bb.cm
  %.sroa.0.0 = phi i64 [ %i.gs, %bb.ci ], [ %i.hs, %bb.co ], [ 1, %bb.cj ], [ %spec.select.i.i, %bb.cm ], [ 1, %bb.cj ], [ 1, %.lr.ph.i.i.i ], [ 2, %bb.cn ], [ 1, %bb.cl ], [ %i.hi, %.preheader56.i.i.i ] ; 2 uses
  %10 = phi i1 [ true, %bb.ci ], [ %i.hn, %.lr.ph.i.i.i ], [ true, %bb.cj ], [ true, %bb.cm ], [ true, %bb.cj ], [ %i.hn, %bb.co ], [ true, %bb.cn ], [ true, %bb.cl ], [ false, %.preheader56.i.i.i ]
  %.sink.i.i = phi i32 [ 1000000000, %bb.ci ], [ 0, %bb.co ], [ 1000000000, %bb.cj ], [ 1000000000, %bb.cm ], [ 1000000000, %bb.cj ], [ 1000000000, %.lr.ph.i.i.i ], [ 1000000000, %bb.cn ], [ 1000000000, %bb.cl ], [ 0, %.preheader56.i.i.i ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB7_18DynamoDbLockClient7try_news3_0B7_.exit.i unwind label %bb.cp, !noalias !1280

end_hunk_2
begin_hunk_3
_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE11map_or_elseINtNtB5_6result6ResultNtNtB5_4time8DurationNtNtNtB5_3num5error13ParseIntErrorENCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB2W_18DynamoDbLockClient7try_news2_0NCB2Q_s3_0EB2W_.exit: ; preds = %_RNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB7_18DynamoDbLockClient7try_news3_0B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br i1 %10, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE11map_or_elseINtNtB5_6result6ResultNtNtB5_4time8DurationNtNtNtB5_3num5error13ParseIntErrorENCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB2W_18DynamoDbLockClient7try_news2_0NCB2Q_s3_0EB2W_.exit
  %.sroa.492.8.insert.ext = and i64 %.sroa.0.0, 255
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ka = getelementptr i8, ptr %i.jl, i64 -40
  %.val = load ptr, ptr %i.ka, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.kb = getelementptr i8, ptr %i.jl, i64 -32
  %.val192 = load i64, ptr %i.kb, align 8, !noundef !12 ; 2 uses
  switch i64 %.val192, label %bb.by [
    i64 0, label %.loopexit.i
    i64 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.kc = load i8, ptr %.val, align 1, !alias.scope !1753, !noalias !1756, !noundef !12
  switch i8 %i.kc, label %thread-pre-split.i.i [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.by, %bb.bx
  %.sroa.0.270.i.i.ph = phi ptr [ %.val, %bb.bx ], [ %.sroa.0.0.i.i199, %bb.by ]
  %.sroa.15.269.i.i.ph = phi i64 [ 1, %bb.bx ], [ %.sroa.15.0.i.i, %bb.by ]
  br label %.lr.ph.i.i

bb.by:                                            ; preds = %bb.bw
  %.pr.i.i = load i8, ptr %.val, align 1, !alias.scope !1753, !noalias !1756
  %cond.i.i = icmp eq i8 %.pr.i.i, 43             ; 2 uses
  %i.kd = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %.val192, %i.kd   ; 3 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i199 = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.ke = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.ke, label %thread-pre-split.i.i, label %.preheader56.i.i.preheader

.preheader56.i.i:                                 ; preds = %bb.cb
  %.not52.i.i = icmp eq i64 %i.kg, 0
end_hunk_4
begin_hunk_5
  %i.ks = icmp ult i64 %i.kr, %i.ki
  br i1 %i.ks, label %.loopexit.i, label %.preheader56.i.i, !prof !14

.lr.ph.i.i:                                       ; preds = %thread-pre-split.i.i, %bb.cc
  %.sroa.0.269.i.i = phi ptr [ %i.kz, %bb.cc ], [ %.sroa.0.270.i.i.ph, %thread-pre-split.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ky, %bb.cc ], [ %.sroa.15.269.i.i.ph, %thread-pre-split.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.lb, %bb.cc ], [ 0, %thread-pre-split.i.i ]
  %i.kt = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !1753, !noalias !1756, !noundef !12
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nsw i32 %i.ku, -48                  ; 2 uses
end_hunk_5
begin_hunk_6
  store <2 x i64> %i.le, ptr %.sroa.2167.0..sroa_idx, align 8
  br label %bb.cl

.loopexit:                                        ; preds = %.preheader56.i.i, %bb.cc
  %.sroa.5.0.ph = phi i64 [ %i.lb, %bb.cc ], [ %i.kr, %.preheader56.i.i ]
  %i.lf = invoke { i64, i32 } @_RNvXs6_NtCs2pqxYH9ZEk8_3std4timeNtB5_10SystemTimeINtNtNtCsbvkFyIu7lgC_4core3ops5arith3AddNtNtBS_4time8DurationE3add(i64 noundef 0, i32 noundef 0, i64 noundef %.sroa.5.0.ph, i32 noundef 0)
          to label %_RNvCs9rVkZwOUgsI_13deltalake_aws20epoch_to_system_time.exit unwind label %.loopexit.split-lp ; 2 uses

end_hunk_6
