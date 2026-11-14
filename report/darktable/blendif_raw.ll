Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_raw?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
begin_hunk_0_@_blend_subtract:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi i64 [ %i.bi, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.014
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !34
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, -1.000000e+00
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.ax
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.az
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float 0.000000e+00)
  %i.bg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bf, float 1.000000e+00)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.014
  store float %i.bg, ptr %i.bh, align 4, !tbaa !34
  %i.bi = add nuw i64 %.014, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_difference(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %4, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %4, 28
  %n.vec = and i64 %4, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %wide.load = load <8 x float>, ptr %i.b, align 4, !tbaa !34
  %wide.load16 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %wide.load17 = load <8 x float>, ptr %i.d, align 4, !tbaa !34
  %wide.load18 = load <8 x float>, ptr %i.e, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %wide.load19 = load <8 x float>, ptr %i.f, align 4, !tbaa !34 ; 3 uses
  %wide.load20 = load <8 x float>, ptr %i.g, align 4, !tbaa !34 ; 3 uses
  %wide.load21 = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %wide.load22 = load <8 x float>, ptr %i.i, align 4, !tbaa !34 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %wide.load23 = load <8 x float>, ptr %i.j, align 4, !tbaa !34
  %wide.load24 = load <8 x float>, ptr %i.k, align 4, !tbaa !34
  %wide.load25 = load <8 x float>, ptr %i.l, align 4, !tbaa !34
  %wide.load26 = load <8 x float>, ptr %i.m, align 4, !tbaa !34
  %i.n = fsub reassoc nsz arcp contract afn <8 x float> %wide.load19, %wide.load23
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> %wide.load20, %wide.load24
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %wide.load21, %wide.load25
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> %wide.load22, %wide.load26
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.n)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.o)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.p)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.q)
  %i.v = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %wide.load19
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load20
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %i.t, %wide.load21
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %i.u, %wide.load22
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %wide.load
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.w, %wide.load16
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %wide.load17
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.y, %wide.load18
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.z, %wide.load19
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.aa, %wide.load20
  %i.af = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %wide.load21
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %wide.load22
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ad, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> zeroinitializer)
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.af, <8 x float> zeroinitializer)
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ag, <8 x float> zeroinitializer)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> splat (float 1.000000e+00))
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> splat (float 1.000000e+00))
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aj, <8 x float> splat (float 1.000000e+00))
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> splat (float 1.000000e+00))
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <8 x float> %i.al, ptr %i.ap, align 4, !tbaa !34
  store <8 x float> %i.am, ptr %i.aq, align 4, !tbaa !34
  store <8 x float> %i.an, ptr %i.ar, align 4, !tbaa !34
  store <8 x float> %i.ao, ptr %i.as, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %4, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index28
  %wide.load29 = load <4 x float>, ptr %i.au, align 4, !tbaa !34
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index28
  %wide.load30 = load <4 x float>, ptr %i.av, align 4, !tbaa !34 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index28
  %wide.load31 = load <4 x float>, ptr %i.aw, align 4, !tbaa !34
  %i.ax = fsub reassoc nsz arcp contract afn <4 x float> %wide.load30, %wide.load31
  %i.ay = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ax)
  %i.az = fsub reassoc nsz arcp contract afn <4 x float> %i.ay, %wide.load30
  %i.ba = fmul reassoc nsz arcp contract afn <4 x float> %i.az, %wide.load29
  %i.bb = fadd reassoc nsz arcp contract afn <4 x float> %i.ba, %wide.load30
  %i.bc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bb, <4 x float> zeroinitializer)
  %i.bd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bc, <4 x float> splat (float 1.000000e+00))
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index28
  store <4 x float> %i.bd, ptr %i.be, align 4, !tbaa !34
  %index.next32 = add nuw i64 %index28, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %4, %n.vec27
  br i1 %cmp.n33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi i64 [ %i.bu, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.014
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !34
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !34 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !34
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bj, %i.bl
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bm)
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bn, %i.bj
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bh
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bj
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bq, float 0.000000e+00)
  %i.bs = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.br, float 1.000000e+00)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.014
  store float %i.bs, ptr %i.bt, align 4, !tbaa !34
  %i.bu = add nuw i64 %.014, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_screen(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load18 = load <8 x float>, ptr %i.b, align 4, !tbaa !34
  %i.c = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load18, <8 x float> zeroinitializer)
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.c, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load19 = load <8 x float>, ptr %i.e, align 4, !tbaa !34
  %i.f = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load19, <8 x float> zeroinitializer)
  %i.g = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.f, <8 x float> splat (float 1.000000e+00))
  %i.h = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.g
  %i.i = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.d, splat (float -1.000000e+00)
  %i.j = fmul reassoc nsz arcp contract afn <8 x float> %i.h, %i.i
  %i.k = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.d
  %i.l = fadd reassoc nsz arcp contract afn <8 x float> %i.k, %i.j
  %i.m = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %wide.load
  %i.n = fadd reassoc nsz arcp contract afn <8 x float> %i.m, %i.d
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.n, <8 x float> zeroinitializer)
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.o, <8 x float> splat (float 1.000000e+00))
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.p, ptr %i.q, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.017 = phi i64 [ %i.ak, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader20 ] ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.017
  %i.t = load float, ptr %i.s, align 4, !tbaa !34
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017
  %i.v = load float, ptr %i.u, align 4, !tbaa !34
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.v, float 0.000000e+00)
  %i.x = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.w, float 1.000000e+00) ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.017
  %i.z = load float, ptr %i.y, align 4, !tbaa !34
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.z, float 0.000000e+00)
  %i.ab = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.aa, float 1.000000e+00)
  %i.ac = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.ad = fadd reassoc nnan nsz arcp contract afn float %i.x, -1.000000e+00
  %.neg15 = fmul reassoc nsz arcp contract afn float %i.ac, %i.ad
  %.neg16 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.x
  %i.ae = fadd reassoc nsz arcp contract afn float %.neg16, %.neg15
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.t
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.x
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ag, float 0.000000e+00)
  %i.ai = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ah, float 1.000000e+00)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.017
  store float %i.ai, ptr %i.aj, align 4, !tbaa !34
  %i.ak = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_overlay(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load24 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load24, <8 x float> zeroinitializer)
  %i.e = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.d, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load25 = load <8 x float>, ptr %i.f, align 4, !tbaa !34
  %i.g = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load25, <8 x float> zeroinitializer)
  %i.h = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.g, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.e, splat (float 5.000000e-01)
  %i.j = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.e, splat (float 2.000000e+00) ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %i.j, %i.h
  %i.l = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.j
  %i.m = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.h
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.m
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.n
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.i, <8 x float> %i.o, <8 x float> %i.k
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.e
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.p
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, %i.e
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.r, <8 x float> zeroinitializer)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.s, <8 x float> splat (float 1.000000e+00))
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.t, ptr %i.u, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %bb.d
  %.021 = phi i64 [ %i.av, %bb.d ], [ %.021.ph, %.lr.ph.preheader26 ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.x = load float, ptr %i.w, align 4, !tbaa !34 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.021
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float 0.000000e+00)
  %i.ac = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ab, float 1.000000e+00) ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.021
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !34
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ae, float 0.000000e+00)
  %i.ag = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.af, float 1.000000e+00) ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ac, 5.000000e-01
  %i.ai = fmul reassoc nnan nsz arcp contract afn float %i.ac, 2.000000e+00 ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aj = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.ai
  %i.ak = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ag
  %i.al = fmul reassoc nsz arcp contract afn float %i.aj, %i.ak
  %i.am = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.an = fmul reassoc nsz arcp contract afn float %i.ai, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.am, %bb.b ], [ %i.an, %bb.c ]
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ao, %i.ac
  %i.aq = fmul reassoc nsz arcp contract afn float %i.y, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ac
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ar, float 0.000000e+00)
  %i.at = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.as, float 1.000000e+00)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.021
  store float %i.at, ptr %i.au, align 4, !tbaa !34
  %i.av = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_softlight(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load24 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load24, <8 x float> zeroinitializer)
  %i.e = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.d, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load25 = load <8 x float>, ptr %i.f, align 4, !tbaa !34
  %i.g = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load25, <8 x float> zeroinitializer)
  %i.h = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.g, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.h, splat (float 5.000000e-01)
  %i.j = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.h, splat (float 5.000000e-01)
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %i.j, %i.e
  %i.l = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.e
  %i.m = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.500000e+00), %i.h
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.l
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.n
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.i, <8 x float> %i.o, <8 x float> %i.k
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.e
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.p
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, %i.e
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.r, <8 x float> zeroinitializer)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.s, <8 x float> splat (float 1.000000e+00))
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.t, ptr %i.u, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %bb.d
  %.021 = phi i64 [ %i.av, %bb.d ], [ %.021.ph, %.lr.ph.preheader26 ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.x = load float, ptr %i.w, align 4, !tbaa !34 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.021
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float 0.000000e+00)
  %i.ac = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ab, float 1.000000e+00) ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.021
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !34
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ae, float 0.000000e+00)
  %i.ag = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.af, float 1.000000e+00) ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 5.000000e-01
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ai = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ac
  %i.aj = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.ag
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ak
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.am = fadd reassoc nnan nsz arcp contract afn float %i.ag, 5.000000e-01
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.al, %bb.b ], [ %i.an, %bb.c ]
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ao, %i.ac
  %i.aq = fmul reassoc nsz arcp contract afn float %i.y, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ac
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ar, float 0.000000e+00)
  %i.at = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.as, float 1.000000e+00)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.021
  store float %i.at, ptr %i.au, align 4, !tbaa !34
  %i.av = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_hardlight(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load24 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load24, <8 x float> zeroinitializer)
  %i.e = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.d, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load25 = load <8 x float>, ptr %i.f, align 4, !tbaa !34
  %i.g = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load25, <8 x float> zeroinitializer)
  %i.h = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.g, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.h, splat (float 5.000000e-01)
  %i.j = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.e, splat (float 2.000000e+00) ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %i.j, %i.h
  %i.l = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.j
  %i.m = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.h
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.m
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.n
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.i, <8 x float> %i.o, <8 x float> %i.k
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.e
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.p
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, %i.e
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.r, <8 x float> zeroinitializer)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.s, <8 x float> splat (float 1.000000e+00))
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.t, ptr %i.u, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %bb.d
  %.021 = phi i64 [ %i.av, %bb.d ], [ %.021.ph, %.lr.ph.preheader26 ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.x = load float, ptr %i.w, align 4, !tbaa !34 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.021
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float 0.000000e+00)
  %i.ac = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ab, float 1.000000e+00) ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.021
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !34
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ae, float 0.000000e+00)
  %i.ag = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.af, float 1.000000e+00) ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 5.000000e-01
  %i.ai = fmul reassoc nnan nsz arcp contract afn float %i.ac, 2.000000e+00 ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aj = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.ai
  %i.ak = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ag
  %i.al = fmul reassoc nsz arcp contract afn float %i.aj, %i.ak
  %i.am = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.an = fmul reassoc nsz arcp contract afn float %i.ai, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.am, %bb.b ], [ %i.an, %bb.c ]
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ao, %i.ac
  %i.aq = fmul reassoc nsz arcp contract afn float %i.y, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ac
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ar, float 0.000000e+00)
  %i.at = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.as, float 1.000000e+00)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.021
  store float %i.at, ptr %i.au, align 4, !tbaa !34
  %i.av = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_vividlight(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load26 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load26, <8 x float> zeroinitializer)
  %i.e = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.d, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load27 = load <8 x float>, ptr %i.f, align 4, !tbaa !34
  %i.g = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load27, <8 x float> zeroinitializer)
  %i.h = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.g, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.h, splat (float 5.000000e-01)
  %i.j = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.h, zeroinitializer
  %i.k = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.e
  %i.l = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.h, splat (float 2.000000e+00) ; 2 uses
  %i.m = fdiv reassoc nsz arcp contract afn <8 x float> %i.k, %i.l
  %i.n = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.m
  %i.o = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.h, splat (float 1.000000e+00)
  %i.p = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.l
  %i.q = fdiv reassoc nsz arcp contract afn <8 x float> %i.e, %i.p
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.j, <8 x float> zeroinitializer, <8 x float> %i.n
  %predphi28 = select reassoc nsz arcp contract afn <8 x i1> %i.i, <8 x float> %i.q, <8 x float> %predphi
  %predphi29 = select reassoc nsz arcp contract afn <8 x i1> %i.o, <8 x float> %predphi28, <8 x float> splat (float 1.000000e+00)
  %i.r = fsub reassoc nsz arcp contract afn <8 x float> %predphi29, %i.e
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.r
  %i.t = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %i.e
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.t, <8 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.u, <8 x float> splat (float 1.000000e+00))
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.v, ptr %i.w, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.023.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %bb.f
  %.023 = phi i64 [ %i.ba, %bb.f ], [ %.023.ph, %.lr.ph.preheader30 ] ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.023
  %i.z = load float, ptr %i.y, align 4, !tbaa !34 ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.023
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !34
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00)
  %i.ae = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ad, float 1.000000e+00) ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.023
  %i.ag = load float, ptr %i.af, align 4, !tbaa !34
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ag, float 0.000000e+00)
  %i.ai = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ah, float 1.000000e+00) ; 5 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 5.000000e-01
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.ak = fcmp reassoc nsz arcp contract afn ult float %i.ai, 1.000000e+00
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = fmul reassoc nnan nsz arcp contract afn float %i.ai, 2.000000e+00
  %i.am = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.al
  %i.an = fdiv reassoc nsz arcp contract afn float %i.ae, %i.am
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ao = fcmp reassoc nsz arcp contract afn ugt float %i.ai, 0.000000e+00
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ae
  %i.aq = fmul reassoc nnan nsz arcp contract afn float %i.ai, 2.000000e+00
  %i.ar = fdiv reassoc nsz arcp contract afn float %i.ap, %i.aq
  %i.as = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.at = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %i.an, %bb.c ], [ %i.as, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.au = fsub reassoc nsz arcp contract afn float %i.at, %i.ae
  %i.av = fmul reassoc nsz arcp contract afn float %i.aa, %i.au
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.ae
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aw, float 0.000000e+00)
  %i.ay = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ax, float 1.000000e+00)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.023
  store float %i.ay, ptr %i.az, align 4, !tbaa !34
  %i.ba = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_linearlight(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load18 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load18, <8 x float> zeroinitializer)
  %i.e = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.d, <8 x float> splat (float 1.000000e+00))
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load19 = load <8 x float>, ptr %i.f, align 4, !tbaa !34
  %i.g = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load19, <8 x float> zeroinitializer)
  %i.h = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.g, <8 x float> splat (float 1.000000e+00))
  %i.i = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.h, splat (float 2.000000e+00)
  %i.j = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.i, splat (float -1.000000e+00)
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.j
  %i.l = fadd reassoc nsz arcp contract afn <8 x float> %i.k, %i.e
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.l, <8 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.m, <8 x float> splat (float 1.000000e+00))
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.n, ptr %i.o, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.017 = phi i64 [ %i.ai, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader20 ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.017
  %i.r = load float, ptr %i.q, align 4, !tbaa !34 ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017
  %i.u = load float, ptr %i.t, align 4, !tbaa !34
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.u, float 0.000000e+00)
  %i.w = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.v, float 1.000000e+00)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.017
  %i.y = load float, ptr %i.x, align 4, !tbaa !34
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.y, float 0.000000e+00)
  %i.aa = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.z, float 1.000000e+00)
  %i.ab = fmul reassoc nnan nsz arcp contract afn float %i.aa, 2.000000e+00
  %i.ac = fadd reassoc nnan nsz arcp contract afn float %i.ab, -1.000000e+00
  %i.ad = fmul reassoc nsz arcp contract afn float %i.s, %i.ac
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, %i.w
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ae, float 0.000000e+00)
  %i.ag = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.af, float 1.000000e+00)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.017
  store float %i.ag, ptr %i.ah, align 4, !tbaa !34
  %i.ai = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !78
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_pinlight(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load24 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load24, <8 x float> zeroinitializer)
  %i.e = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.d, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load25 = load <8 x float>, ptr %i.f, align 4, !tbaa !34
  %i.g = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load25, <8 x float> zeroinitializer)
  %i.h = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.g, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.h, splat (float 5.000000e-01)
  %i.j = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.h, splat (float 2.000000e+00) ; 2 uses
  %5 = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.j, splat (float -1.000000e+00)
  %6 = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.e, <8 x float> %5)
  %i.k = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.e, <8 x float> %i.j)
  %i.l = select reassoc nsz arcp contract afn <8 x i1> %i.i, <8 x float> %6, <8 x float> %i.k
  %i.m = fsub reassoc nnan nsz arcp contract afn <8 x float> %i.l, %i.e
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.m
  %i.o = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %i.e
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.o, <8 x float> zeroinitializer)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.p, <8 x float> splat (float 1.000000e+00))
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.q, ptr %i.r, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %.021 = phi i64 [ %17, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader26 ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.u = load float, ptr %i.t, align 4, !tbaa !34 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.021
  %i.x = load float, ptr %i.w, align 4, !tbaa !34
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.x, float 0.000000e+00)
  %i.z = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.y, float 1.000000e+00) ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.021
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ab, float 0.000000e+00)
  %i.ad = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ac, float 1.000000e+00) ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %i.ad, 5.000000e-01
  %7 = fmul reassoc nnan nsz arcp contract afn float %i.ad, 2.000000e+00 ; 2 uses
  %8 = fadd reassoc nnan nsz arcp contract afn float %7, -1.000000e+00
  %9 = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.z, float %8)
  %10 = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.z, float %7)
  %11 = select reassoc nsz arcp contract afn i1 %i.ae, float %9, float %10
  %12 = fsub reassoc nnan nsz arcp contract afn float %11, %i.z
  %i.af = fmul reassoc nsz arcp contract afn float %i.v, %12
  %13 = fadd reassoc nsz arcp contract afn float %i.af, %i.z
  %14 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %13, float 0.000000e+00)
  %15 = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %14, float 1.000000e+00)
  %16 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.021
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = add nuw i64 %.021, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %17, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_bounded(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %4, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %4, 28
  %n.vec = and i64 %4, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %wide.load = load <8 x float>, ptr %i.b, align 4, !tbaa !34
  %wide.load14 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %wide.load15 = load <8 x float>, ptr %i.d, align 4, !tbaa !34
  %wide.load16 = load <8 x float>, ptr %i.e, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %wide.load17 = load <8 x float>, ptr %i.f, align 4, !tbaa !34 ; 2 uses
  %wide.load18 = load <8 x float>, ptr %i.g, align 4, !tbaa !34 ; 2 uses
  %wide.load19 = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 2 uses
  %wide.load20 = load <8 x float>, ptr %i.i, align 4, !tbaa !34 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %wide.load21 = load <8 x float>, ptr %i.j, align 4, !tbaa !34
  %wide.load22 = load <8 x float>, ptr %i.k, align 4, !tbaa !34
  %wide.load23 = load <8 x float>, ptr %i.l, align 4, !tbaa !34
  %wide.load24 = load <8 x float>, ptr %i.m, align 4, !tbaa !34
  %i.n = fsub reassoc nsz arcp contract afn <8 x float> %wide.load21, %wide.load17
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> %wide.load22, %wide.load18
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %wide.load23, %wide.load19
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> %wide.load24, %wide.load20
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.n, %wide.load
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %wide.load14
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.p, %wide.load15
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %i.q, %wide.load16
  %i.v = fadd reassoc nsz arcp contract afn <8 x float> %i.r, %wide.load17
  %i.w = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load18
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %wide.load19
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %i.u, %wide.load20
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.v, <8 x float> zeroinitializer)
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.w, <8 x float> zeroinitializer)
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.x, <8 x float> zeroinitializer)
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.y, <8 x float> zeroinitializer)
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.z, <8 x float> splat (float 1.000000e+00))
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aa, <8 x float> splat (float 1.000000e+00))
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ab, <8 x float> splat (float 1.000000e+00))
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ac, <8 x float> splat (float 1.000000e+00))
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store <8 x float> %i.ad, ptr %i.ah, align 4, !tbaa !34
  store <8 x float> %i.ae, ptr %i.ai, align 4, !tbaa !34
  store <8 x float> %i.af, ptr %i.aj, align 4, !tbaa !34
  store <8 x float> %i.ag, ptr %i.ak, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %4, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index26
  %wide.load27 = load <4 x float>, ptr %i.am, align 4, !tbaa !34
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index26
  %wide.load28 = load <4 x float>, ptr %i.an, align 4, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index26
  %wide.load29 = load <4 x float>, ptr %i.ao, align 4, !tbaa !34
  %i.ap = fsub reassoc nsz arcp contract afn <4 x float> %wide.load29, %wide.load28
  %i.aq = fmul reassoc nsz arcp contract afn <4 x float> %i.ap, %wide.load27
  %i.ar = fadd reassoc nsz arcp contract afn <4 x float> %i.aq, %wide.load28
  %i.as = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ar, <4 x float> zeroinitializer)
  %i.at = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.as, <4 x float> splat (float 1.000000e+00))
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index26
  store <4 x float> %i.at, ptr %i.au, align 4, !tbaa !34
  %index.next30 = add nuw i64 %index26, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %4, %n.vec25
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.bi, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.012
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !34
  %i.bc = fsub reassoc nsz arcp contract afn float %i.bb, %i.az
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.ax
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.az
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float 0.000000e+00)
  %i.bg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bf, float 1.000000e+00)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012
  store float %i.bg, ptr %i.bh, align 4, !tbaa !34
  %i.bi = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_unbounded(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %4, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %4, 28
  %n.vec = and i64 %4, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %wide.load = load <8 x float>, ptr %i.b, align 4, !tbaa !34
  %wide.load14 = load <8 x float>, ptr %i.c, align 4, !tbaa !34
  %wide.load15 = load <8 x float>, ptr %i.d, align 4, !tbaa !34
  %wide.load16 = load <8 x float>, ptr %i.e, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %wide.load17 = load <8 x float>, ptr %i.f, align 4, !tbaa !34 ; 2 uses
  %wide.load18 = load <8 x float>, ptr %i.g, align 4, !tbaa !34 ; 2 uses
  %wide.load19 = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 2 uses
  %wide.load20 = load <8 x float>, ptr %i.i, align 4, !tbaa !34 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %wide.load21 = load <8 x float>, ptr %i.j, align 4, !tbaa !34
  %wide.load22 = load <8 x float>, ptr %i.k, align 4, !tbaa !34
  %wide.load23 = load <8 x float>, ptr %i.l, align 4, !tbaa !34
  %wide.load24 = load <8 x float>, ptr %i.m, align 4, !tbaa !34
  %i.n = fsub reassoc nsz arcp contract afn <8 x float> %wide.load21, %wide.load17
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> %wide.load22, %wide.load18
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %wide.load23, %wide.load19
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> %wide.load24, %wide.load20
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.n, %wide.load
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %wide.load14
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.p, %wide.load15
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %i.q, %wide.load16
  %i.v = fadd reassoc nsz arcp contract afn <8 x float> %i.r, %wide.load17
  %i.w = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load18
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %wide.load19
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %i.u, %wide.load20
end_hunk_0
