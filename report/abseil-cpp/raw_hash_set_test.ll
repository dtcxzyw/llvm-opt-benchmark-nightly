Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_122Batch_DropDeletes_Test8TestBodyEv:bb.a
  store i8 -128, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i8 -2, ptr %.sroa.10.0..sroa_idx, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2026052618container_internal37ConvertDeletedToEmptyAndFullToDeletedEPNS1_6ctrl_tEm(ptr noundef nonnull %i.c, i64 noundef 63)
          to label %bb.g unwind label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.f
  %.010111 = phi i64 [ 0, %bb.b ], [ %i.m, %bb.f ] ; 4 uses
  %i.g = urem i64 %.010111, 7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !236   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %.010111 ; 2 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !236
  %i.k = icmp samesign ult i64 %.010111, 15
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %i.i, ptr %i.l, align 1, !tbaa !236
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = add nuw nsw i64 %.010111, 1              ; 2 uses
  %.not = icmp eq i64 %i.m, 63
  br i1 %.not, label %bb.c, label %bb.d, !llvm.loop !5095

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i8 -1, ptr %i.a, align 1, !tbaa !236
  %i.n = load i8, ptr %i.d, align 1, !tbaa !236, !noalias !5105
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal6ctrl_tES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.427, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.k

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.p = load i8, ptr %1, align 8, !tbaa !179, !range !180, !noundef !181
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge, label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit71

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.x

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182  ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.w = phi ptr [ %i.v, %bb.n ], [ @.str.31, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 550, ptr noundef %i.w)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.x = load ptr, ptr %2, align 8, !tbaa !170    ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.x, null
  br i1 %.not.i.i36, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !182 ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !160 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !161
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit68

bb.r:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit40

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.t ], [ %i.ai, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.ak = load ptr, ptr %2, align 8, !tbaa !170   ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i38, label %_ZN7testing7MessageD2Ev.exit40, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39: ; preds = %bb.u
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit40

_ZN7testing7MessageD2Ev.exit40:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39, %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %.pn, %bb.u ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #43
  br label %bb.x

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !182 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42: ; preds = %bb.v
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 32) #44
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit40, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit40 ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit71

bb.y:                                             ; preds = %bb.w, %_ZN7testing15AssertionResultD2Ev.exit64
  %storemerge112 = phi i64 [ 0, %bb.w ], [ %i.cs, %_ZN7testing15AssertionResultD2Ev.exit64 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.aw = trunc nuw nsw i64 %storemerge112 to i8  ; 2 uses
  %.lhs.trunc = and i8 %i.aw, 63
  %i.ax = urem i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.ax to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %.zext
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !236
  %i.ba = icmp eq i64 %storemerge112, 63
  %spec.store.select = select i1 %i.ba, i8 -1, i8 %i.az ; 2 uses
  %i.bb = icmp eq i8 %spec.store.select, -2
  %spec.store.select1 = select i1 %i.bb, i8 -128, i8 %spec.store.select ; 2 uses
  %i.bc = icmp sgt i8 %spec.store.select1, -1
  %spec.store.select110 = select i1 %i.bc, i8 -2, i8 %spec.store.select1 ; 2 uses
  store i8 %spec.store.select110, ptr %i.b, align 1, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %storemerge112 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !236, !noalias !5106
  %i.bf = icmp eq i8 %i.be, %spec.store.select110
  br i1 %i.bf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit48 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal6ctrl_tES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.428, ptr noundef nonnull @.str.429, ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit48 unwind label %bb.ab

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit48: ; preds = %bb.z, %bb.aa
  %i.bg = load i8, ptr %4, align 8, !tbaa !179, !range !180, !noundef !181
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ao, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bj = load ptr, ptr %5, align 8, !tbaa !170
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef %storemerge112)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %bb.ad
  %i.bm = load ptr, ptr %5, align 8, !tbaa !170
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.387, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.bp = urem i8 %i.aw, 7
  %.zext109 = zext nneg i8 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.zext109
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !236
  %i.bs = sext i8 %i.br to i32
  %i.bt = load ptr, ptr %5, align 8, !tbaa !170
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef %i.bs)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  %i.bw = load ptr, ptr %i.av, align 8, !tbaa !182 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i52, label %_ZNK7testing15AssertionResult15failure_messageEv.exit53, label %bb.ae

bb.ae:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit53

_ZNK7testing15AssertionResult15failure_messageEv.exit53: ; preds = %bb.ae, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.by = phi ptr [ %i.bx, %bb.ae ], [ @.str.31, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 556, ptr noundef %i.by)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.bz = load ptr, ptr %5, align 8, !tbaa !170   ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit56, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.ag
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !141
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit56

_ZN7testing7MessageD2Ev.exit56:                   ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit59

bb.ai:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit, %bb.ad
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn26 = phi { ptr, i32 } [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am, %bb.ai
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ai ], [ %.pn26, %bb.am ], [ %i.cf, %bb.aj ] ; 2 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !170   ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i57, label %_ZN7testing7MessageD2Ev.exit59, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.an
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !141
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit59

_ZN7testing7MessageD2Ev.exit59:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, %bb.an, %bb.ah
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.ah ], [ %.pn26.pn.pn, %bb.an ], [ %.pn26.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #43
  br label %bb.aq

bb.ao:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal6ctrl_tES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit48, %_ZN7testing7MessageD2Ev.exit56
  %i.cm = load ptr, ptr %i.av, align 8, !tbaa !182 ; 4 uses
  %.not.i.i60 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i60, label %_ZN7testing15AssertionResultD2Ev.exit64, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !160 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61: ; preds = %bb.ap
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !161
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit64

_ZN7testing15AssertionResultD2Ev.exit64:          ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.cs = add nuw nsw i64 %storemerge112, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, 79
  br i1 %exitcond.not, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit68, label %bb.y, !llvm.loop !5104

bb.aq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit59, %bb.ab
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %i.bi, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit71

_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit68: ; preds = %_ZN7testing15AssertionResultD2Ev.exit64, %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 7) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 80) #44
  ret void

_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit71: ; preds = %bb.aq, %bb.x, %bb.j
  %.pn26.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn, %bb.x ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 7) #44
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit74

_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit74: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit.i, %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit71
  %.pn26.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn.pn, %_ZNSt6vectorIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit71 ], [ %i.f, %_ZNSt12_Vector_baseIN4absl12lts_2026052618container_internal6ctrl_tESaIS3_EED2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 80) #44
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn.pn.pn
}
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb1ELb1ESaIlEEEE8TestBodyEv:bb.a
  %i.ep = xor i64 %notmask.i.i.i.i.i.i.i133, -1   ; 2 uses
  %i.eq = lshr i64 %i.eo, 57
  %i.er = trunc nuw nsw i64 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val14.i.i.i134 = load ptr, ptr %i.es, align 8, !tbaa !161 ; 3 uses
  %i.et = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.pn.i7.i.i135 = phi i64 [ %i.eo, %bb.ar ], [ %i.fq, %bb.au ]
  %.sroa.13.0.i.i.i136 = phi i64 [ 0, %bb.ar ], [ %i.fp, %bb.au ]
  %.sroa.629.0.i.i.i137 = and i64 %.pn.i7.i.i135, %i.ep ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i134, i64 %.sroa.629.0.i.i.i137
  call void @llvm.prefetch.p0(ptr %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i132, i64 %.sroa.629.0.i.i.i137
  %i.ex = load <16 x i8>, ptr %i.ew, align 1, !tbaa !161 ; 2 uses
  %i.ey = icmp eq <16 x i8> %i.eu, %i.ex
  %i.ez = bitcast <16 x i1> %i.ey to i16
  %i.fa = zext i16 %i.ez to i32
  %i.fb = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fa) #49, !srcloc !240 ; 2 uses
  %.not51.i.i.i138 = icmp eq i32 %i.fb, 0
  br i1 %.not51.i.i.i138, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %bb.as, %bb.at
  %.sroa.020.052.i.i.i140 = phi i32 [ %i.fk, %bb.at ], [ %i.fb, %bb.as ] ; 3 uses
  %i.fc = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.052.i.i.i140, i1 true)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = add nuw i64 %.sroa.629.0.i.i.i137, %i.fd
  %i.ff = and i64 %i.fe, %i.ep                    ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i134, i64 %i.ff
  %.val16.i.i.i141 = load i64, ptr %i.fg, align 8, !tbaa !166
  %i.fh = icmp eq i64 %.val16.i.i.i141, 0
  br i1 %i.fh, label %.thread37.i.i.i146, label %bb.at, !prof !241

.thread37.i.i.i146:                               ; preds = %.lr.ph.i.i.i139
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i134, i64 %i.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i132) ]
  br label %.loopexit283

bb.at:                                            ; preds = %.lr.ph.i.i.i139
  %i.fj = add i32 %.sroa.020.052.i.i.i140, -1
  %i.fk = and i32 %i.fj, %.sroa.020.052.i.i.i140  ; 2 uses
  %.not.i.i.i142 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i142, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i139

._crit_edge.i.i.i143:                             ; preds = %bb.at, %bb.as
  %i.fl = icmp eq <16 x i8> %i.ex, splat (i8 -128)
  %i.fm = bitcast <16 x i1> %i.fl to i16
  %i.fn = zext i16 %i.fm to i32
  %i.fo = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fn) #49, !srcloc !240
  %.not48.i.i.i144 = icmp eq i32 %i.fo, 0
  br i1 %.not48.i.i.i144, label %bb.au, label %.loopexit283, !prof !233

bb.au:                                            ; preds = %._crit_edge.i.i.i143
  %i.fp = add i64 %.sroa.13.0.i.i.i136, 16        ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.629.0.i.i.i137
  br label %bb.as, !llvm.loop !57

.loopexit283:                                     ; preds = %._crit_edge.i.i.i143, %.thread37.i.i.i146, %bb.aq
  %.pn.i.i145 = phi ptr [ %i.fi, %.thread37.i.i.i146 ], [ %spec.select.i148, %bb.aq ], [ undef, %._crit_edge.i.i.i143 ]
  %i.fr = ptrtoint ptr %.pn.i.i145 to i64
  store i64 %i.fr, ptr %i.e, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.loopexit283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.fs = load i8, ptr %14, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.bh, label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit125, %bb.ad
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit125 ], [ %i.dg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.ax:                                            ; preds = %.loopexit283
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %bb.bj

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !182 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i150, label %_ZNK7testing15AssertionResult15failure_messageEv.exit151, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit151

_ZNK7testing15AssertionResult15failure_messageEv.exit151: ; preds = %bb.ba, %bb.az
  %i.fy = phi ptr [ %i.fx, %bb.ba ], [ @.str.31, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1151, ptr noundef %i.fy)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.fz = load ptr, ptr %16, align 8, !tbaa !170  ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i152, label %_ZN7testing7MessageD2Ev.exit154, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.bc
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !141
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit154

_ZN7testing7MessageD2Ev.exit154:                  ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit157

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn63 = phi { ptr, i32 } [ %i.gf, %bb.bf ], [ %i.ge, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.gg = load ptr, ptr %16, align 8, !tbaa !170  ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.bg
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !141
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %bb.bg, %bb.bd
  %.pn63.pn = phi { ptr, i32 } [ %i.gd, %bb.bd ], [ %.pn63, %bb.bg ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #43
  br label %bb.bj

bb.bh:                                            ; preds = %bb.av, %_ZN7testing7MessageD2Ev.exit154
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !182 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !160 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.bi
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !161
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.gr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.bk

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit157, %bb.ax
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %i.fu, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167
  %.049312 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit162 ], [ %i.gw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %.lhs.trunc = trunc nuw nsw i32 %.049312 to i8
  %i.gs = urem i8 %.lhs.trunc, 10
  %.zext = zext nneg i8 %i.gs to i32
  store i32 %.zext, ptr %i.f, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10572)
  call void @llvm.experimental.noalias.scope.decl(metadata !10573)
  call void @llvm.experimental.noalias.scope.decl(metadata !10574)
  call void @llvm.experimental.noalias.scope.decl(metadata !10575)
  call void @llvm.experimental.noalias.scope.decl(metadata !10576)
  call void @llvm.experimental.noalias.scope.decl(metadata !10577)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc166 unwind label %bb.bm

.noexc166:                                        ; preds = %bb.bk
  %i.gt = load i8, ptr %i.gr, align 8, !tbaa !599, !range !180, !alias.scope !10578, !noundef !181
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bl, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167

bb.bl:                                            ; preds = %.noexc166
  %.sroa.2.0.copyload.i.i.i.i.i.i164 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i163, align 8, !alias.scope !10578
  %.val.i.i.i.i.i.i165 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !10578
  %i.gv = sext i32 %.val.i.i.i.i.i.i165 to i64
  store i64 %i.gv, ptr %.sroa.2.0.copyload.i.i.i.i.i.i164, align 8, !tbaa !166, !noalias !10578
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167: ; preds = %bb.bl, %.noexc166
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  %i.gw = add nuw nsw i32 %.049312, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, 100
  br i1 %exitcond.not, label %bb.bn, label %bb.bk, !llvm.loop !10545

bb.bm:                                            ; preds = %bb.bk
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  store i64 %i.l, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %.val98 = load i64, ptr %3, align 8
  %i.gy = and i64 %.val98, 255                    ; 2 uses
  %notmask.i.i.i168 = shl nsw i64 -1, %i.gy       ; 4 uses
  %i.gz = xor i64 %notmask.i.i.i168, -1
  %i.ha = add nsw i64 %notmask.i.i.i168, 281474976710655
  %i.hb = or i64 %i.ha, %notmask.i.i.i168
  %i.hc = icmp eq i64 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp ne i64 %i.gy, 0
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i64 %notmask.i.i.i168, -281474976710657
  call void @llvm.assume(i1 %i.he)
  store i64 %i.gz, ptr %i.g, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.hf = load i8, ptr %19, align 8, !tbaa !179, !range !180, !noundef !181
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bz, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !182 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i169, label %_ZNK7testing15AssertionResult15failure_messageEv.exit170, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit170

_ZNK7testing15AssertionResult15failure_messageEv.exit170: ; preds = %bb.bs, %bb.br
  %i.hl = phi ptr [ %i.hk, %bb.bs ], [ @.str.31, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1156, ptr noundef %i.hl)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.hm = load ptr, ptr %21, align 8, !tbaa !170  ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bu
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !141
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(128) %i.hm) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit176

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn69 = phi { ptr, i32 } [ %i.hs, %bb.bx ], [ %i.hr, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.ht = load ptr, ptr %21, align 8, !tbaa !170  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.by
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !141
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(128) %i.ht) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, %bb.by, %bb.bv
  %.pn69.pn = phi { ptr, i32 } [ %i.hq, %bb.bv ], [ %.pn69, %bb.by ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #43
  br label %bb.ci

bb.bz:                                            ; preds = %bb.bo, %_ZN7testing7MessageD2Ev.exit173
  %i.hx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !182 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i177, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !160 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.ca
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !161
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 32) #44
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  store i64 %i.cr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #43
  %.val.i.i182 = load i64, ptr %3, align 8        ; 4 uses
  %i.ie = and i64 %.val.i.i182, 254
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i.i198 = icmp ult i64 %.val.i.i182, 131072
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 8
  %spec.select.i199 = select i1 %.not.i.i.i.i198, ptr undef, ptr %i.ig
  br label %.loopexit282

bb.cd:                                            ; preds = %bb.cb
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i183 = load ptr, ptr %i.ih, align 8, !tbaa !161 ; 3 uses
  %i.ii = and i64 %.val.i.i182, 255
  %notmask.i.i.i.i.i.i.i184 = shl nsw i64 -1, %i.ii
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i183, i32 0, i32 1, i32 1)
  %i.ij = lshr i64 %.val.i.i182, 8
  %i.ik = and i64 %i.ij, 255
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb1ELb1ESaIlEEEE8TestBodyEv:bb.a
  br label %.loopexit282

bb.cf:                                            ; preds = %.lr.ph.i.i.i190
  %i.jk = add i32 %.sroa.020.052.i.i.i191, -1
  %i.jl = and i32 %i.jk, %.sroa.020.052.i.i.i191  ; 2 uses
  %.not.i.i.i193 = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i.i193, label %._crit_edge.i.i.i194, label %.lr.ph.i.i.i190

._crit_edge.i.i.i194:                             ; preds = %bb.cf, %bb.ce
  %i.jm = icmp eq <16 x i8> %i.iy, splat (i8 -128)
  %i.jn = bitcast <16 x i1> %i.jm to i16
  %i.jo = zext i16 %i.jn to i32
  %i.jp = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jo) #49, !srcloc !240
  %.not48.i.i.i195 = icmp eq i32 %i.jp, 0
  br i1 %.not48.i.i.i195, label %bb.cg, label %.loopexit282, !prof !233

bb.cg:                                            ; preds = %._crit_edge.i.i.i194
  %i.jq = add i64 %.sroa.13.0.i.i.i187, 16        ; 2 uses
  %i.jr = add i64 %i.jq, %.sroa.629.0.i.i.i188
  br label %bb.ce, !llvm.loop !57

.loopexit282:                                     ; preds = %._crit_edge.i.i.i194, %.thread37.i.i.i197, %bb.cc
  %.pn.i.i196 = phi ptr [ %i.jj, %.thread37.i.i.i197 ], [ %spec.select.i199, %bb.cc ], [ undef, %._crit_edge.i.i.i194 ]
  %i.js = ptrtoint ptr %.pn.i.i196 to i64
  store i64 %i.js, ptr %i.h, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %.loopexit282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.jt = load i8, ptr %23, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ct, label %bb.ck

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit176, %bb.bp
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %i.hh, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.cj:                                            ; preds = %.loopexit282
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  %i.jw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !182 ; 2 uses
  %.not.i.i201 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i201, label %_ZNK7testing15AssertionResult15failure_messageEv.exit202, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit202

_ZNK7testing15AssertionResult15failure_messageEv.exit202: ; preds = %bb.cm, %bb.cl
  %i.jz = phi ptr [ %i.jy, %bb.cm ], [ @.str.31, %bb.cl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef %i.jz)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.ka = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i203 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i203, label %_ZN7testing7MessageD2Ev.exit205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.co
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !141
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(128) %i.ka) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit205

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %bb.co, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit208

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn75 = phi { ptr, i32 } [ %i.kg, %bb.cr ], [ %i.kf, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.kh = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.cs
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !141
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(128) %i.kh) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, %bb.cs, %bb.cp
  %.pn75.pn = phi { ptr, i32 } [ %i.ke, %bb.cp ], [ %.pn75, %bb.cs ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #43
  br label %bb.cy

bb.ct:                                            ; preds = %bb.ch, %_ZN7testing7MessageD2Ev.exit205
  %i.kl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !182 ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.km, null
  br i1 %.not.i.i209, label %_ZN7testing15AssertionResultD2Ev.exit213, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !160 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210: ; preds = %bb.cu
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !161
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit213

_ZN7testing15AssertionResultD2Ev.exit213:         ; preds = %bb.ct, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %bb.cz

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.not4.i.i = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %.not4.i.i, label %.loopexit280, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0.1, %.lr.ph.i.i ], [ %i.kw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10579)
  call void @llvm.experimental.noalias.scope.decl(metadata !10580)
  call void @llvm.experimental.noalias.scope.decl(metadata !10581)
  call void @llvm.experimental.noalias.scope.decl(metadata !10582)
  call void @llvm.experimental.noalias.scope.decl(metadata !10583)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.01.05.i.i)
          to label %.noexc215 unwind label %bb.dg

.noexc215:                                        ; preds = %bb.cw
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !599, !range !180, !alias.scope !10584, !noundef !181
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.cx, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i

bb.cx:                                            ; preds = %.noexc215
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10584
  %.val.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !188, !noalias !10584
  %i.kv = sext i32 %.val.i.i.i.i.i.i.i to i64
  store i64 %i.kv, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !10584
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i: ; preds = %bb.cx, %.noexc215
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  %.not.i.i214 = icmp eq ptr %.sroa.01.05.i.i, %.pn
  br i1 %.not.i.i214, label %.loopexit280, label %bb.cw, !llvm.loop !10556

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit208, %bb.cj
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit208 ], [ %i.jv, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.cz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit213, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.048317 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %i.lm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.13.0316 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.9.0315 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0.0314 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.lhs.trunc278 = trunc nuw nsw i32 %.048317 to i8
  %i.kx = urem i8 %.lhs.trunc278, 10
  %.zext279 = zext nneg i8 %i.kx to i32           ; 2 uses
  %.not.i.i216 = icmp eq ptr %.sroa.9.0315, %.sroa.13.0316
  br i1 %.not.i.i216, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 %.zext279, ptr %.sroa.9.0315, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.db:                                            ; preds = %bb.cz
  %i.ky = ptrtoint ptr %.sroa.13.0316 to i64
  %i.kz = ptrtoint ptr %.sroa.0.0314 to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 6 uses
  %i.lb = icmp eq i64 %i.la, 9223372036854775804
  br i1 %i.lb, label %bb.dc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.db
  %i.lc = ashr exact i64 %i.la, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lc ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lc
  %i.lf = call i64 @llvm.umin.i64(i64 %i.ld, i64 2305843009213693951)
  %i.lg = select i1 %i.le, i64 2305843009213693951, i64 %i.lf ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.lg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.lh = shl nuw nsw i64 %i.lg, 2
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #47
          to label %.noexc219 unwind label %.loopexit281 ; 4 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.la ; 2 uses
  store i32 %.zext279, ptr %i.lj, align 4, !tbaa !188
  %i.lk = icmp sgt i64 %i.la, 0
  br i1 %i.lk, label %bb.dd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dd:                                            ; preds = %.noexc219
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %.sroa.0.0314, i64 %i.la, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dd, %.noexc219
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0314, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0314, i64 noundef %i.la) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.de, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lg
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.da
  %.sroa.0.1 = phi ptr [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0314, %bb.da ] ; 9 uses
  %.pn = phi ptr [ %i.lj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0315, %bb.da ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.ll, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0316, %bb.da ] ; 5 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.lm = add nuw nsw i32 %.048317, 1             ; 2 uses
  %exitcond330.not = icmp eq i32 %i.lm, 100
  br i1 %exitcond330.not, label %bb.cv, label %bb.cz, !llvm.loop !10557

.loopexit281:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.loopexit.split-lp:                               ; preds = %bb.dc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.loopexit280:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  store i64 %i.l, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #43
  %.val = load i64, ptr %3, align 8
  %i.ln = and i64 %.val, 255                      ; 2 uses
  %notmask.i.i.i220 = shl nsw i64 -1, %i.ln       ; 4 uses
  %i.lo = xor i64 %notmask.i.i.i220, -1
  %i.lp = add nsw i64 %notmask.i.i.i220, 281474976710655
  %i.lq = or i64 %i.lp, %notmask.i.i.i220
  %i.lr = icmp eq i64 %i.lq, -1
  call void @llvm.assume(i1 %i.lr)
  %i.ls = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp samesign ugt i64 %notmask.i.i.i220, -281474976710657
  call void @llvm.assume(i1 %i.lt)
  store i64 %i.lo, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %.loopexit280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  %i.lu = load i8, ptr %27, align 8, !tbaa !179, !range !180, !noundef !181
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.dr, label %bb.di

bb.dg:                                            ; preds = %bb.cw
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.dh:                                            ; preds = %.loopexit280
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  br label %bb.ea

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  %i.ly = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !182 ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i221, label %_ZNK7testing15AssertionResult15failure_messageEv.exit222, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit222

_ZNK7testing15AssertionResult15failure_messageEv.exit222: ; preds = %bb.dk, %bb.dj
  %i.mb = phi ptr [ %i.ma, %bb.dk ], [ @.str.31, %bb.dj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1164, ptr noundef %i.mb)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.mc = load ptr, ptr %29, align 8, !tbaa !170  ; 3 uses
  %.not.i.i223 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i223, label %_ZN7testing7MessageD2Ev.exit225, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.dm
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !141
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(128) %i.mc) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit225

_ZN7testing7MessageD2Ev.exit225:                  ; preds = %bb.dm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  br label %bb.dr

bb.dn:                                            ; preds = %bb.di
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit228

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #43
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn81 = phi { ptr, i32 } [ %i.mi, %bb.dp ], [ %i.mh, %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.mj = load ptr, ptr %29, align 8, !tbaa !170  ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i226, label %_ZN7testing7MessageD2Ev.exit228, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.dq
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !141
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(128) %i.mj) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit228

_ZN7testing7MessageD2Ev.exit228:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %bb.dq, %bb.dn
  %.pn81.pn = phi { ptr, i32 } [ %i.mg, %bb.dn ], [ %.pn81, %bb.dq ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #43
  br label %bb.ea

bb.dr:                                            ; preds = %bb.df, %_ZN7testing7MessageD2Ev.exit225
  %i.mn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !182 ; 4 uses
  %.not.i.i229 = icmp eq ptr %i.mo, null
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEE8TestBodyEv:bb.a
  %i.ek = trunc i128 %i.ej to i64                 ; 2 uses
  %i.el = xor i64 %notmask.i.i.i.i.i.i.i133, -1   ; 2 uses
  %i.em = lshr i64 %i.ek, 57
  %i.en = trunc nuw nsw i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val14.i.i.i134 = load ptr, ptr %i.eo, align 8, !tbaa !161 ; 2 uses
  %i.ep = insertelement <16 x i8> poison, i8 %i.en, i64 0
  %i.eq = shufflevector <16 x i8> %i.ep, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.pn.i9.i.i135 = phi i64 [ %i.ek, %bb.at ], [ %i.fl, %bb.aw ]
  %.sroa.13.0.i.i.i136 = phi i64 [ 0, %bb.at ], [ %i.fk, %bb.aw ]
  %.sroa.629.0.i.i.i137 = and i64 %.pn.i9.i.i135, %i.el ; 4 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i.i134, i64 %.sroa.629.0.i.i.i137
  call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i132, i64 %.sroa.629.0.i.i.i137
  %i.et = load <16 x i8>, ptr %i.es, align 1, !tbaa !161 ; 2 uses
  %i.eu = icmp eq <16 x i8> %i.eq, %i.et
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = zext i16 %i.ev to i32
  %i.ex = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ew) #49, !srcloc !240 ; 2 uses
  %.not50.i.i.i138 = icmp eq i32 %i.ex, 0
  br i1 %.not50.i.i.i138, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %bb.au, %bb.av
  %.sroa.020.051.i.i.i140 = phi i32 [ %i.ff, %bb.av ], [ %i.ex, %bb.au ] ; 3 uses
  %i.ey = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.051.i.i.i140, i1 true)
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add nuw i64 %.sroa.629.0.i.i.i137, %i.ez
  %i.fb = and i64 %i.fa, %i.el
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i.i134, i64 %i.fb ; 2 uses
  %.val16.i.i.i141 = load i64, ptr %i.fc, align 8, !tbaa !166
  %i.fd = icmp eq i64 %.val16.i.i.i141, 0
  br i1 %i.fd, label %.thread37.i.i.i146, label %bb.av, !prof !241

.thread37.i.i.i146:                               ; preds = %.lr.ph.i.i.i139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i132) ]
  br label %.loopexit283

bb.av:                                            ; preds = %.lr.ph.i.i.i139
  %i.fe = add i32 %.sroa.020.051.i.i.i140, -1
  %i.ff = and i32 %i.fe, %.sroa.020.051.i.i.i140  ; 2 uses
  %.not.i.i.i142 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i142, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i139

._crit_edge.i.i.i143:                             ; preds = %bb.av, %bb.au
  %i.fg = icmp eq <16 x i8> %i.et, splat (i8 -128)
  %i.fh = bitcast <16 x i1> %i.fg to i16
  %i.fi = zext i16 %i.fh to i32
  %i.fj = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fi) #49, !srcloc !240
  %.not48.i.i.i144 = icmp eq i32 %i.fj, 0
  br i1 %.not48.i.i.i144, label %bb.aw, label %.loopexit283, !prof !233

bb.aw:                                            ; preds = %._crit_edge.i.i.i143
  %i.fk = add i64 %.sroa.13.0.i.i.i136, 16        ; 2 uses
  %i.fl = add i64 %i.fk, %.sroa.629.0.i.i.i137
  br label %bb.au, !llvm.loop !58

.loopexit283:                                     ; preds = %._crit_edge.i.i.i143, %.thread37.i.i.i146, %bb.as, %bb.ar
  %.pn.i.i145 = phi ptr [ %.val3.i.i.i148, %bb.as ], [ undef, %bb.ar ], [ %i.fc, %.thread37.i.i.i146 ], [ undef, %._crit_edge.i.i.i143 ]
  %i.fm = ptrtoint ptr %.pn.i.i145 to i64
  store i64 %i.fm, ptr %i.e, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %.loopexit283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.fn = load i8, ptr %14, align 8, !tbaa !179, !range !180, !noundef !181
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.bj, label %bb.ba

bb.ay:                                            ; preds = %_ZN7testing7MessageD2Ev.exit125, %bb.ae
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit125 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.az:                                            ; preds = %.loopexit283
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %bb.bl

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !182 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i150, label %_ZNK7testing15AssertionResult15failure_messageEv.exit151, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit151

_ZNK7testing15AssertionResult15failure_messageEv.exit151: ; preds = %bb.bc, %bb.bb
  %i.ft = phi ptr [ %i.fs, %bb.bc ], [ @.str.31, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1151, ptr noundef %i.ft)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.fu = load ptr, ptr %16, align 8, !tbaa !170  ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i152, label %_ZN7testing7MessageD2Ev.exit154, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.be
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !141
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(128) %i.fu) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit154

_ZN7testing7MessageD2Ev.exit154:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ba
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit157

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn63 = phi { ptr, i32 } [ %i.ga, %bb.bh ], [ %i.fz, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.gb = load ptr, ptr %16, align 8, !tbaa !170  ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.bi
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !141
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %bb.bi, %bb.bf
  %.pn63.pn = phi { ptr, i32 } [ %i.fy, %bb.bf ], [ %.pn63, %bb.bi ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #43
  br label %bb.bl

bb.bj:                                            ; preds = %bb.ax, %_ZN7testing7MessageD2Ev.exit154
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !182 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !160 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.bk
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !161
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit157, %bb.az
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %i.fp, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.bm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit167
  %.049310 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit162 ], [ %i.gr, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit167 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %.lhs.trunc = trunc nuw nsw i32 %.049310 to i8
  %i.gn = urem i8 %.lhs.trunc, 10
  %.zext = zext nneg i8 %i.gn to i32
  store i32 %.zext, ptr %i.f, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10678)
  call void @llvm.experimental.noalias.scope.decl(metadata !10679)
  call void @llvm.experimental.noalias.scope.decl(metadata !10680)
  call void @llvm.experimental.noalias.scope.decl(metadata !10681)
  call void @llvm.experimental.noalias.scope.decl(metadata !10682)
  call void @llvm.experimental.noalias.scope.decl(metadata !10683)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc166 unwind label %bb.bo

.noexc166:                                        ; preds = %bb.bm
  %i.go = load i8, ptr %i.gm, align 8, !tbaa !441, !range !180, !alias.scope !10684, !noundef !181
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.bn, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit167

bb.bn:                                            ; preds = %.noexc166
  %.sroa.2.0.copyload.i.i.i.i.i.i164 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i163, align 8, !alias.scope !10684
  %.val.i.i.i.i.i.i165 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !10684
  %i.gq = sext i32 %.val.i.i.i.i.i.i165 to i64
  store i64 %i.gq, ptr %.sroa.2.0.copyload.i.i.i.i.i.i164, align 8, !tbaa !166, !noalias !10684
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit167

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit167: ; preds = %bb.bn, %.noexc166
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  %i.gr = add nuw nsw i32 %.049310, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, 100
  br i1 %exitcond.not, label %bb.bp, label %bb.bm, !llvm.loop !10651

bb.bo:                                            ; preds = %bb.bm
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.bp:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  store i64 %i.l, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %.val98 = load i64, ptr %3, align 8
  %i.gt = and i64 %.val98, 255
  %notmask.i.i.i168 = shl nsw i64 -1, %i.gt       ; 4 uses
  %i.gu = xor i64 %notmask.i.i.i168, -1
  %i.gv = add nsw i64 %notmask.i.i.i168, 281474976710655
  %i.gw = or i64 %i.gv, %notmask.i.i.i168
  %i.gx = icmp eq i64 %i.gw, -1
  call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp samesign ugt i64 %notmask.i.i.i168, -281474976710657
  call void @llvm.assume(i1 %i.gy)
  store i64 %i.gu, ptr %i.g, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.gz = load i8, ptr %19, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.cb, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  br label %bb.cl

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !182 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i169, label %_ZNK7testing15AssertionResult15failure_messageEv.exit170, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit170

_ZNK7testing15AssertionResult15failure_messageEv.exit170: ; preds = %bb.bu, %bb.bt
  %i.hf = phi ptr [ %i.he, %bb.bu ], [ @.str.31, %bb.bt ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1156, ptr noundef %i.hf)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.hg = load ptr, ptr %21, align 8, !tbaa !170  ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bw
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !141
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %bb.bw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bs
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit176

bb.by:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #43
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn69 = phi { ptr, i32 } [ %i.hm, %bb.bz ], [ %i.hl, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.hn = load ptr, ptr %21, align 8, !tbaa !170  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.ca
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !141
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(128) %i.hn) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, %bb.ca, %bb.bx
  %.pn69.pn = phi { ptr, i32 } [ %i.hk, %bb.bx ], [ %.pn69, %bb.ca ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #43
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bq, %_ZN7testing7MessageD2Ev.exit173
  %i.hr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !182 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i177, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !160 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.cc
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !161
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 32) #44
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  store i64 %i.co, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #43
  %.val.i.i182 = load i64, ptr %3, align 8        ; 4 uses
  %i.hy = and i64 %.val.i.i182, 254
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i.i198 = icmp ult i64 %.val.i.i182, 131072
  br i1 %.not.i.i.i.i198, label %.loopexit282, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i.i199 = load ptr, ptr %i.ia, align 8, !tbaa !161
  br label %.loopexit282

bb.cg:                                            ; preds = %bb.cd
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i183 = load ptr, ptr %i.ib, align 8, !tbaa !161 ; 3 uses
  %i.ic = and i64 %.val.i.i182, 255
  %notmask.i.i.i.i.i.i.i184 = shl nsw i64 -1, %i.ic
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i183, i32 0, i32 1, i32 1)
  %i.id = lshr i64 %.val.i.i182, 8
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEE8TestBodyEv:bb.a
  br label %.loopexit282

bb.ci:                                            ; preds = %.lr.ph.i.i.i190
  %i.jd = add i32 %.sroa.020.051.i.i.i191, -1
  %i.je = and i32 %i.jd, %.sroa.020.051.i.i.i191  ; 2 uses
  %.not.i.i.i193 = icmp eq i32 %i.je, 0
  br i1 %.not.i.i.i193, label %._crit_edge.i.i.i194, label %.lr.ph.i.i.i190

._crit_edge.i.i.i194:                             ; preds = %bb.ci, %bb.ch
  %i.jf = icmp eq <16 x i8> %i.is, splat (i8 -128)
  %i.jg = bitcast <16 x i1> %i.jf to i16
  %i.jh = zext i16 %i.jg to i32
  %i.ji = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jh) #49, !srcloc !240
  %.not48.i.i.i195 = icmp eq i32 %i.ji, 0
  br i1 %.not48.i.i.i195, label %bb.cj, label %.loopexit282, !prof !233

bb.cj:                                            ; preds = %._crit_edge.i.i.i194
  %i.jj = add i64 %.sroa.13.0.i.i.i187, 16        ; 2 uses
  %i.jk = add i64 %i.jj, %.sroa.629.0.i.i.i188
  br label %bb.ch, !llvm.loop !58

.loopexit282:                                     ; preds = %._crit_edge.i.i.i194, %.thread37.i.i.i197, %bb.cf, %bb.ce
  %.pn.i.i196 = phi ptr [ %.val3.i.i.i199, %bb.cf ], [ undef, %bb.ce ], [ %i.jb, %.thread37.i.i.i197 ], [ undef, %._crit_edge.i.i.i194 ]
  %i.jl = ptrtoint ptr %.pn.i.i196 to i64
  store i64 %i.jl, ptr %i.h, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %.loopexit282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.jm = load i8, ptr %23, align 8, !tbaa !179, !range !180, !noundef !181
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.cw, label %bb.cn

bb.cl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit176, %bb.br
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %i.hb, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.cm:                                            ; preds = %.loopexit282
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %bb.db

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  %i.jp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !182 ; 2 uses
  %.not.i.i201 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i201, label %_ZNK7testing15AssertionResult15failure_messageEv.exit202, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit202

_ZNK7testing15AssertionResult15failure_messageEv.exit202: ; preds = %bb.cp, %bb.co
  %i.js = phi ptr [ %i.jr, %bb.cp ], [ @.str.31, %bb.co ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef %i.js)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.jt = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i203 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i203, label %_ZN7testing7MessageD2Ev.exit205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.cr
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !141
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(128) %i.jt) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit205

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cn
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit208

bb.ct:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn75 = phi { ptr, i32 } [ %i.jz, %bb.cu ], [ %i.jy, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.ka = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.cv
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !141
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(128) %i.ka) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, %bb.cv, %bb.cs
  %.pn75.pn = phi { ptr, i32 } [ %i.jx, %bb.cs ], [ %.pn75, %bb.cv ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #43
  br label %bb.db

bb.cw:                                            ; preds = %bb.ck, %_ZN7testing7MessageD2Ev.exit205
  %i.ke = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !182 ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i209, label %_ZN7testing15AssertionResultD2Ev.exit213, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !160 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210: ; preds = %bb.cx
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !161
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit213

_ZN7testing15AssertionResultD2Ev.exit213:         ; preds = %bb.cw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %bb.dc

bb.cy:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.not4.i.i = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %.not4.i.i, label %.loopexit280, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cy
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSC_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0.1, %.lr.ph.i.i ], [ %i.kp, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSC_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10685)
  call void @llvm.experimental.noalias.scope.decl(metadata !10686)
  call void @llvm.experimental.noalias.scope.decl(metadata !10687)
  call void @llvm.experimental.noalias.scope.decl(metadata !10688)
  call void @llvm.experimental.noalias.scope.decl(metadata !10689)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.01.05.i.i)
          to label %.noexc215 unwind label %bb.dj

.noexc215:                                        ; preds = %bb.cz
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !441, !range !180, !alias.scope !10690, !noundef !181
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.da, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSC_.exit.i.i

bb.da:                                            ; preds = %.noexc215
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10690
  %.val.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !188, !noalias !10690
  %i.ko = sext i32 %.val.i.i.i.i.i.i.i to i64
  store i64 %i.ko, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !10690
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSC_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSC_.exit.i.i: ; preds = %bb.da, %.noexc215
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  %.not.i.i214 = icmp eq ptr %.sroa.01.05.i.i, %.pn
  br i1 %.not.i.i214, label %.loopexit280, label %bb.cz, !llvm.loop !10662

bb.db:                                            ; preds = %_ZN7testing7MessageD2Ev.exit208, %bb.cm
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit208 ], [ %i.jo, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.dc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit213, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.048314 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %i.lf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.13.0313 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.9.0312 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0.0311 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.lhs.trunc278 = trunc nuw nsw i32 %.048314 to i8
  %i.kq = urem i8 %.lhs.trunc278, 10
  %.zext279 = zext nneg i8 %i.kq to i32           ; 2 uses
  %.not.i.i216 = icmp eq ptr %.sroa.9.0312, %.sroa.13.0313
  br i1 %.not.i.i216, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 %.zext279, ptr %.sroa.9.0312, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.de:                                            ; preds = %bb.dc
  %i.kr = ptrtoint ptr %.sroa.13.0313 to i64
  %i.ks = ptrtoint ptr %.sroa.0.0311 to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 6 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775804
  br i1 %i.ku, label %bb.df, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %i.kv = ashr exact i64 %i.kt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 2305843009213693951)
  %i.kz = select i1 %i.kx, i64 2305843009213693951, i64 %i.ky ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.kz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.la = shl nuw nsw i64 %i.kz, 2
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #47
          to label %.noexc219 unwind label %.loopexit281 ; 4 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.kt ; 2 uses
  store i32 %.zext279, ptr %i.lc, align 4, !tbaa !188
  %i.ld = icmp sgt i64 %i.kt, 0
  br i1 %i.ld, label %bb.dg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dg:                                            ; preds = %.noexc219
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lb, ptr align 4 %.sroa.0.0311, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dg, %.noexc219
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0311, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0311, i64 noundef %i.kt) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.dh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.kz
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.dd
  %.sroa.0.1 = phi ptr [ %i.lb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0311, %bb.dd ] ; 9 uses
  %.pn = phi ptr [ %i.lc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0312, %bb.dd ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.le, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0313, %bb.dd ] ; 5 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.lf = add nuw nsw i32 %.048314, 1             ; 2 uses
  %exitcond326.not = icmp eq i32 %i.lf, 100
  br i1 %exitcond326.not, label %bb.cy, label %bb.dc, !llvm.loop !10663

.loopexit281:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp:                               ; preds = %bb.df
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit280:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS8_8iteratorEbEDpOSC_.exit.i.i, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  store i64 %i.l, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #43
  %.val = load i64, ptr %3, align 8
  %i.lg = and i64 %.val, 255
  %notmask.i.i.i220 = shl nsw i64 -1, %i.lg       ; 4 uses
  %i.lh = xor i64 %notmask.i.i.i220, -1
  %i.li = add nsw i64 %notmask.i.i.i220, 281474976710655
  %i.lj = or i64 %i.li, %notmask.i.i.i220
  %i.lk = icmp eq i64 %i.lj, -1
  call void @llvm.assume(i1 %i.lk)
  %i.ll = icmp samesign ugt i64 %notmask.i.i.i220, -281474976710657
  call void @llvm.assume(i1 %i.ll)
  store i64 %i.lh, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %.loopexit280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  %i.lm = load i8, ptr %27, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.du, label %bb.dl

bb.dj:                                            ; preds = %bb.cz
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.dk:                                            ; preds = %.loopexit280
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  br label %bb.ee

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  %i.lq = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !182 ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i221, label %_ZNK7testing15AssertionResult15failure_messageEv.exit222, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit222

_ZNK7testing15AssertionResult15failure_messageEv.exit222: ; preds = %bb.dn, %bb.dm
  %i.lt = phi ptr [ %i.ls, %bb.dn ], [ @.str.31, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1164, ptr noundef %i.lt)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.lu = load ptr, ptr %29, align 8, !tbaa !170  ; 3 uses
  %.not.i.i223 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i223, label %_ZN7testing7MessageD2Ev.exit225, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.dp
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !141
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(128) %i.lu) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit225

_ZN7testing7MessageD2Ev.exit225:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  br label %bb.du

bb.dq:                                            ; preds = %bb.dl
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit228

bb.dr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #43
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn81 = phi { ptr, i32 } [ %i.ma, %bb.ds ], [ %i.lz, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.mb = load ptr, ptr %29, align 8, !tbaa !170  ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i226, label %_ZN7testing7MessageD2Ev.exit228, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.dt
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !141
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(128) %i.mb) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit228

_ZN7testing7MessageD2Ev.exit228:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %bb.dt, %bb.dq
  %.pn81.pn = phi { ptr, i32 } [ %i.ly, %bb.dq ], [ %.pn81, %bb.dt ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #43
  br label %bb.ee

bb.du:                                            ; preds = %bb.di, %_ZN7testing7MessageD2Ev.exit225
  %i.mf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !182 ; 4 uses
  %.not.i.i229 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i229, label %bb.dw, label %bb.dv

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb0ELb1ESaIlEEEE8TestBodyEv:bb.a
  %i.ep = xor i64 %notmask.i.i.i.i.i.i.i133, -1   ; 2 uses
  %i.eq = lshr i64 %i.eo, 57
  %i.er = trunc nuw nsw i64 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val14.i.i.i134 = load ptr, ptr %i.es, align 8, !tbaa !161 ; 3 uses
  %i.et = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.pn.i7.i.i135 = phi i64 [ %i.eo, %bb.ar ], [ %i.fq, %bb.au ]
  %.sroa.13.0.i.i.i136 = phi i64 [ 0, %bb.ar ], [ %i.fp, %bb.au ]
  %.sroa.629.0.i.i.i137 = and i64 %.pn.i7.i.i135, %i.ep ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i134, i64 %.sroa.629.0.i.i.i137
  call void @llvm.prefetch.p0(ptr %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i132, i64 %.sroa.629.0.i.i.i137
  %i.ex = load <16 x i8>, ptr %i.ew, align 1, !tbaa !161 ; 2 uses
  %i.ey = icmp eq <16 x i8> %i.eu, %i.ex
  %i.ez = bitcast <16 x i1> %i.ey to i16
  %i.fa = zext i16 %i.ez to i32
  %i.fb = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fa) #49, !srcloc !240 ; 2 uses
  %.not51.i.i.i138 = icmp eq i32 %i.fb, 0
  br i1 %.not51.i.i.i138, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %bb.as, %bb.at
  %.sroa.020.052.i.i.i140 = phi i32 [ %i.fk, %bb.at ], [ %i.fb, %bb.as ] ; 3 uses
  %i.fc = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.052.i.i.i140, i1 true)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = add nuw i64 %.sroa.629.0.i.i.i137, %i.fd
  %i.ff = and i64 %i.fe, %i.ep                    ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i134, i64 %i.ff
  %.val16.i.i.i141 = load i64, ptr %i.fg, align 8, !tbaa !166
  %i.fh = icmp eq i64 %.val16.i.i.i141, 0
  br i1 %i.fh, label %.thread37.i.i.i146, label %bb.at, !prof !241

.thread37.i.i.i146:                               ; preds = %.lr.ph.i.i.i139
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i134, i64 %i.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i132) ]
  br label %.loopexit283

bb.at:                                            ; preds = %.lr.ph.i.i.i139
  %i.fj = add i32 %.sroa.020.052.i.i.i140, -1
  %i.fk = and i32 %i.fj, %.sroa.020.052.i.i.i140  ; 2 uses
  %.not.i.i.i142 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i142, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i139

._crit_edge.i.i.i143:                             ; preds = %bb.at, %bb.as
  %i.fl = icmp eq <16 x i8> %i.ex, splat (i8 -128)
  %i.fm = bitcast <16 x i1> %i.fl to i16
  %i.fn = zext i16 %i.fm to i32
  %i.fo = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fn) #49, !srcloc !240
  %.not48.i.i.i144 = icmp eq i32 %i.fo, 0
  br i1 %.not48.i.i.i144, label %bb.au, label %.loopexit283, !prof !233

bb.au:                                            ; preds = %._crit_edge.i.i.i143
  %i.fp = add i64 %.sroa.13.0.i.i.i136, 16        ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.629.0.i.i.i137
  br label %bb.as, !llvm.loop !62

.loopexit283:                                     ; preds = %._crit_edge.i.i.i143, %.thread37.i.i.i146, %bb.aq
  %.pn.i.i145 = phi ptr [ %i.fi, %.thread37.i.i.i146 ], [ %spec.select.i148, %bb.aq ], [ undef, %._crit_edge.i.i.i143 ]
  %i.fr = ptrtoint ptr %.pn.i.i145 to i64
  store i64 %i.fr, ptr %i.e, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.loopexit283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.fs = load i8, ptr %14, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.bh, label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit125, %bb.ad
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit125 ], [ %i.dg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.ax:                                            ; preds = %.loopexit283
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %bb.bj

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !182 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i150, label %_ZNK7testing15AssertionResult15failure_messageEv.exit151, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit151

_ZNK7testing15AssertionResult15failure_messageEv.exit151: ; preds = %bb.ba, %bb.az
  %i.fy = phi ptr [ %i.fx, %bb.ba ], [ @.str.31, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1151, ptr noundef %i.fy)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.fz = load ptr, ptr %16, align 8, !tbaa !170  ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i152, label %_ZN7testing7MessageD2Ev.exit154, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.bc
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !141
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit154

_ZN7testing7MessageD2Ev.exit154:                  ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit157

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn63 = phi { ptr, i32 } [ %i.gf, %bb.bf ], [ %i.ge, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.gg = load ptr, ptr %16, align 8, !tbaa !170  ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.bg
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !141
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %bb.bg, %bb.bd
  %.pn63.pn = phi { ptr, i32 } [ %i.gd, %bb.bd ], [ %.pn63, %bb.bg ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #43
  br label %bb.bj

bb.bh:                                            ; preds = %bb.av, %_ZN7testing7MessageD2Ev.exit154
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !182 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !160 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.bi
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !161
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.gr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.bk

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit157, %bb.ax
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %i.fu, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167
  %.049312 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit162 ], [ %i.gw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %.lhs.trunc = trunc nuw nsw i32 %.049312 to i8
  %i.gs = urem i8 %.lhs.trunc, 10
  %.zext = zext nneg i8 %i.gs to i32
  store i32 %.zext, ptr %i.f, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10754)
  call void @llvm.experimental.noalias.scope.decl(metadata !10755)
  call void @llvm.experimental.noalias.scope.decl(metadata !10756)
  call void @llvm.experimental.noalias.scope.decl(metadata !10757)
  call void @llvm.experimental.noalias.scope.decl(metadata !10758)
  call void @llvm.experimental.noalias.scope.decl(metadata !10759)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc166 unwind label %bb.bm

.noexc166:                                        ; preds = %bb.bk
  %i.gt = load i8, ptr %i.gr, align 8, !tbaa !636, !range !180, !alias.scope !10760, !noundef !181
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bl, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167

bb.bl:                                            ; preds = %.noexc166
  %.sroa.2.0.copyload.i.i.i.i.i.i164 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i163, align 8, !alias.scope !10760
  %.val.i.i.i.i.i.i165 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !10760
  %i.gv = sext i32 %.val.i.i.i.i.i.i165 to i64
  store i64 %i.gv, ptr %.sroa.2.0.copyload.i.i.i.i.i.i164, align 8, !tbaa !166, !noalias !10760
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167: ; preds = %bb.bl, %.noexc166
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  %i.gw = add nuw nsw i32 %.049312, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, 100
  br i1 %exitcond.not, label %bb.bn, label %bb.bk, !llvm.loop !10727

bb.bm:                                            ; preds = %bb.bk
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE6insertIiLi0EEESt4pairINS6_8iteratorEbEOT_.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  store i64 %i.l, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %.val98 = load i64, ptr %3, align 8
  %i.gy = and i64 %.val98, 255                    ; 2 uses
  %notmask.i.i.i168 = shl nsw i64 -1, %i.gy       ; 4 uses
  %i.gz = xor i64 %notmask.i.i.i168, -1
  %i.ha = add nsw i64 %notmask.i.i.i168, 281474976710655
  %i.hb = or i64 %i.ha, %notmask.i.i.i168
  %i.hc = icmp eq i64 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp ne i64 %i.gy, 0
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i64 %notmask.i.i.i168, -281474976710657
  call void @llvm.assume(i1 %i.he)
  store i64 %i.gz, ptr %i.g, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.hf = load i8, ptr %19, align 8, !tbaa !179, !range !180, !noundef !181
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bz, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !182 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i169, label %_ZNK7testing15AssertionResult15failure_messageEv.exit170, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit170

_ZNK7testing15AssertionResult15failure_messageEv.exit170: ; preds = %bb.bs, %bb.br
  %i.hl = phi ptr [ %i.hk, %bb.bs ], [ @.str.31, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1156, ptr noundef %i.hl)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.hm = load ptr, ptr %21, align 8, !tbaa !170  ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bu
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !141
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(128) %i.hm) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit176

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn69 = phi { ptr, i32 } [ %i.hs, %bb.bx ], [ %i.hr, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.ht = load ptr, ptr %21, align 8, !tbaa !170  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.by
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !141
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(128) %i.ht) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, %bb.by, %bb.bv
  %.pn69.pn = phi { ptr, i32 } [ %i.hq, %bb.bv ], [ %.pn69, %bb.by ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #43
  br label %bb.ci

bb.bz:                                            ; preds = %bb.bo, %_ZN7testing7MessageD2Ev.exit173
  %i.hx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !182 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i177, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !160 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.ca
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !161
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 32) #44
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  store i64 %i.cr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #43
  %.val.i.i182 = load i64, ptr %3, align 8        ; 4 uses
  %i.ie = and i64 %.val.i.i182, 254
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i.i198 = icmp ult i64 %.val.i.i182, 131072
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 8
  %spec.select.i199 = select i1 %.not.i.i.i.i198, ptr undef, ptr %i.ig
  br label %.loopexit282

bb.cd:                                            ; preds = %bb.cb
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i183 = load ptr, ptr %i.ih, align 8, !tbaa !161 ; 3 uses
  %i.ii = and i64 %.val.i.i182, 255
  %notmask.i.i.i.i.i.i.i184 = shl nsw i64 -1, %i.ii
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i183, i32 0, i32 1, i32 1)
  %i.ij = lshr i64 %.val.i.i182, 8
  %i.ik = and i64 %i.ij, 255
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb0ELb1ESaIlEEEE8TestBodyEv:bb.a
  br label %.loopexit282

bb.cf:                                            ; preds = %.lr.ph.i.i.i190
  %i.jk = add i32 %.sroa.020.052.i.i.i191, -1
  %i.jl = and i32 %i.jk, %.sroa.020.052.i.i.i191  ; 2 uses
  %.not.i.i.i193 = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i.i193, label %._crit_edge.i.i.i194, label %.lr.ph.i.i.i190

._crit_edge.i.i.i194:                             ; preds = %bb.cf, %bb.ce
  %i.jm = icmp eq <16 x i8> %i.iy, splat (i8 -128)
  %i.jn = bitcast <16 x i1> %i.jm to i16
  %i.jo = zext i16 %i.jn to i32
  %i.jp = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jo) #49, !srcloc !240
  %.not48.i.i.i195 = icmp eq i32 %i.jp, 0
  br i1 %.not48.i.i.i195, label %bb.cg, label %.loopexit282, !prof !233

bb.cg:                                            ; preds = %._crit_edge.i.i.i194
  %i.jq = add i64 %.sroa.13.0.i.i.i187, 16        ; 2 uses
  %i.jr = add i64 %i.jq, %.sroa.629.0.i.i.i188
  br label %bb.ce, !llvm.loop !62

.loopexit282:                                     ; preds = %._crit_edge.i.i.i194, %.thread37.i.i.i197, %bb.cc
  %.pn.i.i196 = phi ptr [ %i.jj, %.thread37.i.i.i197 ], [ %spec.select.i199, %bb.cc ], [ undef, %._crit_edge.i.i.i194 ]
  %i.js = ptrtoint ptr %.pn.i.i196 to i64
  store i64 %i.js, ptr %i.h, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %.loopexit282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.jt = load i8, ptr %23, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ct, label %bb.ck

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit176, %bb.bp
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %i.hh, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.cj:                                            ; preds = %.loopexit282
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  %i.jw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !182 ; 2 uses
  %.not.i.i201 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i201, label %_ZNK7testing15AssertionResult15failure_messageEv.exit202, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit202

_ZNK7testing15AssertionResult15failure_messageEv.exit202: ; preds = %bb.cm, %bb.cl
  %i.jz = phi ptr [ %i.jy, %bb.cm ], [ @.str.31, %bb.cl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef %i.jz)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.ka = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i203 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i203, label %_ZN7testing7MessageD2Ev.exit205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.co
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !141
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(128) %i.ka) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit205

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %bb.co, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit208

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn75 = phi { ptr, i32 } [ %i.kg, %bb.cr ], [ %i.kf, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.kh = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.cs
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !141
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(128) %i.kh) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, %bb.cs, %bb.cp
  %.pn75.pn = phi { ptr, i32 } [ %i.ke, %bb.cp ], [ %.pn75, %bb.cs ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #43
  br label %bb.cy

bb.ct:                                            ; preds = %bb.ch, %_ZN7testing7MessageD2Ev.exit205
  %i.kl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !182 ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.km, null
  br i1 %.not.i.i209, label %_ZN7testing15AssertionResultD2Ev.exit213, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !160 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210: ; preds = %bb.cu
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !161
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit213

_ZN7testing15AssertionResultD2Ev.exit213:         ; preds = %bb.ct, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %bb.cz

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.not4.i.i = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %.not4.i.i, label %.loopexit280, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0.1, %.lr.ph.i.i ], [ %i.kw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10761)
  call void @llvm.experimental.noalias.scope.decl(metadata !10762)
  call void @llvm.experimental.noalias.scope.decl(metadata !10763)
  call void @llvm.experimental.noalias.scope.decl(metadata !10764)
  call void @llvm.experimental.noalias.scope.decl(metadata !10765)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.01.05.i.i)
          to label %.noexc215 unwind label %bb.dg

.noexc215:                                        ; preds = %bb.cw
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !636, !range !180, !alias.scope !10766, !noundef !181
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.cx, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i

bb.cx:                                            ; preds = %.noexc215
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10766
  %.val.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !188, !noalias !10766
  %i.kv = sext i32 %.val.i.i.i.i.i.i.i to i64
  store i64 %i.kv, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !10766
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i: ; preds = %bb.cx, %.noexc215
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  %.not.i.i214 = icmp eq ptr %.sroa.01.05.i.i, %.pn
  br i1 %.not.i.i214, label %.loopexit280, label %bb.cw, !llvm.loop !10738

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit208, %bb.cj
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit208 ], [ %i.jv, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit268

bb.cz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit213, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.048317 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %i.lm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.13.0316 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.9.0315 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0.0314 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit213 ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.lhs.trunc278 = trunc nuw nsw i32 %.048317 to i8
  %i.kx = urem i8 %.lhs.trunc278, 10
  %.zext279 = zext nneg i8 %i.kx to i32           ; 2 uses
  %.not.i.i216 = icmp eq ptr %.sroa.9.0315, %.sroa.13.0316
  br i1 %.not.i.i216, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 %.zext279, ptr %.sroa.9.0315, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.db:                                            ; preds = %bb.cz
  %i.ky = ptrtoint ptr %.sroa.13.0316 to i64
  %i.kz = ptrtoint ptr %.sroa.0.0314 to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 6 uses
  %i.lb = icmp eq i64 %i.la, 9223372036854775804
  br i1 %i.lb, label %bb.dc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.db
  %i.lc = ashr exact i64 %i.la, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lc ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lc
  %i.lf = call i64 @llvm.umin.i64(i64 %i.ld, i64 2305843009213693951)
  %i.lg = select i1 %i.le, i64 2305843009213693951, i64 %i.lf ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.lg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.lh = shl nuw nsw i64 %i.lg, 2
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #47
          to label %.noexc219 unwind label %.loopexit281 ; 4 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.la ; 2 uses
  store i32 %.zext279, ptr %i.lj, align 4, !tbaa !188
  %i.lk = icmp sgt i64 %i.la, 0
  br i1 %i.lk, label %bb.dd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dd:                                            ; preds = %.noexc219
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %.sroa.0.0314, i64 %i.la, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dd, %.noexc219
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0314, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0314, i64 noundef %i.la) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.de, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lg
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.da
  %.sroa.0.1 = phi ptr [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0314, %bb.da ] ; 9 uses
  %.pn = phi ptr [ %i.lj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0315, %bb.da ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.ll, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0316, %bb.da ] ; 5 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.lm = add nuw nsw i32 %.048317, 1             ; 2 uses
  %exitcond330.not = icmp eq i32 %i.lm, 100
  br i1 %exitcond330.not, label %bb.cv, label %bb.cz, !llvm.loop !10739

.loopexit281:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.loopexit.split-lp:                               ; preds = %bb.dc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.loopexit280:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS6_8iteratorEbEDpOSA_.exit.i.i, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  store i64 %i.l, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #43
  %.val = load i64, ptr %3, align 8
  %i.ln = and i64 %.val, 255                      ; 2 uses
  %notmask.i.i.i220 = shl nsw i64 -1, %i.ln       ; 4 uses
  %i.lo = xor i64 %notmask.i.i.i220, -1
  %i.lp = add nsw i64 %notmask.i.i.i220, 281474976710655
  %i.lq = or i64 %i.lp, %notmask.i.i.i220
  %i.lr = icmp eq i64 %i.lq, -1
  call void @llvm.assume(i1 %i.lr)
  %i.ls = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp samesign ugt i64 %notmask.i.i.i220, -281474976710657
  call void @llvm.assume(i1 %i.lt)
  store i64 %i.lo, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %.loopexit280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  %i.lu = load i8, ptr %27, align 8, !tbaa !179, !range !180, !noundef !181
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.dr, label %bb.di

bb.dg:                                            ; preds = %bb.cw
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.dh:                                            ; preds = %.loopexit280
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  br label %bb.ea

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  %i.ly = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !182 ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i221, label %_ZNK7testing15AssertionResult15failure_messageEv.exit222, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit222

_ZNK7testing15AssertionResult15failure_messageEv.exit222: ; preds = %bb.dk, %bb.dj
  %i.mb = phi ptr [ %i.ma, %bb.dk ], [ @.str.31, %bb.dj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1164, ptr noundef %i.mb)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.mc = load ptr, ptr %29, align 8, !tbaa !170  ; 3 uses
  %.not.i.i223 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i223, label %_ZN7testing7MessageD2Ev.exit225, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.dm
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !141
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(128) %i.mc) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit225

_ZN7testing7MessageD2Ev.exit225:                  ; preds = %bb.dm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  br label %bb.dr

bb.dn:                                            ; preds = %bb.di
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit228

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #43
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn81 = phi { ptr, i32 } [ %i.mi, %bb.dp ], [ %i.mh, %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.mj = load ptr, ptr %29, align 8, !tbaa !170  ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i226, label %_ZN7testing7MessageD2Ev.exit228, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.dq
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !141
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(128) %i.mj) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit228

_ZN7testing7MessageD2Ev.exit228:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %bb.dq, %bb.dn
  %.pn81.pn = phi { ptr, i32 } [ %i.mg, %bb.dn ], [ %.pn81, %bb.dq ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #43
  br label %bb.ea

bb.dr:                                            ; preds = %bb.df, %_ZN7testing7MessageD2Ev.exit225
  %i.mn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !182 ; 4 uses
  %.not.i.i229 = icmp eq ptr %i.mo, null
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb1ELb1ENS2_32ChangingSizeAndTrackingTypeAllocIlEEEEE8TestBodyEv:bb.a
  %i.fb = xor i64 %notmask.i.i.i.i.i.i.i135, -1   ; 2 uses
  %i.fc = lshr i64 %i.fa, 57
  %i.fd = trunc nuw nsw i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val14.i.i.i136 = load ptr, ptr %i.fe, align 8, !tbaa !161 ; 3 uses
  %i.ff = insertelement <16 x i8> poison, i8 %i.fd, i64 0
  %i.fg = shufflevector <16 x i8> %i.ff, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.pn.i7.i.i137 = phi i64 [ %i.fa, %bb.ar ], [ %i.gc, %bb.au ]
  %.sroa.13.0.i.i.i138 = phi i64 [ 0, %bb.ar ], [ %i.gb, %bb.au ]
  %.sroa.629.0.i.i.i139 = and i64 %.pn.i7.i.i137, %i.fb ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i136, i64 %.sroa.629.0.i.i.i139
  call void @llvm.prefetch.p0(ptr %i.fh, i32 0, i32 3, i32 1)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i134, i64 %.sroa.629.0.i.i.i139
  %i.fj = load <16 x i8>, ptr %i.fi, align 1, !tbaa !161 ; 2 uses
  %i.fk = icmp eq <16 x i8> %i.fg, %i.fj
  %i.fl = bitcast <16 x i1> %i.fk to i16
  %i.fm = zext i16 %i.fl to i32
  %i.fn = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fm) #49, !srcloc !240 ; 2 uses
  %.not51.i.i.i140 = icmp eq i32 %i.fn, 0
  br i1 %.not51.i.i.i140, label %._crit_edge.i.i.i145, label %.lr.ph.i.i.i141

.lr.ph.i.i.i141:                                  ; preds = %bb.as, %bb.at
  %.sroa.020.052.i.i.i142 = phi i32 [ %i.fw, %bb.at ], [ %i.fn, %bb.as ] ; 3 uses
  %i.fo = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.052.i.i.i142, i1 true)
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = add nuw i64 %.sroa.629.0.i.i.i139, %i.fp
  %i.fr = and i64 %i.fq, %i.fb                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i136, i64 %i.fr
  %.val16.i.i.i143 = load i64, ptr %i.fs, align 8, !tbaa !166
  %i.ft = icmp eq i64 %.val16.i.i.i143, 0
  br i1 %i.ft, label %.thread37.i.i.i148, label %bb.at, !prof !241

.thread37.i.i.i148:                               ; preds = %.lr.ph.i.i.i141
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i136, i64 %i.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i134) ]
  br label %.loopexit287

bb.at:                                            ; preds = %.lr.ph.i.i.i141
  %i.fv = add i32 %.sroa.020.052.i.i.i142, -1
  %i.fw = and i32 %i.fv, %.sroa.020.052.i.i.i142  ; 2 uses
  %.not.i.i.i144 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i144, label %._crit_edge.i.i.i145, label %.lr.ph.i.i.i141

._crit_edge.i.i.i145:                             ; preds = %bb.at, %bb.as
  %i.fx = icmp eq <16 x i8> %i.fj, splat (i8 -128)
  %i.fy = bitcast <16 x i1> %i.fx to i16
  %i.fz = zext i16 %i.fy to i32
  %i.ga = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fz) #49, !srcloc !240
  %.not48.i.i.i146 = icmp eq i32 %i.ga, 0
  br i1 %.not48.i.i.i146, label %bb.au, label %.loopexit287, !prof !233

bb.au:                                            ; preds = %._crit_edge.i.i.i145
  %i.gb = add i64 %.sroa.13.0.i.i.i138, 16        ; 2 uses
  %i.gc = add i64 %i.gb, %.sroa.629.0.i.i.i139
  br label %bb.as, !llvm.loop !63

.loopexit287:                                     ; preds = %._crit_edge.i.i.i145, %.thread37.i.i.i148, %bb.aq
  %.pn.i.i147 = phi ptr [ %i.fu, %.thread37.i.i.i148 ], [ %spec.select.i150, %bb.aq ], [ undef, %._crit_edge.i.i.i145 ]
  %i.gd = ptrtoint ptr %.pn.i.i147 to i64
  store i64 %i.gd, ptr %i.e, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.loopexit287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  %i.ge = load i8, ptr %17, align 8, !tbaa !179, !range !180, !noundef !181
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.bh, label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit127, %bb.ad
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit127 ], [ %i.ds, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.ax:                                            ; preds = %.loopexit287
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %bb.bj

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !182 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i152, label %_ZNK7testing15AssertionResult15failure_messageEv.exit153, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit153

_ZNK7testing15AssertionResult15failure_messageEv.exit153: ; preds = %bb.ba, %bb.az
  %i.gk = phi ptr [ %i.gj, %bb.ba ], [ @.str.31, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1151, ptr noundef %i.gk)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit153
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.gl = load ptr, ptr %19, align 8, !tbaa !170  ; 3 uses
  %.not.i.i154 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i154, label %_ZN7testing7MessageD2Ev.exit156, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bc
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !141
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit156

_ZN7testing7MessageD2Ev.exit156:                  ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit159

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit153
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #43
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn63 = phi { ptr, i32 } [ %i.gr, %bb.bf ], [ %i.gq, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.gs = load ptr, ptr %19, align 8, !tbaa !170  ; 3 uses
  %.not.i.i157 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i157, label %_ZN7testing7MessageD2Ev.exit159, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158: ; preds = %bb.bg
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !141
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(128) %i.gs) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit159

_ZN7testing7MessageD2Ev.exit159:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158, %bb.bg, %bb.bd
  %.pn63.pn = phi { ptr, i32 } [ %i.gp, %bb.bd ], [ %.pn63, %bb.bg ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #43
  br label %bb.bj

bb.bh:                                            ; preds = %bb.av, %_ZN7testing7MessageD2Ev.exit156
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !182 ; 4 uses
  %.not.i.i160 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i160, label %_ZN7testing15AssertionResultD2Ev.exit164, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !160 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i161: ; preds = %bb.bi
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !161
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i161
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit164

_ZN7testing15AssertionResultD2Ev.exit164:         ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.bk

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit159, %bb.ax
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit159 ], [ %i.gg, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit164, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170
  %.049316 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit164 ], [ %i.hi, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %.lhs.trunc = trunc nuw nsw i32 %.049316 to i8
  %i.he = urem i8 %.lhs.trunc, 10
  %.zext = zext nneg i8 %i.he to i32
  store i32 %.zext, ptr %i.f, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10830)
  call void @llvm.experimental.noalias.scope.decl(metadata !10831)
  call void @llvm.experimental.noalias.scope.decl(metadata !10832)
  call void @llvm.experimental.noalias.scope.decl(metadata !10833)
  call void @llvm.experimental.noalias.scope.decl(metadata !10834)
  call void @llvm.experimental.noalias.scope.decl(metadata !10835)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE22find_or_prepare_insertIiEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc168 unwind label %bb.bm

.noexc168:                                        ; preds = %bb.bk
  %i.hf = load i8, ptr %i.hd, align 8, !tbaa !639, !range !180, !alias.scope !10836, !noundef !181
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bl, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170

bb.bl:                                            ; preds = %.noexc168
  %.sroa.2.0.copyload.i.i.i.i.i.i166 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i165, align 8, !alias.scope !10836
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !10836
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(21) %i.v)
          to label %.noexc169 unwind label %bb.bm

.noexc169:                                        ; preds = %bb.bl
  %.val.i.i.i.i.i.i.i.i.i.i167 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !10836
  %i.hh = sext i32 %.val.i.i.i.i.i.i.i.i.i.i167 to i64
  store i64 %i.hh, ptr %.sroa.2.0.copyload.i.i.i.i.i.i166, align 8, !tbaa !166, !noalias !10836
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !10836
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170: ; preds = %.noexc169, %.noexc168
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  %i.hi = add nuw nsw i32 %.049316, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.hi, 100
  br i1 %exitcond.not, label %bb.bn, label %bb.bk, !llvm.loop !10803

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  store i64 %i.x, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %.val98 = load i64, ptr %6, align 8
  %i.hk = and i64 %.val98, 255                    ; 2 uses
  %notmask.i.i.i171 = shl nsw i64 -1, %i.hk       ; 4 uses
  %i.hl = xor i64 %notmask.i.i.i171, -1
  %i.hm = add nsw i64 %notmask.i.i.i171, 281474976710655
  %i.hn = or i64 %i.hm, %notmask.i.i.i171
  %i.ho = icmp eq i64 %i.hn, -1
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i64 %notmask.i.i.i171, -281474976710657
  call void @llvm.assume(i1 %i.hq)
  store i64 %i.hl, ptr %i.g, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  %i.hr = load i8, ptr %22, align 8, !tbaa !179, !range !180, !noundef !181
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.bz, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  %i.hu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !182 ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i172, label %_ZNK7testing15AssertionResult15failure_messageEv.exit173, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit173

_ZNK7testing15AssertionResult15failure_messageEv.exit173: ; preds = %bb.bs, %bb.br
  %i.hx = phi ptr [ %i.hw, %bb.bs ], [ @.str.31, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1156, ptr noundef %i.hx)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit173
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  %i.hy = load ptr, ptr %24, align 8, !tbaa !170  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.bu
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !141
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(128) %i.hy) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit179

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit173
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn69 = phi { ptr, i32 } [ %i.ie, %bb.bx ], [ %i.id, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  %i.if = load ptr, ptr %24, align 8, !tbaa !170  ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.if, null
  br i1 %.not.i.i177, label %_ZN7testing7MessageD2Ev.exit179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178: ; preds = %bb.by
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !141
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit179

_ZN7testing7MessageD2Ev.exit179:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178, %bb.by, %bb.bv
  %.pn69.pn = phi { ptr, i32 } [ %i.ic, %bb.bv ], [ %.pn69, %bb.by ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #43
  br label %bb.ci

bb.bz:                                            ; preds = %bb.bo, %_ZN7testing7MessageD2Ev.exit176
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !182 ; 4 uses
  %.not.i.i180 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i180, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !160 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181: ; preds = %bb.ca
  %i.io = load i64, ptr %i.im, align 8, !tbaa !161
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 32) #44
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  store i64 %i.dd, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #43
  %.val.i.i185 = load i64, ptr %6, align 8        ; 4 uses
  %i.iq = and i64 %.val.i.i185, 254
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i.i201 = icmp ult i64 %.val.i.i185, 131072
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 8
  %spec.select.i202 = select i1 %.not.i.i.i.i201, ptr undef, ptr %i.is
  br label %.loopexit286

bb.cd:                                            ; preds = %bb.cb
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb1ELb1ENS2_32ChangingSizeAndTrackingTypeAllocIlEEEEE8TestBodyEv:bb.a
  br i1 %.not.i.i.i196, label %._crit_edge.i.i.i197, label %.lr.ph.i.i.i193

._crit_edge.i.i.i197:                             ; preds = %bb.cf, %bb.ce
  %i.jy = icmp eq <16 x i8> %i.jk, splat (i8 -128)
  %i.jz = bitcast <16 x i1> %i.jy to i16
  %i.ka = zext i16 %i.jz to i32
  %i.kb = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ka) #49, !srcloc !240
  %.not48.i.i.i198 = icmp eq i32 %i.kb, 0
  br i1 %.not48.i.i.i198, label %bb.cg, label %.loopexit286, !prof !233

bb.cg:                                            ; preds = %._crit_edge.i.i.i197
  %i.kc = add i64 %.sroa.13.0.i.i.i190, 16        ; 2 uses
  %i.kd = add i64 %i.kc, %.sroa.629.0.i.i.i191
  br label %bb.ce, !llvm.loop !63

.loopexit286:                                     ; preds = %._crit_edge.i.i.i197, %.thread37.i.i.i200, %bb.cc
  %.pn.i.i199 = phi ptr [ %i.jv, %.thread37.i.i.i200 ], [ %spec.select.i202, %bb.cc ], [ undef, %._crit_edge.i.i.i197 ]
  %i.ke = ptrtoint ptr %.pn.i.i199 to i64
  store i64 %i.ke, ptr %i.h, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %.loopexit286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  %i.kf = load i8, ptr %26, align 8, !tbaa !179, !range !180, !noundef !181
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.ct, label %bb.ck

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit179, %bb.bp
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit179 ], [ %i.ht, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.cj:                                            ; preds = %.loopexit286
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  %i.ki = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !182 ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i204, label %_ZNK7testing15AssertionResult15failure_messageEv.exit205, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit205

_ZNK7testing15AssertionResult15failure_messageEv.exit205: ; preds = %bb.cm, %bb.cl
  %i.kl = phi ptr [ %i.kk, %bb.cm ], [ @.str.31, %bb.cl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef %i.kl)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %i.km = load ptr, ptr %28, align 8, !tbaa !170  ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.km, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.co
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !141
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(128) %i.km) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %bb.co, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit211

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn75 = phi { ptr, i32 } [ %i.ks, %bb.cr ], [ %i.kr, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %i.kt = load ptr, ptr %28, align 8, !tbaa !170  ; 3 uses
  %.not.i.i209 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i209, label %_ZN7testing7MessageD2Ev.exit211, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.cs
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !141
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(128) %i.kt) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit211

_ZN7testing7MessageD2Ev.exit211:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, %bb.cs, %bb.cp
  %.pn75.pn = phi { ptr, i32 } [ %i.kq, %bb.cp ], [ %.pn75, %bb.cs ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #43
  br label %bb.cy

bb.ct:                                            ; preds = %bb.ch, %_ZN7testing7MessageD2Ev.exit208
  %i.kx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !182 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i212, label %_ZN7testing15AssertionResultD2Ev.exit216, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !160 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %bb.cu
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !161
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit216

_ZN7testing15AssertionResultD2Ev.exit216:         ; preds = %bb.ct, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %bb.cz

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.not4.i.i = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %.not4.i.i, label %.loopexit284, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cv
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0.1, %.lr.ph.i.i ], [ %i.li, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10837)
  call void @llvm.experimental.noalias.scope.decl(metadata !10838)
  call void @llvm.experimental.noalias.scope.decl(metadata !10839)
  call void @llvm.experimental.noalias.scope.decl(metadata !10840)
  call void @llvm.experimental.noalias.scope.decl(metadata !10841)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE22find_or_prepare_insertIiEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.01.05.i.i)
          to label %.noexc218 unwind label %bb.dg

.noexc218:                                        ; preds = %bb.cw
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !639, !range !180, !alias.scope !10842, !noundef !181
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.cx, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i

bb.cx:                                            ; preds = %.noexc218
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10842
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43, !noalias !10842
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(21) %i.v)
          to label %.noexc219 unwind label %bb.dg

.noexc219:                                        ; preds = %bb.cx
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !188, !noalias !10842
  %i.lh = sext i32 %.val.i.i.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.lh, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !10842
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43, !noalias !10842
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i: ; preds = %.noexc219, %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  %.not.i.i217 = icmp eq ptr %.sroa.01.05.i.i, %.pn
  br i1 %.not.i.i217, label %.loopexit284, label %bb.cw, !llvm.loop !10814

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit211, %bb.cj
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit211 ], [ %i.kh, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.cz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit216, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.048321 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %i.ly, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.13.0320 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.9.0319 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0.0318 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.lhs.trunc282 = trunc nuw nsw i32 %.048321 to i8
  %i.lj = urem i8 %.lhs.trunc282, 10
  %.zext283 = zext nneg i8 %i.lj to i32           ; 2 uses
  %.not.i.i220 = icmp eq ptr %.sroa.9.0319, %.sroa.13.0320
  br i1 %.not.i.i220, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 %.zext283, ptr %.sroa.9.0319, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.db:                                            ; preds = %bb.cz
  %i.lk = ptrtoint ptr %.sroa.13.0320 to i64
  %i.ll = ptrtoint ptr %.sroa.0.0318 to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 6 uses
  %i.ln = icmp eq i64 %i.lm, 9223372036854775804
  br i1 %i.ln, label %bb.dc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc222 unwind label %.loopexit.split-lp

.noexc222:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.db
  %i.lo = ashr exact i64 %i.lm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lo, i64 1)
  %i.lp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lo ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.lo
  %i.lr = call i64 @llvm.umin.i64(i64 %i.lp, i64 2305843009213693951)
  %i.ls = select i1 %i.lq, i64 2305843009213693951, i64 %i.lr ; 3 uses
  %.not.i.i.i.i221 = icmp ne i64 %i.ls, 0
  call void @llvm.assume(i1 %.not.i.i.i.i221)
  %i.lt = shl nuw nsw i64 %i.ls, 2
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #47
          to label %.noexc223 unwind label %.loopexit285 ; 4 uses

.noexc223:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %i.lm ; 2 uses
  store i32 %.zext283, ptr %i.lv, align 4, !tbaa !188
  %i.lw = icmp sgt i64 %i.lm, 0
  br i1 %i.lw, label %bb.dd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dd:                                            ; preds = %.noexc223
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lu, ptr align 4 %.sroa.0.0318, i64 %i.lm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dd, %.noexc223
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0318, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0318, i64 noundef %i.lm) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.de, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ls
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.da
  %.sroa.0.1 = phi ptr [ %i.lu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0318, %bb.da ] ; 9 uses
  %.pn = phi ptr [ %i.lv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0319, %bb.da ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.lx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0320, %bb.da ] ; 5 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ly = add nuw nsw i32 %.048321, 1             ; 2 uses
  %exitcond334.not = icmp eq i32 %i.ly, 100
  br i1 %exitcond334.not, label %bb.cv, label %bb.cz, !llvm.loop !10815

.loopexit285:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp:                               ; preds = %bb.dc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit284:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #43
  store i64 %i.x, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #43
  %.val = load i64, ptr %6, align 8
  %i.lz = and i64 %.val, 255                      ; 2 uses
  %notmask.i.i.i224 = shl nsw i64 -1, %i.lz       ; 4 uses
  %i.ma = xor i64 %notmask.i.i.i224, -1
  %i.mb = add nsw i64 %notmask.i.i.i224, 281474976710655
  %i.mc = or i64 %i.mb, %notmask.i.i.i224
  %i.md = icmp eq i64 %i.mc, -1
  call void @llvm.assume(i1 %i.md)
  %i.me = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %i.me)
  %i.mf = icmp samesign ugt i64 %notmask.i.i.i224, -281474976710657
  call void @llvm.assume(i1 %i.mf)
  store i64 %i.ma, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %.loopexit284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  %i.mg = load i8, ptr %30, align 8, !tbaa !179, !range !180, !noundef !181
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.dr, label %bb.di

bb.dg:                                            ; preds = %bb.cx, %bb.cw
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.dh:                                            ; preds = %.loopexit284
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  br label %bb.ea

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #43
  %i.mk = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !182 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i225, label %_ZNK7testing15AssertionResult15failure_messageEv.exit226, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit226

_ZNK7testing15AssertionResult15failure_messageEv.exit226: ; preds = %bb.dk, %bb.dj
  %i.mn = phi ptr [ %i.mm, %bb.dk ], [ @.str.31, %bb.dj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1164, ptr noundef %i.mn)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit226
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  %i.mo = load ptr, ptr %32, align 8, !tbaa !170  ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.dm
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !141
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(128) %i.mo) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.dm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #43
  br label %bb.dr

bb.dn:                                            ; preds = %bb.di
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit226
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #43
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn81 = phi { ptr, i32 } [ %i.mu, %bb.dp ], [ %i.mt, %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  %i.mv = load ptr, ptr %32, align 8, !tbaa !170  ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.dq
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !141
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(128) %i.mv) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.dq, %bb.dn
  %.pn81.pn = phi { ptr, i32 } [ %i.ms, %bb.dn ], [ %.pn81, %bb.dq ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #43
  br label %bb.ea

bb.dr:                                            ; preds = %bb.df, %_ZN7testing7MessageD2Ev.exit229
  %i.mz = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !182 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.na, null
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb0ELb1ENS2_32ChangingSizeAndTrackingTypeAllocIlEEEEE8TestBodyEv:bb.a
  %i.fb = xor i64 %notmask.i.i.i.i.i.i.i135, -1   ; 2 uses
  %i.fc = lshr i64 %i.fa, 57
  %i.fd = trunc nuw nsw i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val14.i.i.i136 = load ptr, ptr %i.fe, align 8, !tbaa !161 ; 3 uses
  %i.ff = insertelement <16 x i8> poison, i8 %i.fd, i64 0
  %i.fg = shufflevector <16 x i8> %i.ff, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.pn.i7.i.i137 = phi i64 [ %i.fa, %bb.ar ], [ %i.gc, %bb.au ]
  %.sroa.13.0.i.i.i138 = phi i64 [ 0, %bb.ar ], [ %i.gb, %bb.au ]
  %.sroa.629.0.i.i.i139 = and i64 %.pn.i7.i.i137, %i.fb ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i136, i64 %.sroa.629.0.i.i.i139
  call void @llvm.prefetch.p0(ptr %i.fh, i32 0, i32 3, i32 1)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i134, i64 %.sroa.629.0.i.i.i139
  %i.fj = load <16 x i8>, ptr %i.fi, align 1, !tbaa !161 ; 2 uses
  %i.fk = icmp eq <16 x i8> %i.fg, %i.fj
  %i.fl = bitcast <16 x i1> %i.fk to i16
  %i.fm = zext i16 %i.fl to i32
  %i.fn = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fm) #49, !srcloc !240 ; 2 uses
  %.not51.i.i.i140 = icmp eq i32 %i.fn, 0
  br i1 %.not51.i.i.i140, label %._crit_edge.i.i.i145, label %.lr.ph.i.i.i141

.lr.ph.i.i.i141:                                  ; preds = %bb.as, %bb.at
  %.sroa.020.052.i.i.i142 = phi i32 [ %i.fw, %bb.at ], [ %i.fn, %bb.as ] ; 3 uses
  %i.fo = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.052.i.i.i142, i1 true)
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = add nuw i64 %.sroa.629.0.i.i.i139, %i.fp
  %i.fr = and i64 %i.fq, %i.fb                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i136, i64 %i.fr
  %.val16.i.i.i143 = load i64, ptr %i.fs, align 8, !tbaa !166
  %i.ft = icmp eq i64 %.val16.i.i.i143, 0
  br i1 %i.ft, label %.thread37.i.i.i148, label %bb.at, !prof !241

.thread37.i.i.i148:                               ; preds = %.lr.ph.i.i.i141
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i136, i64 %i.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i134) ]
  br label %.loopexit287

bb.at:                                            ; preds = %.lr.ph.i.i.i141
  %i.fv = add i32 %.sroa.020.052.i.i.i142, -1
  %i.fw = and i32 %i.fv, %.sroa.020.052.i.i.i142  ; 2 uses
  %.not.i.i.i144 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i144, label %._crit_edge.i.i.i145, label %.lr.ph.i.i.i141

._crit_edge.i.i.i145:                             ; preds = %bb.at, %bb.as
  %i.fx = icmp eq <16 x i8> %i.fj, splat (i8 -128)
  %i.fy = bitcast <16 x i1> %i.fx to i16
  %i.fz = zext i16 %i.fy to i32
  %i.ga = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fz) #49, !srcloc !240
  %.not48.i.i.i146 = icmp eq i32 %i.ga, 0
  br i1 %.not48.i.i.i146, label %bb.au, label %.loopexit287, !prof !233

bb.au:                                            ; preds = %._crit_edge.i.i.i145
  %i.gb = add i64 %.sroa.13.0.i.i.i138, 16        ; 2 uses
  %i.gc = add i64 %i.gb, %.sroa.629.0.i.i.i139
  br label %bb.as, !llvm.loop !64

.loopexit287:                                     ; preds = %._crit_edge.i.i.i145, %.thread37.i.i.i148, %bb.aq
  %.pn.i.i147 = phi ptr [ %i.fu, %.thread37.i.i.i148 ], [ %spec.select.i150, %bb.aq ], [ undef, %._crit_edge.i.i.i145 ]
  %i.gd = ptrtoint ptr %.pn.i.i147 to i64
  store i64 %i.gd, ptr %i.e, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.loopexit287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  %i.ge = load i8, ptr %17, align 8, !tbaa !179, !range !180, !noundef !181
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.bh, label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit127, %bb.ad
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit127 ], [ %i.ds, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.ax:                                            ; preds = %.loopexit287
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %bb.bj

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !182 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i152, label %_ZNK7testing15AssertionResult15failure_messageEv.exit153, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit153

_ZNK7testing15AssertionResult15failure_messageEv.exit153: ; preds = %bb.ba, %bb.az
  %i.gk = phi ptr [ %i.gj, %bb.ba ], [ @.str.31, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1151, ptr noundef %i.gk)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit153
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.gl = load ptr, ptr %19, align 8, !tbaa !170  ; 3 uses
  %.not.i.i154 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i154, label %_ZN7testing7MessageD2Ev.exit156, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bc
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !141
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit156

_ZN7testing7MessageD2Ev.exit156:                  ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit159

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit153
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #43
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn63 = phi { ptr, i32 } [ %i.gr, %bb.bf ], [ %i.gq, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.gs = load ptr, ptr %19, align 8, !tbaa !170  ; 3 uses
  %.not.i.i157 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i157, label %_ZN7testing7MessageD2Ev.exit159, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158: ; preds = %bb.bg
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !141
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(128) %i.gs) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit159

_ZN7testing7MessageD2Ev.exit159:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158, %bb.bg, %bb.bd
  %.pn63.pn = phi { ptr, i32 } [ %i.gp, %bb.bd ], [ %.pn63, %bb.bg ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #43
  br label %bb.bj

bb.bh:                                            ; preds = %bb.av, %_ZN7testing7MessageD2Ev.exit156
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !182 ; 4 uses
  %.not.i.i160 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i160, label %_ZN7testing15AssertionResultD2Ev.exit164, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !160 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i161: ; preds = %bb.bi
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !161
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i161
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit164

_ZN7testing15AssertionResultD2Ev.exit164:         ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.bk

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit159, %bb.ax
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit159 ], [ %i.gg, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit164, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170
  %.049316 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit164 ], [ %i.hi, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %.lhs.trunc = trunc nuw nsw i32 %.049316 to i8
  %i.he = urem i8 %.lhs.trunc, 10
  %.zext = zext nneg i8 %i.he to i32
  store i32 %.zext, ptr %i.f, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10906)
  call void @llvm.experimental.noalias.scope.decl(metadata !10907)
  call void @llvm.experimental.noalias.scope.decl(metadata !10908)
  call void @llvm.experimental.noalias.scope.decl(metadata !10909)
  call void @llvm.experimental.noalias.scope.decl(metadata !10910)
  call void @llvm.experimental.noalias.scope.decl(metadata !10911)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE22find_or_prepare_insertIiEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc168 unwind label %bb.bm

.noexc168:                                        ; preds = %bb.bk
  %i.hf = load i8, ptr %i.hd, align 8, !tbaa !642, !range !180, !alias.scope !10912, !noundef !181
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bl, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170

bb.bl:                                            ; preds = %.noexc168
  %.sroa.2.0.copyload.i.i.i.i.i.i166 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i165, align 8, !alias.scope !10912
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !10912
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(21) %i.v)
          to label %.noexc169 unwind label %bb.bm

.noexc169:                                        ; preds = %bb.bl
  %.val.i.i.i.i.i.i.i.i.i.i167 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !10912
  %i.hh = sext i32 %.val.i.i.i.i.i.i.i.i.i.i167 to i64
  store i64 %i.hh, ptr %.sroa.2.0.copyload.i.i.i.i.i.i166, align 8, !tbaa !166, !noalias !10912
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !10912
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170: ; preds = %.noexc169, %.noexc168
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  %i.hi = add nuw nsw i32 %.049316, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.hi, 100
  br i1 %exitcond.not, label %bb.bn, label %bb.bk, !llvm.loop !10879

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE6insertIiLi0EEESt4pairINSD_8iteratorEbEOT_.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  store i64 %i.x, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %.val98 = load i64, ptr %6, align 8
  %i.hk = and i64 %.val98, 255                    ; 2 uses
  %notmask.i.i.i171 = shl nsw i64 -1, %i.hk       ; 4 uses
  %i.hl = xor i64 %notmask.i.i.i171, -1
  %i.hm = add nsw i64 %notmask.i.i.i171, 281474976710655
  %i.hn = or i64 %i.hm, %notmask.i.i.i171
  %i.ho = icmp eq i64 %i.hn, -1
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i64 %notmask.i.i.i171, -281474976710657
  call void @llvm.assume(i1 %i.hq)
  store i64 %i.hl, ptr %i.g, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  %i.hr = load i8, ptr %22, align 8, !tbaa !179, !range !180, !noundef !181
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.bz, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  %i.hu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !182 ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i172, label %_ZNK7testing15AssertionResult15failure_messageEv.exit173, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit173

_ZNK7testing15AssertionResult15failure_messageEv.exit173: ; preds = %bb.bs, %bb.br
  %i.hx = phi ptr [ %i.hw, %bb.bs ], [ @.str.31, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1156, ptr noundef %i.hx)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit173
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  %i.hy = load ptr, ptr %24, align 8, !tbaa !170  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.bu
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !141
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(128) %i.hy) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit179

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit173
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn69 = phi { ptr, i32 } [ %i.ie, %bb.bx ], [ %i.id, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  %i.if = load ptr, ptr %24, align 8, !tbaa !170  ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.if, null
  br i1 %.not.i.i177, label %_ZN7testing7MessageD2Ev.exit179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178: ; preds = %bb.by
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !141
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit179

_ZN7testing7MessageD2Ev.exit179:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178, %bb.by, %bb.bv
  %.pn69.pn = phi { ptr, i32 } [ %i.ic, %bb.bv ], [ %.pn69, %bb.by ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #43
  br label %bb.ci

bb.bz:                                            ; preds = %bb.bo, %_ZN7testing7MessageD2Ev.exit176
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !182 ; 4 uses
  %.not.i.i180 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i180, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !160 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181: ; preds = %bb.ca
  %i.io = load i64, ptr %i.im, align 8, !tbaa !161
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 32) #44
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  store i64 %i.dd, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #43
  %.val.i.i185 = load i64, ptr %6, align 8        ; 4 uses
  %i.iq = and i64 %.val.i.i185, 254
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i.i201 = icmp ult i64 %.val.i.i185, 131072
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 8
  %spec.select.i202 = select i1 %.not.i.i.i.i201, ptr undef, ptr %i.is
  br label %.loopexit286

bb.cd:                                            ; preds = %bb.cb
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133SooTest_InsertWithinCapacity_TestINS2_10ValueTableIlLb0ELb1ENS2_32ChangingSizeAndTrackingTypeAllocIlEEEEE8TestBodyEv:bb.a
  br i1 %.not.i.i.i196, label %._crit_edge.i.i.i197, label %.lr.ph.i.i.i193

._crit_edge.i.i.i197:                             ; preds = %bb.cf, %bb.ce
  %i.jy = icmp eq <16 x i8> %i.jk, splat (i8 -128)
  %i.jz = bitcast <16 x i1> %i.jy to i16
  %i.ka = zext i16 %i.jz to i32
  %i.kb = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ka) #49, !srcloc !240
  %.not48.i.i.i198 = icmp eq i32 %i.kb, 0
  br i1 %.not48.i.i.i198, label %bb.cg, label %.loopexit286, !prof !233

bb.cg:                                            ; preds = %._crit_edge.i.i.i197
  %i.kc = add i64 %.sroa.13.0.i.i.i190, 16        ; 2 uses
  %i.kd = add i64 %i.kc, %.sroa.629.0.i.i.i191
  br label %bb.ce, !llvm.loop !64

.loopexit286:                                     ; preds = %._crit_edge.i.i.i197, %.thread37.i.i.i200, %bb.cc
  %.pn.i.i199 = phi ptr [ %i.jv, %.thread37.i.i.i200 ], [ %spec.select.i202, %bb.cc ], [ undef, %._crit_edge.i.i.i197 ]
  %i.ke = ptrtoint ptr %.pn.i.i199 to i64
  store i64 %i.ke, ptr %i.h, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.768, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %.loopexit286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  %i.kf = load i8, ptr %26, align 8, !tbaa !179, !range !180, !noundef !181
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.ct, label %bb.ck

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit179, %bb.bp
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit179 ], [ %i.ht, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.cj:                                            ; preds = %.loopexit286
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  %i.ki = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !182 ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i204, label %_ZNK7testing15AssertionResult15failure_messageEv.exit205, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit205

_ZNK7testing15AssertionResult15failure_messageEv.exit205: ; preds = %bb.cm, %bb.cl
  %i.kl = phi ptr [ %i.kk, %bb.cm ], [ @.str.31, %bb.cl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1157, ptr noundef %i.kl)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %i.km = load ptr, ptr %28, align 8, !tbaa !170  ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.km, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.co
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !141
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(128) %i.km) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %bb.co, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit211

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn75 = phi { ptr, i32 } [ %i.ks, %bb.cr ], [ %i.kr, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %i.kt = load ptr, ptr %28, align 8, !tbaa !170  ; 3 uses
  %.not.i.i209 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i209, label %_ZN7testing7MessageD2Ev.exit211, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.cs
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !141
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(128) %i.kt) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit211

_ZN7testing7MessageD2Ev.exit211:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, %bb.cs, %bb.cp
  %.pn75.pn = phi { ptr, i32 } [ %i.kq, %bb.cp ], [ %.pn75, %bb.cs ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #43
  br label %bb.cy

bb.ct:                                            ; preds = %bb.ch, %_ZN7testing7MessageD2Ev.exit208
  %i.kx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !182 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i212, label %_ZN7testing15AssertionResultD2Ev.exit216, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !160 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %bb.cu
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !161
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit216

_ZN7testing15AssertionResultD2Ev.exit216:         ; preds = %bb.ct, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %bb.cz

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.not4.i.i = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %.not4.i.i, label %.loopexit284, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cv
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0.1, %.lr.ph.i.i ], [ %i.li, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10913)
  call void @llvm.experimental.noalias.scope.decl(metadata !10914)
  call void @llvm.experimental.noalias.scope.decl(metadata !10915)
  call void @llvm.experimental.noalias.scope.decl(metadata !10916)
  call void @llvm.experimental.noalias.scope.decl(metadata !10917)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE22find_or_prepare_insertIiEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.01.05.i.i)
          to label %.noexc218 unwind label %bb.dg

.noexc218:                                        ; preds = %bb.cw
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !642, !range !180, !alias.scope !10918, !noundef !181
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.cx, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i

bb.cx:                                            ; preds = %.noexc218
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10918
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43, !noalias !10918
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ChangingSizeAndTrackingTypeAllocIlEC2IcEERKNS3_IT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(21) %i.v)
          to label %.noexc219 unwind label %bb.dg

.noexc219:                                        ; preds = %bb.cx
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !188, !noalias !10918
  %i.lh = sext i32 %.val.i.i.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.lh, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !10918
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43, !noalias !10918
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i: ; preds = %.noexc219, %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  %.not.i.i217 = icmp eq ptr %.sroa.01.05.i.i, %.pn
  br i1 %.not.i.i217, label %.loopexit284, label %bb.cw, !llvm.loop !10890

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit211, %bb.cj
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit211 ], [ %i.kh, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit272

bb.cz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit216, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.048321 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %i.ly, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.13.0320 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.9.0319 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0.0318 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.lhs.trunc282 = trunc nuw nsw i32 %.048321 to i8
  %i.lj = urem i8 %.lhs.trunc282, 10
  %.zext283 = zext nneg i8 %i.lj to i32           ; 2 uses
  %.not.i.i220 = icmp eq ptr %.sroa.9.0319, %.sroa.13.0320
  br i1 %.not.i.i220, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 %.zext283, ptr %.sroa.9.0319, align 4, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.db:                                            ; preds = %bb.cz
  %i.lk = ptrtoint ptr %.sroa.13.0320 to i64
  %i.ll = ptrtoint ptr %.sroa.0.0318 to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 6 uses
  %i.ln = icmp eq i64 %i.lm, 9223372036854775804
  br i1 %i.ln, label %bb.dc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #45
          to label %.noexc222 unwind label %.loopexit.split-lp

.noexc222:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.db
  %i.lo = ashr exact i64 %i.lm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lo, i64 1)
  %i.lp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lo ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.lo
  %i.lr = call i64 @llvm.umin.i64(i64 %i.lp, i64 2305843009213693951)
  %i.ls = select i1 %i.lq, i64 2305843009213693951, i64 %i.lr ; 3 uses
  %.not.i.i.i.i221 = icmp ne i64 %i.ls, 0
  call void @llvm.assume(i1 %.not.i.i.i.i221)
  %i.lt = shl nuw nsw i64 %i.ls, 2
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #47
          to label %.noexc223 unwind label %.loopexit285 ; 4 uses

.noexc223:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %i.lm ; 2 uses
  store i32 %.zext283, ptr %i.lv, align 4, !tbaa !188
  %i.lw = icmp sgt i64 %i.lm, 0
  br i1 %i.lw, label %bb.dd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dd:                                            ; preds = %.noexc223
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lu, ptr align 4 %.sroa.0.0318, i64 %i.lm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dd, %.noexc223
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0318, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0318, i64 noundef %i.lm) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.de, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ls
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.da
  %.sroa.0.1 = phi ptr [ %i.lu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0318, %bb.da ] ; 9 uses
  %.pn = phi ptr [ %i.lv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0319, %bb.da ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.lx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0320, %bb.da ] ; 5 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ly = add nuw nsw i32 %.048321, 1             ; 2 uses
  %exitcond334.not = icmp eq i32 %i.ly, 100
  br i1 %exitcond334.not, label %bb.cv, label %bb.cz, !llvm.loop !10891

.loopexit285:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp:                               ; preds = %bb.dc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit284:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb1EEEJNS0_13hash_internal4HashIlEESt8equal_toIlENS3_32ChangingSizeAndTrackingTypeAllocIlEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSH_.exit.i.i, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #43
  store i64 %i.x, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #43
  %.val = load i64, ptr %6, align 8
  %i.lz = and i64 %.val, 255                      ; 2 uses
  %notmask.i.i.i224 = shl nsw i64 -1, %i.lz       ; 4 uses
  %i.ma = xor i64 %notmask.i.i.i224, -1
  %i.mb = add nsw i64 %notmask.i.i.i224, 281474976710655
  %i.mc = or i64 %i.mb, %notmask.i.i.i224
  %i.md = icmp eq i64 %i.mc, -1
  call void @llvm.assume(i1 %i.md)
  %i.me = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %i.me)
  %i.mf = icmp samesign ugt i64 %notmask.i.i.i224, -281474976710657
  call void @llvm.assume(i1 %i.mf)
  store i64 %i.ma, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherImEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.489, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %.loopexit284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  %i.mg = load i8, ptr %30, align 8, !tbaa !179, !range !180, !noundef !181
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.dr, label %bb.di

bb.dg:                                            ; preds = %bb.cx, %bb.cw
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.dh:                                            ; preds = %.loopexit284
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  br label %bb.ea

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #43
  %i.mk = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !182 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i225, label %_ZNK7testing15AssertionResult15failure_messageEv.exit226, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit226

_ZNK7testing15AssertionResult15failure_messageEv.exit226: ; preds = %bb.dk, %bb.dj
  %i.mn = phi ptr [ %i.mm, %bb.dk ], [ @.str.31, %bb.dj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1164, ptr noundef %i.mn)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit226
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  %i.mo = load ptr, ptr %32, align 8, !tbaa !170  ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.dm
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !141
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(128) %i.mo) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.dm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #43
  br label %bb.dr

bb.dn:                                            ; preds = %bb.di
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit226
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #43
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn81 = phi { ptr, i32 } [ %i.mu, %bb.dp ], [ %i.mt, %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  %i.mv = load ptr, ptr %32, align 8, !tbaa !170  ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.dq
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !141
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(128) %i.mv) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.dq, %bb.dn
  %.pn81.pn = phi { ptr, i32 } [ %i.ms, %bb.dn ], [ %.pn81, %bb.dq ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #43
  br label %bb.ea

bb.dr:                                            ; preds = %bb.df, %_ZN7testing7MessageD2Ev.exit229
  %i.mz = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !182 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.na, null
end_hunk_10
