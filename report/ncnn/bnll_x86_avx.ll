inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZNK4ncnn12BNLL_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
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
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ad)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn12BNLL_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12BNLL_x86_avxC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn4BNLLC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn12BNLL_x86_avxE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !43
  ret void
}

declare void @_ZN4ncnn4BNLLC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn12BNLL_x86_avx21forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
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
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn12BNLL_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

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
  %.not255 = icmp sgt i32 %i.k, %i.j
  br i1 %.not255, label %._crit_edge257, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cz, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !45
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !45
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !45
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader242

.preheader242:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cx, %.lr.ph ] ; 2 uses
  %.055.lcssa = phi i32 [ 0, %.noexc ], [ %i.cv, %.lr.ph ] ; 3 uses
  %.054.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.cu, %.lr.ph ] ; 2 uses
  %i.y = or disjoint i32 %.055.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph248, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.054244 = phi ptr [ %i.cu, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %.055243 = phi i32 [ %i.cv, %.lr.ph ], [ 0, %.noexc ]
  %i.aa = load <8 x float>, ptr %.054244, align 1, !tbaa !49 ; 2 uses
  %i.ab = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.ac = fneg fast <8 x float> %i.ab
  %i.ad = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ac, <8 x float> splat (float f0x42B0C0A5))
  %i.ae = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ad, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.af = fmul fast <8 x float> %i.ae, splat (float f0x3FB8AA3B)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01) ; 2 uses
  %i.ah = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ag, i32 1) ; 2 uses
  %i.ai = fcmp fast ogt <8 x float> %i.ah, %i.ag
  %i.aj = select <8 x i1> %i.ai, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ak = fsub fast <8 x float> %i.ah, %i.aj      ; 2 uses
  %i.al = fmul fast <8 x float> %i.ak, splat (float f0x3F317218)
  %i.am = fsub fast <8 x float> %i.ae, %i.al      ; 8 uses
  %i.an = fmul fast <8 x float> %i.am, %i.am
  %i.ao = fmul fast <8 x float> %i.am, splat (float f0x39506967)
  %i.ap = fadd fast <8 x float> %i.ao, splat (float f0x3AB743CE)
  %i.aq = fmul fast <8 x float> %i.ap, %i.am
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3C088908)
  %i.as = fmul fast <8 x float> %i.ar, %i.am
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3D2AA9C1)
  %i.au = fmul fast <8 x float> %i.at, %i.am
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3E2AAAAA)
  %i.aw = fmul fast <8 x float> %i.av, %i.am
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fmul fast <8 x float> %i.an, %i.ax
  %i.az = fadd fast <8 x float> %i.am, %i.ay
  %i.ba = fadd fast <8 x float> %i.az, splat (float 1.000000e+00)
  %i.bb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ak)
  %i.bc = shl <8 x i32> %i.bb, splat (i32 23)
  %i.bd = add <8 x i32> %i.bc, splat (i32 1065353216)
  %i.be = bitcast <8 x i32> %i.bd to <8 x float>
  %i.bf = fmul fast <8 x float> %i.ba, %i.be
  %i.bg = fadd fast <8 x float> %i.bf, splat (float 1.000000e+00) ; 2 uses
  %i.bh = fcmp fast ole <8 x float> %i.bg, zeroinitializer
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bj = bitcast <8 x float> %i.bi to <8 x i32>
  %i.bk = bitcast <8 x float> %i.bi to <8 x i32>
  %i.bl = and <8 x i32> %i.bk, splat (i32 -2139095041)
  %i.bm = or disjoint <8 x i32> %i.bl, splat (i32 1056964608)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>  ; 3 uses
  %i.bo = lshr <8 x i32> %i.bj, splat (i32 23)
  %i.bp = add nsw <8 x i32> %i.bo, splat (i32 -127)
  %i.bq = sitofp fast <8 x i32> %i.bp to <8 x float> ; 2 uses
  %i.br = fadd fast <8 x float> %i.bq, splat (float 1.000000e+00)
  %i.bs = fcmp fast olt <8 x float> %i.bn, splat (float f0x3F3504F3) ; 2 uses
  %i.bt = select <8 x i1> %i.bs, <8 x float> %i.bn, <8 x float> zeroinitializer
  %i.bu = fadd fast <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bv = select fast <8 x i1> %i.bs, <8 x float> %i.bq, <8 x float> %i.br
  %i.bw = fadd fast <8 x float> %i.bu, %i.bt      ; 12 uses
  %i.bx = fmul fast <8 x float> %i.bw, %i.bw      ; 2 uses
  %i.by = fmul fast <8 x float> %i.bw, splat (float f0x3D9021BB)
  %i.bz = fadd fast <8 x float> %i.by, splat (float f0xBDEBD1B8)
  %i.ca = fmul fast <8 x float> %i.bz, %i.bw
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0x3DEF251A)
  %i.cc = fmul fast <8 x float> %i.cb, %i.bw
  %i.cd = fadd fast <8 x float> %i.cc, splat (float f0xBDFE5D4F)
  %i.ce = fmul fast <8 x float> %i.cd, %i.bw
  %i.cf = fadd fast <8 x float> %i.ce, splat (float f0x3E11E9BF)
  %i.cg = fmul fast <8 x float> %i.cf, %i.bw
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0xBE2AAE50)
  %i.ci = fmul fast <8 x float> %i.ch, %i.bw
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0x3E4CCEAC)
  %i.ck = fmul fast <8 x float> %i.cj, %i.bw
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0xBE7FFFFC)
  %i.cm = fmul fast <8 x float> %i.cl, %i.bw
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0x3EAAAAAA)
  %i.co = fmul fast <8 x float> %i.bx, %i.bw
  %reass.mul239 = fmul fast <8 x float> %i.co, %i.cn
  %.neg237 = fmul fast <8 x float> %i.bx, splat (float -5.000000e-01)
  %reass.mul241 = fmul fast <8 x float> %i.bv, splat (float f0x3F317218)
  %5 = fadd fast <8 x float> %i.bw, %.neg237
  %i.cp = fadd fast <8 x float> %reass.mul239, %5
  %i.cq = fadd fast <8 x float> %i.cp, %reass.mul241
  %i.cr = select <8 x i1> %i.bh, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.cq
  %i.cs = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aa, <8 x float> zeroinitializer)
  %i.ct = fadd fast <8 x float> %i.cr, %i.cs
  store <8 x float> %i.ct, ptr %.054244, align 1, !tbaa !49
  %i.cu = getelementptr inbounds nuw i8, ptr %.054244, i64 32 ; 2 uses
  %i.cv = add nuw nsw i32 %.055243, 8             ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 7
  %i.cx = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph, label %.preheader242, !llvm.loop !50

.preheader:                                       ; preds = %.lr.ph248, %.preheader242
  %i.cz = phi i32 [ %i.x, %.preheader242 ], [ %i.fy, %.lr.ph248 ] ; 3 uses
  %.156.lcssa = phi i32 [ %.055.lcssa, %.preheader242 ], [ %i.fw, %.lr.ph248 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.054.lcssa, %.preheader242 ], [ %i.fv, %.lr.ph248 ]
  %i.da = icmp slt i32 %.156.lcssa, %i.cz
  br i1 %i.da, label %.lr.ph254, label %._crit_edge

.lr.ph248:                                        ; preds = %.preheader242, %.lr.ph248
  %.1247 = phi ptr [ %i.fv, %.lr.ph248 ], [ %.054.lcssa, %.preheader242 ] ; 3 uses
  %.156246 = phi i32 [ %i.fw, %.lr.ph248 ], [ %.055.lcssa, %.preheader242 ]
  %i.db = load <4 x float>, ptr %.1247, align 16, !tbaa !49 ; 2 uses
  %i.dc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.db)
  %i.dd = fneg fast <4 x float> %i.dc
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> splat (float f0x42B0C0A5))
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.de, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dg = fmul fast <4 x float> %i.df, splat (float f0x3FB8AA3B)
  %i.dh = fadd fast <4 x float> %i.dg, splat (float 5.000000e-01) ; 2 uses
  %i.di = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dh)
  %i.dj = sitofp fast <4 x i32> %i.di to <4 x float> ; 2 uses
  %i.dk = fcmp fast olt <4 x float> %i.dh, %i.dj
  %i.dl = select <4 x i1> %i.dk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dm = fsub fast <4 x float> %i.dj, %i.dl      ; 2 uses
  %i.dn = fmul fast <4 x float> %i.dm, splat (float f0x3F317218)
  %i.do = fsub fast <4 x float> %i.df, %i.dn      ; 8 uses
  %i.dp = fmul fast <4 x float> %i.do, %i.do
  %i.dq = fmul fast <4 x float> %i.do, splat (float f0x39506967)
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3AB743CE)
  %i.ds = fmul fast <4 x float> %i.dr, %i.do
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3C088908)
  %i.du = fmul fast <4 x float> %i.dt, %i.do
  %i.dv = fadd fast <4 x float> %i.du, splat (float f0x3D2AA9C1)
  %i.dw = fmul fast <4 x float> %i.dv, %i.do
  %i.dx = fadd fast <4 x float> %i.dw, splat (float f0x3E2AAAAA)
  %i.dy = fmul fast <4 x float> %i.dx, %i.do
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = fmul fast <4 x float> %i.dp, %i.dz
  %i.eb = fadd fast <4 x float> %i.do, %i.ea
  %i.ec = fadd fast <4 x float> %i.eb, splat (float 1.000000e+00)
  %i.ed = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dm)
  %i.ee = shl <4 x i32> %i.ed, splat (i32 23)
  %i.ef = add <4 x i32> %i.ee, splat (i32 1065353216)
  %i.eg = bitcast <4 x i32> %i.ef to <4 x float>
  %i.eh = fmul fast <4 x float> %i.ec, %i.eg
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 1.000000e+00) ; 2 uses
  %i.ej = fcmp fast ole <4 x float> %i.ei, zeroinitializer
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> splat (float f0x00800000))
  %i.el = bitcast <4 x float> %i.ek to <4 x i32>  ; 2 uses
  %i.em = lshr <4 x i32> %i.el, splat (i32 23)
  %i.en = and <4 x i32> %i.el, splat (i32 -2139095041)
  %i.eo = or disjoint <4 x i32> %i.en, splat (i32 1056964608)
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>  ; 3 uses
  %i.eq = add nsw <4 x i32> %i.em, splat (i32 -127)
  %i.er = sitofp fast <4 x i32> %i.eq to <4 x float> ; 2 uses
  %i.es = fadd fast <4 x float> %i.er, splat (float 1.000000e+00)
  %i.et = fcmp fast olt <4 x float> %i.ep, splat (float f0x3F3504F3) ; 2 uses
  %i.eu = select <4 x i1> %i.et, <4 x float> %i.ep, <4 x float> zeroinitializer
  %i.ev = fadd fast <4 x float> %i.ep, splat (float -1.000000e+00)
  %i.ew = select fast <4 x i1> %i.et, <4 x float> %i.er, <4 x float> %i.es
  %i.ex = fadd fast <4 x float> %i.ev, %i.eu      ; 12 uses
  %i.ey = fmul fast <4 x float> %i.ex, %i.ex      ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ex, splat (float f0x3D9021BB)
  %i.fa = fadd fast <4 x float> %i.ez, splat (float f0xBDEBD1B8)
  %i.fb = fmul fast <4 x float> %i.fa, %i.ex
  %i.fc = fadd fast <4 x float> %i.fb, splat (float f0x3DEF251A)
  %i.fd = fmul fast <4 x float> %i.fc, %i.ex
  %i.fe = fadd fast <4 x float> %i.fd, splat (float f0xBDFE5D4F)
  %i.ff = fmul fast <4 x float> %i.fe, %i.ex
  %i.fg = fadd fast <4 x float> %i.ff, splat (float f0x3E11E9BF)
  %i.fh = fmul fast <4 x float> %i.fg, %i.ex
  %i.fi = fadd fast <4 x float> %i.fh, splat (float f0xBE2AAE50)
  %i.fj = fmul fast <4 x float> %i.fi, %i.ex
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3E4CCEAC)
  %i.fl = fmul fast <4 x float> %i.fk, %i.ex
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0xBE7FFFFC)
  %i.fn = fmul fast <4 x float> %i.fm, %i.ex
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0x3EAAAAAA)
  %i.fp = fmul fast <4 x float> %i.ey, %i.ex
  %reass.mul.a = fmul fast <4 x float> %i.fp, %i.fo
  %.neg = fmul fast <4 x float> %i.ey, splat (float -5.000000e-01)
  %reass.mul238 = fmul fast <4 x float> %i.ew, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.ex, %.neg
  %i.fq = fadd fast <4 x float> %reass.mul.a, %6
  %i.fr = fadd fast <4 x float> %i.fq, %reass.mul238
  %i.fs = select <4 x i1> %i.ej, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fr
  %i.ft = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.db, <4 x float> zeroinitializer)
  %i.fu = fadd fast <4 x float> %i.fs, %i.ft
  store <4 x float> %i.fu, ptr %.1247, align 16, !tbaa !49
  %i.fv = getelementptr inbounds nuw i8, ptr %.1247, i64 16 ; 2 uses
  %i.fw = add nuw nsw i32 %.156246, 4             ; 3 uses
  %i.fx = or disjoint i32 %i.fw, 3
  %i.fy = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %.lr.ph248, label %.preheader, !llvm.loop !52

.lr.ph254:                                        ; preds = %.preheader, %bb.e
  %.2253 = phi ptr [ %i.gk, %bb.e ], [ %.1.lcssa, %.preheader ] ; 3 uses
  %.257252 = phi i32 [ %i.gl, %bb.e ], [ %.156.lcssa, %.preheader ]
  %i.ga = load float, ptr %.2253, align 4, !tbaa !53 ; 4 uses
  %i.gb = fcmp fast ogt float %i.ga, 0.000000e+00
  br i1 %i.gb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph254
  %i.gc = fneg fast float %i.ga
  %i.gd = call fast float @llvm.exp.f32(float %i.gc)
  %i.ge = fadd fast float %i.gd, 1.000000e+00
  %i.gf = call fast float @llvm.log.f32(float %i.ge)
  %i.gg = fadd fast float %i.gf, %i.ga
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph254
  %i.gh = call fast float @llvm.exp.f32(float %i.ga)
  %i.gi = fadd fast float %i.gh, 1.000000e+00
  %i.gj = call fast float @llvm.log.f32(float %i.gi)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.gj, %bb.d ], [ %i.gg, %bb.c ]
  store float %storemerge, ptr %.2253, align 4, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %.2253, i64 4
  %i.gl = add nuw nsw i32 %.257252, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gl, %i.cz
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph254, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond264.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond264.not, label %._crit_edge257, label %.noexc

._crit_edge257:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge257, %bb.a
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

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !56 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

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
  %.not259 = icmp sgt i32 %i.k, %i.j
  br i1 %.not259, label %._crit_edge261, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dl, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !58
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !58
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !58
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader246

.preheader246:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dj, %.lr.ph ] ; 2 uses
  %.049.lcssa = phi i32 [ 0, %.noexc ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.048.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dg, %.lr.ph ] ; 2 uses
  %i.y = or disjoint i32 %.049.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph252, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.048248 = phi ptr [ %i.dg, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %.049247 = phi i32 [ %i.dh, %.lr.ph ], [ 0, %.noexc ]
  %i.aa = load <8 x i16>, ptr %.048248, align 1, !tbaa !49 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.ag = and <8 x i32> %i.af, splat (i32 2147418112)
  %i.ah = bitcast <8 x i32> %i.ag to <8 x float>
  %i.ai = fneg fast <8 x float> %i.ah
  %i.aj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float f0x42B0C0A5))
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.al = fmul fast <8 x float> %i.ak, splat (float f0x3FB8AA3B)
  %i.am = fadd fast <8 x float> %i.al, splat (float 5.000000e-01) ; 2 uses
  %i.an = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.am, i32 1) ; 2 uses
  %i.ao = fcmp fast ogt <8 x float> %i.an, %i.am
  %i.ap = select <8 x i1> %i.ao, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aq = fsub fast <8 x float> %i.an, %i.ap      ; 2 uses
  %i.ar = fmul fast <8 x float> %i.aq, splat (float f0x3F317218)
  %i.as = fsub fast <8 x float> %i.ak, %i.ar      ; 8 uses
  %i.at = fmul fast <8 x float> %i.as, %i.as
  %i.au = fmul fast <8 x float> %i.as, splat (float f0x39506967)
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3AB743CE)
  %i.aw = fmul fast <8 x float> %i.av, %i.as
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3C088908)
  %i.ay = fmul fast <8 x float> %i.ax, %i.as
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3D2AA9C1)
  %i.ba = fmul fast <8 x float> %i.az, %i.as
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0x3E2AAAAA)
  %i.bc = fmul fast <8 x float> %i.bb, %i.as
  %i.bd = fadd fast <8 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul fast <8 x float> %i.at, %i.bd
  %i.bf = fadd fast <8 x float> %i.as, %i.be
  %i.bg = fadd fast <8 x float> %i.bf, splat (float 1.000000e+00)
  %i.bh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aq)
  %i.bi = shl <8 x i32> %i.bh, splat (i32 23)
  %i.bj = add <8 x i32> %i.bi, splat (i32 1065353216)
  %i.bk = bitcast <8 x i32> %i.bj to <8 x float>
  %i.bl = fmul fast <8 x float> %i.bg, %i.bk
  %i.bm = fadd fast <8 x float> %i.bl, splat (float 1.000000e+00) ; 2 uses
  %i.bn = fcmp fast ole <8 x float> %i.bm, zeroinitializer
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bp = bitcast <8 x float> %i.bo to <8 x i32>
  %i.bq = bitcast <8 x float> %i.bo to <8 x i32>
  %i.br = and <8 x i32> %i.bq, splat (i32 -2139095041)
  %i.bs = or disjoint <8 x i32> %i.br, splat (i32 1056964608)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>  ; 3 uses
  %i.bu = lshr <8 x i32> %i.bp, splat (i32 23)
  %i.bv = add nsw <8 x i32> %i.bu, splat (i32 -127)
  %i.bw = sitofp fast <8 x i32> %i.bv to <8 x float> ; 2 uses
  %i.bx = fadd fast <8 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = fcmp fast olt <8 x float> %i.bt, splat (float f0x3F3504F3) ; 2 uses
  %i.bz = select <8 x i1> %i.by, <8 x float> %i.bt, <8 x float> zeroinitializer
  %i.ca = fadd fast <8 x float> %i.bt, splat (float -1.000000e+00)
  %i.cb = select fast <8 x i1> %i.by, <8 x float> %i.bw, <8 x float> %i.bx
  %i.cc = fadd fast <8 x float> %i.ca, %i.bz      ; 12 uses
  %i.cd = fmul fast <8 x float> %i.cc, %i.cc      ; 2 uses
  %i.ce = fmul fast <8 x float> %i.cc, splat (float f0x3D9021BB)
  %i.cf = fadd fast <8 x float> %i.ce, splat (float f0xBDEBD1B8)
  %i.cg = fmul fast <8 x float> %i.cf, %i.cc
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0x3DEF251A)
  %i.ci = fmul fast <8 x float> %i.ch, %i.cc
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0xBDFE5D4F)
  %i.ck = fmul fast <8 x float> %i.cj, %i.cc
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3E11E9BF)
  %i.cm = fmul fast <8 x float> %i.cl, %i.cc
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0xBE2AAE50)
  %i.co = fmul fast <8 x float> %i.cn, %i.cc
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0x3E4CCEAC)
  %i.cq = fmul fast <8 x float> %i.cp, %i.cc
  %i.cr = fadd fast <8 x float> %i.cq, splat (float f0xBE7FFFFC)
  %i.cs = fmul fast <8 x float> %i.cr, %i.cc
  %i.ct = fadd fast <8 x float> %i.cs, splat (float f0x3EAAAAAA)
  %i.cu = fmul fast <8 x float> %i.cd, %i.cc
  %reass.mul243 = fmul fast <8 x float> %i.cu, %i.ct
  %.neg241 = fmul fast <8 x float> %i.cd, splat (float -5.000000e-01)
  %reass.mul245 = fmul fast <8 x float> %i.cb, splat (float f0x3F317218)
  %5 = fadd fast <8 x float> %i.cc, %.neg241
  %i.cv = fadd fast <8 x float> %reass.mul243, %5
  %i.cw = fadd fast <8 x float> %i.cv, %reass.mul245
  %i.cx = select <8 x i1> %i.bn, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.cw
  %i.cy = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> zeroinitializer)
  %i.cz = fadd fast <8 x float> %i.cx, %i.cy
  %i.da = bitcast <8 x float> %i.cz to <8 x i32>  ; 2 uses
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dd = lshr <4 x i32> %i.db, splat (i32 16)
  %i.de = lshr <4 x i32> %i.dc, splat (i32 16)
  %i.df = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dd, <4 x i32> %i.de)
  store <8 x i16> %i.df, ptr %.048248, align 1, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %.048248, i64 16 ; 2 uses
  %i.dh = add nuw nsw i32 %.049247, 8             ; 3 uses
  %i.di = or disjoint i32 %i.dh, 7
  %i.dj = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph, label %.preheader246, !llvm.loop !61

.preheader:                                       ; preds = %.lr.ph252, %.preheader246
  %i.dl = phi i32 [ %i.x, %.preheader246 ], [ %i.gv, %.lr.ph252 ] ; 3 uses
  %.150.lcssa = phi i32 [ %.049.lcssa, %.preheader246 ], [ %i.gt, %.lr.ph252 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.048.lcssa, %.preheader246 ], [ %i.gs, %.lr.ph252 ]
  %i.dm = icmp slt i32 %.150.lcssa, %i.dl
  br i1 %i.dm, label %.lr.ph258, label %._crit_edge

.lr.ph252:                                        ; preds = %.preheader246, %.lr.ph252
  %.1251 = phi ptr [ %i.gs, %.lr.ph252 ], [ %.048.lcssa, %.preheader246 ] ; 3 uses
  %.150250 = phi i32 [ %i.gt, %.lr.ph252 ], [ %.049.lcssa, %.preheader246 ]
  %i.dn = load i64, ptr %.1251, align 1, !tbaa !49
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = bitcast <2 x i64> %i.do to <8 x i16>
  %i.dq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dr = bitcast <8 x i16> %i.dq to <4 x float>
  %i.ds = bitcast <8 x i16> %i.dq to <4 x i32>
  %i.dt = and <4 x i32> %i.ds, splat (i32 2147418112)
  %i.du = bitcast <4 x i32> %i.dt to <4 x float>
  %i.dv = fneg fast <4 x float> %i.du
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0x42B0C0A5))
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dy = fmul fast <4 x float> %i.dx, splat (float f0x3FB8AA3B)
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 5.000000e-01) ; 2 uses
  %i.ea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.eb = sitofp fast <4 x i32> %i.ea to <4 x float> ; 2 uses
  %i.ec = fcmp fast olt <4 x float> %i.dz, %i.eb
  %i.ed = select <4 x i1> %i.ec, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ee = fsub fast <4 x float> %i.eb, %i.ed      ; 2 uses
  %i.ef = fmul fast <4 x float> %i.ee, splat (float f0x3F317218)
  %i.eg = fsub fast <4 x float> %i.dx, %i.ef      ; 8 uses
  %i.eh = fmul fast <4 x float> %i.eg, %i.eg
  %i.ei = fmul fast <4 x float> %i.eg, splat (float f0x39506967)
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3AB743CE)
  %i.ek = fmul fast <4 x float> %i.ej, %i.eg
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0x3C088908)
  %i.em = fmul fast <4 x float> %i.el, %i.eg
  %i.en = fadd fast <4 x float> %i.em, splat (float f0x3D2AA9C1)
  %i.eo = fmul fast <4 x float> %i.en, %i.eg
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0x3E2AAAAA)
  %i.eq = fmul fast <4 x float> %i.ep, %i.eg
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01)
  %i.es = fmul fast <4 x float> %i.eh, %i.er
  %i.et = fadd fast <4 x float> %i.eg, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ee)
  %i.ew = shl <4 x i32> %i.ev, splat (i32 23)
  %i.ex = add <4 x i32> %i.ew, splat (i32 1065353216)
  %i.ey = bitcast <4 x i32> %i.ex to <4 x float>
  %i.ez = fmul fast <4 x float> %i.eu, %i.ey
  %i.fa = fadd fast <4 x float> %i.ez, splat (float 1.000000e+00) ; 2 uses
  %i.fb = fcmp fast ole <4 x float> %i.fa, zeroinitializer
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0x00800000))
  %i.fd = bitcast <4 x float> %i.fc to <4 x i32>  ; 2 uses
  %i.fe = lshr <4 x i32> %i.fd, splat (i32 23)
  %i.ff = and <4 x i32> %i.fd, splat (i32 -2139095041)
  %i.fg = or disjoint <4 x i32> %i.ff, splat (i32 1056964608)
  %i.fh = bitcast <4 x i32> %i.fg to <4 x float>  ; 3 uses
  %i.fi = add nsw <4 x i32> %i.fe, splat (i32 -127)
  %i.fj = sitofp fast <4 x i32> %i.fi to <4 x float> ; 2 uses
  %i.fk = fadd fast <4 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fcmp fast olt <4 x float> %i.fh, splat (float f0x3F3504F3) ; 2 uses
  %i.fm = select <4 x i1> %i.fl, <4 x float> %i.fh, <4 x float> zeroinitializer
  %i.fn = fadd fast <4 x float> %i.fh, splat (float -1.000000e+00)
  %i.fo = select fast <4 x i1> %i.fl, <4 x float> %i.fj, <4 x float> %i.fk
  %i.fp = fadd fast <4 x float> %i.fn, %i.fm      ; 12 uses
  %i.fq = fmul fast <4 x float> %i.fp, %i.fp      ; 2 uses
  %i.fr = fmul fast <4 x float> %i.fp, splat (float f0x3D9021BB)
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0xBDEBD1B8)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fp
  %i.fu = fadd fast <4 x float> %i.ft, splat (float f0x3DEF251A)
  %i.fv = fmul fast <4 x float> %i.fu, %i.fp
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0xBDFE5D4F)
  %i.fx = fmul fast <4 x float> %i.fw, %i.fp
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3E11E9BF)
  %i.fz = fmul fast <4 x float> %i.fy, %i.fp
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0xBE2AAE50)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fp
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3E4CCEAC)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fp
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0xBE7FFFFC)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fp
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3EAAAAAA)
  %i.gh = fmul fast <4 x float> %i.fq, %i.fp
  %reass.mul.a = fmul fast <4 x float> %i.gh, %i.gg
  %.neg = fmul fast <4 x float> %i.fq, splat (float -5.000000e-01)
  %reass.mul242 = fmul fast <4 x float> %i.fo, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.fp, %.neg
  %i.gi = fadd fast <4 x float> %reass.mul.a, %6
  %i.gj = fadd fast <4 x float> %i.gi, %reass.mul242
  %i.gk = select <4 x i1> %i.fb, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.gj
  %i.gl = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dr, <4 x float> zeroinitializer)
  %i.gm = fadd fast <4 x float> %i.gk, %i.gl
  %i.gn = bitcast <4 x float> %i.gm to <4 x i32>
  %i.go = lshr <4 x i32> %i.gn, splat (i32 16)
  %i.gp = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.go, <4 x i32> poison)
  %i.gq = bitcast <8 x i16> %i.gp to <2 x i64>
  %i.gr = extractelement <2 x i64> %i.gq, i64 0
  store i64 %i.gr, ptr %.1251, align 1, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %.1251, i64 8 ; 2 uses
  %i.gt = add nuw nsw i32 %.150250, 4             ; 3 uses
  %i.gu = or disjoint i32 %i.gt, 3
  %i.gv = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph252, label %.preheader, !llvm.loop !62

.lr.ph258:                                        ; preds = %.preheader, %bb.e
  %.2257 = phi ptr [ %i.hn, %bb.e ], [ %.1.lcssa, %.preheader ] ; 3 uses
  %.251256 = phi i32 [ %i.ho, %bb.e ], [ %.150.lcssa, %.preheader ]
  %i.gx = load i16, ptr %.2257, align 2, !tbaa !63
  %i.gy = zext i16 %i.gx to i32
  %i.gz = shl nuw i32 %i.gy, 16
  %i.ha = bitcast i32 %i.gz to float              ; 4 uses
  %i.hb = fcmp fast ogt float %i.ha, 0.000000e+00
  br i1 %i.hb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph258
  %i.hc = fneg fast float %i.ha
  %i.hd = call fast float @llvm.exp.f32(float %i.hc)
  %i.he = fadd fast float %i.hd, 1.000000e+00
  %i.hf = call fast float @llvm.log.f32(float %i.he)
  %i.hg = fadd fast float %i.hf, %i.ha
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph258
  %i.hh = call fast float @llvm.exp.f32(float %i.ha)
  %i.hi = fadd fast float %i.hh, 1.000000e+00
  %i.hj = call fast float @llvm.log.f32(float %i.hi)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi nsz float [ %i.hg, %bb.c ], [ %i.hj, %bb.d ]
  %i.hk = bitcast float %.0 to i32
  %i.hl = lshr i32 %i.hk, 16
  %i.hm = trunc nuw i32 %i.hl to i16
  store i16 %i.hm, ptr %.2257, align 2, !tbaa !63
  %i.hn = getelementptr inbounds nuw i8, ptr %.2257, i64 2
  %i.ho = add nuw nsw i32 %.251256, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ho, %i.dl
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph258, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond268.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond268.not, label %._crit_edge261, label %.noexc

._crit_edge261:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge261, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { builtin nounwind }

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
!52 = distinct !{!52, !51}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !7, i64 0}
!55 = distinct !{!55, !51}
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !"_ZN4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !7, i64 0}
!65 = distinct !{!65, !51}
end_hunk_0
