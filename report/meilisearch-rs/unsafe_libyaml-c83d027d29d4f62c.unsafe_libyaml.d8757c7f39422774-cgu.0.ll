Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 731
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml7emitter22yaml_emitter_emit_node17h27b3476a51eec082E:bb.a
  switch i32 %i.jc, label %default.unreachable [
    i32 1, label %bb.bs
    i32 2, label %.sink.split.i33.i.i.i
    i32 3, label %bb.bu
    i32 0, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  br label %.sink.split.i33.i.i.i

.sink.split.i33.i.i.i:                            ; preds = %bb.bu, %bb.bs, %bb.br
  %.sink.i34.i.i.i = phi i8 [ 10, %bb.bu ], [ 13, %bb.bs ], [ 10, %bb.br ]
  %i.jd = load ptr, ptr %i.eu, align 8, !noundef !7 ; 2 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 1
  store ptr %i.je, ptr %i.eu, align 8
  store i8 %.sink.i34.i.i.i, ptr %i.jd, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split.i33.i.i.i, %bb.br
  store i32 0, ptr %i.ex, align 8
  %i.jf = load i32, ptr %i.ey, align 4, !noundef !7
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.ey, align 4
  br label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i.i.i

bb.bu:                                            ; preds = %bb.br
  %i.jh = load ptr, ptr %i.eu, align 8, !noundef !7 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.eu, align 8
  store i8 13, ptr %i.jh, align 1
  br label %.sink.split.i33.i.i.i

_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i.i.i: ; preds = %bb.bt, %bb.bq
  %.25.i.i.i = phi ptr [ @14, %bb.bq ], [ @15, %bb.bt ]
  %i.jj = load i8, ptr %.25.i.i.i, align 1, !range !11, !noundef !7
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.thread.i, label %.thread72.i.i.i

bb.bv:                                            ; preds = %.thread72.i.i.i
  store i8 1, ptr %i.ez, align 1
  %.pre62.i.i.i = load ptr, ptr %i.ep, align 8
  %.pre63.i.i.i = load ptr, ptr %i.eo, align 8
  br label %bb.bk

.thread47.i.i.i:                                  ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.as
  %i.jl = trunc nuw i8 %.sroa.03.055.i.i.i to i1
  br i1 %i.jl, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.ce, %.thread47.i.i.i
  %i.jm = load ptr, ptr %i.eu, align 8, !noundef !7
  %i.jn = getelementptr i8, ptr %i.jm, i64 5
  %i.jo = load ptr, ptr %i.ev, align 8, !noundef !7
  %i.jp = icmp ult ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i44.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i36.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i36.i.i.i: ; preds = %bb.bw
  %i.jq = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.jq, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i44.i.i.i, label %bb.bx

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i44.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i36.i.i.i, %bb.bw
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i44.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i36.i.i.i
  %i.jr = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i44.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i36.i.i.i ]
  %i.js = load i8, ptr %i.jr, align 1, !range !11, !noundef !7
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit45.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ju = load i8, ptr %i.fw, align 1, !noundef !7 ; 8 uses
  %i.jv = icmp sgt i8 %i.ju, -1
  br i1 %i.jv, label %..sink.split.i42_crit_edge.i.i.i, label %bb.bz

..sink.split.i42_crit_edge.i.i.i:                 ; preds = %bb.by
  %.pre61.i.i.i = load ptr, ptr %i.eu, align 8
  br label %.sink.split.i42.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.jw = and i8 %i.ju, -32
  %i.jx = icmp eq i8 %i.jw, -64
  br i1 %i.jx, label %..sink.split.sink.split.i40_crit_edge.i.i.i, label %bb.cb

..sink.split.sink.split.i40_crit_edge.i.i.i:      ; preds = %bb.bz
  %.pre60.i.i.i = load ptr, ptr %i.eu, align 8
  br label %.sink.split.sink.split.i40.i.i.i

.sink.split.sink.split.sink.split.i38.i.i.i:      ; preds = %bb.cd, %..sink.split.sink.split.sink.split.i38_crit_edge.i.i.i
  %i.jy = phi ptr [ %i.kz, %bb.cd ], [ %i.fw, %..sink.split.sink.split.sink.split.i38_crit_edge.i.i.i ]
  %i.jz = phi ptr [ %i.ky, %bb.cd ], [ %.pre59.i.i.i, %..sink.split.sink.split.sink.split.i38_crit_edge.i.i.i ]
  %.sink38.i39.i.i.i = phi i8 [ %i.la, %bb.cd ], [ %i.ju, %..sink.split.sink.split.sink.split.i38_crit_edge.i.i.i ]
  store i8 %.sink38.i39.i.i.i, ptr %i.jz, align 1
  %i.ka = load ptr, ptr %i.eu, align 8, !noundef !7
  %i.kb = getelementptr i8, ptr %i.ka, i64 1      ; 2 uses
  store ptr %i.kb, ptr %i.eu, align 8
  %i.kc = getelementptr i8, ptr %i.jy, i64 1      ; 3 uses
  store ptr %i.kc, ptr %i.ep, align 8
  %i.kd = load i8, ptr %i.kc, align 1, !noundef !7
  br label %.sink.split.sink.split.i40.i.i.i

.sink.split.sink.split.i40.i.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i38.i.i.i, %..sink.split.sink.split.i40_crit_edge.i.i.i
  %i.ke = phi ptr [ %i.fw, %..sink.split.sink.split.i40_crit_edge.i.i.i ], [ %i.kc, %.sink.split.sink.split.sink.split.i38.i.i.i ]
  %i.kf = phi ptr [ %.pre60.i.i.i, %..sink.split.sink.split.i40_crit_edge.i.i.i ], [ %i.kb, %.sink.split.sink.split.sink.split.i38.i.i.i ]
  %.sink31.i41.i.i.i = phi i8 [ %i.ju, %..sink.split.sink.split.i40_crit_edge.i.i.i ], [ %i.kd, %.sink.split.sink.split.sink.split.i38.i.i.i ]
  store i8 %.sink31.i41.i.i.i, ptr %i.kf, align 1
  %i.kg = load ptr, ptr %i.eu, align 8, !noundef !7
  %i.kh = getelementptr i8, ptr %i.kg, i64 1      ; 2 uses
  store ptr %i.kh, ptr %i.eu, align 8
  %i.ki = getelementptr i8, ptr %i.ke, i64 1      ; 3 uses
  store ptr %i.ki, ptr %i.ep, align 8
  %i.kj = load i8, ptr %i.ki, align 1, !noundef !7
  br label %.sink.split.i42.i.i.i

.sink.split.i42.i.i.i:                            ; preds = %.sink.split.sink.split.i40.i.i.i, %..sink.split.i42_crit_edge.i.i.i
  %i.kk = phi ptr [ %i.fw, %..sink.split.i42_crit_edge.i.i.i ], [ %i.ki, %.sink.split.sink.split.i40.i.i.i ]
  %i.kl = phi ptr [ %.pre61.i.i.i, %..sink.split.i42_crit_edge.i.i.i ], [ %i.kh, %.sink.split.sink.split.i40.i.i.i ]
  %.sink.i43.i.i.i = phi i8 [ %i.ju, %..sink.split.i42_crit_edge.i.i.i ], [ %i.kj, %.sink.split.sink.split.i40.i.i.i ]
  store i8 %.sink.i43.i.i.i, ptr %i.kl, align 1
  %i.km = load ptr, ptr %i.eu, align 8, !noundef !7
  %i.kn = getelementptr i8, ptr %i.km, i64 1
  store ptr %i.kn, ptr %i.eu, align 8
  %i.ko = getelementptr i8, ptr %i.kk, i64 1      ; 2 uses
  store ptr %i.ko, ptr %i.ep, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %.sink.split.i42.i.i.i
  %i.kp = phi ptr [ %i.fw, %bb.cc ], [ %i.ko, %.sink.split.i42.i.i.i ]
  %i.kq = load i32, ptr %i.ex, align 8, !noundef !7
  %i.kr = add i32 %i.kq, 1
  store i32 %i.kr, ptr %i.ex, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit45.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.ks = and i8 %i.ju, -16
  %i.kt = icmp eq i8 %i.ks, -32
  br i1 %i.kt, label %..sink.split.sink.split.sink.split.i38_crit_edge.i.i.i, label %bb.cc

..sink.split.sink.split.sink.split.i38_crit_edge.i.i.i: ; preds = %bb.cb
  %.pre59.i.i.i = load ptr, ptr %i.eu, align 8
  br label %.sink.split.sink.split.sink.split.i38.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ku = and i8 %i.ju, -8
  %i.kv = icmp eq i8 %i.ku, -16
  br i1 %i.kv, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc
  %i.kw = load ptr, ptr %i.eu, align 8, !noundef !7
  store i8 %i.ju, ptr %i.kw, align 1
  %i.kx = load ptr, ptr %i.eu, align 8, !noundef !7
  %i.ky = getelementptr i8, ptr %i.kx, i64 1      ; 2 uses
  store ptr %i.ky, ptr %i.eu, align 8
  %i.kz = getelementptr i8, ptr %i.fw, i64 1      ; 3 uses
  store ptr %i.kz, ptr %i.ep, align 8
  %i.la = load i8, ptr %i.kz, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i38.i.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit45.i.i.i: ; preds = %bb.ca, %bb.bx
  %i.lb = phi ptr [ %i.fw, %bb.bx ], [ %i.kp, %bb.ca ]
  %.26.i.i.i = phi ptr [ @14, %bb.bx ], [ @15, %bb.ca ]
  %i.lc = load i8, ptr %.26.i.i.i, align 1, !range !11, !noundef !7
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.thread.i, label %bb.cf

bb.ce:                                            ; preds = %.thread47.i.i.i
  %i.le = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.le, label %bb.bw, label %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.thread.i

bb.cf:                                            ; preds = %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit45.i.i.i
  store i8 0, ptr %i.ez, align 1
  br label %bb.bk

_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.thread.i: ; preds = %bb.ce, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit45.i.i.i, %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i.i.i, %.thread72.i.i.i, %bb.be, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.i: ; preds = %bb.bk, %bb.ao, %bb.an
  store i8 0, ptr %i.eq, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 0, ptr %i.lf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

bb.cg:                                            ; preds = %_ZN14unsafe_libyaml7emitter28yaml_emitter_increase_indent17hc5bad6e2612ad6a7E.exit.i
  %i.lg = load ptr, ptr %i.ef, align 8, !noundef !7 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.li = load i64, ptr %i.lh, align 8, !noundef !7 ; 2 uses
  %i.lj = load i8, ptr %i.k, align 1, !range !11, !noundef !7
  %i.lk = trunc nuw i8 %i.lj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ll = getelementptr i8, ptr %i.lg, i64 %i.li  ; 2 uses
  store ptr %i.lg, ptr %i.c, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ll, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 11 uses
  store ptr %i.lg, ptr %i.ln, align 8
  %i.lo = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter28yaml_emitter_write_indicator17h4c6ead6ac3f390a8E(ptr noundef nonnull %0, ptr noundef nonnull @133, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.lo, label %.preheader.i.i.i, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i

.preheader.i.i.i:                                 ; preds = %bb.cg
  %.not2672.i.i.i = icmp eq i64 %i.li, 0
  br i1 %.not2672.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i1.i.i

.lr.ph.i1.i.i:                                    ; preds = %.preheader.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 34 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 132
  br label %bb.ch

._crit_edge.i4.i.i:                               ; preds = %bb.da
  %i.lw = trunc nuw i8 %.sroa.03.1.i2.i.i to i1
  br i1 %i.lw, label %bb.ci, label %._crit_edge.thread.i.i.i

bb.ch:                                            ; preds = %bb.da, %.lr.ph.i1.i.i
  %i.lx = phi ptr [ %i.ll, %.lr.ph.i1.i.i ], [ %i.ol, %bb.da ] ; 4 uses
  %i.ly = phi ptr [ %i.lg, %.lr.ph.i1.i.i ], [ %i.om, %bb.da ] ; 24 uses
  %.sroa.02.074.i.i.i = phi i1 [ false, %.lr.ph.i1.i.i ], [ %.sroa.02.1.i3.i.i, %bb.da ] ; 2 uses
  %.sroa.03.073.i.i.i = phi i8 [ 0, %.lr.ph.i1.i.i ], [ %.sroa.03.1.i2.i.i, %bb.da ] ; 4 uses
  %i.lz = load i8, ptr %i.ly, align 1, !noundef !7 ; 3 uses
  switch i8 %i.lz, label %.thread60.i.i.i [
    i8 32, label %bb.cj
    i8 13, label %bb.db
    i8 10, label %bb.db
    i8 -62, label %bb.dc
    i8 -30, label %bb.dd
  ]

._crit_edge.thread.i.i.i:                         ; preds = %bb.ci, %._crit_edge.i4.i.i, %.preheader.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %9

9:                                                ; preds = %._crit_edge.thread.i.i.i.a, %._crit_edge.thread.i.i.i
  %.sroa.6.0.i.i.i = phi ptr [ @133, %._crit_edge.thread.i.i.i ], [ %.sroa.6.5.i.i.i, %._crit_edge.thread.i.i.i.a ] ; 8 uses
  %.not.i83.i.i = icmp eq ptr %.sroa.6.0.i.i.i, getelementptr inbounds nuw (i8, ptr @133, i64 1)
  br i1 %.not.i83.i.i, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.i, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr %6, align 8, !noundef !7
  %12 = getelementptr i8, ptr %11, i64 5
  %13 = load ptr, ptr %7, align 8, !noundef !7
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i.i.i: ; preds = %10
  %15 = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %15, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i.i.i, label %16

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i.i.i, %10
  br label %16

16:                                               ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i.i.i
  %17 = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i.i.i ]
  %18 = load i8, ptr %17, align 1, !range !11, !noundef !7
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %._crit_edge.thread.i.i.i.a, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %.sroa.6.0.i.i.i, align 1, !noundef !7 ; 8 uses
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %..sink.split.i_crit_edge.i96.i.i, label %23

..sink.split.i_crit_edge.i96.i.i:                 ; preds = %20
  %.pre19.i.i.i = load ptr, ptr %6, align 8
  br label %.sink.split.i.i91.i.i

23:                                               ; preds = %20
  %24 = and i8 %21, -32
  %25 = icmp eq i8 %24, -64
  br i1 %25, label %..sink.split.sink.split.i_crit_edge.i95.i.i, label %43

..sink.split.sink.split.i_crit_edge.i95.i.i:      ; preds = %23
  %.pre18.i.i.i = load ptr, ptr %6, align 8
  br label %.sink.split.sink.split.i.i89.i.i

.sink.split.sink.split.sink.split.i.i87.i.i:      ; preds = %49, %..sink.split.sink.split.sink.split.i_crit_edge.i93.i.i
  %26 = phi ptr [ %.pre.i94.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i93.i.i ], [ %52, %49 ]
  %.sroa.6.2.i.i.i = phi ptr [ %.sroa.6.0.i.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i93.i.i ], [ %53, %49 ]
  %.sink38.i.i88.i.i = phi i8 [ %21, %..sink.split.sink.split.sink.split.i_crit_edge.i93.i.i ], [ %54, %49 ]
  store i8 %.sink38.i.i88.i.i, ptr %26, align 1
  %27 = load ptr, ptr %6, align 8, !noundef !7
  %28 = getelementptr i8, ptr %27, i64 1          ; 2 uses
  store ptr %28, ptr %6, align 8
  %29 = getelementptr i8, ptr %.sroa.6.2.i.i.i, i64 1 ; 2 uses
  %30 = load i8, ptr %29, align 1, !noundef !7
  br label %.sink.split.sink.split.i.i89.i.i

.sink.split.sink.split.i.i89.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i.i87.i.i, %..sink.split.sink.split.i_crit_edge.i95.i.i
  %31 = phi ptr [ %.pre18.i.i.i, %..sink.split.sink.split.i_crit_edge.i95.i.i ], [ %28, %.sink.split.sink.split.sink.split.i.i87.i.i ]
  %.sroa.6.3.i.i.i = phi ptr [ %.sroa.6.0.i.i.i, %..sink.split.sink.split.i_crit_edge.i95.i.i ], [ %29, %.sink.split.sink.split.sink.split.i.i87.i.i ]
  %.sink31.i.i90.i.i = phi i8 [ %21, %..sink.split.sink.split.i_crit_edge.i95.i.i ], [ %30, %.sink.split.sink.split.sink.split.i.i87.i.i ]
  store i8 %.sink31.i.i90.i.i, ptr %31, align 1
  %32 = load ptr, ptr %6, align 8, !noundef !7
  %33 = getelementptr i8, ptr %32, i64 1          ; 2 uses
  store ptr %33, ptr %6, align 8
  %34 = getelementptr i8, ptr %.sroa.6.3.i.i.i, i64 1 ; 2 uses
  %35 = load i8, ptr %34, align 1, !noundef !7
  br label %.sink.split.i.i91.i.i

.sink.split.i.i91.i.i:                            ; preds = %.sink.split.sink.split.i.i89.i.i, %..sink.split.i_crit_edge.i96.i.i
  %36 = phi ptr [ %.pre19.i.i.i, %..sink.split.i_crit_edge.i96.i.i ], [ %33, %.sink.split.sink.split.i.i89.i.i ]
  %.sroa.6.4.i.i.i = phi ptr [ %.sroa.6.0.i.i.i, %..sink.split.i_crit_edge.i96.i.i ], [ %34, %.sink.split.sink.split.i.i89.i.i ]
  %.sink.i.i92.i.i = phi i8 [ %21, %..sink.split.i_crit_edge.i96.i.i ], [ %35, %.sink.split.sink.split.i.i89.i.i ]
  store i8 %.sink.i.i92.i.i, ptr %36, align 1
  %37 = load ptr, ptr %6, align 8, !noundef !7
  %38 = getelementptr i8, ptr %37, i64 1
  store ptr %38, ptr %6, align 8
  %39 = getelementptr i8, ptr %.sroa.6.4.i.i.i, i64 1
  br label %40

40:                                               ; preds = %46, %.sink.split.i.i91.i.i
  %.sroa.6.1.i.i.i = phi ptr [ %39, %.sink.split.i.i91.i.i ], [ %.sroa.6.0.i.i.i, %46 ]
  %41 = load i32, ptr %8, align 8, !noundef !7
  %42 = add i32 %41, 1
  store i32 %42, ptr %8, align 8
  br label %._crit_edge.thread.i.i.i.a

43:                                               ; preds = %23
  %44 = and i8 %21, -16
  %45 = icmp eq i8 %44, -32
  br i1 %45, label %..sink.split.sink.split.sink.split.i_crit_edge.i93.i.i, label %46

..sink.split.sink.split.sink.split.i_crit_edge.i93.i.i: ; preds = %43
  %.pre.i94.i.i = load ptr, ptr %6, align 8
  br label %.sink.split.sink.split.sink.split.i.i87.i.i

46:                                               ; preds = %43
  %47 = and i8 %21, -8
  %48 = icmp eq i8 %47, -16
  br i1 %48, label %49, label %40

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8, !noundef !7
  store i8 %21, ptr %50, align 1
  %51 = load ptr, ptr %6, align 8, !noundef !7
  %52 = getelementptr i8, ptr %51, i64 1          ; 2 uses
  store ptr %52, ptr %6, align 8
  %53 = getelementptr i8, ptr %.sroa.6.0.i.i.i, i64 1 ; 2 uses
  %54 = load i8, ptr %53, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i.i87.i.i

._crit_edge.thread.i.i.i.a:                       ; preds = %40, %16
  %.9.i.i.i = phi ptr [ @14, %16 ], [ @15, %40 ]
  %.sroa.6.5.i.i.i = phi ptr [ %.sroa.6.0.i.i.i, %16 ], [ %.sroa.6.1.i.i.i, %40 ]
  %55 = load i8, ptr %.9.i.i.i, align 1, !range !11, !noundef !7
  %56 = trunc nuw i8 %55 to i1
  br i1 %56, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i, label %9

bb.ci:                                            ; preds = %._crit_edge.i4.i.i
  %i.ma = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.ma, label %._crit_edge.thread.i.i.i, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i

bb.cj:                                            ; preds = %bb.ch
  %or.cond.i8.i.i = select i1 %i.lk, i1 true, i1 %.sroa.02.074.i.i.i
  br i1 %or.cond.i8.i.i, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %bb.ct, %bb.cs, %bb.cj
  %i.mb = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.mc = getelementptr i8, ptr %i.mb, i64 5
  %i.md = load ptr, ptr %i.lq, align 8, !noundef !7
  %i.me = icmp ult ptr %i.mc, %i.md
  br i1 %i.me, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i21.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i9.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i9.i.i: ; preds = %bb.ck
  %i.mf = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.mf, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i21.i.i, label %bb.cl

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i21.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i9.i.i, %bb.ck
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i21.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i9.i.i
  %i.mg = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i21.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i9.i.i ]
  %i.mh = load i8, ptr %i.mg, align 1, !range !11, !noundef !7
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mj = load i8, ptr %i.ly, align 1, !noundef !7 ; 8 uses
  %i.mk = icmp sgt i8 %i.mj, -1
  br i1 %i.mk, label %..sink.split.i_crit_edge.i20.i.i, label %bb.cn

..sink.split.i_crit_edge.i20.i.i:                 ; preds = %bb.cm
  %.pre76.i.i.i = load ptr, ptr %i.lp, align 8
  br label %.sink.split.i.i15.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.ml = and i8 %i.mj, -32
  %i.mm = icmp eq i8 %i.ml, -64
  br i1 %i.mm, label %..sink.split.sink.split.i_crit_edge.i19.i.i, label %bb.cp

..sink.split.sink.split.i_crit_edge.i19.i.i:      ; preds = %bb.cn
  %.pre75.i.i.i = load ptr, ptr %i.lp, align 8
  br label %.sink.split.sink.split.i.i13.i.i

.sink.split.sink.split.sink.split.i.i11.i.i:      ; preds = %bb.cr, %..sink.split.sink.split.sink.split.i_crit_edge.i17.i.i
  %i.mn = phi ptr [ %i.no, %bb.cr ], [ %i.ly, %..sink.split.sink.split.sink.split.i_crit_edge.i17.i.i ]
  %i.mo = phi ptr [ %i.nn, %bb.cr ], [ %.pre.i18.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i17.i.i ]
  %.sink38.i.i12.i.i = phi i8 [ %i.np, %bb.cr ], [ %i.mj, %..sink.split.sink.split.sink.split.i_crit_edge.i17.i.i ]
  store i8 %.sink38.i.i12.i.i, ptr %i.mo, align 1
  %i.mp = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.mq = getelementptr i8, ptr %i.mp, i64 1      ; 2 uses
  store ptr %i.mq, ptr %i.lp, align 8
  %i.mr = getelementptr i8, ptr %i.mn, i64 1      ; 3 uses
  store ptr %i.mr, ptr %i.ln, align 8
  %i.ms = load i8, ptr %i.mr, align 1, !noundef !7
  br label %.sink.split.sink.split.i.i13.i.i

.sink.split.sink.split.i.i13.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i.i11.i.i, %..sink.split.sink.split.i_crit_edge.i19.i.i
  %i.mt = phi ptr [ %i.ly, %..sink.split.sink.split.i_crit_edge.i19.i.i ], [ %i.mr, %.sink.split.sink.split.sink.split.i.i11.i.i ]
  %i.mu = phi ptr [ %.pre75.i.i.i, %..sink.split.sink.split.i_crit_edge.i19.i.i ], [ %i.mq, %.sink.split.sink.split.sink.split.i.i11.i.i ]
  %.sink31.i.i14.i.i = phi i8 [ %i.mj, %..sink.split.sink.split.i_crit_edge.i19.i.i ], [ %i.ms, %.sink.split.sink.split.sink.split.i.i11.i.i ]
  store i8 %.sink31.i.i14.i.i, ptr %i.mu, align 1
  %i.mv = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.mw = getelementptr i8, ptr %i.mv, i64 1      ; 2 uses
  store ptr %i.mw, ptr %i.lp, align 8
  %i.mx = getelementptr i8, ptr %i.mt, i64 1      ; 3 uses
  store ptr %i.mx, ptr %i.ln, align 8
  %i.my = load i8, ptr %i.mx, align 1, !noundef !7
  br label %.sink.split.i.i15.i.i

.sink.split.i.i15.i.i:                            ; preds = %.sink.split.sink.split.i.i13.i.i, %..sink.split.i_crit_edge.i20.i.i
  %i.mz = phi ptr [ %i.ly, %..sink.split.i_crit_edge.i20.i.i ], [ %i.mx, %.sink.split.sink.split.i.i13.i.i ]
  %i.na = phi ptr [ %.pre76.i.i.i, %..sink.split.i_crit_edge.i20.i.i ], [ %i.mw, %.sink.split.sink.split.i.i13.i.i ]
  %.sink.i.i16.i.i = phi i8 [ %i.mj, %..sink.split.i_crit_edge.i20.i.i ], [ %i.my, %.sink.split.sink.split.i.i13.i.i ]
  store i8 %.sink.i.i16.i.i, ptr %i.na, align 1
  %i.nb = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.nc = getelementptr i8, ptr %i.nb, i64 1
  store ptr %i.nc, ptr %i.lp, align 8
  %i.nd = getelementptr i8, ptr %i.mz, i64 1      ; 2 uses
  store ptr %i.nd, ptr %i.ln, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %.sink.split.i.i15.i.i
  %i.ne = phi ptr [ %i.ly, %bb.cq ], [ %i.nd, %.sink.split.i.i15.i.i ]
  %i.nf = load i32, ptr %i.ls, align 8, !noundef !7
  %i.ng = add i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ls, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.nh = and i8 %i.mj, -16
  %i.ni = icmp eq i8 %i.nh, -32
  br i1 %i.ni, label %..sink.split.sink.split.sink.split.i_crit_edge.i17.i.i, label %bb.cq

..sink.split.sink.split.sink.split.i_crit_edge.i17.i.i: ; preds = %bb.cp
  %.pre.i18.i.i = load ptr, ptr %i.lp, align 8
  br label %.sink.split.sink.split.sink.split.i.i11.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.nj = and i8 %i.mj, -8
  %i.nk = icmp eq i8 %i.nj, -16
  br i1 %i.nk, label %bb.cr, label %bb.co

bb.cr:                                            ; preds = %bb.cq
  %i.nl = load ptr, ptr %i.lp, align 8, !noundef !7
  store i8 %i.mj, ptr %i.nl, align 1
  %i.nm = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.nn = getelementptr i8, ptr %i.nm, i64 1      ; 2 uses
  store ptr %i.nn, ptr %i.lp, align 8
  %i.no = getelementptr i8, ptr %i.ly, i64 1      ; 3 uses
  store ptr %i.no, ptr %i.ln, align 8
  %i.np = load i8, ptr %i.no, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i.i11.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i: ; preds = %bb.co, %bb.cl
  %i.nq = phi ptr [ %i.ly, %bb.cl ], [ %i.ne, %bb.co ]
  %.31.i.i.i = phi ptr [ @14, %bb.cl ], [ @15, %bb.co ]
  %i.nr = load i8, ptr %.31.i.i.i, align 1, !range !11, !noundef !7
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i, label %bb.da

bb.cs:                                            ; preds = %bb.cj
  %i.nt = load i32, ptr %i.ls, align 8, !noundef !7
  %i.nu = load i32, ptr %i.lv, align 4, !noundef !7
  %i.nv = icmp sle i32 %i.nt, %i.nu
  %i.nw = load ptr, ptr %i.c, align 8
  %.not27.i.i.i = icmp eq ptr %i.ly, %i.nw
  %or.cond32.i.i.i = select i1 %i.nv, i1 true, i1 %.not27.i.i.i
  %i.nx = getelementptr i8, ptr %i.lx, i64 -1
  %.not28.i.i.i = icmp eq ptr %i.ly, %i.nx
  %or.cond33.i.i.i = or i1 %.not28.i.i.i, %or.cond32.i.i.i
  br i1 %or.cond33.i.i.i, label %bb.ck, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !noundef !7
  %i.oa = icmp eq i8 %i.nz, 32
  br i1 %i.oa, label %bb.ck, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ob = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.ob, label %bb.cv, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i

bb.cv:                                            ; preds = %bb.cu
  %i.oc = load i8, ptr %i.ly, align 1, !noundef !7 ; 4 uses
  %i.od = icmp sgt i8 %i.oc, -1
  br i1 %i.od, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oe = and i8 %i.oc, -32
  %i.of = icmp eq i8 %i.oe, -64
  br i1 %i.of, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.cv
  %.sroa.08.0.i.i.i = phi i64 [ 3, %bb.cy ], [ 1, %bb.cv ], [ 2, %bb.cw ], [ %.35.i.i.i, %bb.cz ]
  %i.og = getelementptr i8, ptr %i.ly, i64 %.sroa.08.0.i.i.i ; 2 uses
  store ptr %i.og, ptr %i.ln, align 8
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  %i.oh = and i8 %i.oc, -16
  %i.oi = icmp eq i8 %i.oh, -32
  br i1 %i.oi, label %bb.cx, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oj = and i8 %i.oc, -8
  %i.ok = icmp eq i8 %i.oj, -16
  %.35.i.i.i = select i1 %i.ok, i64 4, i64 0
  br label %bb.cx

bb.da:                                            ; preds = %bb.dz, %bb.dl, %bb.cx, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i
  %i.ol = phi ptr [ %i.lx, %bb.dz ], [ %.pre87.i.i.i, %bb.dl ], [ %i.lx, %bb.cx ], [ %i.lx, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i ] ; 2 uses
  %i.om = phi ptr [ %i.rv, %bb.dz ], [ %.pre86.i.i.i, %bb.dl ], [ %i.og, %bb.cx ], [ %i.nq, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i ] ; 2 uses
  %.sroa.03.1.i2.i.i = phi i8 [ 0, %bb.dz ], [ 1, %bb.dl ], [ %.sroa.03.073.i.i.i, %bb.cx ], [ %.sroa.03.073.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i ] ; 2 uses
  %.sroa.02.1.i3.i.i = phi i1 [ false, %bb.dz ], [ %.sroa.02.074.i.i.i, %bb.dl ], [ true, %bb.cx ], [ true, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i ]
  %.not26.i.i.i = icmp eq ptr %i.om, %i.ol
  br i1 %.not26.i.i.i, label %._crit_edge.i4.i.i, label %bb.ch

bb.db:                                            ; preds = %bb.ch, %bb.ch
  %i.on = trunc nuw i8 %.sroa.03.073.i.i.i to i1
  %i.oo = icmp ne i8 %i.lz, 10
  %or.cond62.not.i.i.i = or i1 %i.oo, %i.on
  br i1 %or.cond62.not.i.i.i, label %.thread.i.i.i, label %bb.df

bb.dc:                                            ; preds = %bb.ch
  %i.op = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.oq = load i8, ptr %i.op, align 1, !noundef !7
  %i.or = icmp eq i8 %i.oq, -123
  br i1 %i.or, label %.thread.i.i.i, label %.thread60.i.i.i

bb.dd:                                            ; preds = %bb.ch
  %i.os = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !noundef !7
  %i.ou = icmp eq i8 %i.ot, -128
  br i1 %i.ou, label %bb.de, label %.thread60.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.ow = load i8, ptr %i.ov, align 1, !noundef !7
  %i.ox = and i8 %i.ow, -2
  %switch90.i.i = icmp eq i8 %i.ox, -88
end_hunk_0
begin_hunk_1_@_ZN14unsafe_libyaml7emitter22yaml_emitter_emit_node17h27b3476a51eec082E:bb.a
  %.37.i.i.i = phi ptr [ @14, %bb.dg ], [ @15, %bb.dj ]
  %i.po = load i8, ptr %.37.i.i.i, align 1, !range !11, !noundef !7
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i, label %.thread.i.i.i

bb.dl:                                            ; preds = %.thread.i.i.i
  store i8 1, ptr %i.lu, align 1
  %.pre86.i.i.i = load ptr, ptr %i.ln, align 8
  %.pre87.i.i.i = load ptr, ptr %i.lm, align 8
  br label %bb.da

.thread60.i.i.i:                                  ; preds = %bb.de, %bb.dd, %bb.dc, %bb.ch
  %i.pq = trunc nuw i8 %.sroa.03.073.i.i.i to i1
  br i1 %i.pq, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge77.i.i.i, %.thread60.i.i.i
  %i.pr = phi i8 [ %.pre78.i.i.i, %._crit_edge77.i.i.i ], [ %i.lz, %.thread60.i.i.i ]
  %i.ps = icmp eq i8 %i.pr, 39
  %.pre80.i.i.i = load ptr, ptr %i.lp, align 8    ; 2 uses
  %.pre82.i.i.i = load ptr, ptr %i.lq, align 8    ; 2 uses
  br i1 %i.ps, label %bb.do, label %bb.dr

bb.dn:                                            ; preds = %.thread60.i.i.i
  %i.pt = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.pt, label %._crit_edge77.i.i.i, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i

._crit_edge77.i.i.i:                              ; preds = %bb.dn
  %.pre78.i.i.i = load i8, ptr %i.ly, align 1
  br label %bb.dm

bb.do:                                            ; preds = %bb.dm
  %i.pu = getelementptr i8, ptr %.pre80.i.i.i, i64 5
  %i.pv = icmp ult ptr %i.pu, %.pre82.i.i.i
  br i1 %i.pv, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i48.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i46.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i46.i.i.i: ; preds = %bb.do
  %i.pw = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.pw, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i48.i.i.i, label %bb.dp

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i48.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i46.i.i.i, %bb.do
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i48.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i46.i.i.i
  %i.px = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i48.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i46.i.i.i ]
  %i.py = load i8, ptr %i.px, align 1, !range !11, !noundef !7
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i5.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qa = load ptr, ptr %i.lp, align 8, !noundef !7 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 1
  store ptr %i.qb, ptr %i.lp, align 8
  store i8 39, ptr %i.qa, align 1
  %i.qc = load i32, ptr %i.ls, align 8, !noundef !7
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.ls, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i5.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i5.i.i: ; preds = %bb.dq, %bb.dp
  %.39.i.i.i = phi ptr [ @14, %bb.dp ], [ @15, %bb.dq ]
  %i.qe = load i8, ptr %.39.i.i.i, align 1, !range !11, !noundef !7
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit._crit_edge.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit._crit_edge.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i5.i.i
  %.pre79.i.i.i = load ptr, ptr %i.lp, align 8
  %.pre81.i.i.i = load ptr, ptr %i.lq, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit._crit_edge.i.i.i, %bb.dm
  %i.qg = phi ptr [ %.pre81.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit._crit_edge.i.i.i ], [ %.pre82.i.i.i, %bb.dm ]
  %i.qh = phi ptr [ %.pre79.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit._crit_edge.i.i.i ], [ %.pre80.i.i.i, %bb.dm ]
  %i.qi = getelementptr i8, ptr %i.qh, i64 5
  %i.qj = icmp ult ptr %i.qi, %i.qg
  br i1 %i.qj, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i57.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i49.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i49.i.i.i: ; preds = %bb.dr
  %i.qk = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.qk, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i57.i.i.i, label %bb.ds

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i57.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i49.i.i.i, %bb.dr
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i57.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i49.i.i.i
  %i.ql = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i57.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i49.i.i.i ]
  %i.qm = load i8, ptr %i.ql, align 1, !range !11, !noundef !7
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit58.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qo = load i8, ptr %i.ly, align 1, !noundef !7 ; 8 uses
  %i.qp = icmp sgt i8 %i.qo, -1
  br i1 %i.qp, label %..sink.split.i55_crit_edge.i.i.i, label %bb.du

..sink.split.i55_crit_edge.i.i.i:                 ; preds = %bb.dt
  %.pre85.i.i.i = load ptr, ptr %i.lp, align 8
  br label %.sink.split.i55.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.qq = and i8 %i.qo, -32
  %i.qr = icmp eq i8 %i.qq, -64
  br i1 %i.qr, label %..sink.split.sink.split.i53_crit_edge.i.i.i, label %bb.dw

..sink.split.sink.split.i53_crit_edge.i.i.i:      ; preds = %bb.du
  %.pre84.i.i.i = load ptr, ptr %i.lp, align 8
  br label %.sink.split.sink.split.i53.i.i.i

.sink.split.sink.split.sink.split.i51.i.i.i:      ; preds = %bb.dy, %..sink.split.sink.split.sink.split.i51_crit_edge.i.i.i
  %i.qs = phi ptr [ %i.rt, %bb.dy ], [ %i.ly, %..sink.split.sink.split.sink.split.i51_crit_edge.i.i.i ]
  %i.qt = phi ptr [ %i.rs, %bb.dy ], [ %.pre83.i.i.i, %..sink.split.sink.split.sink.split.i51_crit_edge.i.i.i ]
  %.sink38.i52.i.i.i = phi i8 [ %i.ru, %bb.dy ], [ %i.qo, %..sink.split.sink.split.sink.split.i51_crit_edge.i.i.i ]
  store i8 %.sink38.i52.i.i.i, ptr %i.qt, align 1
  %i.qu = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.qv = getelementptr i8, ptr %i.qu, i64 1      ; 2 uses
  store ptr %i.qv, ptr %i.lp, align 8
  %i.qw = getelementptr i8, ptr %i.qs, i64 1      ; 3 uses
  store ptr %i.qw, ptr %i.ln, align 8
  %i.qx = load i8, ptr %i.qw, align 1, !noundef !7
  br label %.sink.split.sink.split.i53.i.i.i

.sink.split.sink.split.i53.i.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i51.i.i.i, %..sink.split.sink.split.i53_crit_edge.i.i.i
  %i.qy = phi ptr [ %i.ly, %..sink.split.sink.split.i53_crit_edge.i.i.i ], [ %i.qw, %.sink.split.sink.split.sink.split.i51.i.i.i ]
  %i.qz = phi ptr [ %.pre84.i.i.i, %..sink.split.sink.split.i53_crit_edge.i.i.i ], [ %i.qv, %.sink.split.sink.split.sink.split.i51.i.i.i ]
  %.sink31.i54.i.i.i = phi i8 [ %i.qo, %..sink.split.sink.split.i53_crit_edge.i.i.i ], [ %i.qx, %.sink.split.sink.split.sink.split.i51.i.i.i ]
  store i8 %.sink31.i54.i.i.i, ptr %i.qz, align 1
  %i.ra = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.rb = getelementptr i8, ptr %i.ra, i64 1      ; 2 uses
  store ptr %i.rb, ptr %i.lp, align 8
  %i.rc = getelementptr i8, ptr %i.qy, i64 1      ; 3 uses
  store ptr %i.rc, ptr %i.ln, align 8
  %i.rd = load i8, ptr %i.rc, align 1, !noundef !7
  br label %.sink.split.i55.i.i.i

.sink.split.i55.i.i.i:                            ; preds = %.sink.split.sink.split.i53.i.i.i, %..sink.split.i55_crit_edge.i.i.i
  %i.re = phi ptr [ %i.ly, %..sink.split.i55_crit_edge.i.i.i ], [ %i.rc, %.sink.split.sink.split.i53.i.i.i ]
  %i.rf = phi ptr [ %.pre85.i.i.i, %..sink.split.i55_crit_edge.i.i.i ], [ %i.rb, %.sink.split.sink.split.i53.i.i.i ]
  %.sink.i56.i.i.i = phi i8 [ %i.qo, %..sink.split.i55_crit_edge.i.i.i ], [ %i.rd, %.sink.split.sink.split.i53.i.i.i ]
  store i8 %.sink.i56.i.i.i, ptr %i.rf, align 1
  %i.rg = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.rh = getelementptr i8, ptr %i.rg, i64 1
  store ptr %i.rh, ptr %i.lp, align 8
  %i.ri = getelementptr i8, ptr %i.re, i64 1      ; 2 uses
  store ptr %i.ri, ptr %i.ln, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %.sink.split.i55.i.i.i
  %i.rj = phi ptr [ %i.ly, %bb.dx ], [ %i.ri, %.sink.split.i55.i.i.i ]
  %i.rk = load i32, ptr %i.ls, align 8, !noundef !7
  %i.rl = add i32 %i.rk, 1
  store i32 %i.rl, ptr %i.ls, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit58.i.i.i

bb.dw:                                            ; preds = %bb.du
  %i.rm = and i8 %i.qo, -16
  %i.rn = icmp eq i8 %i.rm, -32
  br i1 %i.rn, label %..sink.split.sink.split.sink.split.i51_crit_edge.i.i.i, label %bb.dx

..sink.split.sink.split.sink.split.i51_crit_edge.i.i.i: ; preds = %bb.dw
  %.pre83.i.i.i = load ptr, ptr %i.lp, align 8
  br label %.sink.split.sink.split.sink.split.i51.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.ro = and i8 %i.qo, -8
  %i.rp = icmp eq i8 %i.ro, -16
  br i1 %i.rp, label %bb.dy, label %bb.dv

bb.dy:                                            ; preds = %bb.dx
  %i.rq = load ptr, ptr %i.lp, align 8, !noundef !7
  store i8 %i.qo, ptr %i.rq, align 1
  %i.rr = load ptr, ptr %i.lp, align 8, !noundef !7
  %i.rs = getelementptr i8, ptr %i.rr, i64 1      ; 2 uses
  store ptr %i.rs, ptr %i.lp, align 8
  %i.rt = getelementptr i8, ptr %i.ly, i64 1      ; 3 uses
  store ptr %i.rt, ptr %i.ln, align 8
  %i.ru = load i8, ptr %i.rt, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i51.i.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit58.i.i.i: ; preds = %bb.dv, %bb.ds
  %i.rv = phi ptr [ %i.ly, %bb.ds ], [ %i.rj, %bb.dv ]
  %.40.i.i.i = phi ptr [ @14, %bb.ds ], [ @15, %bb.dv ]
  %i.rw = load i8, ptr %.40.i.i.i, align 1, !range !11, !noundef !7
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit58.i.i.i
  store i8 0, ptr %i.lu, align 1
  br label %bb.da

bb.ea:                                            ; preds = %_ZN14unsafe_libyaml7emitter28yaml_emitter_increase_indent17hc5bad6e2612ad6a7E.exit.i
  %i.ry = load ptr, ptr %i.ef, align 8, !noundef !7 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.sa = load i64, ptr %i.rz, align 8, !noundef !7 ; 2 uses
  %i.sb = load i8, ptr %i.k, align 1, !range !11, !noundef !7
  %i.sc = trunc nuw i8 %i.sb to i1
  %i.sd = getelementptr i8, ptr %i.ry, i64 %i.sa  ; 2 uses
  %i.se = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter28yaml_emitter_write_indicator17h4c6ead6ac3f390a8E(ptr noundef nonnull %0, ptr noundef nonnull @132, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.se, label %.preheader.i23.i.i, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

.preheader.i23.i.i:                               ; preds = %bb.ea
  %.not82264.i.i.i = icmp eq i64 %i.sa, 0
  br i1 %.not82264.i.i.i, label %._crit_edge268.i.i.i, label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.preheader.i23.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 45 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.si = getelementptr i8, ptr %i.sd, i64 -1
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 85 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 21 uses
  br label %103

._crit_edge268.i.i.i:                             ; preds = %.loopexit.i.i.i, %.preheader.i23.i.i
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %60

60:                                               ; preds = %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i, %._crit_edge268.i.i.i
  %.sroa.6.0.i99.i.i = phi ptr [ @132, %._crit_edge268.i.i.i ], [ %.sroa.6.5.i105.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i ] ; 8 uses
  %.not.i100.i.i = icmp eq ptr %.sroa.6.0.i99.i.i, getelementptr inbounds nuw (i8, ptr @132, i64 1)
  br i1 %.not.i100.i.i, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %57, align 8, !noundef !7
  %63 = getelementptr i8, ptr %62, i64 5
  %64 = load ptr, ptr %58, align 8, !noundef !7
  %65 = icmp ult ptr %63, %64
  br i1 %65, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i123.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i101.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i101.i.i: ; preds = %61
  %66 = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %66, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i123.i.i, label %67

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i123.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i101.i.i, %61
  br label %67

67:                                               ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i123.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i101.i.i
  %68 = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i12.i123.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i10.i101.i.i ]
  %69 = load i8, ptr %68, align 1, !range !11, !noundef !7
  %70 = trunc nuw i8 %69 to i1
  br i1 %70, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i, label %71

71:                                               ; preds = %67
  %72 = load i8, ptr %.sroa.6.0.i99.i.i, align 1, !noundef !7 ; 8 uses
  %73 = icmp sgt i8 %72, -1
  br i1 %73, label %..sink.split.i_crit_edge.i121.i.i, label %._crit_edge268.i.i.i.a

..sink.split.i_crit_edge.i121.i.i:                ; preds = %71
  %.pre19.i122.i.i = load ptr, ptr %57, align 8
  br label %.sink.split.i.i114.i.i

._crit_edge268.i.i.i.a:                           ; preds = %71
  %74 = and i8 %72, -32
  %75 = icmp eq i8 %74, -64
  br i1 %75, label %..sink.split.sink.split.i_crit_edge.i119.i.i, label %92

..sink.split.sink.split.i_crit_edge.i119.i.i:     ; preds = %._crit_edge268.i.i.i.a
  %.pre18.i120.i.i = load ptr, ptr %57, align 8
  br label %bb.eb

.sink.split.sink.split.sink.split.i.i108.i.i:     ; preds = %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i.a, %..sink.split.sink.split.sink.split.i_crit_edge.i117.i.i
  %76 = phi ptr [ %.pre.i118.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i117.i.i ], [ %i.sm, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i.a ]
  %.sroa.6.2.i109.i.i = phi ptr [ %.sroa.6.0.i99.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i117.i.i ], [ %i.sn, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i.a ]
  %.sink38.i.i110.i.i = phi i8 [ %72, %..sink.split.sink.split.sink.split.i_crit_edge.i117.i.i ], [ %100, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i.a ]
  store i8 %.sink38.i.i110.i.i, ptr %76, align 1
  %77 = load ptr, ptr %57, align 8, !noundef !7
  %78 = getelementptr i8, ptr %77, i64 1          ; 2 uses
  store ptr %78, ptr %57, align 8
  %79 = getelementptr i8, ptr %.sroa.6.2.i109.i.i, i64 1 ; 2 uses
  %80 = load i8, ptr %79, align 1, !noundef !7
  br label %bb.eb

bb.eb:                                            ; preds = %.sink.split.sink.split.sink.split.i.i108.i.i, %..sink.split.sink.split.i_crit_edge.i119.i.i
  %81 = phi ptr [ %.pre18.i120.i.i, %..sink.split.sink.split.i_crit_edge.i119.i.i ], [ %78, %.sink.split.sink.split.sink.split.i.i108.i.i ]
  %.sroa.8.0265.i.i.i.a = phi ptr [ %.sroa.6.0.i99.i.i, %..sink.split.sink.split.i_crit_edge.i119.i.i ], [ %79, %.sink.split.sink.split.sink.split.i.i108.i.i ]
  %.sink31.i.i113.i.i = phi i8 [ %72, %..sink.split.sink.split.i_crit_edge.i119.i.i ], [ %80, %.sink.split.sink.split.sink.split.i.i108.i.i ]
  store i8 %.sink31.i.i113.i.i, ptr %81, align 1
  %82 = load ptr, ptr %57, align 8, !noundef !7
  %83 = getelementptr i8, ptr %82, i64 1          ; 2 uses
  store ptr %83, ptr %57, align 8
  %84 = getelementptr i8, ptr %.sroa.8.0265.i.i.i.a, i64 1 ; 2 uses
  %i.sl = load i8, ptr %84, align 1, !noundef !7
  br label %.sink.split.i.i114.i.i

.sink.split.i.i114.i.i:                           ; preds = %bb.eb, %..sink.split.i_crit_edge.i121.i.i
  %85 = phi ptr [ %.pre19.i122.i.i, %..sink.split.i_crit_edge.i121.i.i ], [ %83, %bb.eb ]
  %.sroa.6.4.i115.i.i = phi ptr [ %.sroa.6.0.i99.i.i, %..sink.split.i_crit_edge.i121.i.i ], [ %84, %bb.eb ]
  %.sink.i.i116.i.i = phi i8 [ %72, %..sink.split.i_crit_edge.i121.i.i ], [ %i.sl, %bb.eb ]
  store i8 %.sink.i.i116.i.i, ptr %85, align 1
  %86 = load ptr, ptr %57, align 8, !noundef !7
  %87 = getelementptr i8, ptr %86, i64 1
  store ptr %87, ptr %57, align 8
  %88 = getelementptr i8, ptr %.sroa.6.4.i115.i.i, i64 1
  br label %89

89:                                               ; preds = %95, %.sink.split.i.i114.i.i
  %.sroa.6.1.i102.i.i = phi ptr [ %88, %.sink.split.i.i114.i.i ], [ %.sroa.6.0.i99.i.i, %95 ]
  %90 = load i32, ptr %59, align 8, !noundef !7
  %91 = add i32 %90, 1
  store i32 %91, ptr %59, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i

92:                                               ; preds = %._crit_edge268.i.i.i.a
  %93 = and i8 %72, -16
  %94 = icmp eq i8 %93, -32
  br i1 %94, label %..sink.split.sink.split.sink.split.i_crit_edge.i117.i.i, label %95

..sink.split.sink.split.sink.split.i_crit_edge.i117.i.i: ; preds = %92
  %.pre.i118.i.i = load ptr, ptr %57, align 8
  br label %.sink.split.sink.split.sink.split.i.i108.i.i

95:                                               ; preds = %92
  %96 = and i8 %72, -8
  %97 = icmp eq i8 %96, -16
  br i1 %97, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i.a, label %89

_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i.a: ; preds = %95
  %98 = load ptr, ptr %57, align 8, !noundef !7
  store i8 %72, ptr %98, align 1
  %99 = load ptr, ptr %57, align 8, !noundef !7
  %i.sm = getelementptr i8, ptr %99, i64 1        ; 2 uses
  store ptr %i.sm, ptr %57, align 8
  %i.sn = getelementptr i8, ptr %.sroa.6.0.i99.i.i, i64 1 ; 2 uses
  %100 = load i8, ptr %i.sn, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i.i108.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i: ; preds = %89, %67
  %.9.i104.i.i = phi ptr [ @14, %67 ], [ @15, %89 ]
  %.sroa.6.5.i105.i.i = phi ptr [ %.sroa.6.0.i99.i.i, %67 ], [ %.sroa.6.1.i102.i.i, %89 ]
  %101 = load i8, ptr %.9.i104.i.i, align 1, !range !11, !noundef !7
  %102 = trunc nuw i8 %101 to i1
  br i1 %102, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %60

103:                                              ; preds = %.loopexit.i.i.i, %.lr.ph.i24.i.i
  %.sroa.02.0267.i.i.i = phi i1 [ false, %.lr.ph.i24.i.i ], [ %.sroa.02.1.i29.i.i, %.loopexit.i.i.i ]
  %.sroa.8.0265.i.i.i = phi ptr [ %i.ry, %.lr.ph.i24.i.i ], [ %.sroa.8.1.i.i.i, %.loopexit.i.i.i ] ; 34 uses
  %104 = load i8, ptr %.sroa.8.0265.i.i.i, align 1, !noundef !7 ; 16 uses
  switch i8 %104, label %bb.ec [
    i8 10, label %bb.eg
    i8 -62, label %bb.ed
    i8 -19, label %.split233.i.i.i
    i8 -18, label %bb.eg
    i8 -17, label %bb.ee
  ]

_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i: ; preds = %60
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i16 0, ptr %105, align 4
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

bb.ec:                                            ; preds = %103
  %i.so = add i8 %104, -32
  %or.cond86.i.i.i = icmp ult i8 %i.so, 95
  %i.sp = add i8 %104, 61
  %or.cond87.i.i.i = icmp ult i8 %i.sp, 42
  %or.cond258.i.i.i = or i1 %or.cond86.i.i.i, %or.cond87.i.i.i
  br i1 %or.cond258.i.i.i, label %bb.eg, label %bb.ei

bb.ed:                                            ; preds = %103
  %i.sq = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !noundef !7
  %i.ss = and i8 %i.sr, -32
  %or.cond252.i.i.i = icmp eq i8 %i.ss, -96
  br i1 %or.cond252.i.i.i, label %bb.eg, label %.thread231.i.thread.i.i

bb.ee:                                            ; preds = %103
  %i.st = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.su = load i8, ptr %i.st, align 1, !noundef !7
  switch i8 %i.su, label %bb.eg [
    i8 -69, label %.split232.i.i.i
    i8 -65, label %bb.eh
  ]

bb.ef:                                            ; preds = %bb.ei
  %i.sv = icmp sgt i8 %104, -1
  br i1 %i.sv, label %.thread231.thread.i.i.i, label %.thread.i25.i.i

.split233.i.i.i:                                  ; preds = %103
  %i.sw = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.sx = load i8, ptr %i.sw, align 1, !noundef !7
  %i.sy = icmp ult i8 %i.sx, -96
  br i1 %i.sy, label %.thread235.i.i.i, label %.thread.thread.i.thread.i.i

bb.eg:                                            ; preds = %.split.i.i.i, %bb.eh, %.split232.i.i.i, %bb.ee, %bb.ed, %bb.ec, %103, %103
  %i.sz = load i8, ptr %i.sf, align 8, !range !11, !noundef !7
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.ek, label %bb.ej

.thread235.i.i.i:                                 ; preds = %.split233.i.i.i
  %i.tb = load i8, ptr %i.sf, align 8, !range !11, !noundef !7
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %.thread245.i.i.i, label %.thread.thread.i.thread.i.i

.split232.i.i.i:                                  ; preds = %bb.ee
  %i.td = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.te = load i8, ptr %i.td, align 1, !noundef !7
  %.not254.i.i.i = icmp eq i8 %i.te, -65
  br i1 %.not254.i.i.i, label %.thread.thread.i.thread.i.i, label %bb.eg

bb.eh:                                            ; preds = %bb.ee
  %i.tf = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.tg = load i8, ptr %i.tf, align 1, !noundef !7
  %i.th = and i8 %i.tg, -2
  %switch.i.i.i = icmp eq i8 %i.th, -66
  br i1 %switch.i.i.i, label %.thread.thread.i.thread.i.i, label %bb.eg

bb.ei:                                            ; preds = %bb.ec
  %i.ti = icmp ugt i8 %104, -17
  br i1 %i.ti, label %.split.i.i.i, label %bb.ef

.split.i.i.i:                                     ; preds = %bb.ei
  %i.tj = icmp samesign ult i8 %104, -11
  br i1 %i.tj, label %bb.eg, label %.thread.i25.i.i

bb.ej:                                            ; preds = %bb.eg
  %i.tk = icmp sgt i8 %104, -1
  br i1 %i.tk, label %.thread234.i.i.i, label %.thread.i25.i.i

bb.ek:                                            ; preds = %bb.eg
  switch i8 %104, label %.thread245.i.i.i [
    i8 -17, label %bb.el
    i8 13, label %.thread231.thread.i.i.i
    i8 10, label %.thread231.thread.i.i.i
    i8 -62, label %bb.en
    i8 -30, label %bb.eo
    i8 34, label %.thread231.thread.i.i.i
    i8 92, label %.thread231.thread.i.i.i
    i8 32, label %bb.hc
  ]

bb.el:                                            ; preds = %bb.ek
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.tm = load i8, ptr %i.tl, align 1, !noundef !7
  %i.tn = icmp eq i8 %i.tm, -69
  br i1 %i.tn, label %bb.em, label %.thread245.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.tp = load i8, ptr %i.to, align 1, !noundef !7
  %i.tq = icmp eq i8 %i.tp, -65
  br i1 %i.tq, label %.thread.thread.i.thread.i.i, label %.thread245.i.i.i

.thread234.i.i.i:                                 ; preds = %bb.ej
  switch i8 %104, label %.thread245.i.i.i [
    i8 13, label %.thread231.thread.i.i.i
    i8 10, label %.thread231.thread.i.i.i
    i8 32, label %bb.hc
    i8 92, label %.thread231.thread.i.i.i
    i8 34, label %.thread231.thread.i.i.i
  ]

bb.en:                                            ; preds = %bb.ek
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.ts = load i8, ptr %i.tr, align 1, !noundef !7
  %i.tt = icmp eq i8 %i.ts, -123
  br i1 %i.tt, label %.thread231.i.thread.i.i, label %.thread245.i.i.i

bb.eo:                                            ; preds = %bb.ek
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.tv = load i8, ptr %i.tu, align 1, !noundef !7
  %i.tw = icmp eq i8 %i.tv, -128
  br i1 %i.tw, label %bb.ep, label %.thread245.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.ty = load i8, ptr %i.tx, align 1, !noundef !7
  %i.tz = and i8 %i.ty, -2
  %switch92.i.i = icmp eq i8 %i.tz, -88
  br i1 %switch92.i.i, label %.thread.thread.i.thread.i.i, label %.thread245.i.i.i

.thread.i25.i.i:                                  ; preds = %bb.ej, %.split.i.i.i, %bb.ef
  %i.ua = and i8 %104, -32
  %i.ub = icmp eq i8 %i.ua, -64
  br i1 %i.ub, label %.thread231.i.thread.i.i, label %.thread.thread.i.i.i

.thread.thread.i.i.i:                             ; preds = %.thread.i25.i.i
  %i.uc = and i8 %104, -16
  %i.ud = icmp eq i8 %i.uc, -32
  br i1 %i.ud, label %.thread.thread.i.thread.i.i, label %bb.eq

.thread231.thread.i.i.i:                          ; preds = %.thread234.i.i.i, %.thread234.i.i.i, %.thread234.i.i.i, %.thread234.i.i.i, %bb.ek, %bb.ek, %bb.ek, %bb.ek, %bb.ef
  %i.ue = zext nneg i8 %104 to i32
  br label %._crit_edge.i26.i.i

.thread231.i.thread.i.i:                          ; preds = %.thread.i25.i.i, %bb.en, %bb.ed
  %i.uf = and i8 %104, 31
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i"

.thread.thread.i.thread.i.i:                      ; preds = %.thread.thread.i.i.i, %bb.ep, %bb.em, %bb.eh, %.split232.i.i.i, %.thread235.i.i.i, %.split233.i.i.i
  %i.ug = and i8 %104, 15
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i"

bb.eq:                                            ; preds = %.thread.thread.i.i.i
  %i.uh = and i8 %104, -8
  %i.ui = icmp eq i8 %i.uh, -16
  %i.uj = and i8 %104, 7
  br i1 %i.ui, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i", label %._crit_edge.i26.i.i

._crit_edge.i26.i.i:                              ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2", %bb.eq, %.thread231.thread.i.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.eq ], [ 1, %.thread231.thread.i.i.i ], [ %.sroa.032.0248.i88.i.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2" ], [ %.sroa.032.0248.i88.i.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1" ], [ %.sroa.032.0248.i88.i.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i" ]
  %.sroa.021.0.lcssa.i.i.i = phi i32 [ 0, %bb.eq ], [ %i.ue, %.thread231.thread.i.i.i ], [ %i.vf, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i" ], [ %i.vl, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1" ], [ %i.vr, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2" ] ; 4 uses
  %i.uk = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 %.pre-phi.i.i.i ; 16 uses
  %i.ul = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.um = getelementptr i8, ptr %i.ul, i64 5
  %i.un = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.uo = icmp ult ptr %i.um, %i.un
  br i1 %i.uo, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i: ; preds = %._crit_edge.i26.i.i
  %i.up = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.up, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i, label %bb.er

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i, %._crit_edge.i26.i.i
  br label %bb.er

bb.er:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i
  %i.uq = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i ]
  %i.ur = load i8, ptr %i.uq, align 1, !range !11, !noundef !7
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ut = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.uu = getelementptr i8, ptr %i.ut, i64 1
  store ptr %i.uu, ptr %i.sj, align 8
  store i8 92, ptr %i.ut, align 1
  %i.uv = load i32, ptr %i.sg, align 8, !noundef !7
  %i.uw = add i32 %i.uv, 1
  store i32 %i.uw, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i: ; preds = %bb.es, %bb.er
  %.89.i.i.i = phi ptr [ @14, %bb.er ], [ @15, %bb.es ]
  %i.ux = load i8, ptr %.89.i.i.i, align 1, !range !11, !noundef !7
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %bb.et

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i": ; preds = %.thread231.i.thread.i.i, %.thread.thread.i.thread.i.i, %bb.eq
  %.sroa.033.0.i.ph.sink.i.i = phi i8 [ %i.uf, %.thread231.i.thread.i.i ], [ %i.ug, %.thread.thread.i.thread.i.i ], [ %i.uj, %bb.eq ]
  %exitcond.not.i.i.i = phi i1 [ true, %.thread231.i.thread.i.i ], [ false, %.thread.thread.i.thread.i.i ], [ false, %bb.eq ]
  %exitcond.not.i.i.i.1 = phi i1 [ false, %.thread231.i.thread.i.i ], [ true, %.thread.thread.i.thread.i.i ], [ false, %bb.eq ]
  %.sroa.032.0248.i88.i.i = phi i64 [ 2, %.thread231.i.thread.i.i ], [ 3, %.thread.thread.i.thread.i.i ], [ 4, %bb.eq ] ; 3 uses
  %i.uz = zext nneg i8 %.sroa.033.0.i.ph.sink.i.i to i32
  %i.va = shl nuw nsw i32 %i.uz, 6
  %i.vb = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.vc = load i8, ptr %i.vb, align 1, !noundef !7
  %i.vd = and i8 %i.vc, 63
  %i.ve = zext nneg i8 %i.vd to i32
  %i.vf = or disjoint i32 %i.va, %i.ve            ; 2 uses
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i26.i.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i"
  %i.vg = shl nuw nsw i32 %i.vf, 6
  %i.vh = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.vi = load i8, ptr %i.vh, align 1, !noundef !7
  %i.vj = and i8 %i.vi, 63
  %i.vk = zext nneg i8 %i.vj to i32
  %i.vl = or disjoint i32 %i.vg, %i.vk            ; 2 uses
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i26.i.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1"
  %i.vm = shl nuw nsw i32 %i.vl, 6
  %i.vn = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 3
  %i.vo = load i8, ptr %i.vn, align 1, !noundef !7
  %i.vp = and i8 %i.vo, 63
  %i.vq = zext nneg i8 %i.vp to i32
  %i.vr = or disjoint i32 %i.vm, %i.vq
  br label %._crit_edge.i26.i.i

bb.et:                                            ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i
  switch i32 %.sroa.021.0.lcssa.i.i.i, label %bb.eu [
    i32 0, label %bb.ev
    i32 7, label %bb.ey
    i32 8, label %bb.fb
    i32 9, label %bb.fe
    i32 10, label %bb.fh
    i32 11, label %bb.fk
    i32 12, label %bb.fn
    i32 13, label %bb.fq
    i32 27, label %bb.ft
    i32 34, label %bb.fw
    i32 92, label %bb.fz
    i32 133, label %bb.gc
    i32 160, label %bb.gf
    i32 8232, label %bb.gi
    i32 8233, label %bb.gl
  ]

bb.eu:                                            ; preds = %bb.et
  %i.vs = icmp ult i32 %.sroa.021.0.lcssa.i.i.i, 256
  br i1 %i.vs, label %bb.gp, label %bb.go

bb.ev:                                            ; preds = %bb.et
  %i.vt = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.vu = getelementptr i8, ptr %i.vt, i64 5
  %i.vv = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.vw = icmp ult ptr %i.vu, %i.vv
  br i1 %i.vw, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i: ; preds = %bb.ev
  %i.vx = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.vx, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i, label %bb.ew

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i, %bb.ev
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i
  %i.vy = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i ]
  %i.vz = load i8, ptr %i.vy, align 1, !range !11, !noundef !7
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.wb = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 1
  store ptr %i.wc, ptr %i.sj, align 8
  store i8 48, ptr %i.wb, align 1
  %i.wd = load i32, ptr %i.sg, align 8, !noundef !7
  %i.we = add i32 %i.wd, 1
  store i32 %i.we, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i: ; preds = %bb.ex, %bb.ew
  %.90.i.i.i = phi ptr [ @14, %bb.ew ], [ @15, %bb.ex ]
  %i.wf = load i8, ptr %.90.i.i.i, align 1, !range !11, !noundef !7
  %i.wg = trunc nuw i8 %i.wf to i1
  br i1 %i.wg, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.ey:                                            ; preds = %bb.et
  %i.wh = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.wi = getelementptr i8, ptr %i.wh, i64 5
  %i.wj = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.wk = icmp ult ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i: ; preds = %bb.ey
  %i.wl = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.wl, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i, label %bb.ez

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i, %bb.ey
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i
  %i.wm = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i ]
  %i.wn = load i8, ptr %i.wm, align 1, !range !11, !noundef !7
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.wp = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 1
  store ptr %i.wq, ptr %i.sj, align 8
  store i8 97, ptr %i.wp, align 1
  %i.wr = load i32, ptr %i.sg, align 8, !noundef !7
  %i.ws = add i32 %i.wr, 1
  store i32 %i.ws, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i: ; preds = %bb.fa, %bb.ez
  %.91.i.i.i = phi ptr [ @14, %bb.ez ], [ @15, %bb.fa ]
  %i.wt = load i8, ptr %.91.i.i.i, align 1, !range !11, !noundef !7
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fb:                                            ; preds = %bb.et
  %i.wv = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.ww = getelementptr i8, ptr %i.wv, i64 5
  %i.wx = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.wy = icmp ult ptr %i.ww, %i.wx
  br i1 %i.wy, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i: ; preds = %bb.fb
  %i.wz = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.wz, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i, label %bb.fc

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i, %bb.fb
  br label %bb.fc

bb.fc:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i
  %i.xa = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i ]
  %i.xb = load i8, ptr %i.xa, align 1, !range !11, !noundef !7
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xd = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 1
  store ptr %i.xe, ptr %i.sj, align 8
  store i8 98, ptr %i.xd, align 1
  %i.xf = load i32, ptr %i.sg, align 8, !noundef !7
  %i.xg = add i32 %i.xf, 1
  store i32 %i.xg, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i: ; preds = %bb.fd, %bb.fc
  %.92.i.i.i = phi ptr [ @14, %bb.fc ], [ @15, %bb.fd ]
  %i.xh = load i8, ptr %.92.i.i.i, align 1, !range !11, !noundef !7
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fe:                                            ; preds = %bb.et
  %i.xj = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.xk = getelementptr i8, ptr %i.xj, i64 5
  %i.xl = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.xm = icmp ult ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i: ; preds = %bb.fe
  %i.xn = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.xn, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i, label %bb.ff

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i, %bb.fe
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i
  %i.xo = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i ]
  %i.xp = load i8, ptr %i.xo, align 1, !range !11, !noundef !7
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.xr = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.xs = getelementptr i8, ptr %i.xr, i64 1
  store ptr %i.xs, ptr %i.sj, align 8
  store i8 116, ptr %i.xr, align 1
  %i.xt = load i32, ptr %i.sg, align 8, !noundef !7
  %i.xu = add i32 %i.xt, 1
  store i32 %i.xu, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i: ; preds = %bb.fg, %bb.ff
  %.93.i.i.i = phi ptr [ @14, %bb.ff ], [ @15, %bb.fg ]
  %i.xv = load i8, ptr %.93.i.i.i, align 1, !range !11, !noundef !7
  %i.xw = trunc nuw i8 %i.xv to i1
  br i1 %i.xw, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fh:                                            ; preds = %bb.et
  %i.xx = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.xy = getelementptr i8, ptr %i.xx, i64 5
  %i.xz = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.ya = icmp ult ptr %i.xy, %i.xz
  br i1 %i.ya, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i: ; preds = %bb.fh
  %i.yb = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.yb, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i, label %bb.fi

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i, %bb.fh
  br label %bb.fi

bb.fi:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i
  %i.yc = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i ]
  %i.yd = load i8, ptr %i.yc, align 1, !range !11, !noundef !7
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.yf = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 1
  store ptr %i.yg, ptr %i.sj, align 8
  store i8 110, ptr %i.yf, align 1
  %i.yh = load i32, ptr %i.sg, align 8, !noundef !7
  %i.yi = add i32 %i.yh, 1
end_hunk_1
begin_hunk_2_@_ZN14unsafe_libyaml7emitter22yaml_emitter_emit_node17h27b3476a51eec082E:bb.a
bb.gl:                                            ; preds = %bb.et
  %i.adh = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.adi = getelementptr i8, ptr %i.adh, i64 5
  %i.adj = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.adk = icmp ult ptr %i.adi, %i.adj
  br i1 %i.adk, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i: ; preds = %bb.gl
  %i.adl = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.adl, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i, label %bb.gm

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i, %bb.gl
  br label %bb.gm

bb.gm:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i
  %i.adm = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i ]
  %i.adn = load i8, ptr %i.adm, align 1, !range !11, !noundef !7
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.adp = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.adq = getelementptr i8, ptr %i.adp, i64 1
  store ptr %i.adq, ptr %i.sj, align 8
  store i8 80, ptr %i.adp, align 1
  %i.adr = load i32, ptr %i.sg, align 8, !noundef !7
  %i.ads = add i32 %i.adr, 1
  store i32 %i.ads, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i: ; preds = %bb.gn, %bb.gm
  %.104.i.i.i = phi ptr [ @14, %bb.gm ], [ @15, %bb.gn ]
  %i.adt = load i8, ptr %.104.i.i.i, align 1, !range !11, !noundef !7
  %i.adu = trunc nuw i8 %i.adt to i1
  br i1 %i.adu, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.go:                                            ; preds = %bb.eu
  %i.adv = icmp ult i32 %.sroa.021.0.lcssa.i.i.i, 65536
  %i.adw = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.adx = getelementptr i8, ptr %i.adw, i64 5
  %i.ady = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.adz = icmp ult ptr %i.adx, %i.ady            ; 2 uses
  br i1 %i.adv, label %bb.gv, label %bb.gs

bb.gp:                                            ; preds = %bb.eu
  %i.aea = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.aeb = getelementptr i8, ptr %i.aea, i64 5
  %i.aec = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.aed = icmp ult ptr %i.aeb, %i.aec
  br i1 %i.aed, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i: ; preds = %bb.gp
  %i.aee = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aee, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i, label %bb.gq

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i, %bb.gp
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i
  %i.aef = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i ]
  %i.aeg = load i8, ptr %i.aef, align 1, !range !11, !noundef !7
  %i.aeh = trunc nuw i8 %i.aeg to i1
  br i1 %i.aeh, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aei = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.aej = getelementptr i8, ptr %i.aei, i64 1
  store ptr %i.aej, ptr %i.sj, align 8
  store i8 120, ptr %i.aei, align 1
  %i.aek = load i32, ptr %i.sg, align 8, !noundef !7
  %i.ael = add i32 %i.aek, 1
  store i32 %i.ael, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i: ; preds = %bb.gr, %bb.gq
  %.105.i.i.i = phi ptr [ @14, %bb.gq ], [ @15, %bb.gr ]
  %i.aem = load i8, ptr %.105.i.i.i, align 1, !range !11, !noundef !7
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.preheader

bb.gs:                                            ; preds = %bb.go
  br i1 %i.adz, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i: ; preds = %bb.gs
  %i.aeo = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aeo, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i, label %bb.gt

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i, %bb.gs
  br label %bb.gt

bb.gt:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i
  %i.aep = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i ]
  %i.aeq = load i8, ptr %i.aep, align 1, !range !11, !noundef !7
  %i.aer = trunc nuw i8 %i.aeq to i1
  br i1 %i.aer, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aes = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.aet = getelementptr i8, ptr %i.aes, i64 1
  store ptr %i.aet, ptr %i.sj, align 8
  store i8 85, ptr %i.aes, align 1
  %i.aeu = load i32, ptr %i.sg, align 8, !noundef !7
  %i.aev = add i32 %i.aeu, 1
  store i32 %i.aev, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i: ; preds = %bb.gu, %bb.gt
  %.106.i.i.i = phi ptr [ @14, %bb.gt ], [ @15, %bb.gu ]
  %i.aew = load i8, ptr %.106.i.i.i, align 1, !range !11, !noundef !7
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.preheader

bb.gv:                                            ; preds = %bb.go
  br i1 %i.adz, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i: ; preds = %bb.gv
  %i.aey = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aey, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i, label %bb.gw

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i, %bb.gv
  br label %bb.gw

bb.gw:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i
  %i.aez = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i ]
  %i.afa = load i8, ptr %i.aez, align 1, !range !11, !noundef !7
  %i.afb = trunc nuw i8 %i.afa to i1
  br i1 %i.afb, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.afc = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.afd = getelementptr i8, ptr %i.afc, i64 1
  store ptr %i.afd, ptr %i.sj, align 8
  store i8 117, ptr %i.afc, align 1
  %i.afe = load i32, ptr %i.sg, align 8, !noundef !7
  %i.aff = add i32 %i.afe, 1
  store i32 %i.aff, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i: ; preds = %bb.gx, %bb.gw
  %.107.i.i.i = phi ptr [ @14, %bb.gw ], [ @15, %bb.gx ]
  %i.afg = load i8, ptr %.107.i.i.i, align 1, !range !11, !noundef !7
  %i.afh = trunc nuw i8 %i.afg to i1
  br i1 %i.afh, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.preheader

.preheader:                                       ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i
  %.sroa.026.1263.i.i.i.ph = phi i32 [ 4, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i ], [ 28, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i ], [ 12, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i ]
  br label %bb.gz

bb.gy:                                            ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i
  %i.afi = add nsw i32 %.sroa.026.1263.i.i.i, -4
  %i.afj = icmp sgt i32 %.sroa.026.1263.i.i.i, 3
  br i1 %i.afj, label %bb.gz, label %.loopexit.i.i.i

bb.gz:                                            ; preds = %.preheader, %bb.gy
  %.sroa.026.1263.i.i.i = phi i32 [ %i.afi, %bb.gy ], [ %.sroa.026.1263.i.i.i.ph, %.preheader ] ; 3 uses
  %i.afk = lshr i32 %.sroa.021.0.lcssa.i.i.i, %.sroa.026.1263.i.i.i
  %i.afl = and i32 %i.afk, 15                     ; 2 uses
  %i.afm = icmp samesign ult i32 %i.afl, 10
  %.108.i.i.i = select i1 %i.afm, i32 48, i32 55
  %i.afn = add nuw nsw i32 %.108.i.i.i, %i.afl
  %i.afo = trunc nuw nsw i32 %i.afn to i8
  %i.afp = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.afq = getelementptr i8, ptr %i.afp, i64 5
  %i.afr = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.afs = icmp ult ptr %i.afq, %i.afr
  br i1 %i.afs, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i: ; preds = %bb.gz
  %i.aft = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aft, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i, label %bb.ha

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i, %bb.gz
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i
  %i.afu = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i ]
  %i.afv = load i8, ptr %i.afu, align 1, !range !11, !noundef !7
  %i.afw = trunc nuw i8 %i.afv to i1
  br i1 %i.afw, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.afx = load ptr, ptr %i.sj, align 8, !noundef !7 ; 2 uses
  %i.afy = getelementptr i8, ptr %i.afx, i64 1
  store ptr %i.afy, ptr %i.sj, align 8
  store i8 %i.afo, ptr %i.afx, align 1
  %i.afz = load i32, ptr %i.sg, align 8, !noundef !7
  %i.aga = add i32 %i.afz, 1
  store i32 %i.aga, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i: ; preds = %bb.hb, %bb.ha
  %.sroa.053.0.i.i.i = phi ptr [ @14, %bb.ha ], [ @15, %bb.hb ]
  %i.agb = load i8, ptr %.sroa.053.0.i.i.i, align 1, !range !11, !noundef !7
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %bb.gy

.loopexit.i.i.i:                                  ; preds = %bb.gy, %bb.hy, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i
  %.sroa.8.1.i.i.i = phi ptr [ %i.ajp, %bb.hy ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i ], [ %i.uk, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i ], [ %.sroa.8.6.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i ], [ %.sroa.8.11.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i ], [ %i.uk, %bb.gy ] ; 2 uses
  %.sroa.02.1.i29.i.i = phi i1 [ true, %bb.hy ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i ], [ true, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i ], [ false, %bb.gy ]
  %.not82.i.i.i = icmp eq ptr %.sroa.8.1.i.i.i, %i.sd
  br i1 %.not82.i.i.i, label %._crit_edge268.i.i.i, label %103

bb.hc:                                            ; preds = %.thread234.i.i.i, %bb.ek
  %or.cond.i31.i.i = or i1 %.sroa.02.0267.i.i.i, %i.sc
  br i1 %or.cond.i31.i.i, label %bb.hk, label %bb.hs

.thread245.i.i.i:                                 ; preds = %bb.ep, %bb.eo, %bb.en, %.thread234.i.i.i, %bb.em, %bb.el, %bb.ek, %.thread235.i.i.i
  %i.agd = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.age = getelementptr i8, ptr %i.agd, i64 5
  %i.agf = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.agg = icmp ult ptr %i.age, %i.agf
  br i1 %i.agg, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i: ; preds = %.thread245.i.i.i
  %i.agh = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.agh, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i, label %bb.hd

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i, %.thread245.i.i.i
  br label %bb.hd

bb.hd:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i
  %i.agi = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i ]
  %i.agj = load i8, ptr %i.agi, align 1, !range !11, !noundef !7
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.agl = load i8, ptr %.sroa.8.0265.i.i.i, align 1, !noundef !7 ; 8 uses
  %i.agm = icmp sgt i8 %i.agl, -1
  br i1 %i.agm, label %..sink.split.i_crit_edge.i42.i.i, label %bb.hf

..sink.split.i_crit_edge.i42.i.i:                 ; preds = %bb.he
  %.pre275.i.i.i = load ptr, ptr %i.sj, align 8
  br label %.sink.split.i.i38.i.i

bb.hf:                                            ; preds = %bb.he
  %i.agn = and i8 %i.agl, -32
  %i.ago = icmp eq i8 %i.agn, -64
  br i1 %i.ago, label %..sink.split.sink.split.i_crit_edge.i41.i.i, label %bb.hh

..sink.split.sink.split.i_crit_edge.i41.i.i:      ; preds = %bb.hf
  %.pre274.i.i.i = load ptr, ptr %i.sj, align 8
  br label %.sink.split.sink.split.i.i36.i.i

.sink.split.sink.split.sink.split.i.i34.i.i:      ; preds = %bb.hj, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i
  %i.agp = phi ptr [ %.pre273.i.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i ], [ %i.ahl, %bb.hj ]
  %.sroa.8.3.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i ], [ %i.ahm, %bb.hj ]
  %.sink38.i.i35.i.i = phi i8 [ %i.agl, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i ], [ %i.ahn, %bb.hj ]
  store i8 %.sink38.i.i35.i.i, ptr %i.agp, align 1
  %i.agq = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.agr = getelementptr i8, ptr %i.agq, i64 1    ; 2 uses
  store ptr %i.agr, ptr %i.sj, align 8
  %i.ags = getelementptr i8, ptr %.sroa.8.3.i.i.i, i64 1 ; 2 uses
  %i.agt = load i8, ptr %i.ags, align 1, !noundef !7
  br label %.sink.split.sink.split.i.i36.i.i

.sink.split.sink.split.i.i36.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i.i34.i.i, %..sink.split.sink.split.i_crit_edge.i41.i.i
  %i.agu = phi ptr [ %.pre274.i.i.i, %..sink.split.sink.split.i_crit_edge.i41.i.i ], [ %i.agr, %.sink.split.sink.split.sink.split.i.i34.i.i ]
  %.sroa.8.4.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.sink.split.i_crit_edge.i41.i.i ], [ %i.ags, %.sink.split.sink.split.sink.split.i.i34.i.i ]
  %.sink31.i.i37.i.i = phi i8 [ %i.agl, %..sink.split.sink.split.i_crit_edge.i41.i.i ], [ %i.agt, %.sink.split.sink.split.sink.split.i.i34.i.i ]
  store i8 %.sink31.i.i37.i.i, ptr %i.agu, align 1
  %i.agv = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.agw = getelementptr i8, ptr %i.agv, i64 1    ; 2 uses
  store ptr %i.agw, ptr %i.sj, align 8
  %i.agx = getelementptr i8, ptr %.sroa.8.4.i.i.i, i64 1 ; 2 uses
  %i.agy = load i8, ptr %i.agx, align 1, !noundef !7
  br label %.sink.split.i.i38.i.i

.sink.split.i.i38.i.i:                            ; preds = %.sink.split.sink.split.i.i36.i.i, %..sink.split.i_crit_edge.i42.i.i
  %i.agz = phi ptr [ %.pre275.i.i.i, %..sink.split.i_crit_edge.i42.i.i ], [ %i.agw, %.sink.split.sink.split.i.i36.i.i ]
  %.sroa.8.5.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.i_crit_edge.i42.i.i ], [ %i.agx, %.sink.split.sink.split.i.i36.i.i ]
  %.sink.i.i39.i.i = phi i8 [ %i.agl, %..sink.split.i_crit_edge.i42.i.i ], [ %i.agy, %.sink.split.sink.split.i.i36.i.i ]
  store i8 %.sink.i.i39.i.i, ptr %i.agz, align 1
  %i.aha = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.ahb = getelementptr i8, ptr %i.aha, i64 1
  store ptr %i.ahb, ptr %i.sj, align 8
  %i.ahc = getelementptr i8, ptr %.sroa.8.5.i.i.i, i64 1
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hi, %.sink.split.i.i38.i.i
  %.sroa.8.2.i.i.i = phi ptr [ %i.ahc, %.sink.split.i.i38.i.i ], [ %.sroa.8.0265.i.i.i, %bb.hi ]
  %i.ahd = load i32, ptr %i.sg, align 8, !noundef !7
  %i.ahe = add i32 %i.ahd, 1
  store i32 %i.ahe, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i

bb.hh:                                            ; preds = %bb.hf
  %i.ahf = and i8 %i.agl, -16
  %i.ahg = icmp eq i8 %i.ahf, -32
  br i1 %i.ahg, label %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i, label %bb.hi

..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i: ; preds = %bb.hh
  %.pre273.i.i.i = load ptr, ptr %i.sj, align 8
  br label %.sink.split.sink.split.sink.split.i.i34.i.i

bb.hi:                                            ; preds = %bb.hh
  %i.ahh = and i8 %i.agl, -8
  %i.ahi = icmp eq i8 %i.ahh, -16
  br i1 %i.ahi, label %bb.hj, label %bb.hg

bb.hj:                                            ; preds = %bb.hi
  %i.ahj = load ptr, ptr %i.sj, align 8, !noundef !7
  store i8 %i.agl, ptr %i.ahj, align 1
  %i.ahk = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 1    ; 2 uses
  store ptr %i.ahl, ptr %i.sj, align 8
  %i.ahm = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1 ; 2 uses
  %i.ahn = load i8, ptr %i.ahm, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i.i34.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i: ; preds = %bb.hg, %bb.hd
  %.109.i.i.i = phi ptr [ @14, %bb.hd ], [ @15, %bb.hg ]
  %.sroa.8.6.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %bb.hd ], [ %.sroa.8.2.i.i.i, %bb.hg ]
  %i.aho = load i8, ptr %.109.i.i.i, align 1, !range !11, !noundef !7
  %i.ahp = trunc nuw i8 %i.aho to i1
  br i1 %i.ahp, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.hk:                                            ; preds = %bb.hs, %bb.hc
  %i.ahq = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 5
  %i.ahs = load ptr, ptr %i.sk, align 8, !noundef !7
  %i.aht = icmp ult ptr %i.ahr, %i.ahs
  br i1 %i.aht, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i: ; preds = %bb.hk
  %i.ahu = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.ahu, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i, label %bb.hl

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i, %bb.hk
  br label %bb.hl

bb.hl:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i
  %i.ahv = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i ]
  %i.ahw = load i8, ptr %i.ahv, align 1, !range !11, !noundef !7
  %i.ahx = trunc nuw i8 %i.ahw to i1
  br i1 %i.ahx, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahy = load i8, ptr %.sroa.8.0265.i.i.i, align 1, !noundef !7 ; 8 uses
  %i.ahz = icmp sgt i8 %i.ahy, -1
  br i1 %i.ahz, label %..sink.split.i202_crit_edge.i.i.i, label %bb.hn

..sink.split.i202_crit_edge.i.i.i:                ; preds = %bb.hm
  %.pre272.i.i.i = load ptr, ptr %i.sj, align 8
  br label %.sink.split.i202.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.aia = and i8 %i.ahy, -32
  %i.aib = icmp eq i8 %i.aia, -64
  br i1 %i.aib, label %..sink.split.sink.split.i200_crit_edge.i.i.i, label %bb.hp

..sink.split.sink.split.i200_crit_edge.i.i.i:     ; preds = %bb.hn
  %.pre271.i.i.i = load ptr, ptr %i.sj, align 8
  br label %.sink.split.sink.split.i200.i.i.i

.sink.split.sink.split.sink.split.i198.i.i.i:     ; preds = %bb.hr, %..sink.split.sink.split.sink.split.i198_crit_edge.i.i.i
  %i.aic = phi ptr [ %.pre.i32.i.i, %..sink.split.sink.split.sink.split.i198_crit_edge.i.i.i ], [ %i.aiy, %bb.hr ]
  %.sroa.8.8.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.sink.split.sink.split.i198_crit_edge.i.i.i ], [ %i.aiz, %bb.hr ]
  %.sink38.i199.i.i.i = phi i8 [ %i.ahy, %..sink.split.sink.split.sink.split.i198_crit_edge.i.i.i ], [ %i.aja, %bb.hr ]
  store i8 %.sink38.i199.i.i.i, ptr %i.aic, align 1
  %i.aid = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.aie = getelementptr i8, ptr %i.aid, i64 1    ; 2 uses
  store ptr %i.aie, ptr %i.sj, align 8
  %i.aif = getelementptr i8, ptr %.sroa.8.8.i.i.i, i64 1 ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 1, !noundef !7
  br label %.sink.split.sink.split.i200.i.i.i

.sink.split.sink.split.i200.i.i.i:                ; preds = %.sink.split.sink.split.sink.split.i198.i.i.i, %..sink.split.sink.split.i200_crit_edge.i.i.i
  %i.aih = phi ptr [ %.pre271.i.i.i, %..sink.split.sink.split.i200_crit_edge.i.i.i ], [ %i.aie, %.sink.split.sink.split.sink.split.i198.i.i.i ]
  %.sroa.8.9.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.sink.split.i200_crit_edge.i.i.i ], [ %i.aif, %.sink.split.sink.split.sink.split.i198.i.i.i ]
  %.sink31.i201.i.i.i = phi i8 [ %i.ahy, %..sink.split.sink.split.i200_crit_edge.i.i.i ], [ %i.aig, %.sink.split.sink.split.sink.split.i198.i.i.i ]
  store i8 %.sink31.i201.i.i.i, ptr %i.aih, align 1
  %i.aii = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.aij = getelementptr i8, ptr %i.aii, i64 1    ; 2 uses
  store ptr %i.aij, ptr %i.sj, align 8
  %i.aik = getelementptr i8, ptr %.sroa.8.9.i.i.i, i64 1 ; 2 uses
  %i.ail = load i8, ptr %i.aik, align 1, !noundef !7
  br label %.sink.split.i202.i.i.i

.sink.split.i202.i.i.i:                           ; preds = %.sink.split.sink.split.i200.i.i.i, %..sink.split.i202_crit_edge.i.i.i
  %i.aim = phi ptr [ %.pre272.i.i.i, %..sink.split.i202_crit_edge.i.i.i ], [ %i.aij, %.sink.split.sink.split.i200.i.i.i ]
  %.sroa.8.10.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.i202_crit_edge.i.i.i ], [ %i.aik, %.sink.split.sink.split.i200.i.i.i ]
  %.sink.i203.i.i.i = phi i8 [ %i.ahy, %..sink.split.i202_crit_edge.i.i.i ], [ %i.ail, %.sink.split.sink.split.i200.i.i.i ]
  store i8 %.sink.i203.i.i.i, ptr %i.aim, align 1
  %i.ain = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.aio = getelementptr i8, ptr %i.ain, i64 1
  store ptr %i.aio, ptr %i.sj, align 8
  %i.aip = getelementptr i8, ptr %.sroa.8.10.i.i.i, i64 1
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hq, %.sink.split.i202.i.i.i
  %.sroa.8.7.i.i.i = phi ptr [ %i.aip, %.sink.split.i202.i.i.i ], [ %.sroa.8.0265.i.i.i, %bb.hq ]
  %i.aiq = load i32, ptr %i.sg, align 8, !noundef !7
  %i.air = add i32 %i.aiq, 1
  store i32 %i.air, ptr %i.sg, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i

bb.hp:                                            ; preds = %bb.hn
  %i.ais = and i8 %i.ahy, -16
  %i.ait = icmp eq i8 %i.ais, -32
  br i1 %i.ait, label %..sink.split.sink.split.sink.split.i198_crit_edge.i.i.i, label %bb.hq

..sink.split.sink.split.sink.split.i198_crit_edge.i.i.i: ; preds = %bb.hp
  %.pre.i32.i.i = load ptr, ptr %i.sj, align 8
  br label %.sink.split.sink.split.sink.split.i198.i.i.i

bb.hq:                                            ; preds = %bb.hp
  %i.aiu = and i8 %i.ahy, -8
  %i.aiv = icmp eq i8 %i.aiu, -16
  br i1 %i.aiv, label %bb.hr, label %bb.ho

bb.hr:                                            ; preds = %bb.hq
  %i.aiw = load ptr, ptr %i.sj, align 8, !noundef !7
  store i8 %i.ahy, ptr %i.aiw, align 1
  %i.aix = load ptr, ptr %i.sj, align 8, !noundef !7
  %i.aiy = getelementptr i8, ptr %i.aix, i64 1    ; 2 uses
  store ptr %i.aiy, ptr %i.sj, align 8
  %i.aiz = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1 ; 2 uses
  %i.aja = load i8, ptr %i.aiz, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i198.i.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i: ; preds = %bb.ho, %bb.hl
  %.110.i.i.i = phi ptr [ @14, %bb.hl ], [ @15, %bb.ho ]
  %.sroa.8.11.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %bb.hl ], [ %.sroa.8.7.i.i.i, %bb.ho ]
  %i.ajb = load i8, ptr %.110.i.i.i, align 1, !range !11, !noundef !7
  %i.ajc = trunc nuw i8 %i.ajb to i1
  br i1 %i.ajc, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.hs:                                            ; preds = %bb.hc
  %i.ajd = load i32, ptr %i.sg, align 8, !noundef !7
  %i.aje = load i32, ptr %i.sh, align 4, !noundef !7
  %i.ajf = icmp sle i32 %i.ajd, %i.aje
  %.not83.i.i.i = icmp eq ptr %.sroa.8.0265.i.i.i, %i.ry
  %or.cond111.i.i.i = or i1 %.not83.i.i.i, %i.ajf
  %.not84.i.i.i = icmp eq ptr %.sroa.8.0265.i.i.i, %i.si
  %or.cond113.i.i.i = or i1 %.not84.i.i.i, %or.cond111.i.i.i
  br i1 %or.cond113.i.i.i, label %bb.hk, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ajg = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.ajg, label %bb.hu, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

bb.hu:                                            ; preds = %bb.ht
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.aji = load i8, ptr %i.ajh, align 1, !noundef !7
  %i.ajj = icmp eq i8 %i.aji, 32
  br i1 %i.ajj, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.ajk = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E(ptr noundef nonnull %0, i8 noundef 92)
  br i1 %i.ajk, label %bb.hw, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.ajl = load i8, ptr %.sroa.8.0265.i.i.i, align 1, !noundef !7 ; 4 uses
  %i.ajm = icmp sgt i8 %i.ajl, -1
  br i1 %i.ajm, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ajn = and i8 %i.ajl, -32
  %i.ajo = icmp eq i8 %i.ajn, -64
  br i1 %i.ajo, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.ia, %bb.hz, %bb.hx, %bb.hw
  %.sroa.057.0.i.i.i = phi i64 [ 3, %bb.hz ], [ 1, %bb.hw ], [ 2, %bb.hx ], [ %.116.i.i.i, %bb.ia ]
  %i.ajp = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 %.sroa.057.0.i.i.i
  br label %.loopexit.i.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.ajq = and i8 %i.ajl, -16
  %i.ajr = icmp eq i8 %i.ajq, -32
  br i1 %i.ajr, label %bb.hy, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ajs = and i8 %i.ajl, -8
  %i.ajt = icmp eq i8 %i.ajs, -16
  %.116.i.i.i = select i1 %i.ajt, i64 4, i64 0
  br label %bb.hy

bb.ib:                                            ; preds = %_ZN14unsafe_libyaml7emitter28yaml_emitter_increase_indent17hc5bad6e2612ad6a7E.exit.i
  %i.aju = load ptr, ptr %i.ef, align 8, !noundef !7 ; 4 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ajw = load i64, ptr %i.ajv, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ajx = getelementptr i8, ptr %i.aju, i64 %i.ajw ; 2 uses
  store ptr %i.aju, ptr %i.b, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ajx, ptr %i.ajy, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store ptr %i.aju, ptr %i.ajz, align 8
  %i.aka = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter28yaml_emitter_write_indicator17h4c6ead6ac3f390a8E(ptr noundef nonnull %0, ptr noundef nonnull @117, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.aka, label %bb.ic, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i

bb.ic:                                            ; preds = %bb.ib
  %i.akb = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter37yaml_emitter_write_block_scalar_hints17h652d890552b8a56aE(ptr noundef nonnull %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  br i1 %i.akb, label %bb.id, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i

bb.id:                                            ; preds = %bb.ic
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 18 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !noundef !7
  %i.ake = getelementptr i8, ptr %i.akd, i64 5
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.akg = load ptr, ptr %i.akf, align 8, !noundef !7
  %i.akh = icmp ult ptr %i.ake, %i.akg
  br i1 %i.akh, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i60.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i45.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i45.i.i: ; preds = %bb.id
  %i.aki = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aki, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i60.i.i, label %bb.ie

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i60.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i45.i.i, %bb.id
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i60.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i45.i.i
  %i.akj = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i60.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i45.i.i ]
  %i.akk = load i8, ptr %i.akj, align 1, !range !11, !noundef !7
  %i.akl = trunc nuw i8 %i.akk to i1
  br i1 %i.akl, label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i46.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.akn = load i32, ptr %i.akm, align 4, !range !10, !noundef !7
  switch i32 %i.akn, label %default.unreachable [
    i32 1, label %bb.ig
    i32 2, label %.sink.split.i.i57.i.i
    i32 3, label %bb.ii
    i32 0, label %bb.ih
  ]

bb.ig:                                            ; preds = %bb.if
  br label %.sink.split.i.i57.i.i

.sink.split.i.i57.i.i:                            ; preds = %bb.ii, %bb.ig, %bb.if
  %.sink.i.i58.i.i = phi i8 [ 10, %bb.ii ], [ 13, %bb.ig ], [ 10, %bb.if ]
  %i.ako = load ptr, ptr %i.akc, align 8, !noundef !7 ; 2 uses
  %i.akp = getelementptr i8, ptr %i.ako, i64 1
  store ptr %i.akp, ptr %i.akc, align 8
  store i8 %.sink.i.i58.i.i, ptr %i.ako, align 1
  br label %bb.ih

bb.ih:                                            ; preds = %.sink.split.i.i57.i.i, %bb.if
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.akq, align 8
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4, !noundef !7
  %i.akt = add i32 %i.aks, 1
  store i32 %i.akt, ptr %i.akr, align 4
  br label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i46.i.i

bb.ii:                                            ; preds = %bb.if
  %i.aku = load ptr, ptr %i.akc, align 8, !noundef !7 ; 2 uses
  %i.akv = getelementptr i8, ptr %i.aku, i64 1
  store ptr %i.akv, ptr %i.akc, align 8
  store i8 13, ptr %i.aku, align 1
  br label %.sink.split.i.i57.i.i

_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i46.i.i: ; preds = %bb.ih, %bb.ie
  %.11.i.i.i = phi ptr [ @14, %bb.ie ], [ @15, %bb.ih ]
  %i.akw = load i8, ptr %.11.i.i.i, align 1, !range !11, !noundef !7
  %i.akx = trunc nuw i8 %i.akw to i1
  br i1 %i.akx, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i, label %bb.ij

bb.ij:                                            ; preds = %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i46.i.i
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 2 uses
  store i8 1, ptr %i.aky, align 1
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %i.akz, align 4
  %.not26.i47.i.i = icmp eq i64 %i.ajw, 0
  br i1 %.not26.i47.i.i, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.i, label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %bb.ij
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ip, %.lr.ph.i48.i.i
  %i.alb = phi ptr [ %i.ajx, %.lr.ph.i48.i.i ], [ %i.alo, %bb.ip ]
  %i.alc = phi ptr [ %i.aju, %.lr.ph.i48.i.i ], [ %i.alp, %bb.ip ] ; 11 uses
  %.sroa.01.027.i.i.i = phi i1 [ true, %.lr.ph.i48.i.i ], [ %.sroa.01.1.i.i.i, %bb.ip ]
  %i.ald = load i8, ptr %i.alc, align 1, !noundef !7
  switch i8 %i.ald, label %.thread21.i.i.i [
    i8 13, label %bb.il
    i8 10, label %bb.il
    i8 -62, label %bb.im
    i8 -30, label %bb.in
  ]

bb.il:                                            ; preds = %bb.io, %bb.im, %bb.ik, %bb.ik
  %i.ale = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter11WRITE_BREAK17h4b685cba92997e93E(ptr noundef nonnull %0, ptr noundef %i.b)
  br i1 %i.ale, label %._crit_edge30.i.i.i, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i

._crit_edge30.i.i.i:                              ; preds = %bb.il
  %.pre31.i.i.i = load ptr, ptr %i.ajz, align 8
  %.pre32.i.i.i = load ptr, ptr %i.ajy, align 8
  br label %bb.ip

bb.im:                                            ; preds = %bb.ik
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 1
  %i.alg = load i8, ptr %i.alf, align 1, !noundef !7
  %i.alh = icmp eq i8 %i.alg, -123
  br i1 %i.alh, label %bb.il, label %.thread21.i.i.i

bb.in:                                            ; preds = %bb.ik
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alc, i64 1
  %i.alj = load i8, ptr %i.ali, align 1, !noundef !7
  %i.alk = icmp eq i8 %i.alj, -128
  br i1 %i.alk, label %bb.io, label %.thread21.i.i.i

bb.io:                                            ; preds = %bb.in
  %i.all = getelementptr inbounds nuw i8, ptr %i.alc, i64 2
  %i.alm = load i8, ptr %i.all, align 1, !noundef !7
  %i.aln = and i8 %i.alm, -2
  %switch94.i.i = icmp eq i8 %i.aln, -88
  br i1 %switch94.i.i, label %bb.il, label %.thread21.i.i.i

bb.ip:                                            ; preds = %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i, %._crit_edge30.i.i.i
  %i.alo = phi ptr [ %.pre32.i.i.i, %._crit_edge30.i.i.i ], [ %i.alb, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i ] ; 2 uses
  %i.alp = phi ptr [ %.pre31.i.i.i, %._crit_edge30.i.i.i ], [ %i.anf, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i ] ; 2 uses
  %storemerge.i.i.i = phi i8 [ 1, %._crit_edge30.i.i.i ], [ 0, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i ]
  %.sroa.01.1.i.i.i = phi i1 [ true, %._crit_edge30.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i ]
  store i8 %storemerge.i.i.i, ptr %i.aky, align 1
  %.not.i.i.i = icmp eq ptr %i.alp, %i.alo
  br i1 %.not.i.i.i, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.i, label %bb.ik

.thread21.i.i.i:                                  ; preds = %bb.io, %bb.in, %bb.im, %bb.ik
  br i1 %.sroa.01.027.i.i.i, label %bb.iy, label %bb.iq

bb.iq:                                            ; preds = %bb.iy, %.thread21.i.i.i
  %i.alq = load ptr, ptr %i.akc, align 8, !noundef !7
  %i.alr = getelementptr i8, ptr %i.alq, i64 5
  %i.als = load ptr, ptr %i.akf, align 8, !noundef !7
  %i.alt = icmp ult ptr %i.alr, %i.als
  br i1 %i.alt, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i19.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i15.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i15.i.i.i: ; preds = %bb.iq
  %i.alu = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.alu, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i19.i.i.i, label %bb.ir

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i19.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i15.i.i.i, %bb.iq
  br label %bb.ir

bb.ir:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i19.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i15.i.i.i
  %i.alv = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i19.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i15.i.i.i ]
  %i.alw = load i8, ptr %i.alv, align 1, !range !11, !noundef !7
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aly = load i8, ptr %i.alc, align 1, !noundef !7 ; 8 uses
  %i.alz = icmp sgt i8 %i.aly, -1
  br i1 %i.alz, label %..sink.split.i17_crit_edge.i.i.i, label %bb.it

..sink.split.i17_crit_edge.i.i.i:                 ; preds = %bb.is
  %.pre29.i.i.i = load ptr, ptr %i.akc, align 8
  br label %.sink.split.i17.i.i.i

bb.it:                                            ; preds = %bb.is
  %i.ama = and i8 %i.aly, -32
  %i.amb = icmp eq i8 %i.ama, -64
  br i1 %i.amb, label %..sink.split.sink.split.i_crit_edge.i56.i.i, label %bb.iv

..sink.split.sink.split.i_crit_edge.i56.i.i:      ; preds = %bb.it
  %.pre28.i.i.i = load ptr, ptr %i.akc, align 8
  br label %.sink.split.sink.split.i.i52.i.i

.sink.split.sink.split.sink.split.i.i50.i.i:      ; preds = %bb.ix, %..sink.split.sink.split.sink.split.i_crit_edge.i54.i.i
  %i.amc = phi ptr [ %i.and, %bb.ix ], [ %i.alc, %..sink.split.sink.split.sink.split.i_crit_edge.i54.i.i ]
end_hunk_2
begin_hunk_3_@_ZN14unsafe_libyaml7emitter22yaml_emitter_emit_node17h27b3476a51eec082E:bb.a
  %i.amo = phi ptr [ %i.alc, %..sink.split.i17_crit_edge.i.i.i ], [ %i.amm, %.sink.split.sink.split.i.i52.i.i ]
  %i.amp = phi ptr [ %.pre29.i.i.i, %..sink.split.i17_crit_edge.i.i.i ], [ %i.aml, %.sink.split.sink.split.i.i52.i.i ]
  %.sink.i18.i.i.i = phi i8 [ %i.aly, %..sink.split.i17_crit_edge.i.i.i ], [ %i.amn, %.sink.split.sink.split.i.i52.i.i ]
  store i8 %.sink.i18.i.i.i, ptr %i.amp, align 1
  %i.amq = load ptr, ptr %i.akc, align 8, !noundef !7
  %i.amr = getelementptr i8, ptr %i.amq, i64 1
  store ptr %i.amr, ptr %i.akc, align 8
  %i.ams = getelementptr i8, ptr %i.amo, i64 1    ; 2 uses
  store ptr %i.ams, ptr %i.ajz, align 8
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iw, %.sink.split.i17.i.i.i
  %i.amt = phi ptr [ %i.alc, %bb.iw ], [ %i.ams, %.sink.split.i17.i.i.i ]
  %i.amu = load i32, ptr %i.ala, align 8, !noundef !7
  %i.amv = add i32 %i.amu, 1
  store i32 %i.amv, ptr %i.ala, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i

bb.iv:                                            ; preds = %bb.it
  %i.amw = and i8 %i.aly, -16
  %i.amx = icmp eq i8 %i.amw, -32
  br i1 %i.amx, label %..sink.split.sink.split.sink.split.i_crit_edge.i54.i.i, label %bb.iw

..sink.split.sink.split.sink.split.i_crit_edge.i54.i.i: ; preds = %bb.iv
  %.pre.i55.i.i = load ptr, ptr %i.akc, align 8
  br label %.sink.split.sink.split.sink.split.i.i50.i.i

bb.iw:                                            ; preds = %bb.iv
  %i.amy = and i8 %i.aly, -8
  %i.amz = icmp eq i8 %i.amy, -16
  br i1 %i.amz, label %bb.ix, label %bb.iu

bb.ix:                                            ; preds = %bb.iw
  %i.ana = load ptr, ptr %i.akc, align 8, !noundef !7
  store i8 %i.aly, ptr %i.ana, align 1
  %i.anb = load ptr, ptr %i.akc, align 8, !noundef !7
  %i.anc = getelementptr i8, ptr %i.anb, i64 1    ; 2 uses
  store ptr %i.anc, ptr %i.akc, align 8
  %i.and = getelementptr i8, ptr %i.alc, i64 1    ; 3 uses
  store ptr %i.and, ptr %i.ajz, align 8
  %i.ane = load i8, ptr %i.and, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i.i50.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i: ; preds = %bb.iu, %bb.ir
  %i.anf = phi ptr [ %i.alc, %bb.ir ], [ %i.amt, %bb.iu ]
  %.13.i.i.i = phi ptr [ @14, %bb.ir ], [ @15, %bb.iu ]
  %i.ang = load i8, ptr %.13.i.i.i, align 1, !range !11, !noundef !7
  %i.anh = trunc nuw i8 %i.ang to i1
  br i1 %i.anh, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i, label %bb.ip

bb.iy:                                            ; preds = %.thread21.i.i.i
  %i.ani = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.ani, label %bb.iq, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i

_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i: ; preds = %bb.iy, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i49.i.i, %bb.il, %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i46.i.i, %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.i: ; preds = %bb.ip, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

bb.iz:                                            ; preds = %_ZN14unsafe_libyaml7emitter28yaml_emitter_increase_indent17hc5bad6e2612ad6a7E.exit.i
  %i.anj = load ptr, ptr %i.ef, align 8, !noundef !7 ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.anl = load i64, ptr %i.ank, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.anm = getelementptr i8, ptr %i.anj, i64 %i.anl ; 2 uses
  store ptr %i.anj, ptr %i.a, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.anm, ptr %i.ann, align 8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %i.anj, ptr %i.ano, align 8
  %i.anp = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter28yaml_emitter_write_indicator17h4c6ead6ac3f390a8E(ptr noundef nonnull %0, ptr noundef nonnull @97, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.anp, label %bb.ja, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i

bb.ja:                                            ; preds = %bb.iz
  %i.anq = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter37yaml_emitter_write_block_scalar_hints17h652d890552b8a56aE(ptr noundef nonnull %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  br i1 %i.anq, label %bb.jb, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i

bb.jb:                                            ; preds = %bb.ja
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 23 uses
  %i.ans = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.ant = getelementptr i8, ptr %i.ans, i64 5
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !noundef !7
  %i.anw = icmp ult ptr %i.ant, %i.anv
  br i1 %i.anw, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i82.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i63.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i63.i.i: ; preds = %bb.jb
  %i.anx = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.anx, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i82.i.i, label %bb.jc

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i82.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i63.i.i, %bb.jb
  br label %bb.jc

bb.jc:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i82.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i63.i.i
  %i.any = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i82.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i63.i.i ]
  %i.anz = load i8, ptr %i.any, align 1, !range !11, !noundef !7
  %i.aoa = trunc nuw i8 %i.anz to i1
  br i1 %i.aoa, label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i64.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.aoc = load i32, ptr %i.aob, align 4, !range !10, !noundef !7
  switch i32 %i.aoc, label %default.unreachable [
    i32 1, label %bb.je
    i32 2, label %.sink.split.i.i80.i.i
    i32 3, label %bb.jg
    i32 0, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  br label %.sink.split.i.i80.i.i

.sink.split.i.i80.i.i:                            ; preds = %bb.jg, %bb.je, %bb.jd
  %.sink.i.i81.i.i = phi i8 [ 10, %bb.jg ], [ 13, %bb.je ], [ 10, %bb.jd ]
  %i.aod = load ptr, ptr %i.anr, align 8, !noundef !7 ; 2 uses
  %i.aoe = getelementptr i8, ptr %i.aod, i64 1
  store ptr %i.aoe, ptr %i.anr, align 8
  store i8 %.sink.i.i81.i.i, ptr %i.aod, align 1
  br label %bb.jf

bb.jf:                                            ; preds = %.sink.split.i.i80.i.i, %bb.jd
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.aof, align 8
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.aoh = load i32, ptr %i.aog, align 4, !noundef !7
  %i.aoi = add i32 %i.aoh, 1
  store i32 %i.aoi, ptr %i.aog, align 4
  br label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i64.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.aoj = load ptr, ptr %i.anr, align 8, !noundef !7 ; 2 uses
  %i.aok = getelementptr i8, ptr %i.aoj, i64 1
  store ptr %i.aok, ptr %i.anr, align 8
  store i8 13, ptr %i.aoj, align 1
  br label %.sink.split.i.i80.i.i

_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i64.i.i: ; preds = %bb.jf, %bb.jc
  %.60.i.i.i = phi ptr [ @14, %bb.jc ], [ @15, %bb.jf ]
  %i.aol = load i8, ptr %.60.i.i.i, align 1, !range !11, !noundef !7
  %i.aom = trunc nuw i8 %i.aol to i1
  br i1 %i.aom, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i, label %bb.jh

bb.jh:                                            ; preds = %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i64.i.i
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 2 uses
  store i8 1, ptr %i.aon, align 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %i.aoo, align 4
  %.not113.i.i.i = icmp eq i64 %i.anl, 0
  br i1 %.not113.i.i.i, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.i, label %.lr.ph.i65.i.i

.lr.ph.i65.i.i:                                   ; preds = %bb.jh
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 132
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jy, %.lr.ph.i65.i.i
  %i.aot = phi ptr [ %i.anm, %.lr.ph.i65.i.i ], [ %i.arb, %bb.jy ] ; 2 uses
  %i.aou = phi ptr [ %i.anj, %.lr.ph.i65.i.i ], [ %i.arc, %bb.jy ] ; 20 uses
  %.sroa.02.0115.i.i.i = phi i8 [ 1, %.lr.ph.i65.i.i ], [ %storemerge.i67.i.i, %bb.jy ] ; 2 uses
  %.sroa.05.0114.i.i.i = phi i1 [ true, %.lr.ph.i65.i.i ], [ %.sroa.05.1.i.i.i, %bb.jy ] ; 6 uses
  %i.aov = load i8, ptr %i.aou, align 1, !noundef !7 ; 3 uses
  switch i8 %i.aov, label %.thread81.i.i.i [
    i8 13, label %bb.jj
    i8 10, label %bb.jj
    i8 -62, label %bb.jk
    i8 -30, label %bb.jl
  ]

bb.jj:                                            ; preds = %bb.ji, %bb.ji
  %i.aow = trunc nuw i8 %.sroa.02.0115.i.i.i to i1
  %or.cond.i76.i.i = select i1 %i.aow, i1 true, i1 %.sroa.05.0114.i.i.i
  %i.aox = icmp ne i8 %i.aov, 10
  %or.cond102.not.i.i.i = or i1 %or.cond.i76.i.i, %i.aox
  br i1 %or.cond102.not.i.i.i, label %.loopexit.i75.i.i, label %.preheader.i77.i.i

bb.jk:                                            ; preds = %bb.ji
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aou, i64 1
  %i.aoz = load i8, ptr %i.aoy, align 1, !noundef !7
  %i.apa = icmp eq i8 %i.aoz, -123
  br i1 %i.apa, label %.loopexit.i75.i.i, label %.thread81.i.i.i

bb.jl:                                            ; preds = %bb.ji
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aou, i64 1
  %i.apc = load i8, ptr %i.apb, align 1, !noundef !7
  %i.apd = icmp eq i8 %i.apc, -128
  br i1 %i.apd, label %bb.jm, label %.thread81.i.i.i

bb.jm:                                            ; preds = %bb.jl
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aou, i64 2
  %i.apf = load i8, ptr %i.ape, align 1, !noundef !7
  %i.apg = and i8 %i.apf, -2
  %switch96.i.i = icmp eq i8 %i.apg, -88
  br i1 %switch96.i.i, label %.loopexit.i75.i.i, label %.thread81.i.i.i

.loopexit.i75.i.i:                                ; preds = %.preheader.i77.i.i, %.preheader.i77.i.i, %.preheader.i77.i.i, %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit74.i.i.i, %bb.js, %.thread92.i.i.i, %bb.jm, %bb.jk, %bb.jj
  %i.aph = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter11WRITE_BREAK17h4b685cba92997e93E(ptr noundef %0, ptr noundef %i.a)
  br i1 %i.aph, label %.loopexit._crit_edge.i.i.i, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i

.loopexit._crit_edge.i.i.i:                       ; preds = %.loopexit.i75.i.i
  %.pre123.i.i.i = load ptr, ptr %i.ano, align 8
  %.pre124.i.i.i = load ptr, ptr %i.ann, align 8
  br label %bb.jy

.preheader.i77.i.i:                               ; preds = %bb.jj, %bb.jq
  %i.api = phi i8 [ %.pre.i79.i.i, %bb.jq ], [ 10, %bb.jj ]
  %.sroa.09.0.i.i.i = phi i32 [ %i.apu, %bb.jq ], [ 0, %bb.jj ] ; 5 uses
  %i.apj = sext i32 %.sroa.09.0.i.i.i to i64
  %i.apk = getelementptr inbounds i8, ptr %i.aou, i64 %i.apj ; 3 uses
  switch i8 %i.api, label %.thread98.i.i.i [
    i8 13, label %bb.jq
    i8 10, label %bb.jq
    i8 -62, label %bb.jn
    i8 -30, label %bb.jo
    i8 32, label %.loopexit.i75.i.i
    i8 9, label %.loopexit.i75.i.i
    i8 0, label %.loopexit.i75.i.i
  ]

bb.jn:                                            ; preds = %.preheader.i77.i.i
  %i.apl = getelementptr i8, ptr %i.apk, i64 1
  %i.apm = load i8, ptr %i.apl, align 1, !noundef !7
  %i.apn = icmp eq i8 %i.apm, -123
  br i1 %i.apn, label %bb.jq, label %.thread92.i.i.i

bb.jo:                                            ; preds = %.preheader.i77.i.i
  %i.apo = getelementptr i8, ptr %i.apk, i64 1
  %i.app = load i8, ptr %i.apo, align 1, !noundef !7
  %i.apq = icmp eq i8 %i.app, -128
  br i1 %i.apq, label %bb.jp, label %bb.jr

bb.jp:                                            ; preds = %bb.jo
  %i.apr = getelementptr i8, ptr %i.apk, i64 2
  %i.aps = load i8, ptr %i.apr, align 1, !noundef !7
  %i.apt = and i8 %i.aps, -2
  %switch98.i.i = icmp eq i8 %i.apt, -88
  br i1 %switch98.i.i, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp, %bb.jn, %.preheader.i77.i.i, %.preheader.i77.i.i
  %.sroa.037.0.i.i.i = phi i32 [ 2, %bb.jn ], [ 1, %.preheader.i77.i.i ], [ 1, %.preheader.i77.i.i ], [ 3, %bb.jp ]
  %i.apu = add i32 %.sroa.037.0.i.i.i, %.sroa.09.0.i.i.i ; 2 uses
  %.phi.trans.insert.i.i.i = sext i32 %i.apu to i64
  %.phi.trans.insert119.i.i.i = getelementptr inbounds i8, ptr %i.aou, i64 %.phi.trans.insert.i.i.i
  %.pre.i79.i.i = load i8, ptr %.phi.trans.insert119.i.i.i, align 1
  br label %.preheader.i77.i.i

.thread92.i.i.i:                                  ; preds = %bb.jn
  %i.apv = add i32 %.sroa.09.0.i.i.i, 1
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr inbounds i8, ptr %i.aou, i64 %i.apw
  %i.apy = load i8, ptr %i.apx, align 1, !noundef !7
  %i.apz = icmp eq i8 %i.apy, -123
  br i1 %i.apz, label %.loopexit.i75.i.i, label %.thread98.i.i.i

bb.jr:                                            ; preds = %bb.jp, %bb.jo
  %i.aqa = add i32 %.sroa.09.0.i.i.i, 1
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds i8, ptr %i.aou, i64 %i.aqb
  %i.aqd = load i8, ptr %i.aqc, align 1, !noundef !7
  %i.aqe = icmp eq i8 %i.aqd, -128
  br i1 %i.aqe, label %bb.js, label %.thread98.i.i.i

bb.js:                                            ; preds = %bb.jr
  %i.aqf = add i32 %.sroa.09.0.i.i.i, 2
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds i8, ptr %i.aou, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !noundef !7
  %i.aqj = and i8 %i.aqi, -2
  %switch100.i.i = icmp eq i8 %i.aqj, -88
  br i1 %switch100.i.i, label %.loopexit.i75.i.i, label %.thread98.i.i.i

.thread98.i.i.i:                                  ; preds = %.preheader.i77.i.i, %bb.js, %bb.jr, %.thread92.i.i.i
  %i.aqk = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.aql = getelementptr i8, ptr %i.aqk, i64 5
  %i.aqm = load ptr, ptr %i.anu, align 8, !noundef !7
  %i.aqn = icmp ult ptr %i.aql, %i.aqm
  br i1 %i.aqn, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i73.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i68.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i68.i.i.i: ; preds = %.thread98.i.i.i
  %i.aqo = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aqo, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i73.i.i.i, label %bb.jt

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i73.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i68.i.i.i, %.thread98.i.i.i
  br label %bb.jt

bb.jt:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i73.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i68.i.i.i
  %i.aqp = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i73.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i68.i.i.i ]
  %i.aqq = load i8, ptr %i.aqp, align 1, !range !11, !noundef !7
  %i.aqr = trunc nuw i8 %i.aqq to i1
  br i1 %i.aqr, label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit74.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aqs = load i32, ptr %i.aop, align 4, !range !10, !noundef !7
  switch i32 %i.aqs, label %default.unreachable [
    i32 1, label %bb.jv
    i32 2, label %.sink.split.i70.i.i.i
    i32 3, label %bb.jx
    i32 0, label %bb.jw
  ]

bb.jv:                                            ; preds = %bb.ju
  br label %.sink.split.i70.i.i.i

.sink.split.i70.i.i.i:                            ; preds = %bb.jx, %bb.jv, %bb.ju
  %.sink.i71.i.i.i = phi i8 [ 10, %bb.jx ], [ 13, %bb.jv ], [ 10, %bb.ju ]
  %i.aqt = load ptr, ptr %i.anr, align 8, !noundef !7 ; 2 uses
  %i.aqu = getelementptr i8, ptr %i.aqt, i64 1
  store ptr %i.aqu, ptr %i.anr, align 8
  store i8 %.sink.i71.i.i.i, ptr %i.aqt, align 1
  br label %bb.jw

bb.jw:                                            ; preds = %.sink.split.i70.i.i.i, %bb.ju
  store i32 0, ptr %i.aoq, align 8
  %i.aqv = load i32, ptr %i.aor, align 4, !noundef !7
  %i.aqw = add i32 %i.aqv, 1
  store i32 %i.aqw, ptr %i.aor, align 4
  br label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit74.i.i.i

bb.jx:                                            ; preds = %bb.ju
  %i.aqx = load ptr, ptr %i.anr, align 8, !noundef !7 ; 2 uses
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 1
  store ptr %i.aqy, ptr %i.anr, align 8
  store i8 13, ptr %i.aqx, align 1
  br label %.sink.split.i70.i.i.i

_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit74.i.i.i: ; preds = %bb.jw, %bb.jt
  %.63.i.i.i = phi ptr [ @14, %bb.jt ], [ @15, %bb.jw ]
  %i.aqz = load i8, ptr %.63.i.i.i, align 1, !range !11, !noundef !7
  %i.ara = trunc nuw i8 %i.aqz to i1
  br i1 %i.ara, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i, label %.loopexit.i75.i.i

bb.jy:                                            ; preds = %bb.ko, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i, %.loopexit._crit_edge.i.i.i
  %i.arb = phi ptr [ %.pre124.i.i.i, %.loopexit._crit_edge.i.i.i ], [ %i.aot, %bb.ko ], [ %i.aot, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i ] ; 2 uses
  %i.arc = phi ptr [ %.pre123.i.i.i, %.loopexit._crit_edge.i.i.i ], [ %i.atm, %bb.ko ], [ %i.asy, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i ] ; 2 uses
  %storemerge.i67.i.i = phi i8 [ 1, %.loopexit._crit_edge.i.i.i ], [ 0, %bb.ko ], [ 0, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i ] ; 2 uses
  %.sroa.05.1.i.i.i = phi i1 [ %.sroa.05.0114.i.i.i, %.loopexit._crit_edge.i.i.i ], [ %.sroa.05.0114.i.i.i, %bb.ko ], [ %.sroa.05.2101.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i ]
  store i8 %storemerge.i67.i.i, ptr %i.aon, align 1
  %.not.i68.i.i = icmp eq ptr %i.arc, %i.arb
  br i1 %.not.i68.i.i, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.i, label %bb.ji

.thread81.i.i.i:                                  ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  %i.ard = trunc nuw i8 %.sroa.02.0115.i.i.i to i1
  br i1 %i.ard, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %.thread81.i.i.i
  %i.are = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.are, label %.thread99.i.i.i, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i

.thread99.i.i.i:                                  ; preds = %bb.jz
  %i.arf = load i8, ptr %i.aou, align 1, !noundef !7 ; 2 uses
  %i.arg = icmp eq i8 %i.arf, 32
  %i.arh = icmp eq i8 %i.arf, 9
  %narrow.i.i.i = or i1 %i.arg, %i.arh
  br label %bb.kb

bb.ka:                                            ; preds = %.thread81.i.i.i
  %i.ari = icmp eq i8 %i.aov, 32
  br i1 %i.ari, label %bb.kj, label %bb.kb

bb.kb:                                            ; preds = %bb.kk, %bb.kj, %bb.ka, %.thread99.i.i.i
  %.sroa.05.2101.i.i.i = phi i1 [ %narrow.i.i.i, %.thread99.i.i.i ], [ %.sroa.05.0114.i.i.i, %bb.kk ], [ %.sroa.05.0114.i.i.i, %bb.kj ], [ %.sroa.05.0114.i.i.i, %bb.ka ]
  %i.arj = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.ark = getelementptr i8, ptr %i.arj, i64 5
  %i.arl = load ptr, ptr %i.anu, align 8, !noundef !7
  %i.arm = icmp ult ptr %i.ark, %i.arl
  br i1 %i.arm, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i79.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i75.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i75.i.i.i: ; preds = %bb.kb
  %i.arn = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.arn, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i79.i.i.i, label %bb.kc

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i79.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i75.i.i.i, %bb.kb
  br label %bb.kc

bb.kc:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i79.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i75.i.i.i
  %i.aro = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i79.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i75.i.i.i ]
  %i.arp = load i8, ptr %i.aro, align 1, !range !11, !noundef !7
  %i.arq = trunc nuw i8 %i.arp to i1
  br i1 %i.arq, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.arr = load i8, ptr %i.aou, align 1, !noundef !7 ; 8 uses
  %i.ars = icmp sgt i8 %i.arr, -1
  br i1 %i.ars, label %..sink.split.i77_crit_edge.i.i.i, label %bb.ke

..sink.split.i77_crit_edge.i.i.i:                 ; preds = %bb.kd
  %.pre122.i.i.i = load ptr, ptr %i.anr, align 8
  br label %.sink.split.i77.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.art = and i8 %i.arr, -32
  %i.aru = icmp eq i8 %i.art, -64
  br i1 %i.aru, label %..sink.split.sink.split.i_crit_edge.i74.i.i, label %bb.kg

..sink.split.sink.split.i_crit_edge.i74.i.i:      ; preds = %bb.ke
  %.pre121.i.i.i = load ptr, ptr %i.anr, align 8
  br label %.sink.split.sink.split.i.i71.i.i

.sink.split.sink.split.sink.split.i.i69.i.i:      ; preds = %bb.ki, %..sink.split.sink.split.sink.split.i_crit_edge.i73.i.i
  %i.arv = phi ptr [ %i.asw, %bb.ki ], [ %i.aou, %..sink.split.sink.split.sink.split.i_crit_edge.i73.i.i ]
  %i.arw = phi ptr [ %i.asv, %bb.ki ], [ %.pre120.i.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i73.i.i ]
  %.sink38.i.i70.i.i = phi i8 [ %i.asx, %bb.ki ], [ %i.arr, %..sink.split.sink.split.sink.split.i_crit_edge.i73.i.i ]
  store i8 %.sink38.i.i70.i.i, ptr %i.arw, align 1
  %i.arx = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.ary = getelementptr i8, ptr %i.arx, i64 1    ; 2 uses
  store ptr %i.ary, ptr %i.anr, align 8
  %i.arz = getelementptr i8, ptr %i.arv, i64 1    ; 3 uses
  store ptr %i.arz, ptr %i.ano, align 8
  %i.asa = load i8, ptr %i.arz, align 1, !noundef !7
  br label %.sink.split.sink.split.i.i71.i.i

.sink.split.sink.split.i.i71.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i.i69.i.i, %..sink.split.sink.split.i_crit_edge.i74.i.i
  %i.asb = phi ptr [ %i.aou, %..sink.split.sink.split.i_crit_edge.i74.i.i ], [ %i.arz, %.sink.split.sink.split.sink.split.i.i69.i.i ]
  %i.asc = phi ptr [ %.pre121.i.i.i, %..sink.split.sink.split.i_crit_edge.i74.i.i ], [ %i.ary, %.sink.split.sink.split.sink.split.i.i69.i.i ]
  %.sink31.i.i72.i.i = phi i8 [ %i.arr, %..sink.split.sink.split.i_crit_edge.i74.i.i ], [ %i.asa, %.sink.split.sink.split.sink.split.i.i69.i.i ]
  store i8 %.sink31.i.i72.i.i, ptr %i.asc, align 1
  %i.asd = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.ase = getelementptr i8, ptr %i.asd, i64 1    ; 2 uses
  store ptr %i.ase, ptr %i.anr, align 8
  %i.asf = getelementptr i8, ptr %i.asb, i64 1    ; 3 uses
  store ptr %i.asf, ptr %i.ano, align 8
  %i.asg = load i8, ptr %i.asf, align 1, !noundef !7
  br label %.sink.split.i77.i.i.i

.sink.split.i77.i.i.i:                            ; preds = %.sink.split.sink.split.i.i71.i.i, %..sink.split.i77_crit_edge.i.i.i
  %i.ash = phi ptr [ %i.aou, %..sink.split.i77_crit_edge.i.i.i ], [ %i.asf, %.sink.split.sink.split.i.i71.i.i ]
  %i.asi = phi ptr [ %.pre122.i.i.i, %..sink.split.i77_crit_edge.i.i.i ], [ %i.ase, %.sink.split.sink.split.i.i71.i.i ]
  %.sink.i78.i.i.i = phi i8 [ %i.arr, %..sink.split.i77_crit_edge.i.i.i ], [ %i.asg, %.sink.split.sink.split.i.i71.i.i ]
  store i8 %.sink.i78.i.i.i, ptr %i.asi, align 1
  %i.asj = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.ask = getelementptr i8, ptr %i.asj, i64 1
  store ptr %i.ask, ptr %i.anr, align 8
  %i.asl = getelementptr i8, ptr %i.ash, i64 1    ; 2 uses
  store ptr %i.asl, ptr %i.ano, align 8
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kh, %.sink.split.i77.i.i.i
  %i.asm = phi ptr [ %i.aou, %bb.kh ], [ %i.asl, %.sink.split.i77.i.i.i ]
  %i.asn = load i32, ptr %i.aoq, align 8, !noundef !7
  %i.aso = add i32 %i.asn, 1
  store i32 %i.aso, ptr %i.aoq, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i

bb.kg:                                            ; preds = %bb.ke
  %i.asp = and i8 %i.arr, -16
  %i.asq = icmp eq i8 %i.asp, -32
  br i1 %i.asq, label %..sink.split.sink.split.sink.split.i_crit_edge.i73.i.i, label %bb.kh

..sink.split.sink.split.sink.split.i_crit_edge.i73.i.i: ; preds = %bb.kg
  %.pre120.i.i.i = load ptr, ptr %i.anr, align 8
  br label %.sink.split.sink.split.sink.split.i.i69.i.i

bb.kh:                                            ; preds = %bb.kg
  %i.asr = and i8 %i.arr, -8
  %i.ass = icmp eq i8 %i.asr, -16
  br i1 %i.ass, label %bb.ki, label %bb.kf

bb.ki:                                            ; preds = %bb.kh
  %i.ast = load ptr, ptr %i.anr, align 8, !noundef !7
  store i8 %i.arr, ptr %i.ast, align 1
  %i.asu = load ptr, ptr %i.anr, align 8, !noundef !7
  %i.asv = getelementptr i8, ptr %i.asu, i64 1    ; 2 uses
  store ptr %i.asv, ptr %i.anr, align 8
  %i.asw = getelementptr i8, ptr %i.aou, i64 1    ; 3 uses
  store ptr %i.asw, ptr %i.ano, align 8
  %i.asx = load i8, ptr %i.asw, align 1, !noundef !7
  br label %.sink.split.sink.split.sink.split.i.i69.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i: ; preds = %bb.kf, %bb.kc
  %i.asy = phi ptr [ %i.aou, %bb.kc ], [ %i.asm, %bb.kf ]
  %.65.i.i.i = phi ptr [ @14, %bb.kc ], [ @15, %bb.kf ]
  %i.asz = load i8, ptr %.65.i.i.i, align 1, !range !11, !noundef !7
  %i.ata = trunc nuw i8 %i.asz to i1
  br i1 %i.ata, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i, label %bb.jy

bb.kj:                                            ; preds = %bb.ka
  %i.atb = getelementptr inbounds nuw i8, ptr %i.aou, i64 1
  %i.atc = load i8, ptr %i.atb, align 1, !noundef !7
  %i.atd = icmp eq i8 %i.atc, 32
  br i1 %i.atd, label %bb.kb, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ate = load i32, ptr %i.aoq, align 8, !noundef !7
  %i.atf = load i32, ptr %i.aos, align 4, !noundef !7
  %i.atg = icmp sgt i32 %i.ate, %i.atf
  br i1 %i.atg, label %bb.kl, label %bb.kb

bb.kl:                                            ; preds = %bb.kk
  %i.ath = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr noundef nonnull %0)
  br i1 %i.ath, label %bb.km, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i

bb.km:                                            ; preds = %bb.kl
  %i.ati = load i8, ptr %i.aou, align 1, !noundef !7 ; 4 uses
  %i.atj = icmp sgt i8 %i.ati, -1
  br i1 %i.atj, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.atk = and i8 %i.ati, -32
  %i.atl = icmp eq i8 %i.atk, -64
  br i1 %i.atl, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kq, %bb.kp, %bb.kn, %bb.km
  %.sroa.043.0.i.i.i = phi i64 [ 3, %bb.kp ], [ 1, %bb.km ], [ 2, %bb.kn ], [ %.67.i.i.i, %bb.kq ]
  %i.atm = getelementptr i8, ptr %i.aou, i64 %.sroa.043.0.i.i.i ; 2 uses
  store ptr %i.atm, ptr %i.ano, align 8
  br label %bb.jy

bb.kp:                                            ; preds = %bb.kn
  %i.atn = and i8 %i.ati, -16
  %i.ato = icmp eq i8 %i.atn, -32
  br i1 %i.ato, label %bb.ko, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.atp = and i8 %i.ati, -8
  %i.atq = icmp eq i8 %i.atp, -16
  %.67.i.i.i = select i1 %i.atq, i64 4, i64 0
  br label %bb.ko

_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i: ; preds = %bb.kl, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i66.i.i, %bb.jz, %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit74.i.i.i, %.loopexit.i75.i.i, %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i64.i.i, %bb.ja, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.i: ; preds = %bb.jy, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i: ; preds = %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit58.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i5.i.i, %bb.dn, %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit.i6.i.i, %.thread.i.i.i, %bb.cu, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i10.i.i, %._crit_edge.thread.i.i.i.a, %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.i: ; preds = %9
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i16 0, ptr %i.atr, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i

_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i: ; preds = %bb.hv, %bb.ht, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.i, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i, %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.i, %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i, %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.i, %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i, %bb.ea, %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.i, %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.thread.i, %_ZN14unsafe_libyaml7emitter28yaml_emitter_increase_indent17hc5bad6e2612ad6a7E.exit.i
  %i.ats = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread13.i ], [ @14, %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.thread.i ], [ @14, %_ZN14unsafe_libyaml7emitter31yaml_emitter_write_plain_scalar17h3d69bdb2be85e828E.exit.i.thread.i ], [ @14, %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.thread.i ], [ @14, %_ZN14unsafe_libyaml7emitter28yaml_emitter_increase_indent17hc5bad6e2612ad6a7E.exit.i ], [ @15, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread10.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i ], [ @14, %bb.ea ], [ @15, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.i ], [ @14, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i103.i.i ], [ @15, %_ZN14unsafe_libyaml7emitter32yaml_emitter_write_folded_scalar17haa43292056c0d62aE.exit.i.i ], [ @15, %_ZN14unsafe_libyaml7emitter33yaml_emitter_write_literal_scalar17h3d237f66bfdfcf4bE.exit.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i ], [ @14, %bb.ht ], [ @14, %bb.hv ]
  %i.att = load i8, ptr %i.ats, align 1, !range !11, !noundef !7
  %i.atu = trunc nuw i8 %i.att to i1
  br i1 %i.atu, label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit, label %bb.kr

bb.kr:                                            ; preds = %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i
  %i.atv = load ptr, ptr %i.cw, align 8, !noundef !7
  %i.atw = getelementptr inbounds i8, ptr %i.atv, i64 -4 ; 2 uses
  store ptr %i.atw, ptr %i.cw, align 8
  %i.atx = load i32, ptr %i.atw, align 4, !noundef !7
  store i32 %i.atx, ptr %i.dy, align 8
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.atz = load ptr, ptr %i.aty, align 8, !noundef !7
  %i.aua = getelementptr inbounds i8, ptr %i.atz, i64 -4 ; 2 uses
  store ptr %i.aua, ptr %i.aty, align 8
  %i.aub = load i32, ptr %i.aua, align 4, !range !16, !noundef !7
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.aub, ptr %i.auc, align 8
  br label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

bb.ks:                                            ; preds = %bb.a
  %i.aud = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter27yaml_emitter_process_anchor17h628db27e130a7762E(ptr noundef nonnull %0)
  br i1 %i.aud, label %bb.kt, label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

bb.kt:                                            ; preds = %bb.ks
  %i.aue = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter24yaml_emitter_process_tag17hf16e7ee94a145ab2E(ptr noundef nonnull %0)
  br i1 %i.aue, label %bb.ku, label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

bb.ku:                                            ; preds = %bb.kt
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.aug = load i32, ptr %i.auf, align 4, !noundef !7
  %i.auh = icmp eq i32 %i.aug, 0
  br i1 %i.auh, label %bb.kv, label %.sink.split.i

bb.kv:                                            ; preds = %bb.ku
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.auj = load i8, ptr %i.aui, align 4, !range !11, !noundef !7
  %i.auk = trunc nuw i8 %i.auj to i1
  br i1 %i.auk, label %.sink.split.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.aul = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aum = load i32, ptr %i.aul, align 4, !range !13, !noundef !7
  %i.aun = icmp eq i32 %i.aum, 2
  br i1 %i.aun, label %.sink.split.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.auo = getelementptr i8, ptr %0, i64 192
  %.val.i = load ptr, ptr %i.auo, align 8, !noundef !7 ; 3 uses
  %i.aup = getelementptr i8, ptr %0, i64 200
  %.val4.i = load ptr, ptr %i.aup, align 8, !noundef !7
  %i.auq = ptrtoint ptr %.val4.i to i64
  %i.aur = ptrtoint ptr %.val.i to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = icmp slt i64 %i.aus, 192
  br i1 %i.aut, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.thread.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.auu = load i32, ptr %.val.i, align 8, !range !8, !noundef !7
  %i.auv = icmp eq i32 %i.auu, 7
  br i1 %i.auv, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.i, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.thread.i

_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.i: ; preds = %bb.ky
  %i.auw = getelementptr i8, ptr %.val.i, i64 96
  %i.aux = load i32, ptr %i.auw, align 8, !range !8, !noundef !7
  %i.auy = icmp eq i32 %i.aux, 8
  br i1 %i.auy, label %.sink.split.i, label %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.thread.i

_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.thread.i: ; preds = %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.i, %bb.ky, %bb.kx
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.thread.i, %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.i, %bb.kw, %bb.kv, %bb.ku
  %.sink.i = phi i32 [ 11, %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.thread.i ], [ 5, %bb.kw ], [ 5, %bb.ku ], [ 5, %_ZN14unsafe_libyaml7emitter33yaml_emitter_check_empty_sequence17h1f16fd7f021ba4a3E.exit.i ], [ 5, %bb.kv ]
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.sink.i, ptr %i.auz, align 8
  br label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

bb.kz:                                            ; preds = %bb.a
  %i.ava = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter27yaml_emitter_process_anchor17h628db27e130a7762E(ptr noundef nonnull %0)
  br i1 %i.ava, label %bb.la, label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

bb.la:                                            ; preds = %bb.kz
  %i.avb = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter24yaml_emitter_process_tag17hf16e7ee94a145ab2E(ptr noundef nonnull %0)
  br i1 %i.avb, label %bb.lb, label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

bb.lb:                                            ; preds = %bb.la
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.avd = load i32, ptr %i.avc, align 4, !noundef !7
  %i.ave = icmp eq i32 %i.avd, 0
  br i1 %i.ave, label %bb.lc, label %.sink.split.i4

bb.lc:                                            ; preds = %bb.lb
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.avg = load i8, ptr %i.avf, align 4, !range !11, !noundef !7
  %i.avh = trunc nuw i8 %i.avg to i1
  br i1 %i.avh, label %.sink.split.i4, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.avi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.avj = load i32, ptr %i.avi, align 4, !range !13, !noundef !7
  %i.avk = icmp eq i32 %i.avj, 2
  br i1 %i.avk, label %.sink.split.i4, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.avl = getelementptr i8, ptr %0, i64 192
  %.val.i6 = load ptr, ptr %i.avl, align 8, !noundef !7 ; 3 uses
  %i.avm = getelementptr i8, ptr %0, i64 200
  %.val4.i7 = load ptr, ptr %i.avm, align 8, !noundef !7
  %i.avn = ptrtoint ptr %.val4.i7 to i64
  %i.avo = ptrtoint ptr %.val.i6 to i64
  %i.avp = sub i64 %i.avn, %i.avo
  %i.avq = icmp slt i64 %i.avp, 192
  br i1 %i.avq, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.thread.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.avr = load i32, ptr %.val.i6, align 8, !range !8, !noundef !7
  %i.avs = icmp eq i32 %i.avr, 9
  br i1 %i.avs, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.i, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.thread.i

_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.i: ; preds = %bb.lf
  %i.avt = getelementptr i8, ptr %.val.i6, i64 96
  %i.avu = load i32, ptr %i.avt, align 8, !range !8, !noundef !7
  %i.avv = icmp eq i32 %i.avu, 10
  br i1 %i.avv, label %.sink.split.i4, label %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.thread.i

_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.thread.i: ; preds = %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.i, %bb.lf, %bb.le
  br label %.sink.split.i4

.sink.split.i4:                                   ; preds = %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.thread.i, %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.i, %bb.ld, %bb.lc, %bb.lb
  %.sink.i5 = phi i32 [ 13, %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.thread.i ], [ 7, %bb.ld ], [ 7, %bb.lb ], [ 7, %_ZN14unsafe_libyaml7emitter32yaml_emitter_check_empty_mapping17h4f4a3e82d5e2a59fE.exit.i ], [ 7, %bb.lc ]
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.sink.i5, ptr %i.avw, align 8
  br label %_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit

_ZN14unsafe_libyaml7emitter23yaml_emitter_emit_alias17he248688881d2d17fE.exit: ; preds = %.sink.split.i4, %bb.la, %bb.kz, %.sink.split.i, %bb.kt, %bb.ks, %bb.kr, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, %bb.ag, %bb.af, %bb.ae, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.b ], [ true, %.sink.split.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i ], [ false, %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i ], [ true, %bb.e ], [ false, %bb.c ], [ true, %bb.kr ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.kt ], [ false, %bb.ks ], [ false, %bb.la ], [ false, %bb.kz ], [ true, %.sink.split.i4 ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter24yaml_emitter_process_tag17hf16e7ee94a145ab2E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 !guid !135 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.e, %bb.g, %bb.f, %bb.d, %bb.b, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ false, %bb.j ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter28yaml_emitter_write_indicator17h4c6ead6ac3f390a8E(ptr noundef nonnull %0, ptr noundef nonnull @96, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  %i.j = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter29yaml_emitter_write_tag_handle17h4669cdd29f37afa8E(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.i)
  br i1 %i.j, label %bb.i, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = load i64, ptr %i.l, align 8, !noundef !7
  %i.n = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter30yaml_emitter_write_tag_content17h0ee18e60e32beac4E(ptr noundef nonnull %0, ptr noundef %i.k, i64 noundef %i.m, i1 noundef zeroext false)
  br i1 %i.n, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter28yaml_emitter_write_indicator17h4c6ead6ac3f390a8E(ptr noundef nonnull %0, ptr noundef nonnull @97, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.o, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.i
  br label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = load ptr, ptr %i.p, align 8, !noundef !7 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.t = load i64, ptr %i.s, align 8, !noundef !7
  %i.u = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter30yaml_emitter_write_tag_content17h0ee18e60e32beac4E(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i64 noundef %i.t, i1 noundef zeroext false)
  br i1 %i.u, label %bb.h, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter25yaml_emitter_write_indent17h9c3b36b218c539e1E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 !guid !136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 8, !noundef !7
  %. = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 2 uses
end_hunk_3
