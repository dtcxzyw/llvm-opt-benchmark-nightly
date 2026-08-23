Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/float_dsp?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@vector_fmul_window_c:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 4 uses
  %i.s = sub nsw i64 %i.a, %n.vec
  %i.t = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = add i64 %index, %i.g                     ; 3 uses
  %i.v = xor i64 %index, -1
  %i.w = add i64 %i.v, %i.a                       ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.u
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !17, !alias.scope !47 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %wide.load73 = load <4 x float>, ptr %i.z, align 4, !tbaa !17, !alias.scope !50
  %reverse = shufflevector <4 x float> %wide.load73, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.u
  %wide.load74 = load <4 x float>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !52 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.w
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %wide.load75 = load <4 x float>, ptr %i.ac, align 4, !tbaa !17, !alias.scope !54
  %reverse76 = shufflevector <4 x float> %wide.load75, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ad = fneg nsz <4 x float> %wide.load74
  %i.ae = fmul nsz <4 x float> %reverse, %i.ad
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %reverse76, <4 x float> %i.ae)
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.u
  store <4 x float> %i.af, ptr %i.ag, align 4, !tbaa !17, !alias.scope !56, !noalias !58
  %i.ah = fmul nsz <4 x float> %reverse, %reverse76
  %i.ai = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load74, <4 x float> %i.ah)
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.w
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -12
  %reverse77 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse77, ptr %i.ak, align 4, !tbaa !17, !alias.scope !59, !noalias !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv33.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader79, %.lr.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph ], [ %indvars.iv33.ph, %.lr.ph.preheader79 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader79 ] ; 4 uses
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1 ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.an = load float, ptr %i.am, align 4, !tbaa !17
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next34
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !17
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next34
  %i.at = load float, ptr %i.as, align 4, !tbaa !17 ; 2 uses
  %i.au = fneg nsz float %i.ar
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.aw = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x float> poison, float %i.au, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.at, i64 1
  %i.ba = fmul nsz <2 x float> %i.ax, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> poison, float %i.at, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.ar, i64 1
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.be, <2 x float> %i.ba) ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  store float %i.bg, ptr %i.av, align 4, !tbaa !17
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next34
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  store float %i.bi, ptr %i.bh, align 4, !tbaa !17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bj = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.bj, 0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

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
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -32
  %i.g = sub i64 %i.b, %i.d
  %diff.check12 = icmp ugt i64 %i.g, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  %i.h = sub i64 %i.a, %i.d
  %diff.check13 = icmp ugt i64 %i.h, -32
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !17
  %wide.load15 = load <4 x float>, ptr %i.j, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load16 = load <4 x float>, ptr %i.k, align 4, !tbaa !17
  %wide.load17 = load <4 x float>, ptr %i.l, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load18 = load <4 x float>, ptr %i.m, align 4, !tbaa !17
  %wide.load19 = load <4 x float>, ptr %i.n, align 4, !tbaa !17
  %i.o = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load16, <4 x float> %wide.load18)
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load15, <4 x float> %wide.load17, <4 x float> %wide.load19)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x float> %i.o, ptr %i.q, align 4, !tbaa !17
  store <4 x float> %i.p, ptr %i.r, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader20
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.u = load float, ptr %i.t, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.ph
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.w, float %i.y)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %i.z, ptr %i.aa, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader20
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader20 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !17
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !17
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %i.ai)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.aj, ptr %i.ak, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.am = load float, ptr %i.al, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.ao, float %i.aq)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.ar, ptr %i.as, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vector_fmul_reverse_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #4 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr [4 x i8], ptr %2, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4       ; 4 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %3, 16
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.e   ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %i.e
  %4 = sub nsw i64 %i.a, %wide.trip.count
  %5 = shl nsw i64 %4, 2
  %scevgep12 = getelementptr i8, ptr %2, i64 %5
  %bound0 = icmp ult ptr %0, %scevgep.a
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %0, %i.b
  %bound114 = icmp ult ptr %scevgep12, %scevgep
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load = load <4 x float>, ptr %6, align 4, !tbaa !17, !alias.scope !65
  %wide.load17 = load <4 x float>, ptr %7, align 4, !tbaa !17, !alias.scope !65
  %8 = sub nsw i64 0, %index
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %8 ; 2 uses
  %9 = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -28
  %wide.load.a = load <4 x float>, ptr %9, align 4, !tbaa !17, !alias.scope !68
  %wide.load16 = load <4 x float>, ptr %i.g, align 4, !tbaa !17, !alias.scope !68
  %reverse = shufflevector <4 x float> %wide.load.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse20 = shufflevector <4 x float> %wide.load16, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.h = fmul nsz <4 x float> %wide.load, %reverse
  %i.i = fmul nsz <4 x float> %wide.load17, %reverse20
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x float> %i.h, ptr %i.j, align 4, !tbaa !17, !alias.scope !70, !noalias !72
  store <4 x float> %i.i, ptr %i.k, align 4, !tbaa !17, !alias.scope !70, !noalias !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17
  %10 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %11 = load float, ptr %10, align 4, !tbaa !17
  %12 = sub nsw i64 0, %indvars.iv.ph
  %13 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %12
  %i.m = load float, ptr %13, align 4, !tbaa !17
  %i.n = fmul nsz float %11, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %i.n, ptr %i.o, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader17 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %14 = add nsw i64 %wide.trip.count, -1
  %15 = icmp eq i64 %indvars.iv.ph, %14
  br i1 %15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !17
  %16 = sub nsw i64 0, %indvars.iv
  %i.r = getelementptr inbounds [4 x i8], ptr %i.c, i64 %16
  %i.s = load float, ptr %i.r, align 4, !tbaa !17
  %i.t = fmul nsz float %i.q, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.t, ptr %i.u, align 4, !tbaa !17
  %indvars.iv.next.1.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1.a
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %17 = xor i64 %indvars.iv, -1
  %i.x = getelementptr inbounds [4 x i8], ptr %i.c, i64 %17
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  %i.z = fmul nsz float %i.w, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1.a
  store float %i.z, ptr %i.aa, align 4, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !74

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
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !17 ; 2 uses
  %wide.load15 = load <4 x float>, ptr %i.c, align 4, !tbaa !17 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.d, align 4, !tbaa !17 ; 2 uses
  %wide.load17 = load <4 x float>, ptr %i.e, align 4, !tbaa !17 ; 2 uses
  %i.f = fsub nsz <4 x float> %wide.load, %wide.load16
  %i.g = fsub nsz <4 x float> %wide.load15, %wide.load17
  %i.h = fadd nsz <4 x float> %wide.load, %wide.load16
  %i.i = fadd nsz <4 x float> %wide.load15, %wide.load17
  store <4 x float> %i.h, ptr %i.b, align 4, !tbaa !17
  store <4 x float> %i.i, ptr %i.c, align 4, !tbaa !17
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !17
  store <4 x float> %i.g, ptr %i.e, align 4, !tbaa !17
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
  %i.l = load float, ptr %i.k, align 4, !tbaa !17 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !17 ; 2 uses
  %i.o = fsub nsz float %i.l, %i.n
  %i.p = fadd nsz float %i.l, %i.n
  store float %i.p, ptr %i.k, align 4, !tbaa !17
  store float %i.o, ptr %i.m, align 4, !tbaa !17
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = distinct !{!19, !14, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !14, !20}
!24 = distinct !{!24, !14, !20, !21}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !14, !20}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !14, !20, !21}
!33 = distinct !{!33, !14, !20}
!34 = distinct !{!34, !14, !20, !21}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !14, !20}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !14, !20, !21}
!43 = distinct !{!43, !14, !20}
!44 = distinct !{!44, !14, !20, !21}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !14, !20}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = !{!53}
!53 = distinct !{!53, !49}
!54 = !{!55}
!55 = distinct !{!55, !49}
!56 = !{!57}
!57 = distinct !{!57, !49}
!58 = !{!48, !51, !55, !53}
!59 = !{!60}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !14, !20, !21}
!62 = distinct !{!62, !14, !20}
!63 = distinct !{!63, !14, !20, !21}
!64 = distinct !{!64, !14, !20}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = !{!69}
!69 = distinct !{!69, !67}
!70 = !{!71}
!71 = distinct !{!71, !67}
!72 = !{!66, !69}
!73 = distinct !{!73, !14, !20, !21}
!74 = distinct !{!74, !14, !20}
!75 = distinct !{!75, !14, !20, !21}
!76 = distinct !{!76, !14, !21, !20}
end_hunk_0
