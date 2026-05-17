inline.NumInlined: 89673
inline.NumDeleted: 14427
begin_hunk_0_@_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE9callAsciiERdRKNS0_10StringViewES9_:bb.a
_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread: ; preds = %bb.g, %bb.h, %_ZNK8facebook5velox10StringVieweqERKS1_.exit
  store double 1.000000e+00, ptr %1, align 8, !tbaa !4603
  br label %bb.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread16: ; preds = %._ZNK8facebook5velox10StringVieweqERKS1_.exit.thread16_crit_edge, %bb.h, %_ZNK8facebook5velox10StringVieweqERKS1_.exit
  %i.ak = phi ptr [ %.pre19, %._ZNK8facebook5velox10StringVieweqERKS1_.exit.thread16_crit_edge ], [ %i.y, %bb.h ], [ %i.aj, %_ZNK8facebook5velox10StringVieweqERKS1_.exit ]
  %i.al = phi ptr [ %.pre, %._ZNK8facebook5velox10StringVieweqERKS1_.exit.thread16_crit_edge ], [ %i.v, %bb.h ], [ %i.ai, %_ZNK8facebook5velox10StringVieweqERKS1_.exit ]
  %i.am = icmp ult i32 %i.q, 13
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = select i1 %i.am, ptr %i.an, ptr %i.al
  %i.ap = icmp ult i32 %i.r, 13
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.ak
  %i.as = and i64 %i.o, 4294967295
  %i.at = and i64 %i.p, 4294967295
  tail call void @_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIhEEvRdPKT_SA_mm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ao, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.at)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread16, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIhEEvRdPKT_SA_mm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1102", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = add nsw i64 %5, -1
  %i.b = mul nsw i64 %i.a, %4                     ; 2 uses
  %i.c = icmp sgt i64 %i.b, 1000000
  br i1 %i.c, label %bb.b, label %bb.e, !prof !96

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !4679
  store i64 %i.b, ptr %6, align 16, !tbaa !17, !alias.scope !4682, !noalias !4679
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1000000, ptr %i.d, align 16, !tbaa !17, !alias.scope !4682, !noalias !4679
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.246, i64 73, i64 51, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !4679
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIhEEvRdPKT_SA_mmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.246) #50
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %7, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !17
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated126 = tail call i64 @llvm.umax.i64(i64 %4, i64 %5)
  %i.k = lshr i64 %.sroa.speculated126, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.l, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0) ; 3 uses
  %i.n = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #50
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %4, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc69

.noexc69:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = shl nuw nsw i64 %4, 2                    ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #49 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !3
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %4
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc69, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11114.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.r, %.noexc69 ] ; 2 uses
  %.sroa.0109.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc69 ] ; 8 uses
  %i.s = icmp ugt i64 %5, 2305843009213693951
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #50
          to label %.noexc77 unwind label %bb.h

.noexc77:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.not.i.i.i.i71 = icmp eq i64 %5, 0
  br i1 %.not.i.i.i.i71, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70
  %i.t = shl nuw nsw i64 %5, 2                    ; 2 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #49
          to label %.noexc78 unwind label %bb.h   ; 3 uses

.noexc78:                                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.t, i1 false), !tbaa !3
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %5
  %i.w = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79:          ; preds = %.noexc78, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70 ], [ %i.w, %.noexc78 ]
  %.sroa.0103.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70 ], [ %i.u, %.noexc78 ] ; 6 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.lr.ph149

.lr.ph149:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79
  %i.x = trunc i64 %5 to i32
  %i.y = add nuw nsw i32 %spec.store.select, 1
  %i.z = sub nsw i32 0, %spec.store.select
  br label %bb.j

._crit_edge:                                      ; preds = %.loopexit
  %i.aa = icmp eq i32 %.155, 0
  br i1 %i.aa, label %._crit_edge.thread, label %.lr.ph153

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0109.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = ptrtoint ptr %.sroa.0109.0 to i64
  %i.ad = sub i64 %.sroa.11114.0, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0, i64 noundef %i.ad) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %.lr.ph149, %.loopexit
  %indvars.iv171 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next172, %.loopexit ] ; 5 uses
  %indvars.iv = phi i32 [ %i.z, %.lr.ph149 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.054147 = phi i32 [ 0, %.lr.ph149 ], [ %.155, %.loopexit ] ; 3 uses
  %i.ae = trunc i64 %indvars.iv171 to i32
  %i.af = sub i32 %i.ae, %spec.store.select
  %.sroa.speculated97 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = trunc i64 %indvars.iv171 to i32
  %i.ah = add i32 %i.y, %i.ag
  %.sroa.speculated92 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.x) ; 2 uses
  %i.ai = icmp slt i32 %.sroa.speculated97, %.sroa.speculated92
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.aj = zext nneg i32 %smax to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv171
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %sext = zext nneg i32 %.sroa.speculated92 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv168 = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next169, %bb.n ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv168
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  %i.ao = icmp eq i8 %i.al, %i.an
  br i1 %i.ao, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0103.0, i64 %indvars.iv168
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0103.0, i64 %indvars.iv168
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0109.0, i64 %indvars.iv171
  store i32 1, ptr %i.at, align 4, !tbaa !3
  store i32 1, ptr %i.as, align 4, !tbaa !3
  %i.au = add nsw i32 %.054147, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next169, %sext
  br i1 %i.av, label %bb.k, label %.loopexit, !llvm.loop !4685

.loopexit:                                        ; preds = %bb.n, %bb.j, %bb.m
  %.155 = phi i32 [ %i.au, %bb.m ], [ %.054147, %bb.j ], [ %.054147, %bb.n ] ; 3 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !4686

._crit_edge154:                                   ; preds = %bb.p
  %i.aw = fmul double %.151, 5.000000e-01
  %i.ax = sitofp i32 %.155 to double              ; 4 uses
  %8 = uitofp nneg i64 %4 to double
  %9 = fdiv double %i.ax, %8
  %10 = uitofp nneg i64 %5 to double
  %11 = fdiv double %i.ax, %10
  %12 = fadd double %9, %11
  %13 = fsub double %i.ax, %i.aw
  %14 = fdiv double %13, %i.ax
  %15 = fadd double %12, %14
  %i.ay = fdiv double %15, 3.000000e+00           ; 4 uses
  %i.az = fcmp ogt double %i.ay, f0x3FE6666666666666
  br i1 %i.az, label %.preheader, label %bb.r

.preheader:                                       ; preds = %._crit_edge154
  %.sroa.speculated123 = tail call i64 @llvm.umin.i64(i64 %5, i64 %4) ; 2 uses
  %.not165 = icmp eq i64 %5, 0
  br i1 %.not165, label %._crit_edge159, label %.lr.ph158

.lr.ph153:                                        ; preds = %._crit_edge, %bb.p
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.p ], [ 0, %._crit_edge ] ; 3 uses
  %.049151 = phi i32 [ %.2, %bb.p ], [ 0, %._crit_edge ] ; 2 uses
  %.050150 = phi double [ %.151, %bb.p ], [ 0.000000e+00, %._crit_edge ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0109.0, i64 %indvars.iv177
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.preheader142.preheader, label %bb.p

.preheader142.preheader:                          ; preds = %.lr.ph153
  %i.bd = sext i32 %.049151 to i64
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.preheader, %.preheader142
  %indvars.iv174 = phi i64 [ %i.bd, %.preheader142.preheader ], [ %indvars.iv.next175, %.preheader142 ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0103.0, i64 %indvars.iv174
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = icmp eq i32 %i.bf, 0
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  br i1 %i.bg, label %.preheader142, label %bb.o, !llvm.loop !4687

bb.o:                                             ; preds = %.preheader142
  %i.bh = trunc nsw i64 %indvars.iv174 to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv177
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17
  %i.bk = add nsw i32 %i.bh, 1
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %indvars.iv174
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %.not = icmp eq i8 %i.bj, %i.bm
  %i.bn = fadd double %.050150, 1.000000e+00
  %spec.select = select i1 %.not, double %.050150, double %i.bn
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph153
  %.151 = phi double [ %.050150, %.lr.ph153 ], [ %spec.select, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %.049151, %.lr.ph153 ], [ %i.bk, %bb.o ]
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next178, %4
  br i1 %exitcond180.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !4688

.lr.ph158:                                        ; preds = %.preheader, %bb.q
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv181
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv181
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = icmp eq i8 %i.bp, %i.br
  br i1 %i.bs, label %bb.q, label %._crit_edge159.loopexit

bb.q:                                             ; preds = %.lr.ph158
  %indvars.iv.next182 = add nuw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %.sroa.speculated123
  br i1 %exitcond186.not, label %._crit_edge159.loopexit, label %.lr.ph158, !llvm.loop !4689

._crit_edge159.loopexit:                          ; preds = %.lr.ph158, %bb.q
  %.0141.lcssa.ph.in = phi i64 [ %.sroa.speculated123, %bb.q ], [ %indvars.iv181, %.lr.ph158 ]
  %.0141.lcssa.ph = trunc i64 %.0141.lcssa.ph.in to i32
  %i.bt = tail call i32 @llvm.umin.i32(i32 %.0141.lcssa.ph, i32 4)
  %i.bu = uitofp nneg i32 %i.bt to double
  %i.bv = fmul nnan double %i.bu, 1.000000e-01
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %.preheader
  %.0141.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.bv, %._crit_edge159.loopexit ]
  %i.bw = fsub nnan double 1.000000e+00, %i.ay
  %i.bx = fmul double %i.bw, %.0141.lcssa
  %i.by = fadd double %i.ay, %i.bx
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge159, %._crit_edge154
  %.047 = phi double [ %i.by, %._crit_edge159 ], [ %i.ay, %._crit_edge154 ]
  %i.bz = fmul double %.047, 1.000000e+02
  %i.ca = tail call double @llvm.round.f64(double %i.bz)
  %i.cb = fdiv double %i.ca, 1.000000e+02
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79, %._crit_edge, %bb.r
  %storemerge = phi double [ %i.cb, %bb.r ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79 ]
  store double %storemerge, ptr %1, align 8, !tbaa !4603
  %.not.i.i.i84 = icmp eq ptr %.sroa.0103.0, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIiSaIiEED2Ev.exit85, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.cc = ptrtoint ptr %.sroa.0103.0 to i64
  %i.cd = sub i64 %.sroa.11.0, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0, i64 noundef %i.cd) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit85

_ZNSt6vectorIiSaIiEED2Ev.exit85:                  ; preds = %._crit_edge.thread, %bb.s
  %.not.i.i.i86 = icmp eq ptr %.sroa.0109.0, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIiSaIiEED2Ev.exit87, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85
  %i.ce = ptrtoint ptr %.sroa.0109.0 to i64
  %i.cf = sub i64 %.sroa.11114.0, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0, i64 noundef %i.cf) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit87

_ZNSt6vectorIiSaIiEED2Ev.exit87:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85, %bb.t
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ]
  resume { ptr, i32 } %.pn67
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.1540) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.1542, align 8           ; 6 uses
  %6 = alloca %class.anon.1541, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4690

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE4callERdRKNS0_10StringViewES9_:bb.a

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %bb.r, %bb.q, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn.pn, %bb.q ], [ %.pn.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bm = load ptr, ptr %5, align 8, !tbaa !746   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIiSaIiEED2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit17
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !749
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit19

_ZNSt6vectorIiSaIiEED2Ev.exit19:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit17, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIiEEvRdPKT_SA_mm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1102", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = add nsw i64 %5, -1
  %i.b = mul nsw i64 %i.a, %4                     ; 2 uses
  %i.c = icmp sgt i64 %i.b, 1000000
  br i1 %i.c, label %bb.b, label %bb.e, !prof !96

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !4749
  store i64 %i.b, ptr %6, align 16, !tbaa !17, !alias.scope !4752, !noalias !4749
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1000000, ptr %i.d, align 16, !tbaa !17, !alias.scope !4752, !noalias !4749
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.246, i64 73, i64 51, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !4749
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIiEEvRdPKT_SA_mmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.246) #50
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %7, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !17
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated126 = tail call i64 @llvm.umax.i64(i64 %4, i64 %5)
  %i.k = lshr i64 %.sroa.speculated126, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.l, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0) ; 3 uses
  %i.n = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #50
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %4, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc69

.noexc69:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = shl nuw nsw i64 %4, 2                    ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #49 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !3
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %4
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc69, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11114.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.r, %.noexc69 ] ; 2 uses
  %.sroa.0109.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc69 ] ; 8 uses
  %i.s = icmp ugt i64 %5, 2305843009213693951
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #50
          to label %.noexc77 unwind label %bb.h

.noexc77:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.not.i.i.i.i71 = icmp eq i64 %5, 0
  br i1 %.not.i.i.i.i71, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70
  %i.t = shl nuw nsw i64 %5, 2                    ; 2 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #49
          to label %.noexc78 unwind label %bb.h   ; 3 uses

.noexc78:                                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.t, i1 false), !tbaa !3
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %5
  %i.w = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79:          ; preds = %.noexc78, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70 ], [ %i.w, %.noexc78 ]
  %.sroa.0103.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i70 ], [ %i.u, %.noexc78 ] ; 6 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.lr.ph149

.lr.ph149:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79
  %i.x = trunc i64 %5 to i32
  %i.y = add nuw nsw i32 %spec.store.select, 1
  %i.z = sub nsw i32 0, %spec.store.select
  br label %bb.j

._crit_edge:                                      ; preds = %.loopexit
  %i.aa = icmp eq i32 %.155, 0
  br i1 %i.aa, label %._crit_edge.thread, label %.lr.ph153

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0109.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = ptrtoint ptr %.sroa.0109.0 to i64
  %i.ad = sub i64 %.sroa.11114.0, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0, i64 noundef %i.ad) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %.lr.ph149, %.loopexit
  %indvars.iv171 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next172, %.loopexit ] ; 5 uses
  %indvars.iv = phi i32 [ %i.z, %.lr.ph149 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.054147 = phi i32 [ 0, %.lr.ph149 ], [ %.155, %.loopexit ] ; 3 uses
  %i.ae = trunc i64 %indvars.iv171 to i32
  %i.af = sub i32 %i.ae, %spec.store.select
  %.sroa.speculated97 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = trunc i64 %indvars.iv171 to i32
  %i.ah = add i32 %i.y, %i.ag
  %.sroa.speculated92 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.x) ; 2 uses
  %i.ai = icmp slt i32 %.sroa.speculated97, %.sroa.speculated92
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.aj = zext nneg i32 %smax to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv171
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %sext = zext nneg i32 %.sroa.speculated92 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv168 = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next169, %bb.n ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv168
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0103.0, i64 %indvars.iv168
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0103.0, i64 %indvars.iv168
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0109.0, i64 %indvars.iv171
  store i32 1, ptr %i.at, align 4, !tbaa !3
  store i32 1, ptr %i.as, align 4, !tbaa !3
  %i.au = add nsw i32 %.054147, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next169, %sext
  br i1 %i.av, label %bb.k, label %.loopexit, !llvm.loop !4755

.loopexit:                                        ; preds = %bb.n, %bb.j, %bb.m
  %.155 = phi i32 [ %i.au, %bb.m ], [ %.054147, %bb.j ], [ %.054147, %bb.n ] ; 3 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !4756

._crit_edge154:                                   ; preds = %bb.p
  %i.aw = fmul double %.151, 5.000000e-01
  %i.ax = sitofp i32 %.155 to double              ; 4 uses
  %8 = uitofp nneg i64 %4 to double
  %9 = fdiv double %i.ax, %8
  %10 = uitofp nneg i64 %5 to double
  %11 = fdiv double %i.ax, %10
  %12 = fadd double %9, %11
  %13 = fsub double %i.ax, %i.aw
  %14 = fdiv double %13, %i.ax
  %15 = fadd double %12, %14
  %i.ay = fdiv double %15, 3.000000e+00           ; 4 uses
  %i.az = fcmp ogt double %i.ay, f0x3FE6666666666666
  br i1 %i.az, label %.preheader, label %bb.r

.preheader:                                       ; preds = %._crit_edge154
  %.sroa.speculated123 = tail call i64 @llvm.umin.i64(i64 %5, i64 %4) ; 2 uses
  %.not165 = icmp eq i64 %5, 0
  br i1 %.not165, label %._crit_edge159, label %.lr.ph158

.lr.ph153:                                        ; preds = %._crit_edge, %bb.p
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.p ], [ 0, %._crit_edge ] ; 3 uses
  %.049151 = phi i32 [ %.2, %bb.p ], [ 0, %._crit_edge ] ; 2 uses
  %.050150 = phi double [ %.151, %bb.p ], [ 0.000000e+00, %._crit_edge ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0109.0, i64 %indvars.iv177
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.preheader142.preheader, label %bb.p

.preheader142.preheader:                          ; preds = %.lr.ph153
  %i.bd = sext i32 %.049151 to i64
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.preheader, %.preheader142
  %indvars.iv174 = phi i64 [ %i.bd, %.preheader142.preheader ], [ %indvars.iv.next175, %.preheader142 ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0103.0, i64 %indvars.iv174
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = icmp eq i32 %i.bf, 0
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  br i1 %i.bg, label %.preheader142, label %bb.o, !llvm.loop !4757

bb.o:                                             ; preds = %.preheader142
  %i.bh = trunc nsw i64 %indvars.iv174 to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv177
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = add nsw i32 %i.bh, 1
  %i.bl = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv174
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %.not = icmp eq i32 %i.bj, %i.bm
  %i.bn = fadd double %.050150, 1.000000e+00
  %spec.select = select i1 %.not, double %.050150, double %i.bn
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph153
  %.151 = phi double [ %.050150, %.lr.ph153 ], [ %spec.select, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %.049151, %.lr.ph153 ], [ %i.bk, %bb.o ]
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next178, %4
  br i1 %exitcond180.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !4758

.lr.ph158:                                        ; preds = %.preheader, %bb.q
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv181
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv181
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %bb.q, label %._crit_edge159.loopexit

bb.q:                                             ; preds = %.lr.ph158
  %indvars.iv.next182 = add nuw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %.sroa.speculated123
  br i1 %exitcond186.not, label %._crit_edge159.loopexit, label %.lr.ph158, !llvm.loop !4759

._crit_edge159.loopexit:                          ; preds = %.lr.ph158, %bb.q
  %.0141.lcssa.ph.in = phi i64 [ %.sroa.speculated123, %bb.q ], [ %indvars.iv181, %.lr.ph158 ]
  %.0141.lcssa.ph = trunc i64 %.0141.lcssa.ph.in to i32
  %i.bt = tail call i32 @llvm.umin.i32(i32 %.0141.lcssa.ph, i32 4)
  %i.bu = uitofp nneg i32 %i.bt to double
  %i.bv = fmul nnan double %i.bu, 1.000000e-01
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %.preheader
  %.0141.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.bv, %._crit_edge159.loopexit ]
  %i.bw = fsub nnan double 1.000000e+00, %i.ay
  %i.bx = fmul double %i.bw, %.0141.lcssa
  %i.by = fadd double %i.ay, %i.bx
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge159, %._crit_edge154
  %.047 = phi double [ %i.by, %._crit_edge159 ], [ %i.ay, %._crit_edge154 ]
  %i.bz = fmul double %.047, 1.000000e+02
  %i.ca = tail call double @llvm.round.f64(double %i.bz)
  %i.cb = fdiv double %i.ca, 1.000000e+02
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79, %._crit_edge, %bb.r
  %storemerge = phi double [ %i.cb, %bb.r ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit79 ]
  store double %storemerge, ptr %1, align 8, !tbaa !4603
  %.not.i.i.i84 = icmp eq ptr %.sroa.0103.0, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIiSaIiEED2Ev.exit85, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.cc = ptrtoint ptr %.sroa.0103.0 to i64
  %i.cd = sub i64 %.sroa.11.0, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0, i64 noundef %i.cd) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit85

_ZNSt6vectorIiSaIiEED2Ev.exit85:                  ; preds = %._crit_edge.thread, %bb.s
  %.not.i.i.i86 = icmp eq ptr %.sroa.0109.0, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIiSaIiEED2Ev.exit87, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85
  %i.ce = ptrtoint ptr %.sroa.0109.0 to i64
  %i.cf = sub i64 %.sroa.11114.0, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0, i64 noundef %i.cf) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit87

_ZNSt6vectorIiSaIiEED2Ev.exit87:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85, %bb.t
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ]
  resume { ptr, i32 } %.pn67
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.1545) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.1547, align 8           ; 6 uses
  %6 = alloca %class.anon.1546, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29JaroWinklerSimilarityFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharESE_EEEJSE_SE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4760

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
end_hunk_1
