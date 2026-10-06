Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.bke = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.iy unwind label %bb.in

bb.iy:                                            ; preds = %bb.ix
  br i1 %i.bke, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ja unwind label %bb.in

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.bkf = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.jb unwind label %bb.in

bb.jb:                                            ; preds = %bb.ja
  br i1 %i.bkf, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
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
  %i.az = fadd double %i.ay, 0.000000e+00
  store <2 x double> %i.ax, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.u, <2 x double> %i.ba)
  %i.bc = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = insertelement <2 x double> %i.av, double %i.ag, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bb)
  %i.bf = extractelement <2 x double> %i.ba, i64 0
  %i.bg = shufflevector <2 x double> %i.an, <2 x double> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %i.bg) ; 2 uses
  %i.bi = shufflevector <2 x double> %i.an, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bj = fadd <2 x double> %i.bi, <double 0.000000e+00, double -0.000000e+00>
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ad, <2 x double> %i.bj)
  store <2 x double> %i.bk, ptr %2, align 8
  %i.bl = extractelement <2 x double> %i.bh, i64 1
  %i.bm = fadd double %i.ag, %i.bl
  store <2 x double> %i.be, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.aj, double 0.000000e+00, double %i.bf)
  %i.bo = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1
  %i.bq = fadd <2 x double> %i.ad, %i.bp
  store <2 x double> %i.bq, ptr %.sroa.9172.0..sroa_idx, align 8
  %.sroa.11174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.bm, ptr %.sroa.11174.0..sroa_idx, align 8, !tbaa !25
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
  %i.cz = insertelement <2 x double> %i.ct, double %i.aa, i64 0
  %i.da = fadd <2 x double> %i.cz, zeroinitializer ; 2 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.db) ; 4 uses
  %i.dd = insertelement <2 x double> %i.cx, double 0.000000e+00, i64 1
  %i.de = shufflevector <2 x double> %i.z, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.de, <2 x double> zeroinitializer) ; 2 uses
  %i.dg = insertelement <2 x double> %i.u, double %i.ag, i64 1
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> zeroinitializer, <2 x double> %i.df)
  %i.di = shufflevector <2 x double> %i.ad, <2 x double> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.di, <2 x double> %i.dh)
  %i.dk = extractelement <2 x double> %i.df, i64 1
  %i.dl = fadd double %i.dk, 0.000000e+00
  %i.dm = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.ad, <2 x double> %i.co)
  %i.do = fadd <2 x double> %i.dj, %i.cy
  store <2 x double> %i.do, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.dq = extractelement <2 x double> %i.cd, i64 0
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.d, double %i.a, double %i.dq) ; 2 uses
  %i.ds = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 0
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.u, <2 x double> %i.dp)
  %i.dy = extractelement <2 x double> %i.dp, i64 1
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.bw, double 0.000000e+00, double %i.dy)
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.ag, double 0.000000e+00, double %i.dz)
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.dr, double 0.000000e+00)
  %i.ec = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.eb, i64 1
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bz, <2 x double> %i.ec)
  %i.ee = fadd <2 x double> %i.ed, <double 0.000000e+00, double -0.000000e+00>
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.dc, <2 x double> %i.ee)
  %i.eg = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x double> %i.bz, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ei, <2 x double> %i.du)
  %i.ek = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.el = shufflevector <2 x double> %i.dc, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.el, <2 x double> %i.ej)
  %i.en = extractelement <2 x double> %i.du, i64 0
  %i.eo = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = insertelement <2 x double> %i.cw, double %i.ag, i64 1
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.dx)
  %i.er = fadd <2 x double> %i.ef, %i.dn
  %i.es = fadd <2 x double> %i.em, %i.eq
  store <2 x double> %i.er, ptr %3, align 8
  store <2 x double> %i.es, ptr %.sroa.7130.0..sroa_idx, align 8
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.et = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %i.dv) ; 2 uses
  %i.eu = fadd double %i.af, %i.et
  %i.ev = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x double> %i.ev, double %i.et, i64 1
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.ew)
  %i.ey = fadd double %i.eu, %i.ea
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %i.en)
  %i.fa = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ez, i64 1
  %i.fc = fadd <2 x double> %i.dc, %i.fb
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
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.f, i64 1
  %i.fi = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ff, i64 0
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> zeroinitializer, <2 x double> %i.fi) ; 3 uses
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.fl = extractelement <2 x double> %i.fj, i64 0
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.fl, double 0.000000e+00)
  %i.fn = fadd double %i.fm, 0.000000e+00
  %i.fo = extractelement <2 x double> %i.ai, i64 0
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %.scalar, double %i.fn)
  %i.fq = extractelement <2 x double> %i.ad, i64 0
  %i.fr = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.z, <2 x double> zeroinitializer)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> %i.ft)
  %i.fv = insertelement <2 x double> %i.j, double %i.fe, i64 1
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.s, <2 x double> %i.fu) ; 3 uses
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> zeroinitializer, <2 x double> %i.fk) ; 4 uses
  %i.fy = extractelement <2 x double> %i.fw, i64 1 ; 2 uses
  %i.fz = fneg double %i.fy                       ; 2 uses
  %i.ga = extractelement <2 x double> %i.fx, i64 1 ; 2 uses
  %i.gb = fneg double %i.ga                       ; 2 uses
  %i.gc = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fw, <2 x double> zeroinitializer)
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> zeroinitializer, <2 x double> %i.ge)
  %i.gg = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.z, <2 x double> %i.gf)
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %i.fs)
  %i.gj = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x double> %i.gl, double %i.ag, i64 1
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gm, <2 x double> %i.gi)
  %i.go = fadd <2 x double> %i.gn, %i.gh
  store <2 x double> %i.go, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gp = shufflevector <2 x double> %i.fj, <2 x double> %i.fw, <2 x i32> <i32 0, i32 2>
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.gu = shufflevector <2 x double> %i.u, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.gu, <2 x double> %i.gt)
  %i.gw = shufflevector <2 x double> %i.fx, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.gw, <2 x double> %i.gq)
  %i.gy = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.gs, <2 x double> %i.gx)
  %i.ha = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.ad, <2 x double> %i.gv)
  %i.hd = fadd <2 x double> %i.hc, %i.gz
  store <2 x double> %i.hd, ptr %.sroa.673.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.he = extractelement <2 x double> %i.z, i64 1
  %i.hf = insertelement <2 x double> %i.h, double 0.000000e+00, i64 1
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.hf, <2 x double> zeroinitializer) ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %i.hi = fadd double %i.hh, 0.000000e+00
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.fq, double %i.hi)
  %i.hk = fadd double %i.hj, %i.fp
  store double %i.hk, ptr %4, align 8
  %i.hl = fadd double %i.gr, 0.000000e+00
  %i.hm = fadd double %.scalar, %i.hl
  %i.hn = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ho = shufflevector <4 x double> %i.hn, <4 x double> <double poison, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hp = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.hq = insertelement <4 x double> %i.hp, double 0.000000e+00, i64 1
  %i.hr = shufflevector <2 x double> %i.hg, <2 x double> %i.gt, <4 x i32> <i32 1, i32 2, i32 3, i32 1>
  %i.hs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ho, <4 x double> %i.hq, <4 x double> %i.hr)
  %i.ht = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.gb, i64 0
  %i.hu = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.hv = insertelement <4 x double> poison, double %i.ag, i64 0
  %i.hw = shufflevector <4 x double> %i.hv, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hx = shufflevector <4 x double> %i.hw, <4 x double> %i.hu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ht, <4 x double> %i.hx, <4 x double> %i.hs)
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.fy, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ga, double %i.hz)
  %i.ib = extractelement <2 x double> %i.ai, i64 1
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.he, double %i.ia)
  %i.id = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ie = insertelement <2 x double> %i.id, double %i.hz, i64 1
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> zeroinitializer, <2 x double> %i.ie)
  %i.ig = fadd <2 x double> %i.z, %i.if
  %i.ih = insertelement <4 x double> poison, double %i.ic, i64 0
  %i.ii = insertelement <4 x double> %i.ih, double %i.hm, i64 1
  %i.ij = shufflevector <2 x double> %i.ig, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ik = shufflevector <4 x double> %i.ii, <4 x double> %i.ij, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.il = fadd <4 x double> %i.hy, %i.ik
  store <4 x double> %i.il, ptr %.sroa.875.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.im = fdiv double 1.000000e+00, %i.ag         ; 5 uses
  %i.in = extractelement <2 x double> %i.z, i64 1
  %i.io = fmul double %i.in, %i.im                ; 2 uses
  %i.ip = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.iq = fmul double %i.ip, %i.im                ; 2 uses
  %i.ir = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.is = insertelement <2 x double> poison, double %i.io, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.it, <2 x double> zeroinitializer)
  %i.iv = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.iw = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ix, <2 x double> %i.iu)
  %i.iz = fadd <2 x double> %i.ad, %i.iy          ; 2 uses
  %i.ja = shufflevector <2 x double> %i.z, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.jb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.io, i64 0
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.jb, <2 x double> zeroinitializer) ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  %i.je = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.iq, double %i.jd)
  %i.jf = fadd double %i.ag, %i.je
  %i.jg = insertelement <2 x double> poison, double %i.im, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x double> %i.jc, double 0.000000e+00, i64 0
  %i.jj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.jh, <2 x double> %i.ji)
  %i.jk = fadd <2 x double> %i.jj, <double 0.000000e+00, double -0.000000e+00>
  %i.jl = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> zeroinitializer, <2 x double> %i.jk)
  store <2 x double> %i.jm, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jn = extractelement <2 x double> %i.iz, i64 0
  store double %i.jn, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jo = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.im, i64 0 ; 2 uses
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jr = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.im, i64 1 ; 2 uses
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.js, <2 x double> %i.jq)
  %i.ju = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> zeroinitializer, <2 x double> %i.jt)
  store <2 x double> %i.jv, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jw = extractelement <2 x double> %i.iz, i64 1
  store double %i.jw, ptr %.sroa.841.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jx = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jz = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.js, <2 x double> %i.jy)
  %i.kb = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> zeroinitializer, <2 x double> %i.ka)
  store <2 x double> %i.kd, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.jf, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
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
  %8 = alloca %"class.cv::Matx.0", align 8        ; 16 uses
  %9 = alloca %"class.cv::Matx.0", align 16       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %13 = alloca %"class.cv::Matx.0", align 8       ; 14 uses
  %14 = alloca %"class.cv::Matx.0", align 16      ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_E26__cv_trace_location_fn1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !31
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !206
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
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store double 1.000000e+00, ptr %12, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.ae = load double, ptr %i.j, align 8          ; 3 uses
  %i.af = load <2 x double>, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ag = load double, ptr %i.i, align 8, !tbaa !31 ; 4 uses
  %i.ah = extractelement <2 x double> %i.af, i64 0
  %i.ai = fadd double %i.ah, 0.000000e+00
  %i.aj = call noundef double @llvm.fabs.f64(double %i.ag)
  %i.ak = fcmp ogt double %i.aj, f0x3CB0000000000000 ; 2 uses
  %i.al = select i1 %i.ak, double %i.ag, double 0.000000e+00 ; 3 uses
  %i.am = select i1 %i.ak, double %i.ae, double 1.000000e+00 ; 3 uses
  %i.an = fmul double %i.al, %i.al
  %i.ao = call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.an)
  %sqrt157 = call double @llvm.sqrt.f64(double %i.ao)
  %i.ap = fdiv double 1.000000e+00, %sqrt157      ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double 0.000000e+00, double %i.ai)
  %i.ar = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.as = insertelement <2 x double> %i.ar, double %i.ae, i64 0
  %i.at = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aq, i64 0
  %i.au = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> zeroinitializer, <2 x double> %i.at) ; 4 uses
  %i.av = insertelement <2 x double> %i.au, double 0.000000e+00, i64 1
  store <2 x double> %i.av, ptr %i.ac, align 8, !tbaa !31
  %i.aw = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.ax = call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, f0x3CB0000000000000 ; 2 uses
  %i.az = fneg double %i.aw
  %i.ba = select i1 %i.ay, double %i.az, double 0.000000e+00 ; 3 uses
  %i.bb = fmul double %i.ba, %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bd, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.bj = load <4 x double>, ptr %8, align 8, !tbaa !31, !noalias !207 ; 3 uses
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.bl = fadd <2 x double> %i.bk, zeroinitializer
  %i.bm = load <2 x double>, ptr %i.w, align 8, !tbaa !31, !noalias !207
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> %i.bj, <2 x i32> <i32 0, i32 5> ; 3 uses
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> zeroinitializer, <2 x double> %i.bl)
  %i.bq = shufflevector <4 x double> %i.bn, <4 x double> %i.bj, <2 x i32> <i32 1, i32 6> ; 3 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> zeroinitializer, <2 x double> %i.bp) ; 5 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1
  store double %i.bs, ptr %13, align 8, !tbaa !31, !alias.scope !207
  %i.bt = fmul double %i.am, %i.ap                ; 5 uses
  %i.bu = fmul double %i.al, %i.ap                ; 5 uses
  %i.bv = fneg double %i.bu                       ; 3 uses
  store double %i.bt, ptr %i.m, align 8, !tbaa !31
  %i.bw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bu, i64 0
  store <2 x double> %i.bw, ptr %i.n, align 8, !tbaa !31
  store double %i.bv, ptr %i.p, align 8, !tbaa !31
  store double %i.bt, ptr %i.q, align 8, !tbaa !31
  %i.bx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bz, <2 x double> %i.bx)
  %i.cb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.cc, <2 x double> %i.ca) ; 5 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 1
  store double %i.ce, ptr %i.t, align 8, !tbaa !31, !alias.scope !207
  %i.cf = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.cg, <2 x double> %i.bx)
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bz, <2 x double> %i.ch) ; 5 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1
  store double %i.cj, ptr %i.u, align 8, !tbaa !31, !alias.scope !207
  %i.ck = extractelement <2 x double> %i.au, i64 1
  %i.cl = call double @llvm.fmuladd.f64(double %i.ag, double %i.bu, double %i.ck)
  %i.cm = call double @llvm.fmuladd.f64(double %i.ae, double %i.bt, double %i.cl) ; 4 uses
  store double %i.cm, ptr %i.ad, align 8, !tbaa !31, !alias.scope !207
  %i.cn = select i1 %i.ay, double %i.cm, double 1.000000e+00 ; 3 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.bb)
  %sqrt = call double @llvm.sqrt.f64(double %i.co)
end_hunk_0
