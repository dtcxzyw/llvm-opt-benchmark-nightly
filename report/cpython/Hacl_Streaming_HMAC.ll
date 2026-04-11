inline.NumInlined: 201
inline.NumDeleted: 24
begin_hunk_0_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
  br label %block_len.exit231

block_len.exit231:                                ; preds = %block_len.exit219, %block_len.exit219, %block_len.exit219, %block_len.exit219, %bb.c, %block_len.exit219.thread435, %bb.g, %block_len.exit219.thread432, %bb.f, %block_len.exit219.thread429, %bb.e, %bb.d, %block_len.exit219.thread, %alg_of_impl.exit228.thread
  %.0191422440 = phi i32 [ %.0191, %alg_of_impl.exit228.thread ], [ %.0191, %bb.f ], [ %.0191, %bb.e ], [ %.0191, %bb.g ], [ %.0191, %block_len.exit219 ], [ %.0191, %block_len.exit219 ], [ 128, %block_len.exit219.thread ], [ %.0191, %block_len.exit219 ], [ 144, %bb.c ], [ %.0191, %bb.d ], [ 136, %block_len.exit219.thread429 ], [ 104, %block_len.exit219.thread432 ], [ 72, %block_len.exit219.thread435 ], [ %.0191, %block_len.exit219 ] ; 3 uses
  %.0.i229 = phi i32 [ 64, %alg_of_impl.exit228.thread ], [ 104, %bb.f ], [ 136, %bb.e ], [ 72, %bb.g ], [ 128, %block_len.exit219 ], [ 128, %block_len.exit219 ], [ 128, %block_len.exit219.thread ], [ 128, %block_len.exit219 ], [ 144, %bb.c ], [ 144, %bb.d ], [ 136, %block_len.exit219.thread429 ], [ 104, %block_len.exit219.thread432 ], [ 72, %block_len.exit219.thread435 ], [ 128, %block_len.exit219 ]
  %i.m = sub nsw i32 %.0.i229, %.0191422440
  %.not = icmp ugt i32 %2, %i.m
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
  ]

block_len.exit309.thread649:                      ; preds = %bb.r
  %.sroa.454.0.copyload651 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread:                         ; preds = %bb.r
  %.sroa.454.0.copyload642 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread645:                      ; preds = %bb.r
  %.sroa.454.0.copyload647 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
end_hunk_1
begin_hunk_2_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
  br label %block_len.exit309

block_len.exit309.thread653:                      ; preds = %bb.r
  %.sroa.454.0.copyload655 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread657:                      ; preds = %bb.r
  %.sroa.454.0.copyload659 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread661:                      ; preds = %bb.r
  %.sroa.454.0.copyload663 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309:                                ; preds = %bb.r, %bb.r, %alg_of_impl.exit306.thread
  %.0.i307 = phi i32 [ 64, %alg_of_impl.exit306.thread ], [ 128, %bb.r ], [ 128, %bb.r ] ; 9 uses
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
  br label %block_len.exit315

block_len.exit315:                                ; preds = %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309.thread661, %bb.v, %block_len.exit309.thread657, %bb.u, %block_len.exit309.thread653, %bb.t, %bb.s, %block_len.exit309.thread649, %block_len.exit309.thread645, %block_len.exit309.thread, %alg_of_impl.exit312.thread
  %i.bm = phi i32 [ %.0.i307, %alg_of_impl.exit312.thread ], [ %.0.i307, %bb.u ], [ %.0.i307, %bb.t ], [ 144, %block_len.exit309.thread649 ], [ %.0.i307, %block_len.exit309 ], [ 128, %block_len.exit309.thread645 ], [ 128, %block_len.exit309.thread ], [ %.0.i307, %block_len.exit309 ], [ %.0.i307, %bb.v ], [ %.0.i307, %bb.s ], [ 136, %block_len.exit309.thread653 ], [ 104, %block_len.exit309.thread657 ], [ 72, %block_len.exit309.thread661 ], [ %.0.i307, %block_len.exit309 ], [ %.0.i307, %block_len.exit309 ]
  %.sroa.454.0.copyload644667 = phi ptr [ %.sroa.454.0.copyload, %alg_of_impl.exit312.thread ], [ %.sroa.454.0.copyload, %bb.u ], [ %.sroa.454.0.copyload, %bb.t ], [ %.sroa.454.0.copyload651, %block_len.exit309.thread649 ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload647, %block_len.exit309.thread645 ], [ %.sroa.454.0.copyload642, %block_len.exit309.thread ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload, %bb.v ], [ %.sroa.454.0.copyload, %bb.s ], [ %.sroa.454.0.copyload655, %block_len.exit309.thread653 ], [ %.sroa.454.0.copyload659, %block_len.exit309.thread657 ], [ %.sroa.454.0.copyload663, %block_len.exit309.thread661 ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload, %block_len.exit309 ] ; 17 uses
  %i.bn = phi i64 [ 64, %alg_of_impl.exit312.thread ], [ 104, %bb.u ], [ 136, %bb.t ], [ 144, %block_len.exit309.thread649 ], [ 128, %block_len.exit309 ], [ 128, %block_len.exit309.thread645 ], [ 128, %block_len.exit309.thread ], [ 128, %block_len.exit309 ], [ 72, %bb.v ], [ 144, %bb.s ], [ 136, %block_len.exit309.thread653 ], [ 104, %block_len.exit309.thread657 ], [ 72, %block_len.exit309.thread661 ], [ 128, %block_len.exit309 ], [ 128, %block_len.exit309 ]
  %5 = sub nsw i32 %i.bm, %.0191422440            ; 3 uses
  %6 = zext i32 %5 to i64                         ; 15 uses
  %7 = getelementptr i8, ptr %1, i64 %6           ; 2 uses
  %i.bo = urem i64 %.sroa.4159.0.copyload, %i.bn
  %i.bp = icmp eq i64 %i.bo, 0
  %or.cond10 = and i1 %i.i, %i.bp
  br i1 %or.cond10, label %bb.w, label %switch.lookup1038
end_hunk_3
begin_hunk_4_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a

block_len.exit321.thread741:                      ; preds = %bb.w
  %i.bq = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %1, i64 %6, i1 false)
  %i.br = add i64 %.sroa.4159.0.copyload, %6      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.br, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_4
begin_hunk_5_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a

block_len.exit321.thread:                         ; preds = %bb.w
  %i.bt = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %1, i64 %6, i1 false)
  %i.bu = add i64 %.sroa.4159.0.copyload, %6      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.bu, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_5
begin_hunk_6_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a

block_len.exit321.thread733:                      ; preds = %bb.w
  %i.bw = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %1, i64 %6, i1 false)
  %i.bx = add i64 %.sroa.4159.0.copyload, %6      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.bx, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_6
begin_hunk_7_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a

block_len.exit321.thread749:                      ; preds = %bb.w
  %i.bz = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %1, i64 %6, i1 false)
  %i.ca = add i64 %.sroa.4159.0.copyload, %6      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ca, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_7
begin_hunk_8_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a

block_len.exit321.thread757:                      ; preds = %bb.w
  %i.cc = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %1, i64 %6, i1 false)
  %i.cd = add i64 %.sroa.4159.0.copyload, %6      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cd, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_8
begin_hunk_9_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a

block_len.exit321.thread765:                      ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %1, i64 %6, i1 false)
  %i.cg = add i64 %.sroa.4159.0.copyload, %6      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cg, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_9
begin_hunk_10_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
block_len.exit321:                                ; preds = %bb.w, %bb.w, %alg_of_impl.exit318.thread, %switch.lookup1038
  %.0195 = phi i64 [ %i.cj, %switch.lookup1038 ], [ 64, %alg_of_impl.exit318.thread ], [ 128, %bb.w ], [ 128, %bb.w ]
  %i.ck = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 %.0195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %1, i64 %6, i1 false)
  %i.cl = add i64 %.sroa.4159.0.copyload, %6      ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cl, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
end_hunk_10
begin_hunk_11_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
  br label %switch.lookup1044

switch.lookup1044:                                ; preds = %block_len.exit351, %switch.lookup1041
  %i.df = sub i32 %2, %5                          ; 11 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = zext nneg i8 %.val.i to i64
  %switch.gep1045 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.init0, i64 %i.dh
  %switch.load1046 = load i32, ptr %switch.gep1045, align 4
  %i.di = urem i32 %i.df, %switch.load1046
  %i.dj = icmp ne i32 %i.di, 0
  %.not200 = icmp eq i32 %2, %5
  %or.cond201 = select i1 %i.dj, i1 true, i1 %.not200
  br i1 %or.cond201, label %switch.lookup1047, label %bb.af

end_hunk_11
begin_hunk_12_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
  %i.eb = mul i32 %.0.i379, %i.ea                 ; 3 uses
  %i.ec = sub i32 %i.df, %i.eb
  %i.ed = zext i32 %i.eb to i64
  %i.ee = getelementptr i8, ptr %7, i64 %i.ed
  %i.ef = extractelement <2 x ptr> %i.co, i64 0   ; 2 uses
  %.sroa.439.0.copyload.val = load i8, ptr %i.ef, align 8, !tbaa !18
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.sroa.439.0.copyload.val202 = load ptr, ptr %i.eg, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.439.0.copyload.val, ptr %.sroa.439.0.copyload.val202, i64 noundef %i.cn, ptr noundef %7, i32 noundef %i.eb)
  %i.eh = zext i32 %i.ec to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload644667, ptr align 1 %i.ee, i64 %i.eh, i1 false)
  %i.ei = add i64 %i.cn, %i.dg
end_hunk_12
