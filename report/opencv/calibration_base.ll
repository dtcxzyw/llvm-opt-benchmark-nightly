Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.jd unwind label %bb.in

bb.jd:                                            ; preds = %bb.jb, %bb.jc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  ret void

bb.je:                                            ; preds = %bb.hq, %bb.in, %bb.hp, %bb.ho
  %.pn832.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yp, %bb.ho ], [ %i.yq, %bb.hp ], [ %i.yr, %bb.hq ], [ %i.bka, %bb.in ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #20
  br label %.body1044

.body1044:                                        ; preds = %bb.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037, %bb.je
  %.pn832.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn832.pn.pn.pn.pn.pn.pn, %bb.je ], [ %i.yo, %bb.hn ], [ %i.qk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.jf

bb.jf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1025, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1031, %.body1044, %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011, %.body1020, %bb.gj, %bb.fh
  %.pn842.pn.pn = phi { ptr, i32 } [ %.pn806, %bb.gj ], [ %i.lj, %bb.ej ], [ %i.nf, %bb.fh ], [ %.pn842, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011 ], [ %.pn803.pn, %.body1020 ], [ %.pn832.pn.pn.pn.pn.pn.pn.pn, %.body1044 ], [ %.pn819, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1025 ], [ %.pn816, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1031 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #20
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.ei
  %.pn842.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn, %bb.jf ], [ %i.li, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.eb
  %.pn842.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn.pn, %bb.jg ], [ %i.ks, %bb.eb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #20
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.ea
  %.pn842.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn.pn.pn, %bb.jh ], [ %i.kr, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #20
  br label %.body999

.body999:                                         ; preds = %bb.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992, %bb.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004
  %.pn849.pn = phi { ptr, i32 } [ %.pn849, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004 ], [ %.pn842.pn.pn.pn.pn.pn, %bb.ji ], [ %i.jw, %bb.ds ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #20
  br label %bb.jj

bb.jj:                                            ; preds = %.body999, %bb.dr
  %.pn849.pn.pn = phi { ptr, i32 } [ %.pn849.pn, %.body999 ], [ %i.jv, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.dq
  %.pn849.pn.pn.pn = phi { ptr, i32 } [ %.pn849.pn.pn, %bb.jj ], [ %i.ju, %bb.dq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #20
  br label %.body984

.body984:                                         ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i977, %bb.jk
  %.pn849.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn849.pn.pn.pn, %bb.jk ], [ %i.jt, %bb.dp ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i977 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #20
  br label %.body

.body:                                            ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit975, %bb.cm, %bb.cc, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950
  %.pn855.pn = phi { ptr, i32 } [ %.pn855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950 ], [ %.pn849.pn.pn.pn.pn, %.body984 ], [ %.pn793, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit975 ], [ %.pn790.pn, %bb.cc ], [ %i.gc, %bb.by ], [ %.pn775.pn.pn.pn.pn, %bb.cm ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fb, %bb.bo ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #20
  br label %bb.jl

bb.jl:                                            ; preds = %.body, %bb.bn
  %.pn855.pn.pn = phi { ptr, i32 } [ %.pn855.pn, %.body ], [ %i.fa, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #20
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.bm
  %.pn855.pn.pn.pn = phi { ptr, i32 } [ %.pn855.pn.pn, %bb.jl ], [ %i.ez, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #20
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.bl
  %.pn855.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn855.pn.pn.pn, %bb.jm ], [ %i.ey, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %bb.jo

bb.jo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931, %bb.aj, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934, %bb.jn, %bb.n
  %.pn861.pn.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %.pn861, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn855.pn.pn.pn.pn, %bb.jn ], [ %i.cq, %bb.al ], [ %.pn771, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934 ], [ %.pn769, %bb.aj ], [ %.pn764, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.m
  %.pn861.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn, %bb.jo ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #20
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.l
  %.pn861.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn.pn, %bb.jp ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #20
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.k
  %.pn861.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn.pn.pn, %bb.jq ], [ %i.as, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  resume { ptr, i32 } %.pn861.pn.pn.pn.pn.pn.pn
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv27computeTiltProjectionMatrixIdEEvT_S1_PNS_4MatxIS1_Li3ELi3EEES4_S4_S4_(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call double @cos(double noundef %0) #20 ; 5 uses
  %i.b = tail call double @sin(double noundef %0) #20 ; 4 uses
  %i.c = tail call double @cos(double noundef %1) #20 ; 5 uses
  %i.d = tail call double @sin(double noundef %1) #20 ; 6 uses
  %i.e = fneg double %i.b                         ; 3 uses
  %i.f = fneg double %i.d                         ; 4 uses
  %i.g = fadd double %i.c, 0.000000e+00
  %.scalar = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.g) ; 3 uses
  %i.h = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar, i64 0 ; 9 uses
  %i.i = fadd double %i.d, 0.000000e+00
  %i.j = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.e, i64 1
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = insertelement <2 x double> poison, double %i.a, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.b, i64 1 ; 5 uses
  %i.p = fadd <2 x double> %i.o, zeroinitializer
  %i.q = insertelement <2 x double> poison, double %i.d, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.f, i64 1
  %i.s = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.t = insertelement <2 x double> %i.s, double %i.e, i64 0 ; 2 uses
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> zeroinitializer, <2 x double> %i.p) ; 20 uses
  %i.v = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.c, i64 0 ; 2 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> %i.x)
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.s, <2 x double> %i.y) ; 22 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.d, double 0.000000e+00, double 0.000000e+00) ; 4 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.a, double 0.000000e+00, double %i.aa)
  %i.ac = insertelement <2 x double> %i.m, double %i.ab, i64 1
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.l, <2 x double> %i.ac) ; 20 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.b, double 0.000000e+00, double %i.aa)
  %i.af = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.c, double %i.a, double %i.ae) ; 21 uses
  %i.ah = shufflevector <2 x double> %i.z, <2 x double> %i.u, <2 x i32> <i32 1, i32 3>
  %i.ai = fneg <2 x double> %i.ah                 ; 10 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = extractelement <2 x double> %i.u, i64 0
  %i.ak = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.am, <2 x double> zeroinitializer) ; 2 uses
  %i.ao = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ag, i64 0
  %i.aq = shufflevector <2 x double> %i.z, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aq, <2 x double> zeroinitializer) ; 2 uses
  %i.as = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x double> %i.as, double %i.ag, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> zeroinitializer, <2 x double> %i.ar)
  %i.av = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = insertelement <2 x double> %i.av, double %i.ag, i64 0
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.aw, <2 x double> %i.au)
  %i.ay = extractelement <2 x double> %i.ar, i64 1
  store <2 x double> %i.ax, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.u, <2 x double> %i.az)
  %i.bb = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = insertelement <2 x double> %i.av, double %i.ag, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bc, <2 x double> %i.ba)
  %i.be = extractelement <2 x double> %i.az, i64 0
  %i.bf = shufflevector <2 x double> %i.an, <2 x double> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %i.bf) ; 2 uses
  %i.bh = shufflevector <2 x double> %i.an, <2 x double> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bi = fadd <2 x double> %i.bh, <double 0.000000e+00, double -0.000000e+00>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ad, <2 x double> %i.bi)
  store <2 x double> %i.bj, ptr %2, align 8
  %i.bk = extractelement <2 x double> %i.bg, i64 1
  %i.bl = fadd double %i.ag, %i.bk
  store <2 x double> %i.bd, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = fadd double %i.ay, 0.000000e+00
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.aj, double 0.000000e+00, double %i.be)
  %i.bo = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1
  %i.bq = fadd <2 x double> %i.ad, %i.bp
  store <2 x double> %i.bq, ptr %.sroa.9172.0..sroa_idx, align 8
  %.sroa.11174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.bl, ptr %.sroa.11174.0..sroa_idx, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not35 = icmp eq ptr %3, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = fneg double %i.a
  %i.bs = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.b, i64 1
  %i.bt = fsub <2 x double> %i.w, %i.bs
  %i.bu = extractelement <2 x double> %i.z, i64 0
  %i.bv = extractelement <2 x double> %i.u, i64 0
  %i.bw = extractelement <2 x double> %i.u, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.f, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.br, i64 1 ; 2 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer, <2 x double> %i.bt) ; 4 uses
  %i.ca = insertelement <2 x double> poison, double %i.e, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x double> %i.w, double %i.aa, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> zeroinitializer, <2 x double> %i.cc) ; 2 uses
  %i.ce = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x double> %i.by, double 0.000000e+00, i64 0
  %i.cg = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ag, i64 0
  %i.ch = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = extractelement <2 x double> %i.bz, i64 1
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.af, double %i.bu, double 0.000000e+00)
  %i.ck = shufflevector <2 x double> %i.ad, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.cl = insertelement <2 x double> %i.h, double 0.000000e+00, i64 1
  %i.cm = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cj, i64 1
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.cm)
  %i.co = fadd <2 x double> %i.cn, <double 0.000000e+00, double -0.000000e+00>
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = shufflevector <2 x double> %i.z, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.cq = fneg <2 x double> %i.cp                 ; 3 uses
  %i.cr = shufflevector <2 x double> %i.ad, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.cs = shufflevector <2 x double> %i.z, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cs, <2 x double> zeroinitializer) ; 2 uses
  %i.cu = shufflevector <2 x double> %i.u, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> zeroinitializer, <2 x double> %i.ct)
  %i.cw = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = insertelement <2 x double> %i.cw, double %i.ag, i64 0 ; 2 uses
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cx, <2 x double> %i.cv)
  %i.cz = insertelement <2 x double> %i.cx, double 0.000000e+00, i64 1
  %i.da = shufflevector <2 x double> %i.z, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.da, <2 x double> zeroinitializer) ; 2 uses
  %i.dc = insertelement <2 x double> %i.u, double %i.ag, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> zeroinitializer, <2 x double> %i.db)
  %i.de = extractelement <2 x double> %i.db, i64 1
  %i.df = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.ad, <2 x double> %i.co)
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.di = extractelement <2 x double> %i.cd, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.d, double %i.a, double %i.di) ; 2 uses
  %i.dk = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 0
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 1
  %i.do = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.u, <2 x double> %i.dh)
  %i.dq = extractelement <2 x double> %i.dh, i64 1
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.bw, double 0.000000e+00, double %i.dq)
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.ag, double 0.000000e+00, double %i.dr)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.dj, double 0.000000e+00)
  %i.du = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.dt, i64 1
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bz, <2 x double> %i.du)
  %i.dw = fadd <2 x double> %i.dv, <double 0.000000e+00, double -0.000000e+00>
  %i.dx = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x double> %i.bz, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dz, <2 x double> %i.dm)
  %i.eb = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = extractelement <2 x double> %i.dm, i64 0
  %i.ed = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = insertelement <2 x double> %i.cw, double %i.ag, i64 1
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.dp)
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eg = insertelement <2 x double> %i.ct, double %i.aa, i64 0
  %i.eh = fadd <2 x double> %i.eg, zeroinitializer ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.ei) ; 4 uses
  %i.ek = shufflevector <2 x double> %i.ad, <2 x double> %i.ej, <2 x i32> <i32 1, i32 2>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ek, <2 x double> %i.dd)
  %i.em = fadd <2 x double> %i.el, %i.cy
  store <2 x double> %i.em, ptr %.sroa.5128.0..sroa_idx, align 8
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ej, <2 x double> %i.dw)
  %i.eo = shufflevector <2 x double> %i.ej, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eo, <2 x double> %i.ea)
  %i.eq = fadd <2 x double> %i.en, %i.dg
  %i.er = fadd <2 x double> %i.ep, %i.ef
  store <2 x double> %i.eq, ptr %3, align 8
  store <2 x double> %i.er, ptr %.sroa.7130.0..sroa_idx, align 8
  %i.es = fadd double %i.de, 0.000000e+00
  %i.et = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %i.dn) ; 2 uses
  %i.eu = fadd double %i.af, %i.et
  %i.ev = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x double> %i.ev, double %i.et, i64 1
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.ew)
  %i.ey = fadd double %i.eu, %i.ds
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %i.ec)
  %i.fa = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ez, i64 1
  %i.fc = fadd <2 x double> %i.ej, %i.fb
  %i.fd = fadd <2 x double> %i.ex, %i.fc
  store <2 x double> %i.fd, ptr %.sroa.9132.0..sroa_idx, align 8
  %.sroa.11134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.ey, ptr %.sroa.11134.0..sroa_idx, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = fneg double %i.c                        ; 2 uses
  %i.ff = fsub double 0.000000e+00, %i.d
  %6 = insertelement <2 x double> poison, double %i.fe, i64 0
  %7 = insertelement <2 x double> %6, double %i.f, i64 1
  %8 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ff, i64 0
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> zeroinitializer, <2 x double> %8) ; 3 uses
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.fh = extractelement <2 x double> %9, i64 0
  %10 = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.fh, double 0.000000e+00)
  %11 = fadd double %10, 0.000000e+00
  %12 = extractelement <2 x double> %i.ai, i64 0
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %.scalar, double %11)
  %14 = extractelement <2 x double> %i.ad, i64 0
  %15 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.z, <2 x double> zeroinitializer)
  %.sroa.471.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %17 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> %17)
  %18 = insertelement <2 x double> %i.j, double %i.fe, i64 1
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.s, <2 x double> %i.fi) ; 3 uses
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> zeroinitializer, <2 x double> %i.fg) ; 4 uses
  %20 = extractelement <2 x double> %i.fj, i64 1  ; 2 uses
  %21 = fneg double %20                           ; 2 uses
  %22 = extractelement <2 x double> %19, i64 1    ; 2 uses
  %23 = fneg double %22                           ; 2 uses
  %24 = insertelement <2 x double> poison, double %i.ag, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %i.fj, <2 x double> zeroinitializer)
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> zeroinitializer, <2 x double> %26)
  %i.fl = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.z, <2 x double> %i.fk)
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %16)
  %27 = insertelement <2 x double> poison, double %21, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %30 = insertelement <2 x double> %29, double %i.ag, i64 1
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %30, <2 x double> %i.fn)
  %31 = fadd <2 x double> %i.fo, %i.fm
  store <2 x double> %31, ptr %.sroa.471.0..sroa_idx.a, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %32 = shufflevector <2 x double> %9, <2 x double> %i.fj, <2 x i32> <i32 0, i32 2>
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %34 = extractelement <2 x double> %33, i64 0
  %35 = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %37 = shufflevector <2 x double> %i.u, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %37, <2 x double> %36)
  %39 = shufflevector <2 x double> %19, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %39, <2 x double> %33)
  %41 = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %35, <2 x double> %40)
  %43 = insertelement <2 x double> poison, double %23, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %i.ad, <2 x double> %38)
  %46 = fadd <2 x double> %45, %42
  store <2 x double> %46, ptr %.sroa.673.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %47 = extractelement <2 x double> %i.z, i64 1
  %i.fp = insertelement <2 x double> %i.h, double 0.000000e+00, i64 1
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.fp, <2 x double> zeroinitializer) ; 2 uses
  %48 = extractelement <2 x double> %i.fq, i64 0
  %49 = fadd double %48, 0.000000e+00
  %50 = tail call double @llvm.fmuladd.f64(double %21, double %14, double %49)
  %51 = fadd double %50, %13
  store double %51, ptr %4, align 8
  %52 = fadd double %34, 0.000000e+00
  %53 = fadd double %.scalar, %52
  %54 = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %55 = shufflevector <4 x double> %54, <4 x double> <double poison, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %56 = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %57 = insertelement <4 x double> %56, double 0.000000e+00, i64 1
  %58 = shufflevector <2 x double> %i.fq, <2 x double> %36, <4 x i32> <i32 1, i32 2, i32 3, i32 1>
  %59 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %55, <4 x double> %57, <4 x double> %58)
  %60 = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %23, i64 0
  %61 = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %62 = insertelement <4 x double> poison, double %i.ag, i64 0
  %63 = shufflevector <4 x double> %62, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %64 = shufflevector <4 x double> %63, <4 x double> %61, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %65 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %60, <4 x double> %64, <4 x double> %59)
  %66 = tail call double @llvm.fmuladd.f64(double %20, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.ag, double %22, double %66)
  %i.fs = extractelement <2 x double> %i.ai, i64 1
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fs, double %47, double %i.fr)
  %67 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %68 = insertelement <2 x double> %67, double %66, i64 1
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> zeroinitializer, <2 x double> %68)
  %i.fv = fadd <2 x double> %i.z, %i.fu
  %i.fw = insertelement <4 x double> poison, double %i.ft, i64 0
  %i.fx = insertelement <4 x double> %i.fw, double %53, i64 1
  %i.fy = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x double> %i.fx, <4 x double> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ga = fadd <4 x double> %65, %i.fz
  store <4 x double> %i.ga, ptr %.sroa.875.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gb = fdiv double 1.000000e+00, %i.ag         ; 5 uses
  %i.gc = extractelement <2 x double> %i.z, i64 1
  %i.gd = fmul double %i.gc, %i.gb                ; 2 uses
  %i.ge = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.gf = fmul double %i.ge, %i.gb                ; 2 uses
  %i.gg = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.gh = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gi, <2 x double> zeroinitializer)
  %i.gk = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.gl = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gm, <2 x double> %i.gj)
  %i.go = fadd <2 x double> %i.ad, %i.gn          ; 2 uses
  %i.gp = shufflevector <2 x double> %i.z, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.gq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gd, i64 0
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gq, <2 x double> zeroinitializer) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gs)
  %i.gu = fadd double %i.ag, %i.gt
  %i.gv = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x double> %i.gr, double 0.000000e+00, i64 0
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.gw, <2 x double> %i.gx)
  %i.gz = fadd <2 x double> %i.gy, <double 0.000000e+00, double -0.000000e+00>
  %i.ha = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> zeroinitializer, <2 x double> %i.gz)
  store <2 x double> %i.hb, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hc = extractelement <2 x double> %i.go, i64 0
  store double %i.hc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hd = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gb, i64 0 ; 2 uses
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.he, <2 x double> zeroinitializer)
  %i.hg = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.gb, i64 1 ; 2 uses
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hh, <2 x double> %i.hf)
  %i.hj = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> zeroinitializer, <2 x double> %i.hi)
  store <2 x double> %i.hk, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hl = extractelement <2 x double> %i.go, i64 1
  store double %i.hl, ptr %.sroa.841.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hm = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.he, <2 x double> zeroinitializer)
  %i.ho = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hh, <2 x double> %i.hn)
  %i.hq = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> zeroinitializer, <2 x double> %i.hp)
  store <2 x double> %i.hs, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.gu, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Vec.1") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.cv::Matx.0", align 16       ; 16 uses
  %9 = alloca %"class.cv::Matx.0", align 16       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Matx.0", align 8       ; 12 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 15 uses
  %14 = alloca %"class.cv::Matx.0", align 16      ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_E26__cv_trace_location_fn1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i32, ptr %10, align 8, !tbaa !20
  %i.f = and i32 %i.e, 31                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056314, ptr %11, align 8, !tbaa !50
  store ptr %8, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 12884901891, ptr %i.h, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ak = load double, ptr %i.i, align 8, !tbaa !31 ; 4 uses
  %i.al = call noundef double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ogt double %i.al, f0x3CB0000000000000 ; 2 uses
  %i.an = load double, ptr %i.j, align 16         ; 3 uses
  %i.ao = select i1 %i.am, double %i.ak, double 0.000000e+00 ; 3 uses
  %i.ap = select i1 %i.am, double %i.an, double 1.000000e+00 ; 3 uses
  %i.aq = fmul double %i.ao, %i.ao
  %i.ar = call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.aq)
  %i.as = call double @sqrt(double noundef %i.ar) #20
  %i.at = fdiv double 1.000000e+00, %i.as         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store double 1.000000e+00, ptr %12, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.au = load double, ptr %i.aa, align 16, !tbaa !31, !noalias !209 ; 2 uses
  %i.av = fadd double %i.au, 0.000000e+00
  %i.aw = fmul double %i.ap, %i.at                ; 5 uses
  %i.ax = fmul double %i.ao, %i.at                ; 5 uses
  %i.ay = fneg double %i.ax                       ; 3 uses
  store double %i.aw, ptr %i.m, align 8, !tbaa !31
  %i.az = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ax, i64 0
  store <2 x double> %i.az, ptr %i.n, align 8, !tbaa !31
  store double %i.ay, ptr %i.o, align 8, !tbaa !31
  store double %i.aw, ptr %i.p, align 8, !tbaa !31
  %i.ba = load double, ptr %8, align 16, !tbaa !31, !noalias !209
  %i.bb = load double, ptr %i.q, align 8, !tbaa !31, !noalias !209
  %i.bc = load double, ptr %i.r, align 16, !tbaa !31, !noalias !209
  %i.bd = load <2 x double>, ptr %i.u, align 8
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1 ; 2 uses
  %i.bf = fadd <2 x double> %i.be, zeroinitializer
  %i.bg = load <2 x double>, ptr %i.v, align 16
  %i.bh = insertelement <2 x double> %i.bg, double %i.bb, i64 1 ; 3 uses
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> zeroinitializer, <2 x double> %i.bf)
  %i.bj = load <2 x double>, ptr %i.w, align 8
  %i.bk = insertelement <2 x double> %i.bj, double %i.bc, i64 1 ; 3 uses
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> zeroinitializer, <2 x double> %i.bi) ; 6 uses
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bo, <2 x double> %i.bm)
  %i.bq = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFbRKN2cv17_InputOutputArrayERKNS0_12_OutputArrayES6_EZNS0_26findExtrinsicCameraParams2ERKNS0_3MatESA_SA_SA_RS8_SB_iE3$_0E9_M_invokeERKSt9_Any_dataS3_S6_S6_":bb.a

bb.bf:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn74.i.i.i = phi { ptr, i32 } [ %i.dl, %bb.bg ], [ %i.dk, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be, %bb.ay, %bb.au, %bb.an, %bb.am
  %.pn74.pn.i.i.i = phi { ptr, i32 } [ %.pn74.i.i.i, %bb.bh ], [ %.pn72.i.i.i, %bb.be ], [ %.pn60.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.au ], [ %i.cb, %bb.an ], [ %i.cz, %bb.ay ], [ %.pn51.i.i.i, %bb.am ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.aj
  %.pn74.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn74.pn.i.i.i, %bb.bi ], [ %i.by, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ai
  %.pn74.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn74.pn.pn.i.i.i, %bb.bj ], [ %i.bx, %bb.ai ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ah
  %.pn74.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn74.pn.pn.pn.i.i.i, %bb.bk ], [ %i.bw, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ag
  %.pn74.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.i.i.i, %bb.bl ], [ %i.bv, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.g
  %.pn74.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.i.i.i, %bb.bm ], [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.r, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIbRZN2cv26findExtrinsicCameraParams2ERKNS0_3MatES3_S3_S3_RS1_S4_iE3$_0JRKNS0_17_InputOutputArrayERKNS0_12_OutputArrayESC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %bb.bb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN2cv17_InputOutputArrayERKNS0_12_OutputArrayES6_EZNS0_26findExtrinsicCameraParams2ERKNS0_3MatESA_SA_SA_RS8_SB_iE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv26findExtrinsicCameraParams2ERKNS_3MatES2_S2_S2_RS0_S3_iE3$_0", ptr %0, align 8, !tbaa !308
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !68
  store ptr %.val, ptr %0, align 8, !tbaa !68
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 4 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 3, label %bb.n
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(832) ptr @_Znwm(i64 noundef 832) #24 ; 7 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(832) %i.a, ptr noundef nonnull align 8 dereferenceable(832) %.val6)
          to label %.noexc.i.i.i unwind label %bb.m

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.c)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 416 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val6, i64 416
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 624
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.g)
          to label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i" unwind label %bb.j

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.i, %bb.i ]
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.k ], [ %i.h, %bb.h ]
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(832) %i.a) #20
  br label %.body.i.i.i

bb.m:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.l
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.m ], [ %.pn.pn.i.i.i.i, %bb.l ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 832) #22
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g
  store ptr %i.a, ptr %0, align 8, !tbaa !68
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.n:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !68 ; 6 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 624
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %.val7.i, i64 416
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %.val7.i, i64 208
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #20
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(832) %.val7.i) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 832) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.o, %bb.n, %"_ZNSt14_Function_base13_Base_managerIZN2cv26findExtrinsicCameraParams2ERKNS1_3MatES4_S4_S4_RS2_S5_iE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i", %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

declare void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!11 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !10, i64 16}
!12 = !{!11, !9, i64 8}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!15 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!16 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!17 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !16, i64 4, !6, i64 8, !5, i64 12}
!18 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!19 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !14, i64 56, !15, i64 64, !17, i64 72, !18, i64 128}
!20 = !{!19, !6, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !22, i64 8, !5, i64 16}
!24 = !{!23, !13, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!19, !6, i64 12}
!27 = !{!19, !6, i64 8}
!28 = !{!22, !22, i64 0}
!29 = !{!19, !13, i64 24}
!30 = !{!"double", !5, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"float", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !9, i64 0}
!38 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !37, i64 0, !6, i64 8}
!39 = !{!38, !6, i64 8}
!40 = !{!17, !6, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!"p1 _ZTSN2cv5MatOpE", !9, i64 0}
!43 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !5, i64 0}
!44 = !{!"_ZTSN2cv3VecIdLi4EEE", !43, i64 0}
!45 = !{!"_ZTSN2cv7Scalar_IdEE", !44, i64 0}
!46 = !{!"_ZTSN2cv7MatExprE", !42, i64 0, !6, i64 8, !19, i64 16, !19, i64 224, !19, i64 432, !30, i64 640, !30, i64 648, !45, i64 656}
!47 = !{!46, !42, i64 0}
!48 = !{!"vtable pointer", !4, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!11, !6, i64 0}
!51 = !{!10, !6, i64 0}
!52 = !{!10, !6, i64 4}
!53 = !{!19, !6, i64 16}
!54 = !{!19, !13, i64 32}
!55 = !{!19, !13, i64 40}
!56 = !{!19, !13, i64 48}
!57 = !{!"_ZTSN2cv7Point3_IdEE", !30, i64 0, !30, i64 8, !30, i64 16}
!58 = !{!57, !30, i64 0}
!59 = !{!57, !30, i64 8}
!60 = !{!57, !30, i64 16}
!61 = !{!"_ZTSN2cv12TermCriteriaE", !6, i64 0, !6, i64 4, !30, i64 8}
!62 = !{!61, !6, i64 0}
!63 = !{!61, !6, i64 4}
!64 = !{!61, !30, i64 8}
!65 = !{!"_ZTSN2cv5RangeE", !6, i64 0, !6, i64 4}
!66 = !{!65, !6, i64 0}
!67 = !{!65, !6, i64 4}
!68 = !{!9, !9, i64 0}
!69 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!70 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!73 = !{!72, !6, i64 8}
!74 = !{!72, !6, i64 12}
!75 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!76 = distinct !{!76, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!77 = distinct !{!77, !76, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!78 = distinct !{!78, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!79 = distinct !{!79, !78, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!81 = distinct !{!81, !80, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!83 = distinct !{!83, !82, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !84}
!89 = distinct !{!89, !32, !33, !34}
!90 = distinct !{!90, !32, !33}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !92}
!97 = distinct !{!97, !32, !33, !34}
!98 = distinct !{!98, !32, !33}
!99 = distinct !{!99, !32}
!100 = !{!77}
!101 = !{!79}
!102 = !{!81}
!103 = !{!83}
!104 = !{!85}
!105 = !{!86}
!106 = !{!88, !85, !87}
!107 = !{!87}
!108 = !{!88}
!109 = !{!85, !87}
!110 = !{!93}
!111 = !{!94}
!112 = !{!96, !93, !95}
!113 = !{!95}
!114 = !{!96}
!115 = !{!93, !95}
!116 = !{!21, !13, i64 0}
!117 = !{!23, !22, i64 8}
!118 = distinct !{!118, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!119 = distinct !{!119, !118, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!120 = distinct !{!120, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!121 = distinct !{!121, !120, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!123 = distinct !{!123, !122, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN2cvplIdLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKS3_S5_"}
!125 = distinct !{!125, !124, !"_ZN2cvplIdLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKS3_S5_: argument 0"}
!126 = distinct !{!126, !32, !133}
!127 = distinct !{!127, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!128 = distinct !{!128, !127, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!129 = !{!119}
!130 = !{!121}
!131 = !{!123}
!132 = !{!125}
!133 = !{!"llvm.loop.peeled.count", i32 1}
!134 = !{!128}
!135 = distinct !{!135, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!136 = distinct !{!136, !135, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!138 = distinct !{!138, !137, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!140 = distinct !{!140, !139, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!142 = distinct !{!142, !141, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!144 = distinct !{!144, !143, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!146 = distinct !{!146, !145, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!148 = distinct !{!148, !147, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!150 = distinct !{!150, !149, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!151 = distinct !{!151, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!152 = distinct !{!152, !151, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!153 = distinct !{!153, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!154 = distinct !{!154, !153, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!156 = distinct !{!156, !155, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!158 = distinct !{!158, !157, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!159 = !{!136}
!160 = !{!138}
!161 = !{!140}
!162 = !{!142}
!163 = !{!144}
!164 = !{!146}
!165 = !{!148}
!166 = !{!150}
!167 = !{!152}
end_hunk_1
