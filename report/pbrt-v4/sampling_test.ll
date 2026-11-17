Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN31Sampling_SphericalTriangle_Test8TestBodyEv:_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.dk = phi ptr [ %i.dj, %bb.e ], [ @.str.360, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 444, ptr noundef %i.dk)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.dl = load ptr, ptr %3, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.dm, label %bb.i, label %_ZN7testing7MessageD2Ev.exit

bb.i:                                             ; preds = %.noexc.i.i
  %i.dn = load ptr, ptr %3, align 8, !tbaa !39    ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN7testing7MessageD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %.noexc.i.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.n ], [ %i.dv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.du, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31
  %.not.i.i.i349 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i349, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i350 unwind label %bb.u

.noexc.i.i350:                                    ; preds = %bb.r
  br i1 %i.dz, label %bb.s, label %_ZN7testing15AssertionResultD2Ev.exit

bb.s:                                             ; preds = %.noexc.i.i350
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !31 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !36 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !42
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %.noexc.i.i350, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36), <2 x float>, float, <2 x float>, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN38Sampling_SphericalTriangleInverse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.pstd::array.44", align 8    ; 12 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 11 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 11 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

bb.b:                                             ; preds = %.loopexit
  ret void

_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.a, %.loopexit
  %.0165397 = phi i32 [ 0, %bb.a ], [ %i.ok, %.loopexit ]
  %.sroa.0.0396 = phi i64 [ -8846114313915602277, %bb.a ], [ %.sroa.0.2, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.u = mul i64 %.sroa.0.0396, 6364136223846793005
  %i.v = add i64 %i.u, -2720673578348880933       ; 2 uses
  %i.w = mul i64 %i.v, 6364136223846793005
  %i.x = insertelement <2 x i64> poison, i64 %.sroa.0.0396, i64 0
  %i.y = insertelement <2 x i64> %i.x, i64 %i.v, i64 1 ; 3 uses
  %i.z = lshr <2 x i64> %i.y, splat (i64 45)
  %i.aa = lshr <2 x i64> %i.y, splat (i64 27)
  %i.ab = xor <2 x i64> %i.z, %i.aa
  %i.ac = trunc <2 x i64> %i.ab to <2 x i32>      ; 2 uses
  %i.ad = lshr <2 x i64> %i.y, splat (i64 59)
  %i.ae = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.af = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ac, <2 x i32> %i.ac, <2 x i32> %i.ae)
  %i.ag = uitofp <2 x i32> %i.af to <2 x float>
  %i.ah = fmul nnan <2 x float> %i.ag, splat (float f0x2F800000) ; 2 uses
  %i.ai = fcmp olt <2 x float> %i.ah, splat (float f0x3F7FFFFF)
  %i.aj = select <2 x i1> %i.ai, <2 x float> %i.ah, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ak = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aj
  %i.al = fmul nnan <2 x float> %i.ak, splat (float 1.000000e+01)
  %i.am = fmul nnan <2 x float> %i.aj, splat (float 1.000000e+01)
  %i.an = fsub <2 x float> %i.am, %i.al           ; 2 uses
  store <2 x float> %i.an, ptr %5, align 8
  %i.ao = add i64 %i.w, -2720673578348880933      ; 3 uses
  %i.ap = mul i64 %i.ao, 6364136223846793005
  %i.aq = add i64 %i.ap, -2720673578348880933     ; 2 uses
  %i.ar = mul i64 %i.aq, 6364136223846793005
  %i.as = add i64 %i.ar, -2720673578348880933     ; 2 uses
  %i.at = mul i64 %i.as, 6364136223846793005
  %i.au = add i64 %i.at, -2720673578348880933     ; 3 uses
  %i.av = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %i.aw = insertelement <2 x i64> %i.av, i64 %i.as, i64 1 ; 3 uses
  %i.ax = lshr <2 x i64> %i.aw, splat (i64 45)
  %i.ay = lshr <2 x i64> %i.aw, splat (i64 27)
  %i.az = xor <2 x i64> %i.ax, %i.ay
  %i.ba = trunc <2 x i64> %i.az to <2 x i32>      ; 2 uses
  %i.bb = lshr <2 x i64> %i.aw, splat (i64 59)
  %i.bc = trunc nuw nsw <2 x i64> %i.bb to <2 x i32>
  %i.bd = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ba, <2 x i32> %i.ba, <2 x i32> %i.bc)
  %i.be = uitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = fmul nnan <2 x float> %i.be, splat (float f0x2F800000) ; 2 uses
  %i.bg = fcmp olt <2 x float> %i.bf, splat (float f0x3F7FFFFF)
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.bf, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bi = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bj = fmul nnan <2 x float> %i.bi, splat (float 1.000000e+01)
  %i.bk = fmul nnan <2 x float> %i.bh, splat (float 1.000000e+01)
  %i.bl = fsub <2 x float> %i.bk, %i.bj           ; 3 uses
  %i.bm = mul i64 %i.au, 6364136223846793005
  %i.bn = add i64 %i.bm, -2720673578348880933     ; 2 uses
  %i.bo = mul i64 %i.bn, 6364136223846793005
  %i.bp = add i64 %i.bo, -2720673578348880933     ; 2 uses
  %i.bq = mul i64 %i.bp, 6364136223846793005
  %i.br = add i64 %i.bq, -2720673578348880933     ; 3 uses
  %i.bs = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %i.bt = insertelement <2 x i64> %i.bs, i64 %i.bp, i64 1 ; 3 uses
  %i.bu = lshr <2 x i64> %i.bt, splat (i64 45)
  %i.bv = lshr <2 x i64> %i.bt, splat (i64 27)
  %i.bw = xor <2 x i64> %i.bu, %i.bv
  %i.bx = trunc <2 x i64> %i.bw to <2 x i32>      ; 2 uses
  %i.by = lshr <2 x i64> %i.bt, splat (i64 59)
  %i.bz = trunc nuw nsw <2 x i64> %i.by to <2 x i32>
  %i.ca = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bx, <2 x i32> %i.bx, <2 x i32> %i.bz)
  %i.cb = uitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = fmul nnan <2 x float> %i.cb, splat (float f0x2F800000) ; 2 uses
  %i.cd = fcmp olt <2 x float> %i.cc, splat (float f0x3F7FFFFF)
  %i.ce = select <2 x i1> %i.cd, <2 x float> %i.cc, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.cf = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ce
  %i.cg = fmul nnan <2 x float> %i.cf, splat (float 1.000000e+01)
  %i.ch = fmul nnan <2 x float> %i.ce, splat (float 1.000000e+01)
  %i.ci = fsub <2 x float> %i.ch, %i.cg           ; 3 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ck = insertelement <3 x i64> poison, i64 %i.au, i64 0
  %i.cl = insertelement <3 x i64> %i.ck, i64 %i.br, i64 1
  %i.cm = insertelement <3 x i64> %i.cl, i64 %i.ao, i64 2 ; 2 uses
  %i.cn = lshr <3 x i64> %i.cm, splat (i64 45)
  %i.co = lshr <3 x i64> %i.cm, splat (i64 27)
  store <2 x float> %i.bl, ptr %i.g, align 4
  store <2 x float> %i.ci, ptr %i.i, align 8
  %i.cp = mul i64 %i.br, 6364136223846793005
  %i.cq = add i64 %i.cp, -2720673578348880933     ; 2 uses
  %i.cr = mul i64 %i.cq, 6364136223846793005
  %i.cs = add i64 %i.cr, -2720673578348880933     ; 2 uses
  %i.ct = mul i64 %i.cs, 6364136223846793005
  %i.cu = add i64 %i.ct, -2720673578348880933     ; 4 uses
  %i.cv = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %i.cw = insertelement <2 x i64> %i.cv, i64 %i.cs, i64 1 ; 3 uses
  %i.cx = lshr <2 x i64> %i.cw, splat (i64 45)
  %i.cy = lshr <2 x i64> %i.cw, splat (i64 27)
  %i.cz = xor <2 x i64> %i.cx, %i.cy
  %i.da = trunc <2 x i64> %i.cz to <2 x i32>      ; 2 uses
  %i.db = lshr <2 x i64> %i.cw, splat (i64 59)
  %i.dc = trunc nuw nsw <2 x i64> %i.db to <2 x i32>
  %i.dd = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.da, <2 x i32> %i.da, <2 x i32> %i.dc)
  %i.de = uitofp <2 x i32> %i.dd to <2 x float>
  %i.df = fmul nnan <2 x float> %i.de, splat (float f0x2F800000) ; 2 uses
  %i.dg = fcmp olt <2 x float> %i.df, splat (float f0x3F7FFFFF)
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.df, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.di = fadd <2 x float> %i.dh, splat (float -1.000000e+00)
  %i.dj = fadd <2 x float> %i.dh, %i.di           ; 4 uses
  %i.dk = mul i64 %i.cu, 6364136223846793005
  %i.dl = add i64 %i.dk, -2720673578348880933     ; 2 uses
  %i.dm = lshr i64 %i.cu, 45
  %i.dn = lshr i64 %i.cu, 27
  %i.do = xor i64 %i.dm, %i.dn
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = lshr i64 %i.cu, 59
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = call noundef i32 @llvm.fshr.i32(i32 %i.dp, i32 %i.dp, i32 %i.dr)
  %i.dt = uitofp i32 %i.ds to float
  %i.du = fmul nnan float %i.dt, f0x2F800000      ; 2 uses
  %i.dv = fcmp olt float %i.du, f0x3F7FFFFF
  %.sroa.speculated.i8.i194 = select i1 %i.dv, float %i.du, float f0x3F7FFFFF ; 2 uses
  %i.dw = fadd float %.sroa.speculated.i8.i194, -1.000000e+00
  %i.dx = lshr i64 %i.ao, 59
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = lshr i64 %i.au, 59
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = xor <3 x i64> %i.cn, %i.co
  %i.ec = trunc <3 x i64> %i.eb to <3 x i32>      ; 2 uses
  %i.ed = lshr i64 %i.br, 59
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = insertelement <3 x i32> poison, i32 %i.ea, i64 0
  %i.eg = insertelement <3 x i32> %i.ef, i32 %i.ee, i64 1
  %i.eh = insertelement <3 x i32> %i.eg, i32 %i.dy, i64 2
  %i.ei = call <3 x i32> @llvm.fshr.v3i32(<3 x i32> %i.ec, <3 x i32> %i.ec, <3 x i32> %i.eh)
  %i.ej = uitofp <3 x i32> %i.ei to <3 x float>
  %i.ek = fmul nnan <3 x float> %i.ej, splat (float f0x2F800000) ; 2 uses
  %i.el = fcmp olt <3 x float> %i.ek, splat (float f0x3F7FFFFF)
  %i.em = select <3 x i1> %i.el, <3 x float> %i.ek, <3 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.en = fsub nnan <3 x float> splat (float 1.000000e+00), %i.em
  %i.eo = fmul nnan <3 x float> %i.en, splat (float 1.000000e+01)
  %i.ep = fmul nnan <3 x float> %i.em, splat (float 1.000000e+01)
  %i.eq = fsub <3 x float> %i.ep, %i.eo           ; 5 uses
  %i.er = extractelement <3 x float> %i.eq, i64 1 ; 2 uses
  %i.es = extractelement <3 x float> %i.eq, i64 2
  store float %i.es, ptr %i.f, align 8
  %i.et = extractelement <3 x float> %i.eq, i64 0
  store float %i.et, ptr %i.h, align 4
  store float %i.er, ptr %i.j, align 8
  %i.eu = fadd float %.sroa.speculated.i8.i194, %i.dw ; 5 uses
  %i.ev = shufflevector <2 x float> %i.an, <2 x float> %i.bl, <4 x i32> <i32 0, i32 3, i32 poison, i32 1>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ex = shufflevector <2 x float> %i.ci, <2 x float> %i.bl, <8 x i32> <i32 1, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <3 x float> %i.eq, <3 x float> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ew, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fc = shufflevector <2 x float> %i.dj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.fd = insertelement <8 x float> poison, float %i.eu, i64 0 ; 2 uses
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.ff = shufflevector <3 x float> %i.fc, <3 x float> %i.fe, <8 x i32> <i32 1, i32 5, i32 0, i32 5, i32 0, i32 1, i32 0, i32 1>
  %i.fg = fsub <8 x float> %i.fb, %i.ff           ; 3 uses
  %i.fh = shufflevector <8 x float> %i.fd, <8 x float> poison, <3 x i32> zeroinitializer
  %i.fi = fsub <3 x float> %i.eq, %i.fh           ; 2 uses
  %i.fj = fsub float %i.er, %i.eu
  %i.fk = shufflevector <8 x float> %i.fg, <8 x float> poison, <3 x i32> <i32 2, i32 6, i32 4> ; 2 uses
  %i.fl = fmul <3 x float> %i.fk, %i.fk
  %i.fm = shufflevector <8 x float> %i.fg, <8 x float> poison, <3 x i32> <i32 5, i32 0, i32 7> ; 2 uses
  %i.fn = fmul <3 x float> %i.fm, %i.fm
  %i.fo = fadd <3 x float> %i.fl, %i.fn
  %i.fp = fmul <3 x float> %i.fi, %i.fi
  %i.fq = fadd <3 x float> %i.fp, %i.fo
  %i.fr = call <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.fq) ; 2 uses
  %i.fs = shufflevector <3 x float> %i.fr, <3 x float> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 2, i32 2, i32 0, i32 1, i32 2>
  %i.ft = fdiv <8 x float> %i.fg, %i.fs           ; 12 uses
  %i.fu = extractelement <3 x float> %i.fr, i64 1
  %i.fv = fdiv float %i.fj, %i.fu                 ; 5 uses
  %i.fw = extractelement <8 x float> %i.ft, i64 1
  %i.fx = extractelement <8 x float> %i.ft, i64 2 ; 2 uses
  %i.fy = fmul float %i.fx, %i.fv                 ; 2 uses
  %i.fz = fneg float %i.fy
  %i.ga = extractelement <8 x float> %i.ft, i64 6
  %i.gb = call noundef float @llvm.fma.f32(float %i.fw, float %i.ga, float %i.fz)
  %i.gc = fneg float %i.fx
  %i.gd = call noundef float @llvm.fma.f32(float %i.gc, float %i.fv, float %i.fy)
  %i.ge = fadd float %i.gb, %i.gd
  %i.gf = extractelement <8 x float> %i.ft, i64 7
  %i.gg = fmul float %i.gf, %i.ge
  %i.gh = extractelement <8 x float> %i.ft, i64 3
  %i.gi = shufflevector <8 x float> %i.ft, <8 x float> poison, <2 x i32> <i32 5, i32 1> ; 2 uses
  %i.gj = shufflevector <8 x float> %i.ft, <8 x float> poison, <2 x i32> <i32 6, i32 0> ; 2 uses
  %i.gk = fmul <2 x float> %i.gi, %i.gj           ; 2 uses
  %i.gl = fneg <2 x float> %i.gk
  %i.gm = shufflevector <8 x float> %i.ft, <8 x float> poison, <2 x i32> <i32 2, i32 5>
  %i.gn = shufflevector <8 x float> %i.ft, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.go = insertelement <2 x float> %i.gn, float %i.fv, i64 1
  %i.gp = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gm, <2 x float> %i.go, <2 x float> %i.gl)
  %i.gq = fneg <2 x float> %i.gi
  %i.gr = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gq, <2 x float> %i.gj, <2 x float> %i.gk)
  %i.gs = fadd <2 x float> %i.gp, %i.gr
  %i.gt = shufflevector <8 x float> %i.ft, <8 x float> poison, <2 x i32> <i32 3, i32 4>
  %i.gu = fmul <2 x float> %i.gt, %i.gs           ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 1
  %i.gw = fadd float %i.gv, %i.gg
  %i.gx = extractelement <2 x float> %i.gu, i64 0
  %i.gy = fadd float %i.gx, %i.gw
  %i.gz = insertelement <8 x float> poison, float %i.fv, i64 0
  %i.ha = shufflevector <8 x float> %i.ft, <8 x float> %i.gz, <8 x i32> <i32 5, i32 8, i32 6, i32 1, i32 2, i32 7, i32 4, i32 0>
  %i.hb = fmul <8 x float> %i.ft, %i.ha           ; 7 uses
  %shift = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <8 x float> %i.hb, %shift
  %i.hc = extractelement <8 x float> %foldExtExtBinop, i64 4
  %i.hd = fmul float %i.gh, %i.fv
  %i.he = shufflevector <8 x float> %i.hb, <8 x float> poison, <2 x i32> <i32 3, i32 6>
  %i.hf = shufflevector <8 x float> %i.hb, <8 x float> poison, <2 x i32> <i32 poison, i32 7>
  %i.hg = insertelement <2 x float> %i.hf, float %i.hc, i64 0
  %i.hh = fadd <2 x float> %i.he, %i.hg
  %i.hi = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.hd, i64 1
  %i.hj = fadd <2 x float> %i.hh, %i.hi           ; 2 uses
  %shift477 = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop478 = fadd <2 x float> %i.hj, %shift477
  %i.hk = extractelement <2 x float> %foldExtExtBinop478, i64 0
  %shift480 = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop481 = fadd <8 x float> %shift480, %i.hb
  %shift483 = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop484 = fadd <8 x float> %shift483, %foldExtExtBinop481
  %i.hl = extractelement <8 x float> %foldExtExtBinop484, i64 0
  %i.hm = fadd float %i.hl, %i.hk
  %i.hn = call noundef float @atan2f(float noundef %i.gy, float noundef %i.hm) #30
  %i.ho = fmul float %i.hn, 2.000000e+00
  %i.hp = call noundef float @llvm.fabs.f32(float %i.ho)
  %i.hq = fpext float %i.hp to double
  %i.hr = fcmp olt double %i.hq, 5.000000e-03
  br i1 %i.hr, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit, %_ZN7testing15AssertionResultD2Ev.exit322
  %.0166395 = phi i32 [ %i.oj, %_ZN7testing15AssertionResultD2Ev.exit322 ], [ 0, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit ]
  %.sroa.0.1394 = phi i64 [ %i.hv, %_ZN7testing15AssertionResultD2Ev.exit322 ], [ %i.dl, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.hs = mul i64 %.sroa.0.1394, 6364136223846793005
  %i.ht = add i64 %i.hs, -2720673578348880933     ; 2 uses
  %i.hu = mul i64 %i.ht, 6364136223846793005
  %i.hv = add i64 %i.hu, -2720673578348880933     ; 2 uses
  %i.hw = insertelement <2 x i64> poison, i64 %.sroa.0.1394, i64 0
  %i.hx = insertelement <2 x i64> %i.hw, i64 %i.ht, i64 1 ; 3 uses
  %i.hy = lshr <2 x i64> %i.hx, splat (i64 45)
  %i.hz = lshr <2 x i64> %i.hx, splat (i64 27)
  %i.ia = xor <2 x i64> %i.hy, %i.hz
  %i.ib = trunc <2 x i64> %i.ia to <2 x i32>      ; 2 uses
  %i.ic = lshr <2 x i64> %i.hx, splat (i64 59)
  %i.id = trunc nuw nsw <2 x i64> %i.ic to <2 x i32>
  %i.ie = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ib, <2 x i32> %i.ib, <2 x i32> %i.id)
  %i.if = uitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = fmul nnan <2 x float> %i.if, splat (float f0x2F800000) ; 2 uses
  %i.ih = fcmp olt <2 x float> %i.ig, splat (float f0x3F7FFFFF)
  %i.ii = select <2 x i1> %i.ih, <2 x float> %i.ig, <2 x float> splat (float f0x3F7FFFFF) ; 5 uses
  %i.ij = call { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36) %5, <2 x float> %i.dj, float %i.eu, <2 x float> %i.ii, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract61 = extractvalue { <2 x float>, float } %i.ij, 0 ; 3 uses
  %.fca.1.extract62 = extractvalue { <2 x float>, float } %i.ij, 1 ; 2 uses
  %.sroa.059.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !22
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !22
  %i.ik = load <4 x float>, ptr %i.f, align 8, !tbaa !22
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.im = fmul <2 x float> %.fca.0.extract61, %i.il ; 2 uses
  %shift486 = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop487 = fadd <2 x float> %i.im, %shift486
  %i.in = extractelement <2 x float> %foldExtExtBinop487, i64 0
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.i, align 8, !tbaa !22
  %.sroa.234.0.copyload = load float, ptr %i.j, align 8, !tbaa !22
  %i.io = fmul float %.fca.1.extract62, %.sroa.234.0.copyload
  %i.ip = fadd float %i.in, %i.io
  %i.iq = fsub float %i.ip, %i.eu                 ; 3 uses
  %i.ir = fmul float %i.iq, %i.iq
  %i.is = shufflevector <2 x float> %.fca.0.extract61, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.is, %.sroa.059.0.copyload
  %i.iu = shufflevector <2 x float> %.fca.0.extract61, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = fmul <2 x float> %i.iu, %.sroa.049.0.copyload
  %i.iw = fadd <2 x float> %i.it, %i.iv
  %i.ix = insertelement <2 x float> poison, float %.fca.1.extract62, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iy, %.sroa.033.0.copyload
  %i.ja = fadd <2 x float> %i.iw, %i.iz
  %i.jb = fsub <2 x float> %i.ja, %i.dj           ; 3 uses
  %i.jc = fmul <2 x float> %i.jb, %i.jb           ; 2 uses
  %shift489 = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop490 = fadd <2 x float> %i.jc, %shift489
  %i.jd = extractelement <2 x float> %foldExtExtBinop490, i64 0
  %i.je = fadd float %i.ir, %i.jd
  %sqrt.i.i266 = call noundef float @llvm.sqrt.f32(float %i.je) ; 2 uses
  %i.jf = insertelement <2 x float> poison, float %sqrt.i.i266, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fdiv <2 x float> %i.jb, %i.jg
  %i.ji = fdiv float %i.iq, %sqrt.i.i266
  %i.jj = call <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36) %5, <2 x float> %i.dj, float %i.eu, <2 x float> %i.jh, float %i.ji) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.sroa.0323.0.vec.extract = extractelement <2 x float> %i.jj, i64 0 ; 2 uses
  %i.jk = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %foldExtExtBinop492 = fsub <2 x float> %i.jj, %i.ii
  %i.jl = extractelement <2 x float> %foldExtExtBinop492, i64 0
  %i.jm = call noundef float @llvm.fabs.f32(float %i.jl)
  store float %i.jm, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store float 2.500000e-02, ptr %i.c, align 4, !tbaa !22
  call void @_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.jn = load i8, ptr %6, align 8, !tbaa !28, !range !29, !noundef !30
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.t, label %bb.c

bb.c:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.jp = load ptr, ptr %7, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.jq = extractelement <2 x float> %i.ii, i64 1
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, float noundef %i.jk, float noundef %i.jq)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.js = load ptr, ptr %4, align 8, !tbaa !36
  %i.jt = load i64, ptr %i.k, align 8, !tbaa !60
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.js, i64 noundef %i.jt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.jv = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.l
  br i1 %i.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.jx = load i64, ptr %i.l, align 8, !tbaa !42
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN27Sampling_SphericalQuad_Test8TestBodyEv:_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit275, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %bb.d
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.o ], [ %i.do, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.dn, %bb.m ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.dm, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn

bb.s:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31
  %.not.i.i.i278 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i278, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i279 unwind label %bb.w

.noexc.i.i279:                                    ; preds = %bb.t
  br i1 %i.ds, label %bb.u, label %_ZN7testing15AssertionResultD2Ev.exit

bb.u:                                             ; preds = %.noexc.i.i279
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !36 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !42
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.s, %.noexc.i.i279, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

declare { <2 x float>, float } @_ZN4pbrt24SampleSphericalRectangleENS_6Point3IfEES1_NS_7Vector3IfEES3_NS_6Point2IfEEPf(<2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float, ptr noundef byval(%"class.pbrt::Point2") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34Sampling_SphericalQuadInverse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca [2 x [2 x %"class.pbrt::Point3"]], align 16 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %6 = alloca %"class.pbrt::Point2", align 8      ; 2 uses
  %7 = alloca %"class.pbrt::Point3", align 8      ; 3 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 13 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 13 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store <8 x float> <float 4.000000e+00, float 1.000000e+00, float 1.000000e+00, float 6.000000e+00, float 1.000000e+00, float -2.000000e+00, float 4.000000e+00, float 4.000000e+00>, ptr %5, align 16, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x float> <float 1.000000e+00, float 6.000000e+00, float 4.000000e+00, float -2.000000e+00>, ptr %i.h, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.i = load i32, ptr @_ZN4pbrt6PrimesE, align 16, !tbaa !20 ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = udiv i64 -1, %i.j
  %i.l = sub nuw i64 %i.k, %i.j
  %i.m = uitofp i32 %i.i to float
  %i.n = fdiv nnan float 1.000000e+00, %i.m
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i32 32768, ptr %i.g, align 4, !tbaa !20
  call void @_ZN7testing8internal11CmpHelperGTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.y = load i8, ptr %14, align 8, !tbaa !28, !range !29, !noundef !30
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.bm, label %bb.ay

bb.c:                                             ; preds = %bb.a, %bb.aw
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.aw ] ; 4 uses
  %.sroa.0254.0293 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.bn, %bb.aw ] ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i.i, label %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %indvars.iv, %bb.c ] ; 3 uses
  %.01922.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.02021.i.i = phi float [ %i.ac, %.lr.ph.i.i ], [ 1.000000e+00, %bb.c ]
  %i.aa = udiv i64 %.023.i.i, %i.j                ; 2 uses
  %reass.add.i.i = sub i64 %.01922.i.i, %i.aa
  %reass.mul.i.i = mul i64 %reass.add.i.i, %i.j
  %i.ab = add i64 %reass.mul.i.i, %.023.i.i       ; 3 uses
  %i.ac = fmul float %i.n, %.02021.i.i            ; 2 uses
  %i.ad = icmp samesign uge i64 %.023.i.i, %i.j
  %i.ae = icmp ult i64 %i.ab, %i.l
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ag = uitofp i64 %i.ab to float
  %i.ah = fmul float %i.ac, %i.ag
  br label %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit

_ZN4pbrt6detail16Hammersley2DIterdeEv.exit:       ; preds = %bb.c, %._crit_edge.loopexit.i.i
  %i.ai = phi float [ 0.000000e+00, %bb.c ], [ %i.ah, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = uitofp nneg i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x37800000      ; 6 uses
  %i.am = fcmp ogt float %i.ai, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.am, float f0x3F7FFFFF, float %i.ai ; 6 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %.sroa.speculated.i.i, i64 1
  %i.an = mul i64 %.sroa.0254.0293, 6364136223846793005
  %i.ao = add i64 %i.an, -2720673578348880933     ; 2 uses
  %i.ap = mul i64 %i.ao, 6364136223846793005
  %i.aq = add i64 %i.ap, -2720673578348880933     ; 2 uses
  %i.ar = mul i64 %i.aq, 6364136223846793005
  %i.as = add i64 %i.ar, -2720673578348880933     ; 2 uses
  %i.at = mul i64 %i.as, 6364136223846793005
  %i.au = add i64 %i.at, -2720673578348880933     ; 4 uses
  %i.av = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %i.aw = insertelement <2 x i64> %i.av, i64 %i.as, i64 1 ; 3 uses
  %i.ax = lshr <2 x i64> %i.aw, splat (i64 45)
  %i.ay = lshr <2 x i64> %i.aw, splat (i64 27)
  %i.az = xor <2 x i64> %i.ax, %i.ay
  %i.ba = trunc <2 x i64> %i.az to <2 x i32>      ; 2 uses
  %i.bb = lshr <2 x i64> %i.aw, splat (i64 59)
  %i.bc = trunc nuw nsw <2 x i64> %i.bb to <2 x i32>
  %i.bd = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ba, <2 x i32> %i.ba, <2 x i32> %i.bc)
  %i.be = uitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = fmul nnan <2 x float> %i.be, splat (float f0x2F800000) ; 2 uses
  %i.bg = fcmp olt <2 x float> %i.bf, splat (float f0x3F7FFFFF)
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.bf, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bi = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bj = fmul nnan <2 x float> %i.bi, splat (float 1.000000e+01)
  %i.bk = fmul nnan <2 x float> %i.bh, splat (float 1.000000e+01)
  %i.bl = fsub <2 x float> %i.bk, %i.bj           ; 2 uses
  %i.bm = mul i64 %i.au, 6364136223846793005
  %i.bn = add i64 %i.bm, -2720673578348880933
  %i.bo = lshr i64 %i.au, 45
  %i.bp = lshr i64 %i.au, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.au, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 %i.bt)
  %i.bv = uitofp i32 %i.bu to float
  %i.bw = fmul nnan float %i.bv, f0x2F800000      ; 2 uses
  %i.bx = fcmp olt float %i.bw, f0x3F7FFFFF
  %.sroa.speculated.i133 = select i1 %i.bx, float %i.bw, float f0x3F7FFFFF ; 2 uses
  %i.by = fsub nnan float 1.000000e+00, %.sroa.speculated.i133
  %i.bz = fmul nnan float %i.by, 1.000000e+01
  %i.ca = fmul nnan float %.sroa.speculated.i133, 1.000000e+01
  %i.cb = fsub float %i.ca, %i.bz                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cc = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.cd = insertelement <2 x i64> %i.cc, i64 %.sroa.0254.0293, i64 1 ; 3 uses
  %i.ce = lshr <2 x i64> %i.cd, splat (i64 45)
  %i.cf = lshr <2 x i64> %i.cd, splat (i64 27)
  %i.cg = xor <2 x i64> %i.ce, %i.cf
  %i.ch = trunc <2 x i64> %i.cg to <2 x i32>      ; 2 uses
  %i.ci = lshr <2 x i64> %i.cd, splat (i64 59)
  %i.cj = trunc nuw nsw <2 x i64> %i.ci to <2 x i32>
  %i.ck = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ch, <2 x i32> %i.ch, <2 x i32> %i.cj)
  %i.cl = and <2 x i32> %i.ck, splat (i32 1)      ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.cn ; 4 uses
  %i.cp = extractelement <2 x i32> %i.cl, i64 0
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.cq ; 2 uses
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.cr, align 4 ; 6 uses
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 4 ; 6 uses
  %i.cs = icmp eq <2 x i32> %i.cl, zeroinitializer ; 2 uses
  %i.ct = extractelement <2 x i1> %i.cs, i64 1
  %.sroa.sel.idx.sroa.sel.idx = select i1 %i.ct, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel.idx.sroa.sel.idx
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %.sroa.sel.idx.sroa.sel, i64 %i.cq ; 3 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 4, !tbaa !22
  %i.cw = fsub <2 x float> %i.cv, %.sroa.062.0.copyload
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !274
  %i.cz = fsub float %i.cy, %.sroa.263.0.copyload
  %i.da = extractelement <2 x i1> %i.cs, i64 0    ; 3 uses
  %.sroa.sel93.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.da, i64 12, i64 0
  %.sroa.sel93.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.sel93.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.db = load float, ptr %.sroa.sel93.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !tbaa !275
  %.sroa.sel93.idx.sroa.sel.sroa.sel272.v.sroa.sel.v.sroa.sel.v = select i1 %i.da, i64 16, i64 4
  %.sroa.sel93.idx.sroa.sel.sroa.sel272.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.sel93.idx.sroa.sel.sroa.sel272.v.sroa.sel.v.sroa.sel.v ; 2 uses
  %i.dc = load float, ptr %.sroa.sel93.idx.sroa.sel.sroa.sel272.v.sroa.sel.v.sroa.sel, align 4, !tbaa !276
  %i.dd = insertelement <2 x float> poison, float %i.db, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.dc, i64 1
  %i.df = fsub <2 x float> %i.de, %.sroa.062.0.copyload
  %.sroa.sel93.idx.sroa.sel.sroa.sel269.v.sroa.sel.v.sroa.sel.v = select i1 %i.da, i64 20, i64 8
  %.sroa.sel93.idx.sroa.sel.sroa.sel269.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.sel93.idx.sroa.sel.sroa.sel269.v.sroa.sel.v.sroa.sel.v ; 2 uses
  %i.dg = load float, ptr %.sroa.sel93.idx.sroa.sel.sroa.sel269.v.sroa.sel.v.sroa.sel, align 4, !tbaa !274
  %i.dh = fsub float %i.dg, %.sroa.263.0.copyload
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %6, align 8
  %i.di = call { <2 x float>, float } @_ZN4pbrt24SampleSphericalRectangleENS_6Point3IfEES1_NS_7Vector3IfEES3_NS_6Point2IfEEPf(<2 x float> %i.bl, float %i.cb, <2 x float> %.sroa.062.0.copyload, float %.sroa.263.0.copyload, <2 x float> %i.cw, float %i.cz, <2 x float> %i.df, float %i.dh, ptr noundef nonnull byval(%"class.pbrt::Point2") align 8 %6, ptr noundef nonnull %i.b) ; 2 uses
  %i.dj = load float, ptr %i.b, align 4, !tbaa !22
  %i.dk = fdiv float 1.000000e+00, %i.dj
  %i.dl = fpext float %i.dk to double
  %i.dm = fcmp olt double %i.dl, 1.000000e-02
  br i1 %i.dm, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit
  %.fca.1.extract31 = extractvalue { <2 x float>, float } %i.di, 1
  %.fca.0.extract30 = extractvalue { <2 x float>, float } %i.di, 0
  %i.dn = load i32, ptr %i.a, align 4, !tbaa !20
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.a, align 4, !tbaa !20
  %i.dp = load <2 x float>, ptr %i.cu, align 4, !tbaa !22
  %i.dq = fsub <2 x float> %i.dp, %.sroa.062.0.copyload
  %i.dr = load float, ptr %i.cx, align 4, !tbaa !274
  %i.ds = fsub float %i.dr, %.sroa.263.0.copyload
  %i.dt = load float, ptr %.sroa.sel93.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !tbaa !275
  %i.du = load float, ptr %.sroa.sel93.idx.sroa.sel.sroa.sel272.v.sroa.sel.v.sroa.sel, align 4, !tbaa !276
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.du, i64 1
  %i.dx = fsub <2 x float> %i.dw, %.sroa.062.0.copyload
  %i.dy = load float, ptr %.sroa.sel93.idx.sroa.sel.sroa.sel269.v.sroa.sel.v.sroa.sel, align 4, !tbaa !274
  %i.dz = fsub float %i.dy, %.sroa.263.0.copyload
  store <2 x float> %.fca.0.extract30, ptr %7, align 8
  store float %.fca.1.extract31, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ea = call <2 x float> @_ZN4pbrt30InvertSphericalRectangleSampleENS_6Point3IfEES1_NS_7Vector3IfEES3_S1_(<2 x float> %i.bl, float %i.cb, <2 x float> %.sroa.062.0.copyload, float %.sroa.263.0.copyload, <2 x float> %i.dq, float %i.ds, <2 x float> %i.dx, float %i.dz, ptr noundef nonnull byval(%"class.pbrt::Point3") align 8 %7) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.sroa.0226.0.vec.extract = extractelement <2 x float> %i.ea, i64 0 ; 3 uses
  %i.eb = fpext float %i.al to double
  %i.ec = fcmp olt double %i.eb, 1.000000e-02
  %i.ed = fsub float %.sroa.0226.0.vec.extract, %i.al ; 2 uses
  %i.ee = fdiv float %i.ed, %i.al
  %.sink.i = select i1 %i.ec, float %i.ed, float %i.ee
  %i.ef = call noundef float @llvm.fabs.f32(float %.sink.i)
  store float %i.ef, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store double 1.000000e-02, ptr %i.d, align 8, !tbaa !58
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.eg = load i8, ptr %8, align 8, !tbaa !28, !range !29, !noundef !30
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ei = load ptr, ptr %9, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, float noundef %i.al, float noundef %.sroa.speculated.i.i)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.f
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %4, align 8, !tbaa !36
  %i.el = load i64, ptr %i.o, align 8, !tbaa !60
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.ek, i64 noundef %i.el)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.en = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.p
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.ep = load i64, ptr %i.p, align 8, !tbaa !42
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.p
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.g
  %i.eu = load i64, ptr %i.p, align 8, !tbaa !42
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ew = load ptr, ptr %9, align 8, !tbaa !39
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.166, i64 noundef 12)
          to label %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ez = load ptr, ptr %9, align 8, !tbaa !39
  %.sroa.0226.4.vec.extract = extractelement <2 x float> %i.ea, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, float noundef %.sroa.0226.0.vec.extract, float noundef %.sroa.0226.4.vec.extract)
          to label %.noexc163 unwind label %bb.q

.noexc163:                                        ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %3, align 8, !tbaa !36
  %i.fc = load i64, ptr %i.q, align 8, !tbaa !60
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef %i.fb, i64 noundef %i.fc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i160 unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i160: ; preds = %.noexc163
  %i.fe = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.r
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i161: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i160
  %i.fg = load i64, ptr %i.r, align 8, !tbaa !42
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i162

bb.h:                                             ; preds = %.noexc163
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.r
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i157: ; preds = %bb.h
  %i.fl = load i64, ptr %i.r, align 8, !tbaa !42
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i158: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i162: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.fn = load ptr, ptr %9, align 8, !tbaa !39
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull @.str.177, i64 noundef 14)
          to label %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i162
  %i.fq = load float, ptr %i.b, align 4, !tbaa !22
  %i.fr = fdiv float 1.000000e+00, %i.fq
  %i.fs = load ptr, ptr %9, align 8, !tbaa !39
end_hunk_1
begin_hunk_2_@_ZN20Sampling_Linear_Test8TestBodyEv:.noexc

bb.ai:                                            ; preds = %.noexc.i.i130
  %i.ct = load ptr, ptr %5, align 8, !tbaa !39    ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN7testing7MessageD2Ev.exit131, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit131

bb.ak:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #31
  unreachable

_ZN7testing7MessageD2Ev.exit131:                  ; preds = %bb.ag, %.noexc.i.i130, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aq

bb.al:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit128
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn116 = phi { ptr, i32 } [ %i.dc, %bb.an ], [ %i.db, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.ao ], [ %i.da, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  br label %bb.av

bb.aq:                                            ; preds = %bb.z, %_ZN7testing7MessageD2Ev.exit131
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !31
  %.not.i.i.i132 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i132, label %_ZN7testing15AssertionResultD2Ev.exit137, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i133 unwind label %bb.au

.noexc.i.i133:                                    ; preds = %bb.ar
  br i1 %i.de, label %bb.as, label %_ZN7testing15AssertionResultD2Ev.exit137

bb.as:                                            ; preds = %.noexc.i.i133
  %i.df = load ptr, ptr %i.j, align 8, !tbaa !31  ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN7testing15AssertionResultD2Ev.exit137, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !36 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134: ; preds = %bb.at
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !42
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit137

bb.au:                                            ; preds = %bb.ar
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit137:         ; preds = %bb.aq, %.noexc.i.i133, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond304.not, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.preheader294, !llvm.loop !278

bb.av:                                            ; preds = %bb.ap, %bb.ab
  %.pn116.pn.pn = phi { ptr, i32 } [ %.pn116.pn, %bb.ap ], [ %i.cn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit217

bb.aw:                                            ; preds = %bb.a
  %i.do = load ptr, ptr %i.k, align 8, !tbaa !69  ; 2 uses
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !49
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30
  invoke void @_ZN4pbrt19PiecewiseConstant1DC2EN4pstd4spanIKfEEffNS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(76) %9, ptr %i.dt, i64 %i.dv, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr %i.dw)
          to label %.preheader293 unwind label %bb.bc

.preheader293:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  br label %bb.bd

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit179
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  br label %bb.dk

bb.az:                                            ; preds = %bb.a
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %i.k, align 8, !tbaa !69  ; 2 uses
  %.not.i139 = icmp eq ptr %i.ej, null
  br i1 %.not.i139, label %_ZNSt14_Function_baseD2Ev.exit140, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit140 unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #31
  unreachable

bb.bc:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.bd:                                            ; preds = %.preheader293, %_ZN7testing15AssertionResultD2Ev.exit179
  %.sroa.0258.0299 = phi i32 [ 0, %.preheader293 ], [ %i.kx, %_ZN7testing15AssertionResultD2Ev.exit179 ]
  %.sroa.8261.0298 = phi i64 [ 6364136223846793006, %.preheader293 ], [ %i.ep, %_ZN7testing15AssertionResultD2Ev.exit179 ] ; 4 uses
  %i.eo = mul i64 %.sroa.8261.0298, 6364136223846793005
  %i.ep = add i64 %i.eo, 1
  %i.eq = lshr i64 %.sroa.8261.0298, 45
  %i.er = lshr i64 %.sroa.8261.0298, 27
  %i.es = xor i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32                  ; 2 uses
  %i.eu = lshr i64 %.sroa.8261.0298, 59
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = call noundef i32 @llvm.fshr.i32(i32 %i.et, i32 %i.et, i32 %i.ev)
  %i.ex = uitofp i32 %i.ew to float
  %i.ey = fmul nnan float %i.ex, f0x2F800000      ; 2 uses
  %i.ez = fcmp olt float %i.ey, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.ez, float %i.ey, float f0x3F7FFFFF ; 5 uses
  %i.fa = fmul nnan float %.sroa.speculated.i.i, 5.000000e+00
  %i.fb = fsub float 1.000000e+00, %.sroa.speculated.i.i
  %i.fc = fmul nnan float %.sroa.speculated.i.i, 1.600000e+01
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = call noundef float @sqrtf(float noundef %i.fd) #30
  %i.ff = fadd float %i.fe, 1.000000e+00
  %i.fg = fdiv float %i.fa, %i.ff                 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, f0x3F7FFFFF
  %.sroa.speculated.i142 = select i1 %i.fh, float f0x3F7FFFFF, float %i.fg ; 6 uses
  %i.fi = fcmp olt float %.sroa.speculated.i142, 0.000000e+00
  %i.fj = fcmp ogt float %.sroa.speculated.i142, 1.000000e+00
  %or.cond.i144 = or i1 %i.fi, %i.fj
  br i1 %or.cond.i144, label %_ZN4pbrt9LinearPDFEfff.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fk = fsub float 1.000000e+00, %.sroa.speculated.i142
  %i.fl = fmul float %.sroa.speculated.i142, 4.000000e+00
  %i.fm = fadd float %i.fk, %i.fl
  %i.fn = fmul float %i.fm, 2.000000e+00
  %i.fo = fdiv float %i.fn, 5.000000e+00
  br label %_ZN4pbrt9LinearPDFEfff.exit

_ZN4pbrt9LinearPDFEfff.exit:                      ; preds = %bb.bd, %bb.be
  %.0.i145 = phi float [ %i.fo, %bb.be ], [ 0.000000e+00, %bb.bd ] ; 2 uses
  %i.fp = load i64, ptr %i.dx, align 8, !tbaa !48
  %i.fq = shl i64 %i.fp, 32
  %i.fr = ashr exact i64 %i.fq, 32                ; 2 uses
  %i.fs = add nsw i64 %i.fr, -2                   ; 2 uses
  %i.ft = icmp sgt i64 %i.fr, 2
  %.pre = load ptr, ptr %i.dy, align 8, !tbaa !49 ; 2 uses
  br i1 %i.ft, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt9LinearPDFEfff.exit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %_ZN4pbrt9LinearPDFEfff.exit ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.ge, %.lr.ph.i.i ], [ %i.fs, %_ZN4pbrt9LinearPDFEfff.exit ] ; 2 uses
  %i.fu = lshr i64 %.01516.i.i, 1                 ; 3 uses
  %i.fv = add i64 %i.fu, %.017.i.i                ; 2 uses
  %i.fw = shl i64 %i.fv, 32
  %i.fx = ashr exact i64 %i.fw, 30
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !22
  %i.ga = fcmp ole float %i.fz, %.sroa.speculated.i.i ; 2 uses
  %i.gb = add i64 %i.fv, 1
  %i.gc = select i1 %i.ga, i64 %i.gb, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.gc                     ; 3 uses
  %.neg.i.i = xor i64 %i.fu, -1
  %i.gd = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.ge = select i1 %i.ga, i64 %i.gd, i64 %i.fu   ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.gg = add nsw i64 %.fr.i.i, -1
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.gg, i64 %i.fs)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %._crit_edge.i.i, %_ZN4pbrt9LinearPDFEfff.exit
  %i.gh = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %_ZN4pbrt9LinearPDFEfff.exit ] ; 3 uses
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gh ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !22 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !22 ; 2 uses
  %i.gn = load float, ptr %i.dz, align 8, !tbaa !54 ; 2 uses
  %i.go = fcmp ogt float %i.gn, 0.000000e+00
  br i1 %i.go, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.gp = load ptr, ptr %i.ed, align 8, !tbaa !49
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gh
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !22
  %i.gs = fdiv float %i.gr, %i.gn
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.gt = phi float [ %i.gs, %bb.bf ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ] ; 2 uses
  %i.gu = fcmp ogt float %i.gm, %i.gk
  %i.gv = fsub float %.sroa.speculated.i.i, %i.gk ; 2 uses
  %i.gw = fsub float %i.gm, %i.gk
  %i.gx = fdiv float %i.gv, %i.gw
  %.0.i146 = select i1 %i.gu, float %i.gx, float %i.gv
  %i.gy = uitofp nneg i32 %i.gi to float
  %i.gz = fadd float %.0.i146, %i.gy
  %i.ha = load i64, ptr %i.ea, align 8, !tbaa !48
  %i.hb = uitofp i64 %i.ha to float
  %i.hc = fdiv float %i.gz, %i.hb                 ; 2 uses
  %i.hd = load float, ptr %i.eb, align 8, !tbaa !55
  %i.he = load float, ptr %i.ec, align 4, !tbaa !56
  %i.hf = fsub float 1.000000e+00, %i.hc
  %i.hg = fmul float %i.hd, %i.hf
  %i.hh = fmul float %i.hc, %i.he
  %i.hi = fadd float %i.hh, %i.hg                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.hj = fsub float %.sroa.speculated.i142, %i.hi
  %i.hk = call noundef float @llvm.fabs.f32(float %i.hj)
  store float %i.hk, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store double 3.000000e-03, ptr %i.d, align 8, !tbaa !58
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.hl = load i8, ptr %10, align 8, !tbaa !28, !range !29, !noundef !30
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bz, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.cf

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bk unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.ho = load ptr, ptr %11, align 8, !tbaa !39
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull @.str.191, i64 noundef 14)
          to label %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit unwind label %bb.bt ; 0 uses

_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit:       ; preds = %bb.bk
  %i.hr = load ptr, ptr %11, align 8, !tbaa !39
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = fpext float %.sroa.speculated.i142 to double
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, double noundef %i.ht)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.bt ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit
  %i.hv = load ptr, ptr %11, align 8, !tbaa !39
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.192, i64 noundef 12)
          to label %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit unwind label %bb.bt ; 0 uses

_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.hy = load ptr, ptr %11, align 8, !tbaa !39
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = fpext float %i.hi to double
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, double noundef %i.ia)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit151 unwind label %bb.bt ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit151:        ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.ic = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i152, label %_ZNK7testing15AssertionResult15failure_messageEv.exit153, label %bb.bl

bb.bl:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit151
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit153

_ZNK7testing15AssertionResult15failure_messageEv.exit153: ; preds = %bb.bl, %_ZN7testing7MessagelsIfEERS0_RKT_.exit151
  %i.ie = phi ptr [ %i.id, %bb.bl ], [ @.str.360, %_ZN7testing7MessagelsIfEERS0_RKT_.exit151 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 653, ptr noundef %i.ie)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit153
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bn unwind label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.if = load ptr, ptr %11, align 8, !tbaa !39
  %.not.i.i.i154 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i154, label %_ZN7testing7MessageD2Ev.exit156, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ig = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i155 unwind label %bb.br

.noexc.i.i155:                                    ; preds = %bb.bo
  br i1 %i.ig, label %bb.bp, label %_ZN7testing7MessageD2Ev.exit156

bb.bp:                                            ; preds = %.noexc.i.i155
  %i.ih = load ptr, ptr %11, align 8, !tbaa !39   ; 3 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %_ZN7testing7MessageD2Ev.exit156, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !41
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(128) %i.ih) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit156

bb.br:                                            ; preds = %bb.bo
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #31
  unreachable

_ZN7testing7MessageD2Ev.exit156:                  ; preds = %bb.bn, %.noexc.i.i155, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bj
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bt:                                            ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit, %bb.bk
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit153
end_hunk_2
begin_hunk_3_@_ZN20Sampling_Linear_Test8TestBodyEv:.noexc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #30
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn98 = phi { ptr, i32 } [ %i.kl, %bb.ct ], [ %i.kk, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cr
  %.pn98.pn = phi { ptr, i32 } [ %.pn98, %bb.cu ], [ %i.kj, %bb.cr ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #30
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cq
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %bb.cv ], [ %i.ki, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #30
  br label %bb.dc

bb.cx:                                            ; preds = %bb.ce, %_ZN7testing7MessageD2Ev.exit173
  %i.km = load ptr, ptr %i.ef, align 8, !tbaa !31
  %.not.i.i.i174 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i174, label %_ZN7testing15AssertionResultD2Ev.exit179, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i175 unwind label %bb.db

.noexc.i.i175:                                    ; preds = %bb.cy
  br i1 %i.kn, label %bb.cz, label %_ZN7testing15AssertionResultD2Ev.exit179

bb.cz:                                            ; preds = %.noexc.i.i175
  %i.ko = load ptr, ptr %i.ef, align 8, !tbaa !31 ; 4 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_ZN7testing15AssertionResultD2Ev.exit179, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !36 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176: ; preds = %bb.da
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !42
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit179

bb.db:                                            ; preds = %bb.cy
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit179:         ; preds = %bb.cx, %.noexc.i.i175, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.kx = add nuw nsw i32 %.sroa.0258.0299, 1     ; 2 uses
  %.not291 = icmp eq i32 %i.kx, 100
  br i1 %.not291, label %.preheader, label %bb.bd

bb.dc:                                            ; preds = %bb.cw, %bb.cg
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn, %bb.cw ], [ %i.jh, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ei

bb.dd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit215
  store i64 0, ptr %i.dx, align 8, !tbaa !48
  %i.ky = load ptr, ptr %i.dy, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kz = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !50
  %i.lc = shl i64 %i.lb, 2
  %i.ld = load ptr, ptr %i.kz, align 8, !tbaa !51 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !41
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  invoke void %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull %i.ky, i64 noundef %i.lc, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i unwind label %bb.df, !inline_history !2

bb.df:                                            ; preds = %bb.de
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i: ; preds = %bb.de, %bb.dd
  store i64 0, ptr %i.ea, align 8, !tbaa !48
  %i.lj = load ptr, ptr %i.ed, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i
  %i.lk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !50
  %i.lm = shl i64 %i.ll, 2
  %i.ln = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !41
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, ptr noundef nonnull %i.lj, i64 noundef %i.lm, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit unwind label %bb.dh, !inline_history !2

bb.dh:                                            ; preds = %bb.dg
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #31
  unreachable

_ZN4pbrt19PiecewiseConstant1DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  store i64 0, ptr %i.du, align 8, !tbaa !48
  %i.lt = load ptr, ptr %i.ds, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !50
  %i.lw = shl i64 %i.lv, 2
  %i.lx = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !41
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  invoke void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef nonnull %i.lt, i64 noundef %i.lw, i64 noundef 4)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.dj, !inline_history !2

bb.dj:                                            ; preds = %bb.di
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #31
  unreachable

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 128) #32
  ret void

bb.dk:                                            ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit215
  %.sroa.0235.0302 = phi i32 [ 0, %.preheader ], [ %i.rm, %_ZN7testing15AssertionResultD2Ev.exit215 ]
  %.sroa.8.0301 = phi i64 [ 6364136223846793006, %.preheader ], [ %i.me, %_ZN7testing15AssertionResultD2Ev.exit215 ] ; 4 uses
  %.sroa.0243.0300 = phi i64 [ -8846114313915602277, %.preheader ], [ %i.ms, %_ZN7testing15AssertionResultD2Ev.exit215 ] ; 2 uses
  %i.md = mul i64 %.sroa.8.0301, 6364136223846793005
  %i.me = add i64 %i.md, 1
  %i.mf = lshr i64 %.sroa.8.0301, 45
  %i.mg = lshr i64 %.sroa.8.0301, 27
  %i.mh = xor i64 %i.mf, %i.mg
  %i.mi = trunc i64 %i.mh to i32                  ; 2 uses
  %i.mj = lshr i64 %.sroa.8.0301, 59
  %i.mk = trunc nuw nsw i64 %i.mj to i32
  %i.ml = call noundef i32 @llvm.fshr.i32(i32 %i.mi, i32 %i.mi, i32 %i.mk)
  %i.mm = uitofp i32 %i.ml to float
  %i.mn = fmul nnan float %i.mm, f0x2F800000      ; 2 uses
  %i.mo = fcmp olt float %i.mn, f0x3F7FFFFF
  %.sroa.speculated.i.i181 = select i1 %i.mo, float %i.mn, float f0x3F7FFFFF ; 9 uses
  %i.mp = mul i64 %.sroa.0243.0300, 6364136223846793005
  %i.mq = add i64 %i.mp, -2720673578348880933     ; 2 uses
  %i.mr = mul i64 %i.mq, 6364136223846793005
  %i.ms = add i64 %i.mr, -2720673578348880933
  %i.mt = insertelement <2 x i64> poison, i64 %i.mq, i64 0
  %i.mu = insertelement <2 x i64> %i.mt, i64 %.sroa.0243.0300, i64 1 ; 3 uses
  %i.mv = lshr <2 x i64> %i.mu, splat (i64 45)
  %i.mw = lshr <2 x i64> %i.mu, splat (i64 27)
  %i.mx = xor <2 x i64> %i.mv, %i.mw
  %i.my = trunc <2 x i64> %i.mx to <2 x i32>      ; 2 uses
  %i.mz = lshr <2 x i64> %i.mu, splat (i64 59)
  %i.na = trunc nuw nsw <2 x i64> %i.mz to <2 x i32>
  %i.nb = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.my, <2 x i32> %i.my, <2 x i32> %i.na)
  %i.nc = uitofp <2 x i32> %i.nb to <2 x float>
  %i.nd = fmul nnan <2 x float> %i.nc, splat (float f0x2F800000) ; 2 uses
  %i.ne = fcmp olt <2 x float> %i.nd, splat (float f0x3F7FFFFF)
  %i.nf = select <2 x i1> %i.ne, <2 x float> %i.nd, <2 x float> splat (float f0x3F7FFFFF)
  %i.ng = fmul nnan <2 x float> %i.nf, splat (float 1.000000e+01) ; 4 uses
  %i.nh = extractelement <2 x float> %i.ng, i64 0 ; 2 uses
  %i.ni = extractelement <2 x float> %i.ng, i64 1 ; 2 uses
  %i.nj = fcmp olt float %i.ni, %i.nh
  %i.nk = insertelement <2 x i1> poison, i1 %i.nj, i64 0
  %i.nl = shufflevector <2 x i1> %i.nk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.nm = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nn = select <2 x i1> %i.nl, <2 x float> %i.ng, <2 x float> %i.nm ; 5 uses
  %i.no = fcmp oeq float %.sroa.speculated.i.i181, 0.000000e+00
  %i.np = extractelement <2 x float> %i.nn, i64 0 ; 3 uses
  %i.nq = fcmp oeq float %i.np, 0.000000e+00
  %or.cond.i184 = and i1 %i.no, %i.nq
  %.pre305 = fadd float %i.ni, %i.nh              ; 2 uses
  br i1 %or.cond.i184, label %._crit_edge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nr = fmul float %.sroa.speculated.i.i181, %.pre305
  %i.ns = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i181
  %i.nt = fmul <2 x float> %i.nn, %i.nn
  %i.nu = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %.sroa.speculated.i.i181, i64 1
  %i.nw = fmul <2 x float> %i.nv, %i.nt           ; 2 uses
  %shift = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.nw, %shift
  %i.nx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ny = call noundef float @sqrtf(float noundef %i.nx) #30
  %i.nz = fadd float %i.np, %i.ny
  %i.oa = fdiv float %i.nr, %i.nz                 ; 2 uses
  %i.ob = fcmp ogt float %i.oa, f0x3F7FFFFF
  %.sroa.speculated.i185 = select i1 %i.ob, float f0x3F7FFFFF, float %i.oa
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.dk, %bb.dl
  %.0.i186 = phi float [ %.sroa.speculated.i185, %bb.dl ], [ 0.000000e+00, %bb.dk ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.oc = fsub float 2.000000e+00, %.0.i186
  %i.od = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.oe = insertelement <2 x float> %i.od, float %.0.i186, i64 1
  %i.of = fmul <2 x float> %i.nn, %i.oe           ; 2 uses
  %shift342 = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop343 = fadd <2 x float> %shift342, %i.of
  %i.og = extractelement <2 x float> %foldExtExtBinop343, i64 0
  %i.oh = fmul float %.0.i186, %i.og
  %i.oi = fdiv float %i.oh, %.pre305              ; 4 uses
  %i.oj = call noundef float @llvm.fabs.f32(float %i.oi) ; 2 uses
  %i.ok = fcmp olt float %i.oj, %.sroa.speculated.i.i181
  %.sroa.speculated.i188 = select i1 %i.ok, float %i.oj, float %.sroa.speculated.i.i181
  %i.ol = fpext float %.sroa.speculated.i188 to double
  %i.om = fcmp olt double %i.ol, 1.000000e-02
  %i.on = fsub float %.sroa.speculated.i.i181, %i.oi ; 2 uses
  %i.oo = fmul float %i.on, 2.000000e+00
  %i.op = fadd float %.sroa.speculated.i.i181, %i.oi
  %i.oq = fdiv float %i.oo, %i.op
  %.sink.i = select i1 %i.om, float %i.on, float %i.oq
  %i.or = call noundef float @llvm.fabs.f32(float %.sink.i)
  %i.os = fpext float %i.or to double
  %i.ot = fcmp ule double %i.os, 1.000000e-02     ; 2 uses
  %i.ou = zext i1 %i.ot to i8
  store i8 %i.ou, ptr %16, align 8, !tbaa !28
  store ptr null, ptr %i.eg, align 8, !tbaa !31
  br i1 %i.ot, label %_ZN7testing15AssertionResultD2Ev.exit215, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.dn unwind label %bb.dv

bb.dn:                                            ; preds = %bb.dm
  %i.ov = load ptr, ptr %17, align 8, !tbaa !39
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ow, ptr noundef nonnull @.str.201, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %bb.dn
  %i.oy = load ptr, ptr %17, align 8, !tbaa !39
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = fpext float %.sroa.speculated.i.i181 to double
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, double noundef %i.pa)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit191 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit191:        ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.pc = load ptr, ptr %17, align 8, !tbaa !39
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull @.str.202, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit191
  %i.pf = load ptr, ptr %17, align 8, !tbaa !39
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = fpext float %.0.i186 to double
  %i.pi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, double noundef %i.ph)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit194 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit194:        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.pj = load ptr, ptr %17, align 8, !tbaa !39
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit194
  %i.pm = load ptr, ptr %17, align 8, !tbaa !39
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = fpext float %i.oi to double
  %i.pp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, double noundef %i.po)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit197 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit197:        ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.pq = load ptr, ptr %17, align 8, !tbaa !39
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pr, ptr noundef nonnull @.str.203, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit197
  %i.pt = load ptr, ptr %17, align 8, !tbaa !39
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = fpext float %i.np to double
  %i.pw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, double noundef %i.pv)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit200 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit200:        ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.px = load ptr, ptr %17, align 8, !tbaa !39
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.py, ptr noundef nonnull @.str.204, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit200
  %i.qa = load ptr, ptr %17, align 8, !tbaa !39
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = extractelement <2 x float> %i.nn, i64 1
  %i.qd = fpext float %i.qc to double
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qb, double noundef %i.qd)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit203 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit203:        ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60)
          to label %bb.do unwind label %bb.dx

bb.do:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit203
  %i.qf = load ptr, ptr %19, align 8, !tbaa !36
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 676, ptr noundef %i.qf)
          to label %bb.dp unwind label %bb.dy

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.dq unwind label %bb.dz

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #30
  %i.qg = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.eh
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dq
  %i.qi = load i64, ptr %i.eh, align 8, !tbaa !42
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.qk = load ptr, ptr %17, align 8, !tbaa !39
  %.not.i.i.i204 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i204, label %bb.ed, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ql = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i205 unwind label %bb.du

.noexc.i.i205:                                    ; preds = %bb.dr
  br i1 %i.ql, label %bb.ds, label %bb.ed

bb.ds:                                            ; preds = %.noexc.i.i205
  %i.qm = load ptr, ptr %17, align 8, !tbaa !39   ; 3 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %bb.ed, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qo = load ptr, ptr %i.qm, align 8, !tbaa !41
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(128) %i.qm) #30, !inline_history !0
  br label %bb.ed

bb.du:                                            ; preds = %bb.dr
  %i.qr = landingpad { ptr, i32 }
          catch ptr null
  %i.qs = extractvalue { ptr, i32 } %i.qr, 0
  call void @__clang_call_terminate(ptr %i.qs) #31
  unreachable

bb.dv:                                            ; preds = %bb.dm
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dw:                                            ; preds = %bb.dn, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit191, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit194, %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit200, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit197, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dx:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit203
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.dy:                                            ; preds = %bb.do
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dp
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #30
  br label %bb.ea
end_hunk_3
begin_hunk_4_@_ZN22Sampling_Bilinear_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4pbrt7Array2DIfED2Ev.exit
  %.0.idx472 = phi i64 [ 0, %bb.a ], [ %.0.add, %_ZN4pbrt7Array2DIfED2Ev.exit ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %.0.ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store i64 0, ptr %i.p, align 8
  store i64 %i.m, ptr %2, align 8, !tbaa !103
  store ptr @"_ZNSt17_Function_handlerIFfffEZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOfS7_", ptr %i.o, align 8, !tbaa !86
  store ptr @"_ZNSt17_Function_handlerIFfffEZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.n, align 8, !tbaa !69
  %i.am = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30
  invoke void @_ZN4pbrt16Sample2DFunctionESt8functionIFfffEEiiiNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Array2D") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1024, i32 noundef 1024, i32 noundef 16, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), ptr %i.am)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !69  ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #31
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !92
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.as = load i32, ptr %i.r, align 8, !tbaa !93
  %i.at = sub nsw i32 %i.as, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.au = load i32, ptr %i.s, align 4, !tbaa !94
  %i.av = sub nsw i32 %i.au, %.sroa.2.0.extract.trunc.i.i.i.i
  %i.aw = mul nsw i32 %i.av, %i.at
  %i.ax = sext i32 %i.aw to i64
  %i.ay = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30
  invoke void @_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %i.ar, i64 %i.ax, i32 noundef 1024, i32 noundef 1024, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), ptr %i.ay)
          to label %.preheader unwind label %bb.r

bb.h:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit144
  store i64 0, ptr %i.t, align 8, !tbaa !48
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.bb = shl i64 %i.ba, 2
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.az, i64 noundef %i.bb, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i unwind label %bb.j, !inline_history !2

bb.j:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h
  store i64 0, ptr %i.w, align 8, !tbaa !48
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.bj = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.bk = shl i64 %i.bj, 2
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bi, i64 noundef %i.bk, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit unwind label %bb.l, !inline_history !2

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #31
  unreachable

_ZN4pbrt19PiecewiseConstant2DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, %bb.k
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ak) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !92  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt7Array2DIfED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit
  %i.bs = load i32, ptr %i.s, align 4, !tbaa !94
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.bt = sub nsw i32 %i.bs, %.sroa.2.0.extract.trunc.i.i.i
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !93
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bv = sub nsw i32 %i.bu, %.sroa.0.0.extract.trunc.i.i.i
  %i.bw = mul nsw i32 %i.bt, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 2
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !95 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.br, i64 noundef %i.by, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.n, !inline_history !7

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #31
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.0.add = add nuw nsw i64 %.0.idx472, 16        ; 2 uses
  %.not = icmp eq i64 %.0.add, 48
  br i1 %.not, label %bb.b, label %bb.c

bb.o:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !69  ; 2 uses
  %.not.i78 = icmp eq ptr %i.cg, null
  br i1 %.not.i78, label %_ZNSt14_Function_baseD2Ev.exit79, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit79 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #31
  unreachable

bb.r:                                             ; preds = %bb.g
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.preheader:                                       ; preds = %bb.g, %_ZN7testing15AssertionResultD2Ev.exit144
  %.sroa.0189.0471 = phi i32 [ %i.uk, %_ZN7testing15AssertionResultD2Ev.exit144 ], [ 0, %bb.g ]
  %.sroa.8.0470 = phi i64 [ %i.co, %_ZN7testing15AssertionResultD2Ev.exit144 ], [ 6364136223846793006, %bb.g ] ; 2 uses
  %i.cl = mul i64 %.sroa.8.0470, 6364136223846793005
  %i.cm = add i64 %i.cl, 1                        ; 2 uses
  %i.cn = mul i64 %i.cm, 6364136223846793005
  %i.co = add i64 %i.cn, 1
  %i.cp = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %i.cq = insertelement <2 x i64> %i.cp, i64 %.sroa.8.0470, i64 1 ; 3 uses
  %i.cr = lshr <2 x i64> %i.cq, splat (i64 45)
  %i.cs = lshr <2 x i64> %i.cq, splat (i64 27)
  %i.ct = xor <2 x i64> %i.cr, %i.cs
  %i.cu = trunc <2 x i64> %i.ct to <2 x i32>      ; 2 uses
  %i.cv = lshr <2 x i64> %i.cq, splat (i64 59)
  %i.cw = trunc nuw nsw <2 x i64> %i.cv to <2 x i32>
  %i.cx = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cu, <2 x i32> %i.cu, <2 x i32> %i.cw)
  %i.cy = uitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fmul nnan <2 x float> %i.cy, splat (float f0x2F800000) ; 2 uses
  %i.da = fcmp olt <2 x float> %i.cz, splat (float f0x3F7FFFFF)
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cz, <2 x float> splat (float f0x3F7FFFFF) ; 3 uses
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !84  ; 4 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !22 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !22 ; 3 uses
  %i.dg = fadd float %i.dd, %i.df                 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !22 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !22 ; 4 uses
  %i.dl = extractelement <2 x float> %i.db, i64 0 ; 7 uses
  %i.dm = fcmp oeq float %i.dl, 0.000000e+00
  %i.dn = fcmp oeq float %i.dg, 0.000000e+00
  %or.cond.i.i = and i1 %i.dm, %i.dn
  br i1 %or.cond.i.i, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.do = fadd float %i.di, %i.dk                 ; 3 uses
  %i.dp = fadd float %i.dg, %i.do
  %i.dq = fmul float %i.dl, %i.dp
  %i.dr = fmul float %i.dg, %i.dg
  %i.ds = fmul float %i.do, %i.do
  %i.dt = fsub nnan float 1.000000e+00, %i.dl
  %i.du = fmul float %i.dt, %i.dr
  %i.dv = fmul float %i.dl, %i.ds
  %i.dw = fadd float %i.du, %i.dv
  %i.dx = call noundef float @sqrtf(float noundef %i.dw) #30
  %i.dy = fadd float %i.dg, %i.dx
  %i.dz = fdiv float %i.dq, %i.dy                 ; 2 uses
  %i.ea = fcmp ogt float %i.dz, f0x3F7FFFFF
  %.sroa.speculated.i.i80 = select i1 %i.ea, float f0x3F7FFFFF, float %i.dz
  br label %_ZN4pbrt12SampleLinearEfff.exit.i

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.s, %.preheader
  %.0.i.i = phi float [ %.sroa.speculated.i.i80, %bb.s ], [ 0.000000e+00, %.preheader ] ; 15 uses
  %i.eb = fsub float 1.000000e+00, %.0.i.i        ; 6 uses
  %i.ec = fmul float %i.dd, %i.eb
  %i.ed = fmul float %i.di, %.0.i.i
  %i.ee = fadd float %i.ed, %i.ec                 ; 5 uses
  %i.ef = extractelement <2 x float> %i.db, i64 1 ; 7 uses
  %i.eg = fcmp oeq float %i.ef, 0.000000e+00
  %i.eh = fcmp oeq float %i.ee, 0.000000e+00
  %or.cond.i1.i = and i1 %i.eg, %i.eh
  br i1 %or.cond.i1.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i
  %i.ei = fmul float %i.df, %i.eb
  %i.ej = fmul float %i.dk, %.0.i.i
  %i.ek = fadd float %i.ej, %i.ei                 ; 3 uses
  %i.el = fadd float %i.ee, %i.ek
  %i.em = fmul float %i.ef, %i.el
  %i.en = fmul float %i.ee, %i.ee
  %i.eo = fmul float %i.ek, %i.ek
  %i.ep = fsub nnan float 1.000000e+00, %i.ef
  %i.eq = fmul float %i.ep, %i.en
  %i.er = fmul float %i.ef, %i.eo
  %i.es = fadd float %i.eq, %i.er
  %i.et = call noundef float @sqrtf(float noundef %i.es) #30
  %i.eu = fadd float %i.ee, %i.et
  %i.ev = fdiv float %i.em, %i.eu                 ; 2 uses
  %i.ew = fcmp ogt float %i.ev, f0x3F7FFFFF
  %.sroa.speculated.i2.i = select i1 %i.ew, float f0x3F7FFFFF, float %i.ev
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4pbrt12SampleLinearEfff.exit.i
  %.0.i3.i = phi float [ %.sroa.speculated.i2.i, %bb.t ], [ 0.000000e+00, %_ZN4pbrt12SampleLinearEfff.exit.i ] ; 11 uses
  %i.ex = fcmp olt float %.0.i3.i, 0.000000e+00
  %i.ey = fcmp ogt float %.0.i3.i, 1.000000e+00
  %or.cond.i = or i1 %i.ex, %i.ey
  %i.ez = fcmp olt float %.0.i.i, 0.000000e+00
  %i.fa = fcmp ogt float %.0.i.i, 1.000000e+00
  %i.fb = or i1 %i.ez, %i.fa
  %or.cond8.i = or i1 %i.fb, %or.cond.i
  br i1 %or.cond8.i, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = fadd float %i.dg, %i.di
  %i.fd = fadd float %i.fc, %i.dk                 ; 2 uses
  %i.fe = fcmp oeq float %i.fd, 0.000000e+00
  br i1 %i.fe, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = fsub float 1.000000e+00, %.0.i3.i       ; 2 uses
  %i.fg = fmul float %i.eb, %i.ff
  %i.fh = fmul float %i.dd, %i.fg
  %i.fi = fmul float %i.eb, %.0.i3.i
  %i.fj = fmul float %i.df, %i.fi
  %i.fk = fadd float %i.fj, %i.fh
  %i.fl = fmul float %.0.i.i, %i.ff
  %i.fm = fmul float %i.di, %i.fl
  %i.fn = fadd float %i.fm, %i.fk
  %i.fo = fmul float %.0.i.i, %.0.i3.i
  %i.fp = fmul float %i.dk, %i.fo
  %i.fq = fadd float %i.fp, %i.fn
  %i.fr = fmul float %i.fq, 4.000000e+00
  %i.fs = fdiv float %i.fr, %i.fd
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %bb.w, %bb.v, %bb.u
  %.0.i = phi float [ %i.fs, %bb.w ], [ 0.000000e+00, %bb.u ], [ 1.000000e+00, %bb.v ] ; 2 uses
  %i.ft = load i64, ptr %i.t, align 8, !tbaa !48
  %i.fu = shl i64 %i.ft, 32
  %i.fv = ashr exact i64 %i.fu, 32                ; 2 uses
  %i.fw = add nsw i64 %i.fv, -2                   ; 2 uses
  %i.fx = icmp sgt i64 %i.fv, 2
  %i.fy = load ptr, ptr %i.u, align 8, !tbaa !49  ; 2 uses
  br i1 %i.fx, label %.lr.ph.i.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %.fr.i.i.i, %.lr.ph.i.i.i ], [ 1, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ] ; 2 uses
  %.01516.i.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i ], [ %i.fw, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ] ; 2 uses
  %i.fz = lshr i64 %.01516.i.i.i, 1               ; 3 uses
  %i.ga = add i64 %i.fz, %.017.i.i.i              ; 2 uses
  %i.gb = shl i64 %i.ga, 32
  %i.gc = ashr exact i64 %i.gb, 30
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !22
  %i.gf = fcmp ole float %i.ge, %i.dl             ; 2 uses
  %i.gg = add i64 %i.ga, 1
  %i.gh = select i1 %i.gf, i64 %i.gg, i64 %.017.i.i.i
  %.fr.i.i.i = freeze i64 %i.gh                   ; 3 uses
  %.neg.i.i.i = xor i64 %i.fz, -1
  %i.gi = add nsw i64 %.01516.i.i.i, %.neg.i.i.i
  %i.gj = select i1 %i.gf, i64 %i.gi, i64 %i.fz   ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.gl = add nsw i64 %.fr.i.i.i, -1
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gl, i64 %i.fw)
  %.inv.i.i.i = icmp sgt i64 %.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i64 %..i.i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %i.gm = phi i64 [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ 0, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load <2 x float>, ptr %i.gn, align 4, !tbaa !22 ; 2 uses
  %i.gq = load float, ptr %i.go, align 4, !tbaa !22
  %i.gr = load float, ptr %i.v, align 8, !tbaa !54 ; 2 uses
  %i.gs = fcmp ogt float %i.gr, 0.000000e+00
  br i1 %i.gs, label %bb.x, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i

bb.x:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i
  %i.gt = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gm
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !22
  %i.gw = fdiv float %i.gv, %i.gr
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i: ; preds = %bb.x, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i
  %i.gx = phi float [ %i.gw, %bb.x ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i ]
  %i.gy = load i64, ptr %i.w, align 8, !tbaa !48
  %i.gz = load float, ptr %i.x, align 8, !tbaa !55
  %i.ha = load float, ptr %i.y, align 4, !tbaa !56
  %i.hb = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.hc = getelementptr inbounds nuw [80 x i8], ptr %i.hb, i64 %i.gm ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !48
  %i.hf = shl i64 %i.he, 32
  %i.hg = ashr exact i64 %i.hf, 32                ; 2 uses
  %i.hh = add nsw i64 %i.hg, -2                   ; 2 uses
  %i.hi = icmp sgt i64 %i.hg, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !49 ; 2 uses
  br i1 %i.hi, label %.lr.ph.i.i11.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i

.lr.ph.i.i11.i:                                   ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i, %.lr.ph.i.i11.i
  %.017.i.i12.i = phi i64 [ %.fr.i.i14.i, %.lr.ph.i.i11.i ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i ] ; 2 uses
  %.01516.i.i13.i = phi i64 [ %i.hv, %.lr.ph.i.i11.i ], [ %i.hh, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i ] ; 2 uses
  %i.hl = lshr i64 %.01516.i.i13.i, 1             ; 3 uses
  %i.hm = add i64 %i.hl, %.017.i.i12.i            ; 2 uses
  %i.hn = shl i64 %i.hm, 32
  %i.ho = ashr exact i64 %i.hn, 30
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !22
  %i.hr = fcmp ole float %i.hq, %i.ef             ; 2 uses
  %i.hs = add i64 %i.hm, 1
  %i.ht = select i1 %i.hr, i64 %i.hs, i64 %.017.i.i12.i
  %.fr.i.i14.i = freeze i64 %i.ht                 ; 3 uses
  %.neg.i.i15.i = xor i64 %i.hl, -1
  %i.hu = add nsw i64 %.01516.i.i13.i, %.neg.i.i15.i
  %i.hv = select i1 %i.hr, i64 %i.hu, i64 %i.hl   ; 2 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i.i11.i, label %._crit_edge.i.i16.i, !llvm.loop !3

._crit_edge.i.i16.i:                              ; preds = %.lr.ph.i.i11.i
  %i.hx = add nsw i64 %.fr.i.i14.i, -1
  %..i.i.i17.i = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.hh)
  %.inv.i.i18.i = icmp sgt i64 %.fr.i.i14.i, 0
  %spec.select.i.i19.i = select i1 %.inv.i.i18.i, i64 %..i.i.i17.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i: ; preds = %._crit_edge.i.i16.i, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i
  %i.hy = phi i64 [ %spec.select.i.i19.i, %._crit_edge.i.i16.i ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit.i ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load <2 x float>, ptr %i.hz, align 4, !tbaa !22 ; 2 uses
  %i.ic = load float, ptr %i.ia, align 4, !tbaa !22
  %i.id = getelementptr inbounds nuw i8, ptr %i.hc, i64 72
  %i.ie = load float, ptr %i.id, align 8, !tbaa !54 ; 2 uses
  %i.if = fcmp ogt float %i.ie, 0.000000e+00
  br i1 %i.if, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !49
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.hy
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !22
  %i.ik = fdiv float %i.ij, %i.ie
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i
  %i.il = phi float [ %i.ik, %bb.y ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.in = load i64, ptr %i.im, align 8, !tbaa !48
  %i.io = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.ip = load float, ptr %i.io, align 8, !tbaa !55
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hc, i64 68
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !56
  %i.is = fmul float %i.gx, %i.il                 ; 2 uses
  %i.it = shufflevector <2 x float> %i.gp, <2 x float> %i.ib, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.iu = fsub <2 x float> %i.db, %i.it           ; 2 uses
  %i.iv = shufflevector <2 x float> %i.gp, <2 x float> %i.ib, <2 x i32> <i32 1, i32 3>
  %i.iw = fsub <2 x float> %i.iv, %i.it
  %i.ix = trunc nuw nsw i64 %i.hy to i32
  %i.iy = uitofp nneg i32 %i.ix to float
  %i.iz = uitofp i64 %i.in to float
  %i.ja = fdiv <2 x float> %i.iu, %i.iw
  %i.jb = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ic, i64 1
  %i.jd = fcmp ogt <2 x float> %i.jc, %i.it
  %i.je = select <2 x i1> %i.jd, <2 x float> %i.ja, <2 x float> %i.iu ; 2 uses
  %i.jf = extractelement <2 x float> %i.je, i64 1
  %i.jg = fadd float %i.jf, %i.iy
  %i.jh = fdiv float %i.jg, %i.iz                 ; 2 uses
  %i.ji = fmul float %i.jh, %i.ir
  %i.jj = fsub float 1.000000e+00, %i.jh
  %i.jk = fmul float %i.ip, %i.jj
  %i.jl = fadd float %i.ji, %i.jk                 ; 2 uses
  %i.jm = trunc nuw nsw i64 %i.gm to i32
  %i.jn = uitofp nneg i32 %i.jm to float
  %i.jo = extractelement <2 x float> %i.je, i64 0
  %i.jp = fadd float %i.jo, %i.jn
  %i.jq = uitofp i64 %i.gy to float
  %i.jr = fdiv float %i.jp, %i.jq                 ; 2 uses
  %i.js = fmul float %i.jr, %i.ha
  %i.jt = fsub float 1.000000e+00, %i.jr
  %i.ju = fmul float %i.gz, %i.jt
  %i.jv = fadd float %i.js, %i.ju                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.jw = fsub float %.0.i3.i, %i.jl
end_hunk_4
begin_hunk_5_@_ZN22Sampling_Logistic_Test8TestBodyEv:bb.a
  store float %i.ae, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %"_ZNSt8functionIFffEEC2IRZN22Sampling_Logistic_Test8TestBodyEvE3$_0vEEOT_.exit" unwind label %bb.d ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !69  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt14_Function_baseD2Ev.exit62
  %common.resume.op = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt14_Function_baseD2Ev.exit62 ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZNSt8functionIFffEEC2IRZN22Sampling_Logistic_Test8TestBodyEvE3$_0vEEOT_.exit": ; preds = %bb.c
  store ptr %i.a, ptr %i.af, align 16, !tbaa !84
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.b, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !84
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.c, ptr %.sroa.6130.0..sroa_idx, align 16, !tbaa !84
  store ptr %i.af, ptr %2, align 8, !tbaa !104
  store ptr @"_ZNSt17_Function_handlerIFffEZN22Sampling_Logistic_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf", ptr %i.i, align 8, !tbaa !68
  store ptr @"_ZNSt17_Function_handlerIFffEZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.h, align 8, !tbaa !69
  %i.al = load float, ptr %i.b, align 4, !tbaa !22
  %i.am = load float, ptr %i.c, align 4, !tbaa !22
  %i.an = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30
  invoke void @_ZN4pbrt16Sample1DFunctionESt8functionIFffEEiiffN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::vector") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 8192, i32 noundef 16, float noundef %i.al, float noundef %i.am, ptr %i.an)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %"_ZNSt8functionIFffEEC2IRZN22Sampling_Logistic_Test8TestBodyEvE3$_0vEEOT_.exit"
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !69  ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.at = load i64, ptr %i.k, align 8, !tbaa !48
  %i.au = load float, ptr %i.b, align 4, !tbaa !22
  %i.av = load float, ptr %i.c, align 4, !tbaa !22
  %i.aw = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30
  invoke void @_ZN4pbrt19PiecewiseConstant1DC2EN4pstd4spanIKfEEffNS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(76) %3, ptr %i.as, i64 %i.at, float noundef %i.au, float noundef %i.av, ptr %i.aw)
          to label %.preheader unwind label %bb.t

bb.j:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit96
  store i64 0, ptr %i.l, align 8, !tbaa !48
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !50
  %i.az = shl i64 %i.ay, 2
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !51  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.ax, i64 noundef %i.az, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i unwind label %bb.l, !inline_history !2

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i: ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.o, align 8, !tbaa !48
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !50
  %i.bi = shl i64 %i.bh, 2
  %i.bj = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.bg, i64 noundef %i.bi, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit unwind label %bb.n, !inline_history !2

bb.n:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #31
  unreachable

_ZN4pbrt19PiecewiseConstant1DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  store i64 0, ptr %i.k, align 8, !tbaa !48
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !50
  %i.br = shl i64 %i.bq, 2
  %i.bs = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.bp, i64 noundef %i.br, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.p, !inline_history !2

bb.p:                                             ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.035.add = add nuw nsw i64 %.035.idx275, 12    ; 2 uses
  %.not = icmp eq i64 %.035.add, 36
  br i1 %.not, label %bb.b, label %bb.c

bb.q:                                             ; preds = %"_ZNSt8functionIFffEEC2IRZN22Sampling_Logistic_Test8TestBodyEvE3$_0vEEOT_.exit"
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !69  ; 2 uses
  %.not.i61 = icmp eq ptr %i.bz, null
  br i1 %.not.i61, label %_ZNSt14_Function_baseD2Ev.exit62, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit62 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #31
  unreachable

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit100

.preheader:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit96
  %.sroa.0117.0274 = phi i32 [ %i.oi, %_ZN7testing15AssertionResultD2Ev.exit96 ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ]
  %.sroa.8.0273 = phi i64 [ %i.cf, %_ZN7testing15AssertionResultD2Ev.exit96 ], [ 6364136223846793006, %_ZNSt14_Function_baseD2Ev.exit ] ; 4 uses
  %i.ce = mul i64 %.sroa.8.0273, 6364136223846793005
  %i.cf = add i64 %i.ce, 1
  %i.cg = lshr i64 %.sroa.8.0273, 45
  %i.ch = lshr i64 %.sroa.8.0273, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %.sroa.8.0273, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 %i.cl)
  %i.cn = uitofp i32 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x2F800000      ; 2 uses
  %i.cp = fcmp olt float %i.co, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.cp, float %i.co, float f0x3F7FFFFF ; 9 uses
  %i.cq = load float, ptr %i.a, align 4, !tbaa !22 ; 4 uses
  %i.cr = load float, ptr %i.b, align 4, !tbaa !22 ; 4 uses
  %i.cs = load float, ptr %i.c, align 4, !tbaa !22 ; 4 uses
  %i.ct = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cs, i64 1
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x float> %i.cv, %i.cx           ; 2 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.da = call noundef float @expf(float noundef %i.cz) #30
  %i.db = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.dc = call noundef float @expf(float noundef %i.db) #30
  %i.dd = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dc, i64 1
  %i.dg = fadd <2 x float> %i.df, splat (float 1.000000e+00)
  %i.dh = fdiv <2 x float> splat (float 1.000000e+00), %i.dg
  %i.di = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %.sroa.speculated.i.i, i64 1
  %i.dk = fmul <2 x float> %i.dj, %i.dh           ; 2 uses
  %shift = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dk, %shift
  %i.dl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dm = fneg float %i.cq
  %i.dn = fdiv float 1.000000e+00, %i.dl
  %i.do = fadd float %i.dn, -1.000000e+00
  %i.dp = call noundef float @logf(float noundef %i.do) #30
  %i.dq = fmul float %i.dp, %i.dm                 ; 3 uses
  %i.dr = fcmp olt float %i.dq, %i.cr
  %i.ds = fcmp ogt float %i.dq, %i.cs
  %..i.i = select i1 %i.ds, float %i.cs, float %i.dq
  %.0.i.i = select i1 %i.dr, float %i.cr, float %..i.i ; 7 uses
  %i.dt = fcmp olt float %.0.i.i, %i.cr
  %i.du = fcmp ogt float %.0.i.i, %i.cs
  %or.cond.i = or i1 %i.dt, %i.du
  br i1 %or.cond.i, label %_ZN4pbrt18TrimmedLogisticPDFEffff.exit, label %bb.u

bb.u:                                             ; preds = %.preheader
  %i.dv = call noundef float @llvm.fabs.f32(float %.0.i.i)
  %i.dw = fneg float %i.dv
  %i.dx = fdiv float %i.dw, %i.cq
  %i.dy = call noundef float @expf(float noundef %i.dx) #30 ; 2 uses
  %i.dz = fadd float %i.dy, 1.000000e+00          ; 2 uses
  %i.ea = fmul float %i.dz, %i.dz
  %i.eb = fmul float %i.cq, %i.ea
  %i.ec = fdiv float %i.dy, %i.eb
  %i.ed = call noundef float @expf(float noundef %i.db) #30
  %i.ee = call noundef float @expf(float noundef %i.cz) #30
  %i.ef = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ee, i64 1
  %i.eh = fadd <2 x float> %i.eg, splat (float 1.000000e+00)
  %i.ei = fdiv <2 x float> splat (float 1.000000e+00), %i.eh ; 2 uses
  %shift304 = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop305 = fsub <2 x float> %i.ei, %shift304
  %i.ej = extractelement <2 x float> %foldExtExtBinop305, i64 0
  %i.ek = fdiv float %i.ec, %i.ej
  br label %_ZN4pbrt18TrimmedLogisticPDFEffff.exit

_ZN4pbrt18TrimmedLogisticPDFEffff.exit:           ; preds = %bb.u, %.preheader
  %.0.i = phi float [ %i.ek, %bb.u ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.el = load i64, ptr %i.l, align 8, !tbaa !48
  %i.em = shl i64 %i.el, 32
  %i.en = ashr exact i64 %i.em, 32                ; 2 uses
  %i.eo = add nsw i64 %i.en, -2                   ; 2 uses
  %i.ep = icmp sgt i64 %i.en, 2
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !49  ; 2 uses
  br i1 %i.ep, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt18TrimmedLogisticPDFEffff.exit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.fa, %.lr.ph.i.i ], [ %i.eo, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit ] ; 2 uses
  %i.eq = lshr i64 %.01516.i.i, 1                 ; 3 uses
  %i.er = add i64 %i.eq, %.017.i.i                ; 2 uses
  %i.es = shl i64 %i.er, 32
  %i.et = ashr exact i64 %i.es, 30
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !22
  %i.ew = fcmp ole float %i.ev, %.sroa.speculated.i.i ; 2 uses
  %i.ex = add i64 %i.er, 1
  %i.ey = select i1 %i.ew, i64 %i.ex, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.ey                     ; 3 uses
  %.neg.i.i = xor i64 %i.eq, -1
  %i.ez = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.fa = select i1 %i.ew, i64 %i.ez, i64 %i.eq   ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.fc = add nsw i64 %.fr.i.i, -1
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.eo)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %._crit_edge.i.i, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit
  %i.fd = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit ] ; 3 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fd ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !22 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !22 ; 2 uses
  %i.fj = load float, ptr %i.n, align 8, !tbaa !54 ; 2 uses
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.fl = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fd
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !22
  %i.fo = fdiv float %i.fn, %i.fj
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.fp = phi float [ %i.fo, %bb.v ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ] ; 2 uses
  %i.fq = fcmp ogt float %i.fi, %i.fg
  %i.fr = fsub float %.sroa.speculated.i.i, %i.fg ; 2 uses
  %i.fs = fsub float %i.fi, %i.fg
  %i.ft = fdiv float %i.fr, %i.fs
  %.0.i63 = select i1 %i.fq, float %i.ft, float %i.fr
  %i.fu = uitofp nneg i32 %i.fe to float
  %i.fv = fadd float %.0.i63, %i.fu
  %i.fw = load i64, ptr %i.o, align 8, !tbaa !48
  %i.fx = uitofp i64 %i.fw to float
  %i.fy = fdiv float %i.fv, %i.fx                 ; 2 uses
  %i.fz = load float, ptr %i.p, align 8, !tbaa !55
  %i.ga = load float, ptr %i.q, align 4, !tbaa !56
  %i.gb = fsub float 1.000000e+00, %i.fy
  %i.gc = fmul float %i.fz, %i.gb
  %i.gd = fmul float %i.fy, %i.ga
  %i.ge = fadd float %i.gd, %i.gc                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.gf = fsub float %.0.i.i, %i.ge
  %i.gg = call noundef float @llvm.fabs.f32(float %i.gf)
  store float %i.gg, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store double 3.000000e-03, ptr %i.e, align 8, !tbaa !58
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.gh = load i8, ptr %4, align 8, !tbaa !28, !range !29, !noundef !30
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.ap, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.av

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.gk = load ptr, ptr %5, align 8, !tbaa !39
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.191, i64 noundef 14)
          to label %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit:       ; preds = %bb.aa
  %i.gn = load ptr, ptr %5, align 8, !tbaa !39
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = fpext float %.0.i.i to double
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.go, double noundef %i.gp)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit
  %i.gr = load ptr, ptr %5, align 8, !tbaa !39
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.192, i64 noundef 12)
          to label %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.gu = load ptr, ptr %5, align 8, !tbaa !39
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = fpext float %i.ge to double
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, double noundef %i.gw)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit64 unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit64:         ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.gy = load ptr, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i65, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit64
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %_ZN7testing7MessagelsIfEERS0_RKT_.exit64
  %i.ha = phi ptr [ %i.gz, %bb.ab ], [ @.str.360, %_ZN7testing7MessagelsIfEERS0_RKT_.exit64 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 795, ptr noundef %i.ha)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hb = load ptr, ptr %5, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
end_hunk_5
begin_hunk_6_@_ZN30SummedArea_NonCellAligned_Test8TestBodyEv:bb.a
  br i1 %.not.i.us, label %bb.d, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.d
  %i.az = and i32 %i.ay, 31
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  %.reass.us = add i32 %invariant.op.us, %i.ba
  %i.bb = sext i32 %.reass.us to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bb
  %i.bd = uitofp nneg i32 %i.az to float
  store float %i.bd, ptr %i.bc, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.1
  %i.be = phi i64 [ %i.bg, %bb.e ], [ %i.ar, %.preheader.us.1 ] ; 4 uses
  %i.bf = mul i64 %i.be, 6364136223846793005
  %i.bg = add i64 %i.bf, -2720673578348880933     ; 4 uses
  %i.bh = lshr i64 %i.be, 45
  %i.bi = lshr i64 %i.be, 27
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = lshr i64 %i.be, 59
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = call noundef i32 @llvm.fshr.i32(i32 %i.bk, i32 %i.bk, i32 %i.bm) ; 2 uses
  %.not.i.us.1 = icmp slt i32 %i.bn, 0
  br i1 %.not.i.us.1, label %bb.e, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = and i32 %i.bn, 31
  %i.bp = trunc i64 %indvars.iv to i32
  %i.bq = or disjoint i32 %i.bp, 1
  %.reass.us.1 = add i32 %invariant.op.us, %i.bq
  %i.br = sext i32 %.reass.us.1 to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.br
  %i.bt = uitofp nneg i32 %i.bo to float
  store float %i.bt, ptr %i.bs, align 4, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us, !llvm.loop !325

.preheader.us:                                    ; preds = %.preheader122.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.f ], [ 0, %.preheader122.us ] ; 3 uses
  %.sroa.0111.2186.us = phi i64 [ %i.bg, %bb.f ], [ %.sroa.0111.1188.us, %.preheader122.us ]
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.preheader122.us ]
  br label %bb.d

._crit_edge.us.unr-lcssa:                         ; preds = %bb.f
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge.us.unr-lcssa, %.preheader122.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader122.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.sroa.0111.2186.us.epil.init = phi i64 [ %.sroa.0111.1188.us, %.preheader122.us ], [ %i.bg, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod248)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.us.epil.preheader
  %i.bu = phi i64 [ %i.bw, %bb.g ], [ %.sroa.0111.2186.us.epil.init, %.preheader.us.epil.preheader ] ; 4 uses
  %i.bv = mul i64 %i.bu, 6364136223846793005
  %i.bw = add i64 %i.bv, -2720673578348880933     ; 2 uses
  %i.bx = lshr i64 %i.bu, 45
  %i.by = lshr i64 %i.bu, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bu, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 %i.cc) ; 2 uses
  %.not.i.us.epil = icmp slt i32 %i.cd, 0
  br i1 %.not.i.us.epil, label %bb.g, label %._crit_edge.us.epilog-lcssa

._crit_edge.us.epilog-lcssa:                      ; preds = %bb.g
  %i.ce = and i32 %i.cd, 31
  %i.cf = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.reass.us.epil = add i32 %invariant.op.us, %i.cf
  %i.cg = sext i32 %.reass.us.epil to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.cg
  %i.ci = uitofp nneg i32 %i.ce to float
  store float %i.ci, ptr %i.ch, align 4, !tbaa !22
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %._crit_edge.us.epilog-lcssa
  %.lcssa243.lcssa = phi i64 [ %i.bg, %._crit_edge.us.unr-lcssa ], [ %i.bw, %._crit_edge.us.epilog-lcssa ] ; 2 uses
  %i.cj = add nuw nsw i32 %.042189.us, 1          ; 2 uses
  %exitcond202.not = icmp eq i32 %i.cj, %.pre-phi
  br i1 %exitcond202.not, label %._crit_edge190, label %.preheader122.us, !llvm.loop !326

._crit_edge190:                                   ; preds = %._crit_edge.us, %.preheader122.lr.ph, %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit
  %.sroa.0111.1.lcssa = phi i64 [ %.sroa.0111.0194, %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit ], [ %.sroa.0111.0194, %.preheader122.lr.ph ], [ %.lcssa243.lcssa, %._crit_edge.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ck = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30
  invoke void @_ZN4pbrt15SummedAreaTableC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.ck)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge190
  %i.cl = mul i64 %.sroa.0111.1.lcssa, 6364136223846793005
  %i.cm = add i64 %i.cl, -2720673578348880933     ; 2 uses
  %i.cn = mul i64 %i.cm, 6364136223846793005
  %i.co = add i64 %i.cn, -2720673578348880933     ; 2 uses
  %i.cp = insertelement <2 x i64> poison, i64 %.sroa.0111.1.lcssa, i64 0
  %i.cq = insertelement <2 x i64> %i.cp, i64 %i.cm, i64 1 ; 3 uses
  %i.cr = lshr <2 x i64> %i.cq, splat (i64 45)
  %i.cs = lshr <2 x i64> %i.cq, splat (i64 27)
  %i.ct = xor <2 x i64> %i.cr, %i.cs
  %i.cu = trunc <2 x i64> %i.ct to <2 x i32>      ; 2 uses
  %i.cv = lshr <2 x i64> %i.cq, splat (i64 59)
  %i.cw = trunc nuw nsw <2 x i64> %i.cv to <2 x i32>
  %i.cx = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cu, <2 x i32> %i.cu, <2 x i32> %i.cw)
  %i.cy = uitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fmul nnan <2 x float> %i.cy, splat (float f0x2F800000) ; 2 uses
  %i.da = fcmp olt <2 x float> %i.cz, splat (float f0x3F7FFFFF)
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cz, <2 x float> splat (float f0x3F7FFFFF) ; 4 uses
  %i.dc = mul i64 %i.co, 6364136223846793005
  %i.dd = add i64 %i.dc, -2720673578348880933     ; 2 uses
  %i.de = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %i.df = insertelement <2 x i64> %i.de, i64 %i.dd, i64 1 ; 3 uses
  %i.dg = lshr <2 x i64> %i.df, splat (i64 45)
  %i.dh = lshr <2 x i64> %i.df, splat (i64 27)
  %i.di = xor <2 x i64> %i.dg, %i.dh
  %i.dj = trunc <2 x i64> %i.di to <2 x i32>      ; 2 uses
  %i.dk = lshr <2 x i64> %i.df, splat (i64 59)
  %i.dl = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dm = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dj, <2 x i32> %i.dj, <2 x i32> %i.dl)
  %i.dn = uitofp <2 x i32> %i.dm to <2 x float>
  %i.do = fmul nnan <2 x float> %i.dn, splat (float f0x2F800000) ; 2 uses
  %i.dp = fcmp olt <2 x float> %i.do, splat (float f0x3F7FFFFF)
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.do, <2 x float> splat (float f0x3F7FFFFF) ; 4 uses
  %i.dr = fcmp olt <2 x float> %i.dq, %i.db
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.dq, <2 x float> %i.db ; 4 uses
  %i.dt = fcmp olt <2 x float> %i.db, %i.dq
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.dq, <2 x float> %i.db ; 4 uses
  %i.dv = udiv i64 -1, %i.j
  %i.dw = sub nuw i64 %i.dv, %i.j
  %i.dx = load <2 x i32>, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !20
  %i.dy = load <2 x i32>, ptr %1, align 8, !tbaa !20 ; 2 uses
  %i.dz = sub nsw <2 x i32> %i.dx, %i.dy          ; 2 uses
  %i.ea = sitofp <2 x i32> %i.dz to <2 x float>
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !92
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge190
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.j:                                             ; preds = %bb.h, %bb.k
  %indvars.iv203 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next204, %bb.k ] ; 4 uses
  %.023193 = phi float [ 0.000000e+00, %bb.h ], [ %i.fd, %bb.k ]
  %.not.i.i = icmp eq i64 %indvars.iv203, 0
  br i1 %.not.i.i, label %bb.k, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ed, %.lr.ph.i.i ], [ %indvars.iv203, %bb.j ] ; 3 uses
  %.01922.i.i = phi i64 [ %i.ee, %.lr.ph.i.i ], [ 0, %bb.j ]
  %.02021.i.i = phi float [ %i.ef, %.lr.ph.i.i ], [ 1.000000e+00, %bb.j ]
  %i.ed = udiv i64 %.023.i.i, %i.j                ; 2 uses
  %reass.add.i.i = sub i64 %.01922.i.i, %i.ed
  %reass.mul.i.i = mul i64 %reass.add.i.i, %i.j
  %i.ee = add i64 %reass.mul.i.i, %.023.i.i       ; 3 uses
  %i.ef = fmul float %i.l, %.02021.i.i            ; 2 uses
  %i.eg = icmp samesign uge i64 %.023.i.i, %i.j
  %i.eh = icmp ult i64 %i.ee, %i.dw
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ej = uitofp i64 %i.ee to float
  %i.ek = fmul float %i.ef, %i.ej
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.loopexit.i.i, %bb.j
  %i.el = phi float [ 0.000000e+00, %bb.j ], [ %i.ek, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv203 to i32
  %i.en = uitofp nneg i32 %i.em to float
  %i.eo = fdiv float %i.en, 1.000000e+05
  %i.ep = fcmp ogt float %i.el, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.ep, float f0x3F7FFFFF, float %i.el
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.sroa.speculated.i.i, i64 1 ; 2 uses
  %i.es = fsub <2 x float> splat (float 1.000000e+00), %i.er
  %i.et = fmul <2 x float> %i.ds, %i.es
  %i.eu = fmul <2 x float> %i.du, %i.er
  %i.ev = fadd <2 x float> %i.eu, %i.et
  %i.ew = fmul <2 x float> %i.ev, %i.ea
  %i.ex = fptosi <2 x float> %i.ew to <2 x i32>
  %i.ey = sub <2 x i32> %i.ex, %i.dy              ; 2 uses
  %shift = shufflevector <2 x i32> %i.ey, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.dz
  %foldExtExtBinop235 = add nsw <2 x i32> %i.ey, %foldExtExtBinop
  %i.ez = extractelement <2 x i32> %foldExtExtBinop235, i64 0
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !22
  %i.fd = fadd float %.023193, %i.fc              ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %.not120 = icmp eq i64 %indvars.iv.next204, 100000
  br i1 %.not120, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.fe = mul i64 %i.dd, 6364136223846793005
  %i.ff = add i64 %i.fe, -2720673578348880933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.fg = fsub nnan <2 x float> %i.du, %i.ds      ; 2 uses
  %shift237 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fmul <2 x float> %i.fg, %shift237
  %i.fh = extractelement <2 x float> %foldExtExtBinop238, i64 0
  %i.fi = fmul float %i.fh, %i.fd
  %i.fj = fdiv float %i.fi, 1.000000e+05
  store float %i.fj, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.fk = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.fl = extractelement <2 x float> %i.du, i64 1 ; 2 uses
  %i.fm = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.fk, float noundef %i.fl)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  %i.fn = extractelement <2 x float> %i.ds, i64 0 ; 2 uses
  %i.fo = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.fn, float noundef %i.fl)
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %.noexc
  %i.fp = fpext float %i.fm to double
  %i.fq = fpext float %i.fo to double
  %i.fr = fsub double %i.fp, %i.fq
  %i.fs = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.ft = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.fn, float noundef %i.fs)
          to label %.noexc72 unwind label %bb.p

.noexc72:                                         ; preds = %.noexc71
  %i.fu = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.fk, float noundef %i.fs)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %.noexc72
  %i.fv = fpext float %i.ft to double
  %i.fw = fpext float %i.fu to double
  %i.fx = fsub double %i.fv, %i.fw
  %i.fy = fadd double %i.fr, %i.fx
  %i.fz = load <2 x i32>, ptr %i.m, align 8, !tbaa !20
  %i.ga = load <2 x i32>, ptr %2, align 8, !tbaa !20
  %i.gb = sub nsw <2 x i32> %i.fz, %i.ga          ; 2 uses
  %shift240 = shufflevector <2 x i32> %i.gb, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = mul nsw <2 x i32> %shift240, %i.gb
  %i.gc = extractelement <2 x i32> %foldExtExtBinop241, i64 0
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fdiv double %i.fy, %i.gd                ; 2 uses
  %i.gf = fptrunc double %i.ge to float
  %i.gg = fcmp olt double %i.ge, f0xB690000000000000
  %.sroa.speculated.i70 = select i1 %i.gg, float 0.000000e+00, float %i.gf ; 2 uses
  %i.gh = fpext float %.sroa.speculated.i70 to double ; 2 uses
  store double %i.gh, ptr %i.b, align 8, !tbaa !58
  %i.gi = load float, ptr %i.a, align 4, !tbaa !22 ; 2 uses
  %i.gj = fcmp une float %i.gi, %.sroa.speculated.i70
  br i1 %i.gj, label %bb.n, label %bb.ao

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.gk = fpext float %i.gi to double             ; 2 uses
  %i.gl = fsub double %i.gk, %i.gh
  %i.gm = fdiv double %i.gl, %i.gk
  %i.gn = call noundef double @llvm.fabs.f64(double %i.gm)
  store double %i.gn, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store float 1.000000e-03, ptr %i.d, align 4, !tbaa !22
  invoke void @_ZN7testing8internal11CmpHelperLTIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.351, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.go = load i8, ptr %3, align 8, !tbaa !28, !range !29, !noundef !30
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ai, label %bb.r

bb.p:                                             ; preds = %.noexc72, %.noexc71, %.noexc, %bb.l
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.q:                                             ; preds = %bb.n
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.an

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.o, ptr %5, align 8, !tbaa !120, !alias.scope !329
  store i64 0, ptr %i.p, align 8, !tbaa !60, !alias.scope !329
  store i8 0, ptr %i.o, align 8, !tbaa !42, !alias.scope !329
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRfJRdEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.356, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4pbrt12StringPrintfIJRfRdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load ptr, ptr %5, align 8, !tbaa !36, !alias.scope !329 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.o
  br i1 %i.gu, label %.body, label %.body.sink.split

_ZN4pbrt12StringPrintfIJRfRdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.s
  %i.gv = load ptr, ptr %4, align 8, !tbaa !39
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %5, align 8, !tbaa !36
  %i.gy = load i64, ptr %i.p, align 8, !tbaa !60
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx, i64 noundef %i.gy)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ac ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN4pbrt12StringPrintfIJRfRdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ha = load ptr, ptr %i.q, align 8, !tbaa !31  ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i75, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hc = phi ptr [ %i.hb, %bb.u ], [ @.str.360, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1313, ptr noundef %i.hc)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hd = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.o
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.hf = load i64, ptr %i.o, align 8, !tbaa !42
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.hh = load ptr, ptr %4, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hi = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.aa

.noexc.i.i:                                       ; preds = %bb.x
  br i1 %i.hi, label %bb.y, label %_ZN7testing7MessageD2Ev.exit

bb.y:                                             ; preds = %.noexc.i.i
  %i.hj = load ptr, ptr %4, align 8, !tbaa !39    ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN7testing7MessageD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(128) %i.hj) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ai

bb.ab:                                            ; preds = %bb.r
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %_ZN4pbrt12StringPrintfIJRfRdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.v
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ht, %bb.ae ], [ %i.hs, %bb.ad ]
end_hunk_6
