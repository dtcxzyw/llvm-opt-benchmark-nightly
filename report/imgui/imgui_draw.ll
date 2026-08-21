Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawData17DeIndexAllBuffersEv:bb.a

.noexc21:                                         ; preds = %bb.i, %.noexc
  %.pre = load i32, ptr %i.q, align 8, !tbaa !95
  br label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit

_ZN8ImVectorI10ImDrawVertE6resizeEi.exit:         ; preds = %bb.f, %.noexc21
  %i.ae = phi i32 [ %i.o, %bb.f ], [ %i.y, %.noexc21 ]
  %i.af = phi ptr [ %i.n, %bb.f ], [ %i.ab, %.noexc21 ] ; 2 uses
  %i.ag = phi i32 [ %i.r, %bb.f ], [ %.pre, %.noexc21 ]
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !73 ; 2 uses
  store i32 %i.al, ptr %1, align 8, !tbaa !73
  store i32 %i.r, ptr %i.ak, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !72 ; 2 uses
  store i32 %i.an, ptr %i.i, align 4, !tbaa !72
  store i32 %i.ae, ptr %i.am, align 4, !tbaa !72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65 ; 2 uses
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !65
  store ptr %i.af, ptr %i.ao, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !70
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.at = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0)
          to label %.noexc24 unwind label %bb.e   ; 2 uses

.noexc24:                                         ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66 ; 2 uses
  %.not6.i.i23 = icmp eq ptr %i.av, null
  br i1 %.not6.i.i23, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %.noexc24
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !71
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.at, ptr nonnull align 2 %i.av, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !66
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
          to label %.noexc25 unwind label %bb.e

.noexc25:                                         ; preds = %bb.k, %.noexc24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !66
  store i32 0, ptr %i.aq, align 4, !tbaa !70
  %.pre33 = load i32, ptr %i.ak, align 8, !tbaa !237
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !240
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.be = zext i16 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bg, ptr noundef nonnull align 4 dereferenceable(20) %i.bf, i64 20, i1 false), !tbaa.struct !337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !95
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.l, label %._crit_edge, !llvm.loop !338

bb.m:                                             ; preds = %.noexc25, %._crit_edge
  %i.bk = phi i32 [ %.pre33, %.noexc25 ], [ %i.r, %._crit_edge ]
  store i32 0, ptr %i.q, align 8, !tbaa !71
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !334
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.b, align 4, !tbaa !334
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m
  %i.bn = phi i32 [ %i.m, %bb.d ], [ %i.al, %bb.m ]
  %i.bo = phi ptr [ %i.n, %bb.d ], [ %i.ap, %bb.m ] ; 3 uses
  %i.bp = phi i32 [ %i.o, %bb.d ], [ %i.an, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.02028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.h
  br i1 %.not, label %._crit_edge31, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawData14ScaleClipRectsERK6ImVec2(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %._crit_edge31, label %.lr.ph30

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph30:                                         ; preds = %bb.a, %._crit_edge
  %.02328 = phi ptr [ %i.v, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.02328, align 8, !tbaa !57 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 3 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx32 = mul nsw i64 %i.k, 72                  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %.idx32
  %.not2425 = icmp eq i32 %i.j, 0
  br i1 %.not2425, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph30
  %i.m = add nsw i64 %.idx32, -72                 ; 2 uses
  %i.n = udiv i64 %i.m, 72
  %i.o = add nuw nsw i64 %i.n, 1
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.026.prol = phi ptr [ %i.t, %.lr.ph.prol ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.p = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.r = load <4 x float>, ptr %.026.prol, align 8, !tbaa !8
  %i.s = fmul <4 x float> %i.q, %i.r
  store <4 x float> %i.s, ptr %.026.prol, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.026.prol, i64 72 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !339

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.026.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.u = icmp ult i64 %i.m, 216
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph30
  %i.v = getelementptr inbounds nuw i8, ptr %.02328, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.f
  br i1 %.not, label %._crit_edge31, label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.026 = phi ptr [ %i.ap, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.y = load <4 x float>, ptr %.026, align 8, !tbaa !8
  %i.z = fmul <4 x float> %i.x, %i.y
  store <4 x float> %i.z, ptr %.026, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.026, i64 72 ; 2 uses
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ad = load <4 x float>, ptr %i.aa, align 8, !tbaa !8
  %i.ae = fmul <4 x float> %i.ac, %i.ad
  store <4 x float> %i.ae, ptr %i.aa, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 144 ; 2 uses
  %i.ag = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = load <4 x float>, ptr %i.af, align 8, !tbaa !8
  %i.aj = fmul <4 x float> %i.ah, %i.ai
  store <4 x float> %i.aj, ptr %i.af, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %.026, i64 216 ; 2 uses
  %i.al = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.an = load <4 x float>, ptr %i.ak, align 8, !tbaa !8
  %i.ao = fmul <4 x float> %i.am, %i.an
  store <4 x float> %i.ao, ptr %i.ak, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 288 ; 2 uses
  %.not24.3 = icmp eq ptr %i.ap, %i.l
  br i1 %.not24.3, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, <2 x float> %3, <2 x float> %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #19 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %4, %3      ; 2 uses
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop71 = fsub <2 x float> %4, %3    ; 3 uses
  %i.b = extractelement <2 x float> %foldExtExtBinop71, i64 1 ; 2 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = tail call noundef float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = fdiv float 1.000000e+00, %i.d            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !238  ; 3 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [20 x i8], ptr %i.g, i64 %i.h
  %i.j = icmp slt i32 %1, %2
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = sext i32 %1 to i64                       ; 3 uses
  %i.l = getelementptr inbounds [20 x i8], ptr %i.g, i64 %i.k ; 6 uses
  %i.m = lshr i32 %6, 16
  %i.n = and i32 %i.m, 255
  %i.o = lshr i32 %5, 16
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = sub nsw i32 %i.n, %i.p
  %i.r = lshr i32 %6, 8
  %i.s = and i32 %i.r, 255
  %i.t = lshr i32 %5, 8
  %i.u = and i32 %i.t, 255                        ; 2 uses
  %i.v = sub nsw i32 %i.s, %i.u
  %i.w = and i32 %6, 255
  %i.x = and i32 %5, 255                          ; 2 uses
  %i.y = sub nsw i32 %i.w, %i.x
  %i.z = uitofp nneg i32 %i.x to float            ; 2 uses
  %i.aa = sitofp i32 %i.y to float                ; 2 uses
  %i.ab = uitofp nneg i32 %i.u to float           ; 2 uses
  %i.ac = sitofp i32 %i.v to float                ; 2 uses
  %i.ad = uitofp nneg i32 %i.p to float           ; 2 uses
  %i.ae = sitofp i32 %i.q to float                ; 2 uses
  %i.af = ptrtoaddr ptr %i.g to i64               ; 3 uses
  %i.ag = mul nsw i64 %i.k, 20
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = add i64 %i.ah, 20
  %i.aj = mul nsw i64 %i.h, 20
  %i.ak = add i64 %i.aj, %i.af
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ak)
  %7 = mul nsw i64 %i.k, -20                      ; 2 uses
  %i.am = add i64 %i.al, -20
  %8 = sub i64 %i.am, %i.af                       ; 2 uses
  %i.an = sub nsw i64 0, %7
  %i.ao = icmp ne i64 %8, %i.an
  %i.ap = zext i1 %i.ao to i64                    ; 2 uses
  %9 = sub i64 %8, %i.ap
  %10 = add i64 %9, %7
  %i.aq = udiv i64 %10, 20
  %i.ar = add nuw nsw i64 %i.aq, %i.ap            ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ar, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = mul i64 %n.vec, 20
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat48 = shufflevector <4 x float> %broadcast.splatinsert47, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat50 = shufflevector <4 x float> %broadcast.splatinsert49, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat52 = shufflevector <4 x float> %broadcast.splatinsert51, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat54 = shufflevector <4 x float> %broadcast.splatinsert53, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat56 = shufflevector <4 x float> %broadcast.splatinsert55, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat58 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat60 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat62 = shufflevector <2 x float> %foldExtExtBinop71, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat64 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat66 = shufflevector <4 x float> %broadcast.splatinsert65, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = mul i64 %index, 20                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %i.l, i64 %i.av   ; 3 uses
  %next.gep67 = getelementptr i8, ptr %i.aw, i64 20
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.av   ; 3 uses
  %next.gep68 = getelementptr i8, ptr %i.ax, i64 40
  %i.ay = getelementptr i8, ptr %i.l, i64 %i.av   ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.ay, i64 60
  %i.az = load float, ptr %next.gep, align 4, !tbaa !234
  %i.ba = load float, ptr %next.gep67, align 4, !tbaa !234
  %i.bb = load float, ptr %next.gep68, align 4, !tbaa !234
  %i.bc = load float, ptr %next.gep69, align 4, !tbaa !234
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = fsub <4 x float> %i.bg, %broadcast.splat58
  %i.bi = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.bj = getelementptr i8, ptr %i.aw, i64 24
  %i.bk = getelementptr i8, ptr %i.ax, i64 44
  %i.bl = getelementptr i8, ptr %i.ay, i64 64
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !235
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !235
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !235
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !235
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3
  %i.bu = fsub <4 x float> %i.bt, %broadcast.splat60
  %i.bv = fmul <4 x float> %broadcast.splat62, %i.bu
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %broadcast.splat64, <4 x float> %i.bv)
  %i.bx = fmul <4 x float> %broadcast.splat66, %i.bw ; 3 uses
  %i.by = fcmp olt <4 x float> %i.bx, zeroinitializer
  %i.bz = fcmp ogt <4 x float> %i.bx, splat (float 1.000000e+00)
  %i.ca = select <4 x i1> %i.bz, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bx
  %i.cb = select <4 x i1> %i.by, <4 x float> zeroinitializer, <4 x float> %i.ca ; 3 uses
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat48, <4 x float> %i.cb, <4 x float> %broadcast.splat)
  %i.cd = fptosi <4 x float> %i.cc to <4 x i32>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat52, <4 x float> %i.cb, <4 x float> %broadcast.splat50)
  %i.cf = fptosi <4 x float> %i.ce to <4 x i32>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat56, <4 x float> %i.cb, <4 x float> %broadcast.splat54)
  %i.ch = fptosi <4 x float> %i.cg to <4 x i32>
  %i.ci = shl <4 x i32> %i.cf, splat (i32 8)
  %i.cj = shl <4 x i32> %i.ch, splat (i32 16)
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep, i64 16 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.aw, i64 36     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ax, i64 56     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ay, i64 76     ; 2 uses
  %i.co = load i32, ptr %i.ck, align 4, !tbaa !241
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !241
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !241
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !241
  %i.cs = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 1
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cq, i64 2
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 3
  %i.cw = and <4 x i32> %i.cv, splat (i32 -16777216)
  %i.cx = or <4 x i32> %i.cw, %i.cd
  %i.cy = or <4 x i32> %i.cx, %i.ci
  %i.cz = or <4 x i32> %i.cy, %i.cj               ; 4 uses
  %i.da = extractelement <4 x i32> %i.cz, i64 0
  store i32 %i.da, ptr %i.ck, align 4, !tbaa !241
  %i.db = extractelement <4 x i32> %i.cz, i64 1
  store i32 %i.db, ptr %i.cl, align 4, !tbaa !241
  %i.dc = extractelement <4 x i32> %i.cz, i64 2
  store i32 %i.dc, ptr %i.cm, align 4, !tbaa !241
  %i.dd = extractelement <4 x i32> %i.cz, i64 3
  store i32 %i.dd, ptr %i.cn, align 4, !tbaa !241
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.046.ph = phi ptr [ %i.l, %.lr.ph ], [ %i.au, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.046 = phi ptr [ %i.ed, %scalar.ph ], [ %.046.ph, %scalar.ph.preheader ] ; 3 uses
  %i.df = load <2 x float>, ptr %.046, align 4, !tbaa !8
  %i.dg = fsub <2 x float> %i.df, %3              ; 2 uses
  %foldExtExtBinop73 = fmul <2 x float> %foldExtExtBinop71, %i.dg
  %i.dh = extractelement <2 x float> %foldExtExtBinop73, i64 1
  %i.di = extractelement <2 x float> %i.dg, i64 0
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.di, float %i.a, float %i.dh)
  %i.dk = fmul float %i.e, %i.dj                  ; 3 uses
  %i.dl = fcmp olt float %i.dk, 0.000000e+00
  %i.dm = fcmp ogt float %i.dk, 1.000000e+00
  %i.dn = select i1 %i.dm, float 1.000000e+00, float %i.dk
  %i.do = select i1 %i.dl, float 0.000000e+00, float %i.dn ; 3 uses
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.do, float %i.z)
  %i.dq = fptosi float %i.dp to i32
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.do, float %i.ab)
  %i.ds = fptosi float %i.dr to i32
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.do, float %i.ad)
  %i.du = fptosi float %i.dt to i32
  %i.dv = shl i32 %i.ds, 8
  %i.dw = shl i32 %i.du, 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.046, i64 16 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !241
  %i.dz = and i32 %i.dy, -16777216
  %i.ea = or i32 %i.dz, %i.dq
  %i.eb = or i32 %i.ea, %i.dv
  %i.ec = or i32 %i.eb, %i.dw
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !241
  %i.ed = getelementptr inbounds nuw i8, ptr %.046, i64 20 ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.i
  br i1 %i.ee, label %scalar.ph, label %._crit_edge, !llvm.loop !343
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4, float noundef %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.c
  %i.e = icmp slt i32 %1, %2
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.f
  %i.h = fneg float %5
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = insertelement <2 x float> %i.i, float %4, i64 1
  %i.k = insertelement <2 x float> poison, float %4, i64 0
  %i.l = insertelement <2 x float> %i.k, float %5, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.018 = phi ptr [ %i.g, %.lr.ph ], [ %i.v, %bb.b ] ; 3 uses
  %i.m = load <2 x float>, ptr %.018, align 4, !tbaa !8
  %i.n = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.o = fsub <2 x float> %i.m, %i.n              ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x float> %i.p, %i.j
  %i.r = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.l, <2 x float> %i.q)
  %i.t = load <2 x float>, ptr %6, align 4, !tbaa !8
  %i.u = fadd <2 x float> %i.t, %i.s
  store <2 x float> %i.u, ptr %.018, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.018, i64 20 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.d
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !344
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN12ImFontConfigC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(153) initializes((0, 160)) %0) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  store i8 1, ptr %i.a, align 4, !tbaa !345
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.b, align 8, !tbaa !348
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float f0x7F7FFFFF, ptr %i.d, align 4, !tbaa !350
end_hunk_0
