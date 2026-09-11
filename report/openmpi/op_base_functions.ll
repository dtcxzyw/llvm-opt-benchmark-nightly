Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/op_base_functions?download=true
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 80
begin_hunk_0_@ompi_op_base_2buff_prod_long_double:bb.a
  %.010 = phi ptr [ %i.aa, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.069 = phi ptr [ %i.y, %.lr.ph ], [ %.069.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.078 = phi i32 [ %i.ad, %.lr.ph ], [ %.078.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.k = load x86_fp80, ptr %.069, align 16, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 16 ; 2 uses
  %i.m = load x86_fp80, ptr %.010, align 16, !tbaa !27
  %i.n = fmul x86_fp80 %i.k, %i.m
  store x86_fp80 %i.n, ptr %.010, align 16, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.p = load x86_fp80, ptr %i.j, align 16, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %.010, i64 32 ; 2 uses
  %i.r = load x86_fp80, ptr %i.l, align 16, !tbaa !27
  %i.s = fmul x86_fp80 %i.p, %i.r
  store x86_fp80 %i.s, ptr %i.l, align 16, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %.069, i64 48
  %i.u = load x86_fp80, ptr %i.o, align 16, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.010, i64 48 ; 2 uses
  %i.w = load x86_fp80, ptr %i.q, align 16, !tbaa !27
  %i.x = fmul x86_fp80 %i.u, %i.w
  store x86_fp80 %i.x, ptr %i.q, align 16, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %.069, i64 64
  %i.z = load x86_fp80, ptr %i.t, align 16, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.010, i64 64
  %i.ab = load x86_fp80, ptr %i.v, align 16, !tbaa !27
  %i.ac = fmul x86_fp80 %i.z, %i.ab
  store x86_fp80 %i.ac, ptr %i.v, align 16, !tbaa !27
  %i.ad = add nsw i32 %.078, -4
  %i.ae = icmp sgt i32 %.078, 4
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !431

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_2buff_prod_c_short_float_complex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 7 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = add nsw i32 %i.a, -1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = add nuw nsw i64 %i.f, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.g
  %scevgep21 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %1, %scevgep21
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 2147483644               ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  %i.k = trunc nuw nsw i64 %n.vec to i32
  %i.l = sub nsw i32 %i.a, %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2                        ; 5 uses
  %i.n = or disjoint i64 %i.m, 4                  ; 2 uses
  %i.o = or disjoint i64 %i.m, 8                  ; 2 uses
  %i.p = or disjoint i64 %i.m, 12                 ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  %next.gep23 = getelementptr i8, ptr %1, i64 %i.o ; 2 uses
  %next.gep24 = getelementptr i8, ptr %1, i64 %i.p ; 2 uses
  %next.gep25 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %next.gep26 = getelementptr i8, ptr %0, i64 %i.n ; 2 uses
  %next.gep27 = getelementptr i8, ptr %0, i64 %i.o ; 2 uses
  %next.gep28 = getelementptr i8, ptr %0, i64 %i.p ; 2 uses
  %i.q = load half, ptr %next.gep25, align 2, !tbaa !21, !alias.scope !437
  %i.r = load half, ptr %next.gep26, align 2, !tbaa !21, !alias.scope !437
  %i.s = load half, ptr %next.gep27, align 2, !tbaa !21, !alias.scope !437
  %i.t = load half, ptr %next.gep28, align 2, !tbaa !21, !alias.scope !437
  %i.u = insertelement <4 x half> poison, half %i.q, i64 0
  %i.v = insertelement <4 x half> %i.u, half %i.r, i64 1
  %i.w = insertelement <4 x half> %i.v, half %i.s, i64 2
  %i.x = insertelement <4 x half> %i.w, half %i.t, i64 3
  %i.y = fpext <4 x half> %i.x to <4 x float>     ; 2 uses
  %i.z = load half, ptr %next.gep, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.aa = load half, ptr %next.gep22, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.ab = load half, ptr %next.gep23, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.ac = load half, ptr %next.gep24, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.ad = insertelement <4 x half> poison, half %i.z, i64 0
  %i.ae = insertelement <4 x half> %i.ad, half %i.aa, i64 1
  %i.af = insertelement <4 x half> %i.ae, half %i.ab, i64 2
  %i.ag = insertelement <4 x half> %i.af, half %i.ac, i64 3
  %i.ah = fpext <4 x half> %i.ag to <4 x float>   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep25, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep26, i64 2
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep27, i64 2
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep28, i64 2
  %i.am = load half, ptr %i.ai, align 2, !tbaa !21, !alias.scope !437
  %i.an = load half, ptr %i.aj, align 2, !tbaa !21, !alias.scope !437
  %i.ao = load half, ptr %i.ak, align 2, !tbaa !21, !alias.scope !437
  %i.ap = load half, ptr %i.al, align 2, !tbaa !21, !alias.scope !437
  %i.aq = insertelement <4 x half> poison, half %i.am, i64 0
  %i.ar = insertelement <4 x half> %i.aq, half %i.an, i64 1
  %i.as = insertelement <4 x half> %i.ar, half %i.ao, i64 2
  %i.at = insertelement <4 x half> %i.as, half %i.ap, i64 3
  %i.au = fpext <4 x half> %i.at to <4 x float>   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep22, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep23, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep24, i64 2
  %i.az = load half, ptr %i.av, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.ba = load half, ptr %i.aw, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.bb = load half, ptr %i.ax, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.bc = load half, ptr %i.ay, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %i.bd = insertelement <4 x half> poison, half %i.az, i64 0
  %i.be = insertelement <4 x half> %i.bd, half %i.ba, i64 1
  %i.bf = insertelement <4 x half> %i.be, half %i.bb, i64 2
  %i.bg = insertelement <4 x half> %i.bf, half %i.bc, i64 3
  %i.bh = fpext <4 x half> %i.bg to <4 x float>   ; 2 uses
  %i.bi = fneg <4 x float> %i.bh
  %i.bj = fmul <4 x float> %i.au, %i.bi
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.ah, <4 x float> %i.bj)
  %i.bl = fptrunc <4 x float> %i.bk to <4 x half>
  %i.bm = fmul <4 x float> %i.ah, %i.au
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.bh, <4 x float> %i.bm)
  %i.bo = fptrunc <4 x float> %i.bn to <4 x half>
  %interleaved.vec = shufflevector <4 x half> %i.bl, <4 x half> %i.bo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x half> %interleaved.vec, ptr %next.gep, align 2, !tbaa !21, !alias.scope !438, !noalias !437
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !435

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01619.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.01718.ph = phi i32 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %.020 = phi ptr [ %i.cj, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader31 ] ; 4 uses
  %.01619 = phi ptr [ %i.ci, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader31 ] ; 3 uses
  %.01718 = phi i32 [ %i.ch, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader31 ] ; 2 uses
  %i.bq = load half, ptr %.01619, align 2, !tbaa !21
  %i.br = fpext half %i.bq to float               ; 2 uses
  %i.bs = load half, ptr %.020, align 2, !tbaa !21
  %i.bt = fpext half %i.bs to float               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01619, i64 2
  %i.bv = load half, ptr %i.bu, align 2, !tbaa !21
  %i.bw = fpext half %i.bv to float               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.020, i64 2 ; 2 uses
  %i.by = load half, ptr %i.bx, align 2, !tbaa !21
  %i.bz = fpext half %i.by to float               ; 2 uses
  %i.ca = fneg float %i.bz
  %i.cb = fmul float %i.bw, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %i.cb)
  %i.cd = fptrunc float %i.cc to half
  %i.ce = fmul float %i.bt, %i.bw
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bz, float %i.ce)
  %i.cg = fptrunc float %i.cf to half
  store half %i.cd, ptr %.020, align 2, !tbaa !21
  store half %i.cg, ptr %i.bx, align 2, !tbaa !21
  %i.ch = add nsw i32 %.01718, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %.01619, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.020, i64 4
  %i.ck = icmp samesign ugt i32 %.01718, 1
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !436

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ompi_op_base_2buff_prod_c_float_complex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.010 = phi i32 [ %i.u, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %.069 = phi ptr [ %i.d, %bb.d ], [ %1, %bb.a ]  ; 4 uses
  %.078 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.078, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.069, i64 4
  %i.f = load <2 x float>, ptr %.078, align 4     ; 4 uses
  %i.g = load <2 x float>, ptr %.069, align 4     ; 4 uses
  %i.h = fmul <2 x float> %i.f, %i.g              ; 2 uses
  %i.i = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = fmul <2 x float> %i.i, %i.g
  %shift = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.h, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %5 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j) ; 3 uses
  %i.l = fcmp uno float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.m = fcmp uno float %5, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.n = extractelement <2 x float> %i.f, i64 0
  %i.o = extractelement <2 x float> %i.f, i64 1
  %i.p = extractelement <2 x float> %i.g, i64 0
  %i.q = extractelement <2 x float> %i.g, i64 1
  %i.r = tail call <2 x float> @__mulsc3(float noundef %i.p, float noundef %i.q, float noundef %i.n, float noundef %i.o) #4 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.r, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.r, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.s = phi float [ %i.k, %.lr.ph ], [ %i.k, %bb.b ], [ %.sroa.0.0.vec.extract, %bb.c ]
  %i.t = phi float [ %5, %.lr.ph ], [ %5, %bb.b ], [ %.sroa.0.4.vec.extract, %bb.c ]
  store float %i.s, ptr %.069, align 4
  store float %i.t, ptr %i.e, align 4
  %i.u = add nsw i32 %.010, -1
  %i.v = icmp sgt i32 %.010, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ompi_op_base_2buff_prod_c_double_complex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.010 = phi ptr [ %i.d, %bb.d ], [ %1, %bb.a ]  ; 4 uses
  %.069 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ]  ; 2 uses
  %.078 = phi i32 [ %i.w, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.f = load <2 x double>, ptr %.069, align 8    ; 4 uses
  %i.g = load <2 x double>, ptr %.010, align 8    ; 4 uses
  %i.h = fmul <2 x double> %i.f, %i.g             ; 2 uses
  %i.i = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.j = fmul <2 x double> %i.i, %i.g
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.h, %shift
  %i.k = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %5 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.j) ; 3 uses
  %i.l = fcmp uno double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.m = fcmp uno double %5, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.n = extractelement <2 x double> %i.f, i64 0
  %i.o = extractelement <2 x double> %i.f, i64 1
  %i.p = extractelement <2 x double> %i.g, i64 0
  %i.q = extractelement <2 x double> %i.g, i64 1
  %i.r = tail call { double, double } @__muldc3(double noundef %i.p, double noundef %i.q, double noundef %i.n, double noundef %i.o) #4 ; 2 uses
  %i.s = extractvalue { double, double } %i.r, 0
  %i.t = extractvalue { double, double } %i.r, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.u = phi double [ %i.k, %.lr.ph ], [ %i.k, %bb.b ], [ %i.s, %bb.c ]
  %i.v = phi double [ %5, %.lr.ph ], [ %5, %bb.b ], [ %i.t, %bb.c ]
  store double %i.u, ptr %.010, align 8
  store double %i.v, ptr %i.e, align 8
  %i.w = add nsw i32 %.078, -1
  %i.x = icmp sgt i32 %.078, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !440

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ompi_op_base_2buff_prod_c_long_double_complex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.010 = phi ptr [ %i.g, %bb.d ], [ %1, %bb.a ]  ; 4 uses
  %.069 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ]  ; 3 uses
  %.078 = phi i32 [ %i.x, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.d = load x86_fp80, ptr %.069, align 16       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.f = load x86_fp80, ptr %i.e, align 16        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %i.h = load x86_fp80, ptr %.010, align 16       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010, i64 16 ; 2 uses
  %i.j = load x86_fp80, ptr %i.i, align 16        ; 3 uses
  %i.k = fmul x86_fp80 %i.d, %i.h
  %i.l = fmul x86_fp80 %i.f, %i.j
  %i.m = fmul x86_fp80 %i.f, %i.h
  %i.n = fmul x86_fp80 %i.d, %i.j
  %i.o = fsub x86_fp80 %i.k, %i.l                 ; 3 uses
  %i.p = fadd x86_fp80 %i.m, %i.n                 ; 3 uses
  %i.q = fcmp uno x86_fp80 %i.o, 0.000000e+00
  br i1 %i.q, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.r = fcmp uno x86_fp80 %i.p, 0.000000e+00
  br i1 %i.r, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { x86_fp80, x86_fp80 } @__mulxc3(x86_fp80 noundef %i.h, x86_fp80 noundef %i.j, x86_fp80 noundef %i.d, x86_fp80 noundef %i.f) #4 ; 2 uses
  %i.t = extractvalue { x86_fp80, x86_fp80 } %i.s, 0
  %i.u = extractvalue { x86_fp80, x86_fp80 } %i.s, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.v = phi x86_fp80 [ %i.o, %.lr.ph ], [ %i.o, %bb.b ], [ %i.t, %bb.c ]
  %i.w = phi x86_fp80 [ %i.p, %.lr.ph ], [ %i.p, %bb.b ], [ %i.u, %bb.c ]
  store x86_fp80 %i.v, ptr %.010, align 16
  store x86_fp80 %i.w, ptr %i.i, align 16
  %i.x = add nsw i32 %.078, -1
  %i.y = icmp sgt i32 %.078, 1
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !441

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_2buff_prod_long(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.010.prol = phi ptr [ %i.e, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.069.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.078.prol = phi i32 [ %i.h, %.lr.ph.prol ], [ %i.a, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.069.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %.069.prol, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %.010.prol, i64 8 ; 2 uses
  %i.f = load i64, ptr %.010.prol, align 8, !tbaa !19
  %i.g = mul nsw i64 %i.f, %i.d
  store i64 %i.g, ptr %.010.prol, align 8, !tbaa !19
  %i.h = add nsw i32 %.078.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !442

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.069.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.078.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.i = icmp ult i32 %i.a, 4
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi ptr [ %i.aa, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.069 = phi ptr [ %i.y, %.lr.ph ], [ %.069.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.078 = phi i32 [ %i.ad, %.lr.ph ], [ %.078.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.k = load i64, ptr %.069, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %i.m = load i64, ptr %.010, align 8, !tbaa !19
  %i.n = mul nsw i64 %i.m, %i.k
  store i64 %i.n, ptr %.010, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.p = load i64, ptr %i.j, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %.010, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.l, align 8, !tbaa !19
  %i.s = mul nsw i64 %i.r, %i.p
  store i64 %i.s, ptr %i.l, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %.069, i64 24
  %i.u = load i64, ptr %i.o, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %.010, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !19
  %i.x = mul nsw i64 %i.w, %i.u
  store i64 %i.x, ptr %i.q, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.z = load i64, ptr %i.t, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !19
  %i.ac = mul nsw i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !19
  %i.ad = add nsw i32 %.078, -4
  %i.ae = icmp sgt i32 %.078, 4
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !443

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_2buff_prod_unsigned_long(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.010.prol = phi ptr [ %i.e, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.069.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.078.prol = phi i32 [ %i.h, %.lr.ph.prol ], [ %i.a, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.069.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %.069.prol, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %.010.prol, i64 8 ; 2 uses
  %i.f = load i64, ptr %.010.prol, align 8, !tbaa !19
  %i.g = mul i64 %i.f, %i.d
  store i64 %i.g, ptr %.010.prol, align 8, !tbaa !19
  %i.h = add nsw i32 %.078.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !444

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.069.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.078.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.i = icmp ult i32 %i.a, 4
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi ptr [ %i.aa, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.069 = phi ptr [ %i.y, %.lr.ph ], [ %.069.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.078 = phi i32 [ %i.ad, %.lr.ph ], [ %.078.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.k = load i64, ptr %.069, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %i.m = load i64, ptr %.010, align 8, !tbaa !19
  %i.n = mul i64 %i.m, %i.k
  store i64 %i.n, ptr %.010, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.p = load i64, ptr %i.j, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %.010, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@ompi_op_base_3buff_prod_long_double:bb.a
.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.ah, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0813 = phi ptr [ %i.ae, %.lr.ph ], [ %.0813.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0912 = phi ptr [ %i.ac, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01011 = phi i32 [ %i.ai, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.l = load x86_fp80, ptr %.0912, align 16, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %.0813, i64 16
  %i.n = load x86_fp80, ptr %.0813, align 16, !tbaa !27
  %i.o = fmul x86_fp80 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 16
  store x86_fp80 %i.o, ptr %.014, align 16, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %.0912, i64 32
  %i.r = load x86_fp80, ptr %i.k, align 16, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.0813, i64 32
  %i.t = load x86_fp80, ptr %i.m, align 16, !tbaa !27
  %i.u = fmul x86_fp80 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 32
  store x86_fp80 %i.u, ptr %i.p, align 16, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.0912, i64 48
  %i.x = load x86_fp80, ptr %i.q, align 16, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %.0813, i64 48
  %i.z = load x86_fp80, ptr %i.s, align 16, !tbaa !27
  %i.aa = fmul x86_fp80 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.014, i64 48
  store x86_fp80 %i.aa, ptr %i.v, align 16, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912, i64 64
  %i.ad = load x86_fp80, ptr %i.w, align 16, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %.0813, i64 64
  %i.af = load x86_fp80, ptr %i.y, align 16, !tbaa !27
  %i.ag = fmul x86_fp80 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.014, i64 64
  store x86_fp80 %i.ag, ptr %i.ab, align 16, !tbaa !27
  %i.ai = add nsw i32 %.01011, -4
  %i.aj = icmp sgt i32 %.01011, 4
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !915

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_3buff_prod_c_short_float_complex(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 2147483644               ; 4 uses
  %i.d = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %i.g = getelementptr i8, ptr %0, i64 %i.d
  %i.h = trunc nuw nsw i64 %n.vec to i32
  %i.i = sub nsw i32 %i.a, %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 2                        ; 6 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.j
  %i.k = or disjoint i64 %i.j, 4                  ; 2 uses
  %i.l = or disjoint i64 %i.j, 8                  ; 2 uses
  %i.m = or disjoint i64 %i.j, 12                 ; 2 uses
  %next.gep25 = getelementptr i8, ptr %1, i64 %i.j ; 2 uses
  %next.gep26 = getelementptr i8, ptr %1, i64 %i.k ; 2 uses
  %next.gep27 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %next.gep28 = getelementptr i8, ptr %1, i64 %i.m ; 2 uses
  %next.gep29 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  %next.gep30 = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  %next.gep31 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %next.gep32 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %i.n = load half, ptr %next.gep29, align 2, !tbaa !21
  %i.o = load half, ptr %next.gep30, align 2, !tbaa !21
  %i.p = load half, ptr %next.gep31, align 2, !tbaa !21
  %i.q = load half, ptr %next.gep32, align 2, !tbaa !21
  %i.r = insertelement <4 x half> poison, half %i.n, i64 0
  %i.s = insertelement <4 x half> %i.r, half %i.o, i64 1
  %i.t = insertelement <4 x half> %i.s, half %i.p, i64 2
  %i.u = insertelement <4 x half> %i.t, half %i.q, i64 3
  %i.v = fpext <4 x half> %i.u to <4 x float>     ; 2 uses
  %i.w = load half, ptr %next.gep25, align 2, !tbaa !21
  %i.x = load half, ptr %next.gep26, align 2, !tbaa !21
  %i.y = load half, ptr %next.gep27, align 2, !tbaa !21
  %i.z = load half, ptr %next.gep28, align 2, !tbaa !21
  %i.aa = insertelement <4 x half> poison, half %i.w, i64 0
  %i.ab = insertelement <4 x half> %i.aa, half %i.x, i64 1
  %i.ac = insertelement <4 x half> %i.ab, half %i.y, i64 2
  %i.ad = insertelement <4 x half> %i.ac, half %i.z, i64 3
  %i.ae = fpext <4 x half> %i.ad to <4 x float>   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep29, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep30, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep31, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep32, i64 2
  %i.aj = load half, ptr %i.af, align 2, !tbaa !21
  %i.ak = load half, ptr %i.ag, align 2, !tbaa !21
  %i.al = load half, ptr %i.ah, align 2, !tbaa !21
  %i.am = load half, ptr %i.ai, align 2, !tbaa !21
  %i.an = insertelement <4 x half> poison, half %i.aj, i64 0
  %i.ao = insertelement <4 x half> %i.an, half %i.ak, i64 1
  %i.ap = insertelement <4 x half> %i.ao, half %i.al, i64 2
  %i.aq = insertelement <4 x half> %i.ap, half %i.am, i64 3
  %i.ar = fpext <4 x half> %i.aq to <4 x float>   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep25, i64 2
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep26, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep27, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep28, i64 2
  %i.aw = load half, ptr %i.as, align 2, !tbaa !21
  %i.ax = load half, ptr %i.at, align 2, !tbaa !21
  %i.ay = load half, ptr %i.au, align 2, !tbaa !21
  %i.az = load half, ptr %i.av, align 2, !tbaa !21
  %i.ba = insertelement <4 x half> poison, half %i.aw, i64 0
  %i.bb = insertelement <4 x half> %i.ba, half %i.ax, i64 1
  %i.bc = insertelement <4 x half> %i.bb, half %i.ay, i64 2
  %i.bd = insertelement <4 x half> %i.bc, half %i.az, i64 3
  %i.be = fpext <4 x half> %i.bd to <4 x float>   ; 2 uses
  %i.bf = fneg <4 x float> %i.be
  %i.bg = fmul <4 x float> %i.ar, %i.bf
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.ae, <4 x float> %i.bg)
  %i.bi = fptrunc <4 x float> %i.bh to <4 x half>
  %i.bj = fmul <4 x float> %i.ae, %i.ar
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.be, <4 x float> %i.bj)
  %i.bl = fptrunc <4 x float> %i.bk to <4 x half>
  %interleaved.vec = shufflevector <4 x half> %i.bi, <4 x half> %i.bl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x half> %interleaved.vec, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.01823.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.01922.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.02021.ph = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.024 = phi ptr [ %i.ci, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.01823 = phi ptr [ %i.ch, %.lr.ph ], [ %.01823.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.01922 = phi ptr [ %i.cg, %.lr.ph ], [ %.01922.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.02021 = phi i32 [ %i.cf, %.lr.ph ], [ %.02021.ph, %.lr.ph.preheader36 ] ; 2 uses
  %i.bn = load half, ptr %.01922, align 2, !tbaa !21
  %i.bo = fpext half %i.bn to float               ; 2 uses
  %i.bp = load half, ptr %.01823, align 2, !tbaa !21
  %i.bq = fpext half %i.bp to float               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01922, i64 2
  %i.bs = load half, ptr %i.br, align 2, !tbaa !21
  %i.bt = fpext half %i.bs to float               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01823, i64 2
  %i.bv = load half, ptr %i.bu, align 2, !tbaa !21
  %i.bw = fpext half %i.bv to float               ; 2 uses
  %i.bx = fneg float %i.bw
  %i.by = fmul float %i.bt, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bq, float %i.by)
  %i.ca = fptrunc float %i.bz to half
  store half %i.ca, ptr %.024, align 2, !tbaa !21
  %i.cb = fmul float %i.bq, %i.bt
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bw, float %i.cb)
  %i.cd = fptrunc float %i.cc to half
  %i.ce = getelementptr inbounds nuw i8, ptr %.024, i64 2
  store half %i.cd, ptr %i.ce, align 2, !tbaa !21
  %i.cf = add nsw i32 %.02021, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %.01922, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.01823, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.cj = icmp samesign ugt i32 %.02021, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !917

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ompi_op_base_3buff_prod_c_float_complex(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi i32 [ %i.v, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %.0813 = phi ptr [ %i.t, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %.0912 = phi ptr [ %i.d, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01011, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.e = load <2 x float>, ptr %.01011, align 4   ; 4 uses
  %i.f = load <2 x float>, ptr %.0912, align 4    ; 4 uses
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fmul <2 x float> %i.h, %i.f
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.g, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %6 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.i) ; 3 uses
  %i.k = fcmp uno float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.l = fcmp uno float %6, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.m = extractelement <2 x float> %i.e, i64 0
  %i.n = extractelement <2 x float> %i.e, i64 1
  %i.o = extractelement <2 x float> %i.f, i64 0
  %i.p = extractelement <2 x float> %i.f, i64 1
  %i.q = tail call <2 x float> @__mulsc3(float noundef %i.m, float noundef %i.n, float noundef %i.o, float noundef %i.p) #4 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.q, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.q, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.r = phi float [ %i.j, %.lr.ph ], [ %i.j, %bb.b ], [ %.sroa.0.0.vec.extract, %bb.c ]
  %i.s = phi float [ %6, %.lr.ph ], [ %6, %bb.b ], [ %.sroa.0.4.vec.extract, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0813, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0813, i64 4
  store float %i.r, ptr %.0813, align 4
  store float %i.s, ptr %i.u, align 4
  %i.v = add nsw i32 %.014, -1
  %i.w = icmp sgt i32 %.014, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !918

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ompi_op_base_3buff_prod_c_double_complex(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.v, %bb.d ], [ %2, %bb.a ]  ; 3 uses
  %.0813 = phi ptr [ %i.d, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0912 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi i32 [ %i.x, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.0813, i64 16
  %i.e = load <2 x double>, ptr %.0912, align 8   ; 4 uses
  %i.f = load <2 x double>, ptr %.0813, align 8   ; 4 uses
  %i.g = fmul <2 x double> %i.e, %i.f             ; 2 uses
  %i.h = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fmul <2 x double> %i.h, %i.f
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.g, %shift
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %6 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.i) ; 3 uses
  %i.k = fcmp uno double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.l = fcmp uno double %6, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.m = extractelement <2 x double> %i.e, i64 0
  %i.n = extractelement <2 x double> %i.e, i64 1
  %i.o = extractelement <2 x double> %i.f, i64 0
  %i.p = extractelement <2 x double> %i.f, i64 1
  %i.q = tail call { double, double } @__muldc3(double noundef %i.m, double noundef %i.n, double noundef %i.o, double noundef %i.p) #4 ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.t = phi double [ %i.j, %.lr.ph ], [ %i.j, %bb.b ], [ %i.r, %bb.c ]
  %i.u = phi double [ %6, %.lr.ph ], [ %6, %bb.b ], [ %i.s, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store double %i.t, ptr %.014, align 8
  store double %i.u, ptr %i.w, align 8
  %i.x = add nsw i32 %.01011, -1
  %i.y = icmp sgt i32 %.01011, 1
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !919

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ompi_op_base_3buff_prod_c_long_double_complex(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.x, %bb.d ], [ %2, %bb.a ]  ; 3 uses
  %.0813 = phi ptr [ %i.g, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %.0912 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %.01011 = phi i32 [ %i.z, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0912, i64 32
  %i.d = load x86_fp80, ptr %.0912, align 16      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.f = load x86_fp80, ptr %i.e, align 16        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0813, i64 32
  %i.h = load x86_fp80, ptr %.0813, align 16      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0813, i64 16
  %i.j = load x86_fp80, ptr %i.i, align 16        ; 3 uses
  %i.k = fmul x86_fp80 %i.d, %i.h
  %i.l = fmul x86_fp80 %i.f, %i.j
  %i.m = fmul x86_fp80 %i.d, %i.j
  %i.n = fmul x86_fp80 %i.f, %i.h
  %i.o = fsub x86_fp80 %i.k, %i.l                 ; 3 uses
  %i.p = fadd x86_fp80 %i.n, %i.m                 ; 3 uses
  %i.q = fcmp uno x86_fp80 %i.o, 0.000000e+00
  br i1 %i.q, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.r = fcmp uno x86_fp80 %i.p, 0.000000e+00
  br i1 %i.r, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { x86_fp80, x86_fp80 } @__mulxc3(x86_fp80 noundef %i.d, x86_fp80 noundef %i.f, x86_fp80 noundef %i.h, x86_fp80 noundef %i.j) #4 ; 2 uses
  %i.t = extractvalue { x86_fp80, x86_fp80 } %i.s, 0
  %i.u = extractvalue { x86_fp80, x86_fp80 } %i.s, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.v = phi x86_fp80 [ %i.o, %.lr.ph ], [ %i.o, %bb.b ], [ %i.t, %bb.c ]
  %i.w = phi x86_fp80 [ %i.p, %.lr.ph ], [ %i.p, %bb.b ], [ %i.u, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 16
  store x86_fp80 %i.v, ptr %.014, align 16
  store x86_fp80 %i.w, ptr %i.y, align 16
  %i.z = add nsw i32 %.01011, -1
  %i.aa = icmp sgt i32 %.01011, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !920

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_3buff_prod_long(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.0813.prol = phi ptr [ %i.e, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0912.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.01011.prol = phi i32 [ %i.i, %.lr.ph.prol ], [ %i.a, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %.0912.prol, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %.0813.prol, i64 8 ; 2 uses
  %i.f = load i64, ptr %.0813.prol, align 8, !tbaa !19
  %i.g = mul nsw i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %.014.prol, i64 8 ; 2 uses
  store i64 %i.g, ptr %.014.prol, align 8, !tbaa !19
  %i.i = add nsw i32 %.01011.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !921

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.0813.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.01011.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = icmp ult i32 %i.a, 4
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.ah, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0813 = phi ptr [ %i.ae, %.lr.ph ], [ %.0813.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0912 = phi ptr [ %i.ac, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01011 = phi i32 [ %i.ai, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.l = load i64, ptr %.0912, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %.0813, i64 8
  %i.n = load i64, ptr %.0813, align 8, !tbaa !19
  %i.o = mul nsw i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.o, ptr %.014, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.r = load i64, ptr %i.k, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.0813, i64 16
  %i.t = load i64, ptr %i.m, align 8, !tbaa !19
  %i.u = mul nsw i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 16
  store i64 %i.u, ptr %i.p, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %.0912, i64 24
  %i.x = load i64, ptr %i.q, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %.0813, i64 24
  %i.z = load i64, ptr %i.s, align 8, !tbaa !19
  %i.aa = mul nsw i64 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %.014, i64 24
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912, i64 32
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0813, i64 32
  %i.af = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ag = mul nsw i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.014, i64 32
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !19
  %i.ai = add nsw i32 %.01011, -4
  %i.aj = icmp sgt i32 %.01011, 4
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !922

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_3buff_prod_unsigned_long(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.0813.prol = phi ptr [ %i.e, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0912.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.01011.prol = phi i32 [ %i.i, %.lr.ph.prol ], [ %i.a, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %.0912.prol, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %.0813.prol, i64 8 ; 2 uses
  %i.f = load i64, ptr %.0813.prol, align 8, !tbaa !19
  %i.g = mul i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %.014.prol, i64 8 ; 2 uses
  store i64 %i.g, ptr %.014.prol, align 8, !tbaa !19
  %i.i = add nsw i32 %.01011.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !923

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.0813.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.01011.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
end_hunk_1
begin_hunk_2_@ompi_op_base_3buff_minloc_short_int:bb.a
  store i32 %.sink, ptr %i.n, align 4, !tbaa !48
  %i.o = add nsw i32 %.02934, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.02835, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.02736, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %i.s = icmp sgt i32 %.02934, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !1063

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ompi_op_base_3buff_minloc_long_double_int(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.037 = phi ptr [ %i.r, %bb.f ], [ %2, %bb.a ]  ; 5 uses
  %.02736 = phi ptr [ %i.q, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %.02835 = phi ptr [ %i.p, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %.02934 = phi i32 [ %i.o, %bb.f ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = load x86_fp80, ptr %.02835, align 16, !tbaa !50 ; 4 uses
  %i.d = load x86_fp80, ptr %.02736, align 16, !tbaa !50 ; 3 uses
  %i.e = fcmp olt x86_fp80 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store x86_fp80 %i.c, ptr %.037, align 16, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %.02835, i64 16
  %i.g = load i32, ptr %i.f, align 16, !tbaa !51
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.h = fcmp oeq x86_fp80 %i.c, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %.02736, i64 16 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store x86_fp80 %i.c, ptr %.037, align 16, !tbaa !50
  %i.j = load i32, ptr %i.i, align 16, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %.02835, i64 16
  %i.l = load i32, ptr %i.k, align 16, !tbaa !51
  %. = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.l)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store x86_fp80 %i.d, ptr %.037, align 16, !tbaa !50
  %i.m = load i32, ptr %i.i, align 16, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.sink = phi i32 [ %i.g, %bb.b ], [ %i.m, %bb.e ], [ %., %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.037, i64 16
  store i32 %.sink, ptr %i.n, align 16, !tbaa !51
  %i.o = add nsw i32 %.02934, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.02835, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.02736, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.037, i64 32
  %i.s = icmp sgt i32 %.02934, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !1064

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

declare { x86_fp80, x86_fp80 } @__mulxc3(x86_fp80, x86_fp80, x86_fp80, x86_fp80) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smin.v8i8(<8 x i8>, <8 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 8, i32 24}
!14 = !{!"branch_weights", i32 4, i32 28}
!15 = !{!"short", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = !{!"long", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_Float16", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"float", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"double", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long double", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"branch_weights", i32 1, i32 1048575}
!30 = !{!"_Bool", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"", !22, i64 0, !5, i64 4}
!35 = !{!34, !22, i64 0}
!36 = !{!34, !5, i64 4}
!37 = !{!"", !24, i64 0, !5, i64 8}
!38 = !{!37, !24, i64 0}
!39 = !{!37, !5, i64 8}
!40 = !{!"", !18, i64 0, !5, i64 8}
!41 = !{!40, !18, i64 0}
!42 = !{!40, !5, i64 8}
!43 = !{!"", !5, i64 0, !5, i64 4}
!44 = !{!43, !5, i64 0}
!45 = !{!43, !5, i64 4}
!46 = !{!"", !15, i64 0, !5, i64 4}
!47 = !{!46, !15, i64 0}
!48 = !{!46, !5, i64 4}
!49 = !{!"", !26, i64 0, !5, i64 16}
!50 = !{!49, !26, i64 0}
!51 = !{!49, !5, i64 16}
!52 = distinct !{!52, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !10, !11, !12}
!56 = distinct !{!56, !10, !11, !12}
!57 = distinct !{!57, !10, !11}
!58 = !{!53}
!59 = !{!54}
!60 = distinct !{!60, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !10, !11, !12}
!64 = distinct !{!64, !10, !11, !12}
!65 = distinct !{!65, !10, !11}
!66 = !{!61}
!67 = !{!62}
!68 = distinct !{!68, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !10, !11, !12}
!72 = distinct !{!72, !10, !11, !12}
!73 = distinct !{!73, !10, !11}
!74 = !{!69}
!75 = !{!70}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !10, !11, !12}
!80 = distinct !{!80, !10, !11, !12}
!81 = distinct !{!81, !10, !11}
!82 = !{!77}
!83 = !{!78}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !10, !11, !12}
!88 = distinct !{!88, !10, !11}
!89 = !{!85}
!90 = !{!86}
!91 = distinct !{!91, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !10, !11, !12}
!95 = distinct !{!95, !10, !11}
!96 = !{!92}
!97 = !{!93}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !10, !11, !12}
!102 = distinct !{!102, !10, !11}
!103 = !{!99}
!104 = !{!100}
!105 = distinct !{!105, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !10, !11, !12}
!109 = distinct !{!109, !10, !11}
!110 = !{!106}
!111 = !{!107}
!112 = distinct !{!112, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !10, !11, !12}
!116 = distinct !{!116, !10, !11}
!117 = !{!113}
!118 = !{!114}
!119 = distinct !{!119, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !10, !11, !12}
!123 = distinct !{!123, !10, !11}
!124 = !{!120}
!125 = !{!121}
!126 = distinct !{!126, !"LVerDomain"}
!127 = distinct !{!127, !126}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !10, !11, !12}
!130 = distinct !{!130, !10, !11}
!131 = !{!127}
!132 = !{!128}
!133 = distinct !{!133, !28}
!134 = distinct !{!134, !10}
!135 = distinct !{!135, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !10, !11, !12}
!139 = distinct !{!139, !10, !11}
!140 = !{!136}
!141 = !{!137}
!142 = distinct !{!142, !"LVerDomain"}
!143 = distinct !{!143, !142}
!144 = distinct !{!144, !142}
!145 = distinct !{!145, !10, !11, !12}
!146 = distinct !{!146, !10, !11}
!147 = !{!143}
!148 = !{!144}
!149 = distinct !{!149, !"LVerDomain"}
!150 = distinct !{!150, !149}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !10, !11, !12}
!153 = distinct !{!153, !10, !11, !12}
!154 = distinct !{!154, !10, !11}
!155 = !{!150}
!156 = !{!151}
!157 = distinct !{!157, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !10, !11, !12}
!161 = distinct !{!161, !10, !11, !12}
!162 = distinct !{!162, !10, !11}
!163 = !{!158}
!164 = !{!159}
!165 = distinct !{!165, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !10, !11, !12}
!169 = distinct !{!169, !10, !11, !12}
!170 = distinct !{!170, !10, !11}
!171 = !{!166}
!172 = !{!167}
!173 = distinct !{!173, !"LVerDomain"}
!174 = distinct !{!174, !173}
!175 = distinct !{!175, !173}
!176 = distinct !{!176, !10, !11, !12}
!177 = distinct !{!177, !10, !11, !12}
!178 = distinct !{!178, !10, !11}
!179 = !{!174}
!180 = !{!175}
!181 = distinct !{!181, !"LVerDomain"}
!182 = distinct !{!182, !181}
!183 = distinct !{!183, !181}
!184 = distinct !{!184, !10, !11, !12}
!185 = distinct !{!185, !10, !11}
!186 = !{!182}
!187 = !{!183}
!188 = distinct !{!188, !"LVerDomain"}
!189 = distinct !{!189, !188}
end_hunk_2
