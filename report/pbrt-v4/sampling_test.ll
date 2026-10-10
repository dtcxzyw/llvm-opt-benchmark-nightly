Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN20Sampling_Linear_Test8TestBodyEv:.noexc

bb.cp:                                            ; preds = %bb.cm
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #31
  unreachable

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %bb.cl, %.noexc.i.i172, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cx

bb.cq:                                            ; preds = %bb.ch
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cr:                                            ; preds = %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit165, %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit, %bb.ci
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.ck
  %i.kl = landingpad { ptr, i32 }
          cleanup
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
  br label %bb.ej

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
  %.sroa.0235.0302 = phi i32 [ 0, %.preheader ], [ %i.qx, %_ZN7testing15AssertionResultD2Ev.exit215 ]
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
  %i.mt = insertelement <2 x i64> poison, i64 %.sroa.0243.0300, i64 0
  %i.mu = insertelement <2 x i64> %i.mt, i64 %i.mq, i64 1 ; 3 uses
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
  %i.ng = fmul nnan <2 x float> %i.nf, splat (float 1.000000e+01) ; 2 uses
  %i.nh = extractelement <2 x float> %i.ng, i64 0 ; 4 uses
  %i.ni = extractelement <2 x float> %i.ng, i64 1 ; 4 uses
  %i.nj = fcmp olt float %i.nh, %i.ni             ; 2 uses
  %spec.select = select i1 %i.nj, float %i.ni, float %i.nh ; 6 uses
  %spec.select290 = select i1 %i.nj, float %i.nh, float %i.ni ; 4 uses
  %i.nk = fcmp oeq float %.sroa.speculated.i.i181, 0.000000e+00
  %i.nl = fcmp oeq float %spec.select, 0.000000e+00
  %or.cond.i184 = and i1 %i.nk, %i.nl
  %.pre305 = fadd float %i.nh, %i.ni              ; 2 uses
  br i1 %or.cond.i184, label %._crit_edge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nm = fmul float %.sroa.speculated.i.i181, %.pre305
  %20 = fmul float %spec.select, %spec.select
  %21 = fmul float %spec.select290, %spec.select290
  %22 = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i181
  %23 = fmul float %22, %20
  %24 = fmul float %.sroa.speculated.i.i181, %21
  %25 = fadd float %23, %24
  %i.nn = call noundef float @sqrtf(float noundef %25) #30
  %i.no = fadd float %spec.select, %i.nn
  %i.np = fdiv float %i.nm, %i.no                 ; 2 uses
  %i.nq = fcmp ogt float %i.np, f0x3F7FFFFF
  %.sroa.speculated.i185 = select i1 %i.nq, float f0x3F7FFFFF, float %i.np
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.dk, %bb.dl
  %.0.i186 = phi float [ %.sroa.speculated.i185, %bb.dl ], [ 0.000000e+00, %bb.dk ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.nr = fsub float 2.000000e+00, %.0.i186
  %26 = fmul float %spec.select, %i.nr
  %27 = fmul float %spec.select290, %.0.i186
  %28 = fadd float %27, %26
  %i.ns = fmul float %.0.i186, %28
  %i.nt = fdiv float %i.ns, %.pre305              ; 4 uses
  %i.nu = call noundef float @llvm.fabs.f32(float %i.nt) ; 2 uses
  %i.nv = fcmp olt float %i.nu, %.sroa.speculated.i.i181
  %.sroa.speculated.i188 = select i1 %i.nv, float %i.nu, float %.sroa.speculated.i.i181
  %i.nw = fpext float %.sroa.speculated.i188 to double
  %i.nx = fcmp olt double %i.nw, 1.000000e-02
  %i.ny = fsub float %.sroa.speculated.i.i181, %i.nt ; 2 uses
  %i.nz = fmul float %i.ny, 2.000000e+00
  %i.oa = fadd float %.sroa.speculated.i.i181, %i.nt
  %i.ob = fdiv float %i.nz, %i.oa
  %.sink.i = select i1 %i.nx, float %i.ny, float %i.ob
  %i.oc = call noundef float @llvm.fabs.f32(float %.sink.i)
  %i.od = fpext float %i.oc to double
  %i.oe = fcmp ule double %i.od, 1.000000e-02     ; 2 uses
  %i.of = zext i1 %i.oe to i8
  store i8 %i.of, ptr %16, align 8, !tbaa !28
  store ptr null, ptr %i.eg, align 8, !tbaa !31
  br i1 %i.oe, label %_ZN7testing15AssertionResultD2Ev.exit215, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.dn unwind label %bb.dv

bb.dn:                                            ; preds = %bb.dm
  %i.og = load ptr, ptr %17, align 8, !tbaa !39
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull @.str.201, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %bb.dn
  %i.oj = load ptr, ptr %17, align 8, !tbaa !39
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = fpext float %.sroa.speculated.i.i181 to double
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, double noundef %i.ol)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit191 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit191:        ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.on = load ptr, ptr %17, align 8, !tbaa !39
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef nonnull @.str.202, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit191
  %i.oq = load ptr, ptr %17, align 8, !tbaa !39
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = fpext float %.0.i186 to double
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.or, double noundef %i.os)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit194 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit194:        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.ou = load ptr, ptr %17, align 8, !tbaa !39
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit194
  %i.ox = load ptr, ptr %17, align 8, !tbaa !39
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.oz = fpext float %i.nt to double
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, double noundef %i.oz)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit197 unwind label %bb.dx ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit197:        ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.pb = load ptr, ptr %17, align 8, !tbaa !39
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, ptr noundef nonnull @.str.203, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.dx ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit197
  %i.pe = load ptr, ptr %17, align 8, !tbaa !39
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = fpext float %spec.select to double
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, double noundef %i.pg)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit200 unwind label %bb.dx ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit200:        ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.pi = load ptr, ptr %17, align 8, !tbaa !39
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, ptr noundef nonnull @.str.204, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit unwind label %bb.dx ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit200
  %i.pl = load ptr, ptr %17, align 8, !tbaa !39
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = fpext float %spec.select290 to double
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, double noundef %i.pn)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit203 unwind label %bb.dx ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit203:        ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60)
          to label %bb.do unwind label %bb.dy

bb.do:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit203
  %i.pp = load ptr, ptr %19, align 8, !tbaa !36
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 676, ptr noundef %i.pp)
          to label %bb.dp unwind label %bb.dz

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.dq unwind label %bb.ea

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #30
  %i.pq = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.eh
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dq
  %i.ps = load i64, ptr %i.eh, align 8, !tbaa !42
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.pu = load ptr, ptr %17, align 8, !tbaa !39
  %.not.i.i.i204 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i204, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i205 unwind label %bb.du

.noexc.i.i205:                                    ; preds = %bb.dr
  br i1 %i.pv, label %bb.ds, label %bb.ee

bb.ds:                                            ; preds = %.noexc.i.i205
  %i.pw = load ptr, ptr %17, align 8, !tbaa !39   ; 3 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.ee, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.py = load ptr, ptr %i.pw, align 8, !tbaa !41
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(128) %i.pw) #30, !inline_history !0
  br label %bb.ee

bb.du:                                            ; preds = %bb.dr
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #31
  unreachable

bb.dv:                                            ; preds = %bb.dm
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dw:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit194, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit191, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %bb.dn
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dx:                                            ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit200, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit197, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dy:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit203
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.dz:                                            ; preds = %bb.do
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dp
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #30
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn = phi { ptr, i32 } [ %i.qi, %bb.ea ], [ %i.qh, %bb.dz ] ; 2 uses
  %i.qj = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.eh
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.eb
  %i.ql = load i64, ptr %i.eh, align 8, !tbaa !42
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %bb.dy
  %.pn.pn = phi { ptr, i32 } [ %i.qg, %bb.dy ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.dw
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qe, %bb.dw ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %i.qf, %bb.dx ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #30
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dv
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ec ], [ %i.qd, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ej

bb.ee:                                            ; preds = %bb.dt, %bb.ds, %.noexc.i.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %.pr = load ptr, ptr %i.eg, align 8, !tbaa !31
  %.not.i.i.i210 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i210, label %_ZN7testing15AssertionResultD2Ev.exit215, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i211 unwind label %bb.ei

.noexc.i.i211:                                    ; preds = %bb.ef
  br i1 %i.qn, label %bb.eg, label %_ZN7testing15AssertionResultD2Ev.exit215

bb.eg:                                            ; preds = %.noexc.i.i211
  %i.qo = load ptr, ptr %i.eg, align 8, !tbaa !31 ; 4 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %_ZN7testing15AssertionResultD2Ev.exit215, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !36 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 16 ; 2 uses
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i212: ; preds = %bb.eh
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !42
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i213: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i212
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit215

bb.ei:                                            ; preds = %bb.ef
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  call void @__clang_call_terminate(ptr %i.qw) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit215:         ; preds = %._crit_edge, %bb.ee, %.noexc.i.i211, %bb.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.qx = add nuw nsw i32 %.sroa.0235.0302, 1     ; 2 uses
  %.not292 = icmp eq i32 %i.qx, 100
  br i1 %.not292, label %bb.dd, label %bb.dk

bb.ej:                                            ; preds = %bb.ed, %bb.dc, %bb.cf
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn, %bb.cf ], [ %.pn98.pn.pn.pn, %bb.dc ], [ %.pn.pn.pn.pn.pn, %bb.ed ]
  call void @_ZN4pbrt19PiecewiseConstant1DD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %9) #30
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.bc
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ej ], [ %i.en, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #30
  br label %_ZNSt14_Function_baseD2Ev.exit140

_ZNSt14_Function_baseD2Ev.exit140:                ; preds = %bb.ba, %bb.az, %bb.ek
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ek ], [ %i.ei, %bb.az ], [ %i.ei, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit217

_ZNSt6vectorIiSaIiEED2Ev.exit217:                 ; preds = %bb.av, %bb.aa, %_ZNSt14_Function_baseD2Ev.exit140
  %.pn121.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt14_Function_baseD2Ev.exit140 ], [ %.pn112.pn.pn, %bb.aa ], [ %.pn116.pn.pn, %bb.av ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 128) #32
  resume { ptr, i32 } %.pn121.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperGEIidEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN22Sampling_Logistic_Test8TestBodyEv:bb.a
bb.c:                                             ; preds = %bb.a, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %.035.idx281 = phi i64 [ 0, %bb.a ], [ %.035.add, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %.035.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN22Sampling_Logistic_Test8TestBodyEv.params, i64 %.035.idx281 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.aa = load float, ptr %.035.ptr, align 4, !tbaa !22
  store float %i.aa, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.ptr, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !22
  store float %i.ac, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %.035.ptr, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !22
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
  %.035.add = add nuw nsw i64 %.035.idx281, 12    ; 2 uses
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
  %.sroa.0117.0280 = phi i32 [ %i.ni, %_ZN7testing15AssertionResultD2Ev.exit96 ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ]
  %.sroa.8.0279 = phi i64 [ %i.cf, %_ZN7testing15AssertionResultD2Ev.exit96 ], [ 6364136223846793006, %_ZNSt14_Function_baseD2Ev.exit ] ; 4 uses
  %i.ce = mul i64 %.sroa.8.0279, 6364136223846793005
  %i.cf = add i64 %i.ce, 1
  %i.cg = lshr i64 %.sroa.8.0279, 45
  %i.ch = lshr i64 %.sroa.8.0279, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %.sroa.8.0279, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 %i.cl)
  %i.cn = uitofp i32 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x2F800000      ; 2 uses
  %i.cp = fcmp olt float %i.co, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.cp, float %i.co, float f0x3F7FFFFF ; 9 uses
  %i.cq = load float, ptr %i.a, align 4, !tbaa !22 ; 5 uses
  %i.cr = load float, ptr %i.b, align 4, !tbaa !22 ; 4 uses
  %i.cs = load float, ptr %i.c, align 4, !tbaa !22 ; 4 uses
  %14 = fneg float %i.cr
  %15 = fdiv float %14, %i.cq                     ; 2 uses
  %16 = call noundef float @expf(float noundef %15) #30
  %17 = fneg float %i.cs
  %18 = fdiv float %17, %i.cq                     ; 2 uses
  %i.ct = call noundef float @expf(float noundef %18) #30
  %i.cu = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.cv = insertelement <2 x float> poison, float %16, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.ct, i64 1
  %i.cx = fadd <2 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = fdiv <2 x float> splat (float 1.000000e+00), %i.cx
  %i.cz = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %.sroa.speculated.i.i, i64 1
  %i.db = fmul <2 x float> %i.da, %i.cy           ; 2 uses
  %shift = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.db, %shift
  %i.dc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dd = fneg float %i.cq
  %i.de = fdiv float 1.000000e+00, %i.dc
  %i.df = fadd float %i.de, -1.000000e+00
  %i.dg = call noundef float @logf(float noundef %i.df) #30
  %i.dh = fmul float %i.dg, %i.dd                 ; 3 uses
  %i.di = fcmp olt float %i.dh, %i.cr
  %i.dj = fcmp ogt float %i.dh, %i.cs
  %..i.i = select i1 %i.dj, float %i.cs, float %i.dh
  %.0.i.i = select i1 %i.di, float %i.cr, float %..i.i ; 7 uses
  %i.dk = fcmp olt float %.0.i.i, %i.cr
  %i.dl = fcmp ogt float %.0.i.i, %i.cs
  %or.cond.i = or i1 %i.dk, %i.dl
  br i1 %or.cond.i, label %_ZN4pbrt18TrimmedLogisticPDFEffff.exit, label %bb.u

bb.u:                                             ; preds = %.preheader
  %i.dm = call noundef float @llvm.fabs.f32(float %.0.i.i)
  %i.dn = fneg float %i.dm
  %i.do = fdiv float %i.dn, %i.cq
  %i.dp = call noundef float @expf(float noundef %i.do) #30 ; 2 uses
  %i.dq = fadd float %i.dp, 1.000000e+00          ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = fmul float %i.cq, %i.dr
  %i.dt = fdiv float %i.dp, %i.ds
  %i.du = call noundef float @expf(float noundef %18) #30
  %i.dv = call noundef float @expf(float noundef %15) #30
  %i.dw = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.dv, i64 1
  %i.dy = fadd <2 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = fdiv <2 x float> splat (float 1.000000e+00), %i.dy ; 2 uses
  %shift310 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop311 = fsub <2 x float> %i.dz, %shift310
  %i.ea = extractelement <2 x float> %foldExtExtBinop311, i64 0
  %i.eb = fdiv float %i.dt, %i.ea
  br label %_ZN4pbrt18TrimmedLogisticPDFEffff.exit

_ZN4pbrt18TrimmedLogisticPDFEffff.exit:           ; preds = %bb.u, %.preheader
  %.0.i = phi float [ %i.eb, %bb.u ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.ec = load i64, ptr %i.l, align 8, !tbaa !48
  %i.ed = shl i64 %i.ec, 32
  %i.ee = ashr exact i64 %i.ed, 32                ; 2 uses
  %i.ef = add nsw i64 %i.ee, -2                   ; 2 uses
  %i.eg = icmp sgt i64 %i.ee, 2
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !49  ; 2 uses
  br i1 %i.eg, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt18TrimmedLogisticPDFEffff.exit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.er, %.lr.ph.i.i ], [ %i.ef, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit ] ; 2 uses
  %i.eh = lshr i64 %.01516.i.i, 1                 ; 3 uses
  %i.ei = add i64 %i.eh, %.017.i.i                ; 2 uses
  %i.ej = shl i64 %i.ei, 32
  %i.ek = ashr exact i64 %i.ej, 30
  %i.el = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !22
  %i.en = fcmp ole float %i.em, %.sroa.speculated.i.i ; 2 uses
  %i.eo = add i64 %i.ei, 1
  %i.ep = select i1 %i.en, i64 %i.eo, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.ep                     ; 3 uses
  %.neg.i.i = xor i64 %i.eh, -1
  %i.eq = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.er = select i1 %i.en, i64 %i.eq, i64 %i.eh   ; 2 uses
  %i.es = icmp sgt i64 %i.er, 0
  br i1 %i.es, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.et = add nsw i64 %.fr.i.i, -1
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.et, i64 %i.ef)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %._crit_edge.i.i, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit
  %i.eu = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %_ZN4pbrt18TrimmedLogisticPDFEffff.exit ] ; 3 uses
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.eu ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !22 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22 ; 2 uses
  %i.fa = load float, ptr %i.n, align 8, !tbaa !54 ; 2 uses
  %i.fb = fcmp ogt float %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.fc = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.eu
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !22
  %i.ff = fdiv float %i.fe, %i.fa
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.fg = phi float [ %i.ff, %bb.v ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ] ; 2 uses
  %i.fh = fcmp ogt float %i.ez, %i.ex
  %i.fi = fsub float %.sroa.speculated.i.i, %i.ex ; 2 uses
  %i.fj = fsub float %i.ez, %i.ex
  %i.fk = fdiv float %i.fi, %i.fj
  %.0.i63 = select i1 %i.fh, float %i.fk, float %i.fi
  %i.fl = uitofp nneg i32 %i.ev to float
  %i.fm = fadd float %.0.i63, %i.fl
  %i.fn = load i64, ptr %i.o, align 8, !tbaa !48
  %i.fo = uitofp i64 %i.fn to float
  %i.fp = fdiv float %i.fm, %i.fo                 ; 2 uses
  %i.fq = load float, ptr %i.p, align 8, !tbaa !55
  %i.fr = load float, ptr %i.q, align 4, !tbaa !56
  %i.fs = fsub float 1.000000e+00, %i.fp
  %i.ft = fmul float %i.fq, %i.fs
  %i.fu = fmul float %i.fp, %i.fr
  %i.fv = fadd float %i.fu, %i.ft                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.fw = fsub float %.0.i.i, %i.fv
  %i.fx = call noundef float @llvm.fabs.f32(float %i.fw)
  store float %i.fx, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store double 3.000000e-03, ptr %i.e, align 8, !tbaa !58
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.fy = load i8, ptr %4, align 8, !tbaa !28, !range !29, !noundef !30
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.ap, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.av

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.gb = load ptr, ptr %5, align 8, !tbaa !39
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.191, i64 noundef 14)
          to label %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit:       ; preds = %bb.aa
  %i.ge = load ptr, ptr %5, align 8, !tbaa !39
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = fpext float %.0.i.i to double
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, double noundef %i.gg)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit
  %i.gi = load ptr, ptr %5, align 8, !tbaa !39
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.192, i64 noundef 12)
          to label %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.gl = load ptr, ptr %5, align 8, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = fpext float %i.fv to double
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, double noundef %i.gn)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit64 unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit64:         ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.gp = load ptr, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i65, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %_ZN7testing7MessagelsIfEERS0_RKT_.exit64
  %i.gr = phi ptr [ %i.gq, %bb.ab ], [ @.str.360, %_ZN7testing7MessagelsIfEERS0_RKT_.exit64 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 795, ptr noundef %i.gr)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gs = load ptr, ptr %5, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ah

.noexc.i.i:                                       ; preds = %bb.ae
  br i1 %i.gt, label %bb.af, label %_ZN7testing7MessageD2Ev.exit

bb.af:                                            ; preds = %.noexc.i.i
  %i.gu = load ptr, ptr %5, align 8, !tbaa !39    ; 3 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN7testing7MessageD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ad, %.noexc.i.i, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ap

bb.ai:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit, %bb.aa
  %i.hc = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN22Sampling_Logistic_Test8TestBodyEv:bb.a
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ap, %.noexc.i.i67, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.hq = fsub float %.0.i, %i.fg
  %i.hr = call noundef float @llvm.fabs.f32(float %i.hq)
  store float %i.hr, ptr %i.f, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store double 3.000000e-03, ptr %i.g, align 8, !tbaa !58
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.190, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  %i.hs = load i8, ptr %7, align 8, !tbaa !28, !range !29, !noundef !30
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bn, label %bb.ax

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ao ], [ %i.ga, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.cs

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %bb.bt

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load ptr, ptr %8, align 8, !tbaa !39
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.194, i64 noundef 18)
          to label %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit unwind label %bb.bh ; 0 uses

_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit:       ; preds = %bb.ay
  %i.hy = load ptr, ptr %8, align 8, !tbaa !39
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = fpext float %.0.i to double
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, double noundef %i.ia)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit68 unwind label %bb.bh ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit68:         ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit
  %i.ic = load ptr, ptr %8, align 8, !tbaa !39
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull @.str.195, i64 noundef 16)
          to label %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit unwind label %bb.bh ; 0 uses

_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit68
  %i.if = load ptr, ptr %8, align 8, !tbaa !39
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = fpext float %i.fg to double
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, double noundef %i.ih)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit69 unwind label %bb.bh ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit69:         ; preds = %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ij = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i70, label %_ZNK7testing15AssertionResult15failure_messageEv.exit71, label %bb.az

bb.az:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit69
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit71

_ZNK7testing15AssertionResult15failure_messageEv.exit71: ; preds = %bb.az, %_ZN7testing7MessagelsIfEERS0_RKT_.exit69
  %i.il = phi ptr [ %i.ik, %bb.az ], [ @.str.360, %_ZN7testing7MessagelsIfEERS0_RKT_.exit69 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 797, ptr noundef %i.il)
          to label %bb.ba unwind label %bb.bi

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit71
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.im = load ptr, ptr %8, align 8, !tbaa !39
  %.not.i.i.i72 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i72, label %_ZN7testing7MessageD2Ev.exit74, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.in = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i73 unwind label %bb.bf

.noexc.i.i73:                                     ; preds = %bb.bc
  br i1 %i.in, label %bb.bd, label %_ZN7testing7MessageD2Ev.exit74

bb.bd:                                            ; preds = %.noexc.i.i73
  %i.io = load ptr, ptr %8, align 8, !tbaa !39    ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZN7testing7MessageD2Ev.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(128) %i.io) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit74

bb.bf:                                            ; preds = %bb.bc
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #31
  unreachable

_ZN7testing7MessageD2Ev.exit74:                   ; preds = %bb.bb, %.noexc.i.i73, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.bn

bb.bg:                                            ; preds = %bb.ax
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bh:                                            ; preds = %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit68, %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit, %bb.ay
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit71
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ba
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn40 = phi { ptr, i32 } [ %i.iy, %bb.bj ], [ %i.ix, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.bk ], [ %i.iw, %bb.bh ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.bl ], [ %i.iv, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #30
  br label %bb.bt

bb.bn:                                            ; preds = %bb.au, %_ZN7testing7MessageD2Ev.exit74
  %i.iz = load ptr, ptr %i.t, align 8, !tbaa !31
  %.not.i.i.i75 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i75, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i76 unwind label %bb.br

.noexc.i.i76:                                     ; preds = %bb.bo
  br i1 %i.ja, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.noexc.i.i76
  %i.jb = load ptr, ptr %i.t, align 8, !tbaa !31  ; 4 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = load ptr, ptr %i.jb, align 8, !tbaa !36 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %bb.bq
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !42
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #32
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #31
  unreachable

bb.bs:                                            ; preds = %bb.bn, %.noexc.i.i76, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.jk = load float, ptr %i.a, align 4, !tbaa !22 ; 3 uses
  %i.jl = load float, ptr %i.b, align 4, !tbaa !22
  %i.jm = load float, ptr %i.c, align 4, !tbaa !22
  %i.jn = fneg float %.0.i.i                      ; 2 uses
  %i.jo = fdiv float %i.jn, %i.jk
  %i.jp = call noundef float @expf(float noundef %i.jo) #30
  %19 = fneg float %i.jl
  %20 = fdiv float %19, %i.jk                     ; 2 uses
  %21 = call noundef float @expf(float noundef %20) #30
  %22 = fneg float %i.jm
  %23 = fdiv float %22, %i.jk
  %i.jq = call noundef float @expf(float noundef %23) #30
  %i.jr = call noundef float @expf(float noundef %20) #30
  %i.js = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jq, i64 1
  %i.ju = fadd <2 x float> %i.jt, splat (float 1.000000e+00)
  %i.jv = fdiv <2 x float> splat (float 1.000000e+00), %i.ju
  %i.jw = insertelement <2 x float> poison, float %21, i64 0
  %i.jx = insertelement <2 x float> %i.jw, float %i.jr, i64 1
  %i.jy = fadd <2 x float> %i.jx, splat (float 1.000000e+00)
  %i.jz = fdiv <2 x float> splat (float 1.000000e+00), %i.jy
  %i.ka = fsub <2 x float> %i.jv, %i.jz           ; 2 uses
  %shift313 = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop314 = fdiv <2 x float> %i.ka, %shift313
  %i.kb = extractelement <2 x float> %foldExtExtBinop314, i64 0 ; 3 uses
  %i.kc = call noundef float @llvm.fabs.f32(float %i.kb) ; 2 uses
  %i.kd = fcmp olt float %i.kc, %.sroa.speculated.i.i
  %.sroa.speculated.i = select i1 %i.kd, float %i.kc, float %.sroa.speculated.i.i
  %i.ke = fpext float %.sroa.speculated.i to double
  %i.kf = fcmp olt double %i.ke, 1.000000e-02
  %i.kg = fsub float %.sroa.speculated.i.i, %i.kb ; 2 uses
  %i.kh = fmul float %i.kg, 2.000000e+00
  %i.ki = fadd float %.sroa.speculated.i.i, %i.kb
  %i.kj = fdiv float %i.kh, %i.ki
  %.sink.i = select i1 %i.kf, float %i.kg, float %i.kj
  %i.kk = call noundef float @llvm.fabs.f32(float %.sink.i)
  %i.kl = fpext float %i.kk to double
  %i.km = fcmp ule double %i.kl, 1.000000e-02     ; 2 uses
  %i.kn = zext i1 %i.km to i8
  store i8 %i.kn, ptr %10, align 8, !tbaa !28
  store ptr null, ptr %i.u, align 8, !tbaa !31
  br i1 %i.km, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.bu

bb.bt:                                            ; preds = %bb.bm, %bb.aw
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.bm ], [ %i.hu, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cs

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bv unwind label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  %i.ko = load ptr, ptr %11, align 8, !tbaa !39
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull @.str.235, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit unwind label %bb.cf ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit:        ; preds = %bb.bv
  %i.kr = load ptr, ptr %11, align 8, !tbaa !39
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = fpext float %.sroa.speculated.i.i to double
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, double noundef %i.kt)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit81 unwind label %bb.cf ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit81:         ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.kv = load ptr, ptr %11, align 8, !tbaa !39
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull @.str.236, i64 noundef 8)
          to label %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit unwind label %bb.cf ; 0 uses

_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit81
  %i.ky = load ptr, ptr %11, align 8, !tbaa !39
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = fpext float %.0.i.i to double
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, double noundef %i.la)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit82 unwind label %bb.cf ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit82:         ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit
  %i.lc = load ptr, ptr %11, align 8, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull @.str.237, i64 noundef 8)
          to label %bb.bw unwind label %bb.cf     ; 0 uses

bb.bw:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit82
  %i.lf = load float, ptr %i.a, align 4, !tbaa !22 ; 3 uses
  %i.lg = load float, ptr %i.b, align 4, !tbaa !22
  %i.lh = load float, ptr %i.c, align 4, !tbaa !22
  %i.li = fdiv float %i.jn, %i.lf
  %i.lj = call noundef float @expf(float noundef %i.li) #30
  %24 = fneg float %i.lg
  %25 = fdiv float %24, %i.lf                     ; 2 uses
  %26 = call noundef float @expf(float noundef %25) #30
  %27 = fneg float %i.lh
  %28 = fdiv float %27, %i.lf
  %i.lk = call noundef float @expf(float noundef %28) #30
  %i.ll = call noundef float @expf(float noundef %25) #30
  %i.lm = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.lk, i64 1
  %i.lo = fadd <2 x float> %i.ln, splat (float 1.000000e+00)
  %i.lp = fdiv <2 x float> splat (float 1.000000e+00), %i.lo
  %i.lq = insertelement <2 x float> poison, float %26, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.ll, i64 1
  %i.ls = fadd <2 x float> %i.lr, splat (float 1.000000e+00)
  %i.lt = fdiv <2 x float> splat (float 1.000000e+00), %i.ls
  %i.lu = fsub <2 x float> %i.lp, %i.lt           ; 2 uses
  %shift316 = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop317 = fdiv <2 x float> %i.lu, %shift316
  %i.lv = extractelement <2 x float> %foldExtExtBinop317, i64 0
  %i.lw = load ptr, ptr %11, align 8, !tbaa !39
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = fpext float %i.lv to double
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, double noundef %i.ly)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit84 unwind label %bb.cg ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit84:         ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60)
          to label %bb.bx unwind label %bb.ch

bb.bx:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit84
  %i.ma = load ptr, ptr %13, align 8, !tbaa !36
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 808, ptr noundef %i.ma)
          to label %bb.by unwind label %bb.ci

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bz unwind label %bb.cj

bb.bz:                                            ; preds = %bb.by
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  %i.mb = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.v
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bz
  %i.md = load i64, ptr %i.v, align 8, !tbaa !42
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.mf = load ptr, ptr %11, align 8, !tbaa !39
  %.not.i.i.i85 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i85, label %bb.cn, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.mg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i86 unwind label %bb.cd

.noexc.i.i86:                                     ; preds = %bb.ca
  br i1 %i.mg, label %bb.cb, label %bb.cn

bb.cb:                                            ; preds = %.noexc.i.i86
  %i.mh = load ptr, ptr %11, align 8, !tbaa !39   ; 3 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.cn, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mj = load ptr, ptr %i.mh, align 8, !tbaa !41
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(128) %i.mh) #30, !inline_history !0
  br label %bb.cn

bb.cd:                                            ; preds = %bb.ca
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #31
  unreachable

bb.ce:                                            ; preds = %bb.bu
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cf:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit82, %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit81, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit, %bb.bv
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cg:                                            ; preds = %bb.bw
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit84
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ci:                                            ; preds = %bb.bx
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.by
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn45 = phi { ptr, i32 } [ %i.mt, %bb.cj ], [ %i.ms, %bb.ci ] ; 2 uses
  %i.mu = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.v
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ck
  %i.mw = load i64, ptr %i.v, align 8, !tbaa !42
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ch
  %.pn45.pn = phi { ptr, i32 } [ %i.mr, %bb.ch ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn45, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.cf
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %i.mp, %bb.cf ], [ %.pn45.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.mq, %bb.cg ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #30
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ce
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn, %bb.cl ], [ %i.mo, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.cs

bb.cn:                                            ; preds = %bb.cc, %bb.cb, %.noexc.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %.pr = load ptr, ptr %i.u, align 8, !tbaa !31
  %.not.i.i.i91 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i91, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.my = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i92 unwind label %bb.cr

.noexc.i.i92:                                     ; preds = %bb.co
  br i1 %i.my, label %bb.cp, label %_ZN7testing15AssertionResultD2Ev.exit96

bb.cp:                                            ; preds = %.noexc.i.i92
  %i.mz = load ptr, ptr %i.u, align 8, !tbaa !31  ; 4 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !36 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.cq
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !42
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.nf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit96

bb.cr:                                            ; preds = %bb.co
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  call void @__clang_call_terminate(ptr %i.nh) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %bb.bs, %bb.cn, %.noexc.i.i92, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ni = add nuw nsw i32 %.sroa.0117.0280, 1     ; 2 uses
  %.not132 = icmp eq i32 %i.ni, 100
  br i1 %.not132, label %bb.j, label %.preheader

bb.cs:                                            ; preds = %bb.cm, %bb.bt, %bb.av
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %bb.cm ], [ %.pn.pn.pn.pn, %bb.av ], [ %.pn40.pn.pn.pn, %bb.bt ] ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !48
  %i.nj = load ptr, ptr %i.m, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i97, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i98, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nk = load i64, ptr %i.x, align 8, !tbaa !50
  %i.nl = shl i64 %i.nk, 2
  %i.nm = load ptr, ptr %i.w, align 8, !tbaa !51  ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !41
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, ptr noundef nonnull %i.nj, i64 noundef %i.nl, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i98 unwind label %bb.cu, !inline_history !2

bb.cu:                                            ; preds = %bb.ct
  %i.nq = landingpad { ptr, i32 }
end_hunk_2
