Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4941
inline.NumDeleted: 2052
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK14llama_kv_cache18build_input_k_idxsEP12ggml_contextRK12llama_ubatch:bb.a
  tail call void @ggml_set_input(ptr noundef %i.d)
  ret ptr %i.d
}

declare ptr @ggml_new_tensor_1d(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @ggml_set_input(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK14llama_kv_cache18build_input_v_idxsEP12ggml_contextRK12llama_ubatch(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !312  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !96, !range !200, !noundef !118
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.h = tail call noundef i32 @_ZNK13llama_hparams16n_embd_v_gqa_maxEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.g)
  %i.i = mul i32 %i.h, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink7 = phi i32 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.j = zext i32 %.sink7 to i64
  %i.k = tail call ptr @ggml_new_tensor_1d(ptr noundef %1, i32 noundef 27, i64 noundef %i.j) ; 2 uses
  tail call void @ggml_set_input(ptr noundef %i.k)
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK14llama_kv_cache17build_input_k_rotEP12ggml_context(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !100, !range !200, !noundef !118
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 64, %.preheader ] ; 2 uses
  %i.f = shl nsw i32 %.0, 1                       ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = and i32 %i.g, %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c, !llvm.loop !31

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %.0 to i64                      ; 2 uses
  %i.k = tail call ptr @ggml_new_tensor_2d(ptr noundef %1, i32 noundef 0, i64 noundef %i.j, i64 noundef %i.j) ; 3 uses
  tail call void @ggml_set_input(ptr noundef %i.k)
  %i.l = tail call ptr @ggml_set_name(ptr noundef %i.k, ptr noundef nonnull @.str.53) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.09 = phi ptr [ %i.k, %bb.c ], [ null, %bb.a ]
  ret ptr %.09
}

declare ptr @ggml_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK14llama_kv_cache17build_input_v_rotEP12ggml_context(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.b = load i8, ptr %i.a, align 1, !tbaa !101, !range !200, !noundef !118
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @ggml_new_tensor_2d(ptr noundef %1, i32 noundef 0, i64 noundef 64, i64 noundef 64) ; 3 uses
  tail call void @ggml_set_input(ptr noundef %i.d)
  %i.e = tail call ptr @ggml_set_name(ptr noundef %i.d, ptr noundef nonnull @.str.54) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache16set_input_k_idxsEP11ggml_tensorPK12llama_ubatchRKNS_9slot_infoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !312
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !353  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !343  ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq i64 %i.k, %i.s
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 58, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.93) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq ptr %i.g, %i.f
  br i1 %i.u, label %bb.d, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 59, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #29
  unreachable

_ZNK14llama_kv_cache9slot_info4sizeEv.exit:       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = mul i64 %i.ab, %i.k
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1478, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #29
  unreachable

bb.f:                                             ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %i.ag = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.af)
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1480, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !125 ; 2 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !126 ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.ak
  br i1 %.not, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !120
  %i.at = load i32, ptr %i.as, align 4, !tbaa !110
  %i.au = zext i32 %i.at to i64
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !123
  %i.aw = getelementptr inbounds nuw [12440 x i8], ptr %i.av, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !353 ; 2 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !343 ; 5 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 24
  %i.bm = icmp eq i64 %i.bl, %i.ao
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %i.bm, label %.lr.ph38.split, label %._crit_edge

.lr.ph38.split:                                   ; preds = %.lr.ph38
  %i.bo = icmp eq ptr %i.bh, %i.bg
  br i1 %i.bo, label %bb.i, label %.lr.ph38.split.split.split

.lr.ph38.split.split.split:                       ; preds = %.lr.ph38.split
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !152 ; 2 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !120 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2                 ; 6 uses
  %.not40 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not40, label %._crit_edge39, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph38.split.split.split
  %i.bv = tail call i64 @llvm.usub.sat.i64(i64 %i.bu, i64 1) ; 2 uses
  %min.iters.check = icmp ult i64 %i.bu, 8
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = icmp eq i64 %i.bw, 4294967295
  %i.by = icmp ugt i64 %i.bv, 4294967295
  %i.bz = or i1 %i.bx, %i.by
  %n.vec = and i64 %i.bu, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit25.us..split.us_crit_edge.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit25.us..split.us_crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv43
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !110
  %i.cc = mul i32 %i.cb, %i.bf
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %indvars.iv43
  %i.cf = mul i64 %i.bu, %indvars.iv43
  %i.cg = getelementptr [8 x i8], ptr %i.ai, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !120 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bz
  br i1 %brmerge, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %wide.load = load <2 x i32>, ptr %i.ci, align 4, !tbaa !110
  %wide.load51 = load <2 x i32>, ptr %i.cj, align 4, !tbaa !110
  %i.ck = zext <2 x i32> %wide.load to <2 x i64>
  %i.cl = zext <2 x i32> %wide.load51 to <2 x i64>
  %i.cm = add nuw nsw <2 x i64> %broadcast.splat, %i.ck
  %i.cn = add nuw nsw <2 x i64> %broadcast.splat, %i.cl
  %i.co = getelementptr [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store <2 x i64> %i.cm, ptr %i.co, align 8, !tbaa !180
  store <2 x i64> %i.cn, ptr %i.cp, align 8, !tbaa !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit25.us..split.us_crit_edge.us, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us.preheader

_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us.preheader: ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us

_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us: ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us.preheader, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us ], [ %indvars.iv.ph, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !110
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, %i.cd
  %i.cv = getelementptr [8 x i8], ptr %i.cg, i64 %indvars.iv
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !180
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cw = and i64 %indvars.iv.next, 4294967295
  %i.cx = icmp ugt i64 %i.bu, %i.cw
  br i1 %i.cx, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit25.us..split.us_crit_edge.us, !llvm.loop !628

_ZNK14llama_kv_cache9slot_info4sizeEv.exit25.us..split.us_crit_edge.us: ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit26.us.us, %middle.block
  %indvars.iv.next44 = add i64 %indvars.iv43, 1   ; 2 uses
  %i.cy = and i64 %indvars.iv.next44, 4294967295
  %i.cz = icmp ugt i64 %i.ao, %i.cy
  br i1 %i.cz, label %.lr.ph.us, label %._crit_edge39, !llvm.loop !629

._crit_edge39:                                    ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit25.us..split.us_crit_edge.us, %.lr.ph38.split.split.split, %bb.h
  ret void

._crit_edge:                                      ; preds = %.lr.ph38
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 58, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.93) #29
  unreachable

bb.i:                                             ; preds = %.lr.ph38.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 59, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #29
  unreachable
}

declare zeroext i1 @ggml_backend_buffer_is_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache16set_input_v_idxsEP11ggml_tensorPK12llama_ubatchRKNS_9slot_infoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !312
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !353  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !343  ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq i64 %i.k, %i.s
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 58, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.93) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq ptr %i.g, %i.f
  br i1 %i.u, label %bb.d, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 59, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #29
  unreachable

_ZNK14llama_kv_cache9slot_info4sizeEv.exit:       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = mul i64 %i.ab, %i.k
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1494, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #29
  unreachable

bb.f:                                             ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %i.ag = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.af)
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1496, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !96, !range !200, !noundef !118
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.j, label %.preheader62

.preheader62:                                     ; preds = %bb.h
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !125 ; 2 uses
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !126 ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.an
  br i1 %.not, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader62
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !110
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw [12440 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !125
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !126
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !353 ; 2 uses
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !343 ; 5 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24
  %i.bp = icmp eq i64 %i.bo, %i.ar
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  br i1 %i.bp, label %.lr.ph74.split, label %._crit_edge

.lr.ph74.split:                                   ; preds = %.lr.ph74
  %i.br = icmp eq ptr %i.bk, %i.bj
  br i1 %i.br, label %bb.i, label %.lr.ph74.split.split.split

.lr.ph74.split.split.split:                       ; preds = %.lr.ph74.split
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !152 ; 2 uses
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !120 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 6 uses
  %.not98 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not98, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph74.split.split.split
  %i.by = tail call i64 @llvm.usub.sat.i64(i64 %i.bx, i64 1) ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 8
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp eq i64 %i.bz, 4294967295
  %i.cb = icmp ugt i64 %i.by, 4294967295
  %i.cc = or i1 %i.ca, %i.cb
  %n.vec = and i64 %i.bx, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit58.us..split.us_crit_edge.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit58.us..split.us_crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !110
  %i.cf = mul i32 %i.ce, %i.bi
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv107
  %i.ci = mul i64 %i.bx, %indvars.iv107
  %i.cj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !120 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.cc
  br i1 %brmerge, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %wide.load = load <2 x i32>, ptr %i.cl, align 4, !tbaa !110
  %wide.load136 = load <2 x i32>, ptr %i.cm, align 4, !tbaa !110
  %i.cn = zext <2 x i32> %wide.load to <2 x i64>
  %i.co = zext <2 x i32> %wide.load136 to <2 x i64>
  %i.cp = add nuw nsw <2 x i64> %broadcast.splat, %i.cn
  %i.cq = add nuw nsw <2 x i64> %broadcast.splat, %i.co
  %i.cr = getelementptr [8 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  store <2 x i64> %i.cp, ptr %i.cr, align 8, !tbaa !180
  store <2 x i64> %i.cq, ptr %i.cs, align 8, !tbaa !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !630

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit58.us..split.us_crit_edge.us, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us.preheader

_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us.preheader: ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us

_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us: ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us.preheader, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us ], [ %indvars.iv.ph, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !110
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, %i.cg
  %i.cy = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !180
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cz = and i64 %indvars.iv.next, 4294967295
  %i.da = icmp ugt i64 %i.bx, %i.cz
  br i1 %i.da, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit58.us..split.us_crit_edge.us, !llvm.loop !631

_ZNK14llama_kv_cache9slot_info4sizeEv.exit58.us..split.us_crit_edge.us: ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit59.us.us, %middle.block
  %indvars.iv.next108 = add i64 %indvars.iv107, 1 ; 2 uses
  %i.db = and i64 %indvars.iv.next108, 4294967295
  %i.dc = icmp ugt i64 %i.ar, %i.db
  br i1 %i.dc, label %.lr.ph.us, label %.loopexit, !llvm.loop !632

._crit_edge:                                      ; preds = %.lr.ph74
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 58, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.93) #29
  unreachable

bb.i:                                             ; preds = %.lr.ph74.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.92, i32 noundef 59, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #29
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !120
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !110
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !123
  %i.dk = getelementptr inbounds nuw [12440 x i8], ptr %i.dj, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !125
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !126
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = and i64 %i.ds, 4294967295               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.dw = tail call noundef i32 @_ZNK13llama_hparams16n_embd_v_gqa_maxEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.dv) ; 3 uses
  %i.dx = zext i32 %i.dw to i64                   ; 5 uses
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !125 ; 2 uses
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !126 ; 3 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 2                 ; 2 uses
  %.not99 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not99, label %.loopexit, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.j
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !353 ; 2 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !343 ; 5 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 24
  %i.ek = icmp eq i64 %i.ej, %i.ed
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.not100 = icmp eq i32 %i.dw, 0
  br i1 %i.ek, label %.lr.ph97.split, label %._crit_edge80

.lr.ph97.split:                                   ; preds = %.lr.ph97
  %i.em = icmp eq ptr %i.ef, %i.ee
  br i1 %i.em, label %bb.k, label %.lr.ph97.split.split.split

.lr.ph97.split.split.split:                       ; preds = %.lr.ph97.split
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !152 ; 2 uses
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !120 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2                 ; 2 uses
  %.not101 = icmp eq ptr %i.en, %i.eo
  %or.cond = select i1 %.not100, i1 true, i1 %.not101
  br i1 %or.cond, label %.loopexit, label %.lr.ph79.us.us.preheader

.lr.ph79.us.us.preheader:                         ; preds = %.lr.ph97.split.split.split
  %min.iters.check138 = icmp ult i32 %i.dw, 4
  %n.vec140 = and i64 %i.dx, 4294967292           ; 3 uses
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.dt, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n151 = icmp eq i64 %n.vec140, %i.dx
  br label %.lr.ph79.us.us

.lr.ph79.us.us:                                   ; preds = %.lr.ph79.us.us.preheader, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit60.us.us..split.us.split.us_crit_edge.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit60.us.us..split.us.split.us_crit_edge.us.us ], [ 0, %.lr.ph79.us.us.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv119
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !110
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, %i.dx                ; 2 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %indvars.iv119
  %i.ey = mul i64 %i.es, %indvars.iv119
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !120
  %broadcast.splatinsert143 = insertelement <2 x i64> poison, i64 %i.ew, i64 0
  %broadcast.splat144 = shufflevector <2 x i64> %broadcast.splatinsert143, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat144
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge76.us.us.us.us, %.lr.ph79.us.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %._crit_edge76.us.us.us.us ], [ 0, %.lr.ph79.us.us ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv115
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !110
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = add i64 %i.ey, %indvars.iv115
  %i.fe = mul i64 %i.fd, %i.dx
  %i.ff = getelementptr [8 x i8], ptr %i.ai, i64 %i.fe ; 2 uses
  br i1 %min.iters.check138, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %.preheader.us.us.us.us
  %broadcast.splatinsert141 = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %broadcast.splat142 = shufflevector <2 x i64> %broadcast.splatinsert141, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph139
  %index148 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body147 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph139 ], [ %vec.ind.next, %vector.body147 ] ; 3 uses
  %i.fg = add nsw <2 x i64> %broadcast.splat144, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.fh = mul <2 x i64> %i.fg, %broadcast.splat146
  %i.fi = mul <2 x i64> %.reass, %broadcast.splat146
  %i.fj = add <2 x i64> %i.fh, %broadcast.splat142
  %i.fk = add <2 x i64> %i.fi, %broadcast.splat142
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %index148 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store <2 x i64> %i.fj, ptr %i.fl, align 8, !tbaa !180
  store <2 x i64> %i.fk, ptr %i.fm, align 8, !tbaa !180
  %index.next149 = add nuw i64 %index148, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fn = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.fn, label %middle.block150, label %vector.body147, !llvm.loop !633

middle.block150:                                  ; preds = %vector.body147
  br i1 %cmp.n151, label %._crit_edge76.us.us.us.us, label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us.preheader

_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us.preheader: ; preds = %.preheader.us.us.us.us, %middle.block150
  %indvars.iv111.ph = phi i64 [ 0, %.preheader.us.us.us.us ], [ %n.vec140, %middle.block150 ]
  br label %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us

_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us: ; preds = %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us.preheader, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us ], [ %indvars.iv111.ph, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit61.us.us.us.us.preheader ] ; 3 uses
  %reass.add.us.us.us.us = add nsw i64 %i.ew, %indvars.iv111
  %reass.mul.us.us.us.us = mul i64 %reass.add.us.us.us.us, %i.dt
  %i.fo = add i64 %reass.mul.us.us.us.us, %i.fc
  %i.fp = getelementptr [8 x i8], ptr %i.ff, i64 %indvars.iv111
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !180
end_hunk_0
