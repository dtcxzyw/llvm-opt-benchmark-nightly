Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 271
begin_hunk_0_@ggml_compute_forward_add_rel_pos:bb.a
bb.f:                                             ; preds = %bb.e, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = load i32, ptr %0, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 2 uses
  %i.aj = trunc i64 %i.af to i32                  ; 2 uses
  %i.ak = add i32 %i.aj, -1
  %i.al = add i32 %i.ak, %i.ai
  %i.am = sdiv i32 %i.al, %i.ai                   ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.ag                ; 3 uses
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.aj) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i32 %i.an, %i.ap
  br i1 %i.ar, label %.preheader82.lr.ph.i, label %_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader82.lr.ph.i:                             ; preds = %bb.f
  %i.as = icmp slt i64 %i.ad, 1
  %i.at = icmp slt i64 %i.ab, 1
  %i.au = icmp slt i64 %i.z, 1
  %i.av = add i64 %i.z, -1                        ; 2 uses
  %brmerge.i = select i1 %i.as, i1 true, i1 %i.at
  %brmerge101.i = select i1 %brmerge.i, i1 true, i1 %i.au
  br i1 %brmerge101.i, label %_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader82.preheader.i

.preheader82.preheader.i:                         ; preds = %.preheader82.lr.ph.i
  %i.aw = sext i32 %i.an to i64
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ax = icmp ult i64 %i.av, 3
  %unroll_iter = and i64 %i.z, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %._crit_edge92.i, %.preheader82.preheader.i
  %.07894.i = phi i64 [ %i.bb, %._crit_edge92.i ], [ %i.aw, %.preheader82.preheader.i ] ; 2 uses
  %i.ay = mul nsw i64 %.07894.i, %i.ad
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge90.i, %.preheader82.i
  %.07791.i = phi i64 [ 0, %.preheader82.i ], [ %i.bc, %._crit_edge90.i ] ; 2 uses
  %i.az = add i64 %.07791.i, %i.ay
  %i.ba = mul i64 %i.az, %i.ab
  br label %.lr.ph86.i

._crit_edge92.i:                                  ; preds = %._crit_edge90.i
  %i.bb = add nsw i64 %.07894.i, 1                ; 2 uses
  %exitcond105.not.i = icmp eq i64 %i.bb, %i.aq
  br i1 %exitcond105.not.i, label %_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader82.i, !llvm.loop !1712

._crit_edge90.i:                                  ; preds = %._crit_edge87.i
  %i.bc = add nuw nsw i64 %.07791.i, 1            ; 2 uses
  %exitcond104.not.i = icmp eq i64 %i.bc, %i.ad
  br i1 %exitcond104.not.i, label %._crit_edge92.i, label %.preheader.i, !llvm.loop !1713

.lr.ph86.i:                                       ; preds = %._crit_edge87.i, %.preheader.i
  %.07688.i = phi i64 [ 0, %.preheader.i ], [ %i.bf, %._crit_edge87.i ] ; 2 uses
  %i.bd = add i64 %.07688.i, %i.ba
  %i.be = mul i64 %i.bd, %i.z
  br label %.lr.ph.i

._crit_edge87.i:                                  ; preds = %._crit_edge.i
  %i.bf = add nuw nsw i64 %.07688.i, 1            ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.bf, %i.ab
  br i1 %exitcond103.not.i, label %._crit_edge90.i, label %.lr.ph86.i, !llvm.loop !1714

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph86.i
  %.07584.i = phi i64 [ 0, %.lr.ph86.i ], [ %i.by, %._crit_edge.i ] ; 3 uses
  %i.bg = add nsw i64 %.07584.i, %i.be            ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !43 ; 5 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !43 ; 5 uses
  %i.bl = mul nsw i64 %i.bg, %i.z                 ; 2 uses
  %i.bm = mul nuw nsw i64 %.07584.i, %i.av
  %i.bn = sub nsw i64 %i.bl, %i.bm
  %i.bo = getelementptr [4 x i8], ptr %i.x, i64 %i.bl ; 5 uses
  %i.bp = getelementptr [4 x i8], ptr %i.x, i64 %i.bn ; 5 uses
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.083.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.de, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.083.i.epil = phi i64 [ %.083.i.epil.init, %.epil.preheader ], [ %i.bx, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bq = getelementptr [4 x i8], ptr %i.bo, i64 %.083.i.epil ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !43
  %i.bs = fadd float %i.bk, %i.br
  store float %i.bs, ptr %i.bq, align 4, !tbaa !43
  %i.bt = mul nuw nsw i64 %.083.i.epil, %i.z
  %i.bu = getelementptr [4 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !43
  %i.bw = fadd float %i.bi, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !43
  %i.bx = add nuw nsw i64 %.083.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.g, !llvm.loop !1715

._crit_edge.i:                                    ; preds = %bb.g, %._crit_edge.i.unr-lcssa
  %i.by = add nuw nsw i64 %.07584.i, 1            ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.by, %i.z
  br i1 %exitcond102.not.i, label %._crit_edge87.i, label %.lr.ph.i, !llvm.loop !1716

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.083.i = phi i64 [ %i.de, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.bz = getelementptr [4 x i8], ptr %i.bo, i64 %.083.i ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !43
  %i.cb = fadd float %i.bk, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !43
  %i.cc = mul nuw nsw i64 %.083.i, %i.z
  %i.cd = getelementptr [4 x i8], ptr %i.bp, i64 %i.cc ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !43
  %i.cf = fadd float %i.bi, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !43
  %i.cg = or disjoint i64 %.083.i, 1              ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.bo, i64 %i.cg ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !43
  %i.cj = fadd float %i.bk, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !43
  %i.ck = mul nuw nsw i64 %i.cg, %i.z
  %i.cl = getelementptr [4 x i8], ptr %i.bp, i64 %i.ck ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !43
  %i.cn = fadd float %i.bi, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !43
  %i.co = or disjoint i64 %.083.i, 2              ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bo, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !43
  %i.cr = fadd float %i.bk, %i.cq
  store float %i.cr, ptr %i.cp, align 4, !tbaa !43
  %i.cs = mul nuw nsw i64 %i.co, %i.z
  %i.ct = getelementptr [4 x i8], ptr %i.bp, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !43
  %i.cv = fadd float %i.bi, %i.cu
  store float %i.cv, ptr %i.ct, align 4, !tbaa !43
  %i.cw = or disjoint i64 %.083.i, 3              ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.bo, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  %i.cz = fadd float %i.bk, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !43
  %i.da = mul nuw nsw i64 %i.cw, %i.z
  %i.db = getelementptr [4 x i8], ptr %i.bp, i64 %i.da ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !43
  %i.dd = fadd float %i.bi, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !43
  %i.de = add nuw nsw i64 %.083.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !1717

_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge92.i, %bb.f, %.preheader82.lr.ph.i
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10406, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rwkv_wkv6(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = sdiv i64 %i.i, %i.k                      ; 48 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 24 uses
  %i.s = mul nsw i64 %i.i, %i.g                   ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s ; 5 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = sext i32 %i.u to i64
  %i.y = mul nsw i64 %i.k, %i.x
  %i.z = sext i32 %i.w to i64                     ; 2 uses
  %i.aa = sdiv i64 %i.y, %i.z
  %i.ab = add nsw i32 %i.u, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.k, %i.ac
  %i.ae = sdiv i64 %i.ad, %i.z
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.k)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 248
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 3 uses
  %i.av = mul nsw i64 %i.p, %i.k                  ; 3 uses
  %i.aw = srem i64 %i.i, %i.k
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10441, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.176) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ay = icmp eq i32 %i.u, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = shl i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.az, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.bb)
  %i.bc = sdiv i64 %i.p, 16                       ; 8 uses
  %i.bd = icmp sgt i64 %i.g, 0
  br i1 %i.bd, label %.lr.ph174.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.i:                                      ; preds = %bb.f
  %i.be = mul nsw i64 %i.p, %i.i                  ; 3 uses
  %i.bf = sdiv i64 %i.g, %i.o                     ; 6 uses
  %i.bg = shl i64 %i.aa, 32                       ; 3 uses
  %i.bh = ashr exact i64 %i.bg, 32                ; 10 uses
  %i.bi = shl i64 %..i, 32
  %i.bj = ashr exact i64 %i.bi, 32                ; 4 uses
  %i.bk = icmp slt i64 %i.bh, %i.bj
  %i.bl = shl nsw i64 %i.bc, 4                    ; 7 uses
  %i.bm = icmp slt i64 %i.bl, %i.p                ; 2 uses
  %i.bn = icmp sgt i64 %i.p, 0
  %or.cond.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond.i, label %.lr.ph174.split.us.split.us.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.split.us.split.us.i:                    ; preds = %.lr.ph174.i
  %i.bo = icmp samesign ugt i64 %i.p, 15
  br i1 %i.bo, label %.lr.ph174.split.us.split.us.split.us.i, label %.lr.ph174.split.us.split.us.split.i

.lr.ph174.split.us.split.us.split.us.i:           ; preds = %.lr.ph174.split.us.split.us.i
  br i1 %i.bm, label %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader, label %.lr.ph174.split.us.split.us.split.us.split.i.preheader

.lr.ph174.split.us.split.us.split.us.split.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.us.i
  %xtraiter165 = and i64 %i.bc, 1
  %i.bp = and i64 %i.p, 9223372036854775792
  %i.bq = icmp eq i64 %i.bp, 16
  %unroll_iter = and i64 %i.bc, 576460752303423486
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %lcmp.mod167 = trunc i64 %i.bc to i1
  br label %.lr.ph174.split.us.split.us.split.us.split.i

.lr.ph174.split.us.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.us.i
  %i.br = mul i64 %i.p, %i.p
  %i.bs = ashr exact i64 %i.bg, 30
  %i.bt = add nsw i64 %i.bs, 4
  %i.bu = mul i64 %i.br, %i.bt                    ; 2 uses
  %i.bv = mul i64 %i.p, %i.p                      ; 2 uses
  %2 = shl i64 %i.bv, 2
  %i.bw = mul i64 %i.bv, %i.bh
  %i.bx = shl i64 %i.bw, 2                        ; 2 uses
  %i.by = shl i64 %i.bc, 6                        ; 3 uses
  %i.bz = add nsw i64 %i.bh, 1
  %i.ca = mul i64 %i.p, %i.bz
  %i.cb = shl i64 %i.ca, 2
  %i.cc = mul i64 %i.k, %i.p
  %i.cd = shl i64 %i.cc, 2
  %i.ce = shl i64 %i.p, 2                         ; 2 uses
  %i.cf = mul i64 %i.p, %i.bh
  %i.cg = shl i64 %i.cf, 2
  %i.ch = add i64 %i.cg, %i.by
  %3 = shl i64 %i.g, 2
  %4 = shl i64 %i.p, 2
  %i.ci = getelementptr i8, ptr %i.r, i64 %i.bu
  %i.cj = getelementptr i8, ptr %i.r, i64 %i.bx
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.by
  %xtraiter169 = and i64 %i.bc, 1
  %i.cl = and i64 %i.p, 9223372036854775792
  %i.cm = icmp eq i64 %i.cl, 16
  %unroll_iter172 = and i64 %i.bc, 576460752303423486
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  %lcmp.mod171 = trunc i64 %i.bc to i1
  %i.cn = sub nsw i64 %i.p, %i.bl                 ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.cn, 8
  %stride.check124 = icmp slt i64 %i.ce, 0
  %i.co = and i64 %i.p, 7                         ; 2 uses
  %n.vec142 = sub i64 %i.cn, %i.co                ; 2 uses
  %i.cp = add i64 %i.bl, %n.vec142
  %cmp.n158 = icmp eq i64 %i.co, 0
  br label %.lr.ph174.split.us.split.us.split.us.split.us.i

.lr.ph174.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader, %._crit_edge.split171.us.split.us.us.us.us.us.i
  %.0154172.us.us.us.us.i = phi i64 [ %i.ih, %._crit_edge.split171.us.split.us.us.us.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader ] ; 5 uses
  %i.cq = mul i64 %i.cd, %.0154172.us.us.us.us.i  ; 2 uses
  %i.cr = add i64 %i.cb, %i.cq
  %i.cs = add i64 %i.ch, %i.cq
  %i.ct = mul i64 %.0154172.us.us.us.us.i, %i.av
  %i.cu = sdiv i64 %.0154172.us.us.us.us.i, %i.bf ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.be                ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cv ; 8 uses
  %i.cx = srem i64 %.0154172.us.us.us.us.i, %i.bf
  %.not.us.us.us.us.i = icmp eq i64 %i.cx, 0
  br i1 %.not.us.us.us.us.i, label %bb.g, label %.lr.ph.us.us.us.us.i

bb.g:                                             ; preds = %.lr.ph174.split.us.split.us.split.us.split.us.i
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 248
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !37
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cv
  br label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %bb.g, %.lr.ph174.split.us.split.us.split.us.split.us.i
  %i.dc = phi ptr [ %i.db, %bb.g ], [ %i.cw, %.lr.ph174.split.us.split.us.split.us.split.us.i ] ; 9 uses
  %i.dd = mul i64 %4, %i.cu
  %i.de = add i64 %3, %i.dd
  %i.df = mul i64 %i.i, %i.de                     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 %i.bu
  %i.dh = getelementptr i8, ptr %i.dc, i64 %i.bx
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.by
  %i.dj = getelementptr i8, ptr %i.ci, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.ck, i64 %i.df
  br label %.lr.ph167.us.us.us.us.us.us.i

.lr.ph167.us.us.us.us.us.us.i:                    ; preds = %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.i
  %indvar108 = phi i64 [ %indvar.next109, %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %.0153169.us.us.us.us.us.us.i = phi i64 [ %i.ig, %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i ], [ %i.bh, %.lr.ph.us.us.us.us.i ] ; 2 uses
  %i.dl = mul i64 %2, %indvar108                  ; 4 uses
  %scevgep110 = getelementptr i8, ptr %i.dg, i64 %i.dl
  %scevgep111 = getelementptr i8, ptr %i.di, i64 %i.dl
  %i.dm = mul i64 %i.ce, %indvar108               ; 2 uses
  %i.dn = add i64 %i.cr, %i.dm                    ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.ai, i64 %i.dn
  %i.do = add i64 %i.cs, %i.dm                    ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.ai, i64 %i.do
  %scevgep114 = getelementptr i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.dk, i64 %i.dl ; 2 uses
  %scevgep116.a = getelementptr i8, ptr %i.r, i64 %i.dn ; 2 uses
  %scevgep117.a = getelementptr i8, ptr %i.r, i64 %i.do ; 2 uses
  %i.dp = mul i64 %.0153169.us.us.us.us.us.us.i, %i.p ; 3 uses
  %i.dq = add i64 %i.dp, %i.ct                    ; 8 uses
  %i.dr = getelementptr [4 x i8], ptr %i.aq, i64 %i.dp
  %5 = insertelement <4 x ptr> poison, ptr %scevgep117.a, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %scevgep111, i64 1
  %7 = insertelement <4 x ptr> %6, ptr %scevgep115, i64 2 ; 2 uses
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %9 = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %10 = insertelement <4 x ptr> %9, ptr %scevgep116.a, i64 1
  %11 = insertelement <4 x ptr> %10, ptr %scevgep114, i64 3 ; 2 uses
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %13 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %14 = insertelement <4 x ptr> %13, ptr %scevgep113, i64 0
  %15 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %16 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %17 = insertelement <4 x ptr> %16, ptr %scevgep110, i64 1
  %18 = shufflevector <4 x ptr> %17, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0121 = icmp ult ptr %scevgep117.a, %scevgep114
  %bound1122 = icmp ult ptr %scevgep115, %scevgep116.a
  %found.conflict123 = and i1 %bound0121, %bound1122
  %19 = icmp ult <4 x ptr> %8, %12
  %20 = icmp ult <4 x ptr> %15, %18
  %21 = and <4 x i1> %20, %19
  %22 = bitcast <4 x i1> %21 to i4
  %23 = icmp ne i4 %22, 0
  %op.rdx = or i1 %23, %found.conflict123
  %op.rdx160 = or i1 %op.rdx, %stride.check124
  br label %.lr.ph.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.i:                 ; preds = %._crit_edge164.us.us.us.us.us.us.us.us.i, %.lr.ph167.us.us.us.us.us.us.i
  %.0152165.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph167.us.us.us.us.us.us.i ], [ %i.if, %._crit_edge164.us.us.us.us.us.us.us.us.i ] ; 4 uses
  %i.ds = add i64 %.0152165.us.us.us.us.us.us.us.us.i, %i.dq ; 3 uses
  %reass.add.us.us.us.us.us.us.us.us.i = add i64 %.0152165.us.us.us.us.us.us.us.us.i, %i.dp
  %reass.mul.us.us.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.us.us.i, %i.p ; 7 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !43 ; 5 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ds
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !43 ; 5 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dr, i64 %.0152165.us.us.us.us.us.us.us.us.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !43 ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ds
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !43 ; 5 uses
  %i.eb = insertelement <16 x float> poison, float %i.du, i64 0
  %i.ec = shufflevector <16 x float> %i.eb, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ed = insertelement <16 x float> poison, float %i.dw, i64 0
  %i.ee = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ef = insertelement <16 x float> poison, float %i.dy, i64 0
  %i.eg = shufflevector <16 x float> %i.ef, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eh = insertelement <16 x float> poison, float %i.ea, i64 0
  %i.ei = shufflevector <16 x float> %i.eh, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.cm, label %.epil.preheader168, label %.lr.ph.us.us.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.us.us.i.new:             ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.i.new
  %.0151160.us.us.us.us.us.us.us.us.i = phi i64 [ %i.fm, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %niter173 = phi i64 [ %niter173.next.1, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.ej = shl nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %i.ek = add i64 %i.ej, %i.dq                    ; 2 uses
  %i.el = add i64 %i.ej, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ek
  %i.en = load <16 x float>, ptr %i.em, align 1, !tbaa !56
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.el
  %i.ep = load <16 x float>, ptr %i.eo, align 1, !tbaa !56 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ek ; 2 uses
  %i.er = load <16 x float>, ptr %i.eq, align 1, !tbaa !56
  %i.es = fmul <16 x float> %i.ec, %i.en          ; 2 uses
  %i.et = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> %i.eg, <16 x float> %i.ep)
  %i.eu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.et, <16 x float> %i.ee, <16 x float> %i.er)
  store <16 x float> %i.eu, ptr %i.eq, align 1, !tbaa !56
  %i.ev = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ep, <16 x float> %i.ei, <16 x float> %i.es)
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.el
  store <16 x float> %i.ev, ptr %i.ew, align 1, !tbaa !56
  %i.ex = shl i64 %.0151160.us.us.us.us.us.us.us.us.i, 4
  %i.ey = or disjoint i64 %i.ex, 16               ; 2 uses
  %i.ez = add i64 %i.ey, %i.dq                    ; 2 uses
  %i.fa = add i64 %i.ey, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ez
  %i.fc = load <16 x float>, ptr %i.fb, align 1, !tbaa !56
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fa
  %i.fe = load <16 x float>, ptr %i.fd, align 1, !tbaa !56 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ez ; 2 uses
  %i.fg = load <16 x float>, ptr %i.ff, align 1, !tbaa !56
  %i.fh = fmul <16 x float> %i.ec, %i.fc          ; 2 uses
  %i.fi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fh, <16 x float> %i.eg, <16 x float> %i.fe)
  %i.fj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fi, <16 x float> %i.ee, <16 x float> %i.fg)
  store <16 x float> %i.fj, ptr %i.ff, align 1, !tbaa !56
  %i.fk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fe, <16 x float> %i.ei, <16 x float> %i.fh)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.fa
  store <16 x float> %i.fk, ptr %i.fl, align 1, !tbaa !56
  %i.fm = add nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %niter173.next.1 = add i64 %niter173, 2         ; 2 uses
  %niter173.ncmp.1 = icmp eq i64 %niter173.next.1, %unroll_iter172
  br i1 %niter173.ncmp.1, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.us.us.i.new, !llvm.loop !1718

._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa: ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod170.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, label %.epil.preheader168

.epil.preheader168:                               ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.us.us.us.us.us.us.i
  %.0151160.us.us.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ], [ %i.fm, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.fn = shl nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.fo = add i64 %i.fn, %i.dq                    ; 2 uses
  %i.fp = add i64 %i.fn, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fo
  %i.fr = load <16 x float>, ptr %i.fq, align 1, !tbaa !56
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fp
  %i.ft = load <16 x float>, ptr %i.fs, align 1, !tbaa !56 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fo ; 2 uses
  %i.fv = load <16 x float>, ptr %i.fu, align 1, !tbaa !56
  %i.fw = fmul <16 x float> %i.ec, %i.fr          ; 2 uses
  %i.fx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fw, <16 x float> %i.eg, <16 x float> %i.ft)
  %i.fy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fx, <16 x float> %i.ee, <16 x float> %i.fv)
  store <16 x float> %i.fy, ptr %i.fu, align 1, !tbaa !56
  %i.fz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ft, <16 x float> %i.ei, <16 x float> %i.fw)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.fp
  store <16 x float> %i.fz, ptr %i.ga, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader

._crit_edge.us.us.us.us.us.us.us.us.i.preheader:  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.epil.preheader168
  %brmerge = select i1 %min.iters.check119, i1 true, i1 %op.rdx160
  br i1 %brmerge, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader162, label %vector.ph141

vector.ph141:                                     ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.du, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <8 x float> poison, float %i.dy, i64 0
  %broadcast.splat146 = shufflevector <8 x float> %broadcast.splatinsert145, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x float> poison, float %i.dw, i64 0
  %broadcast.splat148 = shufflevector <8 x float> %broadcast.splatinsert147, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x float> poison, float %i.ea, i64 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph141
  %index152 = phi i64 [ 0, %vector.ph141 ], [ %index.next156, %vector.body151 ] ; 2 uses
  %i.gb = add nuw i64 %i.bl, %index152            ; 2 uses
  %i.gc = add i64 %i.gb, %i.dq                    ; 2 uses
  %i.gd = add i64 %i.gb, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.gc
  %wide.load153 = load <8 x float>, ptr %i.ge, align 4, !tbaa !43, !alias.scope !1736
  %i.gf = fmul <8 x float> %broadcast.splat144, %wide.load153 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gd
  %wide.load154 = load <8 x float>, ptr %i.gg, align 4, !tbaa !43, !alias.scope !1737 ; 2 uses
  %i.gh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gf, <8 x float> %broadcast.splat146, <8 x float> %wide.load154)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.gc ; 2 uses
  %wide.load155 = load <8 x float>, ptr %i.gi, align 4, !tbaa !43, !alias.scope !1738, !noalias !1739
  %i.gj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gh, <8 x float> %broadcast.splat148, <8 x float> %wide.load155)
  store <8 x float> %i.gj, ptr %i.gi, align 4, !tbaa !43, !alias.scope !1738, !noalias !1739
  %i.gk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load154, <8 x float> %broadcast.splat150, <8 x float> %i.gf)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.gd
  store <8 x float> %i.gk, ptr %i.gl, align 4, !tbaa !43, !alias.scope !1740, !noalias !1741
  %index.next156 = add nuw i64 %index152, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next156, %n.vec142
  br i1 %i.gm, label %middle.block157, label %vector.body151, !llvm.loop !1724

middle.block157:                                  ; preds = %vector.body151
  br i1 %cmp.n158, label %._crit_edge164.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader162

._crit_edge.us.us.us.us.us.us.us.us.i.preheader162: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, %middle.block157
  %.0161.us.us.us.us.us.us.us.us.i.ph = phi i64 [ %i.cp, %middle.block157 ], [ %i.bl, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader ] ; 6 uses
  %i.gn = sub i64 %i.p, %.0161.us.us.us.us.us.us.us.us.i.ph
  %.neg176 = add i64 %.0161.us.us.us.us.us.us.us.us.i.ph, 1
  %xtraiter174 = and i64 %i.gn, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, label %._crit_edge.us.us.us.us.us.us.us.us.i.prol

._crit_edge.us.us.us.us.us.us.us.us.i.prol:       ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader162
  %i.go = add i64 %.0161.us.us.us.us.us.us.us.us.i.ph, %i.dq ; 2 uses
  %i.gp = add i64 %.0161.us.us.us.us.us.us.us.us.i.ph, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.go
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !43
  %i.gs = fmul float %i.du, %i.gr                 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gp
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !43 ; 2 uses
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.dy, float %i.gu)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.go ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !43
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.dw, float %i.gx)
  store float %i.gy, ptr %i.gw, align 4, !tbaa !43
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.ea, float %i.gs)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.gp
  store float %i.gz, ptr %i.ha, align 4, !tbaa !43
  %i.hb = add nuw nsw i64 %.0161.us.us.us.us.us.us.us.us.i.ph, 1
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit

._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader162
  %.0161.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0161.us.us.us.us.us.us.us.us.i.ph, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader162 ], [ %i.hb, %._crit_edge.us.us.us.us.us.us.us.us.i.prol ]
  %i.hc = icmp eq i64 %i.p, %.neg176
  br i1 %i.hc, label %._crit_edge164.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.i:            ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i
  %.0161.us.us.us.us.us.us.us.us.i = phi i64 [ %i.ie, %._crit_edge.us.us.us.us.us.us.us.us.i ], [ %.0161.us.us.us.us.us.us.us.us.i.unr, %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 4 uses
  %i.hd = add i64 %.0161.us.us.us.us.us.us.us.us.i, %i.dq ; 2 uses
  %i.he = add i64 %.0161.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.hd
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !43
  %i.hh = fmul float %i.du, %i.hg                 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.he
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !43 ; 2 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.dy, float %i.hj)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.hd ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !43
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.dw, float %i.hm)
  store float %i.hn, ptr %i.hl, align 4, !tbaa !43
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.ea, float %i.hh)
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.he
  store float %i.ho, ptr %i.hp, align 4, !tbaa !43
  %i.hq = add nuw nsw i64 %.0161.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.hr = add i64 %i.hq, %i.dq                    ; 2 uses
  %i.hs = add i64 %i.hq, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.hr
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !43
  %i.hv = fmul float %i.du, %i.hu                 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hs
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !43 ; 2 uses
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.dy, float %i.hx)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.hr ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !43
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.dw, float %i.ia)
  store float %i.ib, ptr %i.hz, align 4, !tbaa !43
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.ea, float %i.hv)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.hs
  store float %i.ic, ptr %i.id, align 4, !tbaa !43
  %i.ie = add nuw nsw i64 %.0161.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %exitcond200.not.i.1 = icmp eq i64 %i.ie, %i.p
  br i1 %exitcond200.not.i.1, label %._crit_edge164.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i, !llvm.loop !1725

._crit_edge164.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i, %middle.block157
  %i.if = add nuw nsw i64 %.0152165.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %i.if, %i.p
  br i1 %exitcond201.not.i, label %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.i, !llvm.loop !1726

._crit_edge168.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge164.us.us.us.us.us.us.us.us.i
  %i.ig = add nsw i64 %.0153169.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.ig, %i.bj
  %indvar.next109 = add i64 %indvar108, 1
  br i1 %exitcond202.not.i, label %._crit_edge.split171.us.split.us.us.us.us.us.i, label %.lr.ph167.us.us.us.us.us.us.i, !llvm.loop !1727

._crit_edge.split171.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i
  %i.ih = add nuw nsw i64 %.0154172.us.us.us.us.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.ih, %i.g
  br i1 %exitcond203.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph174.split.us.split.us.split.us.split.us.i, !llvm.loop !1728

.lr.ph174.split.us.split.us.split.us.split.i:     ; preds = %.lr.ph174.split.us.split.us.split.us.split.i.preheader, %._crit_edge.split171.us.split.us183.us.us.i
  %.0154172.us.us.us.i = phi i64 [ %i.lg, %._crit_edge.split171.us.split.us183.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.us.split.i.preheader ] ; 4 uses
  %i.ii = mul i64 %.0154172.us.us.us.i, %i.av
  %i.ij = sdiv i64 %.0154172.us.us.us.i, %i.bf
  %i.ik = mul nsw i64 %i.ij, %i.be                ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ik ; 3 uses
  %i.im = srem i64 %.0154172.us.us.us.i, %i.bf
  %.not.us.us.us.i = icmp eq i64 %i.im, 0
  br i1 %.not.us.us.us.i, label %bb.h, label %.lr.ph.us.us.us.i

bb.h:                                             ; preds = %.lr.ph174.split.us.split.us.split.us.split.i
  %i.in = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 248
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !37
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %bb.h, %.lr.ph174.split.us.split.us.split.us.split.i
  %i.iq = phi ptr [ %i.ip, %bb.h ], [ %i.t, %.lr.ph174.split.us.split.us.split.us.split.i ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ik ; 3 uses
  br label %.lr.ph167.us.us181.us.us.i

.lr.ph167.us.us181.us.us.i:                       ; preds = %._crit_edge168.split.us.us.split.us.us.us.i, %.lr.ph.us.us.us.i
  %.0153169.us.us182.us.us.i = phi i64 [ %i.bh, %.lr.ph.us.us.us.i ], [ %i.lf, %._crit_edge168.split.us.us.split.us.us.us.i ] ; 2 uses
  %i.is = mul i64 %.0153169.us.us182.us.us.i, %i.p ; 3 uses
  %i.it = add i64 %i.is, %i.ii                    ; 4 uses
  %i.iu = getelementptr [4 x i8], ptr %i.aq, i64 %i.is
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.lr.ph167.us.us181.us.us.i
  %.0152165.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph167.us.us181.us.us.i ], [ %i.le, %._crit_edge.us.us.us.us.us.i ] ; 4 uses
  %i.iv = add i64 %.0152165.us.us.us.us.us.i, %i.it ; 3 uses
  %reass.add.us.us.us.us.us.i = add i64 %.0152165.us.us.us.us.us.i, %i.is
  %reass.mul.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.i, %i.p ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !43
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.iv
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !43
  %i.ja = getelementptr [4 x i8], ptr %i.iu, i64 %.0152165.us.us.us.us.us.i
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !43
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.iv
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !43
  %i.je = insertelement <16 x float> poison, float %i.ix, i64 0
  %i.jf = shufflevector <16 x float> %i.je, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jg = insertelement <16 x float> poison, float %i.iz, i64 0
  %i.jh = shufflevector <16 x float> %i.jg, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ji = insertelement <16 x float> poison, float %i.jb, i64 0
  %i.jj = shufflevector <16 x float> %i.ji, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jk = insertelement <16 x float> poison, float %i.jd, i64 0
  %i.jl = shufflevector <16 x float> %i.jk, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.i.new:                      ; preds = %.lr.ph.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.i.new
  %.0151160.us.us.us.us.us.i = phi i64 [ %i.kp, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ]
  %i.jm = shl nuw nsw i64 %.0151160.us.us.us.us.us.i, 4 ; 2 uses
  %i.jn = add i64 %i.jm, %i.it                    ; 2 uses
  %i.jo = add i64 %i.jm, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.jn
  %i.jq = load <16 x float>, ptr %i.jp, align 1, !tbaa !56
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jo
  %i.js = load <16 x float>, ptr %i.jr, align 1, !tbaa !56 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.jn ; 2 uses
  %i.ju = load <16 x float>, ptr %i.jt, align 1, !tbaa !56
  %i.jv = fmul <16 x float> %i.jf, %i.jq          ; 2 uses
  %i.jw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jv, <16 x float> %i.jj, <16 x float> %i.js)
  %i.jx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jw, <16 x float> %i.jh, <16 x float> %i.ju)
  store <16 x float> %i.jx, ptr %i.jt, align 1, !tbaa !56
  %i.jy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.js, <16 x float> %i.jl, <16 x float> %i.jv)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.jo
  store <16 x float> %i.jy, ptr %i.jz, align 1, !tbaa !56
  %i.ka = shl i64 %.0151160.us.us.us.us.us.i, 4
  %i.kb = or disjoint i64 %i.ka, 16               ; 2 uses
  %i.kc = add i64 %i.kb, %i.it                    ; 2 uses
  %i.kd = add i64 %i.kb, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.kc
  %i.kf = load <16 x float>, ptr %i.ke, align 1, !tbaa !56
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.kd
  %i.kh = load <16 x float>, ptr %i.kg, align 1, !tbaa !56 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.kc ; 2 uses
  %i.kj = load <16 x float>, ptr %i.ki, align 1, !tbaa !56
  %i.kk = fmul <16 x float> %i.jf, %i.kf          ; 2 uses
  %i.kl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kk, <16 x float> %i.jj, <16 x float> %i.kh)
  %i.km = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kl, <16 x float> %i.jh, <16 x float> %i.kj)
  store <16 x float> %i.km, ptr %i.ki, align 1, !tbaa !56
  %i.kn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kh, <16 x float> %i.jl, <16 x float> %i.kk)
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.kd
  store <16 x float> %i.kn, ptr %i.ko, align 1, !tbaa !56
  %i.kp = add nuw nsw i64 %.0151160.us.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.us.us.i.new, !llvm.loop !1718

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.lr.ph.us.us.us.us.us.i.new
  br i1 %lcmp.mod166.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.us.us.i
  %.0151160.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %i.kp, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.kq = shl nuw nsw i64 %.0151160.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.kr = add i64 %i.kq, %i.it                    ; 2 uses
  %i.ks = add i64 %i.kq, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.kr
  %i.ku = load <16 x float>, ptr %i.kt, align 1, !tbaa !56
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ks
  %i.kw = load <16 x float>, ptr %i.kv, align 1, !tbaa !56 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.kr ; 2 uses
  %i.ky = load <16 x float>, ptr %i.kx, align 1, !tbaa !56
  %i.kz = fmul <16 x float> %i.jf, %i.ku          ; 2 uses
  %i.la = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kz, <16 x float> %i.jj, <16 x float> %i.kw)
  %i.lb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.la, <16 x float> %i.jh, <16 x float> %i.ky)
  store <16 x float> %i.lb, ptr %i.kx, align 1, !tbaa !56
  %i.lc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kw, <16 x float> %i.jl, <16 x float> %i.kz)
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ks
  store <16 x float> %i.lc, ptr %i.ld, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.le = add nuw nsw i64 %.0152165.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %i.le, %i.p
  br i1 %exitcond196.not.i, label %._crit_edge168.split.us.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1726

._crit_edge168.split.us.us.split.us.us.us.i:      ; preds = %._crit_edge.us.us.us.us.us.i
  %i.lf = add nsw i64 %.0153169.us.us182.us.us.i, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %i.lf, %i.bj
  br i1 %exitcond197.not.i, label %._crit_edge.split171.us.split.us183.us.us.i, label %.lr.ph167.us.us181.us.us.i, !llvm.loop !1727

._crit_edge.split171.us.split.us183.us.us.i:      ; preds = %._crit_edge168.split.us.us.split.us.us.us.i
  %i.lg = add nuw nsw i64 %.0154172.us.us.us.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %i.lg, %i.g
  br i1 %exitcond198.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph174.split.us.split.us.split.us.split.i, !llvm.loop !1728

.lr.ph174.split.us.split.us.split.i:              ; preds = %.lr.ph174.split.us.split.us.i
  br i1 %i.bm, label %.lr.ph174.split.us.split.us.split.split.us.i.preheader, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.split.us.split.us.split.split.us.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.i
  %24 = ashr exact i64 %i.bg, 30
  %25 = add nsw i64 %24, 4                        ; 2 uses
  %26 = mul nsw i64 %i.p, %25
  %i.lh = shl i64 %i.i, 2
  %i.li = mul nuw nsw i64 %i.p, %i.p
  %i.lj = shl nuw nsw i64 %i.li, 2
  %i.lk = mul nsw i64 %i.p, %i.bh
  %i.ll = shl i64 %i.lk, 2                        ; 2 uses
  %i.lm = add nsw i64 %i.bh, 1
  %i.ln = mul nsw i64 %i.p, %i.lm
  %i.lo = shl i64 %i.ln, 2
  %i.lp = mul i64 %i.k, %i.p
  %i.lq = shl i64 %i.lp, 2
  %i.lr = shl nuw nsw i64 %i.p, 2
  %i.ls = mul nuw nsw i64 %i.p, %i.p              ; 2 uses
  %i.lt = mul nsw i64 %i.ls, %25
  %27 = shl i64 %i.g, 2
  %i.lu = shl nuw nsw i64 %i.p, 2
  %28 = mul nsw i64 %i.ls, %i.bh
  %29 = shl i64 %28, 2
  %i.lv = getelementptr i8, ptr %i.r, i64 %i.lt
  %i.lw = getelementptr i8, ptr %i.r, i64 %29
  %i.lx = sub nuw nsw i64 %i.p, %i.bl             ; 2 uses
  %min.iters.check = icmp ult i64 %i.lx, 8
  %i.ly = and i64 %i.p, 7                         ; 2 uses
  %n.vec = sub nsw i64 %i.lx, %i.ly               ; 2 uses
  %cmp.n = icmp eq i64 %i.ly, 0
  br label %.lr.ph174.split.us.split.us.split.split.us.i

.lr.ph174.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph174.split.us.split.us.split.split.us.i.preheader, %._crit_edge.split171.us179.us.us.i
  %.0154172.us.us.us184.i = phi i64 [ %i.pt, %._crit_edge.split171.us179.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.split.us.i.preheader ] ; 5 uses
  %i.lz = mul i64 %i.lq, %.0154172.us.us.us184.i  ; 2 uses
  %i.ma = add i64 %i.lo, %i.lz
  %i.mb = add i64 %i.ll, %i.lz
  %i.mc = mul i64 %.0154172.us.us.us184.i, %i.av
  %i.md = sdiv i64 %.0154172.us.us.us184.i, %i.bf ; 3 uses
  %i.me = mul nsw i64 %i.md, %i.be                ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.me ; 4 uses
  %i.mg = srem i64 %.0154172.us.us.us184.i, %i.bf
  %.not.us.us.us185.i = icmp eq i64 %i.mg, 0
  br i1 %.not.us.us.us185.i, label %bb.i, label %.lr.ph.us.us.us186.i

bb.i:                                             ; preds = %.lr.ph174.split.us.split.us.split.split.us.i
  %i.mh = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 248
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !37
  br label %.lr.ph.us.us.us186.i

.lr.ph.us.us.us186.i:                             ; preds = %bb.i, %.lr.ph174.split.us.split.us.split.split.us.i
  %i.mk = phi ptr [ %i.mj, %bb.i ], [ %i.t, %.lr.ph174.split.us.split.us.split.split.us.i ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.me ; 4 uses
  %i.mm = mul i64 %i.lh, %i.md                    ; 2 uses
  %i.mn = add i64 %26, %i.mm
  %i.mo = mul i64 %i.p, %i.mn
  %i.mp = add i64 %i.ll, %i.mm
  %i.mq = mul i64 %i.p, %i.mp
  %i.mr = mul i64 %i.lu, %i.md
  %i.ms = add i64 %27, %i.mr
  %i.mt = mul i64 %i.i, %i.ms                     ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mk, i64 %i.mo
  %i.mv = getelementptr i8, ptr %i.mk, i64 %i.mq
  %i.mw = getelementptr i8, ptr %i.lv, i64 %i.mt
  %i.mx = getelementptr i8, ptr %i.lw, i64 %i.mt
  br label %.lr.ph167.us177.us.us.i

.lr.ph167.us177.us.us.i:                          ; preds = %._crit_edge168.split.us.us.us.i, %.lr.ph.us.us.us186.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge168.split.us.us.us.i ], [ 0, %.lr.ph.us.us.us186.i ] ; 3 uses
  %.0153169.us178.us.us.i = phi i64 [ %i.ps, %._crit_edge168.split.us.us.us.i ], [ %i.bh, %.lr.ph.us.us.us186.i ] ; 2 uses
  %i.my = mul i64 %i.lj, %indvar                  ; 4 uses
  %scevgep.a = getelementptr i8, ptr %i.mu, i64 %i.my
  %scevgep47 = getelementptr i8, ptr %i.mv, i64 %i.my
  %i.mz = mul i64 %i.lr, %indvar                  ; 2 uses
  %i.na = add i64 %i.ma, %i.mz                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.ai, i64 %i.na
  %i.nb = add i64 %i.mb, %i.mz                    ; 2 uses
  %scevgep49.a = getelementptr i8, ptr %i.ai, i64 %i.nb
  %scevgep50 = getelementptr i8, ptr %i.mw, i64 %i.my ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.mx, i64 %i.my ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.r, i64 %i.na ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.r, i64 %i.nb ; 2 uses
  %i.nc = mul i64 %.0153169.us178.us.us.i, %i.p   ; 3 uses
  %i.nd = add i64 %i.nc, %i.mc                    ; 5 uses
  %i.ne = getelementptr [4 x i8], ptr %i.aq, i64 %i.nc
  %30 = insertelement <4 x ptr> poison, ptr %scevgep53, i64 0
  %31 = insertelement <4 x ptr> %30, ptr %scevgep47, i64 1
  %32 = insertelement <4 x ptr> %31, ptr %scevgep51, i64 2 ; 2 uses
  %33 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %34 = insertelement <4 x ptr> poison, ptr %scevgep48, i64 0
  %35 = insertelement <4 x ptr> %34, ptr %scevgep52, i64 1
  %36 = insertelement <4 x ptr> %35, ptr %scevgep50, i64 3 ; 2 uses
  %37 = shufflevector <4 x ptr> %36, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %38 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %39 = insertelement <4 x ptr> %38, ptr %scevgep49.a, i64 0
  %40 = shufflevector <4 x ptr> %39, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %41 = shufflevector <4 x ptr> %36, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %42 = insertelement <4 x ptr> %41, ptr %scevgep.a, i64 1
  %43 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0.a = icmp ult ptr %scevgep53, %scevgep50
  %bound1.a = icmp ult ptr %scevgep51, %scevgep52
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %44 = icmp ult <4 x ptr> %33, %37
  %45 = icmp ult <4 x ptr> %40, %43
  %46 = and <4 x i1> %45, %44
  %47 = bitcast <4 x i1> %46 to i4
  %48 = icmp ne i4 %47, 0
  %op.rdx161 = or i1 %48, %found.conflict.a
  br label %.lr.ph163.us.us.us.i

.lr.ph163.us.us.us.i:                             ; preds = %._crit_edge164.us.us.us.i, %.lr.ph167.us177.us.us.i
  %.0152165.us.us.us.i = phi i64 [ 0, %.lr.ph167.us177.us.us.i ], [ %i.pr, %._crit_edge164.us.us.us.i ] ; 4 uses
  %i.nf = add i64 %.0152165.us.us.us.i, %i.nd     ; 3 uses
  %reass.add.us.us.us.i = add i64 %.0152165.us.us.us.i, %i.nc
  %reass.mul.us.us.us.i = mul i64 %reass.add.us.us.us.i, %i.p ; 4 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.nf
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !43 ; 4 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.nf
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !43 ; 4 uses
  %i.nk = getelementptr [4 x i8], ptr %i.ne, i64 %.0152165.us.us.us.i
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !43 ; 4 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.nf
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !43 ; 4 uses
  %brmerge178 = select i1 %min.iters.check, i1 true, i1 %op.rdx161
  br i1 %brmerge178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph163.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.nh, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.nj, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.nl, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.nn, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.no = add i64 %index, %i.nd                   ; 2 uses
  %i.np = add i64 %index, %reass.mul.us.us.us.i   ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.no
  %wide.load = load <8 x float>, ptr %i.nq, align 4, !tbaa !43, !alias.scope !1742
  %i.nr = fmul <8 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.np
  %wide.load75 = load <8 x float>, ptr %i.ns, align 4, !tbaa !43, !alias.scope !1743 ; 2 uses
  %i.nt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nr, <8 x float> %broadcast.splat72, <8 x float> %wide.load75)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.no ; 2 uses
  %wide.load76 = load <8 x float>, ptr %i.nu, align 4, !tbaa !43, !alias.scope !1744, !noalias !1745
  %i.nv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nt, <8 x float> %broadcast.splat70, <8 x float> %wide.load76)
  store <8 x float> %i.nv, ptr %i.nu, align 4, !tbaa !43, !alias.scope !1744, !noalias !1745
  %i.nw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load75, <8 x float> %broadcast.splat74, <8 x float> %i.nr)
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.np
  store <8 x float> %i.nw, ptr %i.nx, align 4, !tbaa !43, !alias.scope !1746, !noalias !1747
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ny = icmp eq i64 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !1734

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge164.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph163.us.us.us.i, %middle.block
  %.0161.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bl, %.lr.ph163.us.us.us.i ] ; 6 uses
  %i.nz = sub nsw i64 %i.p, %.0161.us.us.us.i.ph
  %.neg = add nsw i64 %.0161.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.nz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.oa = add i64 %.0161.us.us.us.i.ph, %i.nd     ; 2 uses
  %i.ob = add i64 %.0161.us.us.us.i.ph, %reass.mul.us.us.us.i ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.oa
  %i.od = load float, ptr %i.oc, align 4, !tbaa !43
  %i.oe = fmul float %i.nh, %i.od                 ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ob
  %i.og = load float, ptr %i.of, align 4, !tbaa !43 ; 2 uses
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.nl, float %i.og)
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.oa ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !43
  %i.ok = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.nj, float %i.oj)
  store float %i.ok, ptr %i.oi, align 4, !tbaa !43
  %i.ol = tail call float @llvm.fmuladd.f32(float %i.og, float %i.nn, float %i.oe)
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.ob
  store float %i.ol, ptr %i.om, align 4, !tbaa !43
  %i.on = add nuw nsw i64 %.0161.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0161.us.us.us.i.unr = phi i64 [ %.0161.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.on, %scalar.ph.prol ]
  %i.oo = icmp eq i64 %i.p, %.neg
  br i1 %i.oo, label %._crit_edge164.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0161.us.us.us.i = phi i64 [ %i.pq, %scalar.ph ], [ %.0161.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.op = add i64 %.0161.us.us.us.i, %i.nd        ; 2 uses
  %i.oq = add i64 %.0161.us.us.us.i, %reass.mul.us.us.us.i ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.op
  %i.os = load float, ptr %i.or, align 4, !tbaa !43
  %i.ot = fmul float %i.nh, %i.os                 ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.oq
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !43 ; 2 uses
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.nl, float %i.ov)
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.op ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !43
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.ow, float %i.nj, float %i.oy)
  store float %i.oz, ptr %i.ox, align 4, !tbaa !43
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.nn, float %i.ot)
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.oq
  store float %i.pa, ptr %i.pb, align 4, !tbaa !43
  %i.pc = add nuw nsw i64 %.0161.us.us.us.i, 1    ; 2 uses
  %i.pd = add i64 %i.pc, %i.nd                    ; 2 uses
  %i.pe = add i64 %i.pc, %reass.mul.us.us.us.i    ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.pd
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !43
  %i.ph = fmul float %i.nh, %i.pg                 ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.pe
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !43 ; 2 uses
  %i.pk = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.nl, float %i.pj)
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.pd ; 2 uses
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !43
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pk, float %i.nj, float %i.pm)
  store float %i.pn, ptr %i.pl, align 4, !tbaa !43
  %i.po = tail call float @llvm.fmuladd.f32(float %i.pj, float %i.nn, float %i.ph)
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.pe
  store float %i.po, ptr %i.pp, align 4, !tbaa !43
  %i.pq = add nuw nsw i64 %.0161.us.us.us.i, 2    ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.pq, %i.p
  br i1 %exitcond.not.i.1, label %._crit_edge164.us.us.us.i, label %scalar.ph, !llvm.loop !1735

._crit_edge164.us.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.pr = add nuw nsw i64 %.0152165.us.us.us.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.pr, %i.p
  br i1 %exitcond192.not.i, label %._crit_edge168.split.us.us.us.i, label %.lr.ph163.us.us.us.i, !llvm.loop !1726

._crit_edge168.split.us.us.us.i:                  ; preds = %._crit_edge164.us.us.us.i
  %i.ps = add nsw i64 %.0153169.us178.us.us.i, 1  ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ps, %i.bj
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond193.not.i, label %._crit_edge.split171.us179.us.us.i, label %.lr.ph167.us177.us.us.i, !llvm.loop !1727

._crit_edge.split171.us179.us.us.i:               ; preds = %._crit_edge168.split.us.us.us.i
  %i.pt = add nuw nsw i64 %.0154172.us.us.us184.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %i.pt, %i.g
  br i1 %exitcond194.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph174.split.us.split.us.split.split.us.i, !llvm.loop !1728

_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split171.us179.us.us.i, %._crit_edge.split171.us.split.us183.us.us.i, %._crit_edge.split171.us.split.us.us.us.us.us.i, %bb.f, %.lr.ph174.i, %.lr.ph174.split.us.split.us.split.i
  ret void

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10618, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_gla(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = sdiv i64 %i.i, %i.k                      ; 50 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.r = load float, ptr %i.q, align 4, !tbaa !43 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 24 uses
  %i.u = mul nsw i64 %i.i, %i.g                   ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 5 uses
  %i.w = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = sext i32 %i.w to i64
  %i.aa = mul nsw i64 %i.k, %i.z
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %i.ac = sdiv i64 %i.aa, %i.ab
  %i.ad = add nsw i32 %i.w, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.k, %i.ae
  %i.ag = sdiv i64 %i.af, %i.ab
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.k)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 18 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 3 uses
  %i.at = srem i64 %i.i, %i.k
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10653, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.176) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.av = icmp eq i32 %i.w, 0
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = shl i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %i.aw, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.ay)
  %i.az = sdiv i64 %i.p, 16                       ; 8 uses
  %i.ba = icmp sgt i64 %i.g, 0
  br i1 %i.ba, label %.lr.ph167.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph167.i:                                      ; preds = %bb.f
  %i.bb = mul nsw i64 %i.p, %i.i                  ; 3 uses
  %i.bc = sdiv i64 %i.g, %i.o                     ; 6 uses
  %i.bd = shl i64 %i.ac, 32                       ; 3 uses
  %i.be = ashr exact i64 %i.bd, 32                ; 10 uses
  %i.bf = shl i64 %..i, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 4 uses
  %i.bh = icmp slt i64 %i.be, %i.bg
  %i.bi = shl nsw i64 %i.az, 4                    ; 7 uses
  %i.bj = icmp slt i64 %i.bi, %i.p                ; 2 uses
  %i.bk = icmp sgt i64 %i.p, 0
  %or.cond.i = select i1 %i.bh, i1 %i.bk, i1 false
  br i1 %or.cond.i, label %.lr.ph167.split.us.split.us.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph167.split.us.split.us.i:                    ; preds = %.lr.ph167.i
  %i.bl = icmp samesign ugt i64 %i.p, 15
  br i1 %i.bl, label %.lr.ph167.split.us.split.us.split.us.i, label %.lr.ph167.split.us.split.us.split.i

.lr.ph167.split.us.split.us.split.us.i:           ; preds = %.lr.ph167.split.us.split.us.i
  br i1 %i.bj, label %.lr.ph167.split.us.split.us.split.us.split.us.i.preheader, label %.lr.ph167.split.us.split.us.split.us.split.i.preheader

.lr.ph167.split.us.split.us.split.us.split.i.preheader: ; preds = %.lr.ph167.split.us.split.us.split.us.i
  %xtraiter161 = and i64 %i.az, 1
  %i.bm = and i64 %i.p, 9223372036854775792
  %i.bn = icmp eq i64 %i.bm, 16
  %unroll_iter = and i64 %i.az, 576460752303423486
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod163 = trunc i64 %i.az to i1
  br label %.lr.ph167.split.us.split.us.split.us.split.i

.lr.ph167.split.us.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph167.split.us.split.us.split.us.i
  %i.bo = mul i64 %i.p, %i.p
  %i.bp = ashr exact i64 %i.bd, 30
  %i.bq = add nsw i64 %i.bp, 4
  %i.br = mul i64 %i.bo, %i.bq                    ; 2 uses
  %i.bs = mul i64 %i.p, %i.p                      ; 2 uses
  %2 = shl i64 %i.bs, 2
  %i.bt = mul i64 %i.bs, %i.be
  %i.bu = shl i64 %i.bt, 2                        ; 2 uses
  %i.bv = shl i64 %i.az, 6                        ; 3 uses
  %i.bw = add nsw i64 %i.be, 1
  %i.bx = mul i64 %i.p, %i.bw
  %i.by = shl i64 %i.bx, 2
  %i.bz = mul i64 %i.k, %i.p
  %i.ca = shl i64 %i.bz, 2
  %i.cb = shl i64 %i.p, 2                         ; 2 uses
  %i.cc = mul i64 %i.p, %i.be
  %i.cd = shl i64 %i.cc, 2
  %i.ce = add i64 %i.cd, %i.bv
  %3 = shl i64 %i.g, 2
  %4 = shl i64 %i.p, 2
  %i.cf = getelementptr i8, ptr %i.t, i64 %i.br
  %i.cg = getelementptr i8, ptr %i.t, i64 %i.bu
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.bv
  %xtraiter165 = and i64 %i.az, 1
  %i.ci = and i64 %i.p, 9223372036854775792
  %i.cj = icmp eq i64 %i.ci, 16
  %unroll_iter168 = and i64 %i.az, 576460752303423486
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %lcmp.mod167 = trunc i64 %i.az to i1
  %i.ck = sub nsw i64 %i.p, %i.bi                 ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.ck, 16
  %stride.check122 = icmp slt i64 %i.cb, 0
  %i.cl = and i64 %i.p, 7                         ; 2 uses
  %n.vec140 = sub i64 %i.ck, %i.cl                ; 2 uses
  %i.cm = add i64 %i.bi, %n.vec140
  %cmp.n154 = icmp eq i64 %i.cl, 0
  br label %.lr.ph167.split.us.split.us.split.us.split.us.i

.lr.ph167.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph167.split.us.split.us.split.us.split.us.i.preheader, %._crit_edge.split164.us.split.us.us.us.us.us.i
  %.0145165.us.us.us.us.i = phi i64 [ %i.hs, %._crit_edge.split164.us.split.us.us.us.us.us.i ], [ 0, %.lr.ph167.split.us.split.us.split.us.split.us.i.preheader ] ; 5 uses
  %i.cn = mul i64 %i.ca, %.0145165.us.us.us.us.i  ; 2 uses
  %i.co = add i64 %i.by, %i.cn
  %i.cp = add i64 %i.ce, %i.cn
  %i.cq = mul i64 %.0145165.us.us.us.us.i, %i.k
  %i.cr = sdiv i64 %.0145165.us.us.us.us.i, %i.bc ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.bb                ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cs ; 8 uses
  %i.cu = srem i64 %.0145165.us.us.us.us.i, %i.bc
  %.not.us.us.us.us.i = icmp eq i64 %i.cu, 0
  br i1 %.not.us.us.us.us.i, label %bb.g, label %.lr.ph.us.us.us.us.i

bb.g:                                             ; preds = %.lr.ph167.split.us.split.us.split.us.split.us.i
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 248
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %bb.g, %.lr.ph167.split.us.split.us.split.us.split.us.i
  %i.cz = phi ptr [ %i.cy, %bb.g ], [ %i.ct, %.lr.ph167.split.us.split.us.split.us.split.us.i ] ; 9 uses
  %i.da = mul i64 %4, %i.cr
  %i.db = add i64 %3, %i.da
  %i.dc = mul i64 %i.i, %i.db                     ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.br
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.bu
  %i.df = getelementptr i8, ptr %i.de, i64 %i.bv
  %i.dg = getelementptr i8, ptr %i.cf, i64 %i.dc
  %i.dh = getelementptr i8, ptr %i.ch, i64 %i.dc
  br label %.lr.ph160.us.us.us.us.us.us.i

.lr.ph160.us.us.us.us.us.us.i:                    ; preds = %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.i
  %indvar106 = phi i64 [ %indvar.next107, %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %.0144162.us.us.us.us.us.us.i = phi i64 [ %i.hr, %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i ], [ %i.be, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %i.di = mul i64 %2, %indvar106                  ; 4 uses
  %scevgep108 = getelementptr i8, ptr %i.dd, i64 %i.di
  %scevgep109 = getelementptr i8, ptr %i.df, i64 %i.di
  %i.dj = mul i64 %i.cb, %indvar106               ; 2 uses
  %i.dk = add i64 %i.co, %i.dj                    ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.ak, i64 %i.dk
  %i.dl = add i64 %i.cp, %i.dj                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.ak, i64 %i.dl
  %scevgep112 = getelementptr i8, ptr %i.dg, i64 %i.di ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.dh, i64 %i.di ; 2 uses
  %scevgep114.a = getelementptr i8, ptr %i.t, i64 %i.dk ; 2 uses
  %scevgep115.a = getelementptr i8, ptr %i.t, i64 %i.dl ; 2 uses
  %reass.add.us.us.us.us.us.us.i = add i64 %.0144162.us.us.us.us.us.us.i, %i.cq
  %reass.mul.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.i, %i.p ; 8 uses
  %i.dm = mul i64 %.0144162.us.us.us.us.us.us.i, %i.p
  %5 = insertelement <4 x ptr> poison, ptr %scevgep115.a, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %scevgep109, i64 1
  %7 = insertelement <4 x ptr> %6, ptr %scevgep113, i64 2 ; 2 uses
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %9 = insertelement <4 x ptr> poison, ptr %scevgep110, i64 0
  %10 = insertelement <4 x ptr> %9, ptr %scevgep114.a, i64 1
  %11 = insertelement <4 x ptr> %10, ptr %scevgep112, i64 3 ; 2 uses
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %13 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %14 = insertelement <4 x ptr> %13, ptr %scevgep111, i64 0
  %15 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %16 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %17 = insertelement <4 x ptr> %16, ptr %scevgep108, i64 1
  %18 = shufflevector <4 x ptr> %17, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0119 = icmp ult ptr %scevgep115.a, %scevgep112
  %bound1120 = icmp ult ptr %scevgep113, %scevgep114.a
  %found.conflict121 = and i1 %bound0119, %bound1120
  %19 = icmp ult <4 x ptr> %8, %12
  %20 = icmp ult <4 x ptr> %15, %18
  %21 = and <4 x i1> %20, %19
  %22 = bitcast <4 x i1> %21 to i4
  %23 = icmp ne i4 %22, 0
  %op.rdx = or i1 %23, %found.conflict121
  %op.rdx156 = or i1 %op.rdx, %stride.check122
  br label %.lr.ph.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.i:                 ; preds = %._crit_edge157.us.us.us.us.us.us.us.us.i, %.lr.ph160.us.us.us.us.us.us.i
  %.0143158.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph160.us.us.us.us.us.us.i ], [ %i.hq, %._crit_edge157.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.dn = add i64 %.0143158.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.i ; 3 uses
  %reass.add151.us.us.us.us.us.us.us.us.i = add i64 %.0143158.us.us.us.us.us.us.us.us.i, %i.dm
  %reass.mul152.us.us.us.us.us.us.us.us.i = mul i64 %reass.add151.us.us.us.us.us.us.us.us.i, %i.p ; 7 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !43 ; 5 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.dn
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !43
  %i.ds = fmul float %i.r, %i.dr                  ; 5 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.dn
  %i.du = load float, ptr %i.dt, align 4, !tbaa !43 ; 5 uses
  %i.dv = insertelement <16 x float> poison, float %i.dp, i64 0
  %i.dw = shufflevector <16 x float> %i.dv, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dx = insertelement <16 x float> poison, float %i.ds, i64 0
  %i.dy = shufflevector <16 x float> %i.dx, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dz = insertelement <16 x float> poison, float %i.du, i64 0
  %i.ea = shufflevector <16 x float> %i.dz, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.cj, label %.epil.preheader164, label %.lr.ph.us.us.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.us.us.i.new:             ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.i.new
  %.0142153.us.us.us.us.us.us.us.us.i = phi i64 [ %i.fc, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %niter169 = phi i64 [ %niter169.next.1, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.eb = shl nuw nsw i64 %.0142153.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %i.ec = add i64 %i.eb, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.ed = add i64 %i.eb, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ec
  %i.ef = load <16 x float>, ptr %i.ee, align 1, !tbaa !56
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ed
  %i.eh = load <16 x float>, ptr %i.eg, align 1, !tbaa !56
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ec ; 2 uses
  %i.ej = load <16 x float>, ptr %i.ei, align 1, !tbaa !56
  %i.ek = fmul <16 x float> %i.dw, %i.ef
  %i.el = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.eh, <16 x float> %i.ea, <16 x float> %i.ek) ; 2 uses
  %i.em = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.el, <16 x float> %i.dy, <16 x float> %i.ej)
  store <16 x float> %i.em, ptr %i.ei, align 1, !tbaa !56
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ed
  store <16 x float> %i.el, ptr %i.en, align 1, !tbaa !56
  %i.eo = shl i64 %.0142153.us.us.us.us.us.us.us.us.i, 4
  %i.ep = or disjoint i64 %i.eo, 16               ; 2 uses
  %i.eq = add i64 %i.ep, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.er = add i64 %i.ep, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.eq
  %i.et = load <16 x float>, ptr %i.es, align 1, !tbaa !56
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.er
  %i.ev = load <16 x float>, ptr %i.eu, align 1, !tbaa !56
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.eq ; 2 uses
  %i.ex = load <16 x float>, ptr %i.ew, align 1, !tbaa !56
  %i.ey = fmul <16 x float> %i.dw, %i.et
  %i.ez = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ev, <16 x float> %i.ea, <16 x float> %i.ey) ; 2 uses
  %i.fa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ez, <16 x float> %i.dy, <16 x float> %i.ex)
  store <16 x float> %i.fa, ptr %i.ew, align 1, !tbaa !56
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.er
  store <16 x float> %i.ez, ptr %i.fb, align 1, !tbaa !56
  %i.fc = add nuw nsw i64 %.0142153.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.us.us.i.new, !llvm.loop !1748

._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa: ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod166.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, label %.epil.preheader164

.epil.preheader164:                               ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.us.us.us.us.us.us.i
  %.0142153.us.us.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ], [ %i.fc, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.fd = shl nuw nsw i64 %.0142153.us.us.us.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.fe = add i64 %i.fd, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.ff = add i64 %i.fd, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fe
  %i.fh = load <16 x float>, ptr %i.fg, align 1, !tbaa !56
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ff
  %i.fj = load <16 x float>, ptr %i.fi, align 1, !tbaa !56
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fe ; 2 uses
  %i.fl = load <16 x float>, ptr %i.fk, align 1, !tbaa !56
  %i.fm = fmul <16 x float> %i.dw, %i.fh
  %i.fn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fj, <16 x float> %i.ea, <16 x float> %i.fm) ; 2 uses
  %i.fo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fn, <16 x float> %i.dy, <16 x float> %i.fl)
  store <16 x float> %i.fo, ptr %i.fk, align 1, !tbaa !56
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ff
  store <16 x float> %i.fn, ptr %i.fp, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader

._crit_edge.us.us.us.us.us.us.us.us.i.preheader:  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.epil.preheader164
  %brmerge = select i1 %min.iters.check117, i1 true, i1 %op.rdx156
  br i1 %brmerge, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158, label %vector.ph139

vector.ph139:                                     ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader
  %broadcast.splatinsert141 = insertelement <8 x float> poison, float %i.dp, i64 0
  %broadcast.splat142 = shufflevector <8 x float> %broadcast.splatinsert141, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.du, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <8 x float> poison, float %i.ds, i64 0
  %broadcast.splat146 = shufflevector <8 x float> %broadcast.splatinsert145, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph139
  %index148 = phi i64 [ 0, %vector.ph139 ], [ %index.next152, %vector.body147 ] ; 2 uses
  %i.fq = add nuw i64 %i.bi, %index148            ; 2 uses
  %i.fr = add i64 %i.fq, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.fs = add i64 %i.fq, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fr
  %wide.load149 = load <8 x float>, ptr %i.ft, align 4, !tbaa !43, !alias.scope !1766
  %i.fu = fmul <8 x float> %broadcast.splat142, %wide.load149
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.fs
  %wide.load150 = load <8 x float>, ptr %i.fv, align 4, !tbaa !43, !alias.scope !1767
  %i.fw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load150, <8 x float> %broadcast.splat144, <8 x float> %i.fu) ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fr ; 2 uses
  %wide.load151 = load <8 x float>, ptr %i.fx, align 4, !tbaa !43, !alias.scope !1768, !noalias !1769
  %i.fy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.fw, <8 x float> %broadcast.splat146, <8 x float> %wide.load151)
  store <8 x float> %i.fy, ptr %i.fx, align 4, !tbaa !43, !alias.scope !1768, !noalias !1769
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fs
  store <8 x float> %i.fw, ptr %i.fz, align 4, !tbaa !43, !alias.scope !1770, !noalias !1771
  %index.next152 = add nuw i64 %index148, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next152, %n.vec140
  br i1 %i.ga, label %middle.block153, label %vector.body147, !llvm.loop !1754

middle.block153:                                  ; preds = %vector.body147
  br i1 %cmp.n154, label %._crit_edge157.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158

._crit_edge.us.us.us.us.us.us.us.us.i.preheader158: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, %middle.block153
  %.0154.us.us.us.us.us.us.us.us.i.ph = phi i64 [ %i.cm, %middle.block153 ], [ %i.bi, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader ] ; 6 uses
  %i.gb = sub i64 %i.p, %.0154.us.us.us.us.us.us.us.us.i.ph
  %.neg172 = add i64 %.0154.us.us.us.us.us.us.us.us.i.ph, 1
  %xtraiter170 = and i64 %i.gb, 1
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, label %._crit_edge.us.us.us.us.us.us.us.us.i.prol

._crit_edge.us.us.us.us.us.us.us.us.i.prol:       ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158
  %i.gc = add i64 %.0154.us.us.us.us.us.us.us.us.i.ph, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.gd = add i64 %.0154.us.us.us.us.us.us.us.us.i.ph, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.gc
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !43
  %i.gg = fmul float %i.dp, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.gd
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !43
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.du, float %i.gg) ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gc ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !43
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.ds, float %i.gl)
  store float %i.gm, ptr %i.gk, align 4, !tbaa !43
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.gd
  store float %i.gj, ptr %i.gn, align 4, !tbaa !43
  %i.go = add nuw nsw i64 %.0154.us.us.us.us.us.us.us.us.i.ph, 1
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit

._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158
  %.0154.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0154.us.us.us.us.us.us.us.us.i.ph, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158 ], [ %i.go, %._crit_edge.us.us.us.us.us.us.us.us.i.prol ]
  %i.gp = icmp eq i64 %i.p, %.neg172
  br i1 %i.gp, label %._crit_edge157.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.i:            ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i
  %.0154.us.us.us.us.us.us.us.us.i = phi i64 [ %i.hp, %._crit_edge.us.us.us.us.us.us.us.us.i ], [ %.0154.us.us.us.us.us.us.us.us.i.unr, %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 4 uses
  %i.gq = add i64 %.0154.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.gr = add i64 %.0154.us.us.us.us.us.us.us.us.i, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.gq
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !43
  %i.gu = fmul float %i.dp, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.gr
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !43
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.du, float %i.gu) ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gq ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !43
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.ds, float %i.gz)
  store float %i.ha, ptr %i.gy, align 4, !tbaa !43
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.gr
  store float %i.gx, ptr %i.hb, align 4, !tbaa !43
  %i.hc = add nuw nsw i64 %.0154.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.hd = add i64 %i.hc, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.he = add i64 %i.hc, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hd
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !43
  %i.hh = fmul float %i.dp, %i.hg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.he
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !43
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.du, float %i.hh) ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hd ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !43
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.ds, float %i.hm)
  store float %i.hn, ptr %i.hl, align 4, !tbaa !43
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.he
  store float %i.hk, ptr %i.ho, align 4, !tbaa !43
  %i.hp = add nuw nsw i64 %.0154.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %exitcond197.not.i.1 = icmp eq i64 %i.hp, %i.p
  br i1 %exitcond197.not.i.1, label %._crit_edge157.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i, !llvm.loop !1755

._crit_edge157.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i, %middle.block153
  %i.hq = add nuw nsw i64 %.0143158.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %i.hq, %i.p
  br i1 %exitcond198.not.i, label %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.i, !llvm.loop !1756

._crit_edge161.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge157.us.us.us.us.us.us.us.us.i
  %i.hr = add nsw i64 %.0144162.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %i.hr, %i.bg
  %indvar.next107 = add i64 %indvar106, 1
  br i1 %exitcond199.not.i, label %._crit_edge.split164.us.split.us.us.us.us.us.i, label %.lr.ph160.us.us.us.us.us.us.i, !llvm.loop !1757

._crit_edge.split164.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i
  %i.hs = add nuw nsw i64 %.0145165.us.us.us.us.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %i.hs, %i.g
  br i1 %exitcond200.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph167.split.us.split.us.split.us.split.us.i, !llvm.loop !1758

.lr.ph167.split.us.split.us.split.us.split.i:     ; preds = %.lr.ph167.split.us.split.us.split.us.split.i.preheader, %._crit_edge.split164.us.split.us180.us.us.i
  %.0145165.us.us.us.i = phi i64 [ %i.kj, %._crit_edge.split164.us.split.us180.us.us.i ], [ 0, %.lr.ph167.split.us.split.us.split.us.split.i.preheader ] ; 4 uses
  %i.ht = mul i64 %.0145165.us.us.us.i, %i.k
  %i.hu = sdiv i64 %.0145165.us.us.us.i, %i.bc
  %i.hv = mul nsw i64 %i.hu, %i.bb                ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.hv ; 3 uses
  %i.hx = srem i64 %.0145165.us.us.us.i, %i.bc
  %.not.us.us.us.i = icmp eq i64 %i.hx, 0
  br i1 %.not.us.us.us.i, label %bb.h, label %.lr.ph.us.us.us.i

bb.h:                                             ; preds = %.lr.ph167.split.us.split.us.split.us.split.i
  %i.hy = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 248
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !37
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %bb.h, %.lr.ph167.split.us.split.us.split.us.split.i
  %i.ib = phi ptr [ %i.ia, %bb.h ], [ %i.v, %.lr.ph167.split.us.split.us.split.us.split.i ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hv ; 3 uses
  br label %.lr.ph160.us.us176.us.us.i

.lr.ph160.us.us176.us.us.i:                       ; preds = %._crit_edge161.split.us.us.split.us.us.us.i, %.lr.ph.us.us.us.i
  %.0144162.us.us177.us.us.i = phi i64 [ %i.be, %.lr.ph.us.us.us.i ], [ %i.ki, %._crit_edge161.split.us.us.split.us.us.us.i ] ; 3 uses
  %reass.add.us.us178.us.us.i = add i64 %.0144162.us.us177.us.us.i, %i.ht
  %reass.mul.us.us179.us.us.i = mul i64 %reass.add.us.us178.us.us.i, %i.p ; 4 uses
  %i.id = mul i64 %.0144162.us.us177.us.us.i, %i.p
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.lr.ph160.us.us176.us.us.i
  %.0143158.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph160.us.us176.us.us.i ], [ %i.kh, %._crit_edge.us.us.us.us.us.i ] ; 3 uses
  %i.ie = add i64 %.0143158.us.us.us.us.us.i, %reass.mul.us.us179.us.us.i ; 3 uses
  %reass.add151.us.us.us.us.us.i = add i64 %.0143158.us.us.us.us.us.i, %i.id
  %reass.mul152.us.us.us.us.us.i = mul i64 %reass.add151.us.us.us.us.us.i, %i.p ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !43
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ie
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !43
  %i.ij = fmul float %i.r, %i.ii
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ie
  %i.il = load float, ptr %i.ik, align 4, !tbaa !43
  %i.im = insertelement <16 x float> poison, float %i.ig, i64 0
  %i.in = shufflevector <16 x float> %i.im, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.io = insertelement <16 x float> poison, float %i.ij, i64 0
  %i.ip = shufflevector <16 x float> %i.io, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.iq = insertelement <16 x float> poison, float %i.il, i64 0
  %i.ir = shufflevector <16 x float> %i.iq, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.i.new:                      ; preds = %.lr.ph.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.i.new
  %.0142153.us.us.us.us.us.i = phi i64 [ %i.jt, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ]
  %i.is = shl nuw nsw i64 %.0142153.us.us.us.us.us.i, 4 ; 2 uses
  %i.it = add i64 %i.is, %reass.mul.us.us179.us.us.i ; 2 uses
  %i.iu = add i64 %i.is, %reass.mul152.us.us.us.us.us.i ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.it
  %i.iw = load <16 x float>, ptr %i.iv, align 1, !tbaa !56
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.iu
  %i.iy = load <16 x float>, ptr %i.ix, align 1, !tbaa !56
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.it ; 2 uses
  %i.ja = load <16 x float>, ptr %i.iz, align 1, !tbaa !56
  %i.jb = fmul <16 x float> %i.in, %i.iw
  %i.jc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.iy, <16 x float> %i.ir, <16 x float> %i.jb) ; 2 uses
  %i.jd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jc, <16 x float> %i.ip, <16 x float> %i.ja)
  store <16 x float> %i.jd, ptr %i.iz, align 1, !tbaa !56
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.iu
  store <16 x float> %i.jc, ptr %i.je, align 1, !tbaa !56
  %i.jf = shl i64 %.0142153.us.us.us.us.us.i, 4
  %i.jg = or disjoint i64 %i.jf, 16               ; 2 uses
  %i.jh = add i64 %i.jg, %reass.mul.us.us179.us.us.i ; 2 uses
  %i.ji = add i64 %i.jg, %reass.mul152.us.us.us.us.us.i ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.jh
  %i.jk = load <16 x float>, ptr %i.jj, align 1, !tbaa !56
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ji
  %i.jm = load <16 x float>, ptr %i.jl, align 1, !tbaa !56
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.jh ; 2 uses
  %i.jo = load <16 x float>, ptr %i.jn, align 1, !tbaa !56
  %i.jp = fmul <16 x float> %i.in, %i.jk
  %i.jq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jm, <16 x float> %i.ir, <16 x float> %i.jp) ; 2 uses
  %i.jr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jq, <16 x float> %i.ip, <16 x float> %i.jo)
  store <16 x float> %i.jr, ptr %i.jn, align 1, !tbaa !56
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ji
  store <16 x float> %i.jq, ptr %i.js, align 1, !tbaa !56
  %i.jt = add nuw nsw i64 %.0142153.us.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.us.us.i.new, !llvm.loop !1748

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.lr.ph.us.us.us.us.us.i.new
  br i1 %lcmp.mod162.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.us.us.i
  %.0142153.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %i.jt, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.ju = shl nuw nsw i64 %.0142153.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.jv = add i64 %i.ju, %reass.mul.us.us179.us.us.i ; 2 uses
  %i.jw = add i64 %i.ju, %reass.mul152.us.us.us.us.us.i ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.jv
  %i.jy = load <16 x float>, ptr %i.jx, align 1, !tbaa !56
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.jw
  %i.ka = load <16 x float>, ptr %i.jz, align 1, !tbaa !56
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.jv ; 2 uses
  %i.kc = load <16 x float>, ptr %i.kb, align 1, !tbaa !56
  %i.kd = fmul <16 x float> %i.in, %i.jy
  %i.ke = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ka, <16 x float> %i.ir, <16 x float> %i.kd) ; 2 uses
  %i.kf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ke, <16 x float> %i.ip, <16 x float> %i.kc)
  store <16 x float> %i.kf, ptr %i.kb, align 1, !tbaa !56
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jw
  store <16 x float> %i.ke, ptr %i.kg, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.kh = add nuw nsw i64 %.0143158.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.kh, %i.p
  br i1 %exitcond193.not.i, label %._crit_edge161.split.us.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1756

._crit_edge161.split.us.us.split.us.us.us.i:      ; preds = %._crit_edge.us.us.us.us.us.i
  %i.ki = add nsw i64 %.0144162.us.us177.us.us.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %i.ki, %i.bg
  br i1 %exitcond194.not.i, label %._crit_edge.split164.us.split.us180.us.us.i, label %.lr.ph160.us.us176.us.us.i, !llvm.loop !1757

._crit_edge.split164.us.split.us180.us.us.i:      ; preds = %._crit_edge161.split.us.us.split.us.us.us.i
  %i.kj = add nuw nsw i64 %.0145165.us.us.us.i, 1 ; 2 uses
  %exitcond195.not.i = icmp eq i64 %i.kj, %i.g
  br i1 %exitcond195.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph167.split.us.split.us.split.us.split.i, !llvm.loop !1758

.lr.ph167.split.us.split.us.split.i:              ; preds = %.lr.ph167.split.us.split.us.i
  br i1 %i.bj, label %.lr.ph167.split.us.split.us.split.split.us.i.preheader, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph167.split.us.split.us.split.split.us.i.preheader: ; preds = %.lr.ph167.split.us.split.us.split.i
  %24 = ashr exact i64 %i.bd, 30
  %25 = add nsw i64 %24, 4                        ; 2 uses
  %26 = mul nsw i64 %i.p, %25
  %i.kk = shl i64 %i.i, 2
  %i.kl = mul nuw nsw i64 %i.p, %i.p
  %i.km = shl nuw nsw i64 %i.kl, 2
  %i.kn = mul nsw i64 %i.p, %i.be
  %i.ko = shl i64 %i.kn, 2                        ; 2 uses
  %i.kp = add nsw i64 %i.be, 1
  %i.kq = mul nsw i64 %i.p, %i.kp
  %i.kr = shl i64 %i.kq, 2
  %i.ks = mul i64 %i.k, %i.p
  %i.kt = shl i64 %i.ks, 2
  %i.ku = shl nuw nsw i64 %i.p, 2
  %i.kv = mul nuw nsw i64 %i.p, %i.p              ; 2 uses
  %i.kw = mul nsw i64 %i.kv, %25
  %27 = shl i64 %i.g, 2
  %i.kx = shl nuw nsw i64 %i.p, 2
  %28 = mul nsw i64 %i.kv, %i.be
  %29 = shl i64 %28, 2
  %i.ky = getelementptr i8, ptr %i.t, i64 %i.kw
  %i.kz = getelementptr i8, ptr %i.t, i64 %29
  %i.la = sub nuw nsw i64 %i.p, %i.bi             ; 2 uses
  %min.iters.check = icmp ult i64 %i.la, 16
  %i.lb = and i64 %i.p, 7                         ; 2 uses
  %n.vec = sub nsw i64 %i.la, %i.lb               ; 2 uses
  %cmp.n = icmp eq i64 %i.lb, 0
  br label %.lr.ph167.split.us.split.us.split.split.us.i

.lr.ph167.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph167.split.us.split.us.split.split.us.i.preheader, %._crit_edge.split164.us174.us.us.i
  %.0145165.us.us.us181.i = phi i64 [ %i.op, %._crit_edge.split164.us174.us.us.i ], [ 0, %.lr.ph167.split.us.split.us.split.split.us.i.preheader ] ; 5 uses
  %i.lc = mul i64 %i.kt, %.0145165.us.us.us181.i  ; 2 uses
  %i.ld = add i64 %i.kr, %i.lc
  %i.le = add i64 %i.ko, %i.lc
  %i.lf = mul i64 %.0145165.us.us.us181.i, %i.k
  %i.lg = sdiv i64 %.0145165.us.us.us181.i, %i.bc ; 3 uses
  %i.lh = mul nsw i64 %i.lg, %i.bb                ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.lh ; 4 uses
  %i.lj = srem i64 %.0145165.us.us.us181.i, %i.bc
  %.not.us.us.us182.i = icmp eq i64 %i.lj, 0
  br i1 %.not.us.us.us182.i, label %bb.i, label %.lr.ph.us.us.us183.i

bb.i:                                             ; preds = %.lr.ph167.split.us.split.us.split.split.us.i
  %i.lk = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 248
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !37
  br label %.lr.ph.us.us.us183.i

.lr.ph.us.us.us183.i:                             ; preds = %bb.i, %.lr.ph167.split.us.split.us.split.split.us.i
  %i.ln = phi ptr [ %i.lm, %bb.i ], [ %i.v, %.lr.ph167.split.us.split.us.split.split.us.i ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lh ; 4 uses
  %i.lp = mul i64 %i.kk, %i.lg                    ; 2 uses
  %i.lq = add i64 %26, %i.lp
  %i.lr = mul i64 %i.p, %i.lq
  %i.ls = add i64 %i.ko, %i.lp
  %i.lt = mul i64 %i.p, %i.ls
  %i.lu = mul i64 %i.kx, %i.lg
  %i.lv = add i64 %27, %i.lu
  %i.lw = mul i64 %i.i, %i.lv                     ; 2 uses
  %i.lx = getelementptr i8, ptr %i.ln, i64 %i.lr
  %i.ly = getelementptr i8, ptr %i.ln, i64 %i.lt
  %i.lz = getelementptr i8, ptr %i.ky, i64 %i.lw
  %i.ma = getelementptr i8, ptr %i.kz, i64 %i.lw
  br label %.lr.ph160.us170.us.us.i

.lr.ph160.us170.us.us.i:                          ; preds = %._crit_edge161.split.us.us.us.i, %.lr.ph.us.us.us183.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge161.split.us.us.us.i ], [ 0, %.lr.ph.us.us.us183.i ] ; 3 uses
  %.0144162.us171.us.us.i = phi i64 [ %i.oo, %._crit_edge161.split.us.us.us.i ], [ %i.be, %.lr.ph.us.us.us183.i ] ; 3 uses
  %i.mb = mul i64 %i.km, %indvar                  ; 4 uses
  %scevgep.a = getelementptr i8, ptr %i.lx, i64 %i.mb
  %scevgep47 = getelementptr i8, ptr %i.ly, i64 %i.mb
  %i.mc = mul i64 %i.ku, %indvar                  ; 2 uses
  %i.md = add i64 %i.ld, %i.mc                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.ak, i64 %i.md
  %i.me = add i64 %i.le, %i.mc                    ; 2 uses
  %scevgep49.a = getelementptr i8, ptr %i.ak, i64 %i.me
  %scevgep50 = getelementptr i8, ptr %i.lz, i64 %i.mb ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.ma, i64 %i.mb ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.t, i64 %i.md ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.t, i64 %i.me ; 2 uses
  %reass.add.us172.us.us.i = add i64 %.0144162.us171.us.us.i, %i.lf
  %reass.mul.us173.us.us.i = mul i64 %reass.add.us172.us.us.i, %i.p ; 5 uses
  %i.mf = mul i64 %.0144162.us171.us.us.i, %i.p
  %30 = insertelement <4 x ptr> poison, ptr %scevgep53, i64 0
  %31 = insertelement <4 x ptr> %30, ptr %scevgep47, i64 1
  %32 = insertelement <4 x ptr> %31, ptr %scevgep51, i64 2 ; 2 uses
  %33 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %34 = insertelement <4 x ptr> poison, ptr %scevgep48, i64 0
  %35 = insertelement <4 x ptr> %34, ptr %scevgep52, i64 1
  %36 = insertelement <4 x ptr> %35, ptr %scevgep50, i64 3 ; 2 uses
  %37 = shufflevector <4 x ptr> %36, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %38 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %39 = insertelement <4 x ptr> %38, ptr %scevgep49.a, i64 0
  %40 = shufflevector <4 x ptr> %39, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %41 = shufflevector <4 x ptr> %36, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %42 = insertelement <4 x ptr> %41, ptr %scevgep.a, i64 1
  %43 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0.a = icmp ult ptr %scevgep53, %scevgep50
  %bound1.a = icmp ult ptr %scevgep51, %scevgep52
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %44 = icmp ult <4 x ptr> %33, %37
  %45 = icmp ult <4 x ptr> %40, %43
  %46 = and <4 x i1> %45, %44
  %47 = bitcast <4 x i1> %46 to i4
  %48 = icmp ne i4 %47, 0
  %op.rdx157 = or i1 %48, %found.conflict.a
  br label %.lr.ph156.us.us.us.i

.lr.ph156.us.us.us.i:                             ; preds = %._crit_edge157.us.us.us.i, %.lr.ph160.us170.us.us.i
  %.0143158.us.us.us.i = phi i64 [ 0, %.lr.ph160.us170.us.us.i ], [ %i.on, %._crit_edge157.us.us.us.i ] ; 3 uses
  %i.mg = add i64 %.0143158.us.us.us.i, %reass.mul.us173.us.us.i ; 3 uses
  %reass.add151.us.us.us.i = add i64 %.0143158.us.us.us.i, %i.mf
  %reass.mul152.us.us.us.i = mul i64 %reass.add151.us.us.us.i, %i.p ; 4 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.mg
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !43 ; 4 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.mg
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !43
  %i.ml = fmul float %i.r, %i.mk                  ; 4 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.mg
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !43 ; 4 uses
  %brmerge174 = select i1 %min.iters.check, i1 true, i1 %op.rdx157
  br i1 %brmerge174, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph156.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.mi, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.ml, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.mn, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mo = add i64 %index, %reass.mul.us173.us.us.i ; 2 uses
  %i.mp = add i64 %index, %reass.mul152.us.us.us.i ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.mo
  %wide.load = load <8 x float>, ptr %i.mq, align 4, !tbaa !43, !alias.scope !1772
  %i.mr = fmul <8 x float> %broadcast.splat, %wide.load
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mp
  %wide.load73 = load <8 x float>, ptr %i.ms, align 4, !tbaa !43, !alias.scope !1773
  %i.mt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load73, <8 x float> %broadcast.splat72, <8 x float> %i.mr) ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mo ; 2 uses
  %wide.load74 = load <8 x float>, ptr %i.mu, align 4, !tbaa !43, !alias.scope !1774, !noalias !1775
  %i.mv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mt, <8 x float> %broadcast.splat70, <8 x float> %wide.load74)
  store <8 x float> %i.mv, ptr %i.mu, align 4, !tbaa !43, !alias.scope !1774, !noalias !1775
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.mp
  store <8 x float> %i.mt, ptr %i.mw, align 4, !tbaa !43, !alias.scope !1776, !noalias !1777
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !1764

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge157.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph156.us.us.us.i, %middle.block
  %.0154.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bi, %.lr.ph156.us.us.us.i ] ; 6 uses
  %i.my = sub nsw i64 %i.p, %.0154.us.us.us.i.ph
  %.neg = add nsw i64 %.0154.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.my, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mz = add i64 %.0154.us.us.us.i.ph, %reass.mul.us173.us.us.i ; 2 uses
  %i.na = add i64 %.0154.us.us.us.i.ph, %reass.mul152.us.us.us.i ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.mz
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !43
  %i.nd = fmul float %i.mi, %i.nc
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.na
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !43
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.mn, float %i.nd) ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mz ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !43
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.ml, float %i.ni)
  store float %i.nj, ptr %i.nh, align 4, !tbaa !43
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.na
  store float %i.ng, ptr %i.nk, align 4, !tbaa !43
  %i.nl = add nuw nsw i64 %.0154.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0154.us.us.us.i.unr = phi i64 [ %.0154.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.nl, %scalar.ph.prol ]
  %i.nm = icmp eq i64 %i.p, %.neg
  br i1 %i.nm, label %._crit_edge157.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0154.us.us.us.i = phi i64 [ %i.om, %scalar.ph ], [ %.0154.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.nn = add i64 %.0154.us.us.us.i, %reass.mul.us173.us.us.i ; 2 uses
  %i.no = add i64 %.0154.us.us.us.i, %reass.mul152.us.us.us.i ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.nn
  %i.nq = load float, ptr %i.np, align 4, !tbaa !43
  %i.nr = fmul float %i.mi, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.no
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !43
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.mn, float %i.nr) ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.nn ; 2 uses
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !43
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.ml, float %i.nw)
  store float %i.nx, ptr %i.nv, align 4, !tbaa !43
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.no
  store float %i.nu, ptr %i.ny, align 4, !tbaa !43
  %i.nz = add nuw nsw i64 %.0154.us.us.us.i, 1    ; 2 uses
  %i.oa = add i64 %i.nz, %reass.mul.us173.us.us.i ; 2 uses
  %i.ob = add i64 %i.nz, %reass.mul152.us.us.us.i ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.oa
  %i.od = load float, ptr %i.oc, align 4, !tbaa !43
  %i.oe = fmul float %i.mi, %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ob
  %i.og = load float, ptr %i.of, align 4, !tbaa !43
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.og, float %i.mn, float %i.oe) ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.oa ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !43
  %i.ok = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.ml, float %i.oj)
  store float %i.ok, ptr %i.oi, align 4, !tbaa !43
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.ob
  store float %i.oh, ptr %i.ol, align 4, !tbaa !43
  %i.om = add nuw nsw i64 %.0154.us.us.us.i, 2    ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.om, %i.p
  br i1 %exitcond.not.i.1, label %._crit_edge157.us.us.us.i, label %scalar.ph, !llvm.loop !1765

._crit_edge157.us.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.on = add nuw nsw i64 %.0143158.us.us.us.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %i.on, %i.p
  br i1 %exitcond189.not.i, label %._crit_edge161.split.us.us.us.i, label %.lr.ph156.us.us.us.i, !llvm.loop !1756

._crit_edge161.split.us.us.us.i:                  ; preds = %._crit_edge157.us.us.us.i
  %i.oo = add nsw i64 %.0144162.us171.us.us.i, 1  ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.oo, %i.bg
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond190.not.i, label %._crit_edge.split164.us174.us.us.i, label %.lr.ph160.us170.us.us.i, !llvm.loop !1757

._crit_edge.split164.us174.us.us.i:               ; preds = %._crit_edge161.split.us.us.us.i
  %i.op = add nuw nsw i64 %.0145165.us.us.us181.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.op, %i.g
  br i1 %exitcond191.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph167.split.us.split.us.split.split.us.i, !llvm.loop !1758

_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split164.us174.us.us.i, %._crit_edge.split164.us.split.us180.us.us.i, %._crit_edge.split164.us.split.us.us.us.us.us.i, %bb.f, %.lr.ph167.i, %.lr.ph167.split.us.split.us.split.i
  ret void

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10819, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_solve_tri(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 8 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 15 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = load i32, ptr %1, align 8, !tbaa !30
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10832, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
end_hunk_0
