Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_textedit_init_default:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.j, align 4, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i8 0, i64 112, i1 false), !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.m, align 8, !tbaa !68
  %i.n = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.n, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 32, ptr %i.p, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 32, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float 2.000000e+00, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.s, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !73
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_memset.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_textedit_select_all(ptr nofree noundef captures(none) initializes((172, 180)) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.a, align 4, !tbaa !627
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !626
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.c, ptr %i.d, align 8, !tbaa !628
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_textedit_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.b, null
  br i1 %.not9.i.i, label %nk_str_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nk_str_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i, label %nk_str_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.g(ptr %i.i, ptr noundef nonnull %i.b) #50, !inline_history !1161
  br label %nk_str_free.exit

nk_str_free.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.j, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_str_free.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_default(ptr nofree readnone captures(none) %0, i32 %1) #0 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_ascii(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 129
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_float(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add i32 %1, -48
  %or.cond = icmp ult i32 %i.a, 10
  %i.b = add i32 %1, -45
  %i.c = icmp ult i32 %i.b, 2
  %or.cond5.not = or i1 %or.cond, %i.c
  ret i1 %or.cond5.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_decimal(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add i32 %1, -48
  %or.cond = icmp ult i32 %i.a, 10
  %i.b = icmp eq i32 %1, 45
  %or.cond3.not = or i1 %i.b, %or.cond
  ret i1 %or.cond3.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_hex(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -48
  %or.cond = icmp ult i32 %i.a, 10
  %i.b = and i32 %1, -33
  %i.c = add i32 %i.b, -65
  %i.d = icmp ult i32 %i.c, 6
  %or.cond12.not = or i1 %or.cond, %i.d
  ret i1 %or.cond12.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_oct(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -8
  %or.cond = icmp eq i32 %i.a, 48
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_binary(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -2
  %or.cond = icmp eq i32 %i.a, 48
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_edit_focus(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.e = load i32, ptr %i.d, align 4, !tbaa !521
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 1, ptr %i.f, align 4, !tbaa !520
  store i32 %i.e, ptr %i.c, align 8, !tbaa !634
  %i.g = and i32 %1, 512
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i8 1, ptr %i.h, align 8, !tbaa !635
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_edit_unfocus(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #31 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 0, ptr %i.d, align 4, !tbaa !520
  store i32 0, ptr %i.c, align 8, !tbaa !634
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @nk_edit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  %i.d = select i1 %.not, ptr @nk_filter_default, ptr %5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !415  ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 460
  %i.h = load i32, ptr %i.g, align 4, !tbaa !521
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13008
  %i.j = lshr i32 %1, 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18384
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.k, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13180 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !627
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13184 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !628
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13176 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !629
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 13196
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !633
  %i.p = trunc i32 %i.j to i8
  %i.q = and i8 %i.p, 1
  %i.r = xor i8 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 13192
  store i8 %i.r, ptr %i.s, align 8, !tbaa !631
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 13188 ; 3 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.t, align 4, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13160
  store ptr %i.d, ptr %i.u, align 8, !tbaa !632
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13168 ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 468
  %i.x = load i32, ptr %i.w, align 4, !tbaa !520
  %.not81 = icmp eq i32 %i.x, 0
  br i1 %.not81, label %.loopexit46.i.i.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.z = load i32, ptr %i.y, align 8, !tbaa !634
  %i.aa = icmp eq i32 %i.h, %i.z
  br i1 %i.aa, label %bb.d, label %.loopexit46.i.i.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = and i32 %1, 16
  %.not82 = icmp eq i32 %i.ab, 0
  br i1 %.not82, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %3, align 4, !tbaa !55
  %i.ad = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %i.ac)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1162
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.af, %bb.f ], [ %i.ad, %bb.e ]
  store i32 %.sink, ptr %i.n, align 8, !tbaa !629
  %i.ag = and i32 %1, 32
  %.not83 = icmp eq i32 %i.ag, 0
  br i1 %.not83, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1162
  %i.aj = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.am = load <2 x i32>, ptr %i.al, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi <2 x i32> [ %i.ak, %bb.h ], [ %i.am, %bb.i ]
  store <2 x i32> %i.an, ptr %i.l, align 4, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !635
  store i8 %i.ap, ptr %i.t, align 4, !tbaa !630
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !55
  %i.as = uitofp <2 x i32> %i.ar to <2 x float>
  store <2 x float> %i.as, ptr %i.v, align 8, !tbaa !54
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.b, %bb.c, %bb.j
  %.sink91 = phi i8 [ 1, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 13193
  store i8 %.sink91, ptr %i.at, align 1, !tbaa !636
  %i.au = tail call i32 @llvm.smax.i32(i32 %4, i32 1) ; 2 uses
  %i.av = load i32, ptr %3, align 4, !tbaa !55
  %i.aw = add nsw i32 %i.au, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.aw)
  store i32 %., ptr %3, align 4, !tbaa !55
  %i.ax = zext nneg i32 %i.au to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, i8 0, i64 112, i1 false), !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 13088
  store i32 0, ptr %i.az, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 13096
  store ptr %2, ptr %i.ba, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 13104
  store i64 %i.ax, ptr %i.bb, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 13144
  store i64 %i.ax, ptr %i.bc, align 8, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 13152 ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !91
  %i.be = load i32, ptr %3, align 4, !tbaa !55    ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13120 ; 2 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !637
  %i.bh = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %i.be)
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !626
  %i.bi = tail call i32 @nk_edit_buffer(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) ; 2 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !637
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %3, align 4, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 13193
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !636
  %.not84 = icmp eq i8 %i.bm, 0
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit46.i.i.thread.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.bo = load <2 x i32>, ptr %i.n, align 8, !tbaa !55
  store <2 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !55
  %i.bp = load i32, ptr %i.m, align 8, !tbaa !628
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 484
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !1163
  %i.br = load i8, ptr %i.t, align 4, !tbaa !630
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !635
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.bu = load <2 x float>, ptr %i.v, align 8, !tbaa !54
  %i.bv = fptoui <2 x float> %i.bu to <2 x i32>
  store <2 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.loopexit46.i.i.thread.i.i, %bb.k, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.k ], [ %i.bi, %.loopexit46.i.i.thread.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @nk_edit_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 7 uses
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 0, label %bb.u
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = or i32 %1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.058 = phi i32 [ %i.g, %bb.e ], [ %1, %bb.d ]  ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not66 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 460 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !521  ; 3 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !521
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !520  ; 2 uses
  %.not67 = icmp eq i32 %i.q, 0
  br i1 %.not67, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.l, align 8, !tbaa !634
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %.058, 16
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !626
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.v, ptr %i.w, align 8, !tbaa !629
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = and i32 %.058, 32
  %.not69 = icmp eq i32 %i.x, 0
  br i1 %.not69, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !629  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !627
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !628
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = and i32 %.058, 64
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !75
  %.pre = load i32, ptr %i.p, align 4, !tbaa !520
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = phi i32 [ %.pre, %bb.m ], [ %i.q, %bb.l ]
  %i.af = trunc i32 %i.ae to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.sink = phi i8 [ %i.af, %bb.n ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !636
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !635
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !630
  %.not71 = icmp eq ptr %3, null
  %i.ak = select i1 %.not71, ptr @nk_filter_default, ptr %3
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 185
  %i.am = and i32 %.058, 1
  %.not72 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not72, i1 %.not66, i1 false
  %i.ao = select i1 %i.an, ptr %0, ptr null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4952
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.at = load <2 x float>, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x float>, ptr %i.au, align 8
  %i.aw = tail call fastcc i32 @nk_do_edit(ptr noundef %i.ap, ptr noundef %i.aq, <2 x float> %i.at, <2 x float> %i.av, i32 noundef %.058, ptr noundef nonnull %i.ak, ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef %i.ao, ptr noundef %i.as) ; 3 uses
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !460
  %i.ay = and i32 %i.ax, 16
  %.not73 = icmp eq i32 %i.ay, 0
  br i1 %.not73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !221
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !220
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i8, ptr %i.al, align 1, !tbaa !636 ; 2 uses
  %.not74 = icmp eq i8 %i.bc, 0                   ; 2 uses
  %.not75 = icmp eq i8 %.sink, %i.bc
  %or.cond = select i1 %.not74, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.p, align 4, !tbaa !520
  store i32 %i.n, ptr %i.l, align 8, !tbaa !634
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not76 = icmp ne i8 %.sink, 0
  %brmerge.not = and i1 %.not76, %.not74
  br i1 %brmerge.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.p, align 4, !tbaa !520
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 27) i32 @nk_do_edit(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly %7, ptr noundef %8, ptr noundef %9) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %10 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %11 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %12 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %13 = alloca %struct.nk_text, align 8           ; 7 uses
  %.sroa.0647.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 944
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 924 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !1166 ; 2 uses
  %.sroa.0647.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.m = load <2 x float>, ptr %i.j, align 8, !tbaa !54 ; 2 uses
  %i.n = fadd <2 x float> %2, %i.m
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd <2 x float> %i.n, %i.p              ; 15 uses
  %i.r = fmul float %i.l, 2.000000e+00
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float 2.000000e+00), <2 x float> %i.t)
  %i.v = fsub <2 x float> %3, %i.u                ; 4 uses
  %i.w = and i32 %4, 1024                         ; 2 uses
  %.not.not = icmp eq i32 %i.w, 0                 ; 3 uses
  %i.x = extractelement <2 x float> %i.v, i64 1
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 936
  %i.z = load float, ptr %i.y, align 8, !tbaa !1167
  %i.aa = extractelement <2 x float> %i.v, i64 0
  %i.ab = fsub float %i.aa, %i.z                  ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  %i.ad = select i1 %i.ac, float %i.ab, float 0.000000e+00
  %.sroa.26.8.vec.insert343 = insertelement <2 x float> %i.v, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 952
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !1168
  %i.ai = fadd float %i.af, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.26.01093 = phi <2 x float> [ %.sroa.26.8.vec.insert343, %bb.b ], [ %i.v, %bb.a ] ; 4 uses
  %i.aj = phi float [ %i.ai, %bb.b ], [ %i.x, %bb.a ] ; 23 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.01082.0.copyload = load <2 x float>, ptr %i.ak, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.26.8.vec.extract345 = extractelement <2 x float> %.sroa.26.01093, i64 0
  %.sroa.26.12.vec.extract362 = extractelement <2 x float> %.sroa.26.01093, i64 1 ; 3 uses
  %i.al = fadd <2 x float> %i.q, %.sroa.26.01093  ; 4 uses
  %i.am = fcmp olt <2 x float> %.sroa.01082.0.copyload, %i.q
  %i.an = fadd <2 x float> %.sroa.01082.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.al
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.an, <2 x float> %i.al
  %i.aq = select <2 x i1> %i.am, <2 x float> %i.q, <2 x float> %.sroa.01082.0.copyload ; 4 uses
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fcmp ogt <2 x float> %i.ar, zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x float> %i.ar, <2 x float> zeroinitializer ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 185 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !636 ; 5 uses
  %.not723 = icmp eq ptr %8, null
  br i1 %.not723, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !383
  %.not724 = icmp eq i32 %i.ax, 0
  br i1 %.not724, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 260
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !388, !range !88, !noundef !89
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 356
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !391 ; 2 uses
  %i.bd = fcmp ole float %.sroa.0647.0.vec.extract, %i.bc
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fcmp olt float %i.bc, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !392 ; 2 uses
  %i.bi = fcmp ugt float %.sroa.0647.4.vec.extract, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop1378 = fadd <2 x float> %2, %3
  %i.bj = extractelement <2 x float> %foldExtExtBinop1378, i64 1
  %i.bk = fcmp olt float %i.bh, %i.bj
  %i.bl = zext i1 %i.bk to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bm = phi i8 [ %i.bl, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  store i8 %i.bm, ptr %i.au, align 1, !tbaa !636
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.c
  %i.bn = phi i8 [ %i.bm, %bb.i ], [ %i.av, %bb.e ], [ %i.av, %bb.d ], [ %i.av, %bb.c ] ; 5 uses
  %.not725 = icmp eq i8 %i.av, 0
  %.not726 = icmp eq i8 %i.bn, 0                  ; 2 uses
  br i1 %.not725, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.lobit = lshr exact i32 %i.w, 10
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %i.br, align 4, !tbaa !627
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 0, ptr %i.bs, align 8, !tbaa !628
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !629
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 188
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !633
  %i.bv = trunc nuw nsw i32 %.lobit to i8
  %i.bw = xor i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !631
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.by, align 4, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 152
  store ptr %5, ptr %i.bz, align 8, !tbaa !632
  store i64 %i.bp, ptr %i.bo, align 8
  %i.ca = and i32 %4, 2
  %.not = icmp eq i32 %i.ca, 0                    ; 2 uses
  %i.cb = and i32 %4, 2048
  %.not727 = icmp eq i32 %i.cb, 0
  br i1 %.not727, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !626
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !629
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.o

.thread1095:                                      ; preds = %bb.k, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 0, ptr %i.ce, align 4, !tbaa !630
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %.thread1095
  %.1679 = phi i1 [ true, %bb.n ], [ true, %.thread1095 ], [ %.not, %bb.m ], [ %.not, %bb.l ]
  %.1 = phi ptr [ %8, %bb.n ], [ %8, %.thread1095 ], [ null, %bb.m ], [ %8, %bb.l ] ; 26 uses
  %.not729 = trunc i32 %4 to i1                   ; 2 uses
  br i1 %.not729, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = and i32 %4, 512
  %.not730 = icmp eq i32 %i.cf, 0
  br i1 %.not730, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi i8 [ 0, %bb.o ], [ 1, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 %.sink, ptr %i.cg, align 4, !tbaa !630
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.ch = zext i8 %i.bn to i32
  %.not731 = icmp eq i8 %i.bn, 0                  ; 2 uses
  %i.ci = select i1 %.not731, i32 2, i32 1
  %i.cj = sext i8 %i.av to i32
  %.not732 = icmp eq i32 %i.cj, %i.ch
  %i.ck = select i1 %.not731, i32 10, i32 5
  %spec.select = select i1 %.not732, i32 %i.ci, i32 %i.ck ; 6 uses
  %i.cl = icmp ne i8 %i.bn, 0
  %i.cm = icmp ne ptr %.1, null
  %or.cond5 = and i1 %i.cm, %i.cl
  br i1 %or.cond5, label %nk_input_is_mouse_hovering_rect.exit, label %bb.bt

nk_input_is_mouse_hovering_rect.exit:             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !387, !range !88, !noundef !89 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = zext nneg i8 %i.co to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.1, i64 260
end_hunk_0
begin_hunk_1_@nk_do_edit:bb.a
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !94
  br label %nk_str_get_const.exit1025

nk_str_get_const.exit1025:                        ; preds = %bb.gi, %bb.gj, %bb.gk
  %.0.i10191123 = phi i32 [ %i.acn, %bb.gk ], [ 0, %bb.gj ], [ 0, %bb.gi ]
  %.0.i1024 = phi ptr [ %i.acp, %bb.gk ], [ null, %bb.gj ], [ null, %bb.gi ]
  %i.acq = shufflevector <2 x float> %i.aq, <2 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.acq, ptr %i.ak, align 8, !tbaa !54
  %i.acr = load ptr, ptr %1, align 8, !tbaa !99
  %i.acs = call fastcc ptr @nk_buffer_alloc(ptr noundef %i.acr, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i1031 = icmp eq ptr %i.acs, null
  br i1 %.not.i.i1031, label %nk_push_scissor.exit1032, label %bb.gl

bb.gl:                                            ; preds = %nk_str_get_const.exit1025
  %i.act = load ptr, ptr %1, align 8, !tbaa !99   ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 64
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !69
  %i.acw = ptrtoint ptr %i.acs to i64
  %i.acx = ptrtoint ptr %i.acv to i64
  %i.acy = sub i64 %i.acw, %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.acy, ptr %i.acz, align 8, !tbaa !100
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acs, i64 24
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acs, i64 31
  %i.adc = ptrtoint ptr %i.adb to i64
  %i.add = and i64 %i.adc, -8
  %i.ade = ptrtoint ptr %i.ada to i64
  %i.adf = sub i64 %i.add, %i.ade
  store i32 1, ptr %i.acs, align 8, !tbaa !102
  %i.adg = getelementptr inbounds nuw i8, ptr %i.act, i64 88
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !77
  %i.adi = add i64 %i.adh, %i.adf                 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store i64 %i.adi, ptr %i.adj, align 8, !tbaa !103
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.adi, ptr %i.adk, align 8, !tbaa !104
  %i.adl = shufflevector <2 x float> %i.aq, <2 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.adm = fptosi <4 x float> %i.adl to <4 x i16>
  %i.adn = fptoui <4 x float> %i.adl to <4 x i16>
  %i.ado = shufflevector <4 x i16> %i.adm, <4 x i16> %i.adn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store <4 x i16> %i.ado, ptr %i.adp, align 8, !tbaa !106
  br label %nk_push_scissor.exit1032

nk_push_scissor.exit1032:                         ; preds = %nk_str_get_const.exit1025, %bb.gl
  %i.adq = load i32, ptr %0, align 4, !tbaa !55   ; 2 uses
  %i.adr = and i32 %i.adq, 32
  %.not750 = icmp eq i32 %i.adr, 0                ; 2 uses
  %i.ads = and i32 %i.adq, 16
  %.not751 = icmp eq i32 %i.ads, 0                ; 2 uses
  %.1348 = select i1 %.not751, i64 896, i64 900
  %.1349 = select i1 %.not751, ptr %7, ptr %i.ir
  %.sink1346 = select i1 %.not750, i64 %.1348, i64 904
  %.0674 = select i1 %.not750, ptr %.1349, ptr %i.ip ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %7, i64 %.sink1346
  %.sroa.018.0 = load i32, ptr %i.adt, align 4    ; 5 uses
  %i.adu = load i32, ptr %.0674, align 8, !tbaa !413
  %i.adv = icmp eq i32 %i.adu, 1
  br i1 %i.adv, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %nk_push_scissor.exit1032
  %i.adw = getelementptr inbounds nuw i8, ptr %.0674, i64 8
  %.sroa.022.0.copyload = load i32, ptr %i.adw, align 8
  br label %bb.gn

bb.gn:                                            ; preds = %nk_push_scissor.exit1032, %bb.gm
  %.sroa.022.0 = phi i32 [ %.sroa.022.0.copyload, %bb.gm ], [ 0, %nk_push_scissor.exit1032 ] ; 5 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %7, i64 956
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !638 ; 7 uses
  %.sroa.5.0.extract.shift.i1033 = lshr i32 %.sroa.022.0, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i1034 = lshr i32 %.sroa.022.0, 16 ; 2 uses
  %i.adz = fcmp oeq float %i.ady, 1.000000e+00    ; 2 uses
  br i1 %i.adz, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %.sroa.7.0.extract.trunc.i1047 = trunc i32 %.sroa.7.0.extract.shift.i1034 to i8
  %.sroa.5.0.extract.trunc.i1048 = trunc i32 %.sroa.5.0.extract.shift.i1033 to i8
  %.sroa.0.0.extract.trunc.i1049 = trunc i32 %.sroa.022.0 to i8
  br label %nk_rgb_factor.exit1050

bb.gp:                                            ; preds = %bb.gn
  %i.aea = and i32 %.sroa.022.0, 255
  %i.aeb = uitofp nneg i32 %i.aea to float
  %i.aec = fmul float %i.ady, %i.aeb
  %i.aed = fptoui float %i.aec to i8
  %i.aee = and i32 %.sroa.5.0.extract.shift.i1033, 255
  %i.aef = uitofp nneg i32 %i.aee to float
  %i.aeg = fmul float %i.ady, %i.aef
  %i.aeh = fptoui float %i.aeg to i8
  %i.aei = and i32 %.sroa.7.0.extract.shift.i1034, 255
  %i.aej = uitofp nneg i32 %i.aei to float
  %i.aek = fmul float %i.ady, %i.aej
  %i.ael = fptoui float %i.aek to i8
  br label %nk_rgb_factor.exit1050

nk_rgb_factor.exit1050:                           ; preds = %bb.go, %bb.gp
  %.sroa.3.0.i1035 = phi i8 [ %.sroa.5.0.extract.trunc.i1048, %bb.go ], [ %i.aeh, %bb.gp ]
  %.sroa.011.0.i1036 = phi i8 [ %.sroa.0.0.extract.trunc.i1049, %bb.go ], [ %i.aed, %bb.gp ]
  %.sroa.512.0.i1037 = phi i8 [ %.sroa.7.0.extract.trunc.i1047, %bb.go ], [ %i.ael, %bb.gp ]
  %.sroa.9.0.extract.shift.i1038 = and i32 %.sroa.022.0, -16777216
  %.sroa.512.0.insert.ext.i1039 = zext i8 %.sroa.512.0.i1037 to i32
  %.sroa.512.0.insert.shift.i1040 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i1039, 16
  %.sroa.512.0.insert.insert.i1041 = or disjoint i32 %.sroa.512.0.insert.shift.i1040, %.sroa.9.0.extract.shift.i1038
  %.sroa.3.0.insert.ext.i1042 = zext i8 %.sroa.3.0.i1035 to i32
  %.sroa.3.0.insert.shift.i1043 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i1042, 8
  %.sroa.3.0.insert.insert.i1044 = or disjoint i32 %.sroa.512.0.insert.insert.i1041, %.sroa.3.0.insert.shift.i1043
  %.sroa.011.0.insert.ext.i1045 = zext i8 %.sroa.011.0.i1036 to i32
  %.sroa.011.0.insert.insert.i1046 = or disjoint i32 %.sroa.3.0.insert.insert.i1044, %.sroa.011.0.insert.ext.i1045
  %.sroa.5.0.extract.shift.i1051 = lshr i32 %.sroa.018.0, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i1052 = lshr i32 %.sroa.018.0, 16 ; 2 uses
  br i1 %i.adz, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %nk_rgb_factor.exit1050
  %.sroa.7.0.extract.trunc.i1065 = trunc i32 %.sroa.7.0.extract.shift.i1052 to i8
  %.sroa.5.0.extract.trunc.i1066 = trunc i32 %.sroa.5.0.extract.shift.i1051 to i8
  %.sroa.0.0.extract.trunc.i1067 = trunc i32 %.sroa.018.0 to i8
  br label %nk_rgb_factor.exit1068

bb.gr:                                            ; preds = %nk_rgb_factor.exit1050
  %i.aem = and i32 %.sroa.018.0, 255
  %i.aen = uitofp nneg i32 %i.aem to float
  %i.aeo = fmul float %i.ady, %i.aen
  %i.aep = fptoui float %i.aeo to i8
  %i.aeq = and i32 %.sroa.5.0.extract.shift.i1051, 255
  %i.aer = uitofp nneg i32 %i.aeq to float
  %i.aes = fmul float %i.ady, %i.aer
  %i.aet = fptoui float %i.aes to i8
  %i.aeu = and i32 %.sroa.7.0.extract.shift.i1052, 255
  %i.aev = uitofp nneg i32 %i.aeu to float
  %i.aew = fmul float %i.ady, %i.aev
  %i.aex = fptoui float %i.aew to i8
  br label %nk_rgb_factor.exit1068

nk_rgb_factor.exit1068:                           ; preds = %bb.gq, %bb.gr
  %.sroa.3.0.i1053 = phi i8 [ %.sroa.5.0.extract.trunc.i1066, %bb.gq ], [ %i.aet, %bb.gr ]
  %.sroa.011.0.i1054 = phi i8 [ %.sroa.0.0.extract.trunc.i1067, %bb.gq ], [ %i.aep, %bb.gr ]
  %.sroa.512.0.i1055 = phi i8 [ %.sroa.7.0.extract.trunc.i1065, %bb.gq ], [ %i.aex, %bb.gr ]
  %.sroa.9.0.extract.shift.i1056 = and i32 %.sroa.018.0, -16777216
  %.sroa.512.0.insert.ext.i1057 = zext i8 %.sroa.512.0.i1055 to i32
  %.sroa.512.0.insert.shift.i1058 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i1057, 16
  %.sroa.512.0.insert.insert.i1059 = or disjoint i32 %.sroa.512.0.insert.shift.i1058, %.sroa.9.0.extract.shift.i1056
  %.sroa.3.0.insert.ext.i1060 = zext i8 %.sroa.3.0.i1053 to i32
  %.sroa.3.0.insert.shift.i1061 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i1060, 8
  %.sroa.3.0.insert.insert.i1062 = or disjoint i32 %.sroa.512.0.insert.insert.i1059, %.sroa.3.0.insert.shift.i1061
  %.sroa.011.0.insert.ext.i1063 = zext i8 %.sroa.011.0.i1054 to i32
  %.sroa.011.0.insert.insert.i1064 = or disjoint i32 %.sroa.3.0.insert.insert.i1062, %.sroa.011.0.insert.ext.i1063
  %i.aey = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.aez = load <2 x float>, ptr %i.aey, align 8, !tbaa !54
  %i.afa = fsub <2 x float> %i.q, %i.aez          ; 2 uses
  %i.afb = extractelement <2 x float> %i.afa, i64 0
  %i.afc = extractelement <2 x float> %i.afa, i64 1
  call fastcc void @nk_edit_draw_text(ptr noundef %1, ptr noundef %7, float noundef %i.afb, float noundef %i.afc, float noundef 0.000000e+00, ptr noundef %.0.i1024, i32 noundef %.0.i10191123, float noundef %i.aj, ptr noundef %9, i32 %.sroa.011.0.insert.insert.i1046, i32 %.sroa.011.0.insert.insert.i1064, i1 noundef zeroext false)
  br label %bb.gs

bb.gs:                                            ; preds = %.thread1315, %nk_utf_decode.exit1016, %bb.gh, %nk_rgb_factor.exit1068
  %i.afd = shufflevector <2 x float> %.sroa.01082.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.afd, ptr %i.ak, align 8, !tbaa !54
  %i.afe = load ptr, ptr %1, align 8, !tbaa !99
  %i.aff = call fastcc ptr @nk_buffer_alloc(ptr noundef %i.afe, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i1074 = icmp eq ptr %i.aff, null
  br i1 %.not.i.i1074, label %nk_push_scissor.exit1075, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.afg = load ptr, ptr %1, align 8, !tbaa !99   ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 64
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !69
  %i.afj = ptrtoint ptr %i.aff to i64
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = sub i64 %i.afj, %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.afl, ptr %i.afm, align 8, !tbaa !100
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aff, i64 31
  %i.afp = ptrtoint ptr %i.afo to i64
  %i.afq = and i64 %i.afp, -8
  %i.afr = ptrtoint ptr %i.afn to i64
  %i.afs = sub i64 %i.afq, %i.afr
  store i32 1, ptr %i.aff, align 8, !tbaa !102
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afg, i64 88
  %i.afu = load i64, ptr %i.aft, align 8, !tbaa !77
  %i.afv = add i64 %i.afu, %i.afs                 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  store i64 %i.afv, ptr %i.afw, align 8, !tbaa !103
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.afv, ptr %i.afx, align 8, !tbaa !104
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  %i.afz = fcmp ogt <2 x float> %.sroa.8.0.copyload, zeroinitializer
  %i.aga = select <2 x i1> %i.afz, <2 x float> %.sroa.8.0.copyload, <2 x float> zeroinitializer
  %i.agb = shufflevector <2 x float> %.sroa.01082.0.copyload, <2 x float> %i.aga, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.agc = fptosi <4 x float> %i.agb to <4 x i16>
  %i.agd = fptoui <4 x float> %i.agb to <4 x i16>
  %i.age = shufflevector <4 x i16> %i.agc, <4 x i16> %i.agd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %i.age, ptr %i.afy, align 8, !tbaa !106
  br label %nk_push_scissor.exit1075

nk_push_scissor.exit1075:                         ; preds = %bb.gs, %bb.gt
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @nk_edit_string_zero_terminated(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i12 = icmp eq i8 %i.b, 0
  br i1 %.not4.i12, label %nk_strlen.exit, label %.lr.ph.i.preheader15

.lr.ph.i.preheader15:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.c = trunc i64 %strlen to i32
  %i.d = add i32 %i.c, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader15, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.preheader15 ]
  store i32 %.0.lcssa.i, ptr %i.a, align 4, !tbaa !55
  %i.e = call i32 @nk_edit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %3, ptr noundef %4)
  %i.f = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !55
  %i.h = add nsw i32 %i.f, -1
  %i.i = call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h)
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_property_int(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %3, align 4, !tbaa !55
  store i32 0, ptr %7, align 8, !tbaa !55
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.f, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %4, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %5, ptr %.sroa.723.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 0)
  %i.g = load i32, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !56 ; 2 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !55
  %i.i = icmp ne i32 %i.g, %i.h
  store i32 %i.g, ptr %3, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_property(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, float noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_text, align 8            ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 22 uses
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 0, ptr %i.e, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 0, ptr %i.g, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 0, ptr %i.h, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !415  ; 35 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.ci, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !416  ; 2 uses
  %.not117 = icmp eq ptr %i.l, null
  br i1 %.not117, label %bb.ci, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0) ; 3 uses
  %.not118 = icmp eq i32 %i.n, 0
  br i1 %.not118, label %bb.ci, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %1, align 1, !tbaa !56
  switch i8 %i.o, label %.lr.ph.i123.preheader [
    i8 35, label %.lr.ph.i.preheader
    i8 0, label %nk_strlen.exit127
  ]

.lr.ph.i.preheader:                               ; preds = %bb.d
  %scevgep = getelementptr i8, ptr %1, i64 1      ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.p = trunc i64 %strlen to i32
  %i.q = add i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 272 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !519  ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !519
  %i.u = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %i.q, i32 noundef %i.s)
  br label %bb.e

.lr.ph.i123.preheader:                            ; preds = %bb.d
  %scevgep156 = getelementptr i8, ptr %1, i64 1
  %strlen157 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep156)
  %i.v = trunc i64 %strlen157 to i32
  %i.w = add i32 %i.v, 1
  br label %nk_strlen.exit127

nk_strlen.exit127:                                ; preds = %.lr.ph.i123.preheader, %bb.d
  %.07.i124.lcssa = phi i32 [ 0, %bb.d ], [ %i.w, %.lr.ph.i123.preheader ]
  %i.x = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %.07.i124.lcssa, i32 noundef 42)
  br label %bb.e

bb.e:                                             ; preds = %nk_strlen.exit127, %.lr.ph.i.preheader
  %.0111 = phi ptr [ %scevgep, %.lr.ph.i.preheader ], [ %1, %nk_strlen.exit127 ] ; 5 uses
  %.0109 = phi i32 [ %i.u, %.lr.ph.i.preheader ], [ %i.x, %nk_strlen.exit127 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 180 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 284 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1180
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1181
  %i.ae = icmp eq i32 %.0109, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 292
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 356
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1182
  tail call fastcc void @nk_property_save(ptr noundef %2, ptr noundef %i.af, i32 noundef %i.ah)
  store i32 0, ptr %i.z, align 4, !tbaa !1180
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !518
  %.not119 = icmp eq i32 %i.ai, 0
  br i1 %.not119, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1183
  %i.al = icmp eq i32 %.0109, %i.ak
  br i1 %i.al, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 188
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 280 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !55
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %i.as = phi i32 [ %.pre, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.at = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  %.0110 = phi ptr [ %i.ap, %bb.j ], [ %i.d, %bb.i ], [ %i.d, %bb.h ] ; 13 uses
  %.0108 = phi ptr [ %i.am, %bb.j ], [ %i.c, %bb.i ], [ %i.c, %bb.h ] ; 7 uses
  %.0107 = phi ptr [ %i.an, %bb.j ], [ %i.e, %bb.i ], [ %i.e, %bb.h ] ; 7 uses
  %.0106 = phi ptr [ %i.ao, %bb.j ], [ %i.f, %bb.i ], [ %i.f, %bb.h ] ; 4 uses
  %.0105 = phi ptr [ %i.aq, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.h ] ; 3 uses
end_hunk_1
