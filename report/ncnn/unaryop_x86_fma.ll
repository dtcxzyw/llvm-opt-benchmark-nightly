Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_fma?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ai = icmp slt i32 %.1.lcssa, %i.ah
  br i1 %i.ai, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.aj = xor i32 %.1.lcssa, -1
  %i.ak = add i32 %i.ah, %i.aj                    ; 3 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ak, 7
  br i1 %min.iters.check, label %.lr.ph54.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i32 %i.ak, 31
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.am, 24
  %n.vec = and i64 %i.am, 8589934560              ; 5 uses
  %i.ao = trunc i64 %n.vec to i32
  %i.ap = add i32 %.1.lcssa, %i.ao
  %i.aq = shl nuw nsw i64 %n.vec, 2
  %i.ar = getelementptr i8, ptr %.131.lcssa, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.as ; 5 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %wide.load83 = load <8 x float>, ptr %i.at, align 4, !tbaa !44
  %wide.load84 = load <8 x float>, ptr %i.au, align 4, !tbaa !44
  %wide.load85 = load <8 x float>, ptr %i.av, align 4, !tbaa !44
  %i.aw = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %wide.load)
  %i.ax = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %wide.load83)
  %i.ay = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %wide.load84)
  %i.az = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %wide.load85)
  store <8 x float> %i.aw, ptr %next.gep, align 4, !tbaa !44
  store <8 x float> %i.ax, ptr %i.at, align 4, !tbaa !44
  store <8 x float> %i.ay, ptr %i.au, align 4, !tbaa !44
  store <8 x float> %i.az, ptr %i.av, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.am, 8589934584            ; 4 uses
  %i.bb = trunc i64 %n.vec87 to i32
  %i.bc = add i32 %.1.lcssa, %i.bb
  %i.bd = shl nuw nsw i64 %n.vec87, 2
  %i.be = getelementptr i8, ptr %.131.lcssa, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = shl i64 %index88, 2
  %next.gep89 = getelementptr i8, ptr %.131.lcssa, i64 %i.bf ; 2 uses
  %wide.load90 = load <8 x float>, ptr %next.gep89, align 4, !tbaa !44
  %i.bg = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %wide.load90)
  store <8 x float> %i.bg, ptr %next.gep89, align 4, !tbaa !44
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !203

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.am, %n.vec87
  br i1 %cmp.n92, label %._crit_edge, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.253.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.23252.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  br label %.lr.ph54

.lr.ph48:                                         ; preds = %.preheader42, %.lr.ph48
  %.147 = phi i32 [ %i.bl, %.lr.ph48 ], [ %.0.lcssa, %.preheader42 ]
  %.13146 = phi ptr [ %i.bk, %.lr.ph48 ], [ %.030.lcssa, %.preheader42 ] ; 3 uses
  %i.bi = load <4 x float>, ptr %.13146, align 16, !tbaa !41
  %i.bj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.trunc.v4f32(<4 x float> %i.bi)
  store <4 x float> %i.bj, ptr %.13146, align 16, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %.13146, i64 16 ; 2 uses
  %i.bl = add nuw nsw i32 %.147, 4                ; 3 uses
  %i.bm = or disjoint i32 %i.bl, 3
  %i.bn = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph48, label %.preheader, !llvm.loop !204

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %.253 = phi i32 [ %i.bs, %.lr.ph54 ], [ %.253.ph, %.lr.ph54.preheader ]
  %.23252 = phi ptr [ %i.br, %.lr.ph54 ], [ %.23252.ph, %.lr.ph54.preheader ] ; 3 uses
  %i.bp = load float, ptr %.23252, align 4, !tbaa !44
  %i.bq = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.bp)
  store float %i.bq, ptr %.23252, align 4, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %.23252, i64 4
  %i.bs = add nuw nsw i32 %.253, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph54, !llvm.loop !205

._crit_edge:                                      ; preds = %.lr.ph54, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond64.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond64.not, label %._crit_edge57, label %.noexc

._crit_edge57:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge57, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.trunc.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not57 = icmp sgt i32 %i.k, %i.j
  br i1 %.not57, label %._crit_edge59, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !214
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !214
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !214
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader44

.preheader44:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.af, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ag, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph50, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.046 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.noexc ]
  %.03045 = phi ptr [ %i.af, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.03045, align 1, !tbaa !41 ; 2 uses
  %i.ab = fcmp fast ogt <8 x float> %i.aa, zeroinitializer
  %i.ac = select <8 x i1> %i.ab, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ad = fcmp fast olt <8 x float> %i.aa, zeroinitializer
  %i.ae = select fast <8 x i1> %i.ad, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ac
  store <8 x float> %i.ae, ptr %.03045, align 1, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.03045, i64 32 ; 2 uses
  %i.ag = add nuw nsw i32 %.046, 8                ; 3 uses
  %i.ah = or disjoint i32 %i.ag, 7
  %i.ai = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.preheader44, !llvm.loop !209

.preheader:                                       ; preds = %.lr.ph50, %.preheader44
  %i.ak = phi i32 [ %i.x, %.preheader44 ], [ %i.ci, %.lr.ph50 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader44 ], [ %i.cf, %.lr.ph50 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader44 ], [ %i.cg, %.lr.ph50 ] ; 5 uses
  %i.al = icmp slt i32 %.1.lcssa, %i.ak
  br i1 %i.al, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.am = xor i32 %.1.lcssa, -1
  %i.an = add i32 %i.ak, %i.am                    ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.an, 3
  br i1 %min.iters.check, label %.lr.ph56.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check84 = icmp ult i32 %i.an, 31
  br i1 %min.iters.check84, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.ap, 28
  %n.vec = and i64 %i.ap, 8589934560              ; 5 uses
  %i.ar = trunc i64 %n.vec to i32
  %i.as = add i32 %.1.lcssa, %i.ar
  %i.at = shl nuw nsw i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %.131.lcssa, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.av ; 5 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44 ; 2 uses
  %wide.load85 = load <8 x float>, ptr %i.aw, align 4, !tbaa !44 ; 2 uses
  %wide.load86 = load <8 x float>, ptr %i.ax, align 4, !tbaa !44 ; 2 uses
  %wide.load87 = load <8 x float>, ptr %i.ay, align 4, !tbaa !44 ; 2 uses
  %i.az = fcmp fast ogt <8 x float> %wide.load, zeroinitializer
  %i.ba = fcmp fast ogt <8 x float> %wide.load85, zeroinitializer
  %i.bb = fcmp fast ogt <8 x float> %wide.load86, zeroinitializer
  %i.bc = fcmp fast ogt <8 x float> %wide.load87, zeroinitializer
  %i.bd = fcmp fast olt <8 x float> %wide.load, zeroinitializer
  %i.be = fcmp fast olt <8 x float> %wide.load85, zeroinitializer
  %i.bf = fcmp fast olt <8 x float> %wide.load86, zeroinitializer
  %i.bg = fcmp fast olt <8 x float> %wide.load87, zeroinitializer
  %i.bh = select fast <8 x i1> %i.bd, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bi = select fast <8 x i1> %i.be, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bj = select fast <8 x i1> %i.bf, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bk = select fast <8 x i1> %i.bg, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bl = select fast <8 x i1> %i.az, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bh
  %i.bm = select fast <8 x i1> %i.ba, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bi
  %i.bn = select fast <8 x i1> %i.bb, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bj
  %i.bo = select fast <8 x i1> %i.bc, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bk
  store <8 x float> %i.bl, ptr %next.gep, align 4, !tbaa !44
  store <8 x float> %i.bm, ptr %i.aw, align 4, !tbaa !44
  store <8 x float> %i.bn, ptr %i.ax, align 4, !tbaa !44
  store <8 x float> %i.bo, ptr %i.ay, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.preheader, label %vec.epilog.ph, !prof !215

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.ap, 8589934588            ; 4 uses
  %i.bq = trunc i64 %n.vec89 to i32
  %i.br = add i32 %.1.lcssa, %i.bq
  %i.bs = shl nuw nsw i64 %n.vec89, 2
  %i.bt = getelementptr i8, ptr %.131.lcssa, i64 %i.bs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index90, 2
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bu ; 2 uses
  %wide.load92 = load <4 x float>, ptr %next.gep91, align 4, !tbaa !44 ; 2 uses
  %i.bv = fcmp fast ogt <4 x float> %wide.load92, zeroinitializer
  %i.bw = fcmp fast olt <4 x float> %wide.load92, zeroinitializer
  %i.bx = select fast <4 x i1> %i.bw, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.by = select fast <4 x i1> %i.bv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bx
  store <4 x float> %i.by, ptr %next.gep91, align 4, !tbaa !44
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.ap, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.255.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.23254.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph56

.lr.ph50:                                         ; preds = %.preheader44, %.lr.ph50
  %.149 = phi i32 [ %i.cg, %.lr.ph50 ], [ %.0.lcssa, %.preheader44 ]
  %.13148 = phi ptr [ %i.cf, %.lr.ph50 ], [ %.030.lcssa, %.preheader44 ] ; 3 uses
  %i.ca = load <4 x float>, ptr %.13148, align 16, !tbaa !41 ; 2 uses
  %i.cb = fcmp fast ogt <4 x float> %i.ca, zeroinitializer
  %i.cc = select <4 x i1> %i.cb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cd = fcmp fast olt <4 x float> %i.ca, zeroinitializer
  %i.ce = select fast <4 x i1> %i.cd, <4 x float> splat (float -1.000000e+00), <4 x float> %i.cc
  store <4 x float> %i.ce, ptr %.13148, align 16, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %.13148, i64 16 ; 2 uses
  %i.cg = add nuw nsw i32 %.149, 4                ; 3 uses
  %i.ch = or disjoint i32 %i.cg, 3
  %i.ci = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph50, label %.preheader, !llvm.loop !212

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %.255 = phi i32 [ %i.cq, %.lr.ph56 ], [ %.255.ph, %.lr.ph56.preheader ]
  %.23254 = phi ptr [ %i.cp, %.lr.ph56 ], [ %.23254.ph, %.lr.ph56.preheader ] ; 3 uses
  %i.ck = load float, ptr %.23254, align 4, !tbaa !44 ; 2 uses
  %i.cl = fcmp fast ogt float %i.ck, 0.000000e+00
  %i.cm = fcmp fast olt float %i.ck, 0.000000e+00
  %i.cn = select fast i1 %i.cm, float -1.000000e+00, float 0.000000e+00
  %i.co = select fast i1 %i.cl, float 1.000000e+00, float %i.cn
  store float %i.co, ptr %.23254, align 4, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %.23254, i64 4
  %i.cq = add nuw nsw i32 %.255, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph56, !llvm.loop !213

._crit_edge:                                      ; preds = %.lr.ph56, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond66.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond66.not, label %._crit_edge59, label %.noexc

._crit_edge59:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge59, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not112 = icmp sgt i32 %i.k, %i.j
  br i1 %.not112, label %._crit_edge114, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bl, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !221
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !221
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !221
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader99

.preheader99:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bj, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bg, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bh, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph105, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0101 = phi i32 [ %i.bh, %.lr.ph ], [ 0, %.noexc ]
  %.030100 = phi ptr [ %i.bg, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030100, align 1, !tbaa !41 ; 6 uses
  %i.ab = fmul fast <8 x float> %i.aa, %i.aa
  %i.ac = fmul fast <8 x float> %i.aa, splat (float f0x3E2AAAAB)
  %i.ad = fadd fast <8 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = fmul fast <8 x float> %i.ab, %i.ad
  %i.af = fadd fast <8 x float> %i.ae, %i.aa
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fneg fast <8 x float> %i.am             ; 2 uses
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.an, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ah)
  %i.ap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.an, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ao) ; 8 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ap
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float f0x3C088908))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float f0x3D2AA9C1))
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float f0x3E2AAAAA))
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float 5.000000e-01))
  %i.aw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ap)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 1.000000e+00)
  %i.ay = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.az = shl <8 x i32> %i.ay, splat (i32 23)
  %i.ba = add <8 x i32> %i.az, splat (i32 1065353216)
  %i.bb = bitcast <8 x i32> %i.ba to <8 x float>
  %i.bc = fmul fast <8 x float> %i.ax, %i.bb
  %i.bd = fadd fast <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.be = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.bf = fcmp fast uge <8 x float> %i.be, splat (float f0x38D1B717)
  %.v98 = select <8 x i1> %i.bf, <8 x float> %i.bd, <8 x float> %i.af
  store <8 x float> %.v98, ptr %.030100, align 1, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %.030100, i64 32 ; 2 uses
  %i.bh = add nuw nsw i32 %.0101, 8               ; 3 uses
  %i.bi = or disjoint i32 %i.bh, 7
  %i.bj = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.preheader99, !llvm.loop !218

.preheader:                                       ; preds = %.lr.ph105, %.preheader99
  %i.bl = phi i32 [ %i.x, %.preheader99 ], [ %i.cy, %.lr.ph105 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader99 ], [ %i.cv, %.lr.ph105 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader99 ], [ %i.cw, %.lr.ph105 ] ; 2 uses
  %i.bm = icmp slt i32 %.1.lcssa, %i.bl
  br i1 %i.bm, label %.lr.ph111, label %._crit_edge

.lr.ph105:                                        ; preds = %.preheader99, %.lr.ph105
  %.1104 = phi i32 [ %i.cw, %.lr.ph105 ], [ %.0.lcssa, %.preheader99 ]
  %.131103 = phi ptr [ %i.cv, %.lr.ph105 ], [ %.030.lcssa, %.preheader99 ] ; 3 uses
  %i.bn = load <4 x float>, ptr %.131103, align 16, !tbaa !41 ; 6 uses
  %i.bo = fmul fast <4 x float> %i.bn, %i.bn
  %i.bp = fmul fast <4 x float> %i.bn, splat (float f0x3E2AAAAB)
  %i.bq = fadd fast <4 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fmul fast <4 x float> %i.bo, %i.bq
  %i.bs = fadd fast <4 x float> %i.br, %i.bn
  %i.bt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bn, <4 x float> splat (float f0x42B0C0A5))
  %i.bu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bu, splat (float f0x3FB8AA3B)
  %i.bw = fadd fast <4 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.bx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bw)
  %i.by = sitofp fast <4 x i32> %i.bx to <4 x float> ; 2 uses
  %i.bz = fcmp fast olt <4 x float> %i.bw, %i.by
  %i.ca = select <4 x i1> %i.bz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cb = fsub fast <4 x float> %i.by, %i.ca      ; 2 uses
  %i.cc = fneg fast <4 x float> %i.cb             ; 2 uses
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.bu)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cd) ; 8 uses
  %i.cf = fmul fast <4 x float> %i.ce, %i.ce
  %i.cg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cg, <4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0x3C088908))
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ch, <4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0x3D2AA9C1))
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0x3E2AAAAA))
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float 5.000000e-01))
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ck, <4 x float> nofpclass(nan inf) %i.cf, <4 x float> nofpclass(nan inf) %i.ce)
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 1.000000e+00)
  %i.cn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cb)
  %i.co = shl <4 x i32> %i.cn, splat (i32 23)
  %i.cp = add <4 x i32> %i.co, splat (i32 1065353216)
  %i.cq = bitcast <4 x i32> %i.cp to <4 x float>
  %i.cr = fmul fast <4 x float> %i.cm, %i.cq
  %i.cs = fadd fast <4 x float> %i.cr, splat (float -1.000000e+00)
  %i.ct = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bn)
  %i.cu = fcmp fast uge <4 x float> %i.ct, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.cu, <4 x float> %i.cs, <4 x float> %i.bs
  store <4 x float> %.v, ptr %.131103, align 16, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %.131103, i64 16 ; 2 uses
  %i.cw = add nuw nsw i32 %.1104, 4               ; 3 uses
  %i.cx = or disjoint i32 %i.cw, 3
  %i.cy = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph105, label %.preheader, !llvm.loop !219

.lr.ph111:                                        ; preds = %.preheader, %.lr.ph111
  %.2110 = phi i32 [ %i.dd, %.lr.ph111 ], [ %.1.lcssa, %.preheader ]
  %.232109 = phi ptr [ %i.dc, %.lr.ph111 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.da = load float, ptr %.232109, align 4, !tbaa !44
  %i.db = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.da) #20
  store float %i.db, ptr %.232109, align 4, !tbaa !44
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float>
  %i.bg = call fast <16 x float> @llvm.trunc.v16f32(<16 x float> %i.bf)
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <16 x i32> %i.bi to <16 x i16>
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec90 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec90, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index91, 1
  %next.gep92 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load93 = load <4 x i16>, ptr %next.gep92, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.trunc.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep92, align 2, !tbaa !51
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !416

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %i.aw, %n.vec90
  br i1 %cmp.n95, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.trunc.v4f32(<4 x float> %i.cc)
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !417

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.cr)
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !418

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not63 = icmp sgt i32 %i.k, %i.j
  br i1 %.not63, label %._crit_edge65, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !427
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !427
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !427
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader50

.preheader50:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph56, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.052 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03051 = phi ptr [ %i.am, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03051, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = fcmp fast ogt <8 x float> %i.ae, zeroinitializer
  %i.ag = fcmp fast olt <8 x float> %i.ae, zeroinitializer
  %6 = select <8 x i1> %i.af, <8 x i32> splat (i32 1065353216), <8 x i32> zeroinitializer
  %7 = select <8 x i1> %i.ag, <8 x i32> splat (i32 -1082130432), <8 x i32> %6 ; 2 uses
  %i.ah = shufflevector <8 x i32> %7, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <8 x i32> %7, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = lshr exact <4 x i32> %i.ah, splat (i32 16)
  %i.ak = lshr exact <4 x i32> %i.ai, splat (i32 16)
  %i.al = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aj, <4 x i32> %i.ak)
  store <8 x i16> %i.al, ptr %.03051, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03051, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.052, 8                ; 3 uses
  %i.ao = or disjoint i32 %i.an, 7
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader50, !llvm.loop !422

.preheader:                                       ; preds = %.lr.ph56, %.preheader50
  %i.ar = phi i32 [ %i.x, %.preheader50 ], [ %i.cl, %.lr.ph56 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader50 ], [ %i.ci, %.lr.ph56 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader50 ], [ %i.cj, %.lr.ph56 ] ; 5 uses
  %i.as = icmp slt i32 %.1.lcssa, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.at = xor i32 %.1.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph62.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float> ; 2 uses
  %i.bg = fcmp fast ogt <16 x float> %i.bf, zeroinitializer
  %i.bh = fcmp fast olt <16 x float> %i.bf, zeroinitializer
  %i.bi = select <16 x i1> %i.bh, <16 x i16> splat (i16 -16512), <16 x i16> zeroinitializer
  %i.bj = select <16 x i1> %i.bg, <16 x i16> splat (i16 16256), <16 x i16> %i.bi
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !423

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph62.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec92 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec92, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index93, 1
  %next.gep94 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load95 = load <4 x i16>, ptr %next.gep94, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 2 uses
  %i.bt = fcmp fast ogt <4 x float> %i.bs, zeroinitializer
  %i.bu = fcmp fast olt <4 x float> %i.bs, zeroinitializer
  %i.bv = select <4 x i1> %i.bu, <4 x i16> splat (i16 -16512), <4 x i16> zeroinitializer
  %i.bw = select <4 x i1> %i.bt, <4 x i16> splat (i16 16256), <4 x i16> %i.bv
  store <4 x i16> %i.bw, ptr %next.gep94, align 2, !tbaa !51
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !424

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.aw, %n.vec92
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.261.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23260.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph62

.lr.ph56:                                         ; preds = %.preheader50, %.lr.ph56
  %.155 = phi i32 [ %i.cj, %.lr.ph56 ], [ %.0.lcssa, %.preheader50 ]
  %.13154 = phi ptr [ %i.ci, %.lr.ph56 ], [ %.030.lcssa, %.preheader50 ] ; 3 uses
  %i.by = load i64, ptr %.13154, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>  ; 2 uses
  %i.cd = fcmp fast ogt <4 x float> %i.cc, zeroinitializer
  %i.ce = fcmp fast olt <4 x float> %i.cc, zeroinitializer
  %8 = select <4 x i1> %i.cd, <4 x i32> splat (i32 16256), <4 x i32> zeroinitializer
  %9 = select <4 x i1> %i.ce, <4 x i32> splat (i32 49024), <4 x i32> %8
  %i.cf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %9, <4 x i32> poison)
  %i.cg = bitcast <8 x i16> %i.cf to <2 x i64>
  %i.ch = extractelement <2 x i64> %i.cg, i64 0
  store i64 %i.ch, ptr %.13154, align 1, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %.13154, i64 8 ; 2 uses
  %i.cj = add nuw nsw i32 %.155, 4                ; 3 uses
  %i.ck = or disjoint i32 %i.cj, 3
  %i.cl = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph56, label %.preheader, !llvm.loop !425

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %.261 = phi i32 [ %i.cw, %.lr.ph62 ], [ %.261.ph, %.lr.ph62.preheader ]
  %.23260 = phi ptr [ %i.cv, %.lr.ph62 ], [ %.23260.ph, %.lr.ph62.preheader ] ; 3 uses
  %i.cn = load i16, ptr %.23260, align 2, !tbaa !51
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw i32 %i.co, 16
  %i.cq = bitcast i32 %i.cp to float              ; 2 uses
  %i.cr = fcmp fast ogt float %i.cq, 0.000000e+00
  %i.cs = fcmp fast olt float %i.cq, 0.000000e+00
  %i.ct = select i1 %i.cs, i16 -16512, i16 0
  %i.cu = select i1 %i.cr, i16 16256, i16 %i.ct
  store i16 %i.cu, ptr %.23260, align 2, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %.23260, i64 2
  %i.cw = add nuw nsw i32 %.261, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !426

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond72.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond72.not, label %._crit_edge65, label %.noexc

._crit_edge65:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge65, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not118 = icmp sgt i32 %i.k, %i.j
  br i1 %.not118, label %._crit_edge120, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bx, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !433
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !433
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !433
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader105

.preheader105:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bt, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph111, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0107 = phi i32 [ %i.bt, %.lr.ph ], [ 0, %.noexc ]
  %.030106 = phi ptr [ %i.bs, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030106, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 5 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae
  %i.ag = fmul fast <8 x float> %i.ae, splat (float f0x3E2AAAAB)
  %i.ah = fadd fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fmul fast <8 x float> %i.af, %i.ah
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.al, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.an = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.am, i32 1) ; 2 uses
  %i.ao = fcmp fast ogt <8 x float> %i.an, %i.am
  %i.ap = select <8 x i1> %i.ao, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aq = fsub fast <8 x float> %i.an, %i.ap      ; 2 uses
  %i.ar = fneg fast <8 x float> %i.aq             ; 2 uses
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ar, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.al)
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ar, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.as) ; 8 uses
  %i.au = fmul fast <8 x float> %i.at, %i.at
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.aw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float f0x3C088908))
  %i.ax = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float f0x3D2AA9C1))
  %i.ay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float f0x3E2AAAAA))
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float 5.000000e-01))
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.at)
  %i.bb = fadd fast <8 x float> %i.ba, splat (float 1.000000e+00)
  %i.bc = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aq)
  %i.bd = shl <8 x i32> %i.bc, splat (i32 23)
  %i.be = add <8 x i32> %i.bd, splat (i32 1065353216)
  %i.bf = bitcast <8 x i32> %i.be to <8 x float>
  %i.bg = fmul fast <8 x float> %i.bb, %i.bf
  %i.bh = fadd fast <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bi = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.bj = and <8 x i32> %i.bi, splat (i32 2147418112)
  %i.bk = bitcast <8 x i32> %i.bj to <8 x float>
  %i.bl = fcmp fast uge <8 x float> %i.bk, splat (float f0x38D1B717)
  %.v104 = select <8 x i1> %i.bl, <8 x float> %i.bh, <8 x float> %i.aj
  %i.bm = bitcast <8 x float> %.v104 to <8 x i32> ; 2 uses
  %i.bn = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bp = lshr <4 x i32> %i.bn, splat (i32 16)
  %i.bq = lshr <4 x i32> %i.bo, splat (i32 16)
  %i.br = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bp, <4 x i32> %i.bq)
  store <8 x i16> %i.br, ptr %.030106, align 1, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.030106, i64 16 ; 2 uses
  %i.bt = add nuw nsw i32 %.0107, 8               ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 7
  %i.bv = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.preheader105, !llvm.loop !430

.preheader:                                       ; preds = %.lr.ph111, %.preheader105
  %i.bx = phi i32 [ %i.x, %.preheader105 ], [ %i.dv, %.lr.ph111 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader105 ], [ %i.ds, %.lr.ph111 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader105 ], [ %i.dt, %.lr.ph111 ] ; 2 uses
  %i.by = icmp slt i32 %.1.lcssa, %i.bx
  br i1 %i.by, label %.lr.ph117, label %._crit_edge

.lr.ph111:                                        ; preds = %.preheader105, %.lr.ph111
  %.1110 = phi i32 [ %i.dt, %.lr.ph111 ], [ %.0.lcssa, %.preheader105 ]
  %.131109 = phi ptr [ %i.ds, %.lr.ph111 ], [ %.030.lcssa, %.preheader105 ] ; 3 uses
  %i.bz = load i64, ptr %.131109, align 1, !tbaa !41
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 5 uses
  %i.ce = fmul fast <4 x float> %i.cd, %i.cd
  %i.cf = fmul fast <4 x float> %i.cd, splat (float f0x3E2AAAAB)
  %i.cg = fadd fast <4 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = fmul fast <4 x float> %i.ce, %i.cg
  %i.ci = fadd fast <4 x float> %i.ch, %i.cd
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cl = fmul fast <4 x float> %i.ck, splat (float f0x3FB8AA3B)
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 5.000000e-01) ; 2 uses
  %i.cn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.co = sitofp fast <4 x i32> %i.cn to <4 x float> ; 2 uses
  %i.cp = fcmp fast olt <4 x float> %i.cm, %i.co
  %i.cq = select <4 x i1> %i.cp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cr = fsub fast <4 x float> %i.co, %i.cq      ; 2 uses
  %i.cs = fneg fast <4 x float> %i.cr             ; 2 uses
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cs, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ck)
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ct) ; 8 uses
  %i.cv = fmul fast <4 x float> %i.cu, %i.cu
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x3C088908))
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x3D2AA9C1))
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x3E2AAAAA))
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float 5.000000e-01))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.da, <4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cu)
  %i.dc = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cr)
end_hunk_1
