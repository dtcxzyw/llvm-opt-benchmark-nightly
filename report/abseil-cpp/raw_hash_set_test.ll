Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117SooTest_Swap_TestINS2_10ValueTableIlLb0ELb1ESaIlEEEE8TestBodyEv:_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.ai = load ptr, ptr %6, align 8, !tbaa !170   ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i109, label %_ZN7testing7MessageD2Ev.exit111, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit111

_ZN7testing7MessageD2Ev.exit111:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.g
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn44.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.cv

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %.pr271 = load ptr, ptr %i.k, align 8, !tbaa !182 ; 4 uses
  %.not.i.i.i112 = icmp eq ptr %.pr271, null
  br i1 %.not.i.i.i112, label %.thread272, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %.pr271, align 8, !tbaa !160 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pr271, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i113: ; preds = %bb.m
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !161
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i114

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i114: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %.pr271, i64 noundef 32) #44
  br label %.thread272

.thread272:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i114, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store i32 1, ptr %i.b, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %.val77 = load i64, ptr %3, align 16
  %i.ar = lshr i64 %.val77, 17                    ; 2 uses
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !166
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread272
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.p

bb.o:                                             ; preds = %.thread272
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.446, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.p

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.at = load i8, ptr %10, align 8, !tbaa !179, !range !180, !noundef !181
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.z, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.ae

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !182 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i119, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.az = phi ptr [ %i.ay, %bb.s ], [ @.str.31, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2250, ptr noundef %i.az)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.ba = load ptr, ptr %11, align 8, !tbaa !170  ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.u
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !141
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit125

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #43
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn48 = phi { ptr, i32 } [ %i.bg, %bb.x ], [ %i.bf, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.bh = load ptr, ptr %11, align 8, !tbaa !170  ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i123, label %_ZN7testing7MessageD2Ev.exit125, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.y
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit125

_ZN7testing7MessageD2Ev.exit125:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, %bb.y, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.be, %bb.v ], [ %.pn48, %bb.y ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #43
  br label %bb.ae

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit122
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !182 ; 4 uses
  %.not.i.i126 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i126, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !161
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #43
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %.val8.val.i.i.i = load i64, ptr %i.bs, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 16
  %.val.i.i = load i64, ptr %3, align 16          ; 3 uses
  %i.bt = trunc i64 %.val.i.i to i8
  %i.bu = icmp ult i8 %i.bt, -100
  %i.bv = and i64 %.val.i.i, 255
  %notmask.i.i.i8.i.i = shl nsw i64 -1, %i.bv
  %i.bw = icmp samesign ugt i64 %notmask.i.i.i8.i.i, -3
  %i.bx = select i1 %i.bu, i1 %i.bw, i1 false
  %.not.i.i9.i.i = icmp ugt i64 %.val.i.i, 131071
  %i.by = and i1 %.not.i.i9.i.i, %i.bx
  br i1 %i.by, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull readonly align 16 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.bz = load <2 x i64>, ptr %3, align 16, !tbaa !166
  store <2 x i64> %i.bz, ptr %13, align 16, !tbaa !161
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.8.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.8.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx17.i.i, align 16
  store i64 1, ptr %3, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %.val8.val.i.i.i, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129 unwind label %bb.af

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129: ; preds = %bb.ad
  %i.cb = load i8, ptr %14, align 8, !tbaa !179, !range !180, !noundef !181
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ap, label %bb.ag

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit125, %bb.p
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit125 ], [ %i.av, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %bb.cv

bb.af:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !182 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.ai, %bb.ah
  %i.ch = phi ptr [ %i.cg, %bb.ai ], [ @.str.31, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2253, ptr noundef %i.ch)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  %i.ci = load ptr, ptr %15, align 8, !tbaa !170  ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ak
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !141
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #43
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn52 = phi { ptr, i32 } [ %i.co, %bb.an ], [ %i.cn, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  %i.cp = load ptr, ptr %15, align 8, !tbaa !170  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ao
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !141
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.ao, %bb.al
  %.pn52.pn = phi { ptr, i32 } [ %i.cm, %bb.al ], [ %.pn52, %bb.ao ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #43
  br label %bb.au

bb.ap:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129, %_ZN7testing7MessageD2Ev.exit134
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !182 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i138, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !160 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.aq
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !161
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 32) #44
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  store i32 1, ptr %i.d, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  %.val = load i64, ptr %13, align 16
  %i.da = lshr i64 %.val, 17                      ; 2 uses
  store i64 %i.da, ptr %i.e, align 8, !tbaa !166
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit145 unwind label %bb.av

bb.at:                                            ; preds = %bb.ar
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.521, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit145 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit145: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.dc = load i8, ptr %17, align 8, !tbaa !179, !range !180, !noundef !181
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.bf, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.af
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.cd, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %bb.cu

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.bm

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !182 ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i146, label %_ZNK7testing15AssertionResult15failure_messageEv.exit147, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit147

_ZNK7testing15AssertionResult15failure_messageEv.exit147: ; preds = %bb.ay, %bb.ax
  %i.di = phi ptr [ %i.dh, %bb.ay ], [ @.str.31, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2254, ptr noundef %i.di)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit147
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  %i.dj = load ptr, ptr %18, align 8, !tbaa !170  ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117SooTest_Swap_TestINS2_10ValueTableIlLb0ELb1ENS2_32ChangingSizeAndTrackingTypeAllocIlEEEEE8TestBodyEv:_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.m:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %.pr265 = load ptr, ptr %i.w, align 8, !tbaa !182 ; 4 uses
  %.not.i.i.i115 = icmp eq ptr %.pr265, null
  br i1 %.not.i.i.i115, label %.thread266, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %.pr265, align 8, !tbaa !160 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pr265, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116: ; preds = %bb.n
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !161
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i117

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i117: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %.pr265, i64 noundef 32) #44
  br label %.thread266

.thread266:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i117, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store i32 1, ptr %i.b, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %.val79 = load i64, ptr %2, align 16
  %i.bd = lshr i64 %.val79, 17                    ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !166
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread266
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.q

bb.p:                                             ; preds = %.thread266
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.446, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.q

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.bf = load i8, ptr %9, align 8, !tbaa !179, !range !180, !noundef !181
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.aa, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.ag

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !182 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i122, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.t, %bb.s
  %i.bl = phi ptr [ %i.bk, %bb.t ], [ @.str.31, %bb.s ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2250, ptr noundef %i.bl)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  %i.bm = load ptr, ptr %10, align 8, !tbaa !170  ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i123, label %_ZN7testing7MessageD2Ev.exit125, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.v
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !141
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit125

_ZN7testing7MessageD2Ev.exit125:                  ; preds = %bb.v, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit128

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #43
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn49 = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.br, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  %i.bt = load ptr, ptr %10, align 8, !tbaa !170  ; 3 uses
  %.not.i.i126 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i126, label %_ZN7testing7MessageD2Ev.exit128, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127: ; preds = %bb.z
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit128

_ZN7testing7MessageD2Ev.exit128:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127, %bb.z, %bb.w
  %.pn49.pn = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %.pn49, %bb.z ], [ %.pn49, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #43
  br label %bb.ag

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit125
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !182 ; 4 uses
  %.not.i.i129 = icmp eq ptr %i.by, null
  br i1 %.not.i.i129, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !160 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !161
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 32) #44
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  %i.ce = load i8, ptr %i.f, align 1, !tbaa !161
  %i.cf = icmp eq i8 %i.ce, 42
  %.idx.i.i.i.i.i130 = zext i1 %i.cf to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i130
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = xor i64 %i.ch, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.cj = zext i64 %i.ci to i128
  %i.ck = mul nuw nsw i128 %i.cj, 8779197792823184629 ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = xor i128 %i.cl, %i.ck
  %i.cn = trunc i128 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.72.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %i.co, align 8
  store i64 %i.cn, ptr %.sroa.72.0..sroa_idx.i.i131, align 16
  %.sroa.8.0..sroa_idx.i.i132 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i132, align 8
  %.sroa.9.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %12, i64 41
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i133, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %.val8.val.i.i.i = load i64, ptr %i.cp, align 8
  %.sroa.8.0..sroa_idx.i.i134 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i134, align 16
  %.val.i.i = load i64, ptr %2, align 16          ; 3 uses
  %i.cq = trunc i64 %.val.i.i to i8
  %i.cr = icmp ult i8 %i.cq, -100
  %i.cs = and i64 %.val.i.i, 255
  %notmask.i.i.i8.i.i = shl nsw i64 -1, %i.cs
  %i.ct = icmp samesign ugt i64 %notmask.i.i.i8.i.i, -3
  %i.cu = select i1 %i.cr, i1 %i.ct, i1 false
  %.not.i.i9.i.i = icmp ugt i64 %.val.i.i, 131071
  %i.cv = and i1 %.not.i.i9.i.i, %i.cu
  br i1 %i.cv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %12, ptr noundef nonnull readonly align 16 dereferenceable(48) %2, i64 24, i1 false)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cw = load <2 x i64>, ptr %2, align 16, !tbaa !166
  store <2 x i64> %i.cw, ptr %12, align 16, !tbaa !161
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %.sroa.8.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx17.i.i, align 16
  store i64 1, ptr %2, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.val8.val.i.i.i, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit137 unwind label %bb.ah

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit137: ; preds = %bb.af
  %i.cy = load i8, ptr %13, align 8, !tbaa !179, !range !180, !noundef !181
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ar, label %bb.ai

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit128, %bb.q
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %_ZN7testing7MessageD2Ev.exit128 ], [ %i.bh, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.ct

bb.ah:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #43
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !182 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i138, label %_ZNK7testing15AssertionResult15failure_messageEv.exit139, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit139

_ZNK7testing15AssertionResult15failure_messageEv.exit139: ; preds = %bb.ak, %bb.aj
  %i.de = phi ptr [ %i.dd, %bb.ak ], [ @.str.31, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2253, ptr noundef %i.de)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit139
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.df = load ptr, ptr %14, align 8, !tbaa !170  ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.df, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.am
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !141
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit145

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit139
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn53 = phi { ptr, i32 } [ %i.dl, %bb.ap ], [ %i.dk, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.dm = load ptr, ptr %14, align 8, !tbaa !170  ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.aq
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !141
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit145

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %bb.aq, %bb.an
  %.pn53.pn = phi { ptr, i32 } [ %i.dj, %bb.an ], [ %.pn53, %bb.aq ], [ %.pn53, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #43
  br label %bb.aw

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit137, %_ZN7testing7MessageD2Ev.exit142
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !182 ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i146, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !160 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.as
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 32) #44
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  store i32 1, ptr %i.d, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  %.val = load i64, ptr %12, align 16
  %i.dx = lshr i64 %.val, 17                      ; 2 uses
  store i64 %i.dx, ptr %i.e, align 8, !tbaa !166
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit153 unwind label %bb.ax

bb.av:                                            ; preds = %bb.at
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.521, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit153 unwind label %bb.ax

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit153: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.dz = load i8, ptr %16, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.bh, label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit145, %bb.ah
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %_ZN7testing7MessageD2Ev.exit145 ], [ %i.da, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %bb.cs

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.bo

bb.ay:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !182 ; 2 uses
  %.not.i.i154 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i154, label %_ZNK7testing15AssertionResult15failure_messageEv.exit155, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit155

_ZNK7testing15AssertionResult15failure_messageEv.exit155: ; preds = %bb.ba, %bb.az
  %i.ef = phi ptr [ %i.ee, %bb.ba ], [ @.str.31, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2254, ptr noundef %i.ef)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  %i.eg = load ptr, ptr %17, align 8, !tbaa !170  ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127SooTest_CopyAssignment_TestINS2_10ValueTableIlLb0ELb1ESaIlEEEE8TestBodyEv:bb.a
  %.val5.i.i = load i64, ptr %i.ff, align 8, !tbaa !166, !noalias !18117
  %i.fg = icmp eq i64 %.val5.i.i, %i.ei
  br i1 %i.fg, label %.noexc88, label %.critedge.i.i.i, !prof !241

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i
  %i.fh = add i32 %.sroa.025.069.i.i, -1
  %i.fi = and i32 %i.fh, %.sroa.025.069.i.i       ; 2 uses
  %.not.i.i240 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i240, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i.i, %bb.s
  %i.fj = icmp eq <16 x i8> %i.ew, splat (i8 -128)
  %i.fk = bitcast <16 x i1> %i.fj to i16
  %i.fl = zext i16 %i.fk to i32
  %i.fm = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fl) #49, !srcloc !240 ; 2 uses
  %.not62.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not62.i.i, label %bb.u, label %bb.t, !prof !233

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.fn = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.eo, i32 %i.fm, i64 %.sroa.640.0.i.i, i64 %.sroa.14.0.i.i)
          to label %.noexc88.thread374 unwind label %bb.aa

.noexc88.thread374:                               ; preds = %bb.t
  %.val.i.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !161, !noalias !18117
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.pre.i.i, i64 %i.fn
  br label %.noexc88.thread

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.fp = add i64 %.sroa.14.0.i.i, 16             ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.640.0.i.i
  br label %bb.s

.noexc88:                                         ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit

.noexc88.thread:                                  ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i, %.noexc243, %.noexc88.thread374
  %.sink.i370 = phi ptr [ %i.fo, %.noexc88.thread374 ], [ %i.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i ], [ %i.ee, %.noexc243 ]
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !188, !noalias !18118
  %i.fr = sext i32 %.val.i.i.i.i.i to i64
  store i64 %i.fr, ptr %.sink.i370, align 8, !tbaa !166, !noalias !18118
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit: ; preds = %bb.p, %.noexc88.thread, %.noexc88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %.not.i.i = icmp eq ptr %.sroa.13.01066, %.sroa.17.01067
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit
  store i32 %i.dx, ptr %.sroa.13.01066, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.w:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit
  %i.fs = ptrtoint ptr %.sroa.17.01067 to i64
  %i.ft = ptrtoint ptr %.sroa.0337.01065 to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 6 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775804
  br i1 %i.fv, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc89 unwind label %.loopexit.split-lp400.loopexit.split-lp

.noexc89:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.fw = ashr exact i64 %i.fu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 2305843009213693951)
  %i.ga = select i1 %i.fy, i64 2305843009213693951, i64 %i.fz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gb = shl nuw nsw i64 %i.ga, 2
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #47
          to label %.noexc90 unwind label %.loopexit.split-lp400.loopexit.split-lp ; 4 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.fu ; 2 uses
  store i32 %i.dx, ptr %i.gd, align 4, !tbaa !188
  %i.ge = icmp sgt i64 %i.fu, 0
  br i1 %i.ge, label %bb.y, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.y:                                             ; preds = %.noexc90
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gc, ptr align 4 %.sroa.0337.01065, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.y, %.noexc90
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0337.01065, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0337.01065, i64 noundef %i.fu) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ga
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.v
  %.sroa.0337.1 = phi ptr [ %i.gc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0337.01065, %bb.v ] ; 2 uses
  %.pn395 = phi ptr [ %i.gd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.01066, %bb.v ]
  %.sroa.17.1 = phi ptr [ %i.gf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.01067, %bb.v ] ; 2 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn395, i64 4 ; 2 uses
  %i.gg = add nuw i64 %.0301068, 1                ; 2 uses
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !166
  %i.gi = icmp ult i64 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph, label %._crit_edge, !llvm.loop !18050

bb.aa:                                            ; preds = %bb.t, %bb.q
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.eq

.loopexit.split-lp400.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.x
  %lpad.loopexit.split-lp2193 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

._crit_edge1074:                                  ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99, %._crit_edge
  %.val1.i.i.i.i1425 = phi i64 [ 1, %._crit_edge ], [ %.val.i2451422, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  store i64 1, ptr %26, align 16
  %.val.i.i.i = load i64, ptr %34, align 8
  %.not.i.i.i.i91 = icmp ult i64 %.val.i.i.i, 131072
  br i1 %.not.i.i.i.i91, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEEC2ERKS6_RKSaIlE.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1074
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  store ptr %26, ptr %25, align 8, !tbaa !815
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr nonnull %25, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEEC1ERKS8_RKSaIlEEUlPvPKvE_vJSE_SG_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  %.val1.i.i.i.i.pre = load i64, ptr %35, align 16
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEEC2ERKS6_RKSaIlE.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %.body.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEEC2ERKS6_RKSaIlE.exit.i.i: ; preds = %bb.ac, %._crit_edge1074
  %.val1.i.i.i.i = phi i64 [ %.val1.i.i.i.i.pre, %bb.ac ], [ %.val1.i.i.i.i1425, %._crit_edge1074 ] ; 2 uses
  %i.gl = and i64 %.val1.i.i.i.i, 255
  %i.gm = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %i.gm)
  %i.gn = and i64 %.val1.i.i.i.i, 254
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE15destructor_implEv.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEEC2ERKS6_RKSaIlE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  store ptr %35, ptr %24, align 8, !tbaa !614
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 noundef 8, ptr nonnull %24, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i92 unwind label %bb.ah

.noexc.i.i92:                                     ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %.val1.i.i.i.i.i = load i64, ptr %35, align 16  ; 2 uses
  %i.gp = and i64 %.val1.i.i.i.i.i, 255           ; 2 uses
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gp ; 4 uses
  %i.gq = add nsw i64 %notmask.i.i.i.i.i.i.i.i, 281474976710655
  %i.gr = or i64 %i.gq, %notmask.i.i.i.i.i.i.i.i
  %i.gs = icmp eq i64 %i.gr, -1
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.gu)
  %i.gv = and i64 %.val1.i.i.i.i.i, 65536
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gv, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.gw = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 noundef %i.gw, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE15destructor_implEv.exit.i.i.i unwind label %bb.ah

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE15destructor_implEv.exit.i.i.i: ; preds = %.noexc.i.i92, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEEC2ERKS6_RKSaIlE.exit.i.i
  %.val.i11.i.i = load i64, ptr %26, align 16     ; 4 uses
  %i.gx = trunc i64 %.val.i11.i.i to i8
  %i.gy = icmp ult i8 %i.gx, -100
  %i.gz = and i64 %.val.i11.i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.gz
  %i.ha = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %i.hb = select i1 %i.gy, i1 %i.ha, i1 false
  %.not.i.i.i.i.i = icmp ugt i64 %.val.i11.i.i, 131071
  %i.hc = and i1 %.not.i.i.i.i.i, %i.hb
  br i1 %i.hc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE15destructor_implEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %35, ptr noundef nonnull readonly align 16 dereferenceable(24) %26, i64 24, i1 false)
  %.val.pre = load i64, ptr %35, align 16
  br label %bb.aq

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE15destructor_implEv.exit.i.i.i
  %i.hd = load <2 x i64>, ptr %26, align 16, !tbaa !166
  store <2 x i64> %i.hd, ptr %35, align 16, !tbaa !161
  br label %bb.aq

bb.ah:                                            ; preds = %.noexc.i.i92, %bb.ae
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ah, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %i.he, %bb.ah ], [ %i.gk, %bb.ad ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %.body93

.lr.ph1073:                                       ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99
  %.val.i245 = phi i64 [ %.val.i2451422, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99 ], [ 1, %._crit_edge ] ; 7 uses
  %.01071 = phi i64 [ %i.jb, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99 ], [ 0, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.hf = trunc i64 %.01071 to i32
  %i.hg = mul nsw i32 %i.hf, 3                    ; 3 uses
  store i32 %i.hg, ptr %i.d, align 4, !tbaa !188
  %i.hh = and i64 %.val.i245, 254
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.lr.ph1073
  %.not.i.i.i.i277 = icmp ult i64 %.val.i245, 131072
  br i1 %.not.i.i.i.i277, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i283, label %bb.aj

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i283: ; preds = %bb.ai
  %i.hj = or i64 %.val.i245, 131328
  store i64 %i.hj, ptr %35, align 16, !noalias !18119
  br label %.noexc98.thread

bb.aj:                                            ; preds = %bb.ai
  %.val8.i.i.i278 = load i64, ptr %i.v, align 8, !tbaa !166, !noalias !18119
  %i.hk = sext i32 %i.hg to i64
  %i.hl = icmp eq i64 %.val8.i.i.i278, %i.hk
  br i1 %i.hl, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43, !noalias !18119
  store ptr %35, ptr %4, align 8, !tbaa !246, !noalias !18119
  store ptr %i.d, ptr %i.x, align 8, !tbaa !248, !noalias !18119
  %i.hm = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIlEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc284 unwind label %bb.ap

.noexc284:                                        ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18119
  %.val.i.i.i.i282 = load ptr, ptr %i.w, align 16, !tbaa !161, !noalias !18119
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i282, i64 %i.hm
  br label %.noexc98.thread

bb.al:                                            ; preds = %.lr.ph1073
  %.sroa.0.0.copyload.i.i.i.i.i.i246 = load ptr, ptr %i.v, align 8, !tbaa !161, !noalias !18120 ; 3 uses
  %i.ho = and i64 %.val.i245, 255
  %notmask.i.i.i.i.i.i.i247 = shl nsw i64 -1, %i.ho
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i246, i32 0, i32 1, i32 1), !noalias !18120
  %i.hp = lshr i64 %.val.i245, 8
  %i.hq = and i64 %i.hp, 255
  %i.hr = sext i32 %i.hg to i64                   ; 2 uses
  %i.hs = xor i64 %i.hq, %i.hr
  %i.ht = zext i64 %i.hs to i128
  %i.hu = mul nuw nsw i128 %i.ht, 8779197792823184629 ; 2 uses
  %i.hv = lshr i128 %i.hu, 64
  %i.hw = xor i128 %i.hv, %i.hu
  %i.hx = trunc i128 %i.hw to i64                 ; 3 uses
  %i.hy = xor i64 %notmask.i.i.i.i.i.i.i247, -1   ; 2 uses
  %i.hz = lshr i64 %i.hx, 57
  %i.ia = trunc nuw nsw i64 %i.hz to i8
  %.val3.i.i248 = load ptr, ptr %i.w, align 16, !tbaa !161, !noalias !18120 ; 2 uses
  %i.ib = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.ic = shufflevector <16 x i8> %i.ib, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.pn.i.i249 = phi i64 [ %i.hx, %bb.al ], [ %i.iz, %bb.ao ]
  %.sroa.14.0.i.i250 = phi i64 [ 0, %bb.al ], [ %i.iy, %bb.ao ] ; 2 uses
  %.sroa.640.0.i.i251 = and i64 %.pn.i.i249, %i.hy ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val3.i.i248, i64 %.sroa.640.0.i.i251
  call void @llvm.prefetch.p0(ptr %i.id, i32 0, i32 3, i32 1), !noalias !18120
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i246, i64 %.sroa.640.0.i.i251
  %i.if = load <16 x i8>, ptr %i.ie, align 1, !tbaa !161, !noalias !18120 ; 2 uses
  %i.ig = icmp eq <16 x i8> %i.ic, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16
  %i.ii = zext i16 %i.ih to i32
  %i.ij = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ii) #49, !srcloc !240 ; 2 uses
  %.not68.i.i252 = icmp eq i32 %i.ij, 0
  br i1 %.not68.i.i252, label %._crit_edge.i.i258, label %.lr.ph.i.i253

.lr.ph.i.i253:                                    ; preds = %bb.am, %.critedge.i.i.i256
  %.sroa.025.069.i.i254 = phi i32 [ %i.ir, %.critedge.i.i.i256 ], [ %i.ij, %bb.am ] ; 3 uses
  %i.ik = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i.i254, i1 true)
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = add nuw i64 %.sroa.640.0.i.i251, %i.il
  %i.in = and i64 %i.im, %i.hy
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.val3.i.i248, i64 %i.in
  %.val5.i.i255 = load i64, ptr %i.io, align 8, !tbaa !166, !noalias !18120
  %i.ip = icmp eq i64 %.val5.i.i255, %i.hr
  br i1 %i.ip, label %.noexc98, label %.critedge.i.i.i256, !prof !241

.critedge.i.i.i256:                               ; preds = %.lr.ph.i.i253
  %i.iq = add i32 %.sroa.025.069.i.i254, -1
  %i.ir = and i32 %i.iq, %.sroa.025.069.i.i254    ; 2 uses
  %.not.i.i257 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i257, label %._crit_edge.i.i258, label %.lr.ph.i.i253

._crit_edge.i.i258:                               ; preds = %.critedge.i.i.i256, %bb.am
  %i.is = icmp eq <16 x i8> %i.if, splat (i8 -128)
  %i.it = bitcast <16 x i1> %i.is to i16
  %i.iu = zext i16 %i.it to i32
  %i.iv = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iu) #49, !srcloc !240 ; 2 uses
  %.not62.i.i259 = icmp eq i32 %i.iv, 0
  br i1 %.not62.i.i259, label %bb.ao, label %bb.an, !prof !233

bb.an:                                            ; preds = %._crit_edge.i.i258
  %i.iw = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.hx, i32 %i.iv, i64 %.sroa.640.0.i.i251, i64 %.sroa.14.0.i.i250)
          to label %.noexc98.thread387 unwind label %bb.ap

.noexc98.thread387:                               ; preds = %bb.an
  %.val.i.pre.i.i262 = load ptr, ptr %i.w, align 16, !tbaa !161, !noalias !18120
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.val.i.pre.i.i262, i64 %i.iw
  br label %.noexc98.thread

bb.ao:                                            ; preds = %._crit_edge.i.i258
  %i.iy = add i64 %.sroa.14.0.i.i250, 16          ; 2 uses
  %i.iz = add i64 %i.iy, %.sroa.640.0.i.i251
  br label %bb.am

.noexc98:                                         ; preds = %.lr.ph.i.i253
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i246) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99

.noexc98.thread:                                  ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i283, %.noexc284, %.noexc98.thread387
  %.sink.i274383 = phi ptr [ %i.ix, %.noexc98.thread387 ], [ %i.v, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i283 ], [ %i.hn, %.noexc284 ]
  %.val.i.i.i.i.i97 = load i32, ptr %i.d, align 4, !tbaa !188, !noalias !18121
  %i.ja = sext i32 %.val.i.i.i.i.i97 to i64
  store i64 %i.ja, ptr %.sink.i274383, align 8, !tbaa !166, !noalias !18121
  %.val.i245.pre = load i64, ptr %35, align 16, !noalias !18122
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOS9_.exit99: ; preds = %bb.aj, %.noexc98.thread, %.noexc98
  %.val.i2451422 = phi i64 [ %.val.i245, %bb.aj ], [ %.val.i245.pre, %.noexc98.thread ], [ %.val.i245, %.noexc98 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.jb = add nuw i64 %.01071, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.jb, %i.cj
  br i1 %exitcond.not, label %._crit_edge1074, label %.lr.ph1073, !llvm.loop !18069

bb.ap:                                            ; preds = %bb.an, %bb.ak
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %.body93

bb.aq:                                            ; preds = %bb.af, %bb.ag
  %.val = phi i64 [ %.val.pre, %bb.af ], [ %.val.i11.i.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  %i.jd = lshr i64 %.val, 17                      ; 2 uses
  store i64 %i.jd, ptr %i.e, align 8, !tbaa !166
  %i.je = load i64, ptr %i.b, align 8, !tbaa !166, !noalias !18123
  %i.jf = icmp eq i64 %i.jd, %i.je
  br i1 %i.jf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aw

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !18124
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc291 unwind label %bb.aw

.noexc291:                                        ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !18124
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.au, !noalias !18124

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc291
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.812, ptr noundef nonnull @.str.813, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.jg = load ptr, ptr %3, align 8, !tbaa !160, !noalias !18124 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.y
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i288: ; preds = %bb.at
  %i.ji = load i64, ptr %i.y, align 8, !tbaa !161, !noalias !18124
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i289: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !18124
  %i.jk = load ptr, ptr %2, align 8, !tbaa !160, !noalias !18124 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.z
  br i1 %i.jl, label %.noexc101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127SooTest_CopyAssignment_TestINS2_10ValueTableIlLb0ELb1ENS2_32ChangingSizeAndTrackingTypeAllocIlEEEEE8TestBodyEv:bb.a
  %i.gm = add i64 %.sroa.14.0.i.i, 16             ; 2 uses
  %i.gn = add i64 %i.gm, %.sroa.640.0.i.i
  br label %bb.t

.noexc96:                                         ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit

.noexc96.thread:                                  ; preds = %bb.p, %.noexc226, %.noexc96.thread370
  %.sink.i366 = phi ptr [ %i.gl, %.noexc96.thread370 ], [ %i.t, %bb.p ], [ %i.fb, %.noexc226 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #43, !noalias !18421
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(21) %i.s)
          to label %.noexc97 unwind label %bb.ab

.noexc97:                                         ; preds = %.noexc96.thread
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !188, !noalias !18421
  %i.go = sext i32 %.val.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.go, ptr %.sink.i366, align 8, !tbaa !166, !noalias !18421
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #43, !noalias !18421
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit: ; preds = %bb.q, %.noexc97, %.noexc96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %.not.i.i = icmp eq ptr %.sroa.13.01148, %.sroa.17.01149
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit
  store i32 %i.eu, ptr %.sroa.13.01148, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.x:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit
  %i.gp = ptrtoint ptr %.sroa.17.01149 to i64
  %i.gq = ptrtoint ptr %.sroa.0333.01147 to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775804
  br i1 %i.gs, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc98 unwind label %.loopexit.split-lp396.loopexit.split-lp

.noexc98:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.gt = ashr exact i64 %i.gr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 2305843009213693951)
  %i.gx = select i1 %i.gv, i64 2305843009213693951, i64 %i.gw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #47
          to label %.noexc99 unwind label %.loopexit.split-lp396.loopexit.split-lp ; 4 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  store i32 %i.eu, ptr %i.ha, align 4, !tbaa !188
  %i.hb = icmp sgt i64 %i.gr, 0
  br i1 %i.hb, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.z:                                             ; preds = %.noexc99
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gz, ptr align 4 %.sroa.0333.01147, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.z, %.noexc99
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0333.01147, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0333.01147, i64 noundef %i.gr) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.w
  %.sroa.0333.1 = phi ptr [ %i.gz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0333.01147, %bb.w ] ; 2 uses
  %.pn391 = phi ptr [ %i.ha, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.01148, %bb.w ]
  %.sroa.17.1 = phi ptr [ %i.hc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.01149, %bb.w ] ; 2 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn391, i64 4 ; 2 uses
  %i.hd = add nuw i64 %.0301150, 1                ; 2 uses
  %i.he = load i64, ptr %i.b, align 8, !tbaa !166
  %i.hf = icmp ult i64 %i.hd, %i.he
  br i1 %i.hf, label %.lr.ph, label %._crit_edge, !llvm.loop !18351

bb.ab:                                            ; preds = %bb.u, %bb.r, %.noexc96.thread
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.fd

.loopexit.split-lp396.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.y
  %lpad.loopexit.split-lp2279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

._crit_edge1156:                                  ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 8 dereferenceable(21) %i.w)
          to label %.noexc102 unwind label %bb.ba

.noexc102:                                        ; preds = %._crit_edge1156
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  store i64 1, ptr %28, align 8, !alias.scope !18422
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashIlEESt8equal_toIlENS1_12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIcEEEEC2IS3_JRKS6_RKS8_RKNSA_IlEEETnNSt9enable_ifIXsr3std11conjunctionISt8negationISt7is_sameIFvSC_EFvNSt5decayIT_E4typeEEEENS1_25internal_compressed_tuple27TupleItemsMoveConstructibleISC_JSQ_DpT0_EEEEE5valueEbE4typeELb1EEEOSQ_DpOSY_(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(72) %30)
          to label %.noexc103 unwind label %bb.ba

.noexc103:                                        ; preds = %.noexc102
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  %.val.i.i.i = load i64, ptr %40, align 8
  %.not.i.i.i.i101 = icmp ult i64 %.val.i.i.i, 131072
  br i1 %.not.i.i.i.i101, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEEC2ERKSD_RKSC_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  store ptr %31, ptr %29, align 8, !tbaa !819
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(48) %40, ptr nonnull %29, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS5_32ChangingSizeAndTrackingTypeAllocIlEEEEC1ERKSF_RKSE_EUlPvPKvE_vJSK_SM_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEEC2ERKSD_RKSC_.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  br label %.body.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEEC2ERKSD_RKSC_.exit.i.i: ; preds = %bb.ad, %.noexc103
  %.val1.i.i.i.i = load i64, ptr %41, align 16    ; 3 uses
  %i.hi = and i64 %.val1.i.i.i.i, 255
  %i.hj = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %i.hj)
  %i.hk = and i64 %.val1.i.i.i.i, 254
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEEC2ERKSD_RKSC_.exit.i.i
  %.not.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE15destructor_implEv.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(21) %i.w)
          to label %.noexc12.i.i unwind label %bb.ak

.noexc12.i.i:                                     ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE15destructor_implEv.exit.i.i.i

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEEC2ERKSD_RKSC_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  store ptr %41, ptr %26, align 8, !tbaa !622
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %41, i64 noundef 8, ptr nonnull %26, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS5_32ChangingSizeAndTrackingTypeAllocIlEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSI_SJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc13.i.i unwind label %bb.ak

.noexc13.i.i:                                     ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %.val1.i.i.i.i.i = load i64, ptr %41, align 16  ; 2 uses
  %i.hm = and i64 %.val1.i.i.i.i.i, 255           ; 2 uses
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.hm ; 4 uses
  %i.hn = add nsw i64 %notmask.i.i.i.i.i.i.i.i, 281474976710655
  %i.ho = or i64 %i.hn, %notmask.i.i.i.i.i.i.i.i
  %i.hp = icmp eq i64 %i.ho, -1
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp ne i64 %i.hm, 0
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.hr)
  %i.hs = and i64 %.val1.i.i.i.i.i, 65536
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.hs, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !161
  %i.ht = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.w, i64 noundef %i.ht, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE15destructor_implEv.exit.i.i.i unwind label %bb.ak

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE15destructor_implEv.exit.i.i.i: ; preds = %.noexc13.i.i, %.noexc12.i.i, %bb.af
  %.val.i11.i.i = load i64, ptr %31, align 16     ; 4 uses
  %i.hu = trunc i64 %.val.i11.i.i to i8
  %i.hv = icmp ult i8 %i.hu, -100
  %i.hw = and i64 %.val.i11.i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.hw
  %i.hx = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %i.hy = select i1 %i.hv, i1 %i.hx, i1 false
  %.not.i.i9.i.i.i = icmp ugt i64 %.val.i11.i.i, 131071
  %i.hz = and i1 %.not.i.i9.i.i.i, %i.hy
  br i1 %i.hz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE15destructor_implEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %41, ptr noundef nonnull readonly align 16 dereferenceable(48) %31, i64 24, i1 false)
  %.val.pre = load i64, ptr %41, align 16
  br label %bb.au

bb.aj:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE15destructor_implEv.exit.i.i.i
  %i.ia = load <2 x i64>, ptr %31, align 16, !tbaa !166
  store <2 x i64> %i.ia, ptr %41, align 16, !tbaa !161
  br label %bb.au

bb.ak:                                            ; preds = %.noexc13.i.i, %bb.ah, %bb.ag
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ak, %bb.ae
  %.pn.i.i = phi { ptr, i32 } [ %i.ib, %bb.ak ], [ %i.hh, %bb.ae ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  br label %.body104

.lr.ph1155:                                       ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111
  %.val.i242 = phi i64 [ %.val.i2421506, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111 ], [ 1, %._crit_edge ] ; 7 uses
  %.01153 = phi i64 [ %i.jy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111 ], [ 0, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.ic = trunc i64 %.01153 to i32
  %i.id = mul nsw i32 %i.ic, 3                    ; 3 uses
  store i32 %i.id, ptr %i.d, align 4, !tbaa !188
  %i.ie = and i64 %.val.i242, 254
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.lr.ph1155
  %.not.i.i.i.i274 = icmp ult i64 %.val.i242, 131072
  br i1 %.not.i.i.i.i274, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ig = or disjoint i64 %.val.i242, 131072
  store i64 %i.ig, ptr %41, align 16, !noalias !18423
  br label %.noexc109.thread

bb.an:                                            ; preds = %bb.al
  %.val5.i.i.i275 = load i64, ptr %i.x, align 8, !tbaa !166, !noalias !18423
  %i.ih = sext i32 %i.id to i64
  %i.ii = icmp eq i64 %.val5.i.i.i275, %i.ih
  br i1 %i.ii, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43, !noalias !18423
  store ptr %41, ptr %4, align 8, !tbaa !246, !noalias !18423
  store ptr %i.d, ptr %i.z, align 8, !tbaa !248, !noalias !18423
  %i.ij = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIlEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc280 unwind label %bb.at

.noexc280:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !18423
  %.val.i.i.i.i279 = load ptr, ptr %i.y, align 16, !tbaa !161, !noalias !18423
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i279, i64 %i.ij
  br label %.noexc109.thread

bb.ap:                                            ; preds = %.lr.ph1155
  %.sroa.0.0.copyload.i.i.i.i.i.i243 = load ptr, ptr %i.x, align 8, !tbaa !161, !noalias !18424 ; 3 uses
  %i.il = and i64 %.val.i242, 255
  %notmask.i.i.i.i.i.i.i244 = shl nsw i64 -1, %i.il
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i243, i32 0, i32 1, i32 1), !noalias !18424
  %i.im = lshr i64 %.val.i242, 8
  %i.in = and i64 %i.im, 255
  %i.io = sext i32 %i.id to i64                   ; 2 uses
  %i.ip = xor i64 %i.in, %i.io
  %i.iq = zext i64 %i.ip to i128
  %i.ir = mul nuw nsw i128 %i.iq, 8779197792823184629 ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = xor i128 %i.is, %i.ir
  %i.iu = trunc i128 %i.it to i64                 ; 3 uses
  %i.iv = xor i64 %notmask.i.i.i.i.i.i.i244, -1   ; 2 uses
  %i.iw = lshr i64 %i.iu, 57
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %.val3.i.i245 = load ptr, ptr %i.y, align 16, !tbaa !161, !noalias !18424 ; 2 uses
  %i.iy = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.iz = shufflevector <16 x i8> %i.iy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pn.i.i246 = phi i64 [ %i.iu, %bb.ap ], [ %i.jw, %bb.as ]
  %.sroa.14.0.i.i247 = phi i64 [ 0, %bb.ap ], [ %i.jv, %bb.as ] ; 2 uses
  %.sroa.640.0.i.i248 = and i64 %.pn.i.i246, %i.iv ; 5 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.val3.i.i245, i64 %.sroa.640.0.i.i248
  call void @llvm.prefetch.p0(ptr %i.ja, i32 0, i32 3, i32 1), !noalias !18424
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i243, i64 %.sroa.640.0.i.i248
  %i.jc = load <16 x i8>, ptr %i.jb, align 1, !tbaa !161, !noalias !18424 ; 2 uses
  %i.jd = icmp eq <16 x i8> %i.iz, %i.jc
  %i.je = bitcast <16 x i1> %i.jd to i16
  %i.jf = zext i16 %i.je to i32
  %i.jg = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jf) #49, !srcloc !240 ; 2 uses
  %.not68.i.i249 = icmp eq i32 %i.jg, 0
  br i1 %.not68.i.i249, label %._crit_edge.i.i255, label %.lr.ph.i.i250

.lr.ph.i.i250:                                    ; preds = %bb.aq, %.critedge.i.i.i253
  %.sroa.025.069.i.i251 = phi i32 [ %i.jo, %.critedge.i.i.i253 ], [ %i.jg, %bb.aq ] ; 3 uses
  %i.jh = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i.i251, i1 true)
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = add nuw i64 %.sroa.640.0.i.i248, %i.ji
  %i.jk = and i64 %i.jj, %i.iv
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.val3.i.i245, i64 %i.jk
  %.val5.i.i252 = load i64, ptr %i.jl, align 8, !tbaa !166, !noalias !18424
  %i.jm = icmp eq i64 %.val5.i.i252, %i.io
  br i1 %i.jm, label %.noexc109, label %.critedge.i.i.i253, !prof !241

.critedge.i.i.i253:                               ; preds = %.lr.ph.i.i250
  %i.jn = add i32 %.sroa.025.069.i.i251, -1
  %i.jo = and i32 %i.jn, %.sroa.025.069.i.i251    ; 2 uses
  %.not.i.i254 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i254, label %._crit_edge.i.i255, label %.lr.ph.i.i250

._crit_edge.i.i255:                               ; preds = %.critedge.i.i.i253, %bb.aq
  %i.jp = icmp eq <16 x i8> %i.jc, splat (i8 -128)
  %i.jq = bitcast <16 x i1> %i.jp to i16
  %i.jr = zext i16 %i.jq to i32
  %i.js = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jr) #49, !srcloc !240 ; 2 uses
  %.not62.i.i256 = icmp eq i32 %i.js, 0
  br i1 %.not62.i.i256, label %bb.as, label %bb.ar, !prof !233

bb.ar:                                            ; preds = %._crit_edge.i.i255
  %i.jt = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.iu, i32 %i.js, i64 %.sroa.640.0.i.i248, i64 %.sroa.14.0.i.i247)
          to label %.noexc109.thread383 unwind label %bb.at

.noexc109.thread383:                              ; preds = %bb.ar
  %.val.i.pre.i.i259 = load ptr, ptr %i.y, align 16, !tbaa !161, !noalias !18424
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val.i.pre.i.i259, i64 %i.jt
  br label %.noexc109.thread

bb.as:                                            ; preds = %._crit_edge.i.i255
  %i.jv = add i64 %.sroa.14.0.i.i247, 16          ; 2 uses
  %i.jw = add i64 %i.jv, %.sroa.640.0.i.i248
  br label %bb.aq

.noexc109:                                        ; preds = %.lr.ph.i.i250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i243) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111

.noexc109.thread:                                 ; preds = %bb.am, %.noexc280, %.noexc109.thread383
  %.sink.i271379 = phi ptr [ %i.ju, %.noexc109.thread383 ], [ %i.x, %bb.am ], [ %i.ik, %.noexc280 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43, !noalias !18425
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef nonnull align 8 dereferenceable(21) %i.w)
          to label %.noexc110 unwind label %bb.at

.noexc110:                                        ; preds = %.noexc109.thread
  %.val.i.i.i.i.i.i.i.i.i108 = load i32, ptr %i.d, align 4, !tbaa !188, !noalias !18425
  %i.jx = sext i32 %.val.i.i.i.i.i.i.i.i.i108 to i64
  store i64 %i.jx, ptr %.sink.i271379, align 8, !tbaa !166, !noalias !18425
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43, !noalias !18425
  %.val.i242.pre = load i64, ptr %41, align 16, !noalias !18426
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSG_.exit111: ; preds = %bb.an, %.noexc110, %.noexc109
  %.val.i2421506 = phi i64 [ %.val.i242, %bb.an ], [ %.val.i242.pre, %.noexc110 ], [ %.val.i242, %.noexc109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.jy = add nuw i64 %.01153, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.jy, %i.cl
  br i1 %exitcond.not, label %._crit_edge1156, label %.lr.ph1155, !llvm.loop !18372

bb.at:                                            ; preds = %bb.ar, %bb.ao, %.noexc109.thread
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %.body104

bb.au:                                            ; preds = %bb.ai, %bb.aj
  %.val = phi i64 [ %.val.pre, %bb.ai ], [ %.val.i11.i.i, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  %i.ka = lshr i64 %.val, 17                      ; 2 uses
  store i64 %i.ka, ptr %i.e, align 8, !tbaa !166
  %i.kb = load i64, ptr %i.b, align 8, !tbaa !166, !noalias !18427
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bb

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !18428
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc287 unwind label %bb.bb

.noexc287:                                        ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !18428
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.ay, !noalias !18428

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc287
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42, ptr noundef nonnull @.str.812, ptr noundef nonnull @.str.813, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.kd = load ptr, ptr %3, align 8, !tbaa !160, !noalias !18428 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.aa
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284: ; preds = %bb.ax
  %i.kf = load i64, ptr %i.aa, align 8, !tbaa !161, !noalias !18428
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #44
end_hunk_3
