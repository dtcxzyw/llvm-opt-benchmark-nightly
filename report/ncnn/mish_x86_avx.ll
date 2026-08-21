Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mish_x86_avx?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn12Mish_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.p = mul nsw i32 %i.i, %i.g
  %i.q = mul nsw i32 %i.p, %i.k
  %i.r = mul nsw i32 %i.q, %i.o                   ; 2 uses
  store i32 %i.r, ptr %i.d, align 4, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !20, !range !23, !noundef !24
  %i.u = trunc nuw i8 %i.t to i1
  %.not.i = icmp ne i32 %i.o, 0
  %or.cond.not = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %.tr.i = trunc i64 %i.w to i32
  %i.x = shl i32 %.tr.i, 3
  %i.y = sdiv i32 %i.x, %i.o
  %i.z = icmp eq i32 %i.y, 16
  br i1 %i.z, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %i.m, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.r, ptr %i.b, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ab)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ad)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn12Mish_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12Mish_x86_avxC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn4MishC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn12Mish_x86_avxE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !43
  ret void
}

declare void @_ZN4ncnn4MishC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn12Mish_x86_avx21forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17
  store i32 %i.k, ptr %i.a, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.n = mul nsw i32 %i.g, %i.e
  %i.o = mul nsw i32 %i.n, %i.i
  %i.p = mul nsw i32 %i.o, %i.m
  store i32 %i.p, ptr %i.b, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn12Mish_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not314 = icmp sgt i32 %i.k, %i.j
  br i1 %.not314, label %._crit_edge316, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ec, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !45
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !45
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !45
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader301

.preheader301:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.034.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dx, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dy, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph307, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0303 = phi i32 [ %i.dy, %.lr.ph ], [ 0, %.noexc ]
  %.034302 = phi ptr [ %i.dx, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.034302, align 1, !tbaa !49 ; 2 uses
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ad = fmul fast <8 x float> %i.ac, splat (float f0x3FB8AA3B)
  %i.ae = fadd fast <8 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ae, i32 1) ; 2 uses
  %i.ag = fcmp fast ogt <8 x float> %i.af, %i.ae
  %i.ah = select <8 x i1> %i.ag, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ai = fsub fast <8 x float> %i.af, %i.ah      ; 2 uses
  %i.aj = fmul fast <8 x float> %i.ai, splat (float f0x3F317218)
  %i.ak = fsub fast <8 x float> %i.ac, %i.aj      ; 8 uses
  %i.al = fmul fast <8 x float> %i.ak, %i.ak
  %i.am = fmul fast <8 x float> %i.ak, splat (float f0x39506967)
  %i.an = fadd fast <8 x float> %i.am, splat (float f0x3AB743CE)
  %i.ao = fmul fast <8 x float> %i.an, %i.ak
  %i.ap = fadd fast <8 x float> %i.ao, splat (float f0x3C088908)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ak
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3D2AA9C1)
  %i.as = fmul fast <8 x float> %i.ar, %i.ak
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3E2AAAAA)
  %i.au = fmul fast <8 x float> %i.at, %i.ak
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <8 x float> %i.al, %i.av
  %i.ax = fadd fast <8 x float> %i.ak, splat (float 1.000000e+00)
  %i.ay = fadd fast <8 x float> %i.ax, %i.aw
  %i.az = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ba = shl <8 x i32> %i.az, splat (i32 23)
  %i.bb = add <8 x i32> %i.ba, splat (i32 1065353216)
  %i.bc = bitcast <8 x i32> %i.bb to <8 x float>
  %i.bd = fmul fast <8 x float> %i.ay, %i.bc
  %i.be = fadd fast <8 x float> %i.bd, splat (float 1.000000e+00) ; 2 uses
  %i.bf = fcmp fast ole <8 x float> %i.be, zeroinitializer
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bh = bitcast <8 x float> %i.bg to <8 x i32>
  %i.bi = bitcast <8 x float> %i.bg to <8 x i32>
  %i.bj = and <8 x i32> %i.bi, splat (i32 -2139095041)
  %i.bk = or disjoint <8 x i32> %i.bj, splat (i32 1056964608)
  %i.bl = bitcast <8 x i32> %i.bk to <8 x float>  ; 3 uses
  %i.bm = lshr <8 x i32> %i.bh, splat (i32 23)
  %i.bn = add nsw <8 x i32> %i.bm, splat (i32 -127)
  %i.bo = sitofp fast <8 x i32> %i.bn to <8 x float> ; 2 uses
  %i.bp = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00)
  %i.bq = fcmp fast olt <8 x float> %i.bl, splat (float f0x3F3504F3) ; 2 uses
  %i.br = select <8 x i1> %i.bq, <8 x float> %i.bl, <8 x float> zeroinitializer
  %i.bs = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bt = select fast <8 x i1> %i.bq, <8 x float> %i.bo, <8 x float> %i.bp
  %i.bu = fadd fast <8 x float> %i.bs, %i.br      ; 12 uses
  %i.bv = fmul fast <8 x float> %i.bu, %i.bu
  %i.bw = fmul fast <8 x float> %i.bu, splat (float f0x3D9021BB)
  %i.bx = fadd fast <8 x float> %i.bw, splat (float f0xBDEBD1B8)
  %i.by = fmul fast <8 x float> %i.bx, %i.bu
  %i.bz = fadd fast <8 x float> %i.by, splat (float f0x3DEF251A)
  %i.ca = fmul fast <8 x float> %i.bz, %i.bu
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0xBDFE5D4F)
  %i.cc = fmul fast <8 x float> %i.cb, %i.bu
  %i.cd = fadd fast <8 x float> %i.cc, splat (float f0x3E11E9BF)
  %i.ce = fmul fast <8 x float> %i.cd, %i.bu
  %i.cf = fadd fast <8 x float> %i.ce, splat (float f0xBE2AAE50)
  %i.cg = fmul fast <8 x float> %i.cf, %i.bu
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0x3E4CCEAC)
  %i.ci = fmul fast <8 x float> %i.ch, %i.bu
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0xBE7FFFFC)
  %i.ck = fmul fast <8 x float> %i.cj, %i.bu
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3EAAAAAA)
  %i.cm = fmul fast <8 x float> %i.cl, %i.bu
  %reass.mul298 = fmul fast <8 x float> %i.bt, splat (float f0x3F317218)
  %reass.add299 = fadd fast <8 x float> %i.cm, splat (float -5.000000e-01)
  %reass.mul300 = fmul fast <8 x float> %i.bv, %reass.add299
  %i.cn = fadd fast <8 x float> %reass.mul298, %i.bu
  %i.co = fadd fast <8 x float> %i.cn, %reass.mul300
  %.neg293 = fmul fast <8 x float> %i.co, splat (float -2.000000e+00)
  %i.cp = select fast <8 x i1> %i.bf, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg293
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> splat (float f0x42B0C0A5))
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cs = fmul fast <8 x float> %i.cr, splat (float f0x3FB8AA3B)
  %i.ct = fadd fast <8 x float> %i.cs, splat (float 5.000000e-01) ; 2 uses
  %i.cu = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ct, i32 1) ; 2 uses
  %i.cv = fcmp fast ogt <8 x float> %i.cu, %i.ct
  %i.cw = select <8 x i1> %i.cv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cx = fsub fast <8 x float> %i.cu, %i.cw      ; 2 uses
  %i.cy = fmul fast <8 x float> %i.cx, splat (float f0x3F317218)
  %i.cz = fsub fast <8 x float> %i.cr, %i.cy      ; 8 uses
  %i.da = fmul fast <8 x float> %i.cz, %i.cz
  %i.db = fmul fast <8 x float> %i.cz, splat (float f0x39506967)
  %i.dc = fadd fast <8 x float> %i.db, splat (float f0x3AB743CE)
  %i.dd = fmul fast <8 x float> %i.dc, %i.cz
  %i.de = fadd fast <8 x float> %i.dd, splat (float f0x3C088908)
  %i.df = fmul fast <8 x float> %i.de, %i.cz
  %i.dg = fadd fast <8 x float> %i.df, splat (float f0x3D2AA9C1)
  %i.dh = fmul fast <8 x float> %i.dg, %i.cz
  %i.di = fadd fast <8 x float> %i.dh, splat (float f0x3E2AAAAA)
  %i.dj = fmul fast <8 x float> %i.di, %i.cz
  %i.dk = fadd fast <8 x float> %i.dj, splat (float 5.000000e-01)
  %i.dl = fmul fast <8 x float> %i.da, %i.dk
  %i.dm = fadd fast <8 x float> %i.cz, splat (float 1.000000e+00)
  %i.dn = fadd fast <8 x float> %i.dm, %i.dl
  %i.do = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cx)
  %i.dp = shl <8 x i32> %i.do, splat (i32 23)
  %i.dq = add <8 x i32> %i.dp, splat (i32 1065353216)
  %i.dr = bitcast <8 x i32> %i.dq to <8 x float>
  %i.ds = fmul fast <8 x float> %i.dn, %i.dr
  %i.dt = fadd fast <8 x float> %i.ds, splat (float 1.000000e+00)
  %i.du = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dt
  %i.dv = fadd fast <8 x float> %i.du, splat (float -1.000000e+00)
  %i.dw = fmul fast <8 x float> %i.dv, %i.aa
  store <8 x float> %i.dw, ptr %.034302, align 1, !tbaa !49
  %i.dx = getelementptr inbounds nuw i8, ptr %.034302, i64 32 ; 2 uses
  %i.dy = add nuw nsw i32 %.0303, 8               ; 3 uses
  %i.dz = or disjoint i32 %i.dy, 7
  %i.ea = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph, label %.preheader301, !llvm.loop !50

.preheader:                                       ; preds = %.lr.ph307, %.preheader301
  %i.ec = phi i32 [ %i.x, %.preheader301 ], [ %i.ip, %.lr.ph307 ] ; 5 uses
  %.135.lcssa = phi ptr [ %.034.lcssa, %.preheader301 ], [ %i.im, %.lr.ph307 ] ; 4 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader301 ], [ %i.in, %.lr.ph307 ] ; 5 uses
  %i.ed = icmp slt i32 %.1.lcssa, %i.ec
  br i1 %i.ed, label %.lr.ph313.preheader, label %._crit_edge

.lr.ph313.preheader:                              ; preds = %.preheader
  %i.ee = sub i32 %i.ec, %.1.lcssa
  %.neg346 = add i32 %.1.lcssa, 1
  %xtraiter = and i32 %i.ee, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph313.prol.loopexit, label %.lr.ph313.prol

.lr.ph313.prol:                                   ; preds = %.lr.ph313.preheader
  %i.ef = load float, ptr %.135.lcssa, align 4, !tbaa !52 ; 2 uses
  %i.eg = call fast float @llvm.exp.f32(float %i.ef)
  %i.eh = fadd fast float %i.eg, 1.000000e+00
  %i.ei = call fast float @llvm.log.f32(float %i.eh)
  %i.ej = call fast float @llvm.tanh.f32(float %i.ei)
  %i.ek = fmul fast float %i.ej, %i.ef
  store float %i.ek, ptr %.135.lcssa, align 4, !tbaa !52
  %i.el = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 4
  %i.em = add nuw nsw i32 %.1.lcssa, 1
  br label %.lr.ph313.prol.loopexit

.lr.ph313.prol.loopexit:                          ; preds = %.lr.ph313.prol, %.lr.ph313.preheader
  %.2312.unr = phi i32 [ %.1.lcssa, %.lr.ph313.preheader ], [ %i.em, %.lr.ph313.prol ]
  %.236311.unr = phi ptr [ %.135.lcssa, %.lr.ph313.preheader ], [ %i.el, %.lr.ph313.prol ]
  %i.en = icmp eq i32 %i.ec, %.neg346
  br i1 %i.en, label %._crit_edge, label %.lr.ph313

.lr.ph307:                                        ; preds = %.preheader301, %.lr.ph307
  %.1306 = phi i32 [ %i.in, %.lr.ph307 ], [ %.0.lcssa, %.preheader301 ]
  %.135305 = phi ptr [ %i.im, %.lr.ph307 ], [ %.034.lcssa, %.preheader301 ] ; 3 uses
  %i.eo = load <4 x float>, ptr %.135305, align 1, !tbaa !49 ; 2 uses
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> splat (float f0x42B0C0A5))
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.er = fmul fast <4 x float> %i.eq, splat (float f0x3FB8AA3B)
  %i.es = fadd fast <4 x float> %i.er, splat (float 5.000000e-01) ; 2 uses
  %i.et = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.es)
  %i.eu = sitofp fast <4 x i32> %i.et to <4 x float> ; 2 uses
  %i.ev = fcmp fast olt <4 x float> %i.es, %i.eu
  %i.ew = select <4 x i1> %i.ev, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ex = fsub fast <4 x float> %i.eu, %i.ew      ; 2 uses
  %i.ey = fmul fast <4 x float> %i.ex, splat (float f0x3F317218)
  %i.ez = fsub fast <4 x float> %i.eq, %i.ey      ; 8 uses
  %i.fa = fmul fast <4 x float> %i.ez, %i.ez
  %i.fb = fmul fast <4 x float> %i.ez, splat (float f0x39506967)
  %i.fc = fadd fast <4 x float> %i.fb, splat (float f0x3AB743CE)
  %i.fd = fmul fast <4 x float> %i.fc, %i.ez
  %i.fe = fadd fast <4 x float> %i.fd, splat (float f0x3C088908)
  %i.ff = fmul fast <4 x float> %i.fe, %i.ez
  %i.fg = fadd fast <4 x float> %i.ff, splat (float f0x3D2AA9C1)
  %i.fh = fmul fast <4 x float> %i.fg, %i.ez
  %i.fi = fadd fast <4 x float> %i.fh, splat (float f0x3E2AAAAA)
  %i.fj = fmul fast <4 x float> %i.fi, %i.ez
  %i.fk = fadd fast <4 x float> %i.fj, splat (float 5.000000e-01)
  %i.fl = fmul fast <4 x float> %i.fa, %i.fk
  %i.fm = fadd fast <4 x float> %i.ez, splat (float 1.000000e+00)
  %i.fn = fadd fast <4 x float> %i.fm, %i.fl
  %i.fo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ex)
  %i.fp = shl <4 x i32> %i.fo, splat (i32 23)
  %i.fq = add <4 x i32> %i.fp, splat (i32 1065353216)
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>
  %i.fs = fmul fast <4 x float> %i.fn, %i.fr
  %i.ft = fadd fast <4 x float> %i.fs, splat (float 1.000000e+00) ; 2 uses
  %i.fu = fcmp fast ole <4 x float> %i.ft, zeroinitializer
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> splat (float f0x00800000))
  %i.fw = bitcast <4 x float> %i.fv to <4 x i32>  ; 2 uses
  %i.fx = lshr <4 x i32> %i.fw, splat (i32 23)
  %i.fy = and <4 x i32> %i.fw, splat (i32 -2139095041)
  %i.fz = or disjoint <4 x i32> %i.fy, splat (i32 1056964608)
  %i.ga = bitcast <4 x i32> %i.fz to <4 x float>  ; 3 uses
  %i.gb = add nsw <4 x i32> %i.fx, splat (i32 -127)
  %i.gc = sitofp fast <4 x i32> %i.gb to <4 x float> ; 2 uses
  %i.gd = fadd fast <4 x float> %i.gc, splat (float 1.000000e+00)
  %i.ge = fcmp fast olt <4 x float> %i.ga, splat (float f0x3F3504F3) ; 2 uses
  %i.gf = select <4 x i1> %i.ge, <4 x float> %i.ga, <4 x float> zeroinitializer
  %i.gg = fadd fast <4 x float> %i.ga, splat (float -1.000000e+00)
  %i.gh = select fast <4 x i1> %i.ge, <4 x float> %i.gc, <4 x float> %i.gd
  %i.gi = fadd fast <4 x float> %i.gg, %i.gf      ; 12 uses
  %i.gj = fmul fast <4 x float> %i.gi, %i.gi
  %i.gk = fmul fast <4 x float> %i.gi, splat (float f0x3D9021BB)
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0xBDEBD1B8)
  %i.gm = fmul fast <4 x float> %i.gl, %i.gi
  %i.gn = fadd fast <4 x float> %i.gm, splat (float f0x3DEF251A)
  %i.go = fmul fast <4 x float> %i.gn, %i.gi
  %i.gp = fadd fast <4 x float> %i.go, splat (float f0xBDFE5D4F)
  %i.gq = fmul fast <4 x float> %i.gp, %i.gi
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3E11E9BF)
  %i.gs = fmul fast <4 x float> %i.gr, %i.gi
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0xBE2AAE50)
  %i.gu = fmul fast <4 x float> %i.gt, %i.gi
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3E4CCEAC)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gi
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0xBE7FFFFC)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gi
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3EAAAAAA)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gi
  %reass.mul.a = fmul fast <4 x float> %i.gh, splat (float f0x3F317218)
  %reass.add295 = fadd fast <4 x float> %i.ha, splat (float -5.000000e-01)
  %reass.mul296 = fmul fast <4 x float> %i.gj, %reass.add295
  %i.hb = fadd fast <4 x float> %reass.mul.a, %i.gi
  %i.hc = fadd fast <4 x float> %i.hb, %reass.mul296
  %.neg = fmul fast <4 x float> %i.hc, splat (float -2.000000e+00)
  %i.hd = select fast <4 x i1> %i.fu, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.he = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hd, <4 x float> splat (float f0x42B0C0A5))
  %i.hf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.he, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hg = fmul fast <4 x float> %i.hf, splat (float f0x3FB8AA3B)
  %i.hh = fadd fast <4 x float> %i.hg, splat (float 5.000000e-01) ; 2 uses
  %i.hi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hh)
  %i.hj = sitofp fast <4 x i32> %i.hi to <4 x float> ; 2 uses
  %i.hk = fcmp fast olt <4 x float> %i.hh, %i.hj
  %i.hl = select <4 x i1> %i.hk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hm = fsub fast <4 x float> %i.hj, %i.hl      ; 2 uses
  %i.hn = fmul fast <4 x float> %i.hm, splat (float f0x3F317218)
  %i.ho = fsub fast <4 x float> %i.hf, %i.hn      ; 8 uses
  %i.hp = fmul fast <4 x float> %i.ho, %i.ho
  %i.hq = fmul fast <4 x float> %i.ho, splat (float f0x39506967)
  %i.hr = fadd fast <4 x float> %i.hq, splat (float f0x3AB743CE)
  %i.hs = fmul fast <4 x float> %i.hr, %i.ho
  %i.ht = fadd fast <4 x float> %i.hs, splat (float f0x3C088908)
  %i.hu = fmul fast <4 x float> %i.ht, %i.ho
  %i.hv = fadd fast <4 x float> %i.hu, splat (float f0x3D2AA9C1)
  %i.hw = fmul fast <4 x float> %i.hv, %i.ho
  %i.hx = fadd fast <4 x float> %i.hw, splat (float f0x3E2AAAAA)
  %i.hy = fmul fast <4 x float> %i.hx, %i.ho
  %i.hz = fadd fast <4 x float> %i.hy, splat (float 5.000000e-01)
  %i.ia = fmul fast <4 x float> %i.hp, %i.hz
  %i.ib = fadd fast <4 x float> %i.ho, splat (float 1.000000e+00)
  %i.ic = fadd fast <4 x float> %i.ib, %i.ia
  %i.id = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hm)
  %i.ie = shl <4 x i32> %i.id, splat (i32 23)
  %i.if = add <4 x i32> %i.ie, splat (i32 1065353216)
  %i.ig = bitcast <4 x i32> %i.if to <4 x float>
  %i.ih = fmul fast <4 x float> %i.ic, %i.ig
  %i.ii = fadd fast <4 x float> %i.ih, splat (float 1.000000e+00)
  %i.ij = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ii
  %i.ik = fadd fast <4 x float> %i.ij, splat (float -1.000000e+00)
  %i.il = fmul fast <4 x float> %i.ik, %i.eo
  store <4 x float> %i.il, ptr %.135305, align 1, !tbaa !49
  %i.im = getelementptr inbounds nuw i8, ptr %.135305, i64 16 ; 2 uses
  %i.in = add nuw nsw i32 %.1306, 4               ; 3 uses
  %i.io = or disjoint i32 %i.in, 3
  %i.ip = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %.lr.ph307, label %.preheader, !llvm.loop !54

.lr.ph313:                                        ; preds = %.lr.ph313.prol.loopexit, %.lr.ph313
  %.2312 = phi i32 [ %i.jf, %.lr.ph313 ], [ %.2312.unr, %.lr.ph313.prol.loopexit ]
  %.236311 = phi ptr [ %i.je, %.lr.ph313 ], [ %.236311.unr, %.lr.ph313.prol.loopexit ] ; 4 uses
  %i.ir = load float, ptr %.236311, align 4, !tbaa !52 ; 2 uses
  %i.is = call fast float @llvm.exp.f32(float %i.ir)
  %i.it = fadd fast float %i.is, 1.000000e+00
  %i.iu = call fast float @llvm.log.f32(float %i.it)
  %i.iv = call fast float @llvm.tanh.f32(float %i.iu)
  %i.iw = fmul fast float %i.iv, %i.ir
  store float %i.iw, ptr %.236311, align 4, !tbaa !52
  %i.ix = getelementptr inbounds nuw i8, ptr %.236311, i64 4 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !52 ; 2 uses
  %i.iz = call fast float @llvm.exp.f32(float %i.iy)
  %i.ja = fadd fast float %i.iz, 1.000000e+00
  %i.jb = call fast float @llvm.log.f32(float %i.ja)
  %i.jc = call fast float @llvm.tanh.f32(float %i.jb)
  %i.jd = fmul fast float %i.jc, %i.iy
  store float %i.jd, ptr %i.ix, align 4, !tbaa !52
  %i.je = getelementptr inbounds nuw i8, ptr %.236311, i64 8
  %i.jf = add nuw nsw i32 %.2312, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jf, %i.ec
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph313, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph313.prol.loopexit, %.lr.ph313, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond323.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond323.not, label %._crit_edge316, label %.noexc

._crit_edge316:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge316, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !56 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not318 = icmp sgt i32 %i.k, %i.j
  br i1 %.not318, label %._crit_edge320, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.em, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !58
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !58
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !58
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader305

.preheader305:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ek, %.lr.ph ] ; 2 uses
  %.033.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.eh, %.lr.ph ] ; 2 uses
  %.032.lcssa = phi i32 [ 0, %.noexc ], [ %i.ei, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.032.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph311, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.032307 = phi i32 [ %i.ei, %.lr.ph ], [ 0, %.noexc ]
  %.033306 = phi ptr [ %i.eh, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.033306, align 1, !tbaa !49 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = fmul fast <8 x float> %i.ag, splat (float f0x3FB8AA3B)
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fmul fast <8 x float> %i.am, splat (float f0x3F317218)
  %i.ao = fsub fast <8 x float> %i.ag, %i.an      ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = fmul fast <8 x float> %i.ao, splat (float f0x39506967)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3AB743CE)
  %i.as = fmul fast <8 x float> %i.ar, %i.ao
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3C088908)
  %i.au = fmul fast <8 x float> %i.at, %i.ao
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3D2AA9C1)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3E2AAAAA)
  %i.ay = fmul fast <8 x float> %i.ax, %i.ao
  %i.az = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <8 x float> %i.ap, %i.az
  %i.bb = fadd fast <8 x float> %i.ao, splat (float 1.000000e+00)
  %i.bc = fadd fast <8 x float> %i.bb, %i.ba
  %i.bd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.be = shl <8 x i32> %i.bd, splat (i32 23)
  %i.bf = add <8 x i32> %i.be, splat (i32 1065353216)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bc, %i.bg
  %i.bi = fadd fast <8 x float> %i.bh, splat (float 1.000000e+00) ; 2 uses
  %i.bj = fcmp fast ole <8 x float> %i.bi, zeroinitializer
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bl = bitcast <8 x float> %i.bk to <8 x i32>
  %i.bm = bitcast <8 x float> %i.bk to <8 x i32>
  %i.bn = and <8 x i32> %i.bm, splat (i32 -2139095041)
  %i.bo = or disjoint <8 x i32> %i.bn, splat (i32 1056964608)
  %i.bp = bitcast <8 x i32> %i.bo to <8 x float>  ; 3 uses
  %i.bq = lshr <8 x i32> %i.bl, splat (i32 23)
  %i.br = add nsw <8 x i32> %i.bq, splat (i32 -127)
  %i.bs = sitofp fast <8 x i32> %i.br to <8 x float> ; 2 uses
  %i.bt = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00)
  %i.bu = fcmp fast olt <8 x float> %i.bp, splat (float f0x3F3504F3) ; 2 uses
  %i.bv = select <8 x i1> %i.bu, <8 x float> %i.bp, <8 x float> zeroinitializer
  %i.bw = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.bx = select fast <8 x i1> %i.bu, <8 x float> %i.bs, <8 x float> %i.bt
  %i.by = fadd fast <8 x float> %i.bw, %i.bv      ; 12 uses
  %i.bz = fmul fast <8 x float> %i.by, %i.by
  %i.ca = fmul fast <8 x float> %i.by, splat (float f0x3D9021BB)
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0xBDEBD1B8)
  %i.cc = fmul fast <8 x float> %i.cb, %i.by
  %i.cd = fadd fast <8 x float> %i.cc, splat (float f0x3DEF251A)
  %i.ce = fmul fast <8 x float> %i.cd, %i.by
  %i.cf = fadd fast <8 x float> %i.ce, splat (float f0xBDFE5D4F)
  %i.cg = fmul fast <8 x float> %i.cf, %i.by
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0x3E11E9BF)
  %i.ci = fmul fast <8 x float> %i.ch, %i.by
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0xBE2AAE50)
  %i.ck = fmul fast <8 x float> %i.cj, %i.by
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3E4CCEAC)
  %i.cm = fmul fast <8 x float> %i.cl, %i.by
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0xBE7FFFFC)
  %i.co = fmul fast <8 x float> %i.cn, %i.by
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0x3EAAAAAA)
  %i.cq = fmul fast <8 x float> %i.cp, %i.by
  %reass.mul302 = fmul fast <8 x float> %i.bx, splat (float f0x3F317218)
  %reass.add303 = fadd fast <8 x float> %i.cq, splat (float -5.000000e-01)
  %reass.mul304 = fmul fast <8 x float> %i.bz, %reass.add303
  %i.cr = fadd fast <8 x float> %reass.mul302, %i.by
  %i.cs = fadd fast <8 x float> %i.cr, %reass.mul304
  %.neg297 = fmul fast <8 x float> %i.cs, splat (float -2.000000e+00)
  %i.ct = select fast <8 x i1> %i.bj, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg297
  %i.cu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ct, <8 x float> splat (float f0x42B0C0A5))
  %i.cv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cw = fmul fast <8 x float> %i.cv, splat (float f0x3FB8AA3B)
  %i.cx = fadd fast <8 x float> %i.cw, splat (float 5.000000e-01) ; 2 uses
  %i.cy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cx, i32 1) ; 2 uses
  %i.cz = fcmp fast ogt <8 x float> %i.cy, %i.cx
  %i.da = select <8 x i1> %i.cz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.db = fsub fast <8 x float> %i.cy, %i.da      ; 2 uses
  %i.dc = fmul fast <8 x float> %i.db, splat (float f0x3F317218)
  %i.dd = fsub fast <8 x float> %i.cv, %i.dc      ; 8 uses
  %i.de = fmul fast <8 x float> %i.dd, %i.dd
  %i.df = fmul fast <8 x float> %i.dd, splat (float f0x39506967)
  %i.dg = fadd fast <8 x float> %i.df, splat (float f0x3AB743CE)
  %i.dh = fmul fast <8 x float> %i.dg, %i.dd
  %i.di = fadd fast <8 x float> %i.dh, splat (float f0x3C088908)
  %i.dj = fmul fast <8 x float> %i.di, %i.dd
  %i.dk = fadd fast <8 x float> %i.dj, splat (float f0x3D2AA9C1)
  %i.dl = fmul fast <8 x float> %i.dk, %i.dd
  %i.dm = fadd fast <8 x float> %i.dl, splat (float f0x3E2AAAAA)
  %i.dn = fmul fast <8 x float> %i.dm, %i.dd
  %i.do = fadd fast <8 x float> %i.dn, splat (float 5.000000e-01)
  %i.dp = fmul fast <8 x float> %i.de, %i.do
  %i.dq = fadd fast <8 x float> %i.dd, splat (float 1.000000e+00)
  %i.dr = fadd fast <8 x float> %i.dq, %i.dp
  %i.ds = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.db)
  %i.dt = shl <8 x i32> %i.ds, splat (i32 23)
  %i.du = add <8 x i32> %i.dt, splat (i32 1065353216)
  %i.dv = bitcast <8 x i32> %i.du to <8 x float>
  %i.dw = fmul fast <8 x float> %i.dr, %i.dv
  %i.dx = fadd fast <8 x float> %i.dw, splat (float 1.000000e+00)
  %i.dy = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dx
  %i.dz = fadd fast <8 x float> %i.dy, splat (float -1.000000e+00)
  %i.ea = fmul fast <8 x float> %i.dz, %i.ae
  %i.eb = bitcast <8 x float> %i.ea to <8 x i32>  ; 2 uses
  %i.ec = shufflevector <8 x i32> %i.eb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ed = shufflevector <8 x i32> %i.eb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ee = lshr <4 x i32> %i.ec, splat (i32 16)
  %i.ef = lshr <4 x i32> %i.ed, splat (i32 16)
  %i.eg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ee, <4 x i32> %i.ef)
  store <8 x i16> %i.eg, ptr %.033306, align 1, !tbaa !49
  %i.eh = getelementptr inbounds nuw i8, ptr %.033306, i64 16 ; 2 uses
  %i.ei = add nuw nsw i32 %.032307, 8             ; 3 uses
  %i.ej = or disjoint i32 %i.ei, 7
  %i.ek = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph, label %.preheader305, !llvm.loop !61

.preheader:                                       ; preds = %.lr.ph311, %.preheader305
  %i.em = phi i32 [ %i.x, %.preheader305 ], [ %i.jt, %.lr.ph311 ] ; 4 uses
  %.134.lcssa = phi ptr [ %.033.lcssa, %.preheader305 ], [ %i.jq, %.lr.ph311 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.032.lcssa, %.preheader305 ], [ %i.jr, %.lr.ph311 ] ; 4 uses
  %i.en = icmp slt i32 %.1.lcssa, %i.em
  br i1 %i.en, label %.lr.ph317.preheader, label %._crit_edge

.lr.ph317.preheader:                              ; preds = %.preheader
  %i.eo = xor i32 %.1.lcssa, -1
  %i.ep = add i32 %i.em, %i.eo                    ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ep, 3
  br i1 %min.iters.check, label %.lr.ph317.preheader346, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph317.preheader
  %n.vec = and i64 %i.er, 8589934588              ; 4 uses
  %i.es = trunc i64 %n.vec to i32
  %i.et = add i32 %.1.lcssa, %i.es
  %i.eu = shl nuw nsw i64 %n.vec, 1
  %i.ev = getelementptr i8, ptr %.134.lcssa, i64 %i.eu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.134.lcssa, i64 %i.ew ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !62
  %i.ex = zext <4 x i16> %wide.load to <4 x i32>
  %i.ey = shl nuw <4 x i32> %i.ex, splat (i32 16)
  %i.ez = bitcast <4 x i32> %i.ey to <4 x float>  ; 2 uses
  %i.fa = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ez)
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = call fast <4 x float> @llvm.log.v4f32(<4 x float> %i.fb)
  %i.fd = call fast <4 x float> @llvm.tanh.v4f32(<4 x float> %i.fc)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ez
  %i.ff = bitcast <4 x float> %i.fe to <4 x i32>
  %i.fg = lshr <4 x i32> %i.ff, splat (i32 16)
  %i.fh = trunc nuw <4 x i32> %i.fg to <4 x i16>
  store <4 x i16> %i.fh, ptr %next.gep, align 2, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph317.preheader346

.lr.ph317.preheader346:                           ; preds = %.lr.ph317.preheader, %middle.block
  %.2316.ph = phi i32 [ %.1.lcssa, %.lr.ph317.preheader ], [ %i.et, %middle.block ]
  %.235315.ph = phi ptr [ %.134.lcssa, %.lr.ph317.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph317

.lr.ph311:                                        ; preds = %.preheader305, %.lr.ph311
  %.1310 = phi i32 [ %i.jr, %.lr.ph311 ], [ %.032.lcssa, %.preheader305 ]
  %.134309 = phi ptr [ %i.jq, %.lr.ph311 ], [ %.033.lcssa, %.preheader305 ] ; 3 uses
  %i.fj = load i64, ptr %.134309, align 1, !tbaa !49
  %i.fk = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fl = bitcast <2 x i64> %i.fk to <8 x i16>
  %i.fm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fn = bitcast <8 x i16> %i.fm to <4 x float>  ; 2 uses
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x42B0C0A5))
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fq = fmul fast <4 x float> %i.fp, splat (float f0x3FB8AA3B)
  %i.fr = fadd fast <4 x float> %i.fq, splat (float 5.000000e-01) ; 2 uses
  %i.fs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fr)
  %i.ft = sitofp fast <4 x i32> %i.fs to <4 x float> ; 2 uses
  %i.fu = fcmp fast olt <4 x float> %i.fr, %i.ft
  %i.fv = select <4 x i1> %i.fu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fw = fsub fast <4 x float> %i.ft, %i.fv      ; 2 uses
  %i.fx = fmul fast <4 x float> %i.fw, splat (float f0x3F317218)
  %i.fy = fsub fast <4 x float> %i.fp, %i.fx      ; 8 uses
  %i.fz = fmul fast <4 x float> %i.fy, %i.fy
  %i.ga = fmul fast <4 x float> %i.fy, splat (float f0x39506967)
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0x3AB743CE)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fy
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3C088908)
  %i.ge = fmul fast <4 x float> %i.gd, %i.fy
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3D2AA9C1)
  %i.gg = fmul fast <4 x float> %i.gf, %i.fy
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3E2AAAAA)
  %i.gi = fmul fast <4 x float> %i.gh, %i.fy
  %i.gj = fadd fast <4 x float> %i.gi, splat (float 5.000000e-01)
  %i.gk = fmul fast <4 x float> %i.fz, %i.gj
  %i.gl = fadd fast <4 x float> %i.fy, splat (float 1.000000e+00)
  %i.gm = fadd fast <4 x float> %i.gl, %i.gk
  %i.gn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fw)
  %i.go = shl <4 x i32> %i.gn, splat (i32 23)
  %i.gp = add <4 x i32> %i.go, splat (i32 1065353216)
  %i.gq = bitcast <4 x i32> %i.gp to <4 x float>
  %i.gr = fmul fast <4 x float> %i.gm, %i.gq
  %i.gs = fadd fast <4 x float> %i.gr, splat (float 1.000000e+00) ; 2 uses
  %i.gt = fcmp fast ole <4 x float> %i.gs, zeroinitializer
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gs, <4 x float> splat (float f0x00800000))
  %i.gv = bitcast <4 x float> %i.gu to <4 x i32>  ; 2 uses
  %i.gw = lshr <4 x i32> %i.gv, splat (i32 23)
  %i.gx = and <4 x i32> %i.gv, splat (i32 -2139095041)
  %i.gy = or disjoint <4 x i32> %i.gx, splat (i32 1056964608)
  %i.gz = bitcast <4 x i32> %i.gy to <4 x float>  ; 3 uses
  %i.ha = add nsw <4 x i32> %i.gw, splat (i32 -127)
  %i.hb = sitofp fast <4 x i32> %i.ha to <4 x float> ; 2 uses
  %i.hc = fadd fast <4 x float> %i.hb, splat (float 1.000000e+00)
  %i.hd = fcmp fast olt <4 x float> %i.gz, splat (float f0x3F3504F3) ; 2 uses
  %i.he = select <4 x i1> %i.hd, <4 x float> %i.gz, <4 x float> zeroinitializer
  %i.hf = fadd fast <4 x float> %i.gz, splat (float -1.000000e+00)
  %i.hg = select fast <4 x i1> %i.hd, <4 x float> %i.hb, <4 x float> %i.hc
  %i.hh = fadd fast <4 x float> %i.hf, %i.he      ; 12 uses
  %i.hi = fmul fast <4 x float> %i.hh, %i.hh
  %i.hj = fmul fast <4 x float> %i.hh, splat (float f0x3D9021BB)
  %i.hk = fadd fast <4 x float> %i.hj, splat (float f0xBDEBD1B8)
  %i.hl = fmul fast <4 x float> %i.hk, %i.hh
  %i.hm = fadd fast <4 x float> %i.hl, splat (float f0x3DEF251A)
  %i.hn = fmul fast <4 x float> %i.hm, %i.hh
  %i.ho = fadd fast <4 x float> %i.hn, splat (float f0xBDFE5D4F)
  %i.hp = fmul fast <4 x float> %i.ho, %i.hh
  %i.hq = fadd fast <4 x float> %i.hp, splat (float f0x3E11E9BF)
  %i.hr = fmul fast <4 x float> %i.hq, %i.hh
  %i.hs = fadd fast <4 x float> %i.hr, splat (float f0xBE2AAE50)
  %i.ht = fmul fast <4 x float> %i.hs, %i.hh
  %i.hu = fadd fast <4 x float> %i.ht, splat (float f0x3E4CCEAC)
  %i.hv = fmul fast <4 x float> %i.hu, %i.hh
  %i.hw = fadd fast <4 x float> %i.hv, splat (float f0xBE7FFFFC)
  %i.hx = fmul fast <4 x float> %i.hw, %i.hh
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3EAAAAAA)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hh
  %reass.mul.a = fmul fast <4 x float> %i.hg, splat (float f0x3F317218)
  %reass.add299 = fadd fast <4 x float> %i.hz, splat (float -5.000000e-01)
  %reass.mul300 = fmul fast <4 x float> %i.hi, %reass.add299
  %i.ia = fadd fast <4 x float> %reass.mul.a, %i.hh
  %i.ib = fadd fast <4 x float> %i.ia, %reass.mul300
  %.neg = fmul fast <4 x float> %i.ib, splat (float -2.000000e+00)
  %i.ic = select fast <4 x i1> %i.gt, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ic, <4 x float> splat (float f0x42B0C0A5))
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.id, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.if = fmul fast <4 x float> %i.ie, splat (float f0x3FB8AA3B)
  %i.ig = fadd fast <4 x float> %i.if, splat (float 5.000000e-01) ; 2 uses
  %i.ih = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ig)
  %i.ii = sitofp fast <4 x i32> %i.ih to <4 x float> ; 2 uses
  %i.ij = fcmp fast olt <4 x float> %i.ig, %i.ii
  %i.ik = select <4 x i1> %i.ij, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.il = fsub fast <4 x float> %i.ii, %i.ik      ; 2 uses
  %i.im = fmul fast <4 x float> %i.il, splat (float f0x3F317218)
  %i.in = fsub fast <4 x float> %i.ie, %i.im      ; 8 uses
  %i.io = fmul fast <4 x float> %i.in, %i.in
  %i.ip = fmul fast <4 x float> %i.in, splat (float f0x39506967)
  %i.iq = fadd fast <4 x float> %i.ip, splat (float f0x3AB743CE)
  %i.ir = fmul fast <4 x float> %i.iq, %i.in
  %i.is = fadd fast <4 x float> %i.ir, splat (float f0x3C088908)
  %i.it = fmul fast <4 x float> %i.is, %i.in
  %i.iu = fadd fast <4 x float> %i.it, splat (float f0x3D2AA9C1)
  %i.iv = fmul fast <4 x float> %i.iu, %i.in
  %i.iw = fadd fast <4 x float> %i.iv, splat (float f0x3E2AAAAA)
  %i.ix = fmul fast <4 x float> %i.iw, %i.in
  %i.iy = fadd fast <4 x float> %i.ix, splat (float 5.000000e-01)
  %i.iz = fmul fast <4 x float> %i.io, %i.iy
  %i.ja = fadd fast <4 x float> %i.in, splat (float 1.000000e+00)
  %i.jb = fadd fast <4 x float> %i.ja, %i.iz
  %i.jc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.il)
  %i.jd = shl <4 x i32> %i.jc, splat (i32 23)
  %i.je = add <4 x i32> %i.jd, splat (i32 1065353216)
  %i.jf = bitcast <4 x i32> %i.je to <4 x float>
  %i.jg = fmul fast <4 x float> %i.jb, %i.jf
  %i.jh = fadd fast <4 x float> %i.jg, splat (float 1.000000e+00)
  %i.ji = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jh
  %i.jj = fadd fast <4 x float> %i.ji, splat (float -1.000000e+00)
  %i.jk = fmul fast <4 x float> %i.jj, %i.fn
  %i.jl = bitcast <4 x float> %i.jk to <4 x i32>
  %i.jm = lshr <4 x i32> %i.jl, splat (i32 16)
  %i.jn = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jm, <4 x i32> poison)
  %i.jo = bitcast <8 x i16> %i.jn to <2 x i64>
  %i.jp = extractelement <2 x i64> %i.jo, i64 0
  store i64 %i.jp, ptr %.134309, align 1, !tbaa !49
  %i.jq = getelementptr inbounds nuw i8, ptr %.134309, i64 8 ; 2 uses
  %i.jr = add nuw nsw i32 %.1310, 4               ; 3 uses
  %i.js = or disjoint i32 %i.jr, 3
  %i.jt = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.ju = icmp slt i32 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph311, label %.preheader, !llvm.loop !67

.lr.ph317:                                        ; preds = %.lr.ph317.preheader346, %.lr.ph317
  %.2316 = phi i32 [ %i.ki, %.lr.ph317 ], [ %.2316.ph, %.lr.ph317.preheader346 ]
  %.235315 = phi ptr [ %i.kh, %.lr.ph317 ], [ %.235315.ph, %.lr.ph317.preheader346 ] ; 3 uses
  %i.jv = load i16, ptr %.235315, align 2, !tbaa !62
  %i.jw = zext i16 %i.jv to i32
  %i.jx = shl nuw i32 %i.jw, 16
  %i.jy = bitcast i32 %i.jx to float              ; 2 uses
  %i.jz = call fast float @llvm.exp.f32(float %i.jy)
  %i.ka = fadd fast float %i.jz, 1.000000e+00
  %i.kb = call fast float @llvm.log.f32(float %i.ka)
  %i.kc = call fast float @llvm.tanh.f32(float %i.kb)
  %i.kd = fmul fast float %i.kc, %i.jy
  %i.ke = bitcast float %i.kd to i32
  %i.kf = lshr i32 %i.ke, 16
  %i.kg = trunc nuw i32 %i.kf to i16
  store i16 %i.kg, ptr %.235315, align 2, !tbaa !62
  %i.kh = getelementptr inbounds nuw i8, ptr %.235315, i64 2
  %i.ki = add nuw nsw i32 %.2316, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ki, %i.em
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph317, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph317, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond327.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond327.not, label %._crit_edge320, label %.noexc

._crit_edge320:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge320, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log.v4f32(<4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tanh.v4f32(<4 x float>) #9

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 44}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!10, !6, i64 48}
!16 = !{!10, !6, i64 52}
!17 = !{!10, !6, i64 56}
!18 = !{!6, !6, i64 0}
!19 = !{!10, !6, i64 24}
!20 = !{!21, !22, i64 32}
!21 = !{!"_ZTSN4ncnn6OptionE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !22, i64 28, !22, i64 29, !22, i64 30, !22, i64 31, !22, i64 32, !22, i64 33, !22, i64 34, !22, i64 35, !22, i64 36, !22, i64 37, !22, i64 38, !22, i64 39, !6, i64 40, !22, i64 44, !22, i64 45, !22, i64 46, !22, i64 47, !7, i64 48, !22, i64 49, !22, i64 50, !22, i64 51, !22, i64 52, !22, i64 53, !22, i64 54, !22, i64 55, !22, i64 56, !22, i64 57, !22, i64 58, !22, i64 59, !22, i64 60, !22, i64 61, !22, i64 62, !22, i64 63}
!22 = !{!"bool", !7, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!10, !13, i64 16}
!26 = !{!21, !6, i64 4}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !22, i64 11}
!30 = !{!"_ZTSN4ncnn5LayerE", !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !22, i64 13, !22, i64 14, !22, i64 15, !22, i64 16, !22, i64 17, !22, i64 18, !22, i64 19, !22, i64 20, !22, i64 21, !22, i64 22, !22, i64 23, !22, i64 24, !22, i64 25, !22, i64 26, !22, i64 27, !6, i64 28, !11, i64 32, !6, i64 40, !31, i64 48, !31, i64 80, !34, i64 112, !34, i64 136, !38, i64 160, !38, i64 184}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !13, i64 8, !7, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !11, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!38 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!43 = !{!30, !22, i64 12}
!44 = !{!10, !11, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!47 = distinct !{!47, !"_ZN4ncnn3Mat7channelEi"}
!48 = !{!10, !13, i64 64}
!49 = !{!7, !7, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !7, i64 0}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !"_ZN4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !51}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !7, i64 0}
!64 = distinct !{!64, !51, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !51, !66, !65}
end_hunk_0
