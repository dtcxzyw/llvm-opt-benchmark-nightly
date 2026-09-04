Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN8LightGBM7Network12num_machinesEv
declare noundef i32 @_ZN8LightGBM7Network12num_machinesEv() local_unnamed_addr #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17SerialTreeLearner15RenewTreeOutputEPNS_4TreeEPKNS_17ObjectiveFunctionESt8functionIFdPKfiEEiPKiiPKd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.std::function", align 8     ; 8 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !318  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.i, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.j = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !198
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !198
  %i.m = load i32, ptr %i.a, align 4, !tbaa !198  ; 2 uses
  %.not26 = icmp sgt i32 %i.m, %i.l
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = sext i32 %i.m to i64
  %.pre = load ptr, ptr %2, align 8, !tbaa !320
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %i.r = phi ptr [ %.pre, %.lr.ph ], [ %i.bq, %bb.p ] ; 2 uses
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !308  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !309
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !235  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !195
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !198 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !237
  %i.ah = sext i32 %i.aa to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = icmp sgt i32 %i.ae, 0
  br i1 %i.aj, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFdPKfiEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.an = load <2 x ptr>, ptr %i.p, align 8, !tbaa !333
  store <2 x ptr> %i.an, ptr %i.o, align 8, !tbaa !333
  br label %_ZNSt8functionIFdPKfiEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !316 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body unwind label %bb.i      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #41
  unreachable

_ZNSt8functionIFdPKfiEEC2ERKS3_.exit:             ; preds = %bb.f, %bb.d
  %i.at = load ptr, ptr %6, align 8, !tbaa !329
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef double %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, double noundef %i.v, ptr nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ai, ptr noundef %i.at, i32 noundef %i.ae)
          to label %bb.j unwind label %bb.r       ; 2 uses

bb.j:                                             ; preds = %_ZNSt8functionIFdPKfiEEC2ERKS3_.exit
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !316 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  %i.bc = load ptr, ptr %2, align 8, !tbaa !320   ; 2 uses
  %i.bd = call double @llvm.fabs.f64(double %i.ax)
  %i.be = fcmp ole double %i.bd, f0x38AA95A5C0000000
  %i.bf = select i1 %i.be, double 0.000000e+00, double %i.ax
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 336
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !308
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  store double %i.bf, ptr %i.bi, align 8, !tbaa !309
  br label %bb.p

bb.m:                                             ; preds = %bb.c
  %i.bj = load i32, ptr %7, align 4, !tbaa !198
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.25, i32 noundef 949)
          to label %._crit_edge29 unwind label %bb.r

._crit_edge29:                                    ; preds = %bb.n
  %.pre30 = load ptr, ptr %2, align 8, !tbaa !320 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre30, i64 336
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !308
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge29, %bb.m
  %i.bl = phi ptr [ %.pre31, %._crit_edge29 ], [ %i.t, %bb.m ]
  %i.bm = phi ptr [ %.pre30, %._crit_edge29 ], [ %i.r, %bb.m ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !309
  %i.bo = load ptr, ptr %8, align 8, !tbaa !195
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  store i32 0, ptr %i.bp, align 4, !tbaa !198
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.o
  %i.bq = phi ptr [ %i.bc, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.bm, %bb.o ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.br = load i32, ptr %i.b, align 4, !tbaa !198
  %i.bs = sext i32 %i.br to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bs
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.n, %_ZNSt8functionIFdPKfiEEC2ERKS3_.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bt, %bb.r ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.bu) #41
  unreachable
}

declare void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENUlPKcPciiE_8__invokeES8_S9_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ]
  %.01114.i.a = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %.01213.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load double, ptr %.01114.i.a, align 8, !tbaa !309
  %i.d = load double, ptr %.01213.i, align 8, !tbaa !309
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %.01213.i, align 8, !tbaa !309
  %i.f = getelementptr inbounds i8, ptr %.01114.i.a, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01213.i, i64 %i.b
  %i.h = add nsw i32 %.015.i, %2                  ; 2 uses
  %4 = icmp slt i32 %i.h, %3
  br i1 %4, label %bb.b, label %_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit, !llvm.loop !2340

_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network9GlobalSumIiEESt6vectorIT_SaIS3_EEPS5_ENUlPKcPciiE_8__invokeES8_S9_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network9GlobalSumIiEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ]
  %.01114.i.a = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %.01213.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load i32, ptr %.01114.i.a, align 4, !tbaa !198
  %i.d = load i32, ptr %.01213.i, align 4, !tbaa !198
  %i.e = add nsw i32 %i.d, %i.c
  store i32 %i.e, ptr %.01213.i, align 4, !tbaa !198
  %i.f = getelementptr inbounds i8, ptr %.01114.i.a, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01213.i, i64 %i.b
  %i.h = add nsw i32 %.015.i, %2                  ; 2 uses
  %4 = icmp slt i32 %i.h, %3
  br i1 %4, label %bb.b, label %_ZZN8LightGBM7Network9GlobalSumIiEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit, !llvm.loop !2341

_ZZN8LightGBM7Network9GlobalSumIiEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN8LightGBM29CostEfficientGradientBoosting9DeltaGainEiiiiNS_9SplitInfoE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef align 8 dereferenceable(128) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.f = load double, ptr %i.e, align 8, !tbaa !267 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 664
  %i.h = load double, ptr %i.g, align 8, !tbaa !268
  %i.i = fmul double %i.f, %i.h
  %i.j = sitofp i32 %4 to double
  %i.k = fmul double %i.i, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !269  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !269
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = sext i32 %1 to i64                       ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !280
  %i.t = sdiv i32 %1, 64
  %.sext = sext i32 %i.t to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.sext
  %i.v = and i64 %i.r, -9223372036854775745
  %i.w = icmp ugt i64 %i.v, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.w, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.u, i64 %storemerge.idx.i.i.i.i.i
  %i.x = and i64 %i.r, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !243
  %i.aa = and i64 %i.z, %i.y
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ab = sext i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !309
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ad, double %i.k)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi double [ %i.k, %bb.b ], [ %i.ae, %bb.c ], [ %i.k, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !269
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ak = sext i32 %2 to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !309 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !235 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = sext i32 %3 to i64                      ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !195
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !198
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !195
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aq
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !198 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !237
  %i.ba = sext i32 %i.at to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = icmp sgt i32 %i.ax, 0
  br i1 %i.bc, label %.lr.ph.i, label %_ZNK8LightGBM29CostEfficientGradientBoosting22CalculateOndemandCostsEiii.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !140 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !182 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !184
  %i.bj = mul nsw i32 %i.bi, %i.bg
  %i.bk = mul nsw i32 %i.bg, %1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i = zext nneg i32 %i.ax to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.01519.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.bz, %bb.g ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !198
  %i.bo = add nsw i32 %i.bn, %i.bk                ; 2 uses
  %i.bp = sdiv i32 %i.bo, 32                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.bp, %i.bj
  br i1 %.not.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i: ; preds = %bb.e
  %i.bq = fadd double %i.am, %.01519.i
  br label %bb.g

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i: ; preds = %bb.e
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !222
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  %i.bv = and i32 %i.bo, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %.fr.i = freeze i32 %i.bw
  %i.bx = trunc i32 %.fr.i to i1
  %i.by = fadd double %i.am, %.01519.i
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i
  %i.bz = phi double [ %.01519.i, %bb.f ], [ %i.by, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i ], [ %i.bq, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8LightGBM29CostEfficientGradientBoosting22CalculateOndemandCostsEiii.exit, label %bb.e, !llvm.loop !2342

_ZNK8LightGBM29CostEfficientGradientBoosting22CalculateOndemandCostsEiii.exit: ; preds = %bb.g, %bb.d
  %.016.i = phi double [ 0.000000e+00, %bb.d ], [ %i.bz, %bb.g ]
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.f, double %.016.i, double %.0)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8LightGBM29CostEfficientGradientBoosting22CalculateOndemandCostsEiii.exit, %.critedge
  %.1 = phi double [ %.0, %.critedge ], [ %i.ca, %_ZNK8LightGBM29CostEfficientGradientBoosting22CalculateOndemandCostsEiii.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = sext i32 %3 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !140
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !184
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, %i.cc
  %i.cj = sext i32 %1 to i64
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !220
  %i.cl = getelementptr [128 x i8], ptr %i.ck, i64 %i.ci
  %i.cm = getelementptr [128 x i8], ptr %i.cl, i64 %i.cj ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.cm, ptr noundef nonnull align 8 dereferenceable(122) %5, i64 96, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.cp = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.cs = load i16, ptr %i.cr, align 8
  store i16 %i.cs, ptr %i.cq, align 8
  ret double %.1
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM17SerialTreeLearner25RecomputeBestSplitForLeafEPNS_4TreeEiPNS_9SplitInfoE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(48) %9) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !185  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.h, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.i = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !198
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !198
  %i.l = load i32, ptr %i.a, align 4, !tbaa !198  ; 2 uses
  %.not31 = icmp sgt i32 %i.l, %i.k
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !294
  %.not30 = icmp eq i8 %i.r, 0
  br i1 %.not30, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %3, align 8, !tbaa !343
  %i.t = getelementptr inbounds [96 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !460, !range !232, !noundef !233
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = call i32 @omp_get_thread_num()
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 440
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !195
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !198
  %i.ad = load ptr, ptr %3, align 8, !tbaa !343
  %i.ae = load ptr, ptr %4, align 8, !tbaa !347
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !294
  %i.ah = load i32, ptr %5, align 4, !tbaa !198
  %i.ai = sext i32 %i.x to i64
  %i.aj = load ptr, ptr %7, align 8, !tbaa !220
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load double, ptr %8, align 8, !tbaa !309
  %i.am = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8LightGBM17SerialTreeLearner26ComputeBestSplitForFeatureEPNS_16FeatureHistogramEiiaiPKNS_10LeafSplitsEPNS_9SplitInfoEd(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef %i.ad, i32 noundef %i.am, i32 noundef %i.ac, i8 noundef signext %i.ag, i32 noundef %i.ah, ptr noundef nonnull %6, ptr noundef nonnull %i.ak, double noundef %i.al)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = extractvalue { ptr, i32 } %i.an, 1
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ao) #18 ; 2 uses
  br i1 %i.ar, label %bb.g, label %.invoke35

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !226
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #18
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.aw)
          to label %.invoke35 unwind label %bb.j

bb.h:                                             ; preds = %.invoke, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !198
  %i.ay = sext i32 %i.ax to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ay
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke35:                                        ; preds = %bb.f, %bb.g
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.invoke35
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.j

._crit_edge:                                      ; preds = %bb.h, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.j:                                             ; preds = %.invoke35, %.invoke, %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17SerialTreeLearner20AddPredictionToScoreEPKNS_4TreeEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #22 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !318  ; 2 uses
  %i.h = add nsw i32 %i.g, -1                     ; 3 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.h, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.j = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !198
  %.promoted25 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.k = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !198
  %.not26 = icmp sgt i32 %.promoted25, %i.k
  br i1 %.not26, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !320
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !308
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !235  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !237
  %i.w = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.x = sext i32 %.promoted25 to i64
  %i.y = sext i32 %i.w to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %indvars.iv29 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %indvars.iv.next30, %bb.f ] ; 2 uses
  %i.z = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bu, %bb.f ] ; 2 uses
  %i.aa = sext i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv31 = phi i64 [ %indvars.iv29, %.preheader ], [ %indvars.iv.next32, %._crit_edge ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv31
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !309 ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv31
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !198
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv31
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !198 ; 3 uses
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ah ; 5 uses
  %i.aj = icmp sgt i32 %i.ag, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %4, align 8, !tbaa !269   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.al = icmp ult i32 %i.ag, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.epil
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !309
  %i.ar = fadd double %i.ac, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !309
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !2343

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.c
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %.not22.not = icmp slt i64 %indvars.iv31, %i.aa
  br i1 %.not22.not, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !198
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !309
  %i.ax = fadd double %i.ac, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !309
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !198
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !309
  %i.be = fadd double %i.ac, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !309
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !198
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !309
  %i.bl = fadd double %i.ac, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !309
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !198
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bp ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !309
  %i.bs = fadd double %i.ac, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !309
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !2344

bb.f:                                             ; preds = %._crit_edge
  %indvars.iv.next30 = add i64 %indvars.iv29, %i.y ; 2 uses
  %indvars = trunc i64 %indvars.iv.next30 to i32  ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
  %i.bt = add nsw i32 %i.w, %i.z
  %i.bu = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.h) ; 3 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !198
  %.not = icmp slt i32 %i.bu, %indvars
  br i1 %.not, label %._crit_edge27, label %.preheader

._crit_edge27:                                    ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge27, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #33 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #35

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v2i32(<2 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umin.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { cold noreturn }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { convergent nounwind }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nofree nounwind }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #39 = { builtin nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn nounwind }
attributes #42 = { noreturn }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { cold nounwind }

!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}
!llvm.errno.tbaa = !{!45}

!0 = distinct !{!0, !218}
!1 = distinct !{null, null, null}
!2 = distinct !{!2, !218}
!3 = distinct !{null, null}
!4 = distinct !{!4, !218}
!5 = distinct !{null, null}
!6 = distinct !{!6, !218}
!7 = distinct !{!7, !218}
!8 = distinct !{!8, !218}
!9 = distinct !{!9, !218}
!10 = distinct !{!10, !218}
!11 = distinct !{!11, !218}
!12 = distinct !{null, null, null}
!13 = distinct !{ptr @_ZN8LightGBM27IntermediateLeafConstraintsD2Ev, ptr @_ZN8LightGBM20BasicLeafConstraintsD2Ev, ptr @_ZNSt6vectorISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!14 = distinct !{!14, !218}
!15 = distinct !{ptr @_ZN8LightGBM20BasicLeafConstraintsD2Ev, ptr @_ZNSt6vectorISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!16 = distinct !{!16, !218}
!17 = distinct !{!17, !218}
!18 = distinct !{!18, !218}
!19 = distinct !{!19, !218}
!20 = distinct !{!20, !218}
!21 = distinct !{null, null, null}
!22 = distinct !{!22, !218}
!23 = distinct !{!23, !218}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{ptr @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev, ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!29 = distinct !{ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!30 = distinct !{!30, !218}
!31 = distinct !{!31, !218}
!32 = distinct !{!32, !218}
!33 = distinct !{!33, !218}
!34 = distinct !{!34, !218}
!35 = distinct !{!35, !218}
!36 = distinct !{!36, !218}
!37 = !{i32 7, !"openmp", i32 51}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"omnipotent char", !41, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!"__libc_errno", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"_ZTSN8LightGBM11TreeLearnerE"}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!2141 = distinct !{!2141, !218}
!2142 = !{!"_ZTSZN8LightGBM16FeatureHistogram17FuncForNumricalL3ILb0ELb1ELb0ELb0ELb0EEEvvEUlddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEE0_", !57, i64 0}
!2143 = !{!2142, !57, i64 0}
!2144 = distinct !{!2144, !218}
!2145 = distinct !{!2145, !218}
!2146 = distinct !{!2146, !218}
!2147 = !{!"_ZTSZN8LightGBM16FeatureHistogram17FuncForNumricalL3ILb0ELb1ELb0ELb0ELb0EEEvvEUlddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEE1_", !57, i64 0}
!2148 = !{!2147, !57, i64 0}
!2149 = distinct !{!2149, !218}
!2150 = !{!"_ZTSZN8LightGBM16FeatureHistogram17FuncForNumricalL3ILb0ELb1ELb0ELb0ELb0EEEvvEUlddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEE2_", !57, i64 0}
!2151 = !{!2150, !57, i64 0}
!2152 = distinct !{!2152, !"vprintf"}
!2153 = distinct !{!2153, !2152, !"vprintf: argument 0"}
!2154 = distinct !{null}
!2155 = !{!"_ZTSN8LightGBM8LogLevelE", !42, i64 0}
!2156 = !{!2155, !2155, i64 0}
!2157 = !{!2153}
!2158 = distinct !{!2158, !2160}
!2159 = distinct !{!2159, !218}
!2160 = !{!"llvm.loop.unswitch.partial.disable"}
!2161 = distinct !{!2161, !"_ZSt9make_pairIRN24json11_internal_lightgbm4JsonERiESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!2162 = distinct !{!2162, !2161, !"_ZSt9make_pairIRN24json11_internal_lightgbm4JsonERiESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!2163 = distinct !{!2163, !"_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE5beginEv"}
!2164 = distinct !{!2164, !2163, !"_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE5beginEv: argument 0"}
!2165 = distinct !{!2165, !218}
!2166 = distinct !{null, null, null, null, null, null}
!2167 = distinct !{null, null, null, null, null}
!2168 = distinct !{!2168, !"_ZSt9make_pairIRN24json11_internal_lightgbm4JsonERiESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!2169 = distinct !{!2169, !2168, !"_ZSt9make_pairIRN24json11_internal_lightgbm4JsonERiESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!2170 = distinct !{!2170, !"_ZSt9make_pairIRN24json11_internal_lightgbm4JsonERiESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!2171 = distinct !{!2171, !2170, !"_ZSt9make_pairIRN24json11_internal_lightgbm4JsonERiESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!2172 = !{!2162}
!2173 = !{!513, !511, i64 64}
!2174 = !{!2164}
!2175 = !{!2169}
!2176 = !{!2171}
!2177 = distinct !{!2177, !218}
!2178 = !{!167, !166, i64 16}
!2179 = !{!167, !166, i64 8}
!2180 = distinct !{null}
!2181 = distinct !{!2181, !218}
!2182 = !{!"_ZTSZN8LightGBM9ArrayArgsINS_9SplitInfoEE8ArgMaxMTERKSt6vectorIS1_SaIS1_EEEUlimmE_", !523, i64 0, !525, i64 8}
!2183 = !{!2182, !523, i64 0}
!2184 = !{i64 8}
!2185 = !{!2182, !525, i64 8}
!2186 = !{i64 0, i64 8, !524, i64 8, i64 8, !526}
!2187 = distinct !{null, null, null}
!2188 = !{!"_ZTSZN8LightGBM17SerialTreeLearner5TrainEPKfS2_bE3$_0", !270, i64 0}
!2189 = !{!2188, !270, i64 0}
!2190 = !{!317, !43, i64 160}
!2191 = !{!149, !49, i64 8}
!2192 = !{!149, !49, i64 0}
!2193 = !{!149, !49, i64 16}
!2194 = !{!317, !96, i64 504}
!2195 = !{!171, !171, i64 0}
!2196 = distinct !{!2196, !218}
!2197 = !{!317, !104, i64 536}
!2198 = !{!193, !104, i64 648}
!2199 = distinct !{!2199, !218}
!2200 = distinct !{!2200, !218}
!2201 = distinct !{!2201, !218}
!2202 = distinct !{!2202, !218}
!2203 = distinct !{!2203, !332}
!2204 = distinct !{!2204, !218}
!2205 = !{!"_ZTSZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_", !125, i64 0}
!2206 = !{!2205, !125, i64 0}
!2207 = distinct !{!2207, !218}
!2208 = distinct !{!2208, !"_ZNK8LightGBM4Tree15branch_featuresEi"}
!2209 = distinct !{!2209, !2208, !"_ZNK8LightGBM4Tree15branch_featuresEi: argument 0"}
!2210 = distinct !{!2210, !218}
!2211 = distinct !{!2211, !218}
!2212 = distinct !{!2212, !218}
!2213 = distinct !{!2213, !218}
!2214 = !{!111, !111, i64 0}
!2215 = !{!2209}
!2216 = !{!116, !104, i64 16}
!2217 = distinct !{!2217, !218, !330, !331}
!2218 = distinct !{!2218, !332}
!2219 = distinct !{!2219, !218, !330}
!2220 = distinct !{!2220, !218}
!2221 = distinct !{!2221, !218}
!2222 = distinct !{!2222, !218, !330, !331}
!2223 = distinct !{!2223, !218, !331, !330}
!2224 = distinct !{!2224, !"LVerDomain"}
!2225 = distinct !{!2225, !2224}
!2226 = distinct !{!2226, !2224}
!2227 = distinct !{!2227, !218, !330, !331}
!2228 = distinct !{!2228, !332}
!2229 = distinct !{!2229, !218, !330}
!2230 = distinct !{!2230, !"LVerDomain"}
!2231 = distinct !{!2231, !2230}
!2232 = distinct !{!2232, !2230}
!2233 = distinct !{!2233, !218, !330, !331}
!2234 = distinct !{!2234, !332}
!2235 = distinct !{!2235, !218, !330}
!2236 = !{!2225}
!2237 = !{!2226}
!2238 = !{!2231}
!2239 = !{!2232}
!2240 = distinct !{null}
!2241 = distinct !{null}
!2242 = !{!353, !47, i64 24}
!2243 = !{!352, !47, i64 24}
!2244 = !{!193, !104, i64 584}
!2245 = distinct !{!2245, !218}
!2246 = !{!539, !117, i64 64}
!2247 = distinct !{null, null, null}
!2248 = distinct !{!2248, !218}
!2249 = distinct !{null}
!2250 = distinct !{!2250, !218}
!2251 = distinct !{!2251, !218}
!2252 = distinct !{!2252, !218}
!2253 = !{!214, !142, i64 24}
!2254 = !{!214, !142, i64 8}
!2255 = !{!214, !209, i64 0}
!2256 = distinct !{!2256, !218}
!2257 = distinct !{!2257, !218}
!2258 = !{!554, !552, i64 0}
!2259 = !{!"_ZTSSt4pairIKiN8LightGBM9SplitInfoEE", !43, i64 0, !311, i64 8}
!2260 = !{!2259, !43, i64 0}
!2261 = distinct !{!2261, !218}
!2262 = !{!501, !210, i64 48}
!2263 = distinct !{!2263, !218}
!2264 = distinct !{null, ptr @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev, ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!2265 = !{!513, !511, i64 32}
!2266 = !{!513, !511, i64 24}
!2267 = distinct !{!2267, !"_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE5beginEv"}
!2268 = distinct !{!2268, !2267, !"_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE5beginEv: argument 0"}
!2269 = distinct !{!2269, !"_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE3endEv"}
!2270 = distinct !{!2270, !2269, !"_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE3endEv: argument 0"}
!2271 = !{!2268}
!2272 = !{!2270}
!2273 = distinct !{null, null, null, ptr @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev, ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!2274 = distinct !{!2274, !218}
!2275 = distinct !{!2275, !218}
!2276 = distinct !{!2276, !218}
!2277 = distinct !{null, ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!2278 = !{!539, !117, i64 32}
!2279 = !{!539, !117, i64 24}
!2280 = distinct !{!2280, !"_ZNSt5dequeIN24json11_internal_lightgbm4JsonESaIS1_EE5beginEv"}
!2281 = distinct !{!2281, !2280, !"_ZNSt5dequeIN24json11_internal_lightgbm4JsonESaIS1_EE5beginEv: argument 0"}
!2282 = distinct !{!2282, !"_ZNSt5dequeIN24json11_internal_lightgbm4JsonESaIS1_EE3endEv"}
!2283 = distinct !{!2283, !2282, !"_ZNSt5dequeIN24json11_internal_lightgbm4JsonESaIS1_EE3endEv: argument 0"}
!2284 = !{!2281}
!2285 = !{!2283}
!2286 = distinct !{null, null, null, ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!2287 = distinct !{!2287, !218}
!2288 = distinct !{!2288, !218}
!2289 = distinct !{!2289, !"_ZN8LightGBM6CommonL15ConstructBitsetIjEESt6vectorIjSaIjEEPKT_i"}
!2290 = distinct !{!2290, !2289, !"_ZN8LightGBM6CommonL15ConstructBitsetIjEESt6vectorIjSaIjEEPKT_i: argument 0"}
!2291 = distinct !{!2291, !218}
!2292 = distinct !{!2292, !"_ZN8LightGBM6CommonL15ConstructBitsetIiEESt6vectorIjSaIjEEPKT_i"}
!2293 = distinct !{!2293, !2292, !"_ZN8LightGBM6CommonL15ConstructBitsetIiEESt6vectorIjSaIjEEPKT_i: argument 0"}
!2294 = distinct !{!2294, !218}
!2295 = distinct !{!2295, !218}
!2296 = !{!2290}
!2297 = !{!2293}
!2298 = distinct !{!2298, !218}
!2299 = distinct !{!2299, !218}
!2300 = distinct !{!2300, !218, !330, !331}
!2301 = distinct !{!2301, !218, !331, !330}
!2302 = distinct !{!2302, !218, !330, !331}
!2303 = distinct !{!2303, !218, !331, !330}
!2304 = distinct !{!2304, !218, !330, !331}
!2305 = distinct !{!2305, !218, !331, !330}
!2306 = distinct !{!2306, !218, !330, !331}
!2307 = distinct !{!2307, !218, !331, !330}
!2308 = distinct !{!2308, !218, !330, !331}
!2309 = distinct !{!2309, !218, !331, !330}
!2310 = distinct !{!2310, !218}
!2311 = distinct !{null}
!2312 = !{!"_ZTSZN8LightGBM13DataPartition5SplitEiPKNS_7DatasetEiPKjibiEUliiiPiS6_E_", !48, i64 0, !43, i64 8, !97, i64 16, !43, i64 24, !96, i64 28, !97, i64 32}
!2313 = !{!2312, !48, i64 0}
!2314 = !{!2312, !43, i64 8}
!2315 = !{!2312, !97, i64 16}
!2316 = !{!2312, !43, i64 24}
!2317 = !{!2312, !96, i64 28}
!2318 = !{!2312, !97, i64 32}
!2319 = !{i64 0, i64 8, !400, i64 8, i64 4, !198, i64 16, i64 8, !329, i64 24, i64 4, !198, i64 28, i64 1, !357, i64 32, i64 8, !329}
!2320 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !202, i64 0}
!2321 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE", !2320, i64 0}
!2322 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE", !2321, i64 0}
!2323 = !{!"p1 _ZTSN8LightGBM3BinE", !47, i64 0}
!2324 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM3BinELb0EE", !2323, i64 0}
!2325 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM3BinESt14default_deleteIS1_EEE", !2324, i64 0}
!2326 = !{!"_ZTSSt5tupleIJPN8LightGBM3BinESt14default_deleteIS1_EEE", !2325, i64 0}
!2327 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM3BinESt14default_deleteIS1_EE", !2326, i64 0}
!2328 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM3BinESt14default_deleteIS1_ELb1ELb1EE", !2327, i64 0}
!2329 = !{!"_ZTSSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE", !2328, i64 0}
!2330 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE", !47, i64 0}
!2331 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !2330, i64 0, !2330, i64 8, !2330, i64 16}
!2332 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !2331, i64 0}
!2333 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE", !2332, i64 0}
!2334 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE", !2333, i64 0}
!2335 = !{!"_ZTSN8LightGBM12FeatureGroupE", !43, i64 0, !2322, i64 8, !253, i64 32, !2329, i64 56, !2334, i64 64, !96, i64 88, !96, i64 89, !96, i64 90, !43, i64 92}
!2336 = !{!2335, !96, i64 88}
!2337 = !{!2335, !43, i64 0}
!2338 = !{!2323, !2323, i64 0}
!2339 = !{!2331, !2330, i64 0}
!2340 = distinct !{!2340, !218}
!2341 = distinct !{!2341, !218}
!2342 = distinct !{!2342, !218}
!2343 = distinct !{!2343, !332}
!2344 = distinct !{!2344, !218}
end_hunk_1
