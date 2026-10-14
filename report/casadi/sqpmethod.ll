Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sqpmethod?download=true
inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZNK6casadi9Sqpmethod5solveEPv:._crit_edge.i.i
_ZNK6casadi9Sqpmethod12calc_gamma_1EPNS_15SqpmethodMemoryE.exit1046: ; preds = %.lr.ph.i.i1041.epil.preheader, %_ZNK6casadi9Sqpmethod12calc_gamma_1EPNS_15SqpmethodMemoryE.exit1046.loopexit.unr-lcssa, %bb.fy
  %.0.lcssa.i.i1038 = phi double [ 0.000000e+00, %bb.fy ], [ %i.crw, %_ZNK6casadi9Sqpmethod12calc_gamma_1EPNS_15SqpmethodMemoryE.exit1046.loopexit.unr-lcssa ], [ %i.crz, %.lr.ph.i.i1041.epil.preheader ]
  %i.csa = fmul double %i.crl, %.0.lcssa.i.i1038  ; 2 uses
  %i.csb = load double, ptr %i.bj, align 8, !tbaa !145 ; 2 uses
  %i.csc = fcmp olt double %i.csa, %i.csb
  %.sroa.speculated.i1039 = select i1 %i.csc, double %i.csb, double %i.csa
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNK6casadi9Sqpmethod12calc_gamma_1EPNS_15SqpmethodMemoryE.exit1046, %bb.fx, %bb.fw, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit1037
  %.6 = phi double [ %.51502, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit1037 ], [ %.51502, %bb.fw ], [ %.51502, %bb.fx ], [ %.sroa.speculated.i1039, %_ZNK6casadi9Sqpmethod12calc_gamma_1EPNS_15SqpmethodMemoryE.exit1046 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.ga

bb.ga:                                            ; preds = %bb.cm, %bb.fz, %bb.ci
  %.4379 = phi i64 [ %.0375, %bb.cm ], [ %.2377, %bb.fz ], [ %.0375, %bb.ci ]
  %.4374 = phi i8 [ %.0370, %bb.cm ], [ %.2372, %bb.fz ], [ %.0370, %bb.ci ]
  %.6369 = phi i8 [ %.1364, %bb.cm ], [ %.43671499, %bb.fz ], [ %.1364, %bb.ci ]
  %.8 = phi double [ %.sroa.speculated.i600, %bb.cm ], [ %.6, %bb.fz ], [ %.1330, %bb.ci ]
  %.pre = load i64, ptr %i.m, align 8, !tbaa !166
  br label %._crit_edge.i.i437

bb.gb:                                            ; preds = %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %bb.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, %bb.dd
  %.pn426 = phi { ptr, i32 } [ %i.amo, %bb.dd ], [ %.pn422.pn, %bb.fp ], [ %i.amp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ], [ %i.bsn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %i.biq, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473

.thread1104:                                      ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.an, %bb.ai, %bb.ae, %bb.y, %bb.c, %bb.d
  %.4384 = phi i32 [ 1, %bb.c ], [ 0, %bb.ai ], [ 0, %bb.an ], [ 1, %bb.d ], [ 0, %bb.y ], [ 0, %bb.ae ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480 ], [ 1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.csd = load ptr, ptr %2, align 8, !tbaa !25   ; 2 uses
  %i.cse = icmp eq ptr %i.csd, %i.i
  br i1 %i.cse, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047: ; preds = %.thread1104
  %i.csf = load i64, ptr %i.i, align 8, !tbaa !26
  %i.csg = add i64 %i.csf, 1
  call void @_ZdlPvm(ptr noundef %i.csd, i64 noundef %i.csg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049: ; preds = %.thread1104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i32 %.4384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473: ; preds = %bb.u, %.loopexit1119, %.loopexit.split-lp1120, %.loopexit1118, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %bb.ax, %bb.bj, %bb.bw, %bb.cr, %bb.gb, %bb.cn, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %.pn432 = phi { ptr, i32 } [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.agr, %bb.cr ], [ %.pn409, %bb.ax ], [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ %.pn402, %bb.bj ], [ %.pn398, %bb.bw ], [ %i.aeu, %bb.cn ], [ %i.aby, %bb.ce ], [ %.pn426, %bb.gb ], [ %lpad.loopexit.split-lp1122, %.loopexit.split-lp1120 ], [ %lpad.loopexit, %.loopexit1118 ], [ %lpad.loopexit1121, %.loopexit1119 ], [ %i.ls, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.csh = load ptr, ptr %2, align 8, !tbaa !25   ; 2 uses
  %i.csi = icmp eq ptr %i.csh, %i.i
  br i1 %i.csi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1052, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1050

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1050: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473
  %i.csj = load i64, ptr %i.i, align 8, !tbaa !26
  %i.csk = add i64 %i.csj, 1
  call void @_ZdlPvm(ptr noundef %i.csh, i64 noundef %i.csk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1052

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1052: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1050
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  resume { ptr, i32 } %.pn432
}

declare noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi9Sqpmethod15print_iterationEv(ptr noundef nonnull align 8 dereferenceable(2394) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi9Sqpmethod15print_iterationExdddddxbbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2394) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i64 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr nofree noundef readonly align 8 captures(none) %10) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.135, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5)
  %i.a = fcmp ogt double %6, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.log10.f64(double %6)
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.136, double noundef %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.139, i64 noundef %7)
  %.str.141..str.140 = select i1 %8, ptr @.str.141, ptr @.str.140
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.str.141..str.140)
  br i1 %9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.142)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.143)
  %i.c = load ptr, ptr %10, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.c)
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.108)
  ret void
}

declare noundef i32 @_ZNK6casadi6Nlpsol8callbackEPNS_12NlpsolMemoryE(ptr noundef nonnull align 8 dereferenceable(1984), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.467) #25
  unreachable

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  ret ptr %i.x
}

declare void @_ZN6casadi12ScopedTimingC1ERNS_6FStatsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi14convexify_evalIdEEiPKNS_23casadi_convexify_configIT_EEPKS2_PS2_PxS8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !177  ; 7 uses
  %i.e = getelementptr [8 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !177  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !593  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177  ; 6 uses
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !177  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !594
  %.not = icmp eq i32 %i.p, 0
  %.not225 = icmp eq ptr %1, %2                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not225, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not15.i = icmp eq ptr %1, null
  %i.q = icmp sgt i64 %i.g, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.d
  br i1 %i.q, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.g, 8
  %5 = ptrtoaddr ptr %4 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.r = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond460 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond460, label %.lr.ph.i.preheader470, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775804      ; 4 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %i.t = getelementptr i8, ptr %4, i64 %i.s
  %i.u = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.v  ; 2 uses
  %next.gep438 = getelementptr i8, ptr %1, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep438, i64 16
  %wide.load = load <2 x double>, ptr %next.gep438, align 8, !tbaa !145
  %wide.load439 = load <2 x double>, ptr %i.w, align 8, !tbaa !145
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !145
  store <2 x double> %wide.load439, ptr %i.x, align 8, !tbaa !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !552

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader470

.lr.ph.i.preheader470:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.t, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %i.z = sub nsw i64 %i.g, %.020.i.ph
  %xtraiter478.a = and i64 %i.z, 7                ; 2 uses
  %lcmp.mod479.not.a = icmp eq i64 %xtraiter478.a, 0
  br i1 %lcmp.mod479.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader470, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader470 ]
  %.01019.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader470 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader470 ] ; 2 uses
  %prol.iter480.a = phi i64 [ %prol.iter480.next.a, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader470 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.ab = load double, ptr %.01218.i.prol, align 8, !tbaa !145
  %i.ac = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.ab, ptr %.01019.i.prol, align 8, !tbaa !145
  %i.ad = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter480.next.a = add i64 %prol.iter480.a, 1 ; 2 uses
  %prol.iter480.cmp.not.a = icmp eq i64 %prol.iter480.next.a, %xtraiter478.a
  br i1 %prol.iter480.cmp.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !553

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader470
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader470 ], [ %i.ad, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader470 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader470 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %.020.i.ph, %i.g
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.q, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.ag = shl nuw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %i.ag, i1 false), !tbaa !145
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ai = load double, ptr %.01218.i, align 8, !tbaa !145
  %i.aj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ai, ptr %.01019.i, align 8, !tbaa !145
  %i.ak = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.al = load double, ptr %i.ah, align 8, !tbaa !145
  %i.am = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.al, ptr %i.aj, align 8, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ao, ptr %i.am, align 8, !tbaa !145
  %i.aq = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ar = load double, ptr %i.an, align 8, !tbaa !145
  %i.as = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ar, ptr %i.ap, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.au = load double, ptr %i.aq, align 8, !tbaa !145
  %i.av = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.au, ptr %i.as, align 8, !tbaa !145
  %i.aw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.ax = load double, ptr %i.at, align 8, !tbaa !145
  %i.ay = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.ax, ptr %i.av, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !145
  %i.bb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ba, ptr %i.ay, align 8, !tbaa !145
  %i.bc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bd = load double, ptr %i.az, align 8, !tbaa !145
  %i.be = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bd, ptr %i.bb, align 8, !tbaa !145
  %i.bf = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bf, %i.g
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !554

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.g ; 15 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 10 uses
  %i.bn = icmp sgt i64 %i.d, 0
  br i1 %i.bn, label %.lr.ph52.preheader.i, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph52.preheader.i:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %.pre.i = load i64, ptr %i.bk, align 8, !tbaa !177
  br label %.lr.ph52.i

.loopexit.i:                                      ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %.preheader.i232
  %exitcond56.not.i = icmp eq i64 %i.bp, %i.d
  br i1 %exitcond56.not.i, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph52.i, !llvm.loop !555

.lr.ph52.i:                                       ; preds = %.loopexit.i, %.lr.ph52.preheader.i
  %i.bo = phi i64 [ %i.br, %.loopexit.i ], [ %.pre.i, %.lr.ph52.preheader.i ] ; 9 uses
  %.04150.i = phi i64 [ %i.bp, %.loopexit.i ], [ 0, %.lr.ph52.preheader.i ] ; 2 uses
  %i.bp = add nuw nsw i64 %.04150.i, 1            ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !177 ; 8 uses
  %i.bs = icmp slt i64 %i.bo, %i.br               ; 2 uses
  br i1 %i.bs, label %.lr.ph.i233.preheader, label %._crit_edge.i

.lr.ph.i233.preheader:                            ; preds = %.lr.ph52.i
  %i.bt = sub i64 %i.br, %i.bo
  %xtraiter481.a = and i64 %i.bt, 3               ; 2 uses
  %lcmp.mod482.not.a = icmp eq i64 %xtraiter481.a, 0
  br i1 %lcmp.mod482.not.a, label %.lr.ph.i233.prol.loopexit, label %.lr.ph.i233.prol

.lr.ph.i233.prol:                                 ; preds = %.lr.ph.i233.preheader, %.lr.ph.i233.prol
  %.043.i.prol = phi i64 [ %i.bx, %.lr.ph.i233.prol ], [ %i.bo, %.lr.ph.i233.preheader ] ; 2 uses
  %prol.iter483.a = phi i64 [ %prol.iter483.next.a, %.lr.ph.i233.prol ], [ 0, %.lr.ph.i233.preheader ]
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.043.i.prol
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !177
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bv
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !145
  %i.bx = add nsw i64 %.043.i.prol, 1             ; 2 uses
  %prol.iter483.next.a = add i64 %prol.iter483.a, 1 ; 2 uses
  %prol.iter483.cmp.not.a = icmp eq i64 %prol.iter483.next.a, %xtraiter481.a
  br i1 %prol.iter483.cmp.not.a, label %.lr.ph.i233.prol.loopexit, label %.lr.ph.i233.prol, !llvm.loop !556

.lr.ph.i233.prol.loopexit:                        ; preds = %.lr.ph.i233.prol, %.lr.ph.i233.preheader
  %.043.i.unr = phi i64 [ %i.bo, %.lr.ph.i233.preheader ], [ %i.bx, %.lr.ph.i233.prol ]
  %i.by = sub i64 %i.bo, %i.br
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.i, label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %.lr.ph.i233.prol.loopexit, %.lr.ph.i233
  %.043.i = phi i64 [ %i.cp, %.lr.ph.i233 ], [ %.043.i.unr, %.lr.ph.i233.prol.loopexit ] ; 5 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.043.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !177
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cb
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !145
  %i.cd = getelementptr [8 x i8], ptr %i.bm, i64 %.043.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !177
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cf
  store double 0.000000e+00, ptr %i.cg, align 8, !tbaa !145
  %i.ch = getelementptr [8 x i8], ptr %i.bm, i64 %.043.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !177
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cj
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !145
  %i.cl = getelementptr [8 x i8], ptr %i.bm, i64 %.043.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !177
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cn
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !145
  %i.cp = add nsw i64 %.043.i, 4                  ; 2 uses
  %exitcond.not.i234.3 = icmp eq i64 %i.cp, %i.br
  br i1 %exitcond.not.i234.3, label %._crit_edge.i, label %.lr.ph.i233, !llvm.loop !557

._crit_edge.i:                                    ; preds = %.lr.ph.i233.prol.loopexit, %.lr.ph.i233, %.lr.ph52.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04150.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !177 ; 5 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bp
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !177 ; 4 uses
  %i.cu = icmp slt i64 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph47.i.preheader, label %.preheader.i232

.lr.ph47.i.preheader:                             ; preds = %._crit_edge.i
  %i.cv = sub i64 %i.ct, %i.cr
  %xtraiter484 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol

end_hunk_0
begin_hunk_1_@_ZN6casadi14convexify_evalIdEEiPKNS_23casadi_convexify_configIT_EEPKS2_PS2_PxS8_:bb.a
  %.04150.i238 = phi i64 [ %i.fr, %.loopexit.i241 ], [ 0, %.lr.ph52.preheader.i235 ] ; 2 uses
  %i.fr = add nuw nsw i64 %.04150.i238, 1         ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !177 ; 8 uses
  %i.fu = icmp slt i64 %i.fq, %i.ft               ; 2 uses
  br i1 %i.fu, label %.lr.ph.i249.preheader, label %._crit_edge.i239

.lr.ph.i249.preheader:                            ; preds = %.lr.ph52.i237
  %i.fv = sub i64 %i.ft, %i.fq
  %xtraiter = and i64 %i.fv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i249.prol.loopexit, label %.lr.ph.i249.prol

.lr.ph.i249.prol:                                 ; preds = %.lr.ph.i249.preheader, %.lr.ph.i249.prol
  %.043.i250.prol = phi i64 [ %i.fz, %.lr.ph.i249.prol ], [ %i.fq, %.lr.ph.i249.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i249.prol ], [ 0, %.lr.ph.i249.preheader ]
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.043.i250.prol
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !177
  %i.fy = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fx
  store double 0.000000e+00, ptr %i.fy, align 8, !tbaa !145
  %i.fz = add nsw i64 %.043.i250.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i249.prol.loopexit, label %.lr.ph.i249.prol, !llvm.loop !562

.lr.ph.i249.prol.loopexit:                        ; preds = %.lr.ph.i249.prol, %.lr.ph.i249.preheader
  %.043.i250.unr = phi i64 [ %i.fq, %.lr.ph.i249.preheader ], [ %i.fz, %.lr.ph.i249.prol ]
  %i.ga = sub i64 %i.fq, %i.ft
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge.i239, label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %.lr.ph.i249.prol.loopexit, %.lr.ph.i249
  %.043.i250 = phi i64 [ %i.gr, %.lr.ph.i249 ], [ %.043.i250.unr, %.lr.ph.i249.prol.loopexit ] ; 5 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !177
  %i.ge = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gd
  store double 0.000000e+00, ptr %i.ge, align 8, !tbaa !145
  %i.gf = getelementptr [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !177
  %i.gi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gh
  store double 0.000000e+00, ptr %i.gi, align 8, !tbaa !145
  %i.gj = getelementptr [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !177
  %i.gm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gl
  store double 0.000000e+00, ptr %i.gm, align 8, !tbaa !145
  %i.gn = getelementptr [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.go = getelementptr i8, ptr %i.gn, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !177
  %i.gq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gp
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !145
  %i.gr = add nsw i64 %.043.i250, 4               ; 2 uses
  %exitcond.not.i251.3 = icmp eq i64 %i.gr, %i.ft
  br i1 %exitcond.not.i251.3, label %._crit_edge.i239, label %.lr.ph.i249, !llvm.loop !557

._crit_edge.i239:                                 ; preds = %.lr.ph.i249.prol.loopexit, %.lr.ph.i249, %.lr.ph52.i237
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.04150.i238
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !177 ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fr
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !177 ; 4 uses
  %i.gw = icmp slt i64 %i.gt, %i.gv
  br i1 %i.gw, label %.lr.ph47.i246.preheader, label %.preheader.i240

.lr.ph47.i246.preheader:                          ; preds = %._crit_edge.i239
  %i.gx = sub i64 %i.gv, %i.gt
  %xtraiter472 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %.lr.ph47.i246.prol.loopexit, label %.lr.ph47.i246.prol

.lr.ph47.i246.prol:                               ; preds = %.lr.ph47.i246.preheader, %.lr.ph47.i246.prol
  %.145.i247.prol = phi i64 [ %i.hd, %.lr.ph47.i246.prol ], [ %i.gt, %.lr.ph47.i246.preheader ] ; 3 uses
  %prol.iter474 = phi i64 [ %prol.iter474.next, %.lr.ph47.i246.prol ], [ 0, %.lr.ph47.i246.preheader ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %1, i64 %.145.i247.prol
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !145
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.145.i247.prol
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !177
  %i.hc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hb
  store double %i.gz, ptr %i.hc, align 8, !tbaa !145
  %i.hd = add nsw i64 %.145.i247.prol, 1          ; 2 uses
  %prol.iter474.next = add i64 %prol.iter474, 1   ; 2 uses
  %prol.iter474.cmp.not = icmp eq i64 %prol.iter474.next, %xtraiter472
  br i1 %prol.iter474.cmp.not, label %.lr.ph47.i246.prol.loopexit, label %.lr.ph47.i246.prol, !llvm.loop !563

.lr.ph47.i246.prol.loopexit:                      ; preds = %.lr.ph47.i246.prol, %.lr.ph47.i246.preheader
  %.145.i247.unr = phi i64 [ %i.gt, %.lr.ph47.i246.preheader ], [ %i.hd, %.lr.ph47.i246.prol ]
  %i.he = sub i64 %i.gt, %i.gv
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %.preheader.i240, label %.lr.ph47.i246

.preheader.i240:                                  ; preds = %.lr.ph47.i246.prol.loopexit, %.lr.ph47.i246, %._crit_edge.i239
  br i1 %i.fu, label %.lr.ph49.i243.preheader, label %.loopexit.i241

.lr.ph49.i243.preheader:                          ; preds = %.preheader.i240
  %i.hg = sub i64 %i.ft, %i.fq
  %xtraiter475 = and i64 %i.hg, 3                 ; 2 uses
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.lr.ph49.i243.prol.loopexit, label %.lr.ph49.i243.prol

.lr.ph49.i243.prol:                               ; preds = %.lr.ph49.i243.preheader, %.lr.ph49.i243.prol
  %.248.i244.prol = phi i64 [ %i.hm, %.lr.ph49.i243.prol ], [ %i.fq, %.lr.ph49.i243.preheader ] ; 3 uses
  %prol.iter477 = phi i64 [ %prol.iter477.next, %.lr.ph49.i243.prol ], [ 0, %.lr.ph49.i243.preheader ]
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.248.i244.prol
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !177
  %i.hj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !145
  %i.hl = getelementptr inbounds [8 x i8], ptr %2, i64 %.248.i244.prol
  store double %i.hk, ptr %i.hl, align 8, !tbaa !145
  %i.hm = add nsw i64 %.248.i244.prol, 1          ; 2 uses
  %prol.iter477.next = add i64 %prol.iter477, 1   ; 2 uses
  %prol.iter477.cmp.not = icmp eq i64 %prol.iter477.next, %xtraiter475
  br i1 %prol.iter477.cmp.not, label %.lr.ph49.i243.prol.loopexit, label %.lr.ph49.i243.prol, !llvm.loop !564

.lr.ph49.i243.prol.loopexit:                      ; preds = %.lr.ph49.i243.prol, %.lr.ph49.i243.preheader
  %.248.i244.unr = phi i64 [ %i.fq, %.lr.ph49.i243.preheader ], [ %i.hm, %.lr.ph49.i243.prol ]
  %i.hn = sub i64 %i.fq, %i.ft
  %i.ho = icmp ugt i64 %i.hn, -4
  br i1 %i.ho, label %.loopexit.i241, label %.lr.ph49.i243

.lr.ph47.i246:                                    ; preds = %.lr.ph47.i246.prol.loopexit, %.lr.ph47.i246
  %.145.i247 = phi i64 [ %i.im, %.lr.ph47.i246 ], [ %.145.i247.unr, %.lr.ph47.i246.prol.loopexit ] ; 6 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %1, i64 %.145.i247
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !145
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.145.i247
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !177
  %i.ht = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hs
  store double %i.hq, ptr %i.ht, align 8, !tbaa !145
  %i.hu = add nsw i64 %.145.i247, 1               ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !145
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hu
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !177
  %i.hz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hy
  store double %i.hw, ptr %i.hz, align 8, !tbaa !145
  %i.ia = add nsw i64 %.145.i247, 2               ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !145
  %i.id = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ia
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !177
  %i.if = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ie
  store double %i.ic, ptr %i.if, align 8, !tbaa !145
  %i.ig = add nsw i64 %.145.i247, 3               ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !145
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ig
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !177
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik
  store double %i.ii, ptr %i.il, align 8, !tbaa !145
  %i.im = add nsw i64 %.145.i247, 4               ; 2 uses
  %exitcond54.not.i248.3 = icmp eq i64 %i.im, %i.gv
  br i1 %exitcond54.not.i248.3, label %.preheader.i240, label %.lr.ph47.i246, !llvm.loop !560

.lr.ph49.i243:                                    ; preds = %.lr.ph49.i243.prol.loopexit, %.lr.ph49.i243
  %.248.i244 = phi i64 [ %i.jk, %.lr.ph49.i243 ], [ %.248.i244.unr, %.lr.ph49.i243.prol.loopexit ] ; 6 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.248.i244
  %i.io = load i64, ptr %i.in, align 8, !tbaa !177
  %i.ip = getelementptr inbounds [8 x i8], ptr %4, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !145
  %i.ir = getelementptr inbounds [8 x i8], ptr %2, i64 %.248.i244
  store double %i.iq, ptr %i.ir, align 8, !tbaa !145
  %i.is = add nsw i64 %.248.i244, 1               ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !177
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !145
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %i.is
  store double %i.iw, ptr %i.ix, align 8, !tbaa !145
  %i.iy = add nsw i64 %.248.i244, 2               ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.iy
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !177
  %i.jb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !145
  %i.jd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iy
  store double %i.jc, ptr %i.jd, align 8, !tbaa !145
  %i.je = add nsw i64 %.248.i244, 3               ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !177
  %i.jh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !145
  %i.jj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.je
  store double %i.ji, ptr %i.jj, align 8, !tbaa !145
  %i.jk = add nsw i64 %.248.i244, 4               ; 2 uses
  %exitcond55.not.i245.3 = icmp eq i64 %i.jk, %i.ft
  br i1 %exitcond55.not.i245.3, label %.loopexit.i241, label %.lr.ph49.i243, !llvm.loop !561

bb.f:                                             ; preds = %bb.a
  %.not.i253 = icmp eq ptr %2, null
  %or.cond = or i1 %.not225, %.not.i253
  br i1 %or.cond, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not15.i254 = icmp eq ptr %1, null
  %i.jl = icmp sgt i64 %i.n, 0                    ; 2 uses
  br i1 %.not15.i254, label %.preheader.i262, label %.preheader16.i255

.preheader16.i255:                                ; preds = %bb.g
  br i1 %i.jl, label %.lr.ph.i257.preheader, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph.i257.preheader:                            ; preds = %.preheader16.i255
  %min.iters.check445 = icmp ult i64 %i.n, 8
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.jm = sub i64 %8, %7
  %diff.check443 = icmp ugt i64 %i.jm, -32
  %or.cond461 = or i1 %min.iters.check445, %diff.check443
  br i1 %or.cond461, label %.lr.ph.i257.preheader468, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph.i257.preheader
  %n.vec447 = and i64 %i.n, 9223372036854775804   ; 4 uses
  %i.jn = shl i64 %n.vec447, 3                    ; 2 uses
  %i.jo = getelementptr i8, ptr %2, i64 %i.jn
  %i.jp = getelementptr i8, ptr %1, i64 %i.jn
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %i.jq = shl i64 %index449, 3                    ; 2 uses
  %next.gep450 = getelementptr i8, ptr %2, i64 %i.jq ; 2 uses
  %next.gep451 = getelementptr i8, ptr %1, i64 %i.jq ; 2 uses
  %i.jr = getelementptr i8, ptr %next.gep451, i64 16
  %wide.load452 = load <2 x double>, ptr %next.gep451, align 8, !tbaa !145
  %wide.load453 = load <2 x double>, ptr %i.jr, align 8, !tbaa !145
  %i.js = getelementptr i8, ptr %next.gep450, i64 16
  store <2 x double> %wide.load452, ptr %next.gep450, align 8, !tbaa !145
  store <2 x double> %wide.load453, ptr %i.js, align 8, !tbaa !145
  %index.next454 = add nuw i64 %index449, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.jt, label %middle.block455, label %vector.body448, !llvm.loop !565

middle.block455:                                  ; preds = %vector.body448
  %cmp.n456 = icmp eq i64 %i.n, %n.vec447
  br i1 %cmp.n456, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph.i257.preheader468

.lr.ph.i257.preheader468:                         ; preds = %.lr.ph.i257.preheader, %middle.block455
  %.020.i258.ph = phi i64 [ 0, %.lr.ph.i257.preheader ], [ %n.vec447, %middle.block455 ] ; 4 uses
  %.01019.i259.ph = phi ptr [ %2, %.lr.ph.i257.preheader ], [ %i.jo, %middle.block455 ] ; 2 uses
  %.01218.i260.ph = phi ptr [ %1, %.lr.ph.i257.preheader ], [ %i.jp, %middle.block455 ] ; 2 uses
  %i.ju = sub nsw i64 %i.n, %.020.i258.ph
  %xtraiter490 = and i64 %i.ju, 7                 ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod491.not, label %.lr.ph.i257.prol.loopexit, label %.lr.ph.i257.prol

.lr.ph.i257.prol:                                 ; preds = %.lr.ph.i257.preheader468, %.lr.ph.i257.prol
  %.020.i258.prol = phi i64 [ %i.jy, %.lr.ph.i257.prol ], [ %.020.i258.ph, %.lr.ph.i257.preheader468 ]
  %.01019.i259.prol = phi ptr [ %i.jx, %.lr.ph.i257.prol ], [ %.01019.i259.ph, %.lr.ph.i257.preheader468 ] ; 2 uses
  %.01218.i260.prol = phi ptr [ %i.jv, %.lr.ph.i257.prol ], [ %.01218.i260.ph, %.lr.ph.i257.preheader468 ] ; 2 uses
  %prol.iter492 = phi i64 [ %prol.iter492.next, %.lr.ph.i257.prol ], [ 0, %.lr.ph.i257.preheader468 ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.01218.i260.prol, i64 8 ; 2 uses
  %i.jw = load double, ptr %.01218.i260.prol, align 8, !tbaa !145
  %i.jx = getelementptr inbounds nuw i8, ptr %.01019.i259.prol, i64 8 ; 2 uses
  store double %i.jw, ptr %.01019.i259.prol, align 8, !tbaa !145
  %i.jy = add nuw nsw i64 %.020.i258.prol, 1      ; 2 uses
  %prol.iter492.next = add i64 %prol.iter492, 1   ; 2 uses
  %prol.iter492.cmp.not = icmp eq i64 %prol.iter492.next, %xtraiter490
  br i1 %prol.iter492.cmp.not, label %.lr.ph.i257.prol.loopexit, label %.lr.ph.i257.prol, !llvm.loop !566

.lr.ph.i257.prol.loopexit:                        ; preds = %.lr.ph.i257.prol, %.lr.ph.i257.preheader468
  %.020.i258.unr = phi i64 [ %.020.i258.ph, %.lr.ph.i257.preheader468 ], [ %i.jy, %.lr.ph.i257.prol ]
  %.01019.i259.unr = phi ptr [ %.01019.i259.ph, %.lr.ph.i257.preheader468 ], [ %i.jx, %.lr.ph.i257.prol ]
  %.01218.i260.unr = phi ptr [ %.01218.i260.ph, %.lr.ph.i257.preheader468 ], [ %i.jv, %.lr.ph.i257.prol ]
  %i.jz = sub nsw i64 %.020.i258.ph, %i.n
  %i.ka = icmp ugt i64 %i.jz, -8
  br i1 %i.ka, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph.i257

.preheader.i262:                                  ; preds = %bb.g
  br i1 %i.jl, label %.lr.ph23.preheader.i263, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph23.preheader.i263:                          ; preds = %.preheader.i262
  %i.kb = shl nuw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 0, i64 %i.kb, i1 false), !tbaa !145
  br label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph.i257:                                      ; preds = %.lr.ph.i257.prol.loopexit, %.lr.ph.i257
  %.020.i258 = phi i64 [ %i.la, %.lr.ph.i257 ], [ %.020.i258.unr, %.lr.ph.i257.prol.loopexit ]
  %.01019.i259 = phi ptr [ %i.kz, %.lr.ph.i257 ], [ %.01019.i259.unr, %.lr.ph.i257.prol.loopexit ] ; 9 uses
  %.01218.i260 = phi ptr [ %i.kx, %.lr.ph.i257 ], [ %.01218.i260.unr, %.lr.ph.i257.prol.loopexit ] ; 9 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 8
  %i.kd = load double, ptr %.01218.i260, align 8, !tbaa !145
  %i.ke = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 8
  store double %i.kd, ptr %.01019.i259, align 8, !tbaa !145
  %i.kf = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 16
  %i.kg = load double, ptr %i.kc, align 8, !tbaa !145
  %i.kh = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 16
  store double %i.kg, ptr %i.ke, align 8, !tbaa !145
  %i.ki = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 24
  %i.kj = load double, ptr %i.kf, align 8, !tbaa !145
  %i.kk = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 24
  store double %i.kj, ptr %i.kh, align 8, !tbaa !145
  %i.kl = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 32
  %i.km = load double, ptr %i.ki, align 8, !tbaa !145
  %i.kn = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 32
  store double %i.km, ptr %i.kk, align 8, !tbaa !145
  %i.ko = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 40
  %i.kp = load double, ptr %i.kl, align 8, !tbaa !145
  %i.kq = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 40
  store double %i.kp, ptr %i.kn, align 8, !tbaa !145
  %i.kr = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 48
  %i.ks = load double, ptr %i.ko, align 8, !tbaa !145
  %i.kt = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 48
  store double %i.ks, ptr %i.kq, align 8, !tbaa !145
  %i.ku = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 56
  %i.kv = load double, ptr %i.kr, align 8, !tbaa !145
  %i.kw = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 56
  store double %i.kv, ptr %i.kt, align 8, !tbaa !145
  %i.kx = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 64
  %i.ky = load double, ptr %i.ku, align 8, !tbaa !145
  %i.kz = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 64
  store double %i.ky, ptr %i.kw, align 8, !tbaa !145
  %i.la = add nuw nsw i64 %.020.i258, 8           ; 2 uses
  %exitcond.not.i261.7 = icmp eq i64 %i.la, %i.n
  br i1 %exitcond.not.i261.7, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph.i257, !llvm.loop !567

_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit: ; preds = %.loopexit.i241, %.loopexit.i, %.lr.ph.i257.prol.loopexit, %.lr.ph.i257, %middle.block455, %.lr.ph23.preheader.i263, %.preheader.i262, %.preheader16.i255, %bb.e, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %bb.f
  %i.lb = load i32, ptr %0, align 8, !tbaa !595
  switch i32 %i.lb, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit [
    i32 0, label %bb.h
    i32 2, label %bb.m
    i32 1, label %bb.m
  ]

bb.h:                                             ; preds = %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !596
  %i.le = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 6 uses
  %i.lg = icmp sgt i64 %i.k, 0
  br i1 %i.lg, label %.lr.ph41.preheader.i, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit

.lr.ph41.preheader.i:                             ; preds = %bb.h
  %.pre.i265 = load i64, ptr %i.le, align 8, !tbaa !177 ; 2 uses
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i266, %.lr.ph41.preheader.i
  %i.lh = phi i64 [ %i.lk, %._crit_edge.i266 ], [ %.pre.i265, %.lr.ph41.preheader.i ] ; 7 uses
  %.039.i = phi double [ %.1.i, %._crit_edge.i266 ], [ 0.000000e+00, %.lr.ph41.preheader.i ]
  %.03238.i = phi i64 [ %i.li, %._crit_edge.i266 ], [ 0, %.lr.ph41.preheader.i ] ; 5 uses
  %i.li = add nuw nsw i64 %.03238.i, 1            ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !177 ; 5 uses
  %i.ll = icmp slt i64 %i.lh, %i.lk
  br i1 %i.ll, label %.lr.ph.i267.preheader, label %._crit_edge.i266

.lr.ph.i267.preheader:                            ; preds = %.lr.ph41.i
  %i.lm = sub i64 %i.lk, %i.lh
  %.neg = add i64 %i.lh, 1
  %xtraiter535 = and i64 %i.lm, 1
  %lcmp.mod536.not = icmp eq i64 %xtraiter535, 0
  br i1 %lcmp.mod536.not, label %.lr.ph.i267.prol.loopexit, label %.lr.ph.i267.prol

.lr.ph.i267.prol:                                 ; preds = %.lr.ph.i267.preheader
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lh
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !177
  %i.lp = icmp eq i64 %i.lo, %.03238.i            ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lh
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !145 ; 2 uses
  %i.ls = tail call double @llvm.fabs.f64(double %i.lr)
  %.130.i.prol = select i1 %i.lp, double %i.lr, double 0.000000e+00 ; 2 uses
  %.128.i.prol = select i1 %i.lp, double 0.000000e+00, double %i.ls ; 2 uses
  %i.lt = add nsw i64 %i.lh, 1
  br label %.lr.ph.i267.prol.loopexit

.lr.ph.i267.prol.loopexit:                        ; preds = %.lr.ph.i267.prol, %.lr.ph.i267.preheader
  %.130.i.lcssa.unr = phi double [ poison, %.lr.ph.i267.preheader ], [ %.130.i.prol, %.lr.ph.i267.prol ]
  %.128.i.lcssa.unr = phi double [ poison, %.lr.ph.i267.preheader ], [ %.128.i.prol, %.lr.ph.i267.prol ]
  %.02735.i.unr = phi double [ 0.000000e+00, %.lr.ph.i267.preheader ], [ %.128.i.prol, %.lr.ph.i267.prol ]
  %.02934.i.unr = phi double [ 0.000000e+00, %.lr.ph.i267.preheader ], [ %.130.i.prol, %.lr.ph.i267.prol ]
  %.03133.i.unr = phi i64 [ %i.lh, %.lr.ph.i267.preheader ], [ %i.lt, %.lr.ph.i267.prol ]
  %i.lu = icmp eq i64 %i.lk, %.neg
  br i1 %i.lu, label %._crit_edge.i266.loopexit, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.prol.loopexit, %.lr.ph.i267
  %.02735.i = phi double [ %.128.i.1, %.lr.ph.i267 ], [ %.02735.i.unr, %.lr.ph.i267.prol.loopexit ] ; 2 uses
  %.02934.i = phi double [ %.130.i.1, %.lr.ph.i267 ], [ %.02934.i.unr, %.lr.ph.i267.prol.loopexit ]
  %.03133.i = phi i64 [ %i.mk, %.lr.ph.i267 ], [ %.03133.i.unr, %.lr.ph.i267.prol.loopexit ] ; 4 uses
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %.03133.i
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !177
  %i.lx = icmp eq i64 %i.lw, %.03238.i            ; 2 uses
  %i.ly = getelementptr inbounds [8 x i8], ptr %2, i64 %.03133.i
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !145 ; 2 uses
  %i.ma = tail call double @llvm.fabs.f64(double %i.lz)
  %i.mb = fadd double %.02735.i, %i.ma
  %.130.i = select i1 %i.lx, double %i.lz, double %.02934.i
  %.128.i = select i1 %i.lx, double %.02735.i, double %i.mb ; 2 uses
  %i.mc = add nsw i64 %.03133.i, 1                ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !177
  %i.mf = icmp eq i64 %i.me, %.03238.i            ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mc
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !145 ; 2 uses
  %i.mi = tail call double @llvm.fabs.f64(double %i.mh)
  %i.mj = fadd double %.128.i, %i.mi
  %.130.i.1 = select i1 %i.mf, double %i.mh, double %.130.i ; 2 uses
  %.128.i.1 = select i1 %i.mf, double %.128.i, double %i.mj ; 2 uses
  %i.mk = add nsw i64 %.03133.i, 2                ; 2 uses
  %exitcond.not.i268.1 = icmp eq i64 %i.mk, %i.lk
  br i1 %exitcond.not.i268.1, label %._crit_edge.i266.loopexit, label %.lr.ph.i267, !llvm.loop !568

._crit_edge.i266.loopexit:                        ; preds = %.lr.ph.i267, %.lr.ph.i267.prol.loopexit
  %.130.i.lcssa = phi double [ %.130.i.lcssa.unr, %.lr.ph.i267.prol.loopexit ], [ %.130.i.1, %.lr.ph.i267 ]
  %.128.i.lcssa = phi double [ %.128.i.lcssa.unr, %.lr.ph.i267.prol.loopexit ], [ %.128.i.1, %.lr.ph.i267 ]
  %i.ml = fsub double %.130.i.lcssa, %.128.i.lcssa
  br label %._crit_edge.i266

end_hunk_1
begin_hunk_2_@_ZN6casadi14convexify_evalIdEEiPKNS_23casadi_convexify_configIT_EEPKS2_PS2_PxS8_:bb.a

.preheader278:                                    ; preds = %.preheader278.lr.ph, %.epilog-lcssa519
  %indvars.iv359 = phi i64 [ 1, %.preheader278.lr.ph ], [ %indvars.iv.next360, %.epilog-lcssa519 ] ; 3 uses
  %.8316 = phi i64 [ 0, %.preheader278.lr.ph ], [ %.lcssa467, %.epilog-lcssa519 ] ; 2 uses
  %.5203315 = phi i64 [ 0, %.preheader278.lr.ph ], [ %i.wy, %.epilog-lcssa519 ] ; 3 uses
  %i.vm = mul nuw nsw i64 %.5203315, %i.oj
  %i.vn = getelementptr [8 x i8], ptr %.0186, i64 %i.vm ; 5 uses
  %xtraiter516 = and i64 %indvars.iv359, 3        ; 3 uses
  %i.vo = icmp samesign ult i64 %.5203315, 3
  br i1 %i.vo, label %.epil.preheader515, label %.preheader278.new

.preheader278.new:                                ; preds = %.preheader278
  %unroll_iter522 = and i64 %indvars.iv359, -4
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader278.new
  %.9314 = phi i64 [ %.8316, %.preheader278.new ], [ %i.wq, %bb.w ] ; 5 uses
  %.5196313 = phi i64 [ 0, %.preheader278.new ], [ %i.wp, %bb.w ] ; 5 uses
  %niter523 = phi i64 [ 0, %.preheader278.new ], [ %niter523.next.3, %bb.w ]
  %i.vp = getelementptr [8 x i8], ptr %i.vn, i64 %.5196313
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !145
  %i.vr = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !177
  %i.vt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vs
  store double %i.vq, ptr %i.vt, align 8, !tbaa !145
  %i.vu = getelementptr [8 x i8], ptr %i.vn, i64 %.5196313
  %i.vv = getelementptr i8, ptr %i.vu, i64 8
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !145
  %i.vx = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.vy = getelementptr i8, ptr %i.vx, i64 8
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !177
  %i.wa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vz
  store double %i.vw, ptr %i.wa, align 8, !tbaa !145
  %i.wb = getelementptr [8 x i8], ptr %i.vn, i64 %.5196313
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !145
  %i.we = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.wf = getelementptr i8, ptr %i.we, i64 16
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !177
  %i.wh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wg
  store double %i.wd, ptr %i.wh, align 8, !tbaa !145
  %i.wi = getelementptr [8 x i8], ptr %i.vn, i64 %.5196313
  %i.wj = getelementptr i8, ptr %i.wi, i64 24
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !145
  %i.wl = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.wm = getelementptr i8, ptr %i.wl, i64 24
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !177
  %i.wo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wn
  store double %i.wk, ptr %i.wo, align 8, !tbaa !145
  %i.wp = add nuw nsw i64 %.5196313, 4            ; 2 uses
  %i.wq = add nsw i64 %.9314, 4                   ; 3 uses
  %niter523.next.3 = add i64 %niter523, 4         ; 2 uses
  %niter523.ncmp.3 = icmp eq i64 %niter523.next.3, %unroll_iter522
  br i1 %niter523.ncmp.3, label %.unr-lcssa514, label %bb.w, !llvm.loop !585

.unr-lcssa514:                                    ; preds = %bb.w
  %lcmp.mod518.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod518.not, label %.epilog-lcssa519, label %.epil.preheader515

.epil.preheader515:                               ; preds = %.unr-lcssa514, %.preheader278
  %.9314.epil.init = phi i64 [ %.8316, %.preheader278 ], [ %i.wq, %.unr-lcssa514 ]
  %.5196313.epil.init = phi i64 [ 0, %.preheader278 ], [ %i.wp, %.unr-lcssa514 ]
  %lcmp.mod521 = icmp ne i64 %xtraiter516, 0
  tail call void @llvm.assume(i1 %lcmp.mod521)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader515
  %.9314.epil = phi i64 [ %.9314.epil.init, %.epil.preheader515 ], [ %i.wx, %bb.x ] ; 2 uses
  %.5196313.epil = phi i64 [ %.5196313.epil.init, %.epil.preheader515 ], [ %i.ww, %bb.x ] ; 2 uses
  %epil.iter517 = phi i64 [ 0, %.epil.preheader515 ], [ %epil.iter517.next, %bb.x ]
  %i.wr = getelementptr [8 x i8], ptr %i.vn, i64 %.5196313.epil
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !145
  %i.wt = getelementptr [8 x i8], ptr %i.ty, i64 %.9314.epil
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !177
  %i.wv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wu
  store double %i.ws, ptr %i.wv, align 8, !tbaa !145
  %i.ww = add nuw nsw i64 %.5196313.epil, 1
  %i.wx = add nsw i64 %.9314.epil, 1              ; 2 uses
  %epil.iter517.next = add i64 %epil.iter517, 1   ; 2 uses
  %epil.iter517.cmp.not = icmp eq i64 %epil.iter517.next, %xtraiter516
  br i1 %epil.iter517.cmp.not, label %.epilog-lcssa519, label %bb.x, !llvm.loop !586

.epilog-lcssa519:                                 ; preds = %bb.x, %.unr-lcssa514
  %.lcssa467 = phi i64 [ %i.wq, %.unr-lcssa514 ], [ %i.wx, %bb.x ]
  %i.wy = add nuw nsw i64 %.5203315, 1            ; 2 uses
  %indvars.iv.next360 = add nuw i64 %indvars.iv359, 1
  %exitcond362.not = icmp eq i64 %i.wy, %i.oj
  br i1 %exitcond362.not, label %.loopexit, label %.preheader278, !llvm.loop !587

.preheader:                                       ; preds = %.preheader.lr.ph, %.unr-lcssa534
  %indvars.iv365 = phi i64 [ %i.oj, %.preheader.lr.ph ], [ %indvars.iv.next366, %.unr-lcssa534 ] ; 3 uses
  %.10326 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.xb, %.unr-lcssa534 ] ; 3 uses
  %.6204325 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.yn, %.unr-lcssa534 ] ; 5 uses
  %i.wz = mul nuw nsw i64 %.6204325, %i.oj
  %i.xa = getelementptr [8 x i8], ptr %.0186, i64 %i.wz ; 5 uses
  %i.xb = add i64 %.10326, %indvars.iv365         ; 2 uses
  %xtraiter531 = and i64 %indvars.iv365, 3        ; 2 uses
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %.prol.loopexit530, label %.prol.preheader529

.prol.preheader529:                               ; preds = %.preheader, %.prol.preheader529
  %.11324.prol = phi i64 [ %i.xi, %.prol.preheader529 ], [ %.10326, %.preheader ] ; 2 uses
  %.6197323.prol = phi i64 [ %i.xh, %.prol.preheader529 ], [ %.6204325, %.preheader ] ; 2 uses
  %prol.iter533 = phi i64 [ %prol.iter533.next, %.prol.preheader529 ], [ 0, %.preheader ]
  %i.xc = getelementptr [8 x i8], ptr %i.xa, i64 %.6197323.prol
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !145
  %i.xe = getelementptr [8 x i8], ptr %i.ue, i64 %.11324.prol
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !177
  %i.xg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xf
  store double %i.xd, ptr %i.xg, align 8, !tbaa !145
  %i.xh = add nuw nsw i64 %.6197323.prol, 1       ; 2 uses
  %i.xi = add i64 %.11324.prol, 1                 ; 2 uses
  %prol.iter533.next = add i64 %prol.iter533, 1   ; 2 uses
  %prol.iter533.cmp.not = icmp eq i64 %prol.iter533.next, %xtraiter531
  br i1 %prol.iter533.cmp.not, label %.prol.loopexit530, label %.prol.preheader529, !llvm.loop !588

.prol.loopexit530:                                ; preds = %.prol.preheader529, %.preheader
  %.11324.unr = phi i64 [ %.10326, %.preheader ], [ %i.xi, %.prol.preheader529 ]
  %.6197323.unr = phi i64 [ %.6204325, %.preheader ], [ %i.xh, %.prol.preheader529 ]
  %i.xj = add i64 %i.uf, %.6204325
  %i.xk = icmp ugt i64 %i.xj, -4
  br i1 %i.xk, label %.unr-lcssa534, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit530, %.preheader.new
  %.11324 = phi i64 [ %i.ym, %.preheader.new ], [ %.11324.unr, %.prol.loopexit530 ] ; 5 uses
  %.6197323 = phi i64 [ %i.yl, %.preheader.new ], [ %.6197323.unr, %.prol.loopexit530 ] ; 5 uses
  %i.xl = getelementptr [8 x i8], ptr %i.xa, i64 %.6197323
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !145
  %i.xn = getelementptr [8 x i8], ptr %i.ue, i64 %.11324
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !177
  %i.xp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xo
  store double %i.xm, ptr %i.xp, align 8, !tbaa !145
  %i.xq = getelementptr [8 x i8], ptr %i.xa, i64 %.6197323
  %i.xr = getelementptr i8, ptr %i.xq, i64 8
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !145
  %i.xt = getelementptr [8 x i8], ptr %i.ue, i64 %.11324
  %i.xu = getelementptr i8, ptr %i.xt, i64 8
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !177
  %i.xw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xv
  store double %i.xs, ptr %i.xw, align 8, !tbaa !145
  %i.xx = getelementptr [8 x i8], ptr %i.xa, i64 %.6197323
  %i.xy = getelementptr i8, ptr %i.xx, i64 16
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !145
  %i.ya = getelementptr [8 x i8], ptr %i.ue, i64 %.11324
  %i.yb = getelementptr i8, ptr %i.ya, i64 16
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !177
  %i.yd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.yc
  store double %i.xz, ptr %i.yd, align 8, !tbaa !145
  %i.ye = getelementptr [8 x i8], ptr %i.xa, i64 %.6197323
  %i.yf = getelementptr i8, ptr %i.ye, i64 24
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !145
  %i.yh = getelementptr [8 x i8], ptr %i.ue, i64 %.11324
  %i.yi = getelementptr i8, ptr %i.yh, i64 24
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !177
  %i.yk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.yj
  store double %i.yg, ptr %i.yk, align 8, !tbaa !145
  %i.yl = add nuw nsw i64 %.6197323, 4
  %i.ym = add i64 %.11324, 4                      ; 2 uses
  %exitcond367.not.3 = icmp eq i64 %i.ym, %i.xb
  br i1 %exitcond367.not.3, label %.unr-lcssa534, label %.preheader.new, !llvm.loop !589

.unr-lcssa534:                                    ; preds = %.preheader.new, %.prol.loopexit530
  %i.yn = add nuw nsw i64 %.6204325, 1            ; 2 uses
  %indvars.iv.next366 = add i64 %indvars.iv365, -1
  %exitcond368.not = icmp eq i64 %i.yn, %i.oj
  br i1 %exitcond368.not, label %.loopexit, label %.preheader, !llvm.loop !590

.loopexit:                                        ; preds = %.epilog-lcssa519, %._crit_edge319, %.unr-lcssa534, %.preheader283, %._crit_edge312
  %i.yo = icmp eq i32 %.pre369, 0
  br i1 %i.yo, label %.loopexit.thread, label %.loopexit.thread421

.loopexit.thread:                                 ; preds = %.preheader284, %.loopexit
  %i.yp = mul nsw i64 %i.oj, %i.oj
  br label %bb.y

.loopexit.thread421:                              ; preds = %.preheader286, %.loopexit
  %i.yq = add nsw i64 %i.oj, 1
  %i.yr = mul nsw i64 %i.yq, %i.oj
  %i.ys = sdiv i64 %i.yr, 2
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.thread, %.loopexit.thread421
  %.pn = phi i64 [ %i.yp, %.loopexit.thread ], [ %i.ys, %.loopexit.thread421 ]
  %.1 = add nsw i64 %.pn, %.0187328
  %i.yt = load i64, ptr %i.nt, align 8, !tbaa !597
  %i.yu = add nsw i64 %i.yt, -1
  %i.yv = icmp slt i64 %i.oe, %i.yu
  br i1 %i.yv, label %bb.n, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit, !llvm.loop !591

_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit: ; preds = %bb.s, %bb.y, %.loopexit.i271, %bb.m, %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit, %bb.h, %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit
  %.0205 = phi i32 [ 0, %bb.h ], [ 0, %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit ], [ 0, %bb.m ], [ 0, %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit ], [ 0, %.loopexit.i271 ], [ %i.sw, %bb.s ], [ 0, %bb.y ]
  ret i32 %.0205
}

; Function Attrs: nounwind
declare void @_ZN6casadi12ScopedTimingD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi11casadi_bfgsIdEEvPKxPT_PKS3_S6_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !177    ; 39 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %5, i64 %i.a ; 17 uses
  %.not.i = icmp ne ptr %5, null                  ; 4 uses
  br i1 %.not.i, label %bb.b, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %3, null
  %i.c = icmp sgt i64 %i.a, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.c, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.a, 8
  %6 = ptrtoaddr ptr %5 to i64
  %7 = ptrtoaddr ptr %3 to i64
  %i.d = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader251, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.a, 9223372036854775804      ; 4 uses
  %i.e = shl i64 %n.vec, 3                        ; 2 uses
  %i.f = getelementptr i8, ptr %5, i64 %i.e
  %i.g = getelementptr i8, ptr %3, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.h  ; 2 uses
  %next.gep185 = getelementptr i8, ptr %3, i64 %i.h ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load = load <2 x double>, ptr %next.gep185, align 8, !tbaa !145
  %wide.load186 = load <2 x double>, ptr %i.i, align 8, !tbaa !145
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !145
  store <2 x double> %wide.load186, ptr %i.j, align 8, !tbaa !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader251

.lr.ph.i.preheader251:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %5, %.lr.ph.i.preheader ], [ %i.f, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.g, %middle.block ] ; 2 uses
  %i.l = sub nsw i64 %i.a, %.020.i.ph
  %xtraiter = and i64 %i.l, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader251, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.p, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader251 ]
  %.01019.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader251 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader251 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader251 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.n = load double, ptr %.01218.i.prol, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.n, ptr %.01019.i.prol, align 8, !tbaa !145
  %i.p = add nuw nsw i64 %.020.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !604

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader251
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader251 ], [ %i.p, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader251 ], [ %i.o, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader251 ], [ %i.m, %.lr.ph.i.prol ]
  %i.q = sub nsw i64 %.020.i.ph, %i.a
  %i.r = icmp ugt i64 %i.q, -8
  br i1 %i.r, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.c, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.s = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %5, i8 0, i64 %i.s, i1 false), !tbaa !145
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.u = load double, ptr %.01218.i, align 8, !tbaa !145
  %i.v = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.u, ptr %.01019.i, align 8, !tbaa !145
  %i.w = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.x = load double, ptr %i.t, align 8, !tbaa !145
  %i.y = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.x, ptr %i.v, align 8, !tbaa !145
  %i.z = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.aa = load double, ptr %i.w, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.aa, ptr %i.y, align 8, !tbaa !145
  %i.ac = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ad = load double, ptr %i.z, align 8, !tbaa !145
  %i.ae = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ad, ptr %i.ab, align 8, !tbaa !145
  %i.af = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !145
  %i.ah = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.ag, ptr %i.ae, align 8, !tbaa !145
  %i.ai = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.aj = load double, ptr %i.af, align 8, !tbaa !145
  %i.ak = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.aj, ptr %i.ah, align 8, !tbaa !145
  %i.al = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.am = load double, ptr %i.ai, align 8, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.am, ptr %i.ak, align 8, !tbaa !145
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.ap = load double, ptr %i.al, align 8, !tbaa !145
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.ap, ptr %i.an, align 8, !tbaa !145
  %i.ar = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ar, %i.a
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !605

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %bb.a, %.preheader16.i, %.preheader.i
  %i.as = icmp sgt i64 %i.a, 0
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.lr.ph23.preheader.i
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %min.iters.check192 = icmp ult i64 %i.a, 6
  br i1 %min.iters.check192, label %.lr.ph.i55.preheader250, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph.i55.preheader
  %i.at = shl i64 %i.a, 3                         ; 2 uses
  %i.au = getelementptr i8, ptr %5, i64 %i.at
  %i.av = getelementptr i8, ptr %4, i64 %i.at
  %bound0 = icmp ult ptr %5, %i.av
  %bound1 = icmp ult ptr %4, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i55.preheader250, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck193
  %n.vec195 = and i64 %i.a, -4                    ; 4 uses
  %i.aw = shl i64 %n.vec195, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %5, i64 %i.aw
  %i.ay = getelementptr i8, ptr %4, i64 %i.aw
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next204, %vector.body196 ] ; 2 uses
  %i.az = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %5, i64 %i.az ; 3 uses
  %next.gep199 = getelementptr i8, ptr %4, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <2 x double>, ptr %next.gep199, align 8, !tbaa !145, !alias.scope !624
  %wide.load201 = load <2 x double>, ptr %i.ba, align 8, !tbaa !145, !alias.scope !624
  %i.bb = getelementptr i8, ptr %next.gep198, i64 16 ; 2 uses
  %wide.load202 = load <2 x double>, ptr %next.gep198, align 8, !tbaa !145, !alias.scope !625, !noalias !624
  %wide.load203 = load <2 x double>, ptr %i.bb, align 8, !tbaa !145, !alias.scope !625, !noalias !624
  %i.bc = fsub <2 x double> %wide.load202, %wide.load200
  %i.bd = fsub <2 x double> %wide.load203, %wide.load201
  store <2 x double> %i.bc, ptr %next.gep198, align 8, !tbaa !145, !alias.scope !625, !noalias !624
  store <2 x double> %i.bd, ptr %i.bb, align 8, !tbaa !145, !alias.scope !625, !noalias !624
  %index.next204 = add nuw i64 %index197, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.be, label %middle.block205, label %vector.body196, !llvm.loop !609

middle.block205:                                  ; preds = %vector.body196
  %cmp.n206 = icmp eq i64 %i.a, %n.vec195
  br i1 %cmp.n206, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i55.preheader250

.lr.ph.i55.preheader250:                          ; preds = %vector.memcheck193, %.lr.ph.i55.preheader, %middle.block205
  %.014.i.ph = phi i64 [ 0, %vector.memcheck193 ], [ 0, %.lr.ph.i55.preheader ], [ %n.vec195, %middle.block205 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %5, %vector.memcheck193 ], [ %5, %.lr.ph.i55.preheader ], [ %i.ax, %middle.block205 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %4, %vector.memcheck193 ], [ %4, %.lr.ph.i55.preheader ], [ %i.ay, %middle.block205 ] ; 2 uses
  %xtraiter252 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i55.prol.loopexit, label %.lr.ph.i55.prol

.lr.ph.i55.prol:                                  ; preds = %.lr.ph.i55.preheader250, %.lr.ph.i55.prol
  %.014.i.prol = phi i64 [ %i.bk, %.lr.ph.i55.prol ], [ %.014.i.ph, %.lr.ph.i55.preheader250 ]
  %.0813.i.prol = phi ptr [ %i.bh, %.lr.ph.i55.prol ], [ %.0813.i.ph, %.lr.ph.i55.preheader250 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.bf, %.lr.ph.i55.prol ], [ %.0912.i.ph, %.lr.ph.i55.preheader250 ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.i55.prol ], [ 0, %.lr.ph.i55.preheader250 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.bg = load double, ptr %.0912.i.prol, align 8, !tbaa !145
  %i.bh = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.bi = load double, ptr %.0813.i.prol, align 8, !tbaa !145
  %i.bj = fsub double %i.bi, %i.bg
  store double %i.bj, ptr %.0813.i.prol, align 8, !tbaa !145
  %i.bk = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i55.prol.loopexit, label %.lr.ph.i55.prol, !llvm.loop !610

.lr.ph.i55.prol.loopexit:                         ; preds = %.lr.ph.i55.prol, %.lr.ph.i55.preheader250
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i55.preheader250 ], [ %i.bk, %.lr.ph.i55.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i55.preheader250 ], [ %i.bh, %.lr.ph.i55.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i55.preheader250 ], [ %i.bf, %.lr.ph.i55.prol ]
  %i.bl = sub i64 %.014.i.ph, %i.a
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.prol.loopexit, %.lr.ph.i55
  %.014.i = phi i64 [ %i.ch, %.lr.ph.i55 ], [ %.014.i.unr, %.lr.ph.i55.prol.loopexit ]
  %.0813.i = phi ptr [ %i.ce, %.lr.ph.i55 ], [ %.0813.i.unr, %.lr.ph.i55.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.cc, %.lr.ph.i55 ], [ %.0912.i.unr, %.lr.ph.i55.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.bo = load double, ptr %.0912.i, align 8, !tbaa !145
  %i.bp = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.bq = load double, ptr %.0813.i, align 8, !tbaa !145
end_hunk_2
begin_hunk_3_@_ZNK6casadi9Sqpmethod18solve_elastic_modeEPNS_15SqpmethodMemoryEPxdxbbdddPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  %i.he = load ptr, ptr %24, align 8, !tbaa !25   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread: ; preds = %bb.v
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %24, align 8, !tbaa !25   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %.sink.split440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !26
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #27
  br label %.sink.split440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.hn = load i64, ptr %i.hf, align 8, !tbaa !26
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.ho) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %.4, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %.4, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

.sink.split440:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread
  %.pn143.pn.pn.pn.pn.pn320.ph = phi { ptr, i32 } [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.thread ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn143.pn.pn.pn.pn.pn320 = phi { ptr, i32 } [ %.pn143.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn143.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn143.pn.pn.pn.pn.pn320.ph, %.sink.split440 ]
  call void @__cxa_free_exception(ptr %i.fy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.ai:                                            ; preds = %bb.t
  br i1 %i.at, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.aj:                                            ; preds = %bb.ai
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 2185
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !149, !range !154, !noundef !164
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.ak:                                            ; preds = %bb.aj
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !204
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !228
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !229
  %i.hz = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.hz, ptr %30, align 8, !tbaa !21
  %i.ia = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ic, ptr %i.a, align 8, !tbaa !23
  %i.id = icmp ugt i64 %i.ic, 15
  br i1 %i.id, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ak
  %i.ie = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ie, ptr %30, align 8, !tbaa !25
  %i.if = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.if, ptr %i.hz, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.ak
  %i.ig = phi ptr [ %i.ie, %.noexc.i ], [ %i.hz, %bb.ak ] ; 2 uses
  switch i64 %i.ic, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.ih = load i8, ptr %i.ia, align 1, !tbaa !26
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.am:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ig, ptr align 1 %i.ia, i64 %i.ic, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.al, %bb.am
  %i.ii = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !27
  %i.ik = load ptr, ptr %30, align 8, !tbaa !25
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ii
  store i8 0, ptr %i.il, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZNK6casadi9Sqpmethod15print_iterationExdddddxbbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2394) %0, i64 noundef %i.hu, double noundef %i.hw, double noundef %7, double noundef %8, double noundef %9, double noundef %i.hy, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext %6, ptr noundef nonnull align 8 %30)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.im = load ptr, ptr %30, align 8, !tbaa !25   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.hz
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.an
  %i.io = load i64, ptr %i.hz, align 8, !tbaa !26
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %30, align 8, !tbaa !25   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.hz
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.ao
  %i.it = load i64, ptr %i.hz, align 8, !tbaa !26
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.aj, %bb.ai
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !212 ; 2 uses
  %i.ix = load i64, ptr %i.bv, align 8, !tbaa !166 ; 19 uses
  %i.iy = load i64, ptr %i.bb, align 8, !tbaa !168 ; 12 uses
  %i.iz = shl i64 %i.iy, 1                        ; 5 uses
  %i.ja = load double, ptr %i.b, align 8, !tbaa !145 ; 2 uses
  %.not.i228 = icmp ne ptr %i.iw, null
  %i.jb = icmp sgt i64 %i.iy, 0                   ; 3 uses
  %or.cond.i229 = and i1 %.not.i228, %i.jb
  br i1 %or.cond.i229, label %.lr.ph.i230.preheader, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit234

.lr.ph.i230.preheader:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.ix ; 3 uses
  %min.iters.check502 = icmp ult i64 %i.iz, 4
  br i1 %min.iters.check502, label %.lr.ph.i230.preheader574, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph.i230.preheader
  %n.vec504 = and i64 %i.iz, -4                   ; 4 uses
  %i.jd = shl i64 %n.vec504, 3
  %i.je = getelementptr i8, ptr %i.jc, i64 %i.jd
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ja, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next508, %vector.body505 ] ; 2 uses
  %i.jf = shl i64 %index506, 3
  %next.gep507 = getelementptr i8, ptr %i.jc, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep507, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep507, align 8, !tbaa !145
  store <2 x double> %broadcast.splat, ptr %i.jg, align 8, !tbaa !145
  %index.next508 = add nuw i64 %index506, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next508, %n.vec504
  br i1 %i.jh, label %middle.block509, label %vector.body505, !llvm.loop !642

middle.block509:                                  ; preds = %vector.body505
  %cmp.n510 = icmp eq i64 %i.iz, %n.vec504
  br i1 %cmp.n510, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit234, label %.lr.ph.i230.preheader574

.lr.ph.i230.preheader574:                         ; preds = %.lr.ph.i230.preheader, %middle.block509
  %.08.i231.ph = phi i64 [ 0, %.lr.ph.i230.preheader ], [ %n.vec504, %middle.block509 ]
  %.057.i232.ph = phi ptr [ %i.jc, %.lr.ph.i230.preheader ], [ %i.je, %middle.block509 ]
  br label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.preheader574, %.lr.ph.i230
  %.08.i231 = phi i64 [ %i.jj, %.lr.ph.i230 ], [ %.08.i231.ph, %.lr.ph.i230.preheader574 ]
  %.057.i232 = phi ptr [ %i.ji, %.lr.ph.i230 ], [ %.057.i232.ph, %.lr.ph.i230.preheader574 ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.057.i232, i64 8
  store double %i.ja, ptr %.057.i232, align 8, !tbaa !145
  %i.jj = add nuw nsw i64 %.08.i231, 1            ; 2 uses
  %exitcond.not.i233 = icmp eq i64 %i.jj, %i.iz
  br i1 %exitcond.not.i233, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit234, label %.lr.ph.i230, !llvm.loop !643

_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit234:      ; preds = %.lr.ph.i230, %middle.block509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !216 ; 10 uses
  %i.jm = mul nsw i64 %i.iy, 3
  %i.jn = add nsw i64 %i.jm, %i.ix                ; 2 uses
  %.not.i235 = icmp ne ptr %i.jl, null            ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, 0
  %or.cond.i236 = and i1 %i.jo, %.not.i235
  br i1 %or.cond.i236, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit238.thread, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit238

_ZN6casadi12casadi_clearIdEEvPT_x.exit238.thread: ; preds = %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit234
  %i.jp = shl nuw i64 %i.jn, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jl, i8 0, i64 %i.jp, i1 false), !tbaa !145
  br label %bb.ap

_ZN6casadi12casadi_clearIdEEvPT_x.exit238:        ; preds = %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit234
  br i1 %.not.i235, label %bb.ap, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260

bb.ap:                                            ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit238.thread, %_ZN6casadi12casadi_clearIdEEvPT_x.exit238
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.jq = load ptr, ptr %.in, align 8, !tbaa !227 ; 7 uses
  %.not15.i240 = icmp eq ptr %i.jq, null
  %i.jr = icmp sgt i64 %i.ix, 0                   ; 2 uses
  br i1 %.not15.i240, label %.preheader.i247, label %.preheader16.i241

.preheader16.i241:                                ; preds = %bb.ap
  br i1 %i.jr, label %.lr.ph.i242.preheader, label %.preheader16.i252

.lr.ph.i242.preheader:                            ; preds = %.preheader16.i241
  %min.iters.check516 = icmp ult i64 %i.ix, 8
  %34 = ptrtoaddr ptr %i.jl to i64
  %35 = ptrtoaddr ptr %i.jq to i64
  %i.js = sub i64 %35, %34
  %diff.check514 = icmp ugt i64 %i.js, -32
  %or.cond569 = or i1 %min.iters.check516, %diff.check514
  br i1 %or.cond569, label %.lr.ph.i242.preheader573, label %vector.ph517

vector.ph517:                                     ; preds = %.lr.ph.i242.preheader
  %n.vec518 = and i64 %i.ix, 9223372036854775804  ; 4 uses
  %i.jt = shl i64 %n.vec518, 3                    ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jl, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.jq, i64 %i.jt
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph517
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next525, %vector.body519 ] ; 2 uses
  %i.jw = shl i64 %index520, 3                    ; 2 uses
  %next.gep521 = getelementptr i8, ptr %i.jl, i64 %i.jw ; 2 uses
  %next.gep522 = getelementptr i8, ptr %i.jq, i64 %i.jw ; 2 uses
  %i.jx = getelementptr i8, ptr %next.gep522, i64 16
  %wide.load523 = load <2 x double>, ptr %next.gep522, align 8, !tbaa !145
  %wide.load524 = load <2 x double>, ptr %i.jx, align 8, !tbaa !145
  %i.jy = getelementptr i8, ptr %next.gep521, i64 16
  store <2 x double> %wide.load523, ptr %next.gep521, align 8, !tbaa !145
  store <2 x double> %wide.load524, ptr %i.jy, align 8, !tbaa !145
  %index.next525 = add nuw i64 %index520, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next525, %n.vec518
  br i1 %i.jz, label %middle.block526, label %vector.body519, !llvm.loop !644

middle.block526:                                  ; preds = %vector.body519
  %cmp.n527 = icmp eq i64 %i.ix, %n.vec518
  br i1 %cmp.n527, label %.preheader16.i252, label %.lr.ph.i242.preheader573

.lr.ph.i242.preheader573:                         ; preds = %.lr.ph.i242.preheader, %middle.block526
  %.020.i243.ph = phi i64 [ 0, %.lr.ph.i242.preheader ], [ %n.vec518, %middle.block526 ] ; 4 uses
  %.01019.i244.ph = phi ptr [ %i.jl, %.lr.ph.i242.preheader ], [ %i.ju, %middle.block526 ] ; 2 uses
  %.01218.i245.ph = phi ptr [ %i.jq, %.lr.ph.i242.preheader ], [ %i.jv, %middle.block526 ] ; 2 uses
  %i.ka = sub nsw i64 %i.ix, %.020.i243.ph
  %xtraiter583 = and i64 %i.ka, 7                 ; 2 uses
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %.lr.ph.i242.prol.loopexit, label %.lr.ph.i242.prol

.lr.ph.i242.prol:                                 ; preds = %.lr.ph.i242.preheader573, %.lr.ph.i242.prol
  %.020.i243.prol = phi i64 [ %i.ke, %.lr.ph.i242.prol ], [ %.020.i243.ph, %.lr.ph.i242.preheader573 ]
  %.01019.i244.prol = phi ptr [ %i.kd, %.lr.ph.i242.prol ], [ %.01019.i244.ph, %.lr.ph.i242.preheader573 ] ; 2 uses
  %.01218.i245.prol = phi ptr [ %i.kb, %.lr.ph.i242.prol ], [ %.01218.i245.ph, %.lr.ph.i242.preheader573 ] ; 2 uses
  %prol.iter585 = phi i64 [ %prol.iter585.next, %.lr.ph.i242.prol ], [ 0, %.lr.ph.i242.preheader573 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.01218.i245.prol, i64 8 ; 2 uses
  %i.kc = load double, ptr %.01218.i245.prol, align 8, !tbaa !145
  %i.kd = getelementptr inbounds nuw i8, ptr %.01019.i244.prol, i64 8 ; 2 uses
  store double %i.kc, ptr %.01019.i244.prol, align 8, !tbaa !145
  %i.ke = add nuw nsw i64 %.020.i243.prol, 1      ; 2 uses
  %prol.iter585.next = add i64 %prol.iter585, 1   ; 2 uses
  %prol.iter585.cmp.not = icmp eq i64 %prol.iter585.next, %xtraiter583
  br i1 %prol.iter585.cmp.not, label %.lr.ph.i242.prol.loopexit, label %.lr.ph.i242.prol, !llvm.loop !645

.lr.ph.i242.prol.loopexit:                        ; preds = %.lr.ph.i242.prol, %.lr.ph.i242.preheader573
  %.020.i243.unr = phi i64 [ %.020.i243.ph, %.lr.ph.i242.preheader573 ], [ %i.ke, %.lr.ph.i242.prol ]
  %.01019.i244.unr = phi ptr [ %.01019.i244.ph, %.lr.ph.i242.preheader573 ], [ %i.kd, %.lr.ph.i242.prol ]
  %.01218.i245.unr = phi ptr [ %.01218.i245.ph, %.lr.ph.i242.preheader573 ], [ %i.kb, %.lr.ph.i242.prol ]
  %i.kf = sub nsw i64 %.020.i243.ph, %i.ix
  %i.kg = icmp ugt i64 %i.kf, -8
  br i1 %i.kg, label %.preheader16.i252, label %.lr.ph.i242

.preheader.i247:                                  ; preds = %bb.ap
  br i1 %i.jr, label %.lr.ph23.preheader.i248, label %.preheader.i258

.lr.ph23.preheader.i248:                          ; preds = %.preheader.i247
  %i.kh = shl nuw i64 %i.ix, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jl, i8 0, i64 %i.kh, i1 false), !tbaa !145
  br label %.preheader.i258

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.prol.loopexit, %.lr.ph.i242
  %.020.i243 = phi i64 [ %i.lg, %.lr.ph.i242 ], [ %.020.i243.unr, %.lr.ph.i242.prol.loopexit ]
  %.01019.i244 = phi ptr [ %i.lf, %.lr.ph.i242 ], [ %.01019.i244.unr, %.lr.ph.i242.prol.loopexit ] ; 9 uses
  %.01218.i245 = phi ptr [ %i.ld, %.lr.ph.i242 ], [ %.01218.i245.unr, %.lr.ph.i242.prol.loopexit ] ; 9 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 8
  %i.kj = load double, ptr %.01218.i245, align 8, !tbaa !145
  %i.kk = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 8
  store double %i.kj, ptr %.01019.i244, align 8, !tbaa !145
  %i.kl = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 16
  %i.km = load double, ptr %i.ki, align 8, !tbaa !145
  %i.kn = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 16
  store double %i.km, ptr %i.kk, align 8, !tbaa !145
  %i.ko = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 24
  %i.kp = load double, ptr %i.kl, align 8, !tbaa !145
  %i.kq = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 24
  store double %i.kp, ptr %i.kn, align 8, !tbaa !145
  %i.kr = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 32
  %i.ks = load double, ptr %i.ko, align 8, !tbaa !145
  %i.kt = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 32
  store double %i.ks, ptr %i.kq, align 8, !tbaa !145
  %i.ku = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 40
  %i.kv = load double, ptr %i.kr, align 8, !tbaa !145
  %i.kw = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 40
  store double %i.kv, ptr %i.kt, align 8, !tbaa !145
  %i.kx = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 48
  %i.ky = load double, ptr %i.ku, align 8, !tbaa !145
  %i.kz = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 48
  store double %i.ky, ptr %i.kw, align 8, !tbaa !145
  %i.la = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 56
  %i.lb = load double, ptr %i.kx, align 8, !tbaa !145
  %i.lc = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 56
  store double %i.lb, ptr %i.kz, align 8, !tbaa !145
  %i.ld = getelementptr inbounds nuw i8, ptr %.01218.i245, i64 64
  %i.le = load double, ptr %i.la, align 8, !tbaa !145
  %i.lf = getelementptr inbounds nuw i8, ptr %.01019.i244, i64 64
  store double %i.le, ptr %i.lc, align 8, !tbaa !145
  %i.lg = add nuw nsw i64 %.020.i243, 8           ; 2 uses
  %exitcond.not.i246.7 = icmp eq i64 %i.lg, %i.ix
  br i1 %exitcond.not.i246.7, label %.preheader16.i252, label %.lr.ph.i242, !llvm.loop !646

.preheader16.i252:                                ; preds = %.lr.ph.i242.prol.loopexit, %.lr.ph.i242, %middle.block526, %.preheader16.i241
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.ix ; 4 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.ix
  %.idx138436 = shl i64 %i.iy, 4                  ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %.idx138436 ; 4 uses
  br i1 %i.jb, label %.lr.ph.i253.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260

.lr.ph.i253.preheader:                            ; preds = %.preheader16.i252
  %min.iters.check534 = icmp ult i64 %i.iy, 10
  br i1 %min.iters.check534, label %.lr.ph.i253.preheader572, label %vector.memcheck531

vector.memcheck531:                               ; preds = %.lr.ph.i253.preheader
  %36 = ptrtoaddr ptr %i.jl to i64
  %37 = ptrtoaddr ptr %i.jq to i64
  %i.lk = add i64 %.idx138436, %36
  %i.ll = sub i64 %37, %i.lk
  %diff.check532 = icmp ugt i64 %i.ll, -32
  br i1 %diff.check532, label %.lr.ph.i253.preheader572, label %vector.ph535

vector.ph535:                                     ; preds = %vector.memcheck531
  %n.vec536 = and i64 %i.iy, 9223372036854775804  ; 4 uses
  %i.lm = shl i64 %n.vec536, 3                    ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lj, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.lh, i64 %i.lm
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph535
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next543, %vector.body537 ] ; 2 uses
  %i.lp = shl i64 %index538, 3                    ; 2 uses
  %next.gep539 = getelementptr i8, ptr %i.lj, i64 %i.lp ; 2 uses
  %next.gep540 = getelementptr i8, ptr %i.lh, i64 %i.lp ; 2 uses
  %i.lq = getelementptr i8, ptr %next.gep540, i64 16
  %wide.load541 = load <2 x double>, ptr %next.gep540, align 8, !tbaa !145
  %wide.load542 = load <2 x double>, ptr %i.lq, align 8, !tbaa !145
  %i.lr = getelementptr i8, ptr %next.gep539, i64 16
  store <2 x double> %wide.load541, ptr %next.gep539, align 8, !tbaa !145
  store <2 x double> %wide.load542, ptr %i.lr, align 8, !tbaa !145
  %index.next543 = add nuw i64 %index538, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next543, %n.vec536
  br i1 %i.ls, label %middle.block544, label %vector.body537, !llvm.loop !647

middle.block544:                                  ; preds = %vector.body537
  %cmp.n545 = icmp eq i64 %i.iy, %n.vec536
  br i1 %cmp.n545, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260, label %.lr.ph.i253.preheader572

.lr.ph.i253.preheader572:                         ; preds = %vector.memcheck531, %.lr.ph.i253.preheader, %middle.block544
  %.020.i254.ph = phi i64 [ 0, %vector.memcheck531 ], [ 0, %.lr.ph.i253.preheader ], [ %n.vec536, %middle.block544 ] ; 4 uses
  %.01019.i255.ph = phi ptr [ %i.lj, %vector.memcheck531 ], [ %i.lj, %.lr.ph.i253.preheader ], [ %i.ln, %middle.block544 ] ; 2 uses
  %.01218.i256.ph = phi ptr [ %i.lh, %vector.memcheck531 ], [ %i.lh, %.lr.ph.i253.preheader ], [ %i.lo, %middle.block544 ] ; 2 uses
  %i.lt = sub nsw i64 %i.iy, %.020.i254.ph
  %xtraiter586 = and i64 %i.lt, 7                 ; 2 uses
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %.lr.ph.i253.prol.loopexit, label %.lr.ph.i253.prol

.lr.ph.i253.prol:                                 ; preds = %.lr.ph.i253.preheader572, %.lr.ph.i253.prol
  %.020.i254.prol = phi i64 [ %i.lx, %.lr.ph.i253.prol ], [ %.020.i254.ph, %.lr.ph.i253.preheader572 ]
  %.01019.i255.prol = phi ptr [ %i.lw, %.lr.ph.i253.prol ], [ %.01019.i255.ph, %.lr.ph.i253.preheader572 ] ; 2 uses
  %.01218.i256.prol = phi ptr [ %i.lu, %.lr.ph.i253.prol ], [ %.01218.i256.ph, %.lr.ph.i253.preheader572 ] ; 2 uses
  %prol.iter588 = phi i64 [ %prol.iter588.next, %.lr.ph.i253.prol ], [ 0, %.lr.ph.i253.preheader572 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.01218.i256.prol, i64 8 ; 2 uses
  %i.lv = load double, ptr %.01218.i256.prol, align 8, !tbaa !145
  %i.lw = getelementptr inbounds nuw i8, ptr %.01019.i255.prol, i64 8 ; 2 uses
  store double %i.lv, ptr %.01019.i255.prol, align 8, !tbaa !145
  %i.lx = add nuw nsw i64 %.020.i254.prol, 1      ; 2 uses
  %prol.iter588.next = add i64 %prol.iter588, 1   ; 2 uses
  %prol.iter588.cmp.not = icmp eq i64 %prol.iter588.next, %xtraiter586
  br i1 %prol.iter588.cmp.not, label %.lr.ph.i253.prol.loopexit, label %.lr.ph.i253.prol, !llvm.loop !648

.lr.ph.i253.prol.loopexit:                        ; preds = %.lr.ph.i253.prol, %.lr.ph.i253.preheader572
  %.020.i254.unr = phi i64 [ %.020.i254.ph, %.lr.ph.i253.preheader572 ], [ %i.lx, %.lr.ph.i253.prol ]
  %.01019.i255.unr = phi ptr [ %.01019.i255.ph, %.lr.ph.i253.preheader572 ], [ %i.lw, %.lr.ph.i253.prol ]
  %.01218.i256.unr = phi ptr [ %.01218.i256.ph, %.lr.ph.i253.preheader572 ], [ %i.lu, %.lr.ph.i253.prol ]
  %i.ly = sub nsw i64 %.020.i254.ph, %i.iy
  %i.lz = icmp ugt i64 %i.ly, -8
  br i1 %i.lz, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260, label %.lr.ph.i253

.preheader.i258:                                  ; preds = %.lr.ph23.preheader.i248, %.preheader.i247
  br i1 %i.jb, label %.lr.ph23.preheader.i259, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260

.lr.ph23.preheader.i259:                          ; preds = %.preheader.i258
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.ix
  %.idx138436438 = shl nsw i64 %i.iy, 4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.idx138436438
  %i.mc = shl nuw i64 %i.iy, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mb, i8 0, i64 %i.mc, i1 false), !tbaa !145
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260

.lr.ph.i253:                                      ; preds = %.lr.ph.i253.prol.loopexit, %.lr.ph.i253
  %.020.i254 = phi i64 [ %i.nb, %.lr.ph.i253 ], [ %.020.i254.unr, %.lr.ph.i253.prol.loopexit ]
  %.01019.i255 = phi ptr [ %i.na, %.lr.ph.i253 ], [ %.01019.i255.unr, %.lr.ph.i253.prol.loopexit ] ; 9 uses
  %.01218.i256 = phi ptr [ %i.my, %.lr.ph.i253 ], [ %.01218.i256.unr, %.lr.ph.i253.prol.loopexit ] ; 9 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 8
  %i.me = load double, ptr %.01218.i256, align 8, !tbaa !145
  %i.mf = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 8
  store double %i.me, ptr %.01019.i255, align 8, !tbaa !145
  %i.mg = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 16
  %i.mh = load double, ptr %i.md, align 8, !tbaa !145
  %i.mi = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 16
  store double %i.mh, ptr %i.mf, align 8, !tbaa !145
  %i.mj = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 24
  %i.mk = load double, ptr %i.mg, align 8, !tbaa !145
  %i.ml = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 24
  store double %i.mk, ptr %i.mi, align 8, !tbaa !145
  %i.mm = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 32
  %i.mn = load double, ptr %i.mj, align 8, !tbaa !145
  %i.mo = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 32
  store double %i.mn, ptr %i.ml, align 8, !tbaa !145
  %i.mp = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 40
  %i.mq = load double, ptr %i.mm, align 8, !tbaa !145
  %i.mr = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 40
  store double %i.mq, ptr %i.mo, align 8, !tbaa !145
  %i.ms = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 48
  %i.mt = load double, ptr %i.mp, align 8, !tbaa !145
  %i.mu = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 48
  store double %i.mt, ptr %i.mr, align 8, !tbaa !145
  %i.mv = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 56
  %i.mw = load double, ptr %i.ms, align 8, !tbaa !145
  %i.mx = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 56
  store double %i.mw, ptr %i.mu, align 8, !tbaa !145
  %i.my = getelementptr inbounds nuw i8, ptr %.01218.i256, i64 64
  %i.mz = load double, ptr %i.mv, align 8, !tbaa !145
  %i.na = getelementptr inbounds nuw i8, ptr %.01019.i255, i64 64
  store double %i.mz, ptr %i.mx, align 8, !tbaa !145
  %i.nb = add nuw nsw i64 %.020.i254, 8           ; 2 uses
  %exitcond.not.i257.7 = icmp eq i64 %i.nb, %i.iy
  br i1 %exitcond.not.i257.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260, label %.lr.ph.i253, !llvm.loop !649

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260:    ; preds = %.lr.ph.i253.prol.loopexit, %.lr.ph.i253, %middle.block544, %_ZN6casadi12casadi_clearIdEEvPT_x.exit238, %.preheader16.i252, %.preheader.i258, %.lr.ph23.preheader.i259
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !215 ; 6 uses
  %i.ne = add nsw i64 %i.iz, %i.ix                ; 2 uses
  %.not.i261 = icmp ne ptr %i.nd, null
  %i.nf = icmp sgt i64 %i.ne, 0
  %or.cond.i262 = and i1 %i.nf, %.not.i261
  br i1 %or.cond.i262, label %.lr.ph.preheader.i263, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit264

.lr.ph.preheader.i263:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260
  %i.ng = shl nuw i64 %i.ne, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nd, i8 0, i64 %i.ng, i1 false), !tbaa !145
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit264

_ZN6casadi12casadi_clearIdEEvPT_x.exit264:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit260, %.lr.ph.preheader.i263
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.ni = load i8, ptr %i.nh, align 8, !tbaa !153, !range !154, !noundef !164
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %.preheader, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit264..loopexit_crit_edge

_ZN6casadi12casadi_clearIdEEvPT_x.exit264..loopexit_crit_edge: ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit264
  %.pre343 = load ptr, ptr %i.bt, align 8, !tbaa !213
  %.pre345 = load ptr, ptr %i.do, align 8, !tbaa !214
  br label %.loopexit

.preheader:                                       ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit264
  %i.nk = icmp sgt i64 %i.ix, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.nl = load ptr, ptr %i.bt, align 8, !tbaa !213 ; 3 uses
  %xtraiter589 = and i64 %i.ix, 1
  %i.nm = icmp eq i64 %i.ix, 1
  br i1 %i.nm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ix, 9223372036854775806
  br label %bb.as

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.aw
  %lcmp.mod590.not = icmp eq i64 %xtraiter589, 0
  br i1 %lcmp.mod590.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0101338.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.qr, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod591 = trunc i64 %i.ix to i1
  call void @llvm.assume(i1 %lcmp.mod591)
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.0101338.epil.init
  %i.no = load double, ptr %i.nn, align 8, !tbaa !145 ; 2 uses
  %i.np = fcmp ogt double %i.no, 0.000000e+00
  br i1 %i.np, label %.sink.split441.epil, label %bb.aq

bb.aq:                                            ; preds = %.epil.preheader
  %i.nq = load ptr, ptr %i.do, align 8, !tbaa !214
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %.0101338.epil.init
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !145 ; 2 uses
  %i.nt = fcmp olt double %i.ns, 0.000000e+00
  br i1 %i.nt, label %.sink.split441.epil, label %._crit_edge

.sink.split441.epil:                              ; preds = %bb.aq, %.epil.preheader
  %.sink.epil = phi double [ %i.no, %.epil.preheader ], [ %i.ns, %bb.aq ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.0101338.epil.init
  store double %.sink.epil, ptr %i.nu, align 8, !tbaa !145
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.sink.split441.epil, %bb.aq, %.preheader
  %i.nv = load ptr, ptr %i.aw, align 8, !tbaa !217 ; 4 uses
  %i.nw = call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 2 uses
  %i.nx = load ptr, ptr %i.nc, align 8, !tbaa !215 ; 6 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !661 ; 5 uses
  %i.oa = icmp ne ptr %i.nv, null
  %i.ob = icmp ne ptr %i.nx, null
  %or.cond.i265 = and i1 %i.oa, %i.ob
  %i.oc = icmp ne ptr %i.nz, null
  %or.cond3.i = and i1 %or.cond.i265, %i.oc
  br i1 %or.cond3.i, label %bb.ar, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit

bb.ar:                                            ; preds = %._crit_edge
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !177 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 3 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.oe
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 3 uses
  %i.oi = icmp sgt i64 %i.oe, 0
  br i1 %i.oi, label %.lr.ph58.preheader.i, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit

.lr.ph58.preheader.i:                             ; preds = %bb.ar
  %.pre63.i = load i64, ptr %i.of, align 8, !tbaa !177
end_hunk_3
