Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/float_dsp?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@vector_fmul_window_c:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 4 uses
  %i.ab = sub nsw i64 %i.a, %n.vec
  %i.ac = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = add i64 %index, %i.g                    ; 3 uses
  %i.ae = xor i64 %index, -1
  %i.af = add i64 %i.ae, %i.a                     ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  %wide.load = load <4 x float>, ptr %i.ag, align 4, !tbaa !14, !alias.scope !56 ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -12
  %wide.load100 = load <4 x float>, ptr %i.ai, align 4, !tbaa !14, !alias.scope !57
  %reverse = shufflevector <4 x float> %wide.load100, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ad
  %wide.load101 = load <4 x float>, ptr %i.aj, align 4, !tbaa !14, !alias.scope !58 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.af
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -12
  %wide.load102 = load <4 x float>, ptr %i.al, align 4, !tbaa !14, !alias.scope !59
  %reverse103 = shufflevector <4 x float> %wide.load102, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.am = fneg nsz <4 x float> %wide.load101
  %i.an = fmul nsz <4 x float> %reverse, %i.am
  %i.ao = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %reverse103, <4 x float> %i.an)
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ad
  store <4 x float> %i.ao, ptr %i.ap, align 4, !tbaa !14, !alias.scope !60, !noalias !61
  %i.aq = fmul nsz <4 x float> %reverse, %reverse103
  %i.ar = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load101, <4 x float> %i.aq)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.af
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -12
  %reverse104 = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse104, ptr %i.at, align 4, !tbaa !14, !alias.scope !62, !noalias !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader106

.lr.ph.preheader106:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv33.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader106, %.lr.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph ], [ %indvars.iv33.ph, %.lr.ph.preheader106 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader106 ] ; 4 uses
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1 ; 4 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14
  %i.ax = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next34
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !14
  %i.az = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !14 ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next34
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !14 ; 2 uses
  %i.bd = fneg nsz float %i.ba
  %i.be = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bf = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bc, i64 1
  %i.bj = fmul nsz <2 x float> %i.bg, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.ba, i64 1
  %i.bo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.bj) ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  store float %i.bp, ptr %i.be, align 4, !tbaa !14
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next34
  %i.br = extractelement <2 x float> %i.bo, i64 1
  store float %i.br, ptr %i.bq, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bs = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.bs, 0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vector_fmul_add_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %.lr.ph.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -32
  %i.g = sub i64 %i.b, %i.d
  %diff.check15 = icmp ugt i64 %i.g, -32
  %conflict.rdx = or i1 %diff.check, %diff.check15
  %i.h = sub i64 %i.a, %i.d
  %diff.check16 = icmp ugt i64 %i.h, -32
  %conflict.rdx17 = or i1 %conflict.rdx, %diff.check16
  br i1 %conflict.rdx17, label %.lr.ph.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !14
  %wide.load18 = load <4 x float>, ptr %i.j, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load19 = load <4 x float>, ptr %i.k, align 4, !tbaa !14
  %wide.load20 = load <4 x float>, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load21 = load <4 x float>, ptr %i.m, align 4, !tbaa !14
  %wide.load22 = load <4 x float>, ptr %i.n, align 4, !tbaa !14
  %i.o = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load19, <4 x float> %wide.load21)
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %wide.load20, <4 x float> %wide.load22)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x float> %i.o, ptr %i.q, align 4, !tbaa !14
  store <4 x float> %i.p, ptr %i.r, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader23

.lr.ph.preheader23:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader23
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.u = load float, ptr %i.t, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.w = load float, ptr %i.v, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.ph
  %i.y = load float, ptr %i.x, align 4, !tbaa !14
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.w, float %i.y)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %i.z, ptr %i.aa, align 4, !tbaa !14
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader23
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader23 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %i.ai)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.aj, ptr %i.ak, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.am = load float, ptr %i.al, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ao = load float, ptr %i.an, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !14
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.ao, float %i.aq)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.ar, ptr %i.as, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vector_fmul_reverse_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #4 {
bb.a:
  %4 = zext i32 %3 to i64                         ; 3 uses
  %i.a = getelementptr [4 x i8], ptr %2, i64 %4   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -4       ; 4 uses
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %0, %i.a
  %bound118 = icmp ult ptr %2, %i.e
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  br i1 %conflict.rdx, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x float>, ptr %i.g, align 4, !tbaa !14, !alias.scope !71
  %wide.load20.a = load <4 x float>, ptr %i.h, align 4, !tbaa !14, !alias.scope !71
  %i.i = sub nsw i64 0, %index
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -12
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -28
  %wide.load21.a = load <4 x float>, ptr %i.k, align 4, !tbaa !14, !alias.scope !72
  %wide.load22 = load <4 x float>, ptr %i.l, align 4, !tbaa !14, !alias.scope !72
  %reverse = shufflevector <4 x float> %wide.load21.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse23 = shufflevector <4 x float> %wide.load22, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.m = fmul nsz <4 x float> %wide.load, %reverse
  %i.n = fmul nsz <4 x float> %wide.load20.a, %reverse23
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x float> %i.m, ptr %i.o, align 4, !tbaa !14, !alias.scope !73, !noalias !74
  store <4 x float> %i.n, ptr %i.p, align 4, !tbaa !14, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader24
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.s = load float, ptr %i.r, align 4, !tbaa !14
  %i.t = sub nsw i64 0, %indvars.iv.ph
  %i.u = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !14
  %i.w = fmul nsz float %i.s, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %i.w, ptr %i.x, align 4, !tbaa !14
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader24
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader24 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %4, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %i.ac = sub nsw i64 0, %indvars.iv
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14
  %i.af = fmul nsz float %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.af, ptr %i.ag, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14
  %i.aj = xor i64 %indvars.iv, -1
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !14
  %i.am = fmul nsz float %i.ai, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.am, ptr %i.an, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @butterflies_float_c(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %wide.load15 = load <4 x float>, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.d, align 4, !tbaa !14 ; 2 uses
  %wide.load17 = load <4 x float>, ptr %i.e, align 4, !tbaa !14 ; 2 uses
  %i.f = fsub nsz <4 x float> %wide.load, %wide.load16
  %i.g = fsub nsz <4 x float> %wide.load15, %wide.load17
  %i.h = fadd nsz <4 x float> %wide.load, %wide.load16
  %i.i = fadd nsz <4 x float> %wide.load15, %wide.load17
  store <4 x float> %i.h, ptr %i.b, align 4, !tbaa !14
  store <4 x float> %i.i, ptr %i.c, align 4, !tbaa !14
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !14
  store <4 x float> %i.g, ptr %i.e, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !14 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !14 ; 2 uses
  %i.o = fsub nsz float %i.l, %i.n
  %i.p = fadd nsz float %i.l, %i.n
  store float %i.p, ptr %i.k, align 4, !tbaa !14
  store float %i.o, ptr %i.m, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

declare float @ff_scalarproduct_float_c(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"float", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !12}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = distinct !{!21, !12, !15, !16}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !12, !15}
!24 = distinct !{!24, !12, !15, !16}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !12, !15}
!27 = distinct !{!27, i1 false, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !12, !15, !16}
!31 = distinct !{!31, !12, !15}
!32 = !{!28}
!33 = !{!29}
!34 = distinct !{!34, !12, !15, !16}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !12, !15}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !12, !15, !16}
!41 = distinct !{!41, !12, !15}
!42 = !{!38}
!43 = !{!39}
!44 = distinct !{!44, !12, !15, !16}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !12, !15}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !12, !15, !16}
!55 = distinct !{!55, !12, !15}
!56 = !{!48}
!57 = !{!49}
!58 = !{!50}
!59 = !{!51}
!60 = !{!52}
!61 = !{!48, !49, !51, !50}
!62 = !{!53}
!63 = distinct !{!63, !12, !15, !16}
!64 = distinct !{!64, !12, !15}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !65}
!69 = distinct !{!69, !12, !15, !16}
!70 = distinct !{!70, !12, !15}
!71 = !{!66}
!72 = !{!67}
!73 = !{!68}
!74 = !{!66, !67}
!75 = distinct !{!75, !12, !15, !16}
!76 = distinct !{!76, !12, !16, !15}
end_hunk_0
