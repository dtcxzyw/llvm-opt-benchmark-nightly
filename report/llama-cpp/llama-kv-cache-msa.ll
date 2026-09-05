Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache-msa?download=true
begin_hunk_0_@_ZN26llama_kv_cache_msa_context5applyEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.m = and i1 %i.f, %i.l
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK26llama_kv_cache_msa_context10get_statusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZNK26llama_kv_cache_msa_context10get_ubatchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !119
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.c
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK26llama_kv_cache_msa_context8get_baseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK26llama_kv_cache_msa_context7get_idxEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 256, 0) i32 @_ZNK26llama_kv_cache_msa_context9get_n_posEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36072
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36068
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.022.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.speculated7, %.lr.ph ]
  %.sroa.speculated14 = tail call i32 @llvm.umax.i32(i32 %i.d, i32 256) ; 3 uses
  %i.h = add i32 %.022.lcssa, %.sroa.speculated14
  %i.i = sub i32 0, %.sroa.speculated14
  %i.j = and i32 %i.h, %i.i
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated14, i32 %i.j)
  ret i32 %.sroa.speculated

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.k = phi ptr [ %i.q, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.024 = phi i32 [ %i.p, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02223 = phi i32 [ %.sroa.speculated7, %.lr.ph ], [ -1, %bb.a ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(36104) %i.k, i32 noundef %.024)
  %.sroa.speculated7 = tail call i32 @llvm.smax.i32(i32 %.02223, i32 %i.o) ; 2 uses
  %i.p = add nuw nsw i32 %.024, 1                 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36068
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = icmp slt i32 %i.p, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !233
}

; Function Attrs: mustprogress uwtable
define void @_ZNK26llama_kv_cache_msa_context18set_input_cell_posEP11ggml_tensorPK12llama_ubatchi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 276, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !125
  %i.e = icmp eq i32 %i.d, 26
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 277, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 278, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !78
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %.fr46 = freeze i64 %i.k                        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66   ; 5 uses
  %i.n = srem i64 %i.i, %i.m
  %i.o = sdiv i64 %i.i, %i.m                      ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 284, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = icmp sgt i64 %i.m, 0
  br i1 %i.s, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = icmp sgt i64 %.fr46, 0
  br i1 %i.v, label %.lr.ph.us, label %.lr.ph39.split

.lr.ph.us:                                        ; preds = %.lr.ph39, %._crit_edge.us
  %.03337.us = phi i64 [ %4, %._crit_edge.us ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !127
  %i.x = mul nuw nsw i64 %.03337.us, %i.o
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !128
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49  ; 3 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 36088
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = tail call noundef nonnull align 8 dereferenceable(12440) ptr @_ZNK14llama_kv_cache9get_cellsEi(ptr noundef nonnull align 8 dereferenceable(352) %i.ad, i32 noundef %i.aa) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.ah = sext i32 %i.aa to i64                   ; 3 uses
  %i.ai = icmp ugt i32 %i.aa, 255
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = lshr i64 %i.ah, 6
  %invariant.gep.us = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.am = and i64 %i.ah, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = mul nuw nsw i64 %.03337.us, %.fr46
  %i.ap = getelementptr [4 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  br i1 %i.ai, label %.lr.ph.split.us.us, label %.lr.ph.split.us43

.lr.ph.split.us43:                                ; preds = %.lr.ph.us, %bb.k
  %.036.us41 = phi i64 [ %i.az, %bb.k ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.aq = and i64 %.036.us41, 4294967295          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !49 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.k, label %_ZNK14llama_kv_cells7seq_hasEji.exit.us

_ZNK14llama_kv_cells7seq_hasEji.exit.us:          ; preds = %.lr.ph.split.us43
  %gep.us = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep.us, i64 %i.aq
  %i.au = load i64, ptr %gep.us, align 8, !tbaa !66
  %i.av = and i64 %i.au, %i.an
  %.not.us = icmp eq i64 %i.av, 0
  br i1 %.not.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK14llama_kv_cells7seq_hasEji.exit.us
  %i.aw = sdiv i32 %i.as, %3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14llama_kv_cells7seq_hasEji.exit.us, %.lr.ph.split.us43
  %i.ax = phi i32 [ %i.aw, %bb.j ], [ 0, %_ZNK14llama_kv_cells7seq_hasEji.exit.us ], [ 0, %.lr.ph.split.us43 ]
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %.036.us41
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !49
  %i.az = add nuw nsw i64 %.036.us41, 1           ; 2 uses
  %exitcond50.not = icmp eq i64 %i.az, %.fr46
  br i1 %exitcond50.not, label %._crit_edge.us, label %.lr.ph.split.us43, !llvm.loop !234

._crit_edge.us:                                   ; preds = %bb.k, %bb.l
  %4 = add nuw nsw i64 %.03337.us, 1              ; 2 uses
  %exitcond52.not = icmp eq i64 %4, %i.m
  br i1 %exitcond52.not, label %._crit_edge40, label %.lr.ph.us, !llvm.loop !235

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.l
  %.036.us.us = phi i64 [ %i.bf, %bb.l ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ba = and i64 %.036.us.us, 4294967295
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !49
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.l, label %.split.us

bb.l:                                             ; preds = %.lr.ph.split.us.us
  %i.be = getelementptr [4 x i8], ptr %i.ap, i64 %.036.us.us
  store i32 0, ptr %i.be, align 4, !tbaa !49
  %i.bf = add nuw nsw i64 %.036.us.us, 1          ; 2 uses
  %exitcond51.not = icmp eq i64 %i.bf, %.fr46
  br i1 %exitcond51.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !234

._crit_edge40:                                    ; preds = %.lr.ph39.split, %._crit_edge.us, %bb.i
  ret void

.lr.ph39.split:                                   ; preds = %.lr.ph39, %.lr.ph39.split
  %.03337 = phi i64 [ %i.bp, %.lr.ph39.split ], [ 0, %.lr.ph39 ] ; 2 uses
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !127
  %i.bh = mul nuw nsw i64 %.03337, %i.o
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !128
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !49
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36088
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = tail call noundef nonnull align 8 dereferenceable(12440) ptr @_ZNK14llama_kv_cache9get_cellsEi(ptr noundef nonnull align 8 dereferenceable(352) %i.bn, i32 noundef %i.bk) ; 0 uses
  %i.bp = add nuw nsw i64 %.03337, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.m
  br i1 %exitcond.not, label %._crit_edge40, label %.lr.ph39.split, !llvm.loop !235

.split.us:                                        ; preds = %.lr.ph.split.us.us
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.ah, i64 noundef 256) #25
  unreachable
}

declare zeroext i1 @ggml_backend_buffer_is_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(12440) ptr @_ZNK14llama_kv_cache9get_cellsEi(ptr noundef nonnull align 8 dereferenceable(352), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK26llama_kv_cache_msa_context18set_input_pos_slotEP11ggml_tensorPK12llama_ubatch(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 305, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !125
  switch i32 %i.d, label %bb.d [
    i32 26, label %bb.e
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 306, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #25
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !78
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %.fr83 = freeze i64 %i.i                        ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66   ; 4 uses
  %i.l = srem i64 %i.g, %i.k
  %i.m = sdiv i64 %i.g, %i.k
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 312, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %i.k, 0
  br i1 %i.o, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp ugt i64 %.fr83, 2305843009213693951
  %.not.i.i.i.i = icmp eq i64 %.fr83, 0
  %i.s = shl i64 %.fr83, 2                        ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.u = icmp sgt i64 %.fr83, 0
  br i1 %i.r, label %.lr.ph81.split.us, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader: ; preds = %.lr.ph81
  %min.iters.check = icmp ult i64 %.fr83, 8
  %n.vec = and i64 %.fr83, 2305843009213693944    ; 3 uses
  %cmp.n = icmp eq i64 %.fr83, %n.vec
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph81.split.us:                                ; preds = %.lr.ph81
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !127
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128
  %i.x = load i32, ptr %i.w, align 4, !tbaa !49
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36088
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ab = tail call noundef nonnull align 8 dereferenceable(12440) ptr @_ZNK14llama_kv_cache9get_cellsEi(ptr noundef nonnull align 8 dereferenceable(352) %i.aa, i32 noundef %i.x) ; 0 uses
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

._crit_edge82:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.g
  ret void

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.05477 = phi i64 [ %i.ct, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader ] ; 3 uses
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !127
  %i.ad = mul nuw nsw i64 %.05477, %i.m
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49 ; 3 uses
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36088
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.ak = tail call noundef nonnull align 8 dereferenceable(12440) ptr @_ZNK14llama_kv_cache9get_cellsEi(ptr noundef nonnull align 8 dereferenceable(352) %i.aj, i32 noundef %i.ag) ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc60

.noexc60:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %i.s, i1 false), !tbaa !49
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.fr83
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.s
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc60, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ao, %.noexc60 ] ; 2 uses
  %.sroa.064.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.al, %.noexc60 ] ; 12 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ap, %.noexc60 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = and i64 %i.aw, 17179869180
  %.not84 = icmp eq i64 %i.ax, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ay = lshr exact i64 %i.aw, 2
  %i.az = sext i32 %i.ag to i64                   ; 3 uses
  %i.ba = icmp ugt i32 %i.ag, 255
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bc = lshr i64 %i.az, 6
  %i.bd = and i64 %i.az, 63
  %i.be = shl nuw i64 1, %i.bd
  %wide.trip.count92 = and i64 %i.ay, 4294967295  ; 2 uses
  br i1 %i.ba, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv89
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !49
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !236

._crit_edge:                                      ; preds = %bb.m, %bb.h, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.bi = load i32, ptr %1, align 8, !tbaa !125
  %i.bj = icmp eq i32 %i.bi, 26
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.bl = mul nuw nsw i64 %.05477, %.fr83
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl ; 4 uses
  br i1 %i.bj, label %bb.n, label %bb.q

bb.i:                                             ; preds = %.split.us
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i62 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit63, label %bb.s

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.lr.ph ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !49 ; 3 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !242
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bc
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !66
  %i.bv = and i64 %i.bu, %i.be
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = icmp slt i32 %i.bp, 0
  %or.cond = or i1 %i.bx, %i.bw
  br i1 %or.cond, label %bb.m, label %bb.k

.split.us:                                        ; preds = %.lr.ph.split.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.az, i64 noundef 256) #25
          to label %.noexc61 unwind label %bb.i
end_hunk_0
