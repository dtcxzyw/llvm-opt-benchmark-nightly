Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_get_rows_back:bb.a
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !43
  %i.kh = fadd float %i.ke, %i.kg
  store float %i.kh, ptr %i.kd, align 4, !tbaa !43
  %indvars.iv.next25.i.i.7 = add nuw nsw i64 %indvars.iv24.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next25.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, label %.lr.ph22.i.i, !llvm.loop !822

_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i:   ; preds = %.lr.ph22.i.i.prol.loopexit, %.lr.ph22.i.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %wide.trip.count.i11
  br i1 %exitcond.not.i14, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %iter.check, !llvm.loop !815

bb.q:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5411, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, %._crit_edge.i, %.lr.ph.split.i, %.preheader.i9, %bb.j, %.lr.ph3.i, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_diag(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 8, !tbaa !35
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %.thread5.i, label %_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.thread5.i:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = icmp eq i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  %i.o = icmp eq i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = icmp eq i64 %i.aa, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31 ; 4 uses
  %i.ai = icmp eq i64 %i.e, %i.u
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread5.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5450, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.88) #17
  unreachable

bb.d:                                             ; preds = %.thread5.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.al = icmp eq i64 %i.e, %i.ak
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5451, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.89) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5452, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.90) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.j, %i.w
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5453, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.91) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = icmp eq i64 %i.l, %i.y
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5454, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.92) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  br i1 %i.o, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5456, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  br i1 %i.ab, label %.preheader7.i, label %bb.o

.preheader7.i:                                    ; preds = %bb.n
  %i.ao = icmp sgt i64 %i.l, 0
  br i1 %i.ao, label %.preheader6.lr.ph.i, label %_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader6.lr.ph.i:                              ; preds = %.preheader7.i
  %i.ap = icmp slt i64 %i.j, 1
  %i.aq = icmp slt i64 %i.e, 1
  %brmerge.i = or i1 %i.aq, %i.ap
  br i1 %brmerge.i, label %_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader6.lr.ph.split.split.i

.preheader6.lr.ph.split.split.i:                  ; preds = %.preheader6.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 5 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %i.av = add i64 %i.ad, 4                        ; 3 uses
  %i.aw = shl i64 %i.e, 2
  %i.ax = add i64 %i.aw, -4                       ; 4 uses
  %i.ay = icmp samesign ugt i64 %i.e, 1
  br i1 %i.ay, label %.preheader6.i.us.preheader, label %.preheader6.i.preheader

.preheader6.i.us.preheader:                       ; preds = %.preheader6.lr.ph.split.split.i
  %i.az = add nsw i64 %i.e, -1                    ; 3 uses
  %xtraiter14 = and i64 %i.az, 1
  %i.ba = icmp eq i64 %i.e, 2
  %unroll_iter = and i64 %i.az, -2
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  %lcmp.mod16 = trunc i64 %i.az to i1
  br label %.preheader6.i.us

.preheader6.i.preheader:                          ; preds = %.preheader6.lr.ph.split.split.i
  %i.bb = add nsw i64 %i.l, -1                    ; 2 uses
  %i.bc = mul i64 %i.s, %i.bb
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.j
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.be, i64 3
  %i.bf = mul i64 %i.ah, %i.bb
  %i.bg = getelementptr i8, ptr %i.at, i64 %i.j
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %scevgep10 = getelementptr i8, ptr %i.bh, i64 3
  %min.iters.check = icmp ult i64 %i.j, 24
  %ident.check = icmp ne i64 %i.af, 1
  %ident.check9 = icmp ne i64 %i.q, 1
  %i.bi = or i1 %ident.check, %ident.check9
  %bound0 = icmp ult ptr %i.au, %scevgep10
  %bound1 = icmp ult ptr %i.at, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bj = or i64 %i.ah, %i.s
  %i.bk = icmp slt i64 %i.bj, 0
  %i.bl = or i1 %found.conflict, %i.bk
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader6.i

.preheader6.i.us:                                 ; preds = %.preheader6.i.us.preheader, %._crit_edge17.i.split.us.us
  %indvar24.i.us = phi i64 [ %indvar.next25.i.us, %._crit_edge17.i.split.us.us ], [ 0, %.preheader6.i.us.preheader ] ; 3 uses
  %i.bm = mul i64 %indvar24.i.us, %i.ah           ; 2 uses
  %i.bn = mul i64 %indvar24.i.us, %i.s
  %i.bo = getelementptr i8, ptr %i.at, i64 %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bn
  %i.bq = getelementptr i8, ptr %i.at, i64 %i.bm
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  br label %._crit_edge.peel.i.us.us

._crit_edge.peel.i.us.us:                         ; preds = %._crit_edge15.i.loopexit.us.us, %.preheader6.i.us
  %indvar26.i.us.us = phi i64 [ 0, %.preheader6.i.us ], [ %indvar.next27.i.us.us, %._crit_edge15.i.loopexit.us.us ] ; 3 uses
  %i.bs = mul i64 %indvar26.i.us.us, %i.af        ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.bs  ; 4 uses
  %i.bu = mul i64 %indvar26.i.us.us, %i.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu ; 4 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !43
  store float %i.bw, ptr %i.bt, align 4, !tbaa !43
  %scevgep.peel.i.us.us = getelementptr i8, ptr %i.br, i64 %i.bs ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.peel.i.us.us, i8 0, i64 %i.ax, i1 false), !tbaa !43
  br i1 %i.ba, label %._crit_edge.i.us.us.epil.preheader, label %._crit_edge.i.us.us

._crit_edge.i.us.us:                              ; preds = %._crit_edge.peel.i.us.us, %.loopexit.i.us.us.1
  %indvar.i.us.us = phi i64 [ %indvar.next.i.us.us.1, %.loopexit.i.us.us.1 ], [ 1, %._crit_edge.peel.i.us.us ] ; 7 uses
  %niter = phi i64 [ %niter.next.1, %.loopexit.i.us.us.1 ], [ 0, %._crit_edge.peel.i.us.us ]
  %i.bx = mul i64 %indvar.i.us.us, %i.ad
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx  ; 2 uses
  %i.bz = shl nuw nsw i64 %indvar.i.us.us, 2      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.by, i8 0, i64 range(i64 0, 8589934589) %i.bz, i1 false), !tbaa !43
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvar.i.us.us
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !43
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvar.i.us.us
  store float %i.cb, ptr %i.cc, align 4, !tbaa !43
  %indvar.next.i.us.us = add nuw nsw i64 %indvar.i.us.us, 1 ; 6 uses
  %i.cd = icmp sgt i64 %i.e, %indvar.next.i.us.us
  br i1 %i.cd, label %.lr.ph12.preheader.i.us.us, label %.loopexit.i.us.us

.lr.ph12.preheader.i.us.us:                       ; preds = %._crit_edge.i.us.us
  %i.ce = sub i64 %i.ax, %i.bz
  %i.cf = mul i64 %indvar.i.us.us, %i.av
  %scevgep.i.us.us = getelementptr i8, ptr %scevgep.peel.i.us.us, i64 %i.cf
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.us.us, i8 0, i64 %i.ce, i1 false), !tbaa !43
  br label %.loopexit.i.us.us

.loopexit.i.us.us:                                ; preds = %.lr.ph12.preheader.i.us.us, %._crit_edge.i.us.us
  %i.cg = mul i64 %indvar.next.i.us.us, %i.ad
  %i.ch = getelementptr i8, ptr %i.bt, i64 %i.cg  ; 2 uses
  %i.ci = shl nuw nsw i64 %indvar.next.i.us.us, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ch, i8 0, i64 range(i64 0, 8589934589) %i.ci, i1 false), !tbaa !43
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvar.next.i.us.us
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !43
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvar.next.i.us.us
  store float %i.ck, ptr %i.cl, align 4, !tbaa !43
  %indvar.next.i.us.us.1 = add nuw nsw i64 %indvar.i.us.us, 2 ; 3 uses
  %i.cm = icmp sgt i64 %i.e, %indvar.next.i.us.us.1
  br i1 %i.cm, label %.lr.ph12.preheader.i.us.us.1, label %.loopexit.i.us.us.1

.lr.ph12.preheader.i.us.us.1:                     ; preds = %.loopexit.i.us.us
  %i.cn = sub i64 %i.ax, %i.ci
  %i.co = mul i64 %indvar.next.i.us.us, %i.av
  %scevgep.i.us.us.1 = getelementptr i8, ptr %scevgep.peel.i.us.us, i64 %i.co
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.us.us.1, i8 0, i64 %i.cn, i1 false), !tbaa !43
  br label %.loopexit.i.us.us.1

.loopexit.i.us.us.1:                              ; preds = %.lr.ph12.preheader.i.us.us.1, %.loopexit.i.us.us
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge15.i.loopexit.us.us.unr-lcssa, label %._crit_edge.i.us.us, !llvm.loop !827

._crit_edge15.i.loopexit.us.us.unr-lcssa:         ; preds = %.loopexit.i.us.us.1
  br i1 %lcmp.mod15.not, label %._crit_edge15.i.loopexit.us.us, label %._crit_edge.i.us.us.epil.preheader

._crit_edge.i.us.us.epil.preheader:               ; preds = %._crit_edge15.i.loopexit.us.us.unr-lcssa, %._crit_edge.peel.i.us.us
  %indvar.i.us.us.epil.init = phi i64 [ 1, %._crit_edge.peel.i.us.us ], [ %indvar.next.i.us.us.1, %._crit_edge15.i.loopexit.us.us.unr-lcssa ] ; 6 uses
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.cp = mul i64 %indvar.i.us.us.epil.init, %i.ad
  %i.cq = getelementptr i8, ptr %i.bt, i64 %i.cp  ; 2 uses
  %i.cr = shl nuw nsw i64 %indvar.i.us.us.epil.init, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cq, i8 0, i64 range(i64 0, 8589934589) %i.cr, i1 false), !tbaa !43
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvar.i.us.us.epil.init
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !43
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvar.i.us.us.epil.init
  store float %i.ct, ptr %i.cu, align 4, !tbaa !43
  %indvar.next.i.us.us.epil = add nuw nsw i64 %indvar.i.us.us.epil.init, 1
  %i.cv = icmp sgt i64 %i.e, %indvar.next.i.us.us.epil
  br i1 %i.cv, label %.lr.ph12.preheader.i.us.us.epil, label %._crit_edge15.i.loopexit.us.us

.lr.ph12.preheader.i.us.us.epil:                  ; preds = %._crit_edge.i.us.us.epil.preheader
  %i.cw = sub i64 %i.ax, %i.cr
  %i.cx = mul i64 %indvar.i.us.us.epil.init, %i.av
  %scevgep.i.us.us.epil = getelementptr i8, ptr %scevgep.peel.i.us.us, i64 %i.cx
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.us.us.epil, i8 0, i64 %i.cw, i1 false), !tbaa !43
  br label %._crit_edge15.i.loopexit.us.us

._crit_edge15.i.loopexit.us.us:                   ; preds = %._crit_edge.i.us.us.epil.preheader, %.lr.ph12.preheader.i.us.us.epil, %._crit_edge15.i.loopexit.us.us.unr-lcssa
  %indvar.next27.i.us.us = add nuw nsw i64 %indvar26.i.us.us, 1 ; 2 uses
  %exitcond34.not.i.us.us = icmp eq i64 %indvar.next27.i.us.us, %i.j
  br i1 %exitcond34.not.i.us.us, label %._crit_edge17.i.split.us.us, label %._crit_edge.peel.i.us.us, !llvm.loop !828

._crit_edge17.i.split.us.us:                      ; preds = %._crit_edge15.i.loopexit.us.us
  %indvar.next25.i.us = add nuw nsw i64 %indvar24.i.us, 1 ; 2 uses
  %exitcond36.not.i.us = icmp eq i64 %indvar.next25.i.us, %i.l
  br i1 %exitcond36.not.i.us, label %_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader6.i.us, !llvm.loop !829

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5457, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

.preheader6.i:                                    ; preds = %.preheader6.i.preheader, %._crit_edge17.i.split
  %indvar24.i = phi i64 [ %indvar.next25.i, %._crit_edge17.i.split ], [ 0, %.preheader6.i.preheader ] ; 3 uses
  %i.cy = mul i64 %indvar24.i, %i.ah
  %i.cz = mul i64 %indvar24.i, %i.s
  %i.da = getelementptr i8, ptr %i.at, i64 %i.cy  ; 12 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cz ; 10 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 %i.j
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1
  %i.de = icmp ult ptr %i.dd, %i.da
  %i.df = or i1 %i.bi, %i.de
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.df
  %brmerge = select i1 %or.cond, i1 true, i1 %i.bl
  br i1 %brmerge, label %._crit_edge.peel.i.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader6.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader6.i ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader6.i ] ; 3 uses
  %wide.gep = getelementptr i8, ptr %i.da, <8 x i64> %vec.ind
  %wide.gep12 = getelementptr inbounds nuw i8, ptr %i.db, <8 x i64> %vec.ind
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep12, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43, !alias.scope !836, !noalias !837
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.masked.gather, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !837
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !833

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge17.i.split, label %._crit_edge.peel.i.preheader

._crit_edge.peel.i.preheader:                     ; preds = %.preheader6.i, %middle.block
  %indvar26.i.ph = phi i64 [ 0, %.preheader6.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %._crit_edge.peel.i.prol.loopexit, label %._crit_edge.peel.i.prol

._crit_edge.peel.i.prol:                          ; preds = %._crit_edge.peel.i.preheader, %._crit_edge.peel.i.prol
  %indvar26.i.prol = phi i64 [ %indvar.next27.i.prol, %._crit_edge.peel.i.prol ], [ %indvar26.i.ph, %._crit_edge.peel.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %._crit_edge.peel.i.prol ], [ 0, %._crit_edge.peel.i.preheader ]
  %i.dh = mul i64 %indvar26.i.prol, %i.af
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh
  %i.dj = mul i64 %indvar26.i.prol, %i.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !43
  store float %i.dl, ptr %i.di, align 4, !tbaa !43
  %indvar.next27.i.prol = add nuw nsw i64 %indvar26.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %._crit_edge.peel.i.prol.loopexit, label %._crit_edge.peel.i.prol, !llvm.loop !834

._crit_edge.peel.i.prol.loopexit:                 ; preds = %._crit_edge.peel.i.prol, %._crit_edge.peel.i.preheader
  %indvar26.i.unr = phi i64 [ %indvar26.i.ph, %._crit_edge.peel.i.preheader ], [ %indvar.next27.i.prol, %._crit_edge.peel.i.prol ]
  %i.dm = sub nsw i64 %indvar26.i.ph, %i.j
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %._crit_edge17.i.split, label %._crit_edge.peel.i

._crit_edge.peel.i:                               ; preds = %._crit_edge.peel.i.prol.loopexit, %._crit_edge.peel.i
  %indvar26.i = phi i64 [ %indvar.next27.i.7, %._crit_edge.peel.i ], [ %indvar26.i.unr, %._crit_edge.peel.i.prol.loopexit ] ; 10 uses
  %i.do = mul i64 %indvar26.i, %i.af
  %i.dp = getelementptr i8, ptr %i.da, i64 %i.do
  %i.dq = mul i64 %indvar26.i, %i.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !43
  store float %i.ds, ptr %i.dp, align 4, !tbaa !43
  %indvar.next27.i = add nuw nsw i64 %indvar26.i, 1 ; 2 uses
  %i.dt = mul i64 %indvar.next27.i, %i.af
  %i.du = getelementptr i8, ptr %i.da, i64 %i.dt
  %i.dv = mul i64 %indvar.next27.i, %i.q
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !43
  store float %i.dx, ptr %i.du, align 4, !tbaa !43
  %indvar.next27.i.1 = add nuw nsw i64 %indvar26.i, 2 ; 2 uses
  %i.dy = mul i64 %indvar.next27.i.1, %i.af
  %i.dz = getelementptr i8, ptr %i.da, i64 %i.dy
  %i.ea = mul i64 %indvar.next27.i.1, %i.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !43
  store float %i.ec, ptr %i.dz, align 4, !tbaa !43
  %indvar.next27.i.2 = add nuw nsw i64 %indvar26.i, 3 ; 2 uses
  %i.ed = mul i64 %indvar.next27.i.2, %i.af
  %i.ee = getelementptr i8, ptr %i.da, i64 %i.ed
  %i.ef = mul i64 %indvar.next27.i.2, %i.q
  %i.eg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !43
  store float %i.eh, ptr %i.ee, align 4, !tbaa !43
  %indvar.next27.i.3 = add nuw nsw i64 %indvar26.i, 4 ; 2 uses
  %i.ei = mul i64 %indvar.next27.i.3, %i.af
  %i.ej = getelementptr i8, ptr %i.da, i64 %i.ei
  %i.ek = mul i64 %indvar.next27.i.3, %i.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !43
  store float %i.em, ptr %i.ej, align 4, !tbaa !43
  %indvar.next27.i.4 = add nuw nsw i64 %indvar26.i, 5 ; 2 uses
  %i.en = mul i64 %indvar.next27.i.4, %i.af
  %i.eo = getelementptr i8, ptr %i.da, i64 %i.en
  %i.ep = mul i64 %indvar.next27.i.4, %i.q
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !43
  store float %i.er, ptr %i.eo, align 4, !tbaa !43
  %indvar.next27.i.5 = add nuw nsw i64 %indvar26.i, 6 ; 2 uses
  %i.es = mul i64 %indvar.next27.i.5, %i.af
  %i.et = getelementptr i8, ptr %i.da, i64 %i.es
  %i.eu = mul i64 %indvar.next27.i.5, %i.q
  %i.ev = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !43
  store float %i.ew, ptr %i.et, align 4, !tbaa !43
  %indvar.next27.i.6 = add nuw nsw i64 %indvar26.i, 7 ; 2 uses
  %i.ex = mul i64 %indvar.next27.i.6, %i.af
  %i.ey = getelementptr i8, ptr %i.da, i64 %i.ex
  %i.ez = mul i64 %indvar.next27.i.6, %i.q
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !43
  store float %i.fb, ptr %i.ey, align 4, !tbaa !43
  %indvar.next27.i.7 = add nuw nsw i64 %indvar26.i, 8 ; 2 uses
  %exitcond34.not.i.7 = icmp eq i64 %indvar.next27.i.7, %i.j
  br i1 %exitcond34.not.i.7, label %._crit_edge17.i.split, label %._crit_edge.peel.i, !llvm.loop !835

._crit_edge17.i.split:                            ; preds = %._crit_edge.peel.i.prol.loopexit, %._crit_edge.peel.i, %middle.block
  %indvar.next25.i = add nuw nsw i64 %indvar24.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvar.next25.i, %i.l
  br i1 %exitcond36.not.i, label %_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader6.i, !llvm.loop !829

_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge17.i.split, %._crit_edge17.i.split.us.us, %bb.b, %.preheader7.i, %.preheader6.lr.ph.i
  ret void

bb.p:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5489, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_diag_mask_inf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL34ggml_compute_forward_diag_mask_f32PK19ggml_compute_paramsP11ggml_tensorf(ptr noundef %0, ptr noundef nonnull %1, float noundef -inf)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5559, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL34ggml_compute_forward_diag_mask_f32PK19ggml_compute_paramsP11ggml_tensorf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, float noundef nofpclass(nan pinf nzero sub norm) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 5 uses
  %i.j = icmp sgt i32 %i.g, -1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5509, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.93) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@ggml_compute_forward_im2col:bb.a
  %i.gn = getelementptr i8, ptr %i.ga, i64 %i.ge
  %i.go = getelementptr i8, ptr %i.gb, i64 %i.ge
  %i.gp = getelementptr i8, ptr %i.gc, i64 %i.gg
  %i.gq = getelementptr i8, ptr %i.gd, i64 %i.gg
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.gm, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <16 x i64> poison, i64 %i.gm, i64 0
  %broadcast.splat112 = shufflevector <16 x i64> %broadcast.splatinsert111, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %i.gm, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge213.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge213.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 4 uses
  %.0175221.us.us.us.us.us.us.us.us.i = phi i64 [ %i.ms, %._crit_edge213.us.us.us.us.us.us.us.us.i ], [ %i.bm, %.lr.ph.us.us.us.us.us.us.i ] ; 5 uses
  %i.gr = mul i64 %i.ej, %indvar.i                ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.gn, i64 %i.gr
  %scevgep152 = getelementptr i8, ptr %i.go, i64 %i.gr
  %i.gs = mul i64 %i.cy, %indvar.i                ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.gp, i64 %i.gs
  %scevgep98 = getelementptr i8, ptr %i.gq, i64 %i.gs
  %i.gt = mul i64 %indvar.i, %i.bx
  %reass.add20 = add i64 %i.gt, %i.bm
  %reass.mul21 = mul i64 %reass.add20, %factor.op.mul290.i
  %reass.add17 = add i64 %reass.add16, %reass.mul21
  %reass.mul = shl i64 %reass.add17, 1            ; 2 uses
  switch i32 %i.ca, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i [
    i32 0, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.gu = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.fm
  %i.gw = mul nsw i64 %.0175221.us.us.us.us.us.us.us.us.i, %i.bq
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 %i.gw
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i: ; preds = %bb.i, %bb.h
  %.ph.i = phi ptr [ null, %bb.h ], [ %i.gx, %bb.i ]
  %factor.op.mul.reass.us.us.us.us.us.us.us.us371.i = mul i64 %.0175221.us.us.us.us.us.us.us.us.i, %factor.op.mul290.i
  br label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.i:       ; preds = %bb.h
  %i.gy = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.fm
  %i.ha = mul nsw i64 %.0175221.us.us.us.us.us.us.us.us.i, %i.bq
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 %i.ha
  %i.hc = freeze ptr %i.hb                        ; 4 uses
  %factor.op.mul.reass.us.us.us.us.us.us.us.us.i = mul i64 %.0175221.us.us.us.us.us.us.us.us.i, %factor.op.mul290.i ; 2 uses
  %.not194.us.us.us.us.us.us.us.us.i = icmp eq ptr %i.hc, null
  %i.hd = getelementptr [2 x i8], ptr %i.gk, i64 %factor.op.mul.reass.us.us.us.us.us.us.us.us.i
  br i1 %.not194.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i, label %.preheader.us226.us.us.us.us.us.us.us.preheader.i

.preheader.us226.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
  %i.he = getelementptr i8, ptr %i.bi, i64 %reass.mul
  %i.hf = getelementptr i8, ptr %i.hc, i64 %i.eq
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.fs
  %scevgep153 = getelementptr i8, ptr %i.hg, i64 %i.gf
  %i.hh = getelementptr i8, ptr %i.hc, i64 %i.fb
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.fs
  %scevgep154 = getelementptr i8, ptr %i.hi, i64 %i.gf
  %bound0155 = icmp ult ptr %scevgep151, %scevgep154
  %bound1156 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict157 = and i1 %bound0155, %bound1156
  %.reass196 = or i1 %found.conflict157, %invariant.op195
  br label %.preheader.us226.us.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i
  %i.hj = phi i64 [ %factor.op.mul.reass.us.us.us.us.us.us.us.us371.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ %factor.op.mul.reass.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.hk = phi ptr [ %.ph.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ null, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.hl = getelementptr i8, ptr %i.bi, i64 %reass.mul
  %i.hm = getelementptr [2 x i8], ptr %i.gk, i64 %i.hj
  %i.hn = getelementptr i8, ptr %i.hk, i64 %i.dg
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.fu
  %scevgep99 = getelementptr i8, ptr %i.ho, i64 %i.gh
  %i.hp = getelementptr i8, ptr %i.hk, i64 %i.dq
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.fu
  %scevgep100 = getelementptr i8, ptr %i.hq, i64 %i.gh
  %bound0101 = icmp ult ptr %scevgep97, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict103 = and i1 %bound0101, %bound1102
  %.reass198 = or i1 %found.conflict103, %invariant.op197
  br label %.preheader.us.us.us.us.us.us.us.us.us.i

.preheader.us226.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us239.us.us.us.us.us.us.us.i, %.preheader.us226.us.us.us.us.us.us.us.preheader.i
  %.0174212.us227.us.us.us.us.us.us.us.i = phi i64 [ %i.kg, %._crit_edge.us239.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us226.us.us.us.us.us.us.us.preheader.i ] ; 4 uses
  %i.hr = mul i64 %.0174212.us227.us.us.us.us.us.us.us.i, %i.cd
  %scevgep341.i = getelementptr i8, ptr %i.he, i64 %i.hr
  %i.hs = mul nsw i64 %.0174212.us227.us.us.us.us.us.us.us.i, %i.bv
  %i.ht = add i64 %i.hs, %i.fz                    ; 3 uses
  %i.hu = icmp slt i64 %i.ht, 0
  %i.hv = mul nuw nsw i64 %i.ht, %i.n
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hv ; 2 uses
  %i.hx = mul nuw nsw i64 %.0174212.us227.us.us.us.us.us.us.us.i, %i.k
  %i.hy = getelementptr [2 x i8], ptr %i.hd, i64 %i.hx ; 2 uses
  br i1 %i.hu, label %._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us228.us.us.us.us.us.us.us.i

.lr.ph.split.us228.us.us.us.us.us.us.us.i:        ; preds = %.preheader.us226.us.us.us.us.us.us.us.i
  %i.hz = icmp slt i64 %i.ht, %i.ba
  %.fr.us229.us.us.us.us.us.us.us.i = freeze i1 %i.hz
  br i1 %.fr.us229.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader, label %._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i

.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.split.us228.us.us.us.us.us.us.us.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %.reass196
  br i1 %brmerge, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182, label %vector.body167

vector.body167:                                   ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader, %vector.body167
  %index168 = phi i64 [ %index.next172, %vector.body167 ], [ 0, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %vec.ind169 = phi <8 x i64> [ %vec.ind.next173, %vector.body167 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %i.ia = add <8 x i64> %vec.ind169, %broadcast.splat164 ; 3 uses
  %i.ib = extractelement <8 x i64> %i.ia, i64 0
  %i.ic = icmp sgt <8 x i64> %i.ia, splat (i64 -1)
  %i.id = icmp slt <8 x i64> %i.ia, %broadcast.splat166
  %i.ie = select <8 x i1> %i.ic, <8 x i1> %i.id, <8 x i1> zeroinitializer ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %i.hw, i64 %i.ib
  %wide.masked.load170 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.if, <8 x i1> %i.ie, <8 x float> poison), !tbaa !43, !alias.scope !1038 ; 2 uses
  %i.ig = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.load170)
  %i.ih = fmul <8 x float> %i.ig, splat (float f0x77800000)
  %i.ii = fmul <8 x float> %i.ih, splat (float f0x08800000)
  %i.ij = bitcast <8 x float> %wide.masked.load170 to <8 x i32> ; 2 uses
  %i.ik = shl <8 x i32> %i.ij, splat (i32 1)      ; 2 uses
  %i.il = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.ik, <8 x i32> splat (i32 1895825408))
  %i.im = lshr exact <8 x i32> %i.il, splat (i32 1)
  %i.in = and <8 x i32> %i.im, splat (i32 2139095040)
  %i.io = add nuw <8 x i32> %i.in, splat (i32 125829120)
  %i.ip = bitcast <8 x i32> %i.io to <8 x float>
  %i.iq = fadd <8 x float> %i.ii, %i.ip
  %i.ir = bitcast <8 x float> %i.iq to <8 x i32>  ; 2 uses
  %i.is = lshr <8 x i32> %i.ir, splat (i32 13)
  %i.it = and <8 x i32> %i.is, splat (i32 31744)
  %i.iu = and <8 x i32> %i.ir, splat (i32 4095)
  %i.iv = add nuw nsw <8 x i32> %i.it, %i.iu
  %i.iw = lshr <8 x i32> %i.ij, splat (i32 16)
  %i.ix = and <8 x i32> %i.iw, splat (i32 32768)
  %i.iy = icmp ugt <8 x i32> %i.ik, splat (i32 -16777216)
  %i.iz = select <8 x i1> %i.iy, <8 x i32> splat (i32 32256), <8 x i32> %i.iv
  %i.ja = or <8 x i32> %i.iz, %i.ix
  %i.jb = trunc nuw <8 x i32> %i.ja to <8 x i16>
  %predphi171 = select <8 x i1> %i.ie, <8 x i16> %i.jb, <8 x i16> zeroinitializer
  %i.jc = getelementptr [2 x i8], ptr %i.hy, i64 %index168
  store <8 x i16> %predphi171, ptr %i.jc, align 2, !tbaa !41, !alias.scope !1039, !noalias !1038
  %index.next172 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next173 = add nuw nsw <8 x i64> %vec.ind169, splat (i64 8)
  %i.jd = icmp eq i64 %index.next172, %n.vec162
  br i1 %i.jd, label %middle.block174, label %vector.body167, !llvm.loop !1012

middle.block174:                                  ; preds = %vector.body167
  br i1 %cmp.n175, label %._crit_edge.us239.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182

.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182: ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader, %middle.block174
  %.0207.us234.us.us.us.us.us.us.us.i.ph = phi i64 [ %n.vec162, %middle.block174 ], [ 0, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader ]
  br label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i

.lr.ph.split.split.us233.us.us.us.us.us.us.us.i:  ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182, %bb.k
  %.0207.us234.us.us.us.us.us.us.us.i = phi i64 [ %i.kf, %bb.k ], [ %.0207.us234.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182 ] ; 3 uses
  %i.je = mul nsw i64 %.0207.us234.us.us.us.us.us.us.us.i, %i.bs
  %i.jf = add i64 %i.je, %i.gm                    ; 3 uses
  %i.jg = icmp sgt i64 %i.jf, -1
  %.not193.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.jf, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.i = select i1 %i.jg, i1 %.not193.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jf
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !43 ; 2 uses
  %i.jj = tail call float @llvm.fabs.f32(float %i.ji)
  %i.jk = fmul float %i.jj, f0x77800000
  %i.jl = fmul float %i.jk, f0x08800000
  %i.jm = bitcast float %i.ji to i32              ; 2 uses
  %i.jn = shl i32 %i.jm, 1                        ; 2 uses
  %i.jo = tail call i32 @llvm.umax.i32(i32 %i.jn, i32 1895825408)
  %spec.store.select.i.us.us.us.us.us.us.us.us.i = lshr exact i32 %i.jo, 1
  %i.jp = and i32 %spec.store.select.i.us.us.us.us.us.us.us.us.i, 2139095040
  %i.jq = add nuw i32 %i.jp, 125829120
  %i.jr = bitcast i32 %i.jq to float
  %i.js = fadd float %i.jl, %i.jr
  %i.jt = bitcast float %i.js to i32              ; 2 uses
  %i.ju = lshr i32 %i.jt, 13
  %i.jv = and i32 %i.ju, 31744
  %i.jw = and i32 %i.jt, 4095
  %i.jx = add nuw nsw i32 %i.jv, %i.jw
  %i.jy = lshr i32 %i.jm, 16
  %i.jz = and i32 %i.jy, 32768
  %i.ka = icmp ugt i32 %i.jn, -16777216
  %i.kb = select i1 %i.ka, i32 32256, i32 %i.jx
  %i.kc = or i32 %i.kb, %i.jz
  %i.kd = trunc nuw i32 %i.kc to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i
  %.sink.i = phi i16 [ %i.kd, %bb.j ], [ 0, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i ]
  %i.ke = getelementptr [2 x i8], ptr %i.hy, i64 %.0207.us234.us.us.us.us.us.us.us.i
  store i16 %.sink.i, ptr %i.ke, align 2, !tbaa !41
  %i.kf = add nuw nsw i64 %.0207.us234.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kf, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.us239.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i, !llvm.loop !1013

._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us228.us.us.us.us.us.us.us.i, %.preheader.us226.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep341.i, i8 0, i64 range(i64 0, -1) %i.cd, i1 false), !tbaa !41
  br label %._crit_edge.us239.us.us.us.us.us.us.us.i

._crit_edge.us239.us.us.us.us.us.us.us.i:         ; preds = %bb.k, %middle.block174, %._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i
  %i.kg = add nuw nsw i64 %.0174212.us227.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond342.not.i = icmp eq i64 %i.kg, %i.bb
  br i1 %exitcond342.not.i, label %._crit_edge213.us.us.us.us.us.us.us.us.i, label %.preheader.us226.us.us.us.us.us.us.us.i, !llvm.loop !1014

.preheader.us.us.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i
  %.0174212.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.mr, %._crit_edge.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i ] ; 4 uses
  %i.kh = mul i64 %.0174212.us.us.us.us.us.us.us.us.us.i, %i.cd
  %scevgep345.i = getelementptr i8, ptr %i.hl, i64 %i.kh
  %i.ki = mul nsw i64 %.0174212.us.us.us.us.us.us.us.us.us.i, %i.bv
  %i.kj = add i64 %i.ki, %i.fz                    ; 3 uses
  %i.kk = icmp slt i64 %i.kj, 0
  %i.kl = mul nuw nsw i64 %i.kj, %i.n
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.kl ; 7 uses
  %i.kn = mul nuw nsw i64 %.0174212.us.us.us.us.us.us.us.us.us.i, %i.k
  %i.ko = getelementptr [2 x i8], ptr %i.hm, i64 %i.kn ; 7 uses
  br i1 %i.kk, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us214.us.us.us.us.us.us.us.us.i

.lr.ph.split.us214.us.us.us.us.us.us.us.us.i:     ; preds = %.preheader.us.us.us.us.us.us.us.us.us.i
  %i.kp = icmp slt i64 %i.kj, %i.ba
  %.fr.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.kp
  br i1 %.fr.us.us.us.us.us.us.us.us.us.i, label %iter.check125, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i

iter.check125:                                    ; preds = %.lr.ph.split.us214.us.us.us.us.us.us.us.us.i
  %or.cond180.not = xor i1 %or.cond180, true
  %brmerge199 = select i1 %or.cond180.not, i1 true, i1 %.reass198
  br i1 %brmerge199, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check107

vector.main.loop.iter.check107:                   ; preds = %iter.check125
  br i1 %min.iters.check108, label %vec.epilog.ph129, label %vector.body115

vector.body115:                                   ; preds = %vector.main.loop.iter.check107, %vector.body115
  %index116 = phi i64 [ %index.next120, %vector.body115 ], [ 0, %vector.main.loop.iter.check107 ] ; 2 uses
  %vec.ind117 = phi <16 x i64> [ %vec.ind.next121, %vector.body115 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.main.loop.iter.check107 ] ; 2 uses
  %i.kq = add <16 x i64> %vec.ind117, %broadcast.splat112 ; 3 uses
  %i.kr = extractelement <16 x i64> %i.kq, i64 0
  %i.ks = icmp sgt <16 x i64> %i.kq, splat (i64 -1)
  %i.kt = icmp slt <16 x i64> %i.kq, %broadcast.splat114
  %i.ku = select <16 x i1> %i.ks, <16 x i1> %i.kt, <16 x i1> zeroinitializer
  %i.kv = getelementptr [2 x i8], ptr %i.km, i64 %i.kr
  %wide.masked.load118 = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.kv, <16 x i1> %i.ku, <16 x i16> zeroinitializer), !tbaa !41, !alias.scope !1040
  %i.kw = getelementptr [2 x i8], ptr %i.ko, i64 %index116
  store <16 x i16> %wide.masked.load118, ptr %i.kw, align 2, !tbaa !41, !alias.scope !1041, !noalias !1040
  %index.next120 = add nuw i64 %index116, 16      ; 2 uses
  %vec.ind.next121 = add nuw nsw <16 x i64> %vec.ind117, splat (i64 16)
  %i.kx = icmp eq i64 %index.next120, %n.vec110
  br i1 %i.kx, label %middle.block122, label %vector.body115, !llvm.loop !1018

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %vec.epilog.iter.check127

vec.epilog.iter.check127:                         ; preds = %middle.block122
  br i1 %min.epilog.iters.check128, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader, label %vec.epilog.ph129, !prof !49

vec.epilog.ph129:                                 ; preds = %vector.main.loop.iter.check107, %vec.epilog.iter.check127
  %vec.epilog.resume.val124 = phi i64 [ %n.vec110, %vec.epilog.iter.check127 ], [ 0, %vector.main.loop.iter.check107 ] ; 2 uses
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val124, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction137 = or disjoint <4 x i64> %broadcast.splat136, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph129
  %index139 = phi i64 [ %vec.epilog.resume.val124, %vec.epilog.ph129 ], [ %index.next143, %vec.epilog.vector.body138 ] ; 2 uses
  %vec.ind140 = phi <4 x i64> [ %induction137, %vec.epilog.ph129 ], [ %vec.ind.next144, %vec.epilog.vector.body138 ] ; 2 uses
  %i.ky = add <4 x i64> %vec.ind140, %broadcast.splat132 ; 3 uses
  %i.kz = extractelement <4 x i64> %i.ky, i64 0
  %i.la = icmp sgt <4 x i64> %i.ky, splat (i64 -1)
  %i.lb = icmp slt <4 x i64> %i.ky, %broadcast.splat134
  %i.lc = select <4 x i1> %i.la, <4 x i1> %i.lb, <4 x i1> zeroinitializer
  %i.ld = getelementptr [2 x i8], ptr %i.km, i64 %i.kz
  %wide.masked.load141 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.ld, <4 x i1> %i.lc, <4 x i16> zeroinitializer), !tbaa !41, !alias.scope !1040
  %i.le = getelementptr [2 x i8], ptr %i.ko, i64 %index139
  store <4 x i16> %wide.masked.load141, ptr %i.le, align 2, !tbaa !41, !alias.scope !1041, !noalias !1040
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %vec.ind.next144 = add nuw nsw <4 x i64> %vec.ind140, splat (i64 4)
  %i.lf = icmp eq i64 %index.next143, %n.vec130
  br i1 %i.lf, label %vec.epilog.middle.block145, label %vec.epilog.vector.body138, !llvm.loop !1019

vec.epilog.middle.block145:                       ; preds = %vec.epilog.vector.body138
  br i1 %cmp.n146, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader: ; preds = %iter.check125, %vec.epilog.iter.check127, %vec.epilog.middle.block145
  %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check125 ], [ %n.vec130, %vec.epilog.middle.block145 ], [ %n.vec110, %vec.epilog.iter.check127 ] ; 3 uses
  br i1 %lcmp.mod186.not, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader, %bb.m
  %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.lm, %bb.m ], [ %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %bb.m ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader ]
  %i.lg = mul nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol, %i.bs
  %i.lh = add i64 %i.lg, %i.gm                    ; 3 uses
  %i.li = icmp sgt i64 %i.lh, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.lh, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.prol = select i1 %i.li, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.prol, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.lh
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol
  %.sink375.i.prol = phi i16 [ %i.lk, %bb.l ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol ]
  %i.ll = getelementptr [2 x i8], ptr %i.ko, i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol
  store i16 %.sink375.i.prol, ptr %i.ll, align 2, !tbaa !41
  %i.lm = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol, !llvm.loop !1020

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.m, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader
  %.0207.us209.us.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader ], [ %i.lm, %bb.m ]
  %i.ln = sub nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph, %i.k
  %i.lo = icmp ugt i64 %i.ln, -4
  br i1 %i.lo, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r
  %.0207.us209.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.mq, %bb.r ], [ %.0207.us209.us.us.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.lp = mul nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, %i.bs
  %i.lq = add i64 %i.lp, %i.gm                    ; 3 uses
  %i.lr = icmp sgt i64 %i.lq, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.lq, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.lr, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i, label %bb.n, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1

bb.n:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.lq
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !41
  br label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1: ; preds = %bb.n, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i
  %.sink375.i = phi i16 [ %i.lt, %bb.n ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i ]
  %i.lu = getelementptr [2 x i8], ptr %i.ko, i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i
  store i16 %.sink375.i, ptr %i.lu, align 2, !tbaa !41
  %i.lv = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.lw = mul nsw i64 %i.lv, %i.bs
  %i.lx = add i64 %i.lw, %i.gm                    ; 3 uses
  %i.ly = icmp sgt i64 %i.lx, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.lx, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.1 = select i1 %i.ly, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.1, label %bb.o, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2

bb.o:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.lx
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !41
  br label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2: ; preds = %bb.o, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1
  %.sink375.i.1 = phi i16 [ %i.ma, %bb.o ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1 ]
  %i.mb = getelementptr [2 x i8], ptr %i.ko, i64 %i.lv
  store i16 %.sink375.i.1, ptr %i.mb, align 2, !tbaa !41
  %i.mc = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.md = mul nsw i64 %i.mc, %i.bs
  %i.me = add i64 %i.md, %i.gm                    ; 3 uses
  %i.mf = icmp sgt i64 %i.me, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.me, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.2 = select i1 %i.mf, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.2, label %bb.p, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3

bb.p:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.me
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !41
  br label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3: ; preds = %bb.p, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2
  %.sink375.i.2 = phi i16 [ %i.mh, %bb.p ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2 ]
  %i.mi = getelementptr [2 x i8], ptr %i.ko, i64 %i.mc
  store i16 %.sink375.i.2, ptr %i.mi, align 2, !tbaa !41
  %i.mj = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.mk = mul nsw i64 %i.mj, %i.bs
  %i.ml = add i64 %i.mk, %i.gm                    ; 3 uses
  %i.mm = icmp sgt i64 %i.ml, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.ml, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.3 = select i1 %i.mm, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.ml
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3
  %.sink375.i.3 = phi i16 [ %i.mo, %bb.q ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3 ]
  %i.mp = getelementptr [2 x i8], ptr %i.ko, i64 %i.mj
  store i16 %.sink375.i.3, ptr %i.mp, align 2, !tbaa !41
  %i.mq = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond344.not.i.3 = icmp eq i64 %i.mq, %i.k
  br i1 %exitcond344.not.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i, !llvm.loop !1021

._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us214.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep345.i, i8 0, i64 range(i64 0, -1) %i.cd, i1 false), !tbaa !41
  br label %._crit_edge.us.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.us.i:         ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r, %middle.block122, %vec.epilog.middle.block145, %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.mr = add nuw nsw i64 %.0174212.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond346.not.i = icmp eq i64 %i.mr, %i.bb
  br i1 %exitcond346.not.i, label %._crit_edge213.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1014

._crit_edge213.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us239.us.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.us.us.us.i
  %i.ms = add nsw i64 %.0175221.us.us.us.us.us.us.us.us.i, %i.bx ; 2 uses
  %i.mt = icmp slt i64 %i.ms, %i.az
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %i.mt, label %bb.h, label %._crit_edge223.split.us.us.split.us.us.us.us.us.us.i, !llvm.loop !1022

._crit_edge223.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge213.us.us.us.us.us.us.us.us.i
  %i.mu = add nuw nsw i64 %.0176246.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond347.not.i = icmp eq i64 %i.mu, %i.ad
  br i1 %exitcond347.not.i, label %._crit_edge.split249.us.split.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.i, !llvm.loop !1023

._crit_edge.split249.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge223.split.us.us.split.us.us.us.us.us.us.i
  %i.mv = add nuw nsw i64 %.0177265.us.us.us.us.i, 1 ; 2 uses
  %exitcond348.not.i = icmp eq i64 %i.mv, %i.bc
  br i1 %exitcond348.not.i, label %._crit_edge266.split276.us.split.us.us.us.i, label %.preheader201.us.us.us.us.i, !llvm.loop !1024

._crit_edge266.split276.us.split.us.us.us.i:      ; preds = %._crit_edge.split249.us.split.us.us.us.us.us.i
  %i.mw = add nuw nsw i64 %.0178291.us.us.i, 1    ; 2 uses
  %exitcond349.not.i = icmp eq i64 %i.mw, %i.ay
  br i1 %exitcond349.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader202.us.us.i, !llvm.loop !1025

bb.s:                                             ; preds = %bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !24 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !24 ; 10 uses
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !30
  %i.nc = icmp eq i32 %i.nb, 0
  br i1 %i.nc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6497, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not.i5 = icmp eq ptr %i.my, null
  br i1 %.not.i5, label %.thread.i6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !31
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !31
  br label %.thread.i6

.thread.i6:                                       ; preds = %bb.v, %bb.u
  %i.nh = phi i64 [ %i.ne, %bb.v ], [ 0, %bb.u ]  ; 21 uses
  %i.ni = phi i64 [ %i.ng, %bb.v ], [ 0, %bb.u ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !31 ; 12 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !31 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !31 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !31
  %i.nr = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !31
  %i.nt = getelementptr inbounds nuw i8, ptr %i.na, i64 56
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !31
  %i.nv = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !31 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.na, i64 72
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !31
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !31 ; 7 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !31
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !51
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.og = load i32, ptr %i.of, align 8, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !51
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !51
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !51 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !51
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !51
  %i.or = icmp eq i32 %i.oq, 1                    ; 7 uses
  %i.os = load i32, ptr %0, align 8, !tbaa !35
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !36
  %i.ov = select i1 %i.or, i64 %i.nq, i64 %i.no   ; 2 uses
  %i.ow = select i1 %i.or, i64 %i.no, i64 %i.nm   ; 7 uses
  %i.ox = select i1 %i.or, i64 %i.nm, i64 1
  %i.oy = select i1 %i.or, i64 %i.ni, i64 1       ; 10 uses
  %i.oz = select i1 %i.or, i64 %i.oc, i64 1       ; 5 uses
  %i.pa = select i1 %i.or, i64 %i.ny, i64 %i.nw
  %i.pb = select i1 %i.or, i64 %i.nw, i64 %i.nu
  %i.pc = icmp eq i64 %i.ns, 4
  br i1 %i.pc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i6
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6527, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.x:                                             ; preds = %.thread.i6
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !37 ; 4 uses
  %i.pf = icmp sgt i64 %i.ov, 0
  br i1 %i.pf, label %.preheader175.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader175.lr.ph.i:                            ; preds = %bb.x
  %factor.op.mul212.i = mul i64 %i.oy, %i.nh      ; 4 uses
  %factor.op.mul202.reass.i = mul i64 %factor.op.mul212.i, %i.ow
  %i.pg = icmp slt i64 %i.oz, 1
  %i.ph = icmp slt i64 %i.oa, 1
  %i.pi = sext i32 %i.os to i64                   ; 6 uses
  %i.pj = icmp sle i64 %i.ow, %i.pi
  %sext.i = shl i64 %i.pa, 32
  %i.pk = ashr exact i64 %sext.i, 32              ; 2 uses
  %sext167.i = shl i64 %i.pb, 32
  %i.pl = ashr exact i64 %sext167.i, 32           ; 3 uses
  %i.pm = sext i32 %i.oe to i64                   ; 2 uses
  %i.pn = sext i32 %i.om to i64                   ; 5 uses
  %i.po = sext i32 %i.oi to i64                   ; 3 uses
  %i.pp = sext i32 %i.og to i64                   ; 2 uses
  %i.pq = sext i32 %i.oo to i64                   ; 3 uses
  %i.pr = sext i32 %i.ok to i64                   ; 3 uses
  %i.ps = sext i32 %i.ou to i64                   ; 4 uses
  %brmerge.i7 = select i1 %i.pg, i1 true, i1 %i.ph
  %brmerge225.i = select i1 %brmerge.i7, i1 true, i1 %i.pj
  br i1 %brmerge225.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader175.lr.ph.split.split.split.i

.preheader175.lr.ph.split.split.split.i:          ; preds = %.preheader175.lr.ph.i
  %i.pt = icmp slt i64 %i.nh, 1
  %i.pu = icmp slt i64 %i.oy, 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.na, i64 248
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !37 ; 3 uses
  %brmerge252.i = select i1 %i.pu, i1 true, i1 %i.pt
  br i1 %brmerge252.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader175.us.us.preheader.i

.preheader175.us.us.preheader.i:                  ; preds = %.preheader175.lr.ph.split.split.split.i
  %i.px = shl nsw i64 %i.pi, 2
  %i.py = mul i64 %i.px, %factor.op.mul212.i
  %i.pz = mul i64 %i.oy, %i.ow                    ; 2 uses
  %i.qa = mul i64 %i.pz, %i.nh                    ; 2 uses
  %i.qb = shl i64 %i.qa, 2
  %i.qc = shl i64 %i.nh, 2                        ; 3 uses
  %i.qd = getelementptr i8, ptr %i.pe, i64 %i.py
  %i.qe = mul i64 %i.qc, %i.oa
  %i.qf = mul i64 %i.qe, %i.oz
  %i.qg = mul i64 %i.qf, %i.pz
  %i.qh = shl i64 %i.oa, 2
  %i.qi = mul i64 %i.qh, %i.qa
  %i.qj = shl nsw i64 %i.ps, 2
  %i.qk = mul i64 %i.qj, %factor.op.mul212.i
  %i.ql = mul i64 %i.oy, %i.nh
  %i.qm = mul i64 %i.ql, %i.pi
  %i.qn = shl i64 %i.qm, 2
  %i.qo = mul i64 %i.oy, %i.ow
  %i.qp = mul i64 %i.qo, %i.oz
  %i.qq = mul i64 %i.qp, %i.nh
  %i.qr = mul i64 %i.qq, %i.oa
  %i.qs = shl i64 %i.qr, 2
  %i.qt = mul i64 %i.oy, %i.ow
  %i.qu = mul i64 %i.qt, %i.nh
  %i.qv = mul i64 %i.qu, %i.oa
  %i.qw = shl i64 %i.qv, 2
  %i.qx = mul i64 %i.oy, %i.ow
  %i.qy = mul i64 %i.qx, %i.nh
  %i.qz = shl i64 %i.qy, 2
  %i.ra = mul i64 %i.oy, %i.nh                    ; 2 uses
  %i.rb = mul i64 %i.ra, %i.ps
  %i.rc = shl i64 %i.rb, 2
  %i.rd = shl nsw i64 %i.pi, 2
  %i.re = add nsw i64 %i.rd, 4
  %i.rf = mul i64 %i.ra, %i.re
  %i.rg = shl i64 %i.nh, 2                        ; 2 uses
  %i.rh = mul nsw i64 %i.pl, %i.pi                ; 2 uses
  %i.ri = mul i64 %i.nk, %i.pr
  %i.rj = shl nsw i64 %i.po, 2
  %i.rk = add i64 %i.ri, %i.po
  %i.rl = shl i64 %i.rk, 2
  %i.rm = sub i64 %i.rh, %i.rl
  %i.rn = mul i64 %i.nk, %i.pp
  %i.ro = shl i64 %i.rn, 2
  %i.rp = shl nsw i64 %i.pm, 2
  %i.rq = mul nsw i64 %i.pl, %i.ps
  %i.rr = add nuw i64 %i.oy, 4611686018427387903
  %i.rs = mul i64 %i.rr, %i.pq
  %i.rt = sub i64 %i.rs, %i.pr
  %i.ru = shl i64 %i.rt, 2
  %i.rv = mul i64 %i.nk, %i.ru
  %i.rw = add i64 %i.rv, %i.rh
  %i.rx = add i64 %i.rw, %i.rg
  %i.ry = sub i64 %i.rx, %i.rj
  %i.rz = mul i64 %i.nk, %i.pq
  %i.sa = getelementptr i8, ptr %i.pe, i64 %i.qn
end_hunk_1
begin_hunk_2_@ggml_compute_forward_im2col_3d:bb.a
  %.0186254.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader208.us.us.us.us.us.us.i ], [ %i.la, %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i ] ; 6 uses
  %i.gj = mul i64 %i.dw, %.0186254.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gk = mul i64 %i.ev, %.0186254.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gl = mul i64 %i.cy, %.0186254.us.us.us.us.us.us.us.us.us.i
  %reass.add.us.us.us.us.us.us.us.us.us.i = add i64 %.0186254.us.us.us.us.us.us.us.us.us.i, %i.gb
  %reass.mul.us.us.us.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.us.us.us.i, %i.ah
  %i.gm = mul nsw i64 %.0186254.us.us.us.us.us.us.us.us.us.i, %i.ca
  %i.gn = sub i64 %i.gm, %i.cc
  %i.go = getelementptr i8, ptr %i.ge, i64 %i.gl
  %i.gp = getelementptr i8, ptr %i.gf, i64 %i.gj
  %i.gq = getelementptr i8, ptr %i.gg, i64 %i.gj
  %i.gr = getelementptr i8, ptr %i.gh, i64 %i.gk
  %i.gs = getelementptr i8, ptr %i.gi, i64 %i.gk
  br label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i:     ; preds = %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader207.us.us.us.us.us.us.us.us.us.i
  %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader207.us.us.us.us.us.us.us.us.us.i ], [ %i.kz, %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 6 uses
  %i.gt = mul i64 %i.ea, %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gu = mul i64 %i.ew, %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gv = mul i64 %i.cr, %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.gw = add i64 %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.us.us.us.i
  %i.gx = mul nsw i64 %i.cq, %i.gw
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.gx
  %i.gz = mul nsw i64 %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.bx
  %i.ha = sub i64 %i.gz, %i.bz                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.go, i64 %i.gv
  %i.hc = getelementptr i8, ptr %i.gp, i64 %i.gt
  %i.hd = getelementptr i8, ptr %i.gq, i64 %i.gt
  %i.he = getelementptr i8, ptr %i.gr, i64 %i.gu
  %i.hf = getelementptr i8, ptr %i.gs, i64 %i.gu
  %broadcast.splatinsert103 = insertelement <8 x i64> poison, i64 %i.ha, i64 0
  %broadcast.splat104 = shufflevector <8 x i64> %broadcast.splatinsert103, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 4 uses
  %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.kx, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ %i.bv, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.hg = mul i64 %i.ee, %indvar.i                ; 2 uses
  %i.hh = mul i64 %i.ex, %indvar.i                ; 2 uses
  %i.hi = mul i64 %i.cz, %indvar.i
  %i.hj = add nsw i64 %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.fr
  %i.hk = mul i64 %i.hj, %i.af
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.hk
  %i.hm = mul nsw i64 %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.bn
  %i.hn = getelementptr [2 x i8], ptr %i.gy, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hb, i64 %i.hi
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.hg
  %i.hq = getelementptr i8, ptr %i.hd, i64 %i.hg
  %i.hr = getelementptr i8, ptr %i.he, i64 %i.hh
  %i.hs = getelementptr i8, ptr %i.hf, i64 %i.hh
  br label %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ %i.kw, %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 6 uses
  %i.ht = mul i64 %i.eg, %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %scevgep91 = getelementptr i8, ptr %i.hp, i64 %i.ht
  %scevgep92 = getelementptr i8, ptr %i.hq, i64 %i.ht
  %i.hu = mul i64 %i.ey, %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %scevgep93 = getelementptr i8, ptr %i.hr, i64 %i.hu
  %scevgep94 = getelementptr i8, ptr %i.hs, i64 %i.hu
  %i.hv = mul i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.cs
  %scevgep313.i = getelementptr i8, ptr %i.ho, i64 %i.hv ; 2 uses
  %i.hw = mul nsw i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.ce
  %i.hx = add i64 %i.hw, %i.gd                    ; 3 uses
  %i.hy = icmp slt i64 %i.hx, 0
  %i.hz = mul i64 %i.hx, %i.ad
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hz
  %i.ib = mul nuw nsw i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.bm
  %i.ic = getelementptr [2 x i8], ptr %i.hn, i64 %i.ib
  br i1 %i.hy, label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.id = icmp sge i64 %i.hx, %i.v
  %.fr220.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.id
  br i1 %.fr220.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader

.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader: ; preds = %.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %bound095 = icmp ult ptr %scevgep91, %scevgep94
  %bound196 = icmp ult ptr %scevgep93, %scevgep92
  %found.conflict97 = and i1 %bound095, %bound196
  %.reass125 = or i1 %found.conflict97, %invariant.op124
  br label %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.kv, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 4 uses
  %i.ie = mul i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.ct
  %scevgep310.i = getelementptr i8, ptr %scevgep313.i, i64 %i.ie
  %i.if = mul nsw i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.cb
  %i.ig = add i64 %i.if, %i.gn                    ; 3 uses
  %i.ih = icmp slt i64 %i.ig, 0
  %i.ii = mul i64 %i.ig, %i.ab
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ii ; 2 uses
  %i.ik = mul nuw nsw i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.o
  %i.il = getelementptr [2 x i8], ptr %i.ic, i64 %i.ik ; 2 uses
  br i1 %i.ih, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.im = icmp slt i64 %i.ig, %i.t
  %.fr.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.im
  br i1 %.fr.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i

.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %.reass125
  br i1 %brmerge, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118, label %vector.body107

vector.body107:                                   ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %vector.body107
  %index108 = phi i64 [ %index.next112, %vector.body107 ], [ 0, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %vec.ind109 = phi <8 x i64> [ %vec.ind.next113, %vector.body107 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %i.in = add <8 x i64> %vec.ind109, %broadcast.splat104 ; 3 uses
  %i.io = extractelement <8 x i64> %i.in, i64 0
  %i.ip = icmp sgt <8 x i64> %i.in, splat (i64 -1)
  %i.iq = icmp slt <8 x i64> %i.in, %broadcast.splat106
  %i.ir = select <8 x i1> %i.ip, <8 x i1> %i.iq, <8 x i1> zeroinitializer ; 2 uses
  %i.is = shl i64 %i.io, 2
  %i.it = getelementptr i8, ptr %i.ij, i64 %i.is
  %wide.masked.load110 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.it, <8 x i1> %i.ir, <8 x float> poison), !tbaa !43, !alias.scope !1079 ; 2 uses
  %i.iu = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.load110)
  %i.iv = fmul <8 x float> %i.iu, splat (float f0x77800000)
  %i.iw = fmul <8 x float> %i.iv, splat (float f0x08800000)
  %i.ix = bitcast <8 x float> %wide.masked.load110 to <8 x i32> ; 2 uses
  %i.iy = shl <8 x i32> %i.ix, splat (i32 1)      ; 2 uses
  %i.iz = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.iy, <8 x i32> splat (i32 1895825408))
  %i.ja = lshr exact <8 x i32> %i.iz, splat (i32 1)
  %i.jb = and <8 x i32> %i.ja, splat (i32 2139095040)
  %i.jc = add nuw <8 x i32> %i.jb, splat (i32 125829120)
  %i.jd = bitcast <8 x i32> %i.jc to <8 x float>
  %i.je = fadd <8 x float> %i.iw, %i.jd
  %i.jf = bitcast <8 x float> %i.je to <8 x i32>  ; 2 uses
  %i.jg = lshr <8 x i32> %i.jf, splat (i32 13)
  %i.jh = and <8 x i32> %i.jg, splat (i32 31744)
  %i.ji = and <8 x i32> %i.jf, splat (i32 4095)
  %i.jj = add nuw nsw <8 x i32> %i.jh, %i.ji
  %i.jk = lshr <8 x i32> %i.ix, splat (i32 16)
  %i.jl = and <8 x i32> %i.jk, splat (i32 32768)
  %i.jm = icmp ugt <8 x i32> %i.iy, splat (i32 -16777216)
  %i.jn = select <8 x i1> %i.jm, <8 x i32> splat (i32 32256), <8 x i32> %i.jj
  %i.jo = or <8 x i32> %i.jn, %i.jl
  %i.jp = trunc nuw <8 x i32> %i.jo to <8 x i16>
  %predphi111 = select <8 x i1> %i.ir, <8 x i16> %i.jp, <8 x i16> zeroinitializer
  %i.jq = getelementptr [2 x i8], ptr %i.il, i64 %index108
  store <8 x i16> %predphi111, ptr %i.jq, align 2, !tbaa !41, !alias.scope !1080, !noalias !1079
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %vec.ind.next113 = add nuw nsw <8 x i64> %vec.ind109, splat (i64 8)
  %i.jr = icmp eq i64 %index.next112, %n.vec102
  br i1 %i.jr, label %middle.block114, label %vector.body107, !llvm.loop !1056

middle.block114:                                  ; preds = %vector.body107
  br i1 %cmp.n115, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118

.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118: ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %middle.block114
  %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph = phi i64 [ %n.vec102, %middle.block114 ], [ 0, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ]
  br label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118, %bb.i
  %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.ku, %bb.i ], [ %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118 ] ; 3 uses
  %i.js = mul nsw i64 %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.by
  %i.jt = add i64 %i.js, %i.ha                    ; 3 uses
  %i.ju = icmp sgt i64 %i.jt, -1
  %.not198.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.jt, %i.r
  %or.cond199.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.ju, i1 %.not198.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.jv = shl i64 %i.jt, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jv
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !43 ; 2 uses
  %i.jy = tail call float @llvm.fabs.f32(float %i.jx)
  %i.jz = fmul float %i.jy, f0x77800000
  %i.ka = fmul float %i.jz, f0x08800000
  %i.kb = bitcast float %i.jx to i32              ; 2 uses
  %i.kc = shl i32 %i.kb, 1                        ; 2 uses
  %i.kd = tail call i32 @llvm.umax.i32(i32 %i.kc, i32 1895825408)
  %spec.store.select.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = lshr exact i32 %i.kd, 1
  %i.ke = and i32 %spec.store.select.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 2139095040
  %i.kf = add nuw i32 %i.ke, 125829120
  %i.kg = bitcast i32 %i.kf to float
  %i.kh = fadd float %i.ka, %i.kg
  %i.ki = bitcast float %i.kh to i32              ; 2 uses
  %i.kj = lshr i32 %i.ki, 13
  %i.kk = and i32 %i.kj, 31744
  %i.kl = and i32 %i.ki, 4095
  %i.km = add nuw nsw i32 %i.kk, %i.kl
  %i.kn = lshr i32 %i.kb, 16
  %i.ko = and i32 %i.kn, 32768
  %i.kp = icmp ugt i32 %i.kc, -16777216
  %i.kq = select i1 %i.kp, i32 32256, i32 %i.km
  %i.kr = or i32 %i.kq, %i.ko
  %i.ks = trunc nuw i32 %i.kr to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.sink.i = phi i16 [ %i.ks, %bb.h ], [ 0, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ]
  %i.kt = getelementptr [2 x i8], ptr %i.il, i64 %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  store i16 %.sink.i, ptr %i.kt, align 2, !tbaa !41
  %i.ku = add nuw nsw i64 %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ku, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1057

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep310.i, i8 0, i64 range(i64 0, -1) %i.ct, i1 false), !tbaa !41
  br label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %bb.i, %middle.block114, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.kv = add nuw nsw i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond311.not.i = icmp eq i64 %i.kv, %i.n
  br i1 %exitcond311.not.i, label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1058

._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep313.i, i8 0, i64 %i.cs, i1 false), !tbaa !41
  br label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.kw = add nuw nsw i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond314.not.i = icmp eq i64 %i.kw, %i.p
  br i1 %exitcond314.not.i, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1059

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.kx = add nsw i64 %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.cg ; 2 uses
  %i.ky = icmp slt i64 %i.kx, %i.bj
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %i.ky, label %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1060

._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.kz = add nuw nsw i64 %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond315.not.i = icmp eq i64 %i.kz, %i.ah
  br i1 %exitcond315.not.i, label %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1061

._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.la = add nuw nsw i64 %.0186254.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond316.not.i = icmp eq i64 %i.la, %i.aj
  br i1 %exitcond316.not.i, label %._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i, label %.preheader207.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1062

._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i
  %i.lb = add nuw nsw i64 %.0187268.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %i.lb, %i.bl
  br i1 %exitcond317.not.i, label %._crit_edge.split280.us.split.us.split.us.us.us.us.i, label %.preheader208.us.us.us.us.us.us.i, !llvm.loop !1063

._crit_edge.split280.us.split.us.split.us.us.us.us.i: ; preds = %._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i
  %i.lc = add nuw nsw i64 %.0188282.us.us.us.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %i.lc, %i.bk
  br i1 %exitcond318.not.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader209.us.us.us.i, !llvm.loop !1064

bb.j:                                             ; preds = %bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !24 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !24 ; 10 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !30
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6862, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not.i5 = icmp eq ptr %i.le, null
  br i1 %.not.i5, label %.thread205.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !31
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !31
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !31
  br label %.thread205.i

.thread205.i:                                     ; preds = %bb.m, %bb.l
  %i.lp = phi i64 [ %i.lm, %bb.m ], [ 0, %bb.l ]  ; 12 uses
  %i.lq = phi i64 [ %i.lk, %bb.m ], [ 0, %bb.l ]  ; 23 uses
  %i.lr = phi i64 [ %i.lo, %bb.m ], [ 0, %bb.l ]  ; 10 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !31 ; 7 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !31
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !31
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !31
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !31
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !31 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !31 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 72
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !31 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !31 ; 7 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !31 ; 6 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !31
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !51
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !51
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !51
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !51
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !51
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !51
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !51 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !51
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !51
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !51 ; 2 uses
  %i.ni = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !36
  %i.nl = sext i32 %i.nh to i64                   ; 11 uses
  %i.nm = sdiv i64 %i.lz, %i.nl                   ; 3 uses
  %i.nn = sdiv i64 %i.mn, %i.nm                   ; 5 uses
  %i.no = mul i64 %i.lq, %i.lp                    ; 3 uses
  %i.np = mul i64 %i.no, %i.lr                    ; 4 uses
  %i.nq = icmp eq i64 %i.mb, 4
  br i1 %i.nq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread205.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6902, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.o:                                             ; preds = %.thread205.i
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !37 ; 4 uses
  %i.nt = icmp sgt i64 %i.nm, 0
  br i1 %i.nt, label %.preheader214.lr.ph.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader214.lr.ph.i:                            ; preds = %bb.o
  %i.nu = icmp slt i64 %i.nn, 1
  %i.nv = icmp slt i64 %i.ml, 1
  %i.nw = icmp slt i64 %i.mj, 1
  %i.nx = sext i32 %i.ni to i64                   ; 5 uses
  %i.ny = icmp sge i32 %i.ni, %i.nh
  %i.nz = sext i32 %i.mp to i64                   ; 2 uses
  %i.oa = sext i32 %i.nb to i64                   ; 5 uses
  %i.ob = sext i32 %i.mv to i64                   ; 2 uses
  %i.oc = sext i32 %i.mr to i64                   ; 2 uses
  %i.od = sext i32 %i.nd to i64                   ; 3 uses
  %i.oe = sext i32 %i.mx to i64                   ; 3 uses
  %i.of = sext i32 %i.mt to i64                   ; 2 uses
  %i.og = sext i32 %i.nf to i64                   ; 2 uses
  %i.oh = sext i32 %i.mz to i64                   ; 2 uses
  %i.oi = sext i32 %i.nk to i64                   ; 4 uses
  %brmerge.i7 = select i1 %i.nu, i1 true, i1 %i.nv
  %brmerge305.i = select i1 %brmerge.i7, i1 true, i1 %i.nw
  %brmerge307.i = select i1 %brmerge305.i, i1 true, i1 %i.ny
  br i1 %brmerge307.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader214.lr.ph.split.split.split.split.i

.preheader214.lr.ph.split.split.split.split.i:    ; preds = %.preheader214.lr.ph.i
  %i.oj = icmp slt i64 %i.lq, 1
  %i.ok = icmp slt i64 %i.lp, 1
  %i.ol = icmp slt i64 %i.lr, 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.lg, i64 248
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !37 ; 3 uses
  %brmerge344.i = select i1 %i.ol, i1 true, i1 %i.ok
  %brmerge346.i = select i1 %brmerge344.i, i1 true, i1 %i.oj
  br i1 %brmerge346.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader214.us.us.us.preheader.i

.preheader214.us.us.us.preheader.i:               ; preds = %.preheader214.lr.ph.split.split.split.split.i
  %i.oo = shl i64 %i.np, 2                        ; 2 uses
  %i.op = mul i64 %i.oo, %i.nx
  %i.oq = mul i64 %i.mj, %i.np                    ; 2 uses
  %i.or = mul i64 %i.oq, %i.ml
  %i.os = mul i64 %i.np, %i.nl                    ; 2 uses
  %i.ot = shl i64 %i.os, 2
  %i.ou = shl i64 %i.no, 2                        ; 2 uses
  %i.ov = shl i64 %i.lq, 2                        ; 2 uses
  %i.ow = shl i64 %i.or, 2
  %i.ox = mul i64 %i.ow, %i.nl                    ; 2 uses
  %i.oy = mul i64 %i.ox, %i.nn
  %i.oz = shl i64 %i.oq, 2
  %i.pa = mul i64 %i.oz, %i.nl
  %i.pb = mul i64 %i.oo, %i.oi
  %i.pc = getelementptr i8, ptr %i.ns, i64 %i.op
  %i.pd = mul i64 %i.lq, %i.lp
  %i.pe = mul i64 %i.pd, %i.lr
  %i.pf = mul i64 %i.pe, %i.nx
  %i.pg = shl i64 %i.pf, 2
  %i.ph = mul i64 %i.lq, %i.lp
  %i.pi = mul i64 %i.ph, %i.lr
  %i.pj = mul i64 %i.pi, %i.ml
  %i.pk = mul i64 %i.pj, %i.mj
  %i.pl = mul i64 %i.pk, %i.nn
  %i.pm = mul i64 %i.pl, %i.nl
  %i.pn = shl i64 %i.pm, 2
  %i.po = mul i64 %i.lq, %i.lp
  %i.pp = mul i64 %i.po, %i.lr
  %i.pq = mul i64 %i.pp, %i.ml
  %i.pr = mul i64 %i.pq, %i.mj
  %i.ps = mul i64 %i.pr, %i.nl
  %i.pt = shl i64 %i.ps, 2
  %i.pu = mul i64 %i.lq, %i.lp
end_hunk_2
begin_hunk_3_@ggml_compute_forward_ssm_conv:bb.a
  br i1 %i.aq, label %.preheader1.lr.ph.split.i, label %_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader1.lr.ph.split.i:                        ; preds = %.preheader1.lr.ph.i
  %i.as = icmp sgt i32 %i.ao, 0
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ba = sext i32 %i.al to i64                   ; 3 uses
  %i.bb = mul i64 %i.af, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !31
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !37
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.bi = mul i64 %i.bh, %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.bl = load i64, ptr %i.av, align 8, !tbaa !31
  %i.bm = mul i64 %i.bl, %i.ba
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.au, align 8, !tbaa !31 ; 10 uses
  %i.bp = load i64, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  br i1 %i.as, label %.preheader1.lr.ph.split.split.i, label %_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader1.lr.ph.split.split.i:                  ; preds = %.preheader1.lr.ph.split.i
  br i1 %i.ar, label %.preheader1.us.preheader.i, label %.preheader1.preheader.i

.preheader1.preheader.i:                          ; preds = %.preheader1.lr.ph.split.split.i
  %i.bq = zext nneg i32 %i.ao to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 9 uses
  %wide.trip.count22.i = and i64 %i.t, 2147483647
  %wide.trip.count.i = and i64 %i.q, 2147483647
  %i.bs = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %i.q, 7                     ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 7
  %unroll_iter = and i64 %i.q, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  br label %.preheader1.i

.preheader1.us.preheader.i:                       ; preds = %.preheader1.lr.ph.split.split.i
  %sext48.i = shl i64 %i.k, 32
  %i.bu = ashr exact i64 %sext48.i, 32
  %i.bv = and i64 %i.h, 2147483647                ; 2 uses
  %wide.trip.count42.i = and i64 %i.t, 2147483647
  %wide.trip.count37.i = and i64 %i.q, 2147483647
  %wide.trip.count32.i = zext nneg i32 %i.ao to i64
  %i.bw = add nsw i64 %i.bv, -1
  %xtraiter11 = and i64 %i.h, 7                   ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 7
  %unroll_iter16 = and i64 %i.h, 2147483640
  %lcmp.mod13.not = icmp eq i64 %xtraiter11, 0
  %lcmp.mod15 = icmp ne i64 %xtraiter11, 0
  br label %.preheader1.us.i

.preheader1.us.i:                                 ; preds = %._crit_edge.split10.us.us.i, %.preheader1.us.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %.preheader1.us.preheader.i ], [ %indvars.iv.next40.i, %._crit_edge.split10.us.us.i ] ; 3 uses
  %i.by = mul i64 %indvars.iv39.i, %i.bf
  %invariant.gep.us.i = getelementptr i8, ptr %i.be, i64 %i.by
  %i.bz = mul i64 %indvars.iv39.i, %i.bp
  %invariant.gep7.us.i = getelementptr i8, ptr %i.bn, i64 %i.bz
  br label %.preheader.lr.ph.us.us.i

.preheader.lr.ph.us.us.i:                         ; preds = %._crit_edge5.split.us.us.us.i, %.preheader1.us.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %._crit_edge5.split.us.us.us.i ], [ 0, %.preheader1.us.i ] ; 3 uses
  %i.ca = shl nuw nsw i64 %indvars.iv34.i, 2
  %gep.us.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.ca
  %i.cb = mul i64 %indvars.iv34.i, %i.bo
  %gep8.us.us.i = getelementptr i8, ptr %invariant.gep7.us.i, i64 %i.cb
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %._crit_edge.us.us.us.i, %.preheader.lr.ph.us.us.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %._crit_edge.us.us.us.i ], [ 0, %.preheader.lr.ph.us.us.i ] ; 4 uses
  %i.cc = mul nsw i64 %indvars.iv29.i, %i.bu
  %i.cd = mul nuw nsw i64 %indvars.iv29.i, %i.bv
  %invariant.gep.i = getelementptr [4 x i8], ptr %gep.us.us.i, i64 %i.cc ; 9 uses
  %invariant.gep50.i = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cd ; 9 uses
  br i1 %i.bx, label %.epil.preheader, label %.preheader.us.us.us.i.new

.preheader.us.us.us.i.new:                        ; preds = %.preheader.us.us.us.i, %.preheader.us.us.us.i.new
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.7, %.preheader.us.us.us.i.new ], [ 0, %.preheader.us.us.us.i ] ; 10 uses
  %.0682.us.us.us.i = phi float [ %i.db, %.preheader.us.us.us.i.new ], [ 0.000000e+00, %.preheader.us.us.us.i ]
  %niter17 = phi i64 [ %niter17.next.7, %.preheader.us.us.us.i.new ], [ 0, %.preheader.us.us.us.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv24.i
  %i.ce = load float, ptr %gep.i, align 4, !tbaa !43
  %gep51.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv24.i
  %i.cf = load float, ptr %gep51.i, align 4, !tbaa !43
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cf, float %.0682.us.us.us.i)
  %indvars.iv.next25.i = or disjoint i64 %indvars.iv24.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i
  %i.ch = load float, ptr %gep.i.1, align 4, !tbaa !43
  %gep51.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i
  %i.ci = load float, ptr %gep51.i.1, align 4, !tbaa !43
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ci, float %i.cg)
  %indvars.iv.next25.i.1 = or disjoint i64 %indvars.iv24.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i.1
  %i.ck = load float, ptr %gep.i.2, align 4, !tbaa !43
  %gep51.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i.1
  %i.cl = load float, ptr %gep51.i.2, align 4, !tbaa !43
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.cj)
  %indvars.iv.next25.i.2 = or disjoint i64 %indvars.iv24.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i.2
  %i.cn = load float, ptr %gep.i.3, align 4, !tbaa !43
  %gep51.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i.2
  %i.co = load float, ptr %gep51.i.3, align 4, !tbaa !43
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cm)
  %indvars.iv.next25.i.3 = or disjoint i64 %indvars.iv24.i, 4 ; 2 uses
  %gep.i.4 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i.3
  %i.cq = load float, ptr %gep.i.4, align 4, !tbaa !43
  %gep51.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i.3
  %i.cr = load float, ptr %gep51.i.4, align 4, !tbaa !43
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cr, float %i.cp)
  %indvars.iv.next25.i.4 = or disjoint i64 %indvars.iv24.i, 5 ; 2 uses
  %gep.i.5 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i.4
  %i.ct = load float, ptr %gep.i.5, align 4, !tbaa !43
  %gep51.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i.4
  %i.cu = load float, ptr %gep51.i.5, align 4, !tbaa !43
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.cs)
  %indvars.iv.next25.i.5 = or disjoint i64 %indvars.iv24.i, 6 ; 2 uses
  %gep.i.6 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i.5
  %i.cw = load float, ptr %gep.i.6, align 4, !tbaa !43
  %gep51.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i.5
  %i.cx = load float, ptr %gep51.i.6, align 4, !tbaa !43
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cx, float %i.cv)
  %indvars.iv.next25.i.6 = or disjoint i64 %indvars.iv24.i, 7 ; 2 uses
  %gep.i.7 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next25.i.6
  %i.cz = load float, ptr %gep.i.7, align 4, !tbaa !43
  %gep51.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next25.i.6
  %i.da = load float, ptr %gep51.i.7, align 4, !tbaa !43
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.da, float %i.cy) ; 3 uses
  %indvars.iv.next25.i.7 = add nuw nsw i64 %indvars.iv24.i, 8 ; 2 uses
  %niter17.next.7 = add i64 %niter17, 8           ; 2 uses
  %niter17.ncmp.7 = icmp eq i64 %niter17.next.7, %unroll_iter16
  br i1 %niter17.ncmp.7, label %._crit_edge.us.us.us.i.unr-lcssa, label %.preheader.us.us.us.i.new, !llvm.loop !1621

._crit_edge.us.us.us.i.unr-lcssa:                 ; preds = %.preheader.us.us.us.i.new
  br i1 %lcmp.mod13.not, label %._crit_edge.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.i.unr-lcssa, %.preheader.us.us.us.i
  %indvars.iv24.i.epil.init = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next25.i.7, %._crit_edge.us.us.us.i.unr-lcssa ]
  %.0682.us.us.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.us.us.i ], [ %i.db, %._crit_edge.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv24.i.epil = phi i64 [ %indvars.iv.next25.i.epil, %bb.k ], [ %indvars.iv24.i.epil.init, %.epil.preheader ] ; 3 uses
  %.0682.us.us.us.i.epil = phi float [ %i.de, %bb.k ], [ %.0682.us.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter12 = phi i64 [ %epil.iter12.next, %bb.k ], [ 0, %.epil.preheader ]
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv24.i.epil
  %i.dc = load float, ptr %gep.i.epil, align 4, !tbaa !43
  %gep51.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv24.i.epil
  %i.dd = load float, ptr %gep51.i.epil, align 4, !tbaa !43
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dd, float %.0682.us.us.us.i.epil) ; 2 uses
  %indvars.iv.next25.i.epil = add nuw nsw i64 %indvars.iv24.i.epil, 1
  %epil.iter12.next = add i64 %epil.iter12, 1     ; 2 uses
  %epil.iter12.cmp.not = icmp eq i64 %epil.iter12.next, %xtraiter11
  br i1 %epil.iter12.cmp.not, label %._crit_edge.us.us.us.i, label %bb.k, !llvm.loop !1622

._crit_edge.us.us.us.i:                           ; preds = %bb.k, %._crit_edge.us.us.us.i.unr-lcssa
  %.lcssa = phi float [ %i.db, %._crit_edge.us.us.us.i.unr-lcssa ], [ %i.de, %bb.k ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %gep8.us.us.i, i64 %indvars.iv29.i
  store float %.lcssa, ptr %i.df, align 4, !tbaa !43
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %._crit_edge5.split.us.us.us.i, label %.preheader.us.us.us.i, !llvm.loop !1623

._crit_edge5.split.us.us.us.i:                    ; preds = %._crit_edge.us.us.us.i
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %._crit_edge.split10.us.us.i, label %.preheader.lr.ph.us.us.i, !llvm.loop !1624

._crit_edge.split10.us.us.i:                      ; preds = %._crit_edge5.split.us.us.us.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader1.us.i, !llvm.loop !1625

.preheader1.i:                                    ; preds = %._crit_edge.split10.i, %.preheader1.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %.preheader1.preheader.i ], [ %indvars.iv.next20.i, %._crit_edge.split10.i ] ; 2 uses
  %i.dg = mul i64 %indvars.iv19.i, %i.bp
  %invariant.gep7.i = getelementptr i8, ptr %i.bn, i64 %i.dg ; 9 uses
  br i1 %i.bt, label %.preheader.lr.ph.i.epil.preheader, label %.preheader.lr.ph.i

._crit_edge.split10.i.unr-lcssa:                  ; preds = %.preheader.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.split10.i, label %.preheader.lr.ph.i.epil.preheader

.preheader.lr.ph.i.epil.preheader:                ; preds = %._crit_edge.split10.i.unr-lcssa, %.preheader1.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader1.i ], [ %indvars.iv.next.i.7, %._crit_edge.split10.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.preheader.lr.ph.i.epil

.preheader.lr.ph.i.epil:                          ; preds = %.preheader.lr.ph.i.epil, %.preheader.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.i.epil ]
  %i.dh = mul i64 %indvars.iv.i.epil, %i.bo
  %gep8.i.epil = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dh
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.epil, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split10.i, label %.preheader.lr.ph.i.epil, !llvm.loop !1626

._crit_edge.split10.i:                            ; preds = %.preheader.lr.ph.i.epil, %._crit_edge.split10.i.unr-lcssa
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader1.i, !llvm.loop !1625

.preheader.lr.ph.i:                               ; preds = %.preheader1.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.preheader.lr.ph.i ], [ 0, %.preheader1.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.lr.ph.i ], [ 0, %.preheader1.i ]
  %i.di = mul i64 %indvars.iv.i, %i.bo
  %gep8.i = getelementptr i8, ptr %invariant.gep7.i, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.dj = mul i64 %indvars.iv.next.i, %i.bo
  %gep8.i.1 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dj
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.1, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.dk = mul i64 %indvars.iv.next.i.1, %i.bo
  %gep8.i.2 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.2, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.dl = mul i64 %indvars.iv.next.i.2, %i.bo
  %gep8.i.3 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dl
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.3, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4
  %i.dm = mul i64 %indvars.iv.next.i.3, %i.bo
  %gep8.i.4 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dm
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.4, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.dn = mul i64 %indvars.iv.next.i.4, %i.bo
  %gep8.i.5 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dn
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.5, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.do = mul i64 %indvars.iv.next.i.5, %i.bo
  %gep8.i.6 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.do
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.6, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.dp = mul i64 %indvars.iv.next.i.6, %i.bo
  %gep8.i.7 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dp
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.7, i8 0, i64 range(i64 0, 8589934589) %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split10.i.unr-lcssa, label %.preheader.lr.ph.i, !llvm.loop !1624

_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split10.i, %._crit_edge.split10.us.us.i, %bb.j, %.preheader1.lr.ph.i, %.preheader1.lr.ph.split.i
  ret void

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9766, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_ssm_scan(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 8, !tbaa !35
  %i.d = getelementptr i8, ptr %0, i64 4
  %.val3 = load i32, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31   ; 28 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !51 ; 3 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = tail call i64 @ggml_nelements(ptr noundef %i.f)
  %i.ag = tail call i64 @ggml_element_size(ptr noundef %i.f)
  %i.ah = mul i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = icmp sgt i32 %i.ad, 0
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9798, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.162) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aj = tail call i64 @ggml_nelements(ptr noundef nonnull %i.f)
  %i.ak = mul i64 %i.v, %i.t                      ; 2 uses
  %i.al = mul i64 %i.ak, %i.r
  %i.am = mul i64 %i.al, %i.ab
  %i.an = mul i64 %i.am, %i.ae
  %i.ao = add nsw i64 %i.aj, %i.an
  %i.ap = tail call i64 @ggml_nelements(ptr noundef nonnull %1)
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9799, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.163) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9800, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !31
  %i.aw = icmp eq i64 %i.av, 4
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9801, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.az = icmp eq i64 %i.ay, 4
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9802, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.164) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bc = icmp eq i64 %i.bb, 4
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9803, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.165) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9804, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.166) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bi = icmp eq i64 %i.bh, 4
  br i1 %i.bi, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9805, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.167) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9806, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.168) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = srem i64 %i.v, %i.x
  %i.bn = sdiv i64 %i.v, %i.x
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9807, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.169) #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = icmp eq i64 %i.bq, 1
  %i.bs = icmp eq i32 %i.ad, 1                    ; 2 uses
  %or.cond.i = or i1 %i.bs, %i.br
  br i1 %or.cond.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9808, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.170) #17
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bt = sext i32 %.val3 to i64                  ; 2 uses
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = add i64 %i.bu, %i.v
  %i.bw = sdiv i64 %i.bv, %i.bt
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = mul i32 %.val, %i.bx                    ; 3 uses
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call i64 @llvm.smin.i64(i64 %i.v, i64 %i.ca) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37
  %i.ce = icmp sgt i64 %i.ab, 0
  br i1 %i.ce, label %.lr.ph53.i, label %_ZL33ggml_compute_forward_ssm_scan_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph53.i:                                       ; preds = %bb.x
  %i.cf = trunc i64 %i.cb to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %factor.op.mul.reass.i = shl i64 %i.ak, 2
  %i.cj = icmp sgt i64 %i.z, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 248
end_hunk_3
