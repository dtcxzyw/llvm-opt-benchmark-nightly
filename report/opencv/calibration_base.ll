Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
bb.it:                                            ; preds = %bb.is
  br i1 %i.bji, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.iv unwind label %bb.il

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.bjj = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.iw unwind label %bb.il

bb.iw:                                            ; preds = %bb.iv
  br i1 %i.bjj, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.iy unwind label %bb.il

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.bjk = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.iz unwind label %bb.il

bb.iz:                                            ; preds = %bb.iy
  br i1 %i.bjk, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.jb unwind label %bb.il

bb.jb:                                            ; preds = %bb.iz, %bb.ja
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

bb.jc:                                            ; preds = %bb.ho, %bb.il, %bb.hn, %bb.hm
  %.pn832.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yg, %bb.hm ], [ %i.yh, %bb.hn ], [ %i.yi, %bb.ho ], [ %i.bjf, %bb.il ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #20
  br label %.body1056

.body1056:                                        ; preds = %bb.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1047, %bb.jc
  %.pn832.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn832.pn.pn.pn.pn.pn.pn, %bb.jc ], [ %i.yf, %bb.hl ], [ %i.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1047 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.jd

bb.jd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1035, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1041, %.body1056, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, %.body1030, %bb.gh, %bb.ff
  %.pn842.pn.pn = phi { ptr, i32 } [ %.pn806, %bb.gh ], [ %i.ld, %bb.eh ], [ %i.my, %bb.ff ], [ %.pn842, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019 ], [ %.pn803.pn, %.body1030 ], [ %.pn832.pn.pn.pn.pn.pn.pn.pn, %.body1056 ], [ %.pn819, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1035 ], [ %.pn816, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1041 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #20
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.eg
  %.pn842.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn, %bb.jd ], [ %i.lc, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.dz
  %.pn842.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn.pn, %bb.je ], [ %i.km, %bb.dz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #20
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.dy
  %.pn842.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn.pn.pn, %bb.jf ], [ %i.kl, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #20
  br label %.body1007

.body1007:                                        ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i998, %bb.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1012
  %.pn849.pn = phi { ptr, i32 } [ %.pn849, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1012 ], [ %.pn842.pn.pn.pn.pn.pn, %bb.jg ], [ %i.jq, %bb.dq ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i998 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #20
  br label %bb.jh

bb.jh:                                            ; preds = %.body1007, %bb.dp
  %.pn849.pn.pn = phi { ptr, i32 } [ %.pn849.pn, %.body1007 ], [ %i.jp, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.do
  %.pn849.pn.pn.pn = phi { ptr, i32 } [ %.pn849.pn.pn, %bb.jh ], [ %i.jo, %bb.do ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #20
  br label %.body990

.body990:                                         ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i981, %bb.ji
  %.pn849.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn849.pn.pn.pn, %bb.ji ], [ %i.jn, %bb.dn ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i981 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #20
  br label %.body

.body:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979, %bb.ck, %bb.ca, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950
  %.pn855.pn = phi { ptr, i32 } [ %.pn855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950 ], [ %.pn849.pn.pn.pn.pn, %.body990 ], [ %.pn793, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979 ], [ %.pn790.pn, %bb.ca ], [ %i.fz, %bb.bw ], [ %.pn775.pn.pn.pn.pn, %bb.ck ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.et, %bb.bm ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #20
  br label %bb.jj

bb.jj:                                            ; preds = %.body, %bb.bl
  %.pn855.pn.pn = phi { ptr, i32 } [ %.pn855.pn, %.body ], [ %i.es, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #20
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.bk
  %.pn855.pn.pn.pn = phi { ptr, i32 } [ %.pn855.pn.pn, %bb.jj ], [ %i.er, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #20
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.bj
  %.pn855.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn855.pn.pn.pn, %bb.jk ], [ %i.eq, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %bb.jm

bb.jm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931, %bb.aj, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934, %bb.jl, %bb.n
  %.pn861.pn.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %.pn861, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn855.pn.pn.pn.pn, %bb.jl ], [ %i.cq, %bb.al ], [ %.pn771, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934 ], [ %.pn769, %bb.aj ], [ %.pn764, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.m
  %.pn861.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn, %bb.jm ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #20
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.l
  %.pn861.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn.pn, %bb.jn ], [ %i.at, %bb.l ]
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
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.k
  %.pn861.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn.pn.pn, %bb.jo ], [ %i.as, %bb.k ]
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
  %i.a = tail call double @cos(double noundef %0) #20 ; 7 uses
  %i.b = tail call double @sin(double noundef %0) #20 ; 7 uses
  %i.c = tail call double @cos(double noundef %1) #20 ; 4 uses
  %i.d = tail call double @sin(double noundef %1) #20 ; 6 uses
  %i.e = fneg double %i.b                         ; 5 uses
  %i.f = fneg double %i.d                         ; 4 uses
  %i.g = fadd double %i.c, 0.000000e+00
  %i.h = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.f, i64 0
  %i.i = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.g, i64 0
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> zeroinitializer, <2 x double> %i.i) ; 10 uses
  %i.k = fadd double %i.a, 0.000000e+00
  %i.l = fadd double %i.d, 0.000000e+00
  %i.m = insertelement <2 x double> poison, double %i.c, i64 0 ; 3 uses
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.e, i64 1
  %i.p = insertelement <2 x double> poison, double %i.l, i64 0
  %i.q = fadd double %i.b, 0.000000e+00
  %i.r = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.f, i64 1
  %i.s = insertelement <2 x double> poison, double %i.a, i64 0 ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x double> poison, double %i.q, i64 0
  %i.v = tail call double @llvm.fmuladd.f64(double %i.c, double 0.000000e+00, double 0.000000e+00) ; 4 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.a, double 0.000000e+00, double %i.v)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.b, double 0.000000e+00, double %i.v)
  %i.y = insertelement <2 x double> %i.u, double %i.x, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.y) ; 24 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.d, double %i.b, double %i.w) ; 9 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.d, double 0.000000e+00, double 0.000000e+00) ; 4 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.a, double 0.000000e+00, double %i.ab)
  %i.ac = insertelement <2 x double> %i.p, double %6, i64 1
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.o, <2 x double> %i.ac) ; 21 uses
  %7 = tail call double @llvm.fmuladd.f64(double %i.b, double 0.000000e+00, double %i.ab)
  %i.ae = insertelement <2 x double> %i.m, double %i.e, i64 1
  %i.af = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.a, i64 0
  %8 = insertelement <2 x double> poison, double %7, i64 0
  %i.ag = insertelement <2 x double> %8, double %i.k, i64 1
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ag) ; 26 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 6 uses
  %i.aj = fneg <2 x double> %i.z                  ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = extractelement <2 x double> %i.ah, i64 1
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.am = insertelement <2 x double> %i.ah, double 0.000000e+00, i64 1
  %i.an = shufflevector <2 x double> %i.z, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> zeroinitializer) ; 2 uses
  %i.ap = extractelement <2 x double> %i.z, i64 0
  %i.aq = insertelement <2 x double> %i.z, double %i.aa, i64 0
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.as = extractelement <2 x double> %i.ao, i64 1
  %i.at = extractelement <2 x double> %i.ar, i64 0
  %i.au = extractelement <2 x double> %i.ar, i64 1
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double 0.000000e+00, double %i.au)
  %i.aw = fadd double %i.ai, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aa, double 0.000000e+00)
  %i.ay = insertelement <2 x double> %i.j, double 0.000000e+00, i64 1
  %i.az = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ax, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ay, <2 x double> %i.az)
  %i.bb = fadd <2 x double> %i.ba, <double 0.000000e+00, double -0.000000e+00>
  %i.bc = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.ad, <2 x double> %i.bb)
  store <2 x double> %i.bd, ptr %2, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shufflevector <2 x double> %i.z, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> zeroinitializer, <2 x double> %i.ao)
  %i.bg = shufflevector <2 x double> %i.ah, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.bg, <2 x double> %i.bf)
  store <2 x double> %i.bh, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x double> %i.ah, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.ar)
  %i.bl = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = shufflevector <2 x double> %i.ad, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bm, <2 x double> %i.bk)
  store <2 x double> %i.bn, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bo = fadd double %i.as, 0.000000e+00
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.ak, double 0.000000e+00, double %i.at)
  %i.bq = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bp, i64 1
  %i.bs = fadd <2 x double> %i.ad, %i.br
  store <2 x double> %i.bs, ptr %.sroa.9172.0..sroa_idx, align 8
  %.sroa.11174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.aw, ptr %.sroa.11174.0..sroa_idx, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not35 = icmp eq ptr %3, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = fneg double %i.a                        ; 2 uses
  %i.bu = fsub double 0.000000e+00, %i.b
  %i.bv = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.bw = insertelement <2 x double> %i.bv, double %i.aa, i64 1
  %i.bx = fneg <2 x double> %i.bw                 ; 3 uses
  %i.by = insertelement <2 x double> %i.j, double %i.aa, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.ca = shufflevector <2 x double> %i.z, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.cb = shufflevector <2 x double> %i.j, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> zeroinitializer) ; 2 uses
  %i.cd = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ce = insertelement <2 x double> %i.z, double %i.aa, i64 0 ; 2 uses
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ce, <2 x double> zeroinitializer)
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ch = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = shufflevector <2 x double> %i.ah, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> zeroinitializer, <2 x double> %i.cf)
  %i.ck = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = shufflevector <2 x double> %i.ad, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.cj)
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cn = fadd double %i.v, 0.000000e+00
  %i.co = insertelement <2 x double> %i.z, double %i.e, i64 1
  %i.cp = insertelement <2 x double> %i.cc, double %i.v, i64 1
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cp) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.ai, double 0.000000e+00, double %i.cr)
  %i.ct = insertelement <2 x double> poison, double %i.f, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.d, i64 1
  %i.cv = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.a, i64 1
  %i.cw = insertelement <2 x double> %i.cq, double %i.cn, i64 0
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cv, <2 x double> %i.cw) ; 3 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.e, double 0.000000e+00, double %i.ab)
  %i.cz = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bt, i64 1
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = insertelement <2 x double> %i.ah, double 0.000000e+00, i64 0
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.dc, <2 x double> %i.bz)
  %i.de = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.ad, <2 x double> %i.dd)
  %i.dg = shufflevector <2 x double> %i.ad, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.dh = insertelement <2 x double> %i.z, double 1.000000e+00, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.dh, <2 x double> %i.cc)
  %i.dj = shufflevector <2 x double> %i.ah, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.dj, <2 x double> %i.di)
  %i.dl = shufflevector <2 x double> %i.cx, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.dm = insertelement <2 x double> %i.bz, double 0.000000e+00, i64 0
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.dl, <2 x double> %i.dm) ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  %i.dp = fadd double %i.do, 0.000000e+00
  %i.dq = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = shufflevector <2 x double> %i.cx, <2 x double> %i.ce, <2 x i32> <i32 1, i32 2>
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ds, <2 x double> zeroinitializer)
  %i.du = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = extractelement <2 x double> %i.da, i64 1
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dw = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dx = insertelement <2 x double> %i.dw, double %i.ab, i64 0
  %i.dy = fadd <2 x double> %i.dx, zeroinitializer ; 2 uses
  %i.dz = insertelement <2 x double> %i.dy, double %i.cy, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.cz, <2 x double> %i.dz) ; 4 uses
  %i.eb = shufflevector <2 x double> %i.ad, <2 x double> %i.ea, <2 x i32> <i32 1, i32 2>
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.eb, <2 x double> %i.dr)
  %i.ed = fadd <2 x double> %i.ec, %i.dk          ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1
  store double %i.ee, ptr %3, align 8
  %i.ef = shufflevector <2 x double> %i.ad, <2 x double> %i.ea, <2 x i32> <i32 3, i32 1>
  %i.eg = extractelement <2 x double> %i.ed, i64 0
  store double %i.eg, ptr %.sroa.8131.0..sroa_idx, align 8
  %i.eh = fadd double %i.db, 0.000000e+00
  %i.ei = insertelement <2 x double> %i.bv, double %i.bt, i64 1
  %i.ej = insertelement <2 x double> %i.dw, double %i.bu, i64 1
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> zeroinitializer, <2 x double> %i.ej) ; 5 uses
  %i.el = extractelement <2 x double> %i.ek, i64 1
  %shift = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.ek
  %i.em = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.en = shufflevector <2 x double> %i.dy, <2 x double> %i.ek, <2 x i32> <i32 1, i32 2>
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.en)
  %i.ep = fadd double %i.em, %i.cs
  %i.eq = shufflevector <2 x double> %i.ek, <2 x double> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> zeroinitializer, <2 x double> %i.dt)
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ef, <2 x double> %i.er)
  %i.et = insertelement <2 x double> %i.ek, double 0.000000e+00, i64 0
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.et, <2 x double> %i.da)
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.ea, <2 x double> %i.eu)
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.el, double 0.000000e+00, double %i.dv)
  %i.ex = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = fadd <2 x double> %i.ea, %i.ey
  %i.fa = fadd <2 x double> %i.es, %i.cm
  %i.fb = fadd <2 x double> %i.ev, %i.df
  %i.fc = fadd <2 x double> %i.eo, %i.ez
  store <2 x double> %i.fa, ptr %.sroa.4127.0..sroa_idx, align 8
  store <2 x double> %i.fb, ptr %.sroa.6129.0..sroa_idx, align 8
  store <2 x double> %i.fc, ptr %.sroa.9132.0..sroa_idx, align 8
  %.sroa.11134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.ep, ptr %.sroa.11134.0..sroa_idx, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fd = fneg double %i.c                        ; 2 uses
  %i.fe = fsub double 0.000000e+00, %i.d
  %i.ff = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.f, i64 1
  %i.fh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fe, i64 0
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> zeroinitializer, <2 x double> %i.fh) ; 3 uses
  %9 = insertelement <2 x double> %i.s, double %i.b, i64 1 ; 3 uses
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.fk = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fl = insertelement <2 x double> %i.z, double %i.aa, i64 0 ; 2 uses
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fl, <2 x double> zeroinitializer)
  %i.fn = insertelement <2 x double> %i.j, double %i.aa, i64 1 ; 3 uses
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fp = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> zeroinitializer, <2 x double> %i.fp)
  %i.fr = insertelement <2 x double> %i.m, double %i.fd, i64 1
  %i.fs = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fs, <2 x double> %i.fq) ; 4 uses
  %i.fu = insertelement <2 x double> %i.fs, double %i.e, i64 0
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> zeroinitializer, <2 x double> %i.fj) ; 6 uses
  %i.fw = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.ft, <2 x double> zeroinitializer)
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> zeroinitializer, <2 x double> %i.fx)
  %i.fz = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fl, <2 x double> %i.fy)
  %i.gb = shufflevector <2 x double> %i.ah, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> zeroinitializer, <2 x double> %i.fm)
  %i.gd = shufflevector <2 x double> %i.ad, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.ge = shufflevector <2 x double> %i.z, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.gg = shufflevector <2 x double> %i.z, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.gg, <2 x double> %i.gf)
  %i.gi = fadd <2 x double> %i.gh, <double -0.000000e+00, double 0.000000e+00>
  %i.gj = shufflevector <2 x double> %i.fv, <2 x double> %i.ft, <2 x i32> <i32 1, i32 3>
  %i.gk = fneg <2 x double> %i.gj                 ; 3 uses
  %i.gl = shufflevector <2 x double> %i.ft, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.gn = shufflevector <2 x double> %i.fv, <2 x double> %i.fi, <2 x i32> <i32 1, i32 2>
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.gn, <2 x double> %i.gm)
  %i.gp = fadd <2 x double> %i.go, <double -0.000000e+00, double 0.000000e+00>
  %i.gq = shufflevector <2 x double> %i.z, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.gq, <2 x double> %i.gp)
  %i.gs = shufflevector <2 x double> %i.z, <2 x double> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.gt = shufflevector <2 x double> %i.gf, <2 x double> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> zeroinitializer, <2 x double> %i.gt) ; 2 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.ai, double 0.000000e+00, double %i.gv)
  %i.gx = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gd, <2 x double> %i.gc)
  %i.gz = shufflevector <2 x double> %i.ah, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gz, <2 x double> %i.gi)
  %i.hb = fadd <2 x double> %i.gy, %i.ga
  %i.hc = fadd <2 x double> %i.ha, %i.gr          ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 1
  store double %i.hd, ptr %4, align 8
  store <2 x double> %i.hb, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.he = shufflevector <2 x double> %i.fi, <2 x double> %i.ft, <2 x i32> <i32 0, i32 2>
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = insertelement <2 x double> %i.ah, double 0.000000e+00, i64 0
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.hh, <2 x double> %i.fo)
  %i.hj = shufflevector <2 x double> %i.fv, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.hj, <2 x double> %i.hf)
  %i.hl = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.fn, <2 x double> %i.hk)
  %i.hn = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.ad, <2 x double> %i.hi)
  %i.hp = fadd <2 x double> %i.ho, %i.hm
  store <2 x double> %i.hp, ptr %.sroa.673.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hq = extractelement <2 x double> %i.hc, i64 0
  store double %i.hq, ptr %.sroa.875.0..sroa_idx, align 8
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hr = shufflevector <2 x double> %i.z, <2 x double> %i.fo, <2 x i32> <i32 1, i32 2>
  %i.hs = shufflevector <2 x double> %i.gu, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ht = fadd <2 x double> %i.hr, %i.hs          ; 2 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  %i.hv = fadd double %i.gw, %i.hu
  %i.hw = fadd double %i.hg, 0.000000e+00
  %i.hx = shufflevector <2 x double> %i.ah, <2 x double> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.hy = shufflevector <2 x double> %i.fo, <2 x double> %i.hf, <2 x i32> <i32 1, i32 3>
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> zeroinitializer, <2 x double> %i.hy) ; 2 uses
  %i.ia = shufflevector <2 x double> %i.ht, <2 x double> %i.hz, <2 x i32> <i32 1, i32 2>
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.ia)
  %i.ic = insertelement <2 x double> %i.hz, double %i.hw, i64 0
  %i.id = fadd <2 x double> %i.fn, %i.ic
  %i.ie = fadd <2 x double> %i.ib, %i.id
  store <2 x double> %i.ie, ptr %.sroa.976.0..sroa_idx, align 8
  %.sroa.1178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double %i.hv, ptr %.sroa.1178.0..sroa_idx, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.if = fdiv double 1.000000e+00, %i.ai         ; 3 uses
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul <2 x double> %i.z, %i.ih           ; 4 uses
  %i.ij = insertelement <2 x double> %i.j, double %i.aa, i64 1
  %i.ik = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ik, <2 x double> zeroinitializer)
  %i.im = insertelement <2 x double> %i.ah, double 0.000000e+00, i64 0
  %i.in = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.in, <2 x double> %i.il)
  %i.ip = fadd <2 x double> %i.ad, %i.io          ; 2 uses
  %i.iq = extractelement <2 x double> %i.ii, i64 0
  %i.ir = extractelement <2 x double> %i.z, i64 0
  %i.is = shufflevector <2 x double> %i.z, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.it = shufflevector <2 x double> %i.ii, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.it, <2 x double> zeroinitializer) ; 2 uses
  %i.iv = extractelement <2 x double> %i.iu, i64 0
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.iq, double %i.iv)
  %i.ix = fadd double %i.ai, %i.iw
  %i.iy = insertelement <2 x double> %i.iu, double 0.000000e+00, i64 0
  %i.iz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.ih, <2 x double> %i.iy)
  %i.ja = fadd <2 x double> %i.iz, <double 0.000000e+00, double -0.000000e+00>
  %i.jb = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> zeroinitializer, <2 x double> %i.ja)
  store <2 x double> %i.jc, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jd = extractelement <2 x double> %i.ip, i64 0
  store double %i.jd, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.je = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.if, i64 0 ; 2 uses
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jg, <2 x double> zeroinitializer)
  %i.ji = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.if, i64 1 ; 2 uses
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.jj, <2 x double> %i.jh)
  %i.jl = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> zeroinitializer, <2 x double> %i.jk)
  store <2 x double> %i.jm, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jn = extractelement <2 x double> %i.ip, i64 1
  store double %i.jn, ptr %.sroa.841.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jo = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jg, <2 x double> zeroinitializer)
  %i.jq = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.jj, <2 x double> %i.jp)
  %i.js = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> zeroinitializer, <2 x double> %i.jr)
  store <2 x double> %i.jt, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.ix, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
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
  store i32 -1040056314, ptr %11, align 8, !tbaa !49
  store ptr %8, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 12884901891, ptr %i.h, align 8
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
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
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
  %i.ax = fneg double %i.aw
  %i.ay = call noundef double @llvm.fabs.f64(double %i.aw)
  %i.az = fcmp ogt double %i.ay, f0x3CB0000000000000 ; 2 uses
  %i.ba = select i1 %i.az, double %i.ax, double 0.000000e+00 ; 3 uses
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
  %i.bk = load <2 x double>, ptr %i.w, align 8, !tbaa !31, !noalias !207
  %i.bl = shufflevector <4 x double> %i.bj, <4 x double> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.bm = fadd <2 x double> %i.bl, zeroinitializer
  %i.bn = shufflevector <2 x double> %i.bk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> %i.bj, <2 x i32> <i32 0, i32 5> ; 3 uses
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> zeroinitializer, <2 x double> %i.bm)
  %i.bq = shufflevector <4 x double> %i.bn, <4 x double> %i.bj, <2 x i32> <i32 1, i32 6> ; 3 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> zeroinitializer, <2 x double> %i.bp) ; 5 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1 ; 2 uses
  store double %i.bs, ptr %13, align 8, !tbaa !31, !alias.scope !207
  %i.bt = fmul double %i.am, %i.ap                ; 5 uses
  %i.bu = fmul double %i.al, %i.ap                ; 5 uses
  store double %i.bt, ptr %i.m, align 8, !tbaa !31
  %i.bv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bu, i64 0
  store <2 x double> %i.bv, ptr %i.n, align 8, !tbaa !31
  %i.bw = extractelement <2 x double> %i.au, i64 1
  %i.bx = call double @llvm.fmuladd.f64(double %i.ag, double %i.bu, double %i.bw)
  %i.by = call double @llvm.fmuladd.f64(double %i.ae, double %i.bt, double %i.bx) ; 4 uses
  %i.bz = select i1 %i.az, double %i.by, double 1.000000e+00 ; 3 uses
  %i.ca = call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %i.bb)
  %sqrt = call double @llvm.sqrt.f64(double %i.ca)
  %i.cb = fdiv double 1.000000e+00, %sqrt         ; 2 uses
  %i.cc = fmul double %i.ba, %i.cb                ; 10 uses
  %i.cd = fneg double %i.cc                       ; 9 uses
  %i.ce = fneg double %i.bu                       ; 3 uses
  store double %i.ce, ptr %i.p, align 8, !tbaa !31
  store double %i.bt, ptr %i.q, align 8, !tbaa !31
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.ch, <2 x double> %i.cf)
  %i.cj = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.ck, <2 x double> %i.ci) ; 5 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  store double %i.cm, ptr %i.t, align 8, !tbaa !31, !alias.scope !207
  %i.cn = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.co, <2 x double> %i.cf)
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.ch, <2 x double> %i.cp) ; 4 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1 ; 3 uses
  store double %i.cr, ptr %i.u, align 8, !tbaa !31, !alias.scope !207
  store double %i.by, ptr %i.ad, align 8, !tbaa !31, !alias.scope !207
  %i.cs = fmul double %i.bz, %i.cb                ; 9 uses
  %i.ct = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cs, i64 0 ; 3 uses
  store <2 x double> %i.ct, ptr %14, align 16, !tbaa !31
  store double %i.cd, ptr %i.bc, align 16, !tbaa !31
  %i.cu = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cc, i64 1
  store <2 x double> %i.cu, ptr %i.bf, align 8, !tbaa !31
  %i.cv = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cs, i64 1 ; 3 uses
  store <2 x double> %i.cv, ptr %i.bh, align 8, !tbaa !31
  %i.cw = call double @llvm.fmuladd.f64(double %i.bs, double %i.cs, double 0.000000e+00)
  %i.cx = shufflevector <2 x double> %i.br, <2 x double> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cy = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cw, i64 1
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> zeroinitializer, <2 x double> %i.cy) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 1
end_hunk_0
