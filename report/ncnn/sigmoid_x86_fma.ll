Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/sigmoid_x86_fma?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZNK4ncnn15Sigmoid_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !31 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL13sigmoid_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.h = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !22
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %.not136 = icmp sgt i32 %i.k, %i.j
  br i1 %.not136, label %._crit_edge138, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !22
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bq, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !24, !noalias !68
  %i.r = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !68
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !68
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader123

.preheader123:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bo, %.lr.ph ] ; 2 uses
  %.038.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bl, %.lr.ph ] ; 2 uses
  %.037.lcssa = phi i32 [ 0, %.noexc ], [ %i.bm, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.037.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph129, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037125 = phi i32 [ %i.bm, %.lr.ph ], [ 0, %.noexc ]
  %.038124 = phi ptr [ %i.bl, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.038124, align 1, !tbaa !26 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = fneg fast <8 x float> %i.ae
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0x42B0C0A5))
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
  %i.bd = fadd fast <8 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bd
  %i.bf = bitcast <8 x float> %i.be to <8 x i32>  ; 2 uses
  %i.bg = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bh = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bi = lshr <4 x i32> %i.bg, splat (i32 16)
  %i.bj = lshr <4 x i32> %i.bh, splat (i32 16)
  %i.bk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bi, <4 x i32> %i.bj)
  store <8 x i16> %i.bk, ptr %.038124, align 1, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.038124, i64 16 ; 2 uses
  %i.bm = add nuw nsw i32 %.037125, 8             ; 3 uses
  %i.bn = or disjoint i32 %i.bm, 7
  %i.bo = load i32, ptr %4, align 4, !tbaa !22    ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph, label %.preheader123, !llvm.loop !63

.preheader:                                       ; preds = %.lr.ph129, %.preheader123
  %i.bq = phi i32 [ %i.x, %.preheader123 ], [ %i.es, %.lr.ph129 ] ; 4 uses
  %.139.lcssa = phi ptr [ %.038.lcssa, %.preheader123 ], [ %i.ep, %.lr.ph129 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.037.lcssa, %.preheader123 ], [ %i.eq, %.lr.ph129 ] ; 5 uses
  %i.br = icmp slt i32 %.1.lcssa, %i.bq
  br i1 %i.br, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bs = xor i32 %.1.lcssa, -1
  %i.bt = add i32 %i.bq, %i.bs                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bt, 3
  br i1 %min.iters.check, label %.lr.ph135.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check163 = icmp ult i32 %i.bt, 15
  br i1 %min.iters.check163, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bv, 12
  %n.vec = and i64 %i.bv, 8589934576              ; 5 uses
  %i.bx = trunc i64 %n.vec to i32
  %i.by = add i32 %.1.lcssa, %i.bx
  %i.bz = shl nuw nsw i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %.139.lcssa, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.139.lcssa, i64 %i.cb ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !70
  %i.cc = zext <16 x i16> %wide.load to <16 x i32>
  %i.cd = shl nuw <16 x i32> %i.cc, splat (i32 16)
  %i.ce = bitcast <16 x i32> %i.cd to <16 x float>
  %i.cf = fneg fast <16 x float> %i.ce
  %i.cg = call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.cf)
  %i.ch = fadd fast <16 x float> %i.cg, splat (float 1.000000e+00)
  %i.ci = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ch
  %i.cj = bitcast <16 x float> %i.ci to <16 x i32>
  %i.ck = lshr <16 x i32> %i.cj, splat (i32 16)
  %i.cl = trunc nuw nsw <16 x i32> %i.ck to <16 x i16>
  store <16 x i16> %i.cl, ptr %next.gep, align 2, !tbaa !70
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph135.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.bv, 8589934588           ; 4 uses
  %i.cn = trunc i64 %n.vec164 to i32
  %i.co = add i32 %.1.lcssa, %i.cn
  %i.cp = shl nuw nsw i64 %n.vec164, 1
  %i.cq = getelementptr i8, ptr %.139.lcssa, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = shl i64 %index165, 1
  %next.gep166 = getelementptr i8, ptr %.139.lcssa, i64 %i.cr ; 2 uses
  %wide.load167 = load <4 x i16>, ptr %next.gep166, align 2, !tbaa !70
  %i.cs = zext <4 x i16> %wide.load167 to <4 x i32>
  %i.ct = shl nuw <4 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <4 x i32> %i.ct to <4 x float>
  %i.cv = fneg fast <4 x float> %i.cu
  %i.cw = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cv)
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cx
  %i.cz = bitcast <4 x float> %i.cy to <4 x i32>
  %i.da = lshr <4 x i32> %i.cz, splat (i32 16)
  %i.db = trunc nuw nsw <4 x i32> %i.da to <4 x i16>
  store <4 x i16> %i.db, ptr %next.gep166, align 2, !tbaa !70
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %i.bv, %n.vec164
  br i1 %cmp.n169, label %._crit_edge, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2134.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.240133.ph = phi ptr [ %.139.lcssa, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph135

.lr.ph129:                                        ; preds = %.preheader123, %.lr.ph129
  %.1128 = phi i32 [ %i.eq, %.lr.ph129 ], [ %.037.lcssa, %.preheader123 ]
  %.139127 = phi ptr [ %i.ep, %.lr.ph129 ], [ %.038.lcssa, %.preheader123 ] ; 3 uses
  %i.dd = load i64, ptr %.139127, align 1, !tbaa !26
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = bitcast <2 x i64> %i.de to <8 x i16>
  %i.dg = shufflevector <8 x i16> %i.df, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dh = bitcast <8 x i16> %i.dg to <4 x float>
  %i.di = fneg fast <4 x float> %i.dh
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0x42B0C0A5))
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dl = fmul fast <4 x float> %i.dk, splat (float f0x3FB8AA3B)
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01) ; 2 uses
  %i.dn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dm)
  %i.do = sitofp fast <4 x i32> %i.dn to <4 x float> ; 2 uses
  %i.dp = fcmp fast olt <4 x float> %i.dm, %i.do
  %i.dq = select <4 x i1> %i.dp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dr = fsub fast <4 x float> %i.do, %i.dq      ; 2 uses
  %i.ds = fneg fast <4 x float> %i.dr             ; 2 uses
  %i.dt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ds, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dk)
  %i.du = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ds, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dt) ; 8 uses
  %i.dv = fmul fast <4 x float> %i.du, %i.du
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float f0x3C088908))
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float f0x3D2AA9C1))
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float f0x3E2AAAAA))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float 5.000000e-01))
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.du)
  %i.ec = fadd fast <4 x float> %i.eb, splat (float 1.000000e+00)
  %i.ed = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.ee = shl <4 x i32> %i.ed, splat (i32 23)
  %i.ef = add <4 x i32> %i.ee, splat (i32 1065353216)
  %i.eg = bitcast <4 x i32> %i.ef to <4 x float>
  %i.eh = fmul fast <4 x float> %i.ec, %i.eg
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ei
  %i.ek = bitcast <4 x float> %i.ej to <4 x i32>
  %i.el = lshr <4 x i32> %i.ek, splat (i32 16)
  %i.em = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.el, <4 x i32> poison)
  %i.en = bitcast <8 x i16> %i.em to <2 x i64>
  %i.eo = extractelement <2 x i64> %i.en, i64 0
  store i64 %i.eo, ptr %.139127, align 1, !tbaa !26
  %i.ep = getelementptr inbounds nuw i8, ptr %.139127, i64 8 ; 2 uses
  %i.eq = add nuw nsw i32 %.1128, 4               ; 3 uses
  %i.er = or disjoint i32 %i.eq, 3
  %i.es = load i32, ptr %4, align 4, !tbaa !22    ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph129, label %.preheader, !llvm.loop !66

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %.lr.ph135
  %.2134 = phi i32 [ %i.fg, %.lr.ph135 ], [ %.2134.ph, %.lr.ph135.preheader ]
  %.240133 = phi ptr [ %i.ff, %.lr.ph135 ], [ %.240133.ph, %.lr.ph135.preheader ] ; 3 uses
  %i.eu = load i16, ptr %.240133, align 2, !tbaa !70
  %i.ev = zext i16 %i.eu to i32
  %i.ew = shl nuw i32 %i.ev, 16
  %i.ex = bitcast i32 %i.ew to float
  %i.ey = fneg fast float %i.ex
  %i.ez = call fast float @llvm.exp.f32(float %i.ey)
  %i.fa = fadd fast float %i.ez, 1.000000e+00
  %i.fb = fdiv fast float 1.000000e+00, %i.fa
  %i.fc = bitcast float %i.fb to i32
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = trunc nuw nsw i32 %i.fd to i16
  store i16 %i.fe, ptr %.240133, align 2, !tbaa !70
  %i.ff = getelementptr inbounds nuw i8, ptr %.240133, i64 2
  %i.fg = add nuw nsw i32 %.2134, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fg, %i.bq
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph135, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph135, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond145.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond145.not, label %._crit_edge138, label %.noexc

._crit_edge138:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.exp.v16f32(<16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!12 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !11, i64 8, !11, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!16 = !{!15, !6, i64 24}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !6, i64 44}
!19 = !{!15, !6, i64 48}
!20 = !{!15, !6, i64 52}
!21 = !{!15, !6, i64 56}
!22 = !{!6, !6, i64 0}
!23 = !{!12, !6, i64 4}
!24 = !{!15, !10, i64 0}
!25 = !{!15, !14, i64 64}
!26 = !{!5, !5, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{i64 2, i64 -1, i64 -1, i1 true}
!31 = !{!30}
!32 = !{!12, !9, i64 32}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!"vtable pointer", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 omnipotent char", !10, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !14, i64 8, !5, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIiSaIiEE", !42, i64 0}
!44 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !39, i64 48, !39, i64 80, !43, i64 112, !43, i64 136, !48, i64 160, !48, i64 184}
!50 = !{!49, !9, i64 11}
!51 = !{!49, !9, i64 12}
!52 = distinct !{!52, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27, !28, !29}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27, !29, !28}
!58 = !{!53}
!59 = !{!"float", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = distinct !{!61, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!62 = distinct !{!62, !61, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!63 = distinct !{!63, !27}
!64 = distinct !{!64, !27, !28, !29}
!65 = distinct !{!65, !27, !28, !29}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27, !29, !28}
!68 = !{!62}
!69 = !{!"short", !5, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
