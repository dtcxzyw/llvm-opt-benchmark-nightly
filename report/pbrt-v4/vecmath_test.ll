Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/vecmath_test?download=true
inline.NumInlined: 2858
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN31DirectionCone_VectorInCone_Test8TestBodyEv:bb.a
          to label %.noexc.i.i158 unwind label %bb.al

.noexc.i.i158:                                    ; preds = %bb.ai
  br i1 %i.kv, label %bb.aj, label %_ZN7testing7MessageD2Ev.exit159

bb.aj:                                            ; preds = %.noexc.i.i158
  %i.kw = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %_ZN7testing7MessageD2Ev.exit159, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !34
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit159

bb.al:                                            ; preds = %bb.ai
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #26
  unreachable

_ZN7testing7MessageD2Ev.exit159:                  ; preds = %bb.ah, %.noexc.i.i158, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.at

bb.am:                                            ; preds = %bb.ab
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i144, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.ac
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit156
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ag
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.lh, %bb.aq ], [ %i.lg, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

.body:                                            ; preds = %bb.ao, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i140, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i140 ], [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.le, %bb.an ], [ %.pn, %bb.ar ], [ %i.lf, %bb.ao ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.as

bb.as:                                            ; preds = %.body, %bb.am
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ld, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.az

bb.at:                                            ; preds = %bb.aa, %_ZN7testing7MessageD2Ev.exit159
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !24
  %.not.i.i.i160 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i160, label %_ZN7testing15AssertionResultD2Ev.exit165, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i161 unwind label %bb.ax

.noexc.i.i161:                                    ; preds = %bb.au
  br i1 %i.lj, label %bb.av, label %_ZN7testing15AssertionResultD2Ev.exit165

bb.av:                                            ; preds = %.noexc.i.i161
  %i.lk = load ptr, ptr %i.i, align 8, !tbaa !24  ; 4 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %_ZN7testing15AssertionResultD2Ev.exit165, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lm = load ptr, ptr %i.lk, align 8, !tbaa !29 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162: ; preds = %bb.aw
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !35
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i163: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit165

bb.ax:                                            ; preds = %bb.au
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit165:         ; preds = %bb.at, %.noexc.i.i161, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit165, %_ZN7testing15AssertionResultD2Ev.exit
  %i.lt = add nuw nsw i32 %.088228, 1             ; 2 uses
  %.sroa.0192.1.in = mul i64 %i.dl, 6364136223846793005
  %.sroa.0192.1 = add i64 %.sroa.0192.1.in, -2720673578348880933 ; 2 uses
  %exitcond232.not = icmp eq i32 %i.lt, 100
  br i1 %exitcond232.not, label %bb.d, label %bb.e, !llvm.loop !124

bb.az:                                            ; preds = %bb.as, %bb.u
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.u ], [ %.pn.pn.pn.pn, %bb.as ]
  resume { ptr, i32 } %.pn104.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33SphericalTriangleArea_Basics_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing15AssertionResultD2Ev.exit189:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.a

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit228
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.y

bb.a:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit189, %_ZN7testing15AssertionResultD2Ev.exit228
  %.0140442 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit189 ], [ %i.fd, %_ZN7testing15AssertionResultD2Ev.exit228 ]
  %.sroa.0398.0441 = phi i64 [ -8846114313915602277, %_ZN7testing15AssertionResultD2Ev.exit189 ], [ %i.aj, %_ZN7testing15AssertionResultD2Ev.exit228 ] ; 2 uses
  %i.e = mul i64 %.sroa.0398.0441, 6364136223846793005
  %i.f = add i64 %i.e, -2720673578348880933       ; 2 uses
  %i.g = mul i64 %i.f, 6364136223846793005
  %i.h = add i64 %i.g, -2720673578348880933       ; 4 uses
  %i.i = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.j = insertelement <2 x i64> %i.i, i64 %.sroa.0398.0441, i64 1 ; 3 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 45)
  %i.l = lshr <2 x i64> %i.j, splat (i64 27)
  %i.m = xor <2 x i64> %i.k, %i.l
  %i.n = trunc <2 x i64> %i.m to <2 x i32>        ; 2 uses
  %i.o = lshr <2 x i64> %i.j, splat (i64 59)
  %i.p = trunc nuw nsw <2 x i64> %i.o to <2 x i32>
  %i.q = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.n, <2 x i32> %i.n, <2 x i32> %i.p)
  %i.r = uitofp <2 x i32> %i.q to <2 x float>
  %i.s = fmul nnan <2 x float> %i.r, splat (float f0x2F800000) ; 3 uses
  %i.t = fcmp olt <2 x float> %i.s, splat (float f0x3F7FFFFF) ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 1
  %i.v = extractelement <2 x float> %i.s, i64 1
  %i.w = extractelement <2 x i1> %i.t, i64 0
  %i.x = extractelement <2 x float> %i.s, i64 0
  %i.y = fmul nnan float %i.v, 2.000000e+00
  %i.z = fsub float 1.000000e+00, %i.y
  %i.aa = select i1 %i.u, float %i.z, float f0xBF7FFFFE ; 3 uses
  %i.ab = fmul float %i.aa, %i.aa                 ; 2 uses
  %i.ac = fsub float 1.000000e+00, %i.ab          ; 2 uses
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, float %i.ac, float 0.000000e+00
  %i.ae = fmul nnan float %i.x, f0x40C90FDB
  %i.af = select i1 %i.w, float %i.ae, float f0x40C90FDA ; 2 uses
  %i.ag = call noundef float @cosf(float noundef %i.af) #25
  %i.ah = call noundef float @sinf(float noundef %i.af) #25
  %i.ai = mul i64 %i.h, 6364136223846793005
  %i.aj = add i64 %i.ai, -2720673578348880933     ; 2 uses
  %i.ak = lshr i64 %i.h, 45
  %i.al = lshr i64 %i.h, 27
  %i.am = xor i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = lshr i64 %i.h, 59
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = call noundef i32 @llvm.fshr.i32(i32 %i.an, i32 %i.an, i32 %i.ap)
  %i.ar = uitofp i32 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x2F800000      ; 2 uses
  %i.at = fcmp olt float %i.as, f0x3F7FFFFF
  %.sroa.speculated.i192 = select i1 %i.at, float %i.as, float f0x3F7FFFFF
  %i.au = fmul nnan float %.sroa.speculated.i192, f0x40C90FDB
  %i.av = fmul nnan float %i.au, f0x3C8EFA35      ; 2 uses
  %i.aw = call noundef float @sinf(float noundef %i.av) #25, !noalias !131 ; 3 uses
  %i.ax = call noundef float @cosf(float noundef %i.av) #25, !noalias !131 ; 3 uses
  %i.ay = fsub float 1.000000e+00, %i.ax          ; 3 uses
  %sqrt.i.i191 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.az = fmul float %sqrt.i.i191, %i.ag          ; 3 uses
  %i.ba = fmul float %sqrt.i.i191, %i.ah          ; 3 uses
  %i.bb = fmul float %i.az, %i.az
  %i.bc = fmul float %i.ba, %i.ba
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = fadd float %i.ab, %i.bd
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.be) ; 3 uses
  %i.bf = fdiv float %i.az, %sqrt.i.i.i.i         ; 4 uses
  %i.bg = fdiv float %i.ba, %sqrt.i.i.i.i         ; 4 uses
  %i.bh = fdiv float %i.aa, %sqrt.i.i.i.i         ; 5 uses
  %i.bi = fmul float %i.bf, %i.bg
  %i.bj = fmul float %i.bh, %i.bh                 ; 2 uses
  %9 = fsub float 1.000000e+00, %i.bj
  %i.bk = fmul float %i.ax, %9
  %i.bl = fadd float %i.bj, %i.bk                 ; 2 uses
  %10 = fmul float %i.aw, %i.bh                   ; 2 uses
  %11 = fmul float %i.ay, %i.bi                   ; 2 uses
  %12 = fmul float %i.bl, 0.000000e+00            ; 2 uses
  %i.bm = fsub float %11, %10                     ; 2 uses
  %13 = fadd float %10, %11                       ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bg, i64 1 ; 2 uses
  %i.bp = fmul <2 x float> %i.bo, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> splat (float 1.000000e+00), %i.bp
  %i.br = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bq
  %i.bu = fadd <2 x float> %i.bp, %i.bt           ; 2 uses
  %i.bv = fmul float %i.bf, %i.bh
  %i.bw = fmul float %i.bg, %i.bh
  %i.bx = fmul float %i.ay, %i.bv                 ; 2 uses
  %i.by = fmul float %i.ay, %i.bw                 ; 2 uses
  %i.bz = fmul float %i.aw, %i.bg                 ; 2 uses
  %i.ca = fmul float %i.aw, %i.bf                 ; 2 uses
  %14 = insertelement <2 x float> poison, float %i.bx, i64 0
  %15 = insertelement <2 x float> %14, float %i.by, i64 1 ; 2 uses
  %16 = insertelement <2 x float> poison, float %i.bz, i64 0
  %17 = insertelement <2 x float> %16, float %i.ca, i64 1 ; 2 uses
  %18 = fsub <2 x float> %15, %17
  %19 = fadd <2 x float> %15, %17
  %20 = shufflevector <2 x float> %19, <2 x float> %18, <2 x i32> <i32 0, i32 3> ; 2 uses
  %21 = fsub float %i.bx, %i.bz                   ; 2 uses
  %22 = fadd float %i.ca, %i.by                   ; 2 uses
  %23 = fmul <2 x float> %20, zeroinitializer     ; 3 uses
  %i.cb = fmul <2 x float> %i.bu, zeroinitializer ; 3 uses
  %24 = extractelement <2 x float> %i.cb, i64 1
  %i.cc = fadd float %13, %24
  %25 = extractelement <2 x float> %i.cb, i64 0
  %i.cd = fadd float %i.bm, %25
  %26 = extractelement <2 x float> %23, i64 1
  %27 = fadd float %26, %i.cc                     ; 3 uses
  %28 = extractelement <2 x float> %23, i64 0
  %29 = fadd float %28, %i.cd                     ; 5 uses
  %30 = insertelement <2 x float> poison, float %i.bm, i64 0
  %31 = insertelement <2 x float> %30, float %13, i64 1
  %i.ce = fmul <2 x float> %31, zeroinitializer   ; 2 uses
  %i.cf = fadd <2 x float> %i.ce, %i.bu
  %i.cg = fadd <2 x float> %23, %i.cf             ; 3 uses
  %i.ch = fmul float %22, 0.000000e+00            ; 2 uses
  %32 = fmul float %21, 0.000000e+00              ; 2 uses
  %i.ci = fadd float %21, %i.ch
  %33 = fadd float %22, %32
  %34 = fadd float %i.ci, %12                     ; 3 uses
  %i.cj = fadd float %33, %12                     ; 5 uses
  %i.ck = fadd <2 x float> %i.ce, %i.cb
  %35 = fadd <2 x float> %20, %i.ck               ; 4 uses
  %i.cl = fadd float %32, %i.ch
  %i.cm = fadd float %i.bl, %i.cl                 ; 4 uses
  %36 = extractelement <2 x float> %35, i64 1     ; 3 uses
  %i.cn = fmul float %i.cj, %36                   ; 2 uses
  %i.co = fneg float %i.cn
  %i.cp = extractelement <2 x float> %i.cg, i64 1 ; 4 uses
  %i.cq = call noundef float @llvm.fma.f32(float %i.cp, float %i.cm, float %i.co)
  %i.cr = fneg float %i.cj
  %i.cs = call noundef float @llvm.fma.f32(float %i.cr, float %36, float %i.cn)
  %i.ct = fadd float %i.cq, %i.cs
  %37 = fmul float %i.cm, %29                     ; 2 uses
  %38 = fneg float %37
  %39 = extractelement <2 x float> %35, i64 0     ; 3 uses
  %i.cu = call noundef float @llvm.fma.f32(float %i.cj, float %39, float %38)
  %i.cv = fneg float %29
  %i.cw = call noundef float @llvm.fma.f32(float %i.cv, float %i.cm, float %37)
  %i.cx = fadd float %i.cu, %i.cw
  %i.cy = fmul float %i.cp, %39                   ; 2 uses
  %i.cz = fneg float %i.cy
  %i.da = call noundef float @llvm.fma.f32(float %29, float %36, float %i.cz)
  %i.db = fneg float %i.cp
  %i.dc = call noundef float @llvm.fma.f32(float %i.db, float %39, float %i.cy)
  %i.dd = fadd float %i.da, %i.dc
  %i.de = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %40 = fmul float %i.de, %i.ct
  %i.df = fmul float %27, %i.cx
  %41 = fadd float %40, %i.df
  %i.dg = fmul float %34, %i.dd
  %i.dh = fadd float %i.dg, %41
  %42 = fmul float %i.de, %29
  %i.di = fmul float %i.cp, %27
  %i.dj = fadd float %42, %i.di
  %43 = fmul float %34, %i.cj
  %44 = fadd float %43, %i.dj
  %45 = fadd float %44, 1.000000e+00
  %46 = insertelement <2 x float> poison, float %27, i64 0
  %47 = insertelement <2 x float> %46, float %29, i64 1
  %48 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %49 = fmul <2 x float> %47, %48
  %50 = fmul <2 x float> %i.cg, %35
  %51 = fadd <2 x float> %50, %49
  %52 = insertelement <2 x float> poison, float %34, i64 0
  %53 = insertelement <2 x float> %52, float %i.cj, i64 1
  %54 = insertelement <2 x float> poison, float %i.cm, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = fmul <2 x float> %53, %55
  %57 = fadd <2 x float> %56, %51                 ; 2 uses
  %58 = extractelement <2 x float> %57, i64 0
  %59 = fadd float %58, %45
  %60 = extractelement <2 x float> %57, i64 1
  %i.dk = fadd float %60, %59
  %i.dl = call noundef float @atan2f(float noundef %i.dh, float noundef %i.dk) #25
  %i.dm = fmul float %i.dl, 2.000000e+00
  %i.dn = call noundef float @llvm.fabs.f32(float %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.do = fpext float %i.dn to double             ; 3 uses
  %i.dp = fcmp oge double %i.do, f0x3FF92156AA418937
  %i.dq = fcmp ole double %i.do, f0x3FF922A015BE76C9
  %i.dr = and i1 %i.dp, %i.dq                     ; 2 uses
  %i.ds = zext i1 %i.dr to i8
  store i8 %i.ds, ptr %1, align 8, !tbaa !21
  store ptr null, ptr %i.a, align 8, !tbaa !24
  br i1 %i.dr, label %_ZN7testing15AssertionResultD2Ev.exit228, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.dt = load ptr, ptr %2, align 8, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.du, double noundef %i.do)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit213 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit213:        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit213
  %i.dw = load ptr, ptr %4, align 8, !tbaa !29
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 531, ptr noundef %i.dw)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  %i.dx = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.b
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.f
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !35
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.eb = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i.i.i217 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i217, label %bb.s, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.ec = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i218 unwind label %bb.j

.noexc.i.i218:                                    ; preds = %bb.g
  br i1 %i.ec, label %bb.h, label %bb.s

bb.h:                                             ; preds = %.noexc.i.i218
  %i.ed = load ptr, ptr %2, align 8, !tbaa !32    ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ed) #25, !inline_history !0
  br label %bb.s

bb.j:                                             ; preds = %bb.g
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #26
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit213
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.n:                                             ; preds = %bb.d
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn156 = phi { ptr, i32 } [ %i.eo, %bb.o ], [ %i.en, %bb.n ] ; 2 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.b
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.p
  %i.er = load i64, ptr %i.b, align 8, !tbaa !35
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.m
  %.pn156.pn = phi { ptr, i32 } [ %i.em, %bb.m ], [ %.pn156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %.pn156, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.l
  %.pn156.pn.pn = phi { ptr, i32 } [ %.pn156.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.el, %bb.l ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.pn156.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn, %bb.q ], [ %i.ek, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.av

bb.s:                                             ; preds = %bb.i, %bb.h, %.noexc.i.i218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not.i.i.i223 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i223, label %_ZN7testing15AssertionResultD2Ev.exit228, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i224 unwind label %bb.w

.noexc.i.i224:                                    ; preds = %bb.t
  br i1 %i.et, label %bb.u, label %_ZN7testing15AssertionResultD2Ev.exit228

bb.u:                                             ; preds = %.noexc.i.i224
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN7testing15AssertionResultD2Ev.exit228, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !29 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225: ; preds = %bb.v
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !35
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i226: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit228

bb.w:                                             ; preds = %bb.t
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit228:         ; preds = %bb.a, %bb.s, %.noexc.i.i224, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.fd = add nuw nsw i32 %.0140442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fd, 100
  br i1 %exitcond.not, label %.preheader, label %bb.a, !llvm.loop !127

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit313
  ret void

bb.y:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit313
  %.0141444 = phi i32 [ 0, %.preheader ], [ %i.mx, %_ZN7testing15AssertionResultD2Ev.exit313 ]
  %.sroa.0398.1443 = phi i64 [ %i.aj, %.preheader ], [ %i.gl, %_ZN7testing15AssertionResultD2Ev.exit313 ] ; 2 uses
  %i.fe = mul i64 %.sroa.0398.1443, 6364136223846793005
  %i.ff = add i64 %i.fe, -2720673578348880933     ; 2 uses
  %i.fg = mul i64 %i.ff, 6364136223846793005
  %i.fh = add i64 %i.fg, -2720673578348880933     ; 4 uses
  %i.fi = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fj = insertelement <2 x i64> %i.fi, i64 %.sroa.0398.1443, i64 1 ; 3 uses
  %i.fk = lshr <2 x i64> %i.fj, splat (i64 45)
  %i.fl = lshr <2 x i64> %i.fj, splat (i64 27)
end_hunk_0
