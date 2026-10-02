Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/paulilogic?download=true
inline.NumInlined: 250
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z53paulis_setPauliStrSumToScaledTensorProdOfConjWithSelf11PauliStrSumdS_i:bb.a
bb.k:                                             ; preds = %bb.j
  %i.cp = tail call noundef { double, double } @__muldc3(double noundef %i.bi, double noundef %i.bj, double noundef %i.cg, double noundef 0.000000e+00) #16 ; 2 uses
  %i.cq = extractvalue { double, double } %i.cp, 0
  %i.cr = extractvalue { double, double } %i.cp, 1
  br label %_ZmlRKSt7complexIdERKi.exit

_ZmlRKSt7complexIdERKi.exit:                      ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, %bb.j, %bb.k
  %i.cs = phi double [ %i.cl, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.cl, %bb.j ], [ %i.cq, %bb.k ]
  %i.ct = phi double [ %i.cm, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.cm, %bb.j ], [ %i.cr, %bb.k ]
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.u, i64 %.143 ; 2 uses
  store double %i.cs, ptr %i.cu, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store double %i.ct, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  %i.cv = add nsw i64 %.143, 1                    ; 2 uses
  %i.cw = add nuw nsw i64 %.02242, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %.sroa.039.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !52
}

declare void @_Z55error_pauliStrSumHasMoreQubitsThanSpecifiedInTensorProdv() local_unnamed_addr #4

declare void @_Z47error_pauliStrSumTensorProdHasIncorrectNumTermsv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -1073741823, 1073741825) i64 @_Z52paulis_getNumTermsInPauliStrSumProdOfAdjointWithSelf11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !33
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = add i32 %i.b, -1
  %i.d = mul i32 %i.c, %i.b
  %i.e = sdiv i32 %i.d, 2
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_Z50paulis_setPauliStrSumToScaledProdOfAdjointWithSelf11PauliStrSumdS_(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, double noundef %1, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !33
  %.sroa.046.0.copyload = load i64, ptr %2, align 8, !tbaa !15 ; 3 uses
  %.sroa.2.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = trunc i64 %.sroa.046.0.copyload to i32   ; 2 uses
  %i.c = add i32 %i.b, -1
  %i.d = mul i32 %i.c, %i.b
  %i.e = sdiv i32 %i.d, 2
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %.not = icmp eq i64 %i.a, %i.g
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z41error_pauliStrSumProdHasIncorrectNumTermsv()
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !59
  store i8 73, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !30
  %i.k = invoke { i64, i64 } @_Z11getPauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  store i64 %i.l, ptr %i.o, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %i.p = load ptr, ptr %3, align 8, !tbaa !63     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.h, align 8, !tbaa !30
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 4 uses
  %i.v = icmp sgt i64 %.sroa.046.0.copyload, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br i1 %i.v, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = load ptr, ptr %.sroa.2.0..sroa_idx47, align 8 ; 2 uses
  %i.z = fmul double %1, 2.000000e+00
  br label %bb.e

._crit_edge53:                                    ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.d
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !30
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  resume { ptr, i32 } %i.aa

bb.e:                                             ; preds = %.lr.ph52, %._crit_edge
  %.02251 = phi i64 [ 1, %.lr.ph52 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02350 = phi i64 [ 0, %.lr.ph52 ], [ %i.ap, %._crit_edge ] ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.02350 ; 3 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.aj)
  %i.al = fmul double %1, %i.ak
  %i.am = load double, ptr %i.u, align 8
  %i.an = fadd double %i.am, %i.al
  store double %i.an, ptr %i.u, align 8
  %.not54 = icmp eq i64 %.02350, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.02350 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38, %bb.e
  %.1.lcssa = phi i64 [ %.02251, %bb.e ], [ %i.de, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38 ]
  %i.ap = add nuw nsw i64 %.02350, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.ap, %.sroa.046.0.copyload
  br i1 %exitcond55.not, label %._crit_edge53, label %bb.e, !llvm.loop !53

bb.f:                                             ; preds = %.lr.ph, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38
  %.149 = phi i64 [ %.02251, %.lr.ph ], [ %i.de, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38 ] ; 3 uses
  %.02448 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38 ] ; 3 uses
  %.sroa.02.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.02448 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, %bb.f
  %.033.i = phi i32 [ 0, %bb.f ], [ %i.bs, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i ] ; 3 uses
  %.sroa.028.032.i = phi double [ 1.000000e+00, %bb.f ], [ %.sroa.028.1.i, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i ] ; 4 uses
  %.sroa.6.031.i = phi double [ 0.000000e+00, %bb.f ], [ %.sroa.6.1.i, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.033.i, 32       ; 3 uses
  %i.as = shl nuw nsw i32 %.033.i, 1              ; 2 uses
  %i.at = add nsw i32 %i.as, -64
  %.sink4.i.i = select i1 %i.ar, i32 %i.as, i32 %i.at
  %.sink.i.i = select i1 %i.ar, i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload
  %i.au = zext nneg i32 %.sink4.i.i to i64        ; 2 uses
  %i.av = ashr i64 %.sink.i.i, %i.au
  %.in.i.i = trunc i64 %i.av to i32
  %i.aw = and i32 %.in.i.i, 3                     ; 3 uses
  %.sink.i26.i = select i1 %i.ar, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.ax = ashr i64 %.sink.i26.i, %i.au
  %.in.i27.i = trunc i64 %i.ax to i32
  %i.ay = and i32 %.in.i27.i, 3                   ; 3 uses
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = icmp eq i32 %i.ay, 0
  %or.cond.i = or i1 %i.az, %i.ba
  %i.bb = icmp eq i32 %i.aw, %i.ay
  %or.cond24.i = or i1 %i.bb, %or.cond.i
  br i1 %or.cond24.i, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = sub nsw i32 %i.ay, %i.aw                ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bc, -2
  %i.bf = or i1 %i.bd, %i.be
  %i.bg = select i1 %i.bf, double 1.000000e+00, double -1.000000e+00 ; 3 uses
  %i.bh = fmul double %.sroa.028.032.i, 0.000000e+00
  %i.bi = fmul double %.sroa.6.031.i, %i.bg
  %i.bj = fmul double %.sroa.028.032.i, %i.bg
  %i.bk = fmul double %.sroa.6.031.i, 0.000000e+00
  %i.bl = fsub double %i.bh, %i.bi                ; 3 uses
  %i.bm = fadd double %i.bk, %i.bj                ; 3 uses
  %i.bn = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bn, label %bb.i, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.bo = fcmp uno double %i.bm, 0.000000e+00
  br i1 %i.bo, label %bb.j, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.bp = call noundef { double, double } @__muldc3(double noundef %.sroa.028.032.i, double noundef %.sroa.6.031.i, double noundef 0.000000e+00, double noundef %i.bg) #16, !noalias !68 ; 2 uses
  %i.bq = extractvalue { double, double } %i.bp, 0
  %i.br = extractvalue { double, double } %i.bp, 1
  br label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i

_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i:        ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.6.1.i = phi double [ %.sroa.6.031.i, %bb.g ], [ %i.bm, %bb.h ], [ %i.bm, %bb.i ], [ %i.br, %bb.j ] ; 4 uses
  %.sroa.028.1.i = phi double [ %.sroa.028.032.i, %bb.g ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.bq, %bb.j ] ; 4 uses
  %i.bs = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, 64
  br i1 %exitcond.not.i, label %_Z22paulis_getPauliStrProd8PauliStrS_.exit, label %bb.g, !llvm.loop !3

_Z22paulis_getPauliStrProd8PauliStrS_.exit:       ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i
  %i.bt = xor i64 %.sroa.2.0.copyload, %.sroa.23.0.copyload
  %i.bu = xor i64 %.sroa.0.0.copyload, %.sroa.02.0.copyload
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.149 ; 2 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !15
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.bt, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.02448
  %i.bx = load <2 x double>, ptr %i.af, align 8, !tbaa !36 ; 4 uses
  %i.by = extractelement <2 x double> %i.bx, i64 1
  %i.bz = fneg double %i.by
  %i.ca = load <2 x double>, ptr %i.bw, align 8   ; 4 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul <2 x double> %i.bx, %i.ca
  %i.cd = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cc) ; 3 uses
  %i.ce = fmul <2 x double> %i.bx, %i.cb          ; 2 uses
  %shift = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ce, %shift
  %i.cf = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.cg = fcmp uno double %i.cd, 0.000000e+00
  br i1 %i.cg, label %bb.k, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !27

bb.k:                                             ; preds = %_Z22paulis_getPauliStrProd8PauliStrS_.exit
  %i.ch = fcmp uno double %i.cf, 0.000000e+00
  br i1 %i.ch, label %bb.l, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ci = extractelement <2 x double> %i.bx, i64 0
  %i.cj = extractelement <2 x double> %i.ca, i64 0
  %i.ck = extractelement <2 x double> %i.ca, i64 1
  %i.cl = call noundef { double, double } @__muldc3(double noundef %i.ci, double noundef %i.bz, double noundef %i.cj, double noundef %i.ck) #16 ; 2 uses
  %i.cm = extractvalue { double, double } %i.cl, 0
  %i.cn = extractvalue { double, double } %i.cl, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit

_ZStmlIdESt7complexIT_ERKS2_S4_.exit:             ; preds = %_Z22paulis_getPauliStrProd8PauliStrS_.exit, %bb.k, %bb.l
  %i.co = phi double [ %i.cd, %_Z22paulis_getPauliStrProd8PauliStrS_.exit ], [ %i.cd, %bb.k ], [ %i.cm, %bb.l ] ; 3 uses
  %i.cp = phi double [ %i.cf, %_Z22paulis_getPauliStrProd8PauliStrS_.exit ], [ %i.cf, %bb.k ], [ %i.cn, %bb.l ] ; 3 uses
  %i.cq = fmul double %.sroa.028.1.i, %i.co
  %i.cr = fmul double %.sroa.6.1.i, %i.cp
  %i.cs = fsub double %i.cq, %i.cr                ; 3 uses
  %i.ct = fcmp uno double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.m, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38, !prof !27

bb.m:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %i.cu = fmul double %.sroa.028.1.i, %i.cp
  %i.cv = fmul double %.sroa.6.1.i, %i.co
  %i.cw = fadd double %i.cv, %i.cu
  %i.cx = fcmp uno double %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.n, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38, !prof !27

bb.n:                                             ; preds = %bb.m
  %i.cy = call noundef { double, double } @__muldc3(double noundef %i.co, double noundef %i.cp, double noundef %.sroa.028.1.i, double noundef %.sroa.6.1.i) #16
  %i.cz = extractvalue { double, double } %i.cy, 0
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38

_ZStmlIdESt7complexIT_ERKS2_S4_.exit38:           ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, %bb.m, %bb.n
  %i.da = phi double [ %i.cs, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ], [ %i.cs, %bb.m ], [ %i.cz, %bb.n ]
  %i.db = fmul double %i.z, %i.da
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.u, i64 %.149 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store double %i.db, ptr %i.dc, align 8
  store double 0.000000e+00, ptr %i.dd, align 8
  %i.de = add nsw i64 %.149, 1                    ; 2 uses
  %i.df = add nuw nsw i64 %.02448, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %.02350
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !56
}

declare void @_Z41error_pauliStrSumProdHasIncorrectNumTermsv() local_unnamed_addr #4

declare { i64, i64 } @_Z11getPauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress uwtable
define void @_Z34paulis_setPauliStrSumToShiftedConj11PauliStrSumS_i(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.sroa.019.0.copyload = load i64, ptr %1, align 8, !tbaa !15 ; 3 uses
  %.sroa.2.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload21 = load ptr, ptr %.sroa.2.0..sroa_idx20, align 8, !tbaa !34 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = icmp sgt i64 %.sroa.019.0.copyload, 0
  br i1 %i.a, label %.lr.ph.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i
  %.011.i.i = phi i32 [ %spec.select.i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ], [ 0, %bb.a ]
  %.0810.i.i = phi i64 [ %i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload21, i64 %.0810.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15 ; 2 uses
  %i.c = icmp eq i64 %.sroa.2.0.copyload.i.i, 0   ; 2 uses
  %i.d = select i1 %i.c, i32 0, i32 32            ; 2 uses
  %i.e = select i1 %i.c, i64 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i ; 2 uses
  %.not7.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not7.i.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph.i.i ]
  %.068.i.i.i = phi i32 [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.f = lshr i64 %.09.i.i.i, 2                   ; 2 uses
  %i.g = add nuw nsw i32 %.068.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.06.lcssa.i.i.i = phi i32 [ %i.d, %.lr.ph.i.i ], [ %i.g, %.lr.ph.i.i.i ]
  %i.h = add nsw i32 %.06.lcssa.i.i.i, -1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %.011.i.i) ; 2 uses
  %i.i = add nuw nsw i64 %.0810.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %.sroa.019.0.copyload
  br i1 %exitcond.not.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit, label %.lr.ph.i.i, !llvm.loop !1

_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit: ; preds = %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ]
  %.not = icmp slt i32 %.0.lcssa.i.i, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit
  tail call void @_Z54error_pauliStrSumHasMoreQubitsThanSpecifiedInConjShiftv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit
  %i.j = load i64, ptr %0, align 8, !tbaa !33     ; 3 uses
  %.not14 = icmp eq i64 %i.j, %.sroa.019.0.copyload
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z41error_pauliStrSumConjHasIncorrectNumTermsv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.l = add i32 %2, -32
  %or.cond.i = icmp ult i32 %i.l, -31
  %i.m = shl nsw i32 %2, 1                        ; 2 uses
  %i.n = sub i32 64, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.m to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZmlRKSt7complexIdERKi.exit, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZmlRKSt7complexIdERKi.exit
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZmlRKSt7complexIdERKi.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload21, i64 %.022 ; 3 uses
  %.sroa.02.0.copyload = load i64, ptr %i.v, align 8, !tbaa !15 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15
  br i1 %or.cond.i, label %bb.g, label %_Z25paulis_getShiftedPauliStr8PauliStri.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Z36error_pauliStrShiftedByIllegalAmountv()
  br label %_Z25paulis_getShiftedPauliStr8PauliStri.exit

_Z25paulis_getShiftedPauliStr8PauliStri.exit:     ; preds = %bb.f, %bb.g
  %i.w = ashr i64 %.sroa.02.0.copyload, %i.o
  %i.x = shl i64 %.sroa.02.0.copyload, %i.p
  %i.y = shl i64 %.sroa.23.0.copyload, %i.p
  %i.z = or i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.022 ; 2 uses
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !15
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.z, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.022
  %i.ac = load <2 x double>, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8, !tbaa !15
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.sroa.0.0.copyload, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert28 = insertelement <16 x i64> poison, i64 %.sroa.2.0.copyload, i64 0
  %broadcast.splat29 = shufflevector <16 x i64> %broadcast.splatinsert28, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_Z25paulis_getShiftedPauliStr8PauliStri.exit
  %index = phi i32 [ 0, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i1> [ zeroinitializer, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %i.at, %vector.body ]
  %vec.phi30 = phi <16 x i1> [ zeroinitializer, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %i.au, %vector.body ]
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ad = icmp ult <16 x i32> %vec.ind, splat (i32 32) ; 2 uses
  %i.ae = icmp ult <16 x i32> %vec.ind, splat (i32 16) ; 2 uses
  %i.af = shl nuw nsw <16 x i32> %vec.ind, splat (i32 1) ; 2 uses
  %step.add = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.ag = add nsw <16 x i32> %i.af, splat (i32 -64)
  %i.ah = select <16 x i1> %i.ad, <16 x i32> %i.af, <16 x i32> %i.ag
  %.v = select <16 x i1> %i.ae, <16 x i32> splat (i32 32), <16 x i32> splat (i32 -32)
  %i.ai = add <16 x i32> %step.add, %.v
  %i.aj = select <16 x i1> %i.ad, <16 x i64> %broadcast.splat, <16 x i64> %broadcast.splat29
  %i.ak = select <16 x i1> %i.ae, <16 x i64> %broadcast.splat, <16 x i64> %broadcast.splat29
  %i.al = zext nneg <16 x i32> %i.ah to <16 x i64>
  %i.am = zext nneg <16 x i32> %i.ai to <16 x i64>
  %i.an = ashr <16 x i64> %i.aj, %i.al
  %i.ao = ashr <16 x i64> %i.ak, %i.am
  %i.ap = and <16 x i64> %i.an, splat (i64 3)
  %i.aq = and <16 x i64> %i.ao, splat (i64 3)
  %i.ar = icmp eq <16 x i64> %i.ap, splat (i64 2)
  %i.as = icmp eq <16 x i64> %i.aq, splat (i64 2)
  %i.at = xor <16 x i1> %vec.phi, %i.ar           ; 2 uses
  %i.au = xor <16 x i1> %vec.phi30, %i.as         ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <16 x i32> %vec.ind, splat (i32 32)
  %i.av = icmp eq i32 %index.next, 64
  br i1 %i.av, label %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, label %vector.body, !llvm.loop !69

_Z28paulis_getSignOfPauliStrConj8PauliStr.exit:   ; preds = %vector.body
  %bin.rdx = xor <16 x i1> %i.au, %i.at
  %i.aw = bitcast <16 x i1> %bin.rdx to i16
  %i.ax = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.aw)
  %i.ay = trunc i16 %i.ax to i1
  %i.az = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %i.ba = fneg double %i.az
  %i.bb = select i1 %i.ay, double -1.000000e+00, double 1.000000e+00 ; 3 uses
  %i.bc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bb, i64 0
  %i.bd = fmul <2 x double> %i.ac, %i.bc
  %i.be = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %i.bf = fmul double %i.be, 0.000000e+00
  %i.bg = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bd) ; 3 uses
  %i.bh = fmul double %i.az, %i.bb
  %i.bi = fsub double %i.bf, %i.bh                ; 3 uses
  %i.bj = fcmp uno double %i.bg, 0.000000e+00
  br i1 %i.bj, label %bb.h, label %_ZmlRKSt7complexIdERKi.exit, !prof !27

bb.h:                                             ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit
  %i.bk = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bk, label %bb.i, label %_ZmlRKSt7complexIdERKi.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call noundef { double, double } @__muldc3(double noundef %i.be, double noundef %i.ba, double noundef %i.bb, double noundef 0.000000e+00) #16 ; 2 uses
  %i.bm = extractvalue { double, double } %i.bl, 0
  %i.bn = extractvalue { double, double } %i.bl, 1
  br label %_ZmlRKSt7complexIdERKi.exit

_ZmlRKSt7complexIdERKi.exit:                      ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, %bb.h, %bb.i
  %i.bo = phi double [ %i.bg, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.bg, %bb.h ], [ %i.bm, %bb.i ]
  %i.bp = phi double [ %i.bi, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.bi, %bb.h ], [ %i.bn, %bb.i ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.022 ; 2 uses
  store double %i.bo, ptr %i.bq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store double %i.bp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  %i.br = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !70
}

declare void @_Z54error_pauliStrSumHasMoreQubitsThanSpecifiedInConjShiftv() local_unnamed_addr #4

declare void @_Z41error_pauliStrSumConjHasIncorrectNumTermsv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"long long", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 int", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!23 = !{!22, !19, i64 8}
!24 = !{!22, !19, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!22, !19, i64 16}
!29 = !{!"p1 _ZTSSt7complexIdE", !18, i64 0}
!30 = !{!9, !9, i64 0}
!31 = !{!"_ZTS11PauliStrSum", !14, i64 0, !18, i64 8, !29, i64 16, !19, i64 24}
!32 = !{!31, !18, i64 8}
!33 = !{!31, !14, i64 0}
!34 = !{!18, !18, i64 0}
!35 = !{!"double", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = distinct !{!37, !13, !16, !17}
!38 = distinct !{!38, !13, !17, !16}
!39 = distinct !{!39, !13, !16, !17}
!40 = distinct !{!40, !13}
!41 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !18, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTS5Qureg", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96}
!44 = !{!43, !10, i64 28}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13, !16, !17}
!47 = distinct !{!47, !13, !17, !16}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13, !16, !17}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!56 = distinct !{!56, !13}
!57 = !{!"p1 omnipotent char", !18, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"long", !9, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !60, i64 8, !9, i64 16}
!62 = !{!61, !60, i64 8}
!63 = !{!61, !57, i64 0}
!64 = !{!31, !29, i64 16}
!66 = distinct !{!66, i1 false, !"_Z22paulis_getPauliStrProd8PauliStrS_"}
!67 = distinct !{!67, !66, !"_Z22paulis_getPauliStrProd8PauliStrS_: argument 0"}
!68 = !{!67}
!69 = distinct !{!69, !13, !16, !17}
!70 = distinct !{!70, !13}
end_hunk_0
