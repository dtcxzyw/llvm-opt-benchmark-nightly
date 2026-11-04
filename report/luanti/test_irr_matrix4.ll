Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_matrix4?download=true
inline.NumInlined: 572
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL11LEFT_HANDEDRKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEE:bb.a
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.j = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.f, label %bb.bd

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.k, i8 0, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 60
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 3 uses
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !19
  store float 1.000000e+00, ptr %16, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store <2 x float> <float f0x3FC90FDB, float 0.000000e+00>, ptr %17, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float 0.000000e+00, ptr %i.o, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #21
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(12) %17)
          to label %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit unwind label %bb.n, !inline_history !148

_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr @.str, ptr %19, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 29, ptr %i.t, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr nonnull @.str.30, i64 28, i32 noundef 2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.u = load float, ptr %16, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !19
  %i.x = fmul nsz float %i.w, 0.000000e+00
  %i.y = fadd nsz float %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !19
  %i.ab = call nsz float @llvm.fmuladd.f32(float %i.aa, float 0.000000e+00, float %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !19
  %i.ae = fadd nsz float %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.k, align 4, !tbaa !19
  %i.al = load <2 x float>, ptr %i.n, align 4, !tbaa !19
  %i.am = fmul nsz <2 x float> %i.al, zeroinitializer
  %i.an = fadd nsz <2 x float> %i.ak, %i.am
  %i.ao = load <2 x float>, ptr %i.af, align 4, !tbaa !19
  %i.ap = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.an) ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fadd nsz float %i.ah, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !19
  %i.au = extractelement <2 x float> %i.ap, i64 1
  %i.av = fadd nsz float %i.at, %i.au
  %i.aw = fadd nsz float %i.ae, -1.000000e+00
  %i.ax = call nsz noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp nsz ole float %i.ax, f0x358637BD
  %i.az = call nsz float @llvm.fabs.f32(float %i.ar)
  %i.ba = fcmp nsz ole float %i.az, f0x358637BD
  %or.cond.not = select i1 %i.ay, i1 %i.ba, i1 false
  %i.bb = call nsz float @llvm.fabs.f32(float %i.av)
  %i.bc = fcmp nsz ole float %i.bb, f0x358637BD
  %i.bd = select i1 %or.cond.not, i1 %i.bc, i1 false
  %i.be = zext i1 %i.bd to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.bf, align 8, !tbaa !22, !alias.scope !167
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !23, !alias.scope !167
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %9, align 8, !tbaa !25, !alias.scope !167
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i8 %i.be, ptr %i.bh, align 2, !tbaa !27, !alias.scope !167
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(10) %9)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.l:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.fi

bb.m:                                             ; preds = %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.bc

bb.o:                                             ; preds = %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.aa

bb.p:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q, %bb.j
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !34, !range !35, !noundef !36
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store ptr @.str, ptr %21, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 30, ptr %i.ca, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr nonnull @.str.31, i64 28, i32 noundef 2)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.cb = load float, ptr %i.ai, align 8, !tbaa !19
  %i.cc = load float, ptr %i.aj, align 8, !tbaa !19
  %i.cd = call nsz float @llvm.fmuladd.f32(float %i.cb, float 0.000000e+00, float %i.cc)
  %i.ce = load float, ptr %i.m, align 8, !tbaa !19
  %i.cf = call nsz float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.cd)
  %i.cg = load float, ptr %i.as, align 8, !tbaa !19
  %i.ch = fadd nsz float %i.cg, %i.cf
  %i.ci = load <2 x float>, ptr %16, align 8, !tbaa !19
  %i.cj = load <2 x float>, ptr %i.v, align 8, !tbaa !19
  %i.ck = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> zeroinitializer, <2 x float> %i.cj)
  %i.cl = load <2 x float>, ptr %i.z, align 8, !tbaa !19
  %i.cm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> zeroinitializer, <2 x float> %i.ck)
  %i.cn = load <2 x float>, ptr %i.ac, align 8, !tbaa !19
  %i.co = fadd nsz <2 x float> %i.cn, %i.cm
  %46 = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.co)
  %47 = fcmp nsz ole <2 x float> %46, splat (float f0x358637BD) ; 2 uses
  %48 = extractelement <2 x i1> %47, i64 0
  %49 = extractelement <2 x i1> %47, i64 1
  %or.cond280.not = select i1 %48, i1 %49, i1 false
  %i.cp = fadd nsz float %i.ch, -1.000000e+00
  %i.cq = call nsz float @llvm.fabs.f32(float %i.cp)
  %i.cr = fcmp nsz ole float %i.cq, f0x358637BD
  %i.cs = select i1 %or.cond280.not, i1 %i.cr, i1 false
  %i.ct = zext i1 %i.cs to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.cu, align 8, !tbaa !22, !alias.scope !168
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !23, !alias.scope !168
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %8, align 8, !tbaa !25, !alias.scope !168
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i8 %i.ct, ptr %i.cw, align 2, !tbaa !27, !alias.scope !168
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(10) %8)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ae

bb.x:                                             ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.fj

bb.y:                                             ; preds = %bb.r, %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.cx, %bb.x ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.bm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bc

bb.ab:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.aq

bb.ac:                                            ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  %i.dc = call ptr @__cxa_begin_catch(ptr %i.db) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad, %bb.w
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !34, !range !35, !noundef !36
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5Catch16AssertionHandlerD2Ev.exit173, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit173 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit173:          ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store ptr @.str, ptr %23, align 8, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 31, ptr %i.dn, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr nonnull @.str.32, i64 29, i32 noundef 2)
          to label %bb.ai unwind label %bb.ar

bb.ai:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.do = load <2 x float>, ptr %16, align 8
  %i.dp = load <2 x float>, ptr %i.v, align 8
  %i.dq = load float, ptr %i.z, align 8, !tbaa !19
  %i.dr = load float, ptr %i.ac, align 8, !tbaa !19
  %i.ds = load float, ptr %i.ai, align 8, !tbaa !19
  %i.dt = load float, ptr %i.aj, align 8, !tbaa !19
  %i.du = insertelement <2 x float> %i.dp, float %i.dt, i64 1
  %i.dv = fmul nsz <2 x float> %i.du, zeroinitializer
  %i.dw = insertelement <2 x float> %i.do, float %i.ds, i64 1
  %i.dx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> zeroinitializer, <2 x float> %i.dv) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = fadd nsz float %i.dq, %i.dy
  %i.ea = fadd nsz float %i.dr, %i.dz
  %i.eb = load float, ptr %i.m, align 8, !tbaa !19
  %i.ec = extractelement <2 x float> %i.dx, i64 1
  %i.ed = fadd nsz float %i.eb, %i.ec
  %i.ee = load float, ptr %i.as, align 8, !tbaa !19
  %i.ef = fadd nsz float %i.ee, %i.ed
  %i.eg = call nsz noundef float @llvm.fabs.f32(float %i.ea)
  %i.eh = fcmp nsz ugt float %i.eg, f0x358637BD
  br i1 %i.eh, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load float, ptr %i.ag, align 4, !tbaa !19
  %i.ej = load float, ptr %i.af, align 4, !tbaa !19
  %i.ek = load float, ptr %i.k, align 4, !tbaa !19
  %i.el = load float, ptr %i.n, align 4, !tbaa !19
  %i.em = fmul nsz float %i.el, 0.000000e+00
  %i.en = call nsz float @llvm.fmuladd.f32(float %i.ek, float 0.000000e+00, float %i.em)
  %i.eo = fadd nsz float %i.ej, %i.en
  %i.ep = fadd nsz float %i.ei, %i.eo
  %i.eq = fadd nsz float %i.ep, 1.000000e+00
  %i.er = call nsz noundef float @llvm.fabs.f32(float %i.eq)
  %i.es = fcmp nsz ugt float %i.er, f0x358637BD
  br i1 %i.es, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = call nsz noundef float @llvm.fabs.f32(float %i.ef)
  %i.eu = fcmp nsz ole float %i.et, f0x358637BD
  %i.ev = zext i1 %i.eu to i8
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak
  %i.ew = phi i8 [ 0, %bb.aj ], [ 0, %bb.ai ], [ %i.ev, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ex, align 8, !tbaa !22, !alias.scope !169
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !23, !alias.scope !169
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %7, align 8, !tbaa !25, !alias.scope !169
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i8 %i.ew, ptr %i.ez, align 2, !tbaa !27, !alias.scope !169
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(10) %7)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

bb.an:                                            ; preds = %bb.ac
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.fj

bb.ao:                                            ; preds = %bb.ae, %bb.ad
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.pn127 = phi { ptr, i32 } [ %i.fb, %bb.ao ], [ %i.fa, %bb.an ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %20) #19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ab
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %bb.ap ], [ %i.cz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.bc

bb.ar:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit173
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.bb

bb.as:                                            ; preds = %bb.al
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %.4 = extractvalue { ptr, i32 } %i.fd, 0
  %i.fe = call ptr @__cxa_begin_catch(ptr %.4) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at, %bb.am
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
end_hunk_0
begin_hunk_1_@_ZL11LEFT_HANDEDRKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEE:bb.a
  store float 1.000000e+00, ptr %i.fx, align 4, !tbaa !19
  %i.fy = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 4 uses
  store float 1.000000e+00, ptr %i.fy, align 8, !tbaa !19
  %i.fz = getelementptr inbounds nuw i8, ptr %27, i64 20 ; 3 uses
  store float 1.000000e+00, ptr %i.fz, align 4, !tbaa !19
  store float 1.000000e+00, ptr %27, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store <2 x float> <float 0.000000e+00, float f0x3FC90FDB>, ptr %28, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %28, i64 8
  store float 0.000000e+00, ptr %i.ga, align 8, !tbaa !64
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !43
  %.not.i.i182 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i182, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt25__throw_bad_function_callv() #21
          to label %.noexc183 unwind label %bb.br

.noexc183:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !42
  invoke void %i.ge(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(12) %28)
          to label %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit185 unwind label %bb.br, !inline_history !148

_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit185: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store ptr @.str, ptr %30, align 8, !tbaa !16
  %i.gf = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 37, ptr %i.gf, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %29, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr nonnull @.str.34, i64 28, i32 noundef 2)
          to label %bb.bj unwind label %bb.bs

bb.bj:                                            ; preds = %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit185
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.gg = load <2 x float>, ptr %27, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.gi = load <2 x float>, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.gk = load <2 x float>, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 3 uses
  %i.gm = load <2 x float>, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %27, i64 36 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %27, i64 52 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !19
  %i.gt = load float, ptr %i.fy, align 8, !tbaa !19
  %i.gu = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 3 uses
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !19
  %i.gw = insertelement <2 x float> %i.gg, float %i.gq, i64 1
  %i.gx = insertelement <2 x float> %i.gi, float %i.gs, i64 1
  %i.gy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> zeroinitializer, <2 x float> %i.gx)
  %i.gz = insertelement <2 x float> %i.gk, float %i.gt, i64 1
  %i.ha = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> zeroinitializer, <2 x float> %i.gy)
  %i.hb = insertelement <2 x float> %i.gm, float %i.gv, i64 1
  %i.hc = fadd nsz <2 x float> %i.ha, %i.hb       ; 2 uses
  %i.hd = extractelement <2 x float> %i.hc, i64 0
  %i.he = call nsz noundef float @llvm.fabs.f32(float %i.hd)
  %i.hf = fcmp nsz ugt float %i.he, f0x358637BD
  br i1 %i.hf, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hg = load float, ptr %i.go, align 4, !tbaa !19
  %i.hh = load float, ptr %i.gn, align 4, !tbaa !19
  %i.hi = load float, ptr %i.fw, align 4, !tbaa !19
  %i.hj = load float, ptr %i.fz, align 4, !tbaa !19
  %i.hk = call nsz float @llvm.fmuladd.f32(float %i.hi, float 0.000000e+00, float %i.hj)
  %i.hl = call nsz float @llvm.fmuladd.f32(float %i.hh, float 0.000000e+00, float %i.hk)
  %i.hm = fadd nsz float %i.hg, %i.hl
  %i.hn = fadd nsz float %i.hm, -1.000000e+00
  %i.ho = call nsz noundef float @llvm.fabs.f32(float %i.hn)
  %i.hp = fcmp nsz ugt float %i.ho, f0x358637BD
  br i1 %i.hp, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hq = extractelement <2 x float> %i.hc, i64 1
  %i.hr = call nsz noundef float @llvm.fabs.f32(float %i.hq)
  %i.hs = fcmp nsz ole float %i.hr, f0x358637BD
  %i.ht = zext i1 %i.hs to i8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.hu = phi i8 [ 0, %bb.bk ], [ 0, %bb.bj ], [ %i.ht, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.hv, align 8, !tbaa !22, !alias.scope !170
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 9
  store i8 %i.hu, ptr %i.hw, align 1, !tbaa !23, !alias.scope !170
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %6, align 8, !tbaa !25, !alias.scope !170
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i8 %i.hu, ptr %i.hx, align 2, !tbaa !27, !alias.scope !170
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %29, ptr noundef nonnull align 8 dereferenceable(10) %6)
          to label %bb.bn unwind label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bc, %bb.m
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.bc ], [ %i.bk, %bb.m ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.fi

bb.bp:                                            ; preds = %bb.bd
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.fi

bb.bq:                                            ; preds = %bb.be
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.br:                                            ; preds = %bb.bi, %bb.bh
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.dd

bb.bs:                                            ; preds = %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit185
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.ce

bb.bt:                                            ; preds = %bb.bm
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  %i.ie = call ptr @__cxa_begin_catch(ptr %i.id) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %29)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bu, %bb.bn
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %29)
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.if = getelementptr inbounds nuw i8, ptr %29, i64 59
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !34, !range !35, !noundef !36
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN5Catch16AssertionHandlerD2Ev.exit193, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ii = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !25
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 160
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull align 8 dereferenceable(72) %29)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit193 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit193:          ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store ptr @.str, ptr %32, align 8, !tbaa !16
  %i.ip = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 38, ptr %i.ip, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr nonnull @.str.35, i64 29, i32 noundef 2)
          to label %bb.bz unwind label %bb.cf

bb.bz:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.iq = load float, ptr %i.gp, align 8, !tbaa !19
  %i.ir = load float, ptr %i.gr, align 8, !tbaa !19
  %i.is = fmul nsz float %i.ir, 0.000000e+00
  %i.it = fadd nsz float %i.iq, %i.is
  %i.iu = load float, ptr %i.fy, align 8, !tbaa !19
  %i.iv = call nsz float @llvm.fmuladd.f32(float %i.iu, float 0.000000e+00, float %i.it)
  %i.iw = load float, ptr %i.gu, align 8, !tbaa !19
  %i.ix = fadd nsz float %i.iw, %i.iv
  %i.iy = load <2 x float>, ptr %27, align 8, !tbaa !19
  %i.iz = load <2 x float>, ptr %i.gh, align 8, !tbaa !19
  %i.ja = fmul nsz <2 x float> %i.iz, zeroinitializer
  %i.jb = fadd nsz <2 x float> %i.iy, %i.ja
  %i.jc = load <2 x float>, ptr %i.gj, align 8, !tbaa !19
  %i.jd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> zeroinitializer, <2 x float> %i.jb)
  %i.je = load <2 x float>, ptr %i.gl, align 8, !tbaa !19
  %i.jf = fadd nsz <2 x float> %i.je, %i.jd
  %50 = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jf)
  %51 = fcmp nsz ole <2 x float> %50, splat (float f0x358637BD) ; 2 uses
  %52 = extractelement <2 x i1> %51, i64 0
  %53 = extractelement <2 x i1> %51, i64 1
  %or.cond282.not = select i1 %52, i1 %53, i1 false
  %i.jg = fadd nsz float %i.ix, 1.000000e+00
  %i.jh = call nsz float @llvm.fabs.f32(float %i.jg)
  %i.ji = fcmp nsz ole float %i.jh, f0x358637BD
  %i.jj = select i1 %or.cond282.not, i1 %i.ji, i1 false
  %i.jk = zext i1 %i.jj to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.jl, align 8, !tbaa !22, !alias.scope !171
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.jk, ptr %i.jm, align 1, !tbaa !23, !alias.scope !171
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %5, align 8, !tbaa !25, !alias.scope !171
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i8 %i.jk, ptr %i.jn, align 2, !tbaa !27, !alias.scope !171
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.ca unwind label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ci

bb.cb:                                            ; preds = %bb.bt
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.fj

bb.cc:                                            ; preds = %bb.bv, %bb.bu
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.pn137 = phi { ptr, i32 } [ %i.jp, %bb.cc ], [ %i.jo, %bb.cb ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %29) #19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bs
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %bb.cd ], [ %i.ib, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.dd

bb.cf:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit193
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.cr

bb.cg:                                            ; preds = %bb.bz
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %.12 = extractvalue { ptr, i32 } %i.jr, 0
  %i.js = call ptr @__cxa_begin_catch(ptr %.12) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %31)
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_end_catch()
          to label %bb.ci unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ch, %bb.ca
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %31)
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.jt = getelementptr inbounds nuw i8, ptr %31, i64 59
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !34, !range !35, !noundef !36
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZN5Catch16AssertionHandlerD2Ev.exit201, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jw = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !25
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 160
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull align 8 dereferenceable(72) %31)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit201 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit201:          ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  store ptr @.str, ptr %34, align 8, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 39, ptr %i.kd, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr nonnull @.str.36, i64 28, i32 noundef 2)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit201
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  %i.ke = load float, ptr %27, align 8, !tbaa !19
  %i.kf = load float, ptr %i.gh, align 8, !tbaa !19
  %i.kg = fmul nsz float %i.kf, 0.000000e+00
  %i.kh = call nsz float @llvm.fmuladd.f32(float %i.ke, float 0.000000e+00, float %i.kg)
  %i.ki = load float, ptr %i.gj, align 8, !tbaa !19
  %i.kj = fadd nsz float %i.ki, %i.kh
  %i.kk = load float, ptr %i.gl, align 8, !tbaa !19
  %i.kl = fadd nsz float %i.kk, %i.kj
  %i.km = load float, ptr %i.gn, align 4, !tbaa !19
  %i.kn = load float, ptr %i.go, align 4, !tbaa !19
  %i.ko = load <2 x float>, ptr %i.fw, align 4, !tbaa !19
  %i.kp = load <2 x float>, ptr %i.fz, align 4, !tbaa !19
  %i.kq = fmul nsz <2 x float> %i.kp, zeroinitializer
  %i.kr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> zeroinitializer, <2 x float> %i.kq) ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0
  %i.kt = fadd nsz float %i.km, %i.ks
  %i.ku = fadd nsz float %i.kn, %i.kt
  %i.kv = load float, ptr %i.fy, align 8, !tbaa !19
  %i.kw = extractelement <2 x float> %i.kr, i64 1
  %i.kx = fadd nsz float %i.kv, %i.kw
  %i.ky = load float, ptr %i.gu, align 8, !tbaa !19
  %i.kz = fadd nsz float %i.ky, %i.kx
  %i.la = fadd nsz float %i.kl, -1.000000e+00
  %i.lb = call nsz noundef float @llvm.fabs.f32(float %i.la)
  %i.lc = fcmp nsz ole float %i.lb, f0x358637BD
  %i.ld = call nsz float @llvm.fabs.f32(float %i.ku)
  %i.le = fcmp nsz ole float %i.ld, f0x358637BD
  %or.cond284.not = select i1 %i.lc, i1 %i.le, i1 false
  %i.lf = call nsz float @llvm.fabs.f32(float %i.kz)
  %i.lg = fcmp nsz ole float %i.lf, f0x358637BD
  %i.lh = select i1 %or.cond284.not, i1 %i.lg, i1 false
  %i.li = zext i1 %i.lh to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.lj, align 8, !tbaa !22, !alias.scope !172
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %i.li, ptr %i.lk, align 1, !tbaa !23, !alias.scope !172
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %4, align 8, !tbaa !25, !alias.scope !172
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 %i.li, ptr %i.ll, align 2, !tbaa !27, !alias.scope !172
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr noundef nonnull align 8 dereferenceable(10) %4)
          to label %bb.cn unwind label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cv

bb.co:                                            ; preds = %bb.cg
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.fj

bb.cp:                                            ; preds = %bb.ci, %bb.ch
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %.pn141 = phi { ptr, i32 } [ %i.ln, %bb.cp ], [ %i.lm, %bb.co ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %31) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cf
  %.pn141.pn = phi { ptr, i32 } [ %.pn141, %bb.cq ], [ %i.jq, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.dd

bb.cs:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit201
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.dc

bb.ct:                                            ; preds = %bb.cm
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  %i.lr = call ptr @__cxa_begin_catch(ptr %i.lq) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %33)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  invoke void @__cxa_end_catch()
          to label %bb.cv unwind label %bb.da

bb.cv:                                            ; preds = %bb.cu, %bb.cn
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %33)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.ls = getelementptr inbounds nuw i8, ptr %33, i64 59
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !34, !range !35, !noundef !36
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %_ZN5Catch16AssertionHandlerD2Ev.exit209, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lv = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !25
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 160
  %i.lz = load ptr, ptr %i.ly, align 8
  invoke void %i.lz(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef nonnull align 8 dereferenceable(72) %33)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit209 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit209:          ; preds = %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.de

bb.cz:                                            ; preds = %bb.ct
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.db unwind label %bb.fj

bb.da:                                            ; preds = %bb.cv, %bb.cu
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %.pn144 = phi { ptr, i32 } [ %i.md, %bb.da ], [ %i.mc, %bb.cz ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %33) #19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cs
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %bb.db ], [ %i.lo, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cr, %bb.ce, %bb.br
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %bb.dc ], [ %.pn141.pn, %bb.cr ], [ %.pn137.pn, %bb.ce ], [ %i.ia, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.dm

bb.de:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit209, %bb.bf
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  store ptr @.str, ptr %36, align 8, !tbaa !16
  %i.me = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 42, ptr %i.me, align 8, !tbaa !17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull @.str.37) #19
  %i.mf = load ptr, ptr %37, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.mh = load i64, ptr %i.mg, align 8
  invoke void @_ZN5Catch7SectionC1ERKNS_14SourceLineInfoENS_9StringRefEPKc(ptr noundef nonnull align 8 dereferenceable(96) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr %i.mf, i64 %i.mh, ptr noundef null)
          to label %bb.df unwind label %bb.dn

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  %i.mi = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(96) %35)
          to label %bb.dg unwind label %bb.do

bb.dg:                                            ; preds = %bb.df
  br i1 %i.mi, label %bb.dh, label %bb.ff

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %i.mj = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.mj, i8 0, i64 56, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %38, i64 60
  store float 1.000000e+00, ptr %i.mk, align 4, !tbaa !19
  %i.ml = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 4 uses
  store float 1.000000e+00, ptr %i.ml, align 8, !tbaa !19
  %i.mm = getelementptr inbounds nuw i8, ptr %38, i64 20 ; 3 uses
  store float 1.000000e+00, ptr %i.mm, align 4, !tbaa !19
  store float 1.000000e+00, ptr %38, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  store <2 x float> zeroinitializer, ptr %39, align 8, !tbaa !19
  %i.mn = getelementptr inbounds nuw i8, ptr %39, i64 8
  store float f0x3FC90FDB, ptr %i.mn, align 8, !tbaa !64
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !43
  %.not.i.i210 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i210, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZSt25__throw_bad_function_callv() #21
          to label %.noexc211 unwind label %bb.dp

.noexc211:                                        ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !42
  invoke void %i.mr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %38, ptr noundef nonnull align 4 dereferenceable(12) %39)
          to label %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit213 unwind label %bb.dp, !inline_history !148

_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit213: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  store ptr @.str, ptr %41, align 8, !tbaa !16
  %i.ms = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 45, ptr %i.ms, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %40, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr nonnull @.str.38, i64 28, i32 noundef 2)
          to label %bb.dk unwind label %bb.dq

bb.dk:                                            ; preds = %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit213
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  %i.mt = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %38, i64 36 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %38, i64 52 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.mz = load float, ptr %i.my, align 8, !tbaa !19
  %i.na = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 3 uses
  %i.nb = load float, ptr %i.na, align 8, !tbaa !19
  %i.nc = fmul nsz float %i.nb, 0.000000e+00
  %i.nd = call nsz float @llvm.fmuladd.f32(float %i.mz, float 0.000000e+00, float %i.nc)
  %i.ne = load float, ptr %i.ml, align 8, !tbaa !19
  %i.nf = fadd nsz float %i.ne, %i.nd
  %i.ng = getelementptr inbounds nuw i8, ptr %38, i64 56 ; 3 uses
  %i.nh = load float, ptr %i.ng, align 8, !tbaa !19
  %i.ni = fadd nsz float %i.nh, %i.nf
  %i.nj = load <2 x float>, ptr %38, align 8, !tbaa !19
  %i.nk = load <2 x float>, ptr %i.mt, align 8, !tbaa !19
  %i.nl = fmul nsz <2 x float> %i.nk, zeroinitializer
  %i.nm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> zeroinitializer, <2 x float> %i.nl)
  %i.nn = load <2 x float>, ptr %i.mu, align 8, !tbaa !19
  %i.no = fadd nsz <2 x float> %i.nn, %i.nm
  %i.np = load <2 x float>, ptr %i.mv, align 8, !tbaa !19
  %i.nq = fadd nsz <2 x float> %i.np, %i.no
  %54 = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nq)
  %55 = fcmp nsz ole <2 x float> %54, splat (float f0x358637BD) ; 2 uses
  %56 = extractelement <2 x i1> %55, i64 0
  %57 = extractelement <2 x i1> %55, i64 1
  %or.cond286.not = select i1 %56, i1 %57, i1 false
  %i.nr = fadd nsz float %i.ni, -1.000000e+00
  %i.ns = call nsz float @llvm.fabs.f32(float %i.nr)
  %i.nt = fcmp nsz ole float %i.ns, f0x358637BD
  %i.nu = select i1 %or.cond286.not, i1 %i.nt, i1 false
  %i.nv = zext i1 %i.nu to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.nw, align 8, !tbaa !22, !alias.scope !173
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !23, !alias.scope !173
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %3, align 8, !tbaa !25, !alias.scope !173
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.nv, ptr %i.ny, align 2, !tbaa !27, !alias.scope !173
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %40, ptr noundef nonnull align 8 dereferenceable(10) %3)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.dt

bb.dm:                                            ; preds = %bb.dd, %bb.bq
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn, %bb.dd ], [ %i.hz, %bb.bq ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.fi

bb.dn:                                            ; preds = %bb.de
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %bb.fi

bb.do:                                            ; preds = %bb.df
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.dp:                                            ; preds = %bb.dj, %bb.di
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.fe

bb.dq:                                            ; preds = %_ZNKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEEclES3_S7_.exit213
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  br label %bb.ef

bb.dr:                                            ; preds = %bb.dk
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  %i.of = call ptr @__cxa_begin_catch(ptr %i.oe) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %40)
          to label %bb.ds unwind label %bb.ec

bb.ds:                                            ; preds = %bb.dr
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.ed

bb.dt:                                            ; preds = %bb.ds, %bb.dl
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %40)
          to label %bb.du unwind label %bb.ed

bb.du:                                            ; preds = %bb.dt
  %i.og = getelementptr inbounds nuw i8, ptr %40, i64 59
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !34, !range !35, !noundef !36
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %_ZN5Catch16AssertionHandlerD2Ev.exit221, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.oj = getelementptr inbounds nuw i8, ptr %40, i64 64
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !25
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 160
  %i.on = load ptr, ptr %i.om, align 8
  invoke void %i.on(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull align 8 dereferenceable(72) %40)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit221 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit221:          ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  store ptr @.str, ptr %43, align 8, !tbaa !16
  %i.oq = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 46, ptr %i.oq, align 8, !tbaa !17
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %42, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr nonnull @.str.39, i64 28, i32 noundef 2)
          to label %bb.dx unwind label %bb.eg

bb.dx:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit221
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %i.or = load <2 x float>, ptr %38, align 8
  %i.os = load <2 x float>, ptr %i.mt, align 8
  %i.ot = load <2 x float>, ptr %i.mu, align 8
  %i.ou = load float, ptr %i.mv, align 8, !tbaa !19
  %i.ov = load float, ptr %i.my, align 8, !tbaa !19
  %i.ow = load float, ptr %i.na, align 8, !tbaa !19
  %i.ox = load float, ptr %i.ml, align 8, !tbaa !19
  %i.oy = insertelement <2 x float> %i.os, float %i.ow, i64 1
  %i.oz = fmul nsz <2 x float> %i.oy, zeroinitializer
  %i.pa = insertelement <2 x float> %i.or, float %i.ov, i64 1
  %i.pb = fadd nsz <2 x float> %i.pa, %i.oz
  %i.pc = insertelement <2 x float> %i.ot, float %i.ox, i64 1
  %i.pd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> zeroinitializer, <2 x float> %i.pb) ; 2 uses
  %i.pe = extractelement <2 x float> %i.pd, i64 0
  %i.pf = fadd nsz float %i.ou, %i.pe
  %i.pg = load float, ptr %i.ng, align 8, !tbaa !19
  %i.ph = extractelement <2 x float> %i.pd, i64 1
  %i.pi = fadd nsz float %i.pg, %i.ph
  %i.pj = call nsz noundef float @llvm.fabs.f32(float %i.pf)
  %i.pk = fcmp nsz ugt float %i.pj, f0x358637BD
  br i1 %i.pk, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pl = load float, ptr %i.mx, align 4, !tbaa !19
  %i.pm = load float, ptr %i.mw, align 4, !tbaa !19
  %i.pn = load float, ptr %i.mj, align 4, !tbaa !19
  %i.po = load float, ptr %i.mm, align 4, !tbaa !19
  %i.pp = fmul nsz float %i.po, 0.000000e+00
  %i.pq = fadd nsz float %i.pn, %i.pp
  %i.pr = call nsz float @llvm.fmuladd.f32(float %i.pm, float 0.000000e+00, float %i.pq)
  %i.ps = fadd nsz float %i.pl, %i.pr
  %i.pt = fadd nsz float %i.ps, -1.000000e+00
  %i.pu = call nsz noundef float @llvm.fabs.f32(float %i.pt)
  %i.pv = fcmp nsz ugt float %i.pu, f0x358637BD
  br i1 %i.pv, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pw = call nsz noundef float @llvm.fabs.f32(float %i.pi)
  %i.px = fcmp nsz ole float %i.pw, f0x358637BD
  %i.py = zext i1 %i.px to i8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dx, %bb.dy, %bb.dz
  %i.pz = phi i8 [ 0, %bb.dy ], [ 0, %bb.dx ], [ %i.py, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.qa, align 8, !tbaa !22, !alias.scope !174
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.pz, ptr %i.qb, align 1, !tbaa !23, !alias.scope !174
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !25, !alias.scope !174
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.pz, ptr %i.qc, align 2, !tbaa !27, !alias.scope !174
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %42, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.eb unwind label %bb.eh

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ej

bb.ec:                                            ; preds = %bb.dr
  %i.qd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ee unwind label %bb.fj

bb.ed:                                            ; preds = %bb.dt, %bb.ds
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %.pn150 = phi { ptr, i32 } [ %i.qe, %bb.ed ], [ %i.qd, %bb.ec ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %40) #19
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dq
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.ee ], [ %i.oc, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.fe

bb.eg:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit221
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br label %bb.es

bb.eh:                                            ; preds = %bb.ea
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  %i.qi = call ptr @__cxa_begin_catch(ptr %i.qh) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %42)
          to label %bb.ei unwind label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  invoke void @__cxa_end_catch()
          to label %bb.ej unwind label %bb.eq

bb.ej:                                            ; preds = %bb.ei, %bb.eb
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %42)
          to label %bb.ek unwind label %bb.eq
end_hunk_1
