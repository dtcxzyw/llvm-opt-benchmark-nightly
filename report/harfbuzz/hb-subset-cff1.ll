Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEaSERKS2_:bb.a
  store i32 %i.au, ptr %i.d, align 4, !tbaa !289
  br label %bb.h

bb.h:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5resetEv.exit, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit
  ret ptr %0
}

declare ptr @hb_blob_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !376    ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %i.a, -1                         ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !376
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !380  ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit.thread, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !382
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.l, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.k, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i ]
  %i.k = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -40
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !387
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.d, label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -28
  store i32 0, ptr %i.p, align 4, !tbaa !388
  %i.q = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !389
  tail call void @hb_free(ptr noundef %i.r) #10
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i

_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit: ; preds = %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i
  %.pre = load i32, ptr %0, align 8, !tbaa !376   ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !380
  %i.s = icmp slt i32 %.pre, 0
  br i1 %i.s, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit.thread, !prof !83

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit.thread: ; preds = %bb.c, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit
  %.pr12 = phi i32 [ %.pre, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit ], [ %i.d, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !380  ; 7 uses
  %.not19.i.i = icmp ugt i32 %i.u, %.pr12
  %i.v = lshr i32 %.pr12, 2
  %.not20.i.i = icmp ult i32 %i.u, %i.v
  %or.cond.i.i = or i1 %.not19.i.i, %.not20.i.i
  br i1 %or.cond.i.i, label %.thread.i.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread13

.thread.i.i:                                      ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit.thread
  %i.w = icmp ugt i32 %i.u, 107374182
  br i1 %i.w, label %.critedge.i.i, label %bb.e, !prof !86

.critedge.i.i:                                    ; preds = %.thread.i.i
  %i.x = xor i32 %.pr12, -1
  br label %.sink.split.i.i

bb.e:                                             ; preds = %.thread.i.i
  %i.y = tail call noundef ptr @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.u) ; 2 uses
  %.not21.i.i = icmp ne i32 %i.u, 0
  %.not22.i.i = icmp eq ptr %i.y, null
  %spec.select.i.i = and i1 %.not21.i.i, %.not22.i.i
  br i1 %spec.select.i.i, label %bb.f, label %bb.h, !prof !86

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %0, align 8, !tbaa !376    ; 3 uses
  %.not23.i.i = icmp ugt i32 %i.u, %i.z
  br i1 %.not23.i.i, label %bb.g, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = xor i32 %i.z, -1
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !382
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g, %.critedge.i.i
  %.sink.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.u, %bb.h ], [ %i.x, %.critedge.i.i ] ; 2 uses
  store i32 %.sink.i.i, ptr %0, align 8, !tbaa !376
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit: ; preds = %bb.f, %.sink.split.i.i
  %i.ac = phi i32 [ %i.z, %bb.f ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread13, !prof !94

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread13: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit.thread, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit
  store i32 0, ptr %i.e, align 4, !tbaa !380
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !382
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !380 ; 3 uses
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.ag to i64
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i ] ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !382
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !380
  %i.ak = trunc nuw i64 %indvars.iv.i to i32
  %i.al = add i32 %i.aj, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.am ; 5 uses
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %indvars.iv.i ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !386
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !386
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !388
  %i.at = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.as, i1 noundef zeroext true) ; 0 uses
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !387
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i, label %bb.j, !prof !86

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !388 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.aw to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 3 uses
  %i.ay = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4
  %i.az = and i64 %i.ay, 4294967280               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i, label %bb.k, !prof !86

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !389
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !389
  %i.be = load i32, ptr %i.ax, align 4, !tbaa !388
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr readonly align 1 %i.bb, i64 %i.az, i1 false), !alias.scope !763
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.bh = load i32, ptr %i.ax, align 4, !tbaa !388
  %i.bi = add i32 %i.bh, %i.aw
  store i32 %i.bi, ptr %i.ax, align 4, !tbaa !388
  br label %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i

_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i:          ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.2.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit, label %bb.i, !llvm.loop !16

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit: ; preds = %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i
  %.pre4 = load i32, ptr %i.e, align 4, !tbaa !380
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread13
  %i.bl = phi i32 [ %.pre4, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit ], [ 0, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread13 ]
  %i.bm = add i32 %i.bl, %i.ag
  store i32 %i.bm, ptr %i.e, align 4, !tbaa !380
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit.thread: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !380  ; 5 uses
  %.not19.i.i.not = icmp eq i32 %i.b, 0
  br i1 %.not19.i.i.not, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.a
  %i.c = icmp ugt i32 %i.b, 107374182
  br i1 %i.c, label %.sink.split.i.i, label %bb.b, !prof !86

bb.b:                                             ; preds = %.thread.i.i
  %i.d = tail call noundef ptr @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.b) ; 2 uses
  %.not22.i.i = icmp eq ptr %i.d, null
  br i1 %.not22.i.i, label %bb.c, label %bb.e, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !376    ; 3 uses
  %.not23.i.i = icmp ugt i32 %i.b, %i.e
  br i1 %.not23.i.i, label %bb.d, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit

bb.d:                                             ; preds = %bb.c
  %i.f = xor i32 %i.e, -1
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !382
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.thread.i.i, %bb.e, %bb.d
  %.sink.i.i = phi i32 [ %i.f, %bb.d ], [ %i.b, %bb.e ], [ -1, %.thread.i.i ] ; 2 uses
  store i32 %.sink.i.i, ptr %0, align 8, !tbaa !376
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit: ; preds = %bb.c, %.sink.split.i.i
  %i.h = phi i32 [ %.sink.i.i, %.sink.split.i.i ], [ %i.e, %bb.c ]
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.f, !prof !83

bb.f:                                             ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit
  %.pr = load i32, ptr %i.a, align 4, !tbaa !380  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382
  %.sroa.2.8.insert.ext.i.i = zext i32 %.pr to i64
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i ] ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !382
  %i.n = load i32, ptr %2, align 4, !tbaa !380
  %i.o = trunc nuw i64 %indvars.iv.i to i32
  %i.p = add i32 %i.n, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %indvars.iv.i ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !386
  store i32 %i.t, ptr %i.r, align 8, !tbaa !386
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = load i32, ptr %i.v, align 4, !tbaa !388
  %i.x = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i32 noundef %i.w, i1 noundef zeroext true) ; 0 uses
  %i.y = load i32, ptr %i.u, align 8, !tbaa !387
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i, label %bb.h, !prof !86

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !388 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.aa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.ac = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4
  %i.ad = and i64 %i.ac, 4294967280               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i, label %bb.i, !prof !86

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !389
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !388
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %i.af, i64 %i.ad, i1 false), !alias.scope !767
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.al = load i32, ptr %i.ab, align 4, !tbaa !388
  %i.am = add i32 %i.al, %i.aa
  store i32 %i.am, ptr %i.ab, align 4, !tbaa !388
  br label %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i

_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i:          ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.2.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit, label %bb.g, !llvm.loop !16

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit: ; preds = %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i, %bb.a, %bb.f
  %i.ap = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ %.pr, %_ZN3CFF15parsed_cs_str_tC2ERKS0_.exit.i ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aq = load i32, ptr %3, align 4, !tbaa !380
  %i.ar = add i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %3, align 4, !tbaa !380
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE11alloc_exactEj.exit, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE10encode_strERKNS_15parsed_cs_str_tEjR11hb_vector_tIhLb0EEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"struct.CFF::str_encoder_t", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %3, ptr %5, align 8, !tbaa !359
  %i.d = load i32, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3CFF13str_encoder_t5resetEv.exit, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.f = xor i32 %i.d, -1
  store i32 %i.f, ptr %3, align 8, !tbaa !300
  br label %_ZN3CFF13str_encoder_t5resetEv.exit

_ZN3CFF13str_encoder_t5resetEv.exit:              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !372
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !254
  %.not48 = trunc i32 %i.k to i1                  ; 2 uses
  br i1 %4, label %bb.c, label %_ZN3CFF13str_encoder_t9encode_opEj.exit

bb.c:                                             ; preds = %_ZN3CFF13str_encoder_t5resetEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 10
  %i.o = icmp eq i8 %i.n, 10
  %or.cond = select i1 %i.o, i1 %.not48, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN3CFF13str_encoder_t9encode_opEj.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !401  ; 4 uses
  %.not = icmp eq i32 %i.r, 65535
  br i1 %.not, label %_ZN3CFF13str_encoder_t9encode_opEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i32 %i.r, 255
  br i1 %i.s, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 12, ptr %i.c, align 1, !tbaa !97
  %i.t = load ptr, ptr %5, align 8, !tbaa !414, !nonnull !127, !align !323 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68   ; 3 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !300
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.g, label %bb.h, !prof !82

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96
  %i.aa = add nsw i32 %i.v, 1
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !68
  %i.ab = zext i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store i8 12, ptr %i.ac, align 1, !tbaa !97
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit.i:     ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = trunc i32 %i.r to i8                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ae, ptr %i.b, align 1, !tbaa !97
  %i.af = load ptr, ptr %5, align 8, !tbaa !414, !nonnull !127, !align !323 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !68 ; 3 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !300
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j, !prof !82

bb.i:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.am = add nsw i32 %i.ah, 1
  store i32 %i.am, ptr %i.ag, align 4, !tbaa !68
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  store i8 %i.ae, ptr %i.ao, align 1, !tbaa !97
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i

bb.j:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i
  %i.ap = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i:    ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

bb.k:                                             ; preds = %bb.e
  %i.aq = trunc nuw i32 %i.r to i8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aq, ptr %i.a, align 1, !tbaa !97
  %i.ar = load ptr, ptr %5, align 8, !tbaa !414, !nonnull !127, !align !323 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !68 ; 3 uses
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !300
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.l, label %bb.m, !prof !82

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !96
  %i.ay = add nsw i32 %i.at, 1
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !68
  %i.az = zext i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  store i8 %i.aq, ptr %i.ba, align 1, !tbaa !97
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i

bb.m:                                             ; preds = %bb.k
  %i.bb = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i:    ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

_ZN3CFF13str_encoder_t9encode_opEj.exit:          ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i, %_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i, %bb.d, %bb.c, %_ZN3CFF13str_encoder_t5resetEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !389 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !388 ; 2 uses
  %.not4981 = icmp eq i32 %i.bf, 0
  br i1 %.not4981, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1152921504606846975
  %i.bi = and i64 %i.bh, 1152921504606846975      ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %xtraiter = and i64 %i.bj, 3                    ; 3 uses
  %i.bk = icmp samesign ult i64 %i.bi, 3
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bj, 2305843009213693948
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04483.epil.init = phi ptr [ %i.bd, %.lr.ph.preheader ], [ %i.dp, %._crit_edge.loopexit.unr-lcssa ]
  %.04582.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod137)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.o, %.lr.ph.epil.preheader
  %.04483.epil = phi ptr [ %i.bs, %bb.o ], [ %.04483.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.04582.epil = phi i32 [ %.1.epil, %bb.o ], [ %.04582.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.o ], [ 0, %.lr.ph.epil.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.04483.epil, i64 12
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !131
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add i32 %.04582.epil, %i.bn             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04483.epil, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !130
  switch i32 %i.bq, label %bb.o [
    i32 10, label %bb.n
    i32 29, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph.epil, %.lr.ph.epil
  %i.br = add i32 %i.bo, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.epil
  %.1.epil = phi i32 [ %i.br, %bb.n ], [ %i.bo, %.lr.ph.epil ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04483.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !768

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %.045.lcssa = phi i32 [ 0, %_ZN3CFF13str_encoder_t9encode_opEj.exit ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %bb.o ]
  %i.bt = load i32, ptr %3, align 8, !tbaa !300   ; 4 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit.thread69, label %bb.p, !prof !86
end_hunk_0
