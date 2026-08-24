Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/dio_solver?download=true
inline.NumInlined: 2676
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear9DioSolver10StatisticsC2ERNS0_18StatisticsRegistryE:.noexc.i
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !126 ; 3 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.bm, ptr noundef nonnull align 1 dereferenceable(28) @.str.5, i64 28, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !130
  %i.bp = load ptr, ptr %7, align 8, !tbaa !127
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.br = invoke ptr @_ZN4cvc58internal18StatisticsRegistry13registerTimerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %.noexc57
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bl
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.f
  %i.bv = load i64, ptr %i.bl, align 8, !tbaa !129
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.h:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !127   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.g
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.h
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !129
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.g ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.by, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.j:                                             ; preds = %.noexc29
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !127   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.r
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.j
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !129
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.cd, %bb.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.ce, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.s

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.l:                                             ; preds = %.noexc36
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ad
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.l
  %i.cn = load i64, ptr %i.ad, align 8, !tbaa !129
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.k
  %.pn18 = phi { ptr, i32 } [ %i.cj, %bb.k ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.ck, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.n:                                             ; preds = %.noexc43
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.n
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !129
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.cp, %bb.m ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.cq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.s

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.p:                                             ; preds = %.noexc50
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !127   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bb
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.p
  %i.cz = load i64, ptr %i.bb, align 8, !tbaa !129
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.cv, %bb.o ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.cw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.r:                                             ; preds = %.noexc57
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bl
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.r
  %i.df = load i64, ptr %i.bl, align 8, !tbaa !129
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.q
  %.pn24 = phi { ptr, i32 } [ %i.db, %bb.q ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.dc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  resume { ptr, i32 } %.pn24.pn
}

declare ptr @_ZN4cvc58internal18StatisticsRegistry11registerIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

declare ptr @_ZN4cvc58internal18StatisticsRegistry13registerTimerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver15queueConditionsEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !81, !noundef !82
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm.exit62, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver8gcdIsOneEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1)
  br i1 %i.d, label %bb.c, label %_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm.exit62

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %.not.i56 = icmp eq ptr %i.g, %i.h
  br i1 %.not.i56, label %.loopexit, label %.lr.ph.preheader.i57

.lr.ph.preheader.i57:                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  br label %.lr.ph.i58

bb.d:                                             ; preds = %.lr.ph.i58
  %i.m = add nuw i64 %.0710.i59, 1                ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %i.m, %i.l
  br i1 %exitcond.not.i60, label %.loopexit, label %.lr.ph.i58, !llvm.loop !131

.lr.ph.i58:                                       ; preds = %bb.d, %.lr.ph.preheader.i57
  %.0710.i59 = phi i64 [ %i.m, %bb.d ], [ 0, %.lr.ph.preheader.i57 ] ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver24debugSubstitutionAppliesEmm(ptr noundef nonnull readonly align 8 dereferenceable(1032) %0, i64 noundef %.0710.i59, i64 noundef %1)
  br i1 %i.n, label %_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm.exit62, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.o = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1)
  br i1 %i.o, label %_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm.exit62, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.p = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1)
  %i.q = xor i1 %i.p, true
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm.exit62

_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm.exit62: ; preds = %.lr.ph.i58, %bb.e, %.loopexit, %bb.b, %bb.a
  %i.r = phi i1 [ false, %.loopexit ], [ %i.q, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph.i58 ]
  ret i1 %i.r
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver8gcdIsOneEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %3 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4cvc58internal6theory5arith6linear7SumPair3gcdEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Integer") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 1)
          to label %_ZN4cvc58internal7IntegerC2Ei.exit unwind label %bb.e

_ZN4cvc58internal7IntegerC2Ei.exit:               ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZNK4cvc58internal7IntegereqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN4cvc58internal7IntegerC2Ei.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit6 unwind label %bb.d

bb.d:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit6:              ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %i.d

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit7

bb.f:                                             ; preds = %_ZN4cvc58internal7IntegerC2Ei.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit7 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit7:              ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit8 unwind label %bb.h

bb.h:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit7
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit8:              ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver25debugAnySubstitionAppliesEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.0710 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver24debugSubstitutionAppliesEmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.0710, i64 noundef %1) ; 2 uses
  %i.j = add nuw i64 %.0710, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.h
  %or.cond = select i1 %i.i, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.i, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::theory::arith::linear::Constant", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7SumPair10isConstantEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4cvc58internal6theory5arith6linear7SumPair11getConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Constant") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = load ptr, ptr %2, align 8, !tbaa !111
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !132
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = and i64 %i.k, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.l, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.k, 1152920405095219200
  %i.n = and i64 %i.m, 1152920405095219200        ; 2 uses
  %i.o = and i64 %i.k, -1152920405095219201
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.j, align 8
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.e, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !114

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %bb.a, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit
  %.0 = phi i1 [ %i.i, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::theory::arith::linear::Constant", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7SumPair10isConstantEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4cvc58internal6theory5arith6linear7SumPair11getConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Constant") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = load ptr, ptr %2, align 8, !tbaa !111
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !132
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = and i64 %i.k, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.l, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.k, 1152920405095219200
  %i.n = and i64 %i.m, 1152920405095219200        ; 2 uses
  %i.o = and i64 %i.k, -1152920405095219201
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.j, align 8
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.e, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !114

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %bb.a, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit
  %.0 = phi i1 [ %i.i, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver21allocateProofVariableEv(ptr noundef nonnull align 8 dereferenceable(1032) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %2 = alloca %"class.cvc5::internal::theory::arith::linear::Variable", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !126  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp eq i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.m = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZN4cvc58internal6theory5arith6linear19makeIntegerVariableEPNS0_11NodeManagerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %1, ptr noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.n = load ptr, ptr %1, align 8, !tbaa !111    ; 5 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !111
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i64 %i.o, 40
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = and i32 %i.q, 1048575                    ; 3 uses
  %i.s = icmp samesign ult i32 %i.r, 1048574
  br i1 %i.s, label %bb.c, label %bb.d, !prof !135

bb.c:                                             ; preds = %bb.b
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 40
  %i.w = and i64 %i.o, -1152920405095219201
  %i.x = or i64 %i.v, %i.w
  store i64 %i.x, ptr %i.n, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.r, 1048574
  br i1 %i.y, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !114

bb.e:                                             ; preds = %bb.d
  %i.z = or i64 %i.o, 1152920405095219200
  store i64 %i.z, ptr %i.n, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.u

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  invoke void @_ZN4cvc58internal6theory5arith6linear8VariableC2ENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %2, align 8, !tbaa !111   ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal6theory5arith6linear9DioSolver28anyCoefficientExceedsMaximumEm:bb.a

_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i: ; preds = %.noexc26
  call void @_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i, %bb.c, %.noexc
  %.0.i = phi i1 [ %i.s, %.noexc ], [ false, %bb.c ], [ false, %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i ]
  %i.aa = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i64 %i.ab, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.f, !prof !114

bb.f:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit
  %i.ad = add i64 %i.ab, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.ab, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.aa, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.g, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !114

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !161
  %i.am = add i32 %i.al, 3
  %i.an = icmp ugt i32 %i.d, %i.am
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, %bb.i
  %i.ap = phi i1 [ false, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit ], [ %i.an, %bb.i ]
  ret i1 %i.ap

bb.l:                                             ; preds = %bb.j, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.z, %bb.e ]
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear9DioSolver23enqueueInputConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1032) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.b

.preheader:                                       ; preds = %_ZN4cvc57context3CDOImEaSERKm.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !126  ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !109  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = icmp ult i64 %i.v, %i.ab
  br i1 %i.ac, label %.lr.ph15, label %.critedge

.lr.ph15:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZN4cvc57context3CDOImEaSERKm.exit
  %i.an = phi ptr [ %i.h, %.lr.ph ], [ %i.bf, %_ZN4cvc57context3CDOImEaSERKm.exit ]
  %i.ao = phi i64 [ %i.f, %.lr.ph ], [ %i.aw, %_ZN4cvc57context3CDOImEaSERKm.exit ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !196 ; 3 uses
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !197
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !126
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.n, align 8, !tbaa !196
  br label %_ZNSt5dequeImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  br label %_ZNSt5dequeImSaImEE9push_backERKm.exit

_ZNSt5dequeImSaImEE9push_backERKm.exit:           ; preds = %bb.c, %bb.d
  %i.av = load i64, ptr %i.c, align 8, !tbaa !126
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = icmp eq ptr %i.ax, %i.bc
  br i1 %i.bd, label %_ZN4cvc57context3CDOImEaSERKm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeImSaImEE9push_backERKm.exit
  tail call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_ZN4cvc57context3CDOImEaSERKm.exit

_ZN4cvc57context3CDOImEaSERKm.exit:               ; preds = %_ZNSt5dequeImSaImEE9push_backERKm.exit, %bb.e
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !83  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ult i64 %i.aw, %i.bj
  br i1 %i.bk, label %bb.b, label %.preheader, !llvm.loop !198

bb.f:                                             ; preds = %.lr.ph15, %bb.u
  %i.bl = phi ptr [ %i.x, %.lr.ph15 ], [ %i.dl, %bb.u ]
  %i.bm = phi i64 [ %i.v, %.lr.ph15 ], [ %i.dj, %bb.u ] ; 2 uses
  %i.bn = load i8, ptr %i.ad, align 8, !tbaa !73, !range !81, !noundef !82
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = add nuw i64 %i.bm, 1
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.bw = icmp eq ptr %i.bq, %i.bv
  br i1 %i.bw, label %_ZN4cvc57context3CDOImEaSERKm.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !109
  br label %_ZN4cvc57context3CDOImEaSERKm.exit11

_ZN4cvc57context3CDOImEaSERKm.exit11:             ; preds = %bb.g, %bb.h
  %i.bx = phi ptr [ %i.bl, %bb.g ], [ %.pre, %bb.h ]
  store i64 %i.bp, ptr %i.s, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bm
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !165 ; 2 uses
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.not.i12 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i12, label %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4cvc57context3CDOImEaSERKm.exit11
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.09.i = phi i64 [ %i.ci, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.078.i = phi i64 [ %i.ch, %.lr.ph.i ], [ %i.ca, %.lr.ph.preheader.i ]
  %i.ch = call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver17applySubstitutionEmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.09.i, i64 noundef %.078.i) ; 2 uses
  %i.ci = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ci, %i.cg
  br i1 %exitcond.not.i, label %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit, label %.lr.ph.i, !llvm.loop !199

_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit: ; preds = %.lr.ph.i, %_ZN4cvc57context3CDOImEaSERKm.exit11
  %.07.lcssa.i = phi i64 [ %i.ca, %_ZN4cvc57context3CDOImEaSERKm.exit11 ], [ %i.ch, %.lr.ph.i ] ; 4 uses
  %i.cj = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.07.lcssa.i)
  br i1 %i.cj, label %bb.u, label %bb.i

bb.i:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit
  %i.ck = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.07.lcssa.i)
  br i1 %i.ck, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !28
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !30
  %i.cr = icmp eq ptr %i.cl, %i.cq
  br i1 %i.cr, label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.al)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit

_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit: ; preds = %bb.j, %bb.k
  store i8 1, ptr %i.ad, align 8, !tbaa !73
  store i64 %.07.lcssa.i, ptr %i.am, align 8, !tbaa !75
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %i.cs = call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver11reduceByGCDEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.07.lcssa.i) ; 6 uses
  %i.ct = load i8, ptr %i.ad, align 8, !tbaa !73, !range !81, !noundef !82
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cs)
  br i1 %i.cv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dc = icmp eq ptr %i.cw, %i.db
  br i1 %i.dc, label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.al)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13

_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13: ; preds = %bb.n, %bb.o
  store i8 1, ptr %i.ad, align 8, !tbaa !73
  store i64 %i.cs, ptr %i.am, align 8, !tbaa !75
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.dd = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cs)
  br i1 %i.dd, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear9DioSolver28anyCoefficientExceedsMaximumEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cs)
  br i1 %i.de, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !126
  %i.df = load ptr, ptr %i.ah, align 8, !tbaa !196 ; 3 uses
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !197
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %.not.i.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.cs, ptr %i.df, align 8, !tbaa !126
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.di, ptr %i.ah, align 8, !tbaa !196
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit

_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.p, %bb.q, %_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit
  %i.dj = load i64, ptr %i.s, align 8, !tbaa !126 ; 2 uses
  %i.dk = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.dl = load ptr, ptr %i.t, align 8, !tbaa !109 ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 4
  %i.dq = icmp ult i64 %i.dj, %i.dp
  br i1 %i.dq, label %bb.f, label %.critedge, !llvm.loop !200

.critedge:                                        ; preds = %bb.f, %bb.u, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.07.lcssa = phi i64 [ %1, %bb.a ], [ %i.i, %.lr.ph ]
  ret i64 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi i64 [ %i.i, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.i = tail call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver17applySubstitutionEmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.09, i64 noundef %.078) ; 2 uses
  %i.j = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !199
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver11reduceByGCDEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::theory::arith::linear::Polynomial", align 8 ; 7 uses
  %3 = alloca %"class.cvc5::internal::theory::arith::linear::Constant", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::Integer", align 8 ; 9 uses
  %5 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4cvc58internal6theory5arith6linear7SumPair13getPolynomialEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Polynomial") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK4cvc58internal6theory5arith6linear7SumPair11getConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Constant") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit unwind label %bb.h

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNK4cvc58internal6theory5arith6linear10Polynomial3gcdEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Integer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit52 unwind label %bb.i

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit52: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = load ptr, ptr %3, align 8, !tbaa !111
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNK4cvc58internal6theory5arith6linear8Constant8getValueEv.exit54 unwind label %bb.j

_ZNK4cvc58internal6theory5arith6linear8Constant8getValueEv.exit54: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit52
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZNK4cvc58internal8Rational12getNumeratorEv.exit unwind label %bb.j

_ZNK4cvc58internal8Rational12getNumeratorEv.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear8Constant8getValueEv.exit54
  %i.f = invoke noundef zeroext i1 @_ZNK4cvc58internal7Integer7dividesERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %_ZNK4cvc58internal8Rational12getNumeratorEv.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.f, label %bb.d, label %bb.q

bb.d:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1)
          to label %_ZN4cvc58internal7IntegerC2Ei.exit unwind label %bb.m

_ZN4cvc58internal7IntegerC2Ei.exit:               ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 @_ZNK4cvc58internal7IntegergtERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZN4cvc58internal7IntegerC2Ei.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit57 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit57:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.i, label %bb.g, label %bb.s

bb.g:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit57
  %i.l = invoke noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver14scaleEqAtIndexEmRKNS0_7IntegerE(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.s unwind label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.i:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit64

bb.j:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear8Constant8getValueEv.exit54, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit52
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit58

bb.k:                                             ; preds = %_ZNK4cvc58internal8Rational12getNumeratorEv.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit58 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit58:             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.p, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.m:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit59

bb.n:                                             ; preds = %_ZN4cvc58internal7IntegerC2Ei.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit59 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit59:             ; preds = %bb.n, %bb.m
  %.pn18 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.t, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aa

bb.p:                                             ; preds = %bb.r, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = icmp eq ptr %i.y, %i.ad
  br i1 %i.ae, label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit unwind label %bb.p

_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit: ; preds = %bb.r, %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.ag, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i64 %1, ptr %i.ah, align 8, !tbaa !75
  br label %bb.s

bb.s:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, %_ZN4cvc58internal7IntegerD2Ev.exit57, %bb.g
  %.016 = phi i64 [ %1, %_ZN4cvc58internal7IntegerD2Ev.exit57 ], [ %i.l, %bb.g ], [ %1, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit61 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit61:             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ak = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.am, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.u, !prof !114

bb.u:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit61
  %i.an = add i64 %i.al, 1152920405095219200
  %i.ao = and i64 %i.an, 1152920405095219200      ; 2 uses
  %i.ap = and i64 %i.al, -1152920405095219201
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.ak, align 8
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %bb.v, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !114

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_1
