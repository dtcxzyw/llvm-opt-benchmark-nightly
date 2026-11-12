Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 271
begin_hunk_0_@ggml_compute_forward_im2col_3d:bb.a

._crit_edge219.sink.split.i:                      ; preds = %.preheader.lr.ph.split.split.i13, %.preheader211.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ru, i8 0, i64 %i.ng, i1 false), !tbaa !43
  br label %._crit_edge219.i

._crit_edge219.i:                                 ; preds = %._crit_edge.split.i18, %._crit_edge219.sink.split.i
  %i.ty = add nuw nsw i64 %.0188226.i, 1          ; 2 uses
  %exitcond283.not.i = icmp eq i64 %i.ty, %i.ki
  br i1 %exitcond283.not.i, label %._crit_edge.i20, label %.preheader211.i, !llvm.loop !1076

._crit_edge.split.sink.split.i17:                 ; preds = %.lr.ph.split.split.i15, %.preheader.i14
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.sf, i8 0, i64 %i.nf, i1 false), !tbaa !43
  br label %._crit_edge.split.i18

._crit_edge.split.i18:                            ; preds = %.lr.ph.split.split.split.i21.prol.loopexit, %bb.v, %middle.block, %vec.epilog.middle.block, %._crit_edge.split.sink.split.i17
  %i.tz = add nuw nsw i64 %.0187218.i, 1          ; 2 uses
  %exitcond282.not.i19 = icmp eq i64 %i.tz, %i.kg
  br i1 %exitcond282.not.i19, label %._crit_edge219.i, label %.preheader.i14, !llvm.loop !1077

.lr.ph.split.split.split.i21:                     ; preds = %.lr.ph.split.split.split.i21.prol.loopexit, %bb.v
  %.0215.i = phi i64 [ %i.vf, %bb.v ], [ %.0215.i.unr, %.lr.ph.split.split.split.i21.prol.loopexit ] ; 6 uses
  %i.ua = mul nsw i64 %.0215.i, %i.mr
  %i.ub = add i64 %i.ua, %i.qx                    ; 3 uses
  %i.uc = icmp sgt i64 %i.ub, -1
  %.not203.i = icmp slt i64 %i.ub, %i.kk
  %or.cond204.i = select i1 %i.uc, i1 %.not203.i, i1 false
  br i1 %or.cond204.i, label %bb.r, label %.lr.ph.split.split.split.i21.1

bb.r:                                             ; preds = %.lr.ph.split.split.split.i21
  %i.ud = shl i64 %i.ub, 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.ud
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !43
  br label %.lr.ph.split.split.split.i21.1

.lr.ph.split.split.split.i21.1:                   ; preds = %bb.r, %.lr.ph.split.split.split.i21
  %.sink.i22 = phi float [ %i.uf, %bb.r ], [ 0.000000e+00, %.lr.ph.split.split.split.i21 ]
  %i.ug = getelementptr [4 x i8], ptr %i.sf, i64 %.0215.i
  store float %.sink.i22, ptr %i.ug, align 4, !tbaa !43
  %i.uh = add nuw nsw i64 %.0215.i, 1             ; 2 uses
  %i.ui = mul nsw i64 %i.uh, %i.mr
  %i.uj = add i64 %i.ui, %i.qx                    ; 3 uses
  %i.uk = icmp sgt i64 %i.uj, -1
  %.not203.i.1 = icmp slt i64 %i.uj, %i.kk
  %or.cond204.i.1 = select i1 %i.uk, i1 %.not203.i.1, i1 false
  br i1 %or.cond204.i.1, label %bb.s, label %.lr.ph.split.split.split.i21.2

bb.s:                                             ; preds = %.lr.ph.split.split.split.i21.1
  %i.ul = shl i64 %i.uj, 2
  %i.um = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.ul
  %i.un = load float, ptr %i.um, align 4, !tbaa !43
  br label %.lr.ph.split.split.split.i21.2

.lr.ph.split.split.split.i21.2:                   ; preds = %bb.s, %.lr.ph.split.split.split.i21.1
  %.sink.i22.1 = phi float [ %i.un, %bb.s ], [ 0.000000e+00, %.lr.ph.split.split.split.i21.1 ]
  %i.uo = getelementptr [4 x i8], ptr %i.sf, i64 %i.uh
  store float %.sink.i22.1, ptr %i.uo, align 4, !tbaa !43
  %i.up = add nuw nsw i64 %.0215.i, 2             ; 2 uses
  %i.uq = mul nsw i64 %i.up, %i.mr
  %i.ur = add i64 %i.uq, %i.qx                    ; 3 uses
  %i.us = icmp sgt i64 %i.ur, -1
  %.not203.i.2 = icmp slt i64 %i.ur, %i.kk
  %or.cond204.i.2 = select i1 %i.us, i1 %.not203.i.2, i1 false
  br i1 %or.cond204.i.2, label %bb.t, label %.lr.ph.split.split.split.i21.3

bb.t:                                             ; preds = %.lr.ph.split.split.split.i21.2
  %i.ut = shl i64 %i.ur, 2
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.ut
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !43
  br label %.lr.ph.split.split.split.i21.3

.lr.ph.split.split.split.i21.3:                   ; preds = %bb.t, %.lr.ph.split.split.split.i21.2
  %.sink.i22.2 = phi float [ %i.uv, %bb.t ], [ 0.000000e+00, %.lr.ph.split.split.split.i21.2 ]
  %i.uw = getelementptr [4 x i8], ptr %i.sf, i64 %i.up
  store float %.sink.i22.2, ptr %i.uw, align 4, !tbaa !43
  %i.ux = add nuw nsw i64 %.0215.i, 3             ; 2 uses
  %i.uy = mul nsw i64 %i.ux, %i.mr
  %i.uz = add i64 %i.uy, %i.qx                    ; 3 uses
  %i.va = icmp sgt i64 %i.uz, -1
  %.not203.i.3 = icmp slt i64 %i.uz, %i.kk
  %or.cond204.i.3 = select i1 %i.va, i1 %.not203.i.3, i1 false
  br i1 %or.cond204.i.3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.split.split.i21.3
  %i.vb = shl i64 %i.uz, 2
  %i.vc = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.vb
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.split.split.i21.3
  %.sink.i22.3 = phi float [ %i.vd, %bb.u ], [ 0.000000e+00, %.lr.ph.split.split.split.i21.3 ]
  %i.ve = getelementptr [4 x i8], ptr %i.sf, i64 %i.ux
  store float %.sink.i22.3, ptr %i.ve, align 4, !tbaa !43
  %i.vf = add nuw nsw i64 %.0215.i, 4             ; 2 uses
  %exitcond.not.i23.3 = icmp eq i64 %i.vf, %i.kh
  br i1 %exitcond.not.i23.3, label %._crit_edge.split.i18, label %.lr.ph.split.split.split.i21, !llvm.loop !1078

bb.w:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6957, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge252.i, %._crit_edge247.i, %.preheader214.lr.ph.split.split.split.split.i, %.preheader214.lr.ph.i, %bb.o, %.preheader209.lr.ph.split.split.split.split.i, %.preheader209.lr.ph.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_col2im_1d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 13 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  switch i32 %i.c, label %bb.ak [
    i32 0, label %bb.b
    i32 1, label %bb.o
    i32 30, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7023, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.115) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7024, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 6 uses
  %i.j = sext i32 %i.g to i64                     ; 2 uses
  %i.k = sdiv i64 %i.i, %i.j                      ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = load i32, ptr %0, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %i.m, -1
  %i.w = add i64 %i.v, %i.u
  %i.x = sdiv i64 %i.w, %i.u                      ; 2 uses
  %i.y = sext i32 %i.r to i64
  %i.z = mul i64 %i.x, %i.y                       ; 3 uses
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.m) ; 2 uses
  %i.ac = icmp sgt i32 %i.g, 0
  br i1 %i.ac, label %.preheader.lr.ph.i, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.lr.ph.i:                               ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = icmp slt i64 %i.z, %i.ab
  %i.ak = sext i32 %i.ag to i64
  %i.al = sext i32 %i.ai to i64                   ; 8 uses
  %i.am = sub i64 %i.al, %i.k
  %i.an = add nsw i64 %i.ae, -1
  br i1 %i.aj, label %.preheader.i, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge80.i
  %.06981.i = phi i64 [ %i.ar, %._crit_edge80.i ], [ 0, %.preheader.lr.ph.i ] ; 3 uses
  %i.ao = mul nuw nsw i64 %.06981.i, %i.k
  %i.ap = getelementptr [4 x i8], ptr %i.o, i64 %i.ao ; 5 uses
  %i.aq = mul nsw i64 %.06981.i, %i.m
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.q, i64 %i.aq
  br label %bb.g

._crit_edge80.i:                                  ; preds = %._crit_edge.i
  %i.ar = add nuw nsw i64 %.06981.i, 1            ; 2 uses
  %exitcond84.not.i = icmp eq i64 %i.ar, %i.j
  br i1 %exitcond84.not.i, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.i, !llvm.loop !1083

bb.g:                                             ; preds = %._crit_edge.i, %.preheader.i
  %.06878.i = phi i64 [ %i.z, %.preheader.i ], [ %i.bk, %._crit_edge.i ] ; 3 uses
  %i.as = add nsw i64 %.06878.i, %i.ak            ; 7 uses
  %i.at = add i64 %i.am, %i.as
  %i.au = sdiv i64 %i.at, %i.al
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.au, i64 0) ; 5 uses
  %i.av = sdiv i64 %i.as, %i.al
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.av, i64 %i.an) ; 4 uses
  %.not7475.i = icmp sgt i64 %spec.store.select.i, %spec.select.i
  br i1 %.not7475.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.aw = add i64 %spec.select.i, 1
  %i.ax = sub i64 %i.aw, %spec.store.select.i
  %i.ay = sub nuw i64 %spec.select.i, %spec.store.select.i
  %xtraiter68 = and i64 %i.ax, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.i
  %.077.i.prol = phi i64 [ %i.bi, %bb.i ], [ %spec.store.select.i, %.lr.ph.i.preheader ] ; 3 uses
  %.06676.i.prol = phi float [ %.1.i.prol, %bb.i ], [ 0.000000e+00, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.i ], [ 0, %.lr.ph.i.preheader ]
  %i.az = mul nsw i64 %.077.i.prol, %i.al
  %i.ba = sub nsw i64 %i.as, %i.az                ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  %i.bc = icmp slt i64 %i.ba, %i.k
  %or.cond.i.prol = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i.prol, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.prol
  %i.bd = mul nsw i64 %.077.i.prol, %i.i
  %i.be = getelementptr [4 x i8], ptr %i.ap, i64 %i.ba
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !43
  %i.bh = fadd float %.06676.i.prol, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.prol
  %.1.i.prol = phi float [ %i.bh, %bb.h ], [ %.06676.i.prol, %.lr.ph.i.prol ] ; 3 uses
  %i.bi = add nuw i64 %.077.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1084

.lr.ph.i.prol.loopexit:                           ; preds = %bb.i, %.lr.ph.i.preheader
  %.1.i.lcssa.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %.1.i.prol, %bb.i ]
  %.077.i.unr = phi i64 [ %spec.store.select.i, %.lr.ph.i.preheader ], [ %i.bi, %bb.i ]
  %.06676.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %.1.i.prol, %bb.i ]
  %i.bj = icmp ult i64 %i.ay, 3
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.n, %bb.g
  %.066.lcssa.i = phi float [ 0.000000e+00, %bb.g ], [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.3, %bb.n ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.06878.i
  store float %.066.lcssa.i, ptr %gep.i, align 4, !tbaa !43
  %i.bk = add nsw i64 %.06878.i, 1                ; 2 uses
  %exitcond83.not.i = icmp eq i64 %i.bk, %i.ab
  br i1 %exitcond83.not.i, label %._crit_edge80.i, label %bb.g, !llvm.loop !1085

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.n
  %.077.i = phi i64 [ %i.cy, %bb.n ], [ %.077.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.06676.i = phi float [ %.1.i.3, %bb.n ], [ %.06676.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.bl = mul nsw i64 %.077.i, %i.al
  %i.bm = sub nsw i64 %i.as, %i.bl                ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  %i.bo = icmp slt i64 %i.bm, %i.k
  %or.cond.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i, label %bb.j, label %.lr.ph.i.1

bb.j:                                             ; preds = %.lr.ph.i
  %i.bp = mul nsw i64 %.077.i, %i.i
  %i.bq = getelementptr [4 x i8], ptr %i.ap, i64 %i.bm
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load float, ptr %i.br, align 4, !tbaa !43
  %i.bt = fadd float %.06676.i, %i.bs
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j, %.lr.ph.i
  %.1.i = phi float [ %i.bt, %bb.j ], [ %.06676.i, %.lr.ph.i ] ; 2 uses
  %i.bu = add nuw i64 %.077.i, 1                  ; 2 uses
  %i.bv = mul nsw i64 %i.bu, %i.al
  %i.bw = sub nsw i64 %i.as, %i.bv                ; 3 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  %i.by = icmp slt i64 %i.bw, %i.k
  %or.cond.i.1 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond.i.1, label %bb.k, label %.lr.ph.i.2

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.bz = mul nsw i64 %i.bu, %i.i
  %i.ca = getelementptr [4 x i8], ptr %i.ap, i64 %i.bw
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !43
  %i.cd = fadd float %.1.i, %i.cc
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.k, %.lr.ph.i.1
  %.1.i.1 = phi float [ %i.cd, %bb.k ], [ %.1.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ce = add nuw i64 %.077.i, 2                  ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %i.al
  %i.cg = sub nsw i64 %i.as, %i.cf                ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  %i.ci = icmp slt i64 %i.cg, %i.k
  %or.cond.i.2 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond.i.2, label %bb.l, label %.lr.ph.i.3

bb.l:                                             ; preds = %.lr.ph.i.2
  %i.cj = mul nsw i64 %i.ce, %i.i
  %i.ck = getelementptr [4 x i8], ptr %i.ap, i64 %i.cg
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !43
  %i.cn = fadd float %.1.i.1, %i.cm
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.l, %.lr.ph.i.2
  %.1.i.2 = phi float [ %i.cn, %bb.l ], [ %.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %i.co = add nuw i64 %.077.i, 3                  ; 3 uses
  %i.cp = mul nsw i64 %i.co, %i.al
  %i.cq = sub nsw i64 %i.as, %i.cp                ; 3 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  %i.cs = icmp slt i64 %i.cq, %i.k
  %or.cond.i.3 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i.3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.3
  %i.ct = mul nsw i64 %i.co, %i.i
  %i.cu = getelementptr [4 x i8], ptr %i.ap, i64 %i.cq
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !43
  %i.cx = fadd float %.1.i.2, %i.cw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.3
  %.1.i.3 = phi float [ %i.cx, %bb.m ], [ %.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.cy = add nuw i64 %.077.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.co, %spec.select.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1086

bb.o:                                             ; preds = %bb.a
  %i.cz = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.cz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7023, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.115) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.da = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.da, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7024, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !51 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31 ; 4 uses
  %i.df = sext i32 %i.dc to i64                   ; 2 uses
  %i.dg = sdiv i64 %i.de, %i.df                   ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.dn = load i32, ptr %0, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = add i64 %i.di, -1
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = sdiv i64 %i.ds, %i.dq                   ; 2 uses
  %i.du = sext i32 %i.dn to i64
  %i.dv = mul i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = add i64 %i.dv, %i.dt
  %i.dx = tail call i64 @llvm.smin.i64(i64 %i.dw, i64 %i.di) ; 2 uses
  %i.dy = icmp sgt i32 %i.dc, 0
  br i1 %i.dy, label %.preheader.lr.ph.i8, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.lr.ph.i8:                              ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !51
  %i.ef = icmp slt i64 %i.dv, %i.dx
  %i.eg = sext i32 %i.ec to i64
  %i.eh = sext i32 %i.ee to i64                   ; 6 uses
  %i.ei = sub i64 %i.eh, %i.dg
  %i.ej = add nsw i64 %i.ea, -1
  br i1 %i.ef, label %.preheader.i9, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.i9:                                    ; preds = %.preheader.lr.ph.i8, %._crit_edge80.i26
  %.06981.i10 = phi i64 [ %i.en, %._crit_edge80.i26 ], [ 0, %.preheader.lr.ph.i8 ] ; 3 uses
  %i.ek = mul nuw nsw i64 %.06981.i10, %i.dg
  %i.el = getelementptr [2 x i8], ptr %i.dk, i64 %i.ek ; 3 uses
  %i.em = mul nsw i64 %.06981.i10, %i.di
  %invariant.gep.i11 = getelementptr [2 x i8], ptr %i.dm, i64 %i.em
  br label %bb.t

._crit_edge80.i26:                                ; preds = %._crit_edge.i22
  %i.en = add nuw nsw i64 %.06981.i10, 1          ; 2 uses
  %exitcond84.not.i27 = icmp eq i64 %i.en, %i.df
  br i1 %exitcond84.not.i27, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.i9, !llvm.loop !1087

bb.t:                                             ; preds = %._crit_edge.i22, %.preheader.i9
  %.06878.i12 = phi i64 [ %i.dv, %.preheader.i9 ], [ %i.gd, %._crit_edge.i22 ] ; 3 uses
  %i.eo = add nsw i64 %.06878.i12, %i.eg          ; 5 uses
  %i.ep = add i64 %i.ei, %i.eo
  %i.eq = sdiv i64 %i.ep, %i.eh
  %spec.store.select.i13 = tail call i64 @llvm.smax.i64(i64 %i.eq, i64 0) ; 7 uses
  %i.er = sdiv i64 %i.eo, %i.eh
end_hunk_0
begin_hunk_1_@ggml_compute_forward_upscale:bb.a
  %i.ef = fptosi float %i.ee to i64
  %i.eg = mul i64 %i.i, %i.ef
  %gep803.i.3 = getelementptr i8, ptr %gep816.i, i64 %i.eg
  %i.eh = mul i64 %i.ec, %i.v
  %gep809.i.3 = getelementptr i8, ptr %gep820.i, i64 %i.eh
  %i.ei = load float, ptr %gep803.i.3, align 4, !tbaa !43
  store float %i.ei, ptr %gep809.i.3, align 4, !tbaa !43
  %i.ej = add nuw nsw i64 %.0337795.i, 4          ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge798.i.unr-lcssa, label %.lr.ph797.i.new, !llvm.loop !1257

bb.i:                                             ; preds = %bb.g
  %i.ek = and i32 %i.at, 767
  %or.cond357.not.i = icmp eq i32 %i.ek, 513
  br i1 %or.cond357.not.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.el = fdiv <2 x float> splat (float 1.000000e+00), %i.br ; 2 uses
  %i.em = fcmp ogt <2 x float> %i.el, splat (float 1.000000e+00)
  %i.en = select <2 x i1> %i.em, <2 x float> %i.el, <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.eo = fdiv <2 x float> splat (float 1.000000e+00), %i.en ; 2 uses
  %i.ep = icmp sgt i64 %i.t, 0
  br i1 %i.ep, label %.lr.ph792.i, label %_ZL32ggml_compute_forward_upscale_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph792.i:                                      ; preds = %bb.j
  %i.eq = sext i32 %i.d to i64                    ; 2 uses
  %i.er = icmp sle i64 %i.r, %i.eq
  %i.es = extractelement <2 x i64> %i.ad, i64 1   ; 2 uses
  %i.et = icmp slt i64 %i.es, 1
  %i.eu = extractelement <2 x i64> %i.ad, i64 0   ; 12 uses
  %i.ev = icmp slt i64 %i.eu, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  %i.ex = sext i32 %i.f to i64
  %brmerge838.i = select i1 %i.er, i1 true, i1 %i.et
  %brmerge840.i = select i1 %brmerge838.i, i1 true, i1 %i.ev
  br i1 %brmerge840.i, label %_ZL32ggml_compute_forward_upscale_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph792.split.split.split.i

.lr.ph792.split.split.split.i:                    ; preds = %.lr.ph792.i
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !37
  %i.fa = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.fb = extractelement <2 x float> %i.br, i64 1
  %i.fc = extractelement <2 x i64> %i.ac, i64 1
  %min.iters.check = icmp ugt i64 %i.eu, 3
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %min.iters.check55 = icmp ult i64 %i.eu, 32
  %i.fd = and i64 %i.eu, 28
  %n.vec = and i64 %i.eu, 9223372036854775776     ; 4 uses
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  %n.vec59 = and i64 %i.eu, 9223372036854775804   ; 3 uses
  %cmp.n65 = icmp eq i64 %i.eu, %n.vec59
  %i.fe = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.ff = extractelement <2 x i64> %i.ac, i64 0
  %i.fg = extractelement <2 x float> %i.eo, i64 1
  %i.fh = extractelement <2 x float> %i.eo, i64 0 ; 3 uses
  br label %.lr.ph785.i

.lr.ph785.i:                                      ; preds = %._crit_edge786.i, %.lr.ph792.split.split.split.i
  %.0336790.i = phi i64 [ 0, %.lr.ph792.split.split.split.i ], [ %i.fn, %._crit_edge786.i ] ; 3 uses
  %i.fi = uitofp nneg i64 %.0336790.i to float
  %i.fj = fdiv float %i.fi, %i.ar
  %i.fk = fptosi float %i.fj to i64
  %i.fl = mul i64 %i.o, %i.fk                     ; 3 uses
  %i.fm = mul i64 %.0336790.i, %i.ab
  %invariant.gep788.i = getelementptr i8, ptr %i.ez, i64 %i.fm
  br label %.lr.ph778.i

._crit_edge786.i:                                 ; preds = %._crit_edge779.i
  %i.fn = add nuw nsw i64 %.0336790.i, 1          ; 2 uses
  %exitcond866.not.i = icmp eq i64 %i.fn, %i.t
  br i1 %exitcond866.not.i, label %_ZL32ggml_compute_forward_upscale_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph785.i, !llvm.loop !1258

.lr.ph778.i:                                      ; preds = %._crit_edge779.i, %.lr.ph785.i
  %.0335783.i = phi i64 [ %i.eq, %.lr.ph785.i ], [ %i.ft, %._crit_edge779.i ] ; 3 uses
  %i.fo = sitofp i64 %.0335783.i to float
  %i.fp = fdiv float %i.fo, %i.am
  %i.fq = fptosi float %i.fp to i64
  %i.fr = mul i64 %i.m, %i.fq                     ; 3 uses
  %i.fs = mul i64 %.0335783.i, %i.z
  %gep789.i = getelementptr i8, ptr %invariant.gep788.i, i64 %i.fs
  br label %.lr.ph766.i

._crit_edge779.i:                                 ; preds = %._crit_edge767.i
  %i.ft = add nsw i64 %.0335783.i, %i.ex          ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.r
  br i1 %i.fu, label %.lr.ph778.i, label %._crit_edge786.i, !llvm.loop !1259

.lr.ph766.i:                                      ; preds = %._crit_edge767.i, %.lr.ph778.i
  %.0334776.i = phi i64 [ 0, %.lr.ph778.i ], [ %i.jr, %._crit_edge767.i ] ; 3 uses
  %i.fv = uitofp nneg i64 %.0334776.i to float
  %i.fw = fadd float %.0341.i, %i.fv
  %i.fx = fdiv float %i.fw, %i.fb                 ; 3 uses
  %i.fy = fsub float %i.fx, %i.fa
  %i.fz = fadd float %.0341.i, %i.fy
  %i.ga = fptosi float %i.fz to i64
  %.sroa.speculated654.i = tail call i64 @llvm.smax.i64(i64 %i.ga, i64 0) ; 2 uses
  %i.gb = fadd float %i.fa, %i.fx
  %i.gc = fadd float %.0341.i, %i.gb
  %i.gd = fptosi float %i.gc to i64
  %.sroa.speculated649.i = tail call i64 @llvm.smin.i64(i64 %i.fc, i64 %i.gd) ; 2 uses
  %i.ge = icmp slt i64 %.sroa.speculated654.i, %.sroa.speculated649.i
  %i.gf = mul i64 %.0334776.i, %i.x
  %gep782.i = getelementptr i8, ptr %gep789.i, i64 %i.gf ; 15 uses
  br i1 %i.ge, label %.lr.ph759.us.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph766.i
  br i1 %or.cond, label %vector.main.loop.iter.check, label %.lr.ph766.split.i.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr i8, ptr %gep782.i, <8 x i64> %vec.ind
  %wide.gep56 = getelementptr i8, ptr %gep782.i, <8 x i64> %step.add
  %wide.gep57 = getelementptr i8, ptr %gep782.i, <8 x i64> %step.add.2
  %wide.gep58 = getelementptr i8, ptr %gep782.i, <8 x i64> %step.add.3
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep56, <8 x i1> splat (i1 true)), !tbaa !43
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep57, <8 x i1> splat (i1 true)), !tbaa !43
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep58, <8 x i1> splat (i1 true)), !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !1260

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge767.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph766.split.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ]
  %vec.ind61 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next64, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep62 = getelementptr i8, ptr %gep782.i, <4 x i64> %vec.ind61
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep62, <4 x i1> splat (i1 true)), !tbaa !43
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %vec.ind.next64 = add nuw nsw <4 x i64> %vec.ind61, splat (i64 4)
  %i.gh = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n65, label %._crit_edge767.i, label %.lr.ph766.split.i.preheader

.lr.ph766.split.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0333764.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ] ; 4 uses
  %i.gi = sub nsw i64 %i.eu, %.0333764.i.ph
  %xtraiter = and i64 %i.gi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph766.split.i.prol.loopexit, label %.lr.ph766.split.i.prol

.lr.ph766.split.i.prol:                           ; preds = %.lr.ph766.split.i.preheader, %.lr.ph766.split.i.prol
  %.0333764.i.prol = phi i64 [ %i.gk, %.lr.ph766.split.i.prol ], [ %.0333764.i.ph, %.lr.ph766.split.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph766.split.i.prol ], [ 0, %.lr.ph766.split.i.preheader ]
  %i.gj = mul i64 %.0333764.i.prol, %i.v
  %gep772.i.prol = getelementptr i8, ptr %gep782.i, i64 %i.gj
  store float 0.000000e+00, ptr %gep772.i.prol, align 4, !tbaa !43
  %i.gk = add nuw nsw i64 %.0333764.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph766.split.i.prol.loopexit, label %.lr.ph766.split.i.prol, !llvm.loop !1262

.lr.ph766.split.i.prol.loopexit:                  ; preds = %.lr.ph766.split.i.prol, %.lr.ph766.split.i.preheader
  %.0333764.i.unr = phi i64 [ %.0333764.i.ph, %.lr.ph766.split.i.preheader ], [ %i.gk, %.lr.ph766.split.i.prol ]
  %i.gl = sub nsw i64 %.0333764.i.ph, %i.eu
  %i.gm = icmp ugt i64 %i.gl, -8
  br i1 %i.gm, label %._crit_edge767.i, label %.lr.ph766.split.i

.lr.ph759.us.i:                                   ; preds = %.lr.ph766.i, %._crit_edge760.us.i
  %.0333764.us.i = phi i64 [ %i.jq, %._crit_edge760.us.i ], [ 0, %.lr.ph766.i ] ; 3 uses
  %i.gn = uitofp nneg i64 %.0333764.us.i to float
  %i.go = fadd float %.0341.i, %i.gn
  %i.gp = fdiv float %i.go, %.0343.i              ; 5 uses
  %i.gq = fsub float %i.gp, %i.fe
  %i.gr = fadd float %.0341.i, %i.gq
  %i.gs = fptosi float %i.gr to i64
  %.sroa.speculated666.us.i = tail call i64 @llvm.smax.i64(i64 %i.gs, i64 0) ; 7 uses
  %i.gt = fadd float %i.fe, %i.gp
  %i.gu = fadd float %.0341.i, %i.gt
  %i.gv = fptosi float %i.gu to i64
  %.sroa.speculated661.us.i = tail call i64 @llvm.smin.i64(i64 %i.ff, i64 %i.gv) ; 4 uses
  %i.gw = icmp slt i64 %.sroa.speculated666.us.i, %.sroa.speculated661.us.i
  br i1 %i.gw, label %.lr.ph752.us.us.i.preheader, label %._crit_edge760.us.i

.lr.ph752.us.us.i.preheader:                      ; preds = %.lr.ph759.us.i
  %i.gx = sub nuw i64 %.sroa.speculated661.us.i, %.sroa.speculated666.us.i
  %.neg = add nuw i64 %.sroa.speculated666.us.i, 1
  %xtraiter70 = and i64 %i.gx, 1
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  %i.gy = uitofp nneg i64 %.sroa.speculated666.us.i to float
  %i.gz = fsub float %i.gy, %i.gp
  %i.ha = fadd float %.0341.i, %i.gz
  %i.hb = fmul float %i.fh, %i.ha
  %i.hc = tail call float @llvm.fabs.f32(float %i.hb)
  %i.hd = fsub float 1.000000e+00, %i.hc          ; 2 uses
  %i.he = fcmp olt float %i.hd, 0.000000e+00
  %.sroa.speculated.i363.us.us.i.prol = select i1 %i.he, float 0.000000e+00, float %i.hd
  %i.hf = mul i64 %.sroa.speculated666.us.i, %i.i
  %i.hg = add nuw nsw i64 %.sroa.speculated666.us.i, 1 ; 2 uses
  %i.hh = icmp eq i64 %.sroa.speculated661.us.i, %.neg
  br label %.lr.ph752.us.us.i

.lr.ph752.us.us.i:                                ; preds = %.lr.ph752.us.us.i.preheader, %._crit_edge753.us.us.i
  %.0328757.us.us.i = phi i64 [ %i.jm, %._crit_edge753.us.us.i ], [ %.sroa.speculated654.i, %.lr.ph752.us.us.i.preheader ] ; 3 uses
  %.0329756.us.us.i = phi float [ %.2.us.us.i.lcssa, %._crit_edge753.us.us.i ], [ 0.000000e+00, %.lr.ph752.us.us.i.preheader ] ; 4 uses
  %.0330755.us.us.i = phi float [ %.2332.us.us.i.lcssa, %._crit_edge753.us.us.i ], [ 0.000000e+00, %.lr.ph752.us.us.i.preheader ] ; 4 uses
  %i.hi = uitofp nneg i64 %.0328757.us.us.i to float
  %i.hj = fsub float %i.hi, %i.fx
  %i.hk = fadd float %.0341.i, %i.hj
  %i.hl = fmul float %i.fg, %i.hk
  %i.hm = tail call float @llvm.fabs.f32(float %i.hl)
  %i.hn = fsub float 1.000000e+00, %i.hm          ; 2 uses
  %i.ho = fcmp olt float %i.hn, 0.000000e+00
  %.sroa.speculated.i.us.us.i = select i1 %i.ho, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = mul i64 %.0328757.us.us.i, %i.k         ; 3 uses
  br i1 %lcmp.mod71.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph752.us.us.i
  %i.hq = fmul float %.sroa.speculated.i.us.us.i, %.sroa.speculated.i363.us.us.i.prol ; 3 uses
  %i.hr = fcmp ugt float %i.hq, 0.000000e+00
  br i1 %i.hr, label %bb.k, label %.prol.loopexit

bb.k:                                             ; preds = %.prol.preheader
  %i.hs = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hf
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hp
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.fr
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.fl
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !43
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hq, float %.0330755.us.us.i) ; 2 uses
  %i.hz = fadd float %.0329756.us.us.i, %i.hq     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k, %.lr.ph752.us.us.i
  %.2332.us.us.i.lcssa.unr = phi float [ poison, %.lr.ph752.us.us.i ], [ %i.hy, %bb.k ], [ %.0330755.us.us.i, %.prol.preheader ]
  %.2.us.us.i.lcssa.unr = phi float [ poison, %.lr.ph752.us.us.i ], [ %i.hz, %bb.k ], [ %.0329756.us.us.i, %.prol.preheader ]
  %.0327750.us.us.i.unr = phi i64 [ %.sroa.speculated666.us.i, %.lr.ph752.us.us.i ], [ %i.hg, %bb.k ], [ %i.hg, %.prol.preheader ]
  %.1749.us.us.i.unr = phi float [ %.0329756.us.us.i, %.lr.ph752.us.us.i ], [ %i.hz, %bb.k ], [ %.0329756.us.us.i, %.prol.preheader ]
  %.1331748.us.us.i.unr = phi float [ %.0330755.us.us.i, %.lr.ph752.us.us.i ], [ %i.hy, %bb.k ], [ %.0330755.us.us.i, %.prol.preheader ]
  br i1 %i.hh, label %._crit_edge753.us.us.i, label %.lr.ph752.us.us.i.new

.lr.ph752.us.us.i.new:                            ; preds = %.prol.loopexit, %bb.o
  %.0327750.us.us.i = phi i64 [ %i.jl, %bb.o ], [ %.0327750.us.us.i.unr, %.prol.loopexit ] ; 4 uses
  %.1749.us.us.i = phi float [ %.2.us.us.i.1, %bb.o ], [ %.1749.us.us.i.unr, %.prol.loopexit ] ; 2 uses
  %.1331748.us.us.i = phi float [ %.2332.us.us.i.1, %bb.o ], [ %.1331748.us.us.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ia = uitofp nneg i64 %.0327750.us.us.i to float
  %i.ib = fsub float %i.ia, %i.gp
  %i.ic = fadd float %.0341.i, %i.ib
  %i.id = fmul float %i.fh, %i.ic
  %i.ie = tail call float @llvm.fabs.f32(float %i.id)
  %i.if = fsub float 1.000000e+00, %i.ie          ; 2 uses
  %i.ig = fcmp olt float %i.if, 0.000000e+00
  %.sroa.speculated.i363.us.us.i = select i1 %i.ig, float 0.000000e+00, float %i.if
  %i.ih = fmul float %.sroa.speculated.i.us.us.i, %.sroa.speculated.i363.us.us.i ; 3 uses
  %i.ii = fcmp ugt float %i.ih, 0.000000e+00
  br i1 %i.ii, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph752.us.us.i.new
  %i.ij = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ik = mul i64 %.0327750.us.us.i, %i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.hp
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.fr
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.fl
  %i.ip = load float, ptr %i.io, align 4, !tbaa !43
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.ih, float %.1331748.us.us.i)
  %i.ir = fadd float %.1749.us.us.i, %i.ih
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph752.us.us.i.new
  %.2332.us.us.i = phi float [ %i.iq, %bb.l ], [ %.1331748.us.us.i, %.lr.ph752.us.us.i.new ] ; 2 uses
  %.2.us.us.i = phi float [ %i.ir, %bb.l ], [ %.1749.us.us.i, %.lr.ph752.us.us.i.new ] ; 2 uses
  %i.is = add nuw nsw i64 %.0327750.us.us.i, 1    ; 2 uses
  %i.it = uitofp nneg i64 %i.is to float
  %i.iu = fsub float %i.it, %i.gp
  %i.iv = fadd float %.0341.i, %i.iu
  %i.iw = fmul float %i.fh, %i.iv
  %i.ix = tail call float @llvm.fabs.f32(float %i.iw)
  %i.iy = fsub float 1.000000e+00, %i.ix          ; 2 uses
  %i.iz = fcmp olt float %i.iy, 0.000000e+00
  %.sroa.speculated.i363.us.us.i.1 = select i1 %i.iz, float 0.000000e+00, float %i.iy
  %i.ja = fmul float %.sroa.speculated.i.us.us.i, %.sroa.speculated.i363.us.us.i.1 ; 3 uses
  %i.jb = fcmp ugt float %i.ja, 0.000000e+00
  br i1 %i.jb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jc = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.jd = mul i64 %i.is, %i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.hp
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.fr
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.fl
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !43
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.ja, float %.2332.us.us.i)
  %i.jk = fadd float %.2.us.us.i, %i.ja
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2332.us.us.i.1 = phi float [ %i.jj, %bb.n ], [ %.2332.us.us.i, %bb.m ] ; 2 uses
  %.2.us.us.i.1 = phi float [ %i.jk, %bb.n ], [ %.2.us.us.i, %bb.m ] ; 2 uses
  %i.jl = add nuw nsw i64 %.0327750.us.us.i, 2    ; 2 uses
  %exitcond862.not.i.1 = icmp eq i64 %i.jl, %.sroa.speculated661.us.i
  br i1 %exitcond862.not.i.1, label %._crit_edge753.us.us.i, label %.lr.ph752.us.us.i.new, !llvm.loop !1263

._crit_edge753.us.us.i:                           ; preds = %bb.o, %.prol.loopexit
  %.2332.us.us.i.lcssa = phi float [ %.2332.us.us.i.lcssa.unr, %.prol.loopexit ], [ %.2332.us.us.i.1, %bb.o ] ; 2 uses
  %.2.us.us.i.lcssa = phi float [ %.2.us.us.i.lcssa.unr, %.prol.loopexit ], [ %.2.us.us.i.1, %bb.o ] ; 2 uses
  %i.jm = add nuw nsw i64 %.0328757.us.us.i, 1    ; 2 uses
  %exitcond863.not.i = icmp eq i64 %i.jm, %.sroa.speculated649.i
  br i1 %exitcond863.not.i, label %._crit_edge760.us.i, label %.lr.ph752.us.us.i, !llvm.loop !1264

._crit_edge760.us.i:                              ; preds = %._crit_edge753.us.us.i, %.lr.ph759.us.i
  %.us-phi.us.i = phi float [ 0.000000e+00, %.lr.ph759.us.i ], [ %.2332.us.us.i.lcssa, %._crit_edge753.us.us.i ] ; 2 uses
  %.us-phi763.us.i = phi float [ 0.000000e+00, %.lr.ph759.us.i ], [ %.2.us.us.i.lcssa, %._crit_edge753.us.us.i ] ; 2 uses
  %i.jn = fcmp ogt float %.us-phi763.us.i, 0.000000e+00
  %i.jo = fdiv float %.us-phi.us.i, %.us-phi763.us.i
  %spec.select.us.i = select i1 %i.jn, float %i.jo, float %.us-phi.us.i
  %i.jp = mul i64 %.0333764.us.i, %i.v
  %gep772.us.i = getelementptr i8, ptr %gep782.i, i64 %i.jp
  store float %spec.select.us.i, ptr %gep772.us.i, align 4, !tbaa !43
  %i.jq = add nuw nsw i64 %.0333764.us.i, 1       ; 2 uses
  %exitcond864.not.i = icmp eq i64 %i.jq, %i.eu
  br i1 %exitcond864.not.i, label %._crit_edge767.i, label %.lr.ph759.us.i, !llvm.loop !1265

._crit_edge767.i:                                 ; preds = %.lr.ph766.split.i.prol.loopexit, %.lr.ph766.split.i, %._crit_edge760.us.i, %middle.block, %vec.epilog.middle.block
  %i.jr = add nuw nsw i64 %.0334776.i, 1          ; 2 uses
  %exitcond865.not.i = icmp eq i64 %i.jr, %i.es
  br i1 %exitcond865.not.i, label %._crit_edge779.i, label %.lr.ph766.i, !llvm.loop !1266

.lr.ph766.split.i:                                ; preds = %.lr.ph766.split.i.prol.loopexit, %.lr.ph766.split.i
  %.0333764.i = phi i64 [ %i.kh, %.lr.ph766.split.i ], [ %.0333764.i.unr, %.lr.ph766.split.i.prol.loopexit ] ; 9 uses
  %i.js = mul i64 %.0333764.i, %i.v
  %gep772.i = getelementptr i8, ptr %gep782.i, i64 %i.js
  store float 0.000000e+00, ptr %gep772.i, align 4, !tbaa !43
  %i.jt = add nuw nsw i64 %.0333764.i, 1
  %i.ju = mul i64 %i.jt, %i.v
  %gep772.i.1 = getelementptr i8, ptr %gep782.i, i64 %i.ju
  store float 0.000000e+00, ptr %gep772.i.1, align 4, !tbaa !43
  %i.jv = add nuw nsw i64 %.0333764.i, 2
  %i.jw = mul i64 %i.jv, %i.v
  %gep772.i.2 = getelementptr i8, ptr %gep782.i, i64 %i.jw
  store float 0.000000e+00, ptr %gep772.i.2, align 4, !tbaa !43
  %i.jx = add nuw nsw i64 %.0333764.i, 3
  %i.jy = mul i64 %i.jx, %i.v
  %gep772.i.3 = getelementptr i8, ptr %gep782.i, i64 %i.jy
  store float 0.000000e+00, ptr %gep772.i.3, align 4, !tbaa !43
  %i.jz = add nuw nsw i64 %.0333764.i, 4
  %i.ka = mul i64 %i.jz, %i.v
  %gep772.i.4 = getelementptr i8, ptr %gep782.i, i64 %i.ka
  store float 0.000000e+00, ptr %gep772.i.4, align 4, !tbaa !43
  %i.kb = add nuw nsw i64 %.0333764.i, 5
  %i.kc = mul i64 %i.kb, %i.v
  %gep772.i.5 = getelementptr i8, ptr %gep782.i, i64 %i.kc
  store float 0.000000e+00, ptr %gep772.i.5, align 4, !tbaa !43
  %i.kd = add nuw nsw i64 %.0333764.i, 6
  %i.ke = mul i64 %i.kd, %i.v
  %gep772.i.6 = getelementptr i8, ptr %gep782.i, i64 %i.ke
  store float 0.000000e+00, ptr %gep772.i.6, align 4, !tbaa !43
  %i.kf = add nuw nsw i64 %.0333764.i, 7
  %i.kg = mul i64 %i.kf, %i.v
  %gep772.i.7 = getelementptr i8, ptr %gep782.i, i64 %i.kg
  store float 0.000000e+00, ptr %gep772.i.7, align 4, !tbaa !43
  %i.kh = add nuw nsw i64 %.0333764.i, 8          ; 2 uses
  %exitcond861.not.i.7 = icmp eq i64 %i.kh, %i.eu
  br i1 %exitcond861.not.i.7, label %._crit_edge767.i, label %.lr.ph766.split.i, !llvm.loop !1267

bb.p:                                             ; preds = %bb.i
  %trunc.i = trunc i32 %i.at to i8
  switch i8 %trunc.i, label %bb.s [
    i8 1, label %.preheader695.i
    i8 2, label %.preheader697.i
  ]

.preheader697.i:                                  ; preds = %bb.p
  %i.ki = icmp sgt i64 %i.t, 0
  br i1 %i.ki, label %.lr.ph718.i, label %_ZL32ggml_compute_forward_upscale_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph718.i:                                      ; preds = %.preheader697.i
  %i.kj = sext i32 %i.d to i64                    ; 2 uses
  %i.kk = icmp sle i64 %i.r, %i.kj
  %i.kl = extractelement <2 x i64> %i.ad, i64 1   ; 2 uses
  %i.km = icmp slt i64 %i.kl, 1
  %i.kn = extractelement <2 x i64> %i.ad, i64 0   ; 2 uses
  %i.ko = icmp slt i64 %i.kn, 1
  %i.kp = add nsw <2 x i64> %i.ac, splat (i64 -1) ; 2 uses
  %i.kq = sext i32 %i.f to i64
end_hunk_1
