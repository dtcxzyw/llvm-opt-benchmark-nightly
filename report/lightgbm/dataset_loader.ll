Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset_loader?download=true
inline.NumInlined: 4751
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8LightGBM13DatasetLoader25ExtractFeaturesFromMemoryEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined:bb.a
  %i.ob = getelementptr inbounds [8 x i8], ptr %.sroa.16142.0, i64 %i.oa
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.ny) #35
  br label %.body

.body:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %bb.br, %bb.bs, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.bn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.pn.pn, %bb.bs ], [ %.pn.pn, %bb.br ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1
  %.358 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.oc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.od = icmp eq i32 %.3, %i.oc
  %i.oe = call ptr @__cxa_begin_catch(ptr %.358) #20 ; 2 uses
  br i1 %i.od, label %bb.bt, label %.invoke284

bb.bt:                                            ; preds = %.body
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !133
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = call noundef ptr %i.oh(ptr noundef nonnull align 8 dereferenceable(8) %i.oe) #20
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.oi)
          to label %.invoke284 unwind label %.loopexit169

.invoke284:                                       ; preds = %.body, %bb.bt
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.invoke279 unwind label %.loopexit169

.invoke279:                                       ; preds = %.invoke284
  invoke void @__cxa_end_catch()
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %.loopexit169

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.invoke279, %bb.bq, %_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.oj = load i32, ptr %i.c, align 4, !tbaa !134
  %i.ok = sext i32 %i.oj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ok
  br i1 %.not.not, label %bb.h, label %._crit_edge193

._crit_edge193:                                   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.g
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.z)
  %i.ol = load ptr, ptr %9, align 8, !tbaa !238   ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge193
  %i.om = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !269
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = ptrtoint ptr %i.ol to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.oq) #35
  br label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit:        ; preds = %._crit_edge193, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.not.i.i.i83 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.p) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.a
  ret void

.loopexit169:                                     ; preds = %.invoke284, %.invoke279, %bb.bt
  %lpad.loopexit171 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bx

.loopexit.split-lp170:                            ; preds = %.noexc.i.i, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp170, %.loopexit169
  %lpad.phi173 = phi { ptr, i32 } [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp170 ]
  %i.or = extractvalue { ptr, i32 } %lpad.phi173, 0
  call void @__clang_call_terminate(ptr %i.or) #34
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM13DatasetLoader25ExtractFeaturesFromMemoryEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined.95(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(48) %9) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.std::vector.270", align 8  ; 10 uses
  store i64 %5, ptr %i.b, align 8, !tbaa !111
  %i.g = load ptr, ptr %2, align 8, !tbaa !184
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !213  ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %bb.ce

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.j, ptr %i.d, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 1, ptr %i.e, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 0, ptr %i.f, align 4, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276  ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !273    ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %.noexc80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !135

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %.loopexit.split-lp193

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #37
          to label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge unwind label %.loopexit.split-lp193

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge: ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %8, align 8, !tbaa !308   ; 3 uses
  %.pre247 = load ptr, ptr %i.l, align 8, !tbaa !308 ; 2 uses
  %.pre255 = ptrtoint ptr %.pre247 to i64
  %.pre256 = ptrtoint ptr %.pre to i64
  %i.t = icmp ne ptr %.pre247, %.pre
  br label %.noexc80

.noexc80:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge, %bb.b
  %.pre-phi257 = phi i64 [ %.pre256, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge ], [ %i.p, %bb.b ]
  %.pre-phi = phi i64 [ %.pre255, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge ], [ %i.o, %bb.b ]
  %.not223 = phi i1 [ %i.t, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge ], [ false, %bb.b ]
  %i.u = phi ptr [ %.pre, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge ], [ %i.n, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.s, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc80_crit_edge ], [ null, %bb.b ] ; 8 uses
  %i.w = sub i64 %.pre-phi, %.pre-phi257          ; 4 uses
  %i.x = icmp sgt i64 %i.w, 4
  br i1 %i.x, label %bb.d, label %bb.e, !prof !368

bb.d:                                             ; preds = %.noexc80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.u, i64 %i.w, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc80
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load float, ptr %i.u, align 4, !tbaa !277
  store float %i.z, ptr %i.v, align 4, !tbaa !277
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.aa = load i32, ptr %0, align 4, !tbaa !134   ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %i.aa, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !134
  %i.ac = call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.j) ; 2 uses
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !134
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !134 ; 2 uses
  %.not210 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not210, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.al = ashr exact i64 %i.w, 2                  ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.al, i64 1) ; 3 uses
  %i.am = sext i32 %i.ad to i64
  %xtraiter361 = and i64 %umax, 1
  %i.an = icmp ult i64 %i.al, 2
  %unroll_iter = and i64 %umax, -2
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  %lcmp.mod363 = trunc i64 %umax to i1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph219, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %indvars.iv244 = phi i64 [ %i.am, %.lr.ph219 ], [ %indvars.iv.next245, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 14 uses
  %i.ao = shl nsw i64 %indvars.iv244, 3
  %i.ap = call i32 @omp_get_thread_num()          ; 2 uses
  %i.aq = load ptr, ptr %10, align 8, !tbaa !238  ; 2 uses
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !239
  %.not.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.ae, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit:    ; preds = %bb.h, %_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.as = load ptr, ptr %3, align 8, !tbaa !279   ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !112
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %indvars.iv244
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !107
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !133
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.av, ptr noundef nonnull %10, ptr noundef nonnull %i.b)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit
  %i.az = load i32, ptr %i.af, align 8, !tbaa !92 ; 3 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.az, 0
  br i1 %i.bb, label %bb.j, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc82 unwind label %bb.q

.noexc82:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i81 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i81, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bc = shl nuw nsw i64 %i.ba, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #37
          to label %.noexc83 unwind label %bb.q   ; 5 uses

.noexc83:                                         ; preds = %bb.k
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !252
  %i.bf = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc83
  %i.bh = getelementptr i8, ptr %i.bd, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !252
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc83, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.be, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.be, %.noexc83 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0161.0 = phi ptr [ %i.bd, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bd, %.noexc83 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %.sroa.0161.0340 = ptrtoaddr ptr %.sroa.0161.0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0161.0, ptr %i.a, align 8, !tbaa !244
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !80
  %.not.i.i84 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i84, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #36
          to label %.noexc85 unwind label %bb.r

.noexc85:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !392
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvRKSt6vectorISt4pairIidESaIS2_EEPdEEclES6_S7_.exit unwind label %bb.r, !inline_history !26

_ZNKSt8functionIFvRKSt6vectorISt4pairIidESaIS2_EEPdEEclES6_S7_.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bk = load i32, ptr %i.af, align 8, !tbaa !92 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %.pre248 = load ptr, ptr %2, align 8, !tbaa !184 ; 2 uses
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNKSt8functionIFvRKSt6vectorISt4pairIidESaIS2_EEPdEEclES6_S7_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre248, i64 88
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !213 ; 2 uses
  %i.bo = load ptr, ptr %7, align 8, !tbaa !246   ; 2 uses
  %i.bp = sext i32 %i.bn to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bk to i64   ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv244 ; 6 uses
  %min.iters.check = icmp ugt i32 %i.bk, 7
  %ident.check.not = icmp eq i32 %i.bn, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bq = ptrtoaddr ptr %i.bo to i64
  %i.br = add i64 %i.ao, %i.bq
  %i.bs = sub i64 %.sroa.0161.0340, %i.br
  %diff.check = icmp ugt i64 %i.bs, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0161.0, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !252
  %wide.load341 = load <2 x double>, ptr %i.bu, align 8, !tbaa !252
  %i.bv = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store <2 x double> %wide.load, ptr %i.bv, align 8, !tbaa !252
  store <2 x double> %wide.load341, ptr %i.bw, align 8, !tbaa !252
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0161.0, i64 %indvars.iv.prol
  %i.bz = load double, ptr %i.by, align 8, !tbaa !252
  %i.ca = mul nsw i64 %indvars.iv.prol, %i.bp
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ca
  store double %i.bz, ptr %gep.prol, align 8, !tbaa !252
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !862

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNKSt8functionIFvRKSt6vectorISt4pairIidESaIS2_EEPdEEclES6_S7_.exit
  %i.cd = load double, ptr %i.b, align 8, !tbaa !252
  %i.ce = fptrunc double %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre248, i64 144
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !273
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv244
  store float %i.ce, ptr %i.ch, align 4, !tbaa !277
  %i.ci = load ptr, ptr %4, align 8, !tbaa !112
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %indvars.iv244 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !105
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !107
  store i8 0, ptr %i.cl, align 1, !tbaa !106
  %i.cm = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !280 ; 2 uses
  %.not.i.i87 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i87, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.cp = sext i32 %i.co to i64
  %i.cq = add nsw i64 %i.cp, 63                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = and i64 %i.cr, 2305843009213693944
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #37
          to label %bb.o unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.cu = lshr i64 %i.cq, 6                       ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %.idx.i = shl nuw nsw i64 %i.cu, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ct, i8 0, i64 %.idx.i, i1 false)
  %.pre251.pre = load ptr, ptr %2, align 8, !tbaa !184
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit
  %i.cx = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit101

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.cy = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN8LightGBM13DatasetLoader25ExtractFeaturesFromMemoryEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined.95:bb.a
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.nr = load i32, ptr %i.ak, align 4, !tbaa !98
  %i.ns = icmp eq i32 %i.ie, %i.nr
  br i1 %i.ns, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0147.0205, i64 8
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !250
  %i.nv = fptosi double %i.nu to i32
  %i.nw = getelementptr inbounds nuw i8, ptr %i.id, i64 328
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !215
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv244
  store i32 %i.nv, ptr %i.ny, align 4, !tbaa !134
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bn, %bb.bl, %_ZN8LightGBM12FeatureGroup8PushDataEiiid.exit, %.lr.ph206
  %i.nz = phi ptr [ %i.id, %bb.bo ], [ %i.id, %bb.bp ], [ %i.id, %bb.bn ], [ %i.nc, %bb.bl ], [ %i.nc, %_ZN8LightGBM12FeatureGroup8PushDataEiiid.exit ], [ %i.id, %.lr.ph206 ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0147.0205, i64 16 ; 2 uses
  %.not173 = icmp eq ptr %i.oa, %i.dn
  br i1 %.not173, label %._crit_edge207, label %.lr.ph206

_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit.loopexit: ; preds = %_ZN8LightGBM12FeatureGroup8PushDataEiiid.exit.i
  %.pre253 = load ptr, ptr %2, align 8, !tbaa !184
  br label %_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit

_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit: ; preds = %_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit.loopexit, %bb.s, %._crit_edge207
  %i.ob = phi ptr [ %.pre253, %_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit.loopexit ], [ %i.dp, %bb.s ], [ %i.dp, %._crit_edge207 ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 712
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !209, !range !99, !noundef !100
  %i.oe = trunc nuw i8 %i.od to i1
  %brmerge.not = and i1 %.not223, %i.oe
  br i1 %brmerge.not, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 720
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !215 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 680 ; 3 uses
  br i1 %i.an, label %.epil.preheader, label %.lr.ph209.new

.loopexit185:                                     ; preds = %.invoke314
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.by

.loopexit.split-lp:                               ; preds = %.loopexit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.by

.lr.ph209.new:                                    ; preds = %.lr.ph209, %bb.bu
  %.0208 = phi i64 [ %i.pd, %bb.bu ], [ 0, %.lr.ph209 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.bu ], [ 0, %.lr.ph209 ]
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.0208
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !134 ; 2 uses
  %i.ok = icmp sgt i32 %i.oj, -1
  br i1 %i.ok, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph209.new
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0208
  %i.om = load float, ptr %i.ol, align 4, !tbaa !277
  %i.on = zext nneg i32 %i.oj to i64
  %i.oo = load ptr, ptr %i.oh, align 8, !tbaa !271
  %i.op = getelementptr inbounds nuw [24 x i8], ptr %i.oo, i64 %i.on
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !273
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv244
  store float %i.om, ptr %i.or, align 4, !tbaa !277
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph209.new
  %i.os = or disjoint i64 %.0208, 1               ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !134 ; 2 uses
  %i.ov = icmp sgt i32 %i.ou, -1
  br i1 %i.ov, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.os
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !277
  %i.oy = zext nneg i32 %i.ou to i64
  %i.oz = load ptr, ptr %i.oh, align 8, !tbaa !271
  %i.pa = getelementptr inbounds nuw [24 x i8], ptr %i.oz, i64 %i.oy
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !273
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv244
  store float %i.ox, ptr %i.pc, align 4, !tbaa !277
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.pd = add nuw i64 %.0208, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph209.new, !llvm.loop !864

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bu
  br i1 %lcmp.mod362.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph209
  %.0208.epil.init = phi i64 [ 0, %.lr.ph209 ], [ %i.pd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod363)
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.0208.epil.init
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !134 ; 2 uses
  %i.pg = icmp sgt i32 %i.pf, -1
  br i1 %i.pg, label %bb.bv, label %.loopexit

bb.bv:                                            ; preds = %.epil.preheader
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0208.epil.init
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !277
  %i.pj = zext nneg i32 %i.pf to i64
  %i.pk = load ptr, ptr %i.oh, align 8, !tbaa !271
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.pk, i64 %i.pj
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !273
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv244
  store float %i.pi, ptr %i.pn, align 4, !tbaa !277
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bv, %.epil.preheader, %_ZN8LightGBM7Dataset12FinishOneRowEiiRKSt6vectorIbSaIbEE.exit
  %.not.i.i96 = icmp eq ptr %.sroa.0151.0, null
  br i1 %.not.i.i96, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  %i.po = ptrtoint ptr %.sroa.16157.0 to i64
  %i.pp = ptrtoint ptr %.sroa.0151.0 to i64
  %i.pq = sub i64 %i.po, %i.pp                    ; 2 uses
  %i.pr = ashr exact i64 %i.pq, 3
  %i.ps = sub nsw i64 0, %i.pr
  %i.pt = getelementptr inbounds [8 x i8], ptr %.sroa.16157.0, i64 %i.ps
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pq) #35
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit, %bb.bw
  %.not.i.i.i97 = icmp eq ptr %.sroa.0161.0, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.pu = ptrtoint ptr %.sroa.11.0 to i64
  %i.pv = ptrtoint ptr %.sroa.0161.0 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0, i64 noundef %i.pw) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.by:                                            ; preds = %.loopexit185, %.loopexit.split-lp, %.loopexit187, %.loopexit.split-lp188
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ], [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit, %.loopexit185 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i98 = icmp eq ptr %.sroa.0151.0, null
  br i1 %.not.i.i98, label %.body, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.px = ptrtoint ptr %.sroa.16157.0 to i64
  %i.py = ptrtoint ptr %.sroa.0151.0 to i64
  %i.pz = sub i64 %i.px, %i.py                    ; 2 uses
  %i.qa = ashr exact i64 %i.pz, 3
  %i.qb = sub nsw i64 0, %i.qa
  %i.qc = getelementptr inbounds [8 x i8], ptr %.sroa.16157.0, i64 %i.qb
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.pz) #35
  br label %.body

.body:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %bb.by, %bb.bz, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %i.cw, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.pn.pn, %bb.bz ], [ %.pn.pn, %bb.by ] ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %.sroa.0161.0, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIdSaIdEED2Ev.exit101, label %bb.ca

bb.ca:                                            ; preds = %.body
  %i.qd = ptrtoint ptr %.sroa.11.0 to i64
  %i.qe = ptrtoint ptr %.sroa.0161.0 to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0, i64 noundef %i.qf) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit101

_ZNSt6vectorIdSaIdEED2Ev.exit101:                 ; preds = %bb.q, %.body, %bb.ca, %bb.p
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.p ], [ %i.cy, %bb.q ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ca ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn, 1
  %.567 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn, 0
  %i.qg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.qh = icmp eq i32 %.5, %i.qg
  %i.qi = call ptr @__cxa_begin_catch(ptr %.567) #20 ; 2 uses
  br i1 %i.qh, label %bb.cb, label %.invoke320

bb.cb:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit101
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !133
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = call noundef ptr %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %i.qi) #20
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.qm)
          to label %.invoke320 unwind label %.loopexit192

.invoke320:                                       ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit101, %bb.cb
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.invoke315 unwind label %.loopexit192

.invoke315:                                       ; preds = %.invoke320
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %.loopexit192

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.invoke315, %bb.bx, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, 1
  %i.qn = load i32, ptr %i.d, align 4, !tbaa !134
  %i.qo = sext i32 %i.qn to i64
  %.not.not = icmp slt i64 %indvars.iv244, %i.qo
  br i1 %.not.not, label %bb.h, label %._crit_edge220

._crit_edge220:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.g
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.aa)
  %i.qp = load ptr, ptr %10, align 8, !tbaa !238  ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge220
  %i.qq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !269
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.qu) #35
  br label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit:        ; preds = %._crit_edge220, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.not.i.i.i103 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.q) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.a
  ret void

.loopexit192:                                     ; preds = %.invoke320, %.invoke315, %bb.cb
  %lpad.loopexit194 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cf

.loopexit.split-lp193:                            ; preds = %.noexc.i.i, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp193, %.loopexit192
  %lpad.phi196 = phi { ptr, i32 } [ %lpad.loopexit194, %.loopexit192 ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp193 ]
  %i.qv = extractvalue { ptr, i32 } %lpad.phi196, 0
  call void @__clang_call_terminate(ptr %i.qv) #34
  unreachable
}

declare void @_ZN8LightGBM8Metadata12SetInitScoreEPKdi(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @_ZN8LightGBM7Dataset10FinishLoadEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFviRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEZN8LightGBM13DatasetLoader23ExtractFeaturesFromFileEPKcPKNSC_6ParserERKS0_IiSaIiEEPNSC_7DatasetEE3$_0E9_M_invokeERKSt9_Any_dataOiSA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.118", align 8   ; 12 uses
  %5 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !81    ; 4 uses
  %.val3 = load i32, ptr %1, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i32 %.val3, ptr %i.a, align 4, !tbaa !134
  %i.c = load ptr, ptr %.val, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !867, !nonnull !100, !align !109
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !280  ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, label %.noexc7.i.i.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc7.i.i.i:                                    ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #37 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !274
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !277
  %i.o = getelementptr i8, ptr %i.l, i64 4        ; 3 uses
  %i.p = add nsw i64 %i.i, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !277
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i ], [ %i.o, %.noexc7.i.i.i ], [ %i.r, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.t = invoke i32 @OMP_NUM_THREADS()
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.b, i32 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !868, !nonnull !100, !align !109
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !869, !nonnull !100, !align !109
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !867, !nonnull !100, !align !109
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 9, ptr nonnull @"_ZZN8LightGBM13DatasetLoader23ExtractFeaturesFromFileEPKcPKNS_6ParserERKSt6vectorIiSaIiEEPNS_7DatasetEENK3$_0clEiRKS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISJ_EE.omp_outlined", ptr nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.v, i64 0, ptr nonnull %i.x, ptr %i.c, ptr nonnull %i.y, ptr nonnull %i.a, ptr nonnull %4, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = load ptr, ptr %5, align 8, !tbaa !264    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN21ThreadExceptionHelperD2Ev.exit.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.z, ptr %3, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %3) #36
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !264
  %.not.i3.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i3.i.i.i.i, label %.body.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br label %.body.i.i.i

_ZN21ThreadExceptionHelperD2Ev.exit.i.i.i:        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ac = load ptr, ptr %4, align 8, !tbaa !273   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN8LightGBM13DatasetLoader23ExtractFeaturesFromFileEPKcPKNS0_6ParserERKSt6vectorIiSaIiEEPNS0_7DatasetEE3$_0JiRKS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit", label %bb.g

bb.g:                                             ; preds = %_ZN21ThreadExceptionHelperD2Ev.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !274
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #35
  br label %"_ZSt10__invoke_rIvRZN8LightGBM13DatasetLoader23ExtractFeaturesFromFileEPKcPKNS0_6ParserERKSt6vectorIiSaIiEEPNS0_7DatasetEE3$_0JiRKS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit"

bb.h:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.f, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.aa, %bb.f ], [ %i.aa, %bb.e ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.aj = load ptr, ptr %4, align 8, !tbaa !273   ; 3 uses
  %.not.i.i.i9.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i9.i.i.i, label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit12.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !274
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #35
  br label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit12.i.i.i

_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit12.i.i.i: ; preds = %bb.i, %.body.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZSt10__invoke_rIvRZN8LightGBM13DatasetLoader23ExtractFeaturesFromFileEPKcPKNS0_6ParserERKSt6vectorIiSaIiEEPNS0_7DatasetEE3$_0JiRKS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit": ; preds = %_ZN21ThreadExceptionHelperD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_1
