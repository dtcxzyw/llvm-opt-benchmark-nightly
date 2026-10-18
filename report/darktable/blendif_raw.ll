Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_raw?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
begin_hunk_0_@_blend_softlight:bb.a
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
  %i.o = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.h, splat (float 1.000000e+00) ; 2 uses
  %5 = and <8 x i1> %i.i, %i.o
  %i.p = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.l
  %i.q = fdiv reassoc nsz arcp contract afn <8 x float> %i.e, %i.p
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.j, <8 x float> zeroinitializer, <8 x float> %i.n
  %predphi28 = select reassoc nsz arcp contract afn <8 x i1> %5, <8 x float> %i.q, <8 x float> %predphi
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
  %i.k = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.j, splat (float -1.000000e+00)
  %i.l = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.e, <8 x float> %i.k)
  %i.m = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.e, <8 x float> %i.j)
  %i.n = select reassoc nsz arcp contract afn <8 x i1> %i.i, <8 x float> %i.l, <8 x float> %i.m
  %i.o = fsub reassoc nnan nsz arcp contract afn <8 x float> %i.n, %i.e
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %i.b, %i.o
  %i.q = fadd reassoc nsz arcp contract afn <8 x float> %i.p, %i.e
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.q, <8 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.r, <8 x float> splat (float 1.000000e+00))
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <8 x float> %i.s, ptr %i.t, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
end_hunk_0
