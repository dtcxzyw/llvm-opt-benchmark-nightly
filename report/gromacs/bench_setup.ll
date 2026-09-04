Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bench_setup?download=true
inline.NumInlined: 816
inline.NumDeleted: 572
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3gmxL19setupAndRunInstanceERKNS_15BenchmarkSystemERKNS_23NbnxmKernelBenchOptionsEb:bb.a
bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !219
  %.val.i.i = load i32, ptr %i.bj, align 8, !tbaa !36, !noalias !219
  %.val4.i.i = load i8, ptr %i.bk, align 1, !noalias !219
  invoke fastcc void @_ZN3gmxL16checkKernelSetupB5cxx11ERKNS_23NbnxmKernelBenchOptionsE(ptr dead_on_unwind noalias writable align 8 %5, i32 %.val.i.i, i8 %.val4.i.i)
          to label %.noexc.i unwind label %bb.ac

.noexc.i:                                         ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !175, !range !25, !noalias !219, !noundef !26
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL14getKernelSetupERKNS_23NbnxmKernelBenchOptionsEENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 142) #21
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc.i
  %.val5.i.i = load i32, ptr %i.bj, align 8, !tbaa !221, !noalias !219 ; 3 uses
  switch i32 %.val5.i.i, label %bb.m [
    i32 6, label %bb.n
    i32 1, label %bb.n
  ]

bb.k:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load i8, ptr %i.br, align 8, !tbaa !175, !range !25, !noalias !219, !noundef !26
  %i.bw = trunc nuw i8 %i.bv to i1
  store i8 0, ptr %i.br, align 8, !tbaa !175, !noalias !219
  br i1 %i.bw, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %5, align 8, !tbaa !28, !noalias !219 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !31, !noalias !219
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !219
  br label %.body.i

bb.m:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !50, !range !25, !noalias !219, !noundef !26
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = select i1 %i.ce, i64 4294967296, i64 8589934592
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.j
  %.sroa.3.0.i.i = phi i64 [ %i.cf, %bb.m ], [ 4294967296, %bb.j ], [ 4294967296, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !219
  %.sroa.09.0.insert.ext.i.i = zext i32 %.val5.i.i to i64
  %.sroa.09.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.i.i, %.sroa.09.0.insert.ext.i.i
  store i64 %.sroa.09.0.insert.insert.i.i, ptr %8, align 8, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !219
  %i.cg = load float, ptr %i.at, align 8, !tbaa !24, !noalias !219
  invoke void @_ZN3gmx14PairlistParamsC1ENS_15NbnxmKernelTypeESt8optionalINS_12PairlistTypeEEbfb(ptr noundef nonnull align 4 dereferenceable(36) %9, i32 noundef %.val5.i.i, i64 0, i1 noundef zeroext false, float noundef %i.cg, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !219
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ch = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc55.i unwind label %bb.ae ; 3 uses

.noexc55.i:                                       ; preds = %bb.o
  invoke void @_ZN3gmx12PairlistSetsC1ERKNS_14PairlistParamsEbiNS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(120) %i.ch, ptr noundef nonnull align 4 dereferenceable(36) %9, i1 noundef zeroext false, i32 noundef 0, i32 noundef %i.bg)
          to label %bb.q unwind label %bb.p, !noalias !222

bb.p:                                             ; preds = %.noexc55.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 120) #22, !noalias !222
  br label %.body56.i

bb.q:                                             ; preds = %.noexc55.i
  store ptr %i.ch, ptr %10, align 8, !tbaa !177, !alias.scope !222, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !219
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.cj = invoke noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #23
          to label %.noexc58.i unwind label %bb.af ; 3 uses

.noexc58.i:                                       ; preds = %bb.q
  %i.ck = load i32, ptr %9, align 4, !tbaa !225, !noalias !226
  invoke void @_ZN3gmx10PairSearchC1E7PbcTypebPKNS_11BasicVectorIiEEPKNS_11DomdecZonesENS_12PairlistTypeEbbiNS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(336) %i.cj, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef null, i32 noundef %i.ck, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %i.bi, i32 noundef %i.bg)
          to label %bb.s unwind label %bb.r, !noalias !223

bb.r:                                             ; preds = %.noexc58.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 336) #22, !noalias !223
  br label %.body59.i

bb.s:                                             ; preds = %.noexc58.i
  store ptr %i.cj, ptr %11, align 8, !tbaa !179, !alias.scope !223, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !219
  invoke void @_ZN3gmx8MDLoggerC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !35, !noalias !219 ; 2 uses
  %switch.i.i = icmp ult i32 %i.cn, 3
  br i1 %switch.i.i, label %_ZN3gmxL24convertLJCombinationRuleENS_22NbnxmBenchMarkCombRuleE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL24convertLJCombinationRuleENS_22NbnxmBenchMarkCombRuleEENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 217) #21
          to label %.noexc61.i unwind label %bb.ah

.noexc61.i:                                       ; preds = %bb.u
  unreachable

_ZN3gmxL24convertLJCombinationRuleENS_22NbnxmBenchMarkCombRuleE.exit.i: ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !219
  %i.co = invoke noalias noundef nonnull dereferenceable(656) ptr @_Znwm(i64 noundef 656) #23
          to label %.noexc62.i unwind label %bb.ai ; 3 uses

.noexc62.i:                                       ; preds = %_ZN3gmxL24convertLJCombinationRuleENS_22NbnxmBenchMarkCombRuleE.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i32, ptr %8, align 8, !tbaa !229, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !230
  store i32 %i.cn, ptr %3, align 4, !tbaa !31, !noalias !230
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 1, ptr %i.cr, align 4, !tbaa !232, !noalias !230
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !180, !noalias !230 ; 3 uses
  store ptr %i.cs, ptr %4, align 8, !tbaa !234, !noalias !230
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !235, !noalias !230
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cs to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !234, !noalias !230
  invoke void @_ZN3gmx16nbnxn_atomdata_tC1ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii(ptr noundef nonnull align 8 dereferenceable(656) %i.co, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull byval(%"class.gmx::ArrayRef.265") align 8 %4, i1 noundef zeroext true, i32 noundef 1, i32 noundef %i.bi)
          to label %bb.w unwind label %bb.v, !noalias !227

bb.v:                                             ; preds = %.noexc62.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !230
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 656) #22, !noalias !227
  br label %.body63.i

bb.w:                                             ; preds = %.noexc62.i
  store ptr %i.co, ptr %12, align 8, !tbaa !182, !alias.scope !227, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !219
  store ptr null, ptr %i.a, align 8, !tbaa !237, !noalias !219
  invoke void @_ZSt11make_uniqueIN3gmx18nonbonded_verlet_tEJSt10unique_ptrINS0_12PairlistSetsESt14default_deleteIS3_EES2_INS0_10PairSearchES4_IS7_EES2_INS0_16nbnxn_atomdata_tES4_ISA_EERNS0_16NbnxmKernelSetupEDnEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.44") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %14, i8 0, i64 928, i1 false), !noalias !219
  %i.db = load float, ptr %i.m, align 4, !tbaa !23, !noalias !219 ; 2 uses
  %i.dc = fcmp une float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = load float, ptr %i.p, align 8, !tbaa !23, !noalias !219 ; 2 uses
  %i.de = fcmp une float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load float, ptr %i.s, align 4, !tbaa !23, !noalias !219 ; 3 uses
  %i.dg = fcmp une float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL26setupNbnxmForBenchInstanceERKNS_23NbnxmKernelBenchOptionsERKNS_15BenchmarkSystemEENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 261) #21
          to label %.noexc65.i unwind label %bb.ak

.noexc65.i:                                       ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dh = load float, ptr %i.k, align 8, !tbaa !23, !noalias !219 ; 2 uses
  %i.di = load float, ptr %i.n, align 8, !tbaa !23, !noalias !219 ; 3 uses
  %i.dj = load float, ptr %i.q, align 8, !tbaa !23, !noalias !219 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !34, !range !25, !noalias !219, !noundef !26
  %i.dm = trunc nuw i8 %i.dl to i1                ; 2 uses
  %.sroa.082.0.in.v.i = select i1 %i.dm, i64 104, i64 80
  %.sroa.082.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.082.0.in.v.i
  %.sroa.8.0.in.in.v.i = select i1 %i.dm, i64 112, i64 88
  %.sroa.8.0.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.8.0.in.in.v.i
  %.sroa.082.0.i = load ptr, ptr %.sroa.082.0.in.i, align 8, !tbaa !183, !noalias !219 ; 4 uses
  %.sroa.8.0.in.i = load ptr, ptr %.sroa.8.0.in.in.i, align 8, !tbaa !238, !noalias !219
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !46, !noalias !219
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !47, !noalias !219 ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = sdiv exact i64 %i.dr, 12                ; 3 uses
  %i.dt = load float, ptr %i.u, align 4, !tbaa !23, !noalias !219 ; 2 uses
  %i.du = load float, ptr %i.aa, align 4, !tbaa !23, !noalias !219 ; 2 uses
  %i.dv = load float, ptr %i.ac, align 8, !tbaa !23, !noalias !219
  %i.dw = load ptr, ptr %22, align 8, !tbaa !184, !alias.scope !219
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !219
  store <2 x float> zeroinitializer, ptr %15, align 8, !tbaa !23, !noalias !219
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float 0.000000e+00, ptr %i.dx, align 8, !tbaa !23, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !219
  store float %i.dh, ptr %16, align 4, !tbaa !23, !noalias !219
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %i.di, ptr %i.dy, align 4, !tbaa !23, !noalias !219
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.dj, ptr %i.dz, align 4, !tbaa !23, !noalias !219
  %i.ea = trunc i64 %i.ds to i32                  ; 2 uses
  %.not.i.i = icmp slt i32 %i.ea, 0
  br i1 %.not.i.i, label %bb.al, label %bb.am

bb.ac:                                            ; preds = %bb.h
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.n
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ae:                                            ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i

bb.af:                                            ; preds = %bb.q
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

bb.ag:                                            ; preds = %bb.s
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

bb.ah:                                            ; preds = %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

bb.ai:                                            ; preds = %_ZN3gmxL24convertLJCombinationRuleENS_22NbnxmBenchMarkCombRuleE.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

.body63.i:                                        ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.v
  %.pn.pn.i = phi { ptr, i32 } [ %i.ef, %bb.ag ], [ %i.eg, %bb.ah ], [ %i.eh, %bb.ai ], [ %i.da, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !219
  br label %bb.ay

bb.aj:                                            ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !219
  br label %bb.ax

bb.ak:                                            ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.al:                                            ; preds = %bb.ab
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.60, i32 noundef 111) #21
          to label %.noexc66.i unwind label %bb.au

.noexc66.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ab
  %.sroa.8.0.i = ptrtoint ptr %.sroa.8.0.in.i to i64
  %i.ek = uitofp i64 %i.ds to float
  %i.el = fneg float %i.dv                        ; 2 uses
  %i.em = fmul float %i.di, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.du, float %i.dt, float %i.em)
  %i.eo = fneg float %i.dt
  %i.ep = fmul float %i.df, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.di, float %i.dj, float %i.ep)
  %i.er = fmul float %i.df, %i.el
  %i.es = call float @llvm.fmuladd.f32(float %i.du, float %i.dj, float %i.er)
  %i.et = fneg float %i.es
  %i.eu = fmul float %i.db, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.dh, float %i.eq, float %i.eu)
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.en, float %i.ev)
  %i.ex = fdiv float %i.ek, %i.ew
  store ptr %.sroa.082.0.i, ptr %17, align 8, !tbaa !240, !noalias !219
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ez = ptrtoint ptr %.sroa.082.0.i to i64
  %i.fa = sub i64 %.sroa.8.0.i, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.082.0.i, i64 %i.fa ; 2 uses
  store ptr %i.fb, ptr %i.ey, align 8, !tbaa !240, !noalias !219
  store ptr %i.do, ptr %18, align 8, !tbaa !242, !noalias !219
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !242, !noalias !219
  %.sroa.278.0.insert.ext.i = shl i64 %i.ds, 32
  invoke void @_ZN3gmx18nonbonded_verlet_t14putAtomsOnGridEPA3_KfiRKNS_11BasicVectorIfEES7_PKNS_15UpdateGroupsCogENS_5RangeIiEEifNS_8ArrayRefIKiEENSD_IS6_EEPSE_(ptr noundef nonnull align 8 dereferenceable(65) %i.dw, ptr noundef nonnull %i.k, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef null, i64 %.sroa.278.0.insert.ext.i, i32 noundef %i.ea, float noundef %i.ex, ptr noundef nonnull byval(%"class.gmx::ArrayRef.262") align 8 %17, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %18, ptr noundef null)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !219
  %i.fe = load ptr, ptr %22, align 8, !tbaa !184, !alias.scope !219
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNK3gmx18nonbonded_verlet_t17constructPairlistENS_19InteractionLocalityERKNS_11ListOfListsIiEEblP6t_nrnb(ptr noundef nonnull align 8 dereferenceable(65) %i.fe, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %i.ff, i1 noundef zeroext false, i64 noundef 0, ptr noundef nonnull %14)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.fg = load ptr, ptr %22, align 8, !tbaa !184, !alias.scope !219
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !183, !noalias !219 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !238, !noalias !219
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !180, !noalias !219 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !235, !noalias !219
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fv
  store ptr %.sroa.082.0.i, ptr %19, align 8, !tbaa !240, !noalias !219
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.fb, ptr %i.fx, align 8, !tbaa !240, !noalias !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !noalias !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false), !noalias !219
  invoke void @_ZNK3gmx18nonbonded_verlet_t17setAtomPropertiesENS_8ArrayRefIKiEENS1_IKfEES3_S3_S5_(ptr noundef nonnull align 8 dereferenceable(65) %i.fg, ptr %i.fi, ptr %i.fo, ptr %i.fq, ptr %i.fw, ptr noundef nonnull byval(%"class.gmx::ArrayRef.262") align 8 %19, ptr noundef nonnull byval(%"class.gmx::ArrayRef.262") align 8 %20, ptr noundef nonnull byval(%"class.gmx::ArrayRef.265") align 8 %21)
          to label %bb.ap unwind label %bb.av

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !219
  %i.fy = load ptr, ptr %12, align 8, !tbaa !182, !noalias !219 ; 3 uses
  %.not.i67.i = icmp eq ptr %i.fy, null
  br i1 %.not.i67.i, label %_ZNSt10unique_ptrIN3gmx16nbnxn_atomdata_tESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN3gmx16nbnxn_atomdata_tEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN3gmx16nbnxn_atomdata_tEEclEPS1_.exit.i.i: ; preds = %bb.ap
  call void @_ZN3gmx16nbnxn_atomdata_tD1Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %i.fy) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef 656) #22
  br label %_ZNSt10unique_ptrIN3gmx16nbnxn_atomdata_tESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN3gmx16nbnxn_atomdata_tESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN3gmx16nbnxn_atomdata_tEEclEPS1_.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !219
  %i.fz = load ptr, ptr %11, align 8, !tbaa !179, !noalias !219 ; 6 uses
  %.not.i68.i = icmp eq ptr %i.fz, null
  br i1 %.not.i68.i, label %_ZNSt10unique_ptrIN3gmx10PairSearchESt14default_deleteIS1_EED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN3gmx16nbnxn_atomdata_tESt14default_deleteIS1_EED2Ev.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 232 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !187 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.gb, %i.gd
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gb, %bb.aq ] ; 2 uses
  call void @_ZN3gmx14PairsearchWorkD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i.i.i.i) #20
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.gd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.aq
  %i.gf = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.gb, %bb.aq ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PairSearchEEclEPS1_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 248
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !189
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gk) #22
  br label %_ZNKSt14default_deleteIN3gmx10PairSearchEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN3gmx10PairSearchEEclEPS1_.exit.i.i: ; preds = %bb.ar, %_ZSt8_DestroyIPN3gmx14PairsearchWorkES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZN3gmx7GridSetD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(336) %i.fz) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 336) #22
  br label %_ZNSt10unique_ptrIN3gmx10PairSearchESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN3gmx10PairSearchESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN3gmx10PairSearchEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN3gmx16nbnxn_atomdata_tESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !219
  %i.gl = load ptr, ptr %10, align 8, !tbaa !177, !noalias !219 ; 2 uses
  %.not.i69.i = icmp eq ptr %i.gl, null
  br i1 %.not.i69.i, label %_ZNSt10unique_ptrIN3gmx12PairlistSetsESt14default_deleteIS1_EED2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN3gmx10PairSearchESt14default_deleteIS1_EED2Ev.exit.i
  call void @_ZNKSt14default_deleteIN3gmx12PairlistSetsEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.gl)
  br label %_ZNSt10unique_ptrIN3gmx12PairlistSetsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN3gmx12PairlistSetsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.as, %_ZNSt10unique_ptrIN3gmx10PairSearchESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !219
  %i.gm = load i8, ptr %i.bl, align 8, !tbaa !175, !range !25, !noalias !219, !noundef !26
  %i.gn = trunc nuw i8 %i.gm to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !175, !noalias !219
  br i1 %i.gn, label %bb.at, label %_ZN3gmxL26setupNbnxmForBenchInstanceERKNS_23NbnxmKernelBenchOptionsERKNS_15BenchmarkSystemE.exit

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN3gmx12PairlistSetsESt14default_deleteIS1_EED2Ev.exit.i
  %i.go = load ptr, ptr %6, align 8, !tbaa !28, !noalias !219 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN3gmxL26setupNbnxmForBenchInstanceERKNS_23NbnxmKernelBenchOptionsERKNS_15BenchmarkSystemE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !31, !noalias !219
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #22
  br label %_ZN3gmxL26setupNbnxmForBenchInstanceERKNS_23NbnxmKernelBenchOptionsERKNS_15BenchmarkSystemE.exit

bb.au:                                            ; preds = %bb.am, %bb.al
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !219
  br label %bb.aw

bb.av:                                            ; preds = %bb.ao, %bb.an
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.ak
  %.pn42.pn.i = phi { ptr, i32 } [ %i.ej, %bb.ak ], [ %i.gu, %bb.av ], [ %i.gt, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !219
  call void @_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.aj
  %.pn42.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.i, %bb.aw ], [ %i.ei, %bb.aj ]
  call void @_ZNSt10unique_ptrIN3gmx16nbnxn_atomdata_tESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.body63.i
  %.pn42.pn.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.pn.i, %bb.ax ], [ %.pn.pn.i, %.body63.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !219
  call void @_ZNSt10unique_ptrIN3gmx10PairSearchESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  br label %.body59.i

.body59.i:                                        ; preds = %bb.ay, %bb.af, %bb.r
  %.pn42.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.pn.pn.i, %bb.ay ], [ %i.ee, %bb.af ], [ %i.cl, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !219
  %i.gv = load ptr, ptr %10, align 8, !tbaa !177, !noalias !219 ; 2 uses
  %.not.i70.i = icmp eq ptr %i.gv, null
  br i1 %.not.i70.i, label %.body56.i, label %bb.az

bb.az:                                            ; preds = %.body59.i
  call void @_ZNKSt14default_deleteIN3gmx12PairlistSetsEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.gv)
  br label %.body56.i

.body56.i:                                        ; preds = %bb.az, %.body59.i, %bb.ae, %bb.p
  %.pn42.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ci, %bb.p ], [ %i.ed, %bb.ae ], [ %.pn42.pn.pn.pn.pn.i, %.body59.i ], [ %.pn42.pn.pn.pn.pn.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !219
  br label %bb.ba

bb.ba:                                            ; preds = %.body56.i, %bb.ad
  %.pn42.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn.i, %.body56.i ], [ %i.ec, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !219
  br label %.body.i

.body.i:                                          ; preds = %bb.ba, %bb.ac, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %.pn42.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn.pn.i, %bb.ba ], [ %i.eb, %bb.ac ], [ %i.bu, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !219
  br label %bb.bb

bb.bb:                                            ; preds = %.body.i, %bb.g
  %.pn51.pn.i = phi { ptr, i32 } [ %.pn51.i, %bb.g ], [ %.pn42.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ]
  %i.gw = load i8, ptr %i.bl, align 8, !tbaa !175, !range !25, !noalias !219, !noundef !26
  %i.gx = trunc nuw i8 %i.gw to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !175, !noalias !219
  br i1 %i.gx, label %bb.bc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i

bb.bc:                                            ; preds = %bb.bb
  %i.gy = load ptr, ptr %6, align 8, !tbaa !28, !noalias !219 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72.i: ; preds = %bb.bc
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !31, !noalias !219
end_hunk_0
