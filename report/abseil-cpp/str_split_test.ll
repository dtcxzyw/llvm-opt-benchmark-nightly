Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/str_split_test?download=true
inline.NumInlined: 29934
inline.NumDeleted: 9696
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN12_GLOBAL__N_141SplitIterator_EqualityAsEndCondition_Test8TestBodyEv:bb.a
  store i64 %i.an, ptr %3, align 8, !tbaa !246
  %.pr = load i32, ptr %i.s, align 8, !tbaa !247
  %i.ao = icmp eq i32 %.pr, 1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  store i32 2, ptr %i.s, align 8, !tbaa !247
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit23

bb.j:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %i.ap = phi i64 [ %.pre, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread ], [ %i.an, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !248 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.ar, align 8, !tbaa !199 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2.0.copyload.i.i19 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i18, align 8, !tbaa !201 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = call { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i64 %.sroa.0.0.copyload.i.i17, ptr %.sroa.2.0.copyload.i.i19, i64 noundef %i.ap) ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i19, i64 %.sroa.0.0.copyload.i.i17
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.s, align 8, !tbaa !247
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = load i64, ptr %3, align 8, !tbaa !246   ; 5 uses
  %i.az = icmp ugt i64 %i.ay, %.sroa.0.0.copyload.i.i17
  br i1 %i.az, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i20

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i64 noundef %i.ay, i64 noundef %.sroa.0.0.copyload.i.i17) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i20: ; preds = %bb.l
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i19, i64 %i.ay ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = sub nuw i64 %.sroa.0.0.copyload.i.i17, %i.ay
  %.sroa.speculated.i.i21 = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bd) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.speculated.i.i21, ptr %i.bf, align 8, !tbaa !199
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i22, align 8, !tbaa !201
  %i.bg = add i64 %i.ay, %i.au
  %i.bh = add i64 %i.bg, %.sroa.speculated.i.i21
  store i64 %i.bh, ptr %3, align 8, !tbaa !246
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit23, !llvm.loop !3

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit23: ; preds = %bb.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i20
  %.sroa.2.0.copyload.i.i26 = phi ptr [ %i.ah, %bb.i ], [ %i.bb, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i20 ]
  %.sroa.0.0.copyload.i.i24 = phi i64 [ %.sroa.speculated.i.i, %bb.i ], [ %.sroa.speculated.i.i21, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i20 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = icmp eq i64 %.sroa.0.0.copyload.i.i24, 1
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit23
  %rhsc = load i8, ptr %.sroa.2.0.copyload.i.i26, align 1
  %i.bk = icmp eq i8 %rhsc, 99
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i, label %bb.n

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIA2_cSt17basic_string_viewIcSt11char_traitsIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit23
  call void @_ZN7testing8internal18CmpHelperEQFailureIA2_cSt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultEPKcS9_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.190, ptr noundef nonnull align 1 dereferenceable(2) @.str.70, ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
  br label %_ZN7testing8internal8EqHelper7CompareIA2_cSt17basic_string_viewIcSt11char_traitsIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit

_ZN7testing8internal8EqHelper7CompareIA2_cSt17basic_string_viewIcSt11char_traitsIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i, %bb.n
  %i.bl = load i8, ptr %4, align 8, !tbaa !217, !range !218, !noundef !219
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA2_cSt17basic_string_viewIcSt11char_traitsIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !220 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !205
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bq = phi ptr [ %i.bp, %bb.q ], [ @.str.76, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 357, ptr noundef %i.bq)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.br = load ptr, ptr %5, align 8, !tbaa !222   ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.br, null
  br i1 %.not.i.i27, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !187
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit30

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %i.bw, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.by = load ptr, ptr %5, align 8, !tbaa !222   ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.by, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.w
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !187
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29, %bb.w, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %.pn, %bb.w ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ba

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA2_cSt17basic_string_viewIcSt11char_traitsIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !220 ; 4 uses
  %.not.i.i31 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !205 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !207
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cj = load i32, ptr %i.b, align 8, !tbaa !247
  %i.ck = load i32, ptr %i.s, align 8, !tbaa !247
  %i.cl = icmp ne i32 %i.cj, %i.ck
  %i.cm = load i64, ptr %2, align 8
  %i.cn = load i64, ptr %3, align 8
  %i.co = icmp ne i64 %i.cm, %i.cn
  %.not3.i63 = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %.not3.i63, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41
  %i.cr = phi ptr [ null, %.lr.ph ], [ %13, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41 ] ; 4 uses
  %12 = phi ptr [ null, %.lr.ph ], [ %i.dl, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41 ] ; 2 uses
  %.not.i = icmp eq ptr %12, %i.cr
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !249
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !318
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !318
  %.pre67 = load ptr, ptr %i.cq, align 8, !tbaa !231
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %7, align 8, !tbaa !230   ; 5 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775792
  br i1 %i.cy, label %bb.ac, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.cz = ashr exact i64 %i.cx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 576460752303423487)
  %i.dd = select i1 %i.db, i64 576460752303423487, i64 %i.dc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = shl nuw nsw i64 %i.dd, 4
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #29
          to label %.noexc32 unwind label %.loopexit ; 5 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !249
  %.not10.i.i.i.i.i = icmp eq ptr %i.cu, %i.cr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc32, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.df, %.noexc32 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %i.cu, %.noexc32 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !249, !alias.scope !2428
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, %i.cr
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc32
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.df, %.noexc32 ], [ %i.di, %.lr.ph.i.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cx) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.df, ptr %7, align 8, !tbaa !230
  store ptr %i.dj, ptr %i.cp, align 8, !tbaa !318
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dd ; 2 uses
  store ptr %i.dk, ptr %i.cq, align 8, !tbaa !231
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aa
  %13 = phi ptr [ %i.dk, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.pre67, %bb.aa ]
  %i.dl = phi ptr [ %i.dj, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ct, %bb.aa ]
  %i.dm = load i32, ptr %i.b, align 8, !tbaa !247
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  store i32 2, ptr %i.b, align 8, !tbaa !247
  %.pre68 = load i64, ptr %2, align 8
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41

bb.af:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !248 ; 2 uses
  %.sroa.0.0.copyload.i.i33 = load i64, ptr %i.do, align 8, !tbaa !199 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.2.0.copyload.i.i35 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i34, align 8, !tbaa !201 ; 3 uses
  %i.dp = load i64, ptr %2, align 8, !tbaa !246
  %i.dq = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %.sroa.0.0.copyload.i.i33, ptr %.sroa.2.0.copyload.i.i35, i64 noundef %i.dp)
          to label %.noexc39 unwind label %.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.af
  %i.dr = extractvalue { i64, ptr } %i.dq, 0
  %i.ds = extractvalue { i64, ptr } %i.dq, 1      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i35, i64 %.sroa.0.0.copyload.i.i33
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc39
  store i32 1, ptr %i.b, align 8, !tbaa !247
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc39
  %i.dv = load i64, ptr %2, align 8, !tbaa !246   ; 5 uses
  %i.dw = icmp ugt i64 %i.dv, %.sroa.0.0.copyload.i.i33
  br i1 %i.dw, label %bb.ai, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i36

bb.ai:                                            ; preds = %bb.ah
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i64 noundef %i.dv, i64 noundef %.sroa.0.0.copyload.i.i33) #31
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.ai
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i36: ; preds = %bb.ah
  %i.dx = ptrtoint ptr %i.ds to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i35, i64 %i.dv ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dx, %i.dz
  %i.eb = sub nuw i64 %.sroa.0.0.copyload.i.i33, %i.dv
  %.sroa.speculated.i.i37 = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ea) ; 2 uses
  store i64 %.sroa.speculated.i.i37, ptr %i.c, align 8, !tbaa !199
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !201
  %i.ec = add i64 %i.dv, %i.dr
  %i.ed = add i64 %i.ec, %.sroa.speculated.i.i37  ; 2 uses
  store i64 %i.ed, ptr %2, align 8, !tbaa !246
  %.pre67.a = load i32, ptr %i.b, align 8, !tbaa !247
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41, !llvm.loop !3

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41: ; preds = %bb.ae, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i36
  %i.ee = phi i64 [ %.pre68, %bb.ae ], [ %i.ed, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i36 ]
  %i.ef = phi i32 [ 2, %bb.ae ], [ %.pre67.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i36 ]
  %i.eg = load i32, ptr %i.s, align 8, !tbaa !247
  %i.eh = icmp ne i32 %i.ef, %i.eg
  %i.ei = load i64, ptr %3, align 8
  %i.ej = icmp ne i64 %i.ee, %i.ei
  %.not3.i = select i1 %i.eh, i1 true, i1 %i.ej
  br i1 %.not3.i, label %bb.z, label %._crit_edge

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %bb.ac, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit41, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr @.str.69, ptr %9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.68, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJPKcS5_EEEEEclISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISE_EEEENS_15AssertionResultES5_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ek = load i8, ptr %8, align 8, !tbaa !217, !range !218, !noundef !219
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.au, label %bb.al

bb.ak:                                            ; preds = %._crit_edge
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ax

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !220 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i43, label %_ZNK7testing15AssertionResult15failure_messageEv.exit44, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !205
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit44

_ZNK7testing15AssertionResult15failure_messageEv.exit44: ; preds = %bb.an, %bb.am
  %i.eq = phi ptr [ %i.ep, %bb.an ], [ @.str.76, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 367, ptr noundef %i.eq)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit44
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.er = load ptr, ptr %10, align 8, !tbaa !222  ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.er, null
  br i1 %.not.i.i45, label %_ZN7testing7MessageD2Ev.exit47, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46: ; preds = %bb.ap
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !187
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit47

_ZN7testing7MessageD2Ev.exit47:                   ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit50

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit44
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn10 = phi { ptr, i32 } [ %i.ex, %bb.as ], [ %i.ew, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ey = load ptr, ptr %10, align 8, !tbaa !222  ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i48, label %_ZN7testing7MessageD2Ev.exit50, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49: ; preds = %bb.at
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49, %bb.at, %bb.aq
  %.pn10.pn = phi { ptr, i32 } [ %i.ev, %bb.aq ], [ %.pn10, %bb.at ], [ %.pn10, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.ax

bb.au:                                            ; preds = %bb.aj, %_ZN7testing7MessageD2Ev.exit47
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !220 ; 4 uses
  %.not.i.i51 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i51, label %_ZN7testing15AssertionResultD2Ev.exit55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !205 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52: ; preds = %bb.av
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !207
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit55

_ZN7testing15AssertionResultD2Ev.exit55:          ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJPKcS4_EENS0_22CastAndAppendTransformIRKSt17basic_string_viewIcSt11char_traitsIcEEEESt20back_insert_iteratorISt6vectorINS_7MatcherISC_EESaISH_EEEE16IterateOverTupleIS5_Lm1EEclESD_RKS5_SK_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !347
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit.thread: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !353
  store ptr %i.h, ptr %i.f, align 8, !tbaa !353
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !207
  store i64 %i.k, ptr %i.i, align 8, !tbaa !207
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %i.c, align 8, !tbaa !187
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !346
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.b, align 8, !tbaa !346
  br label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit unwind label %bb.f

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !353 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %3, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i.i.i4 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i4, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !355
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !353
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !355
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !207
  invoke void %i.w(ptr noundef %i.x)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #27, !inline_history !356
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit.thread, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEEaSEOS9_.exit, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %2

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128Splitter_RangeIterators_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128Splitter_RangeIterators_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_128Splitter_RangeIterators_TestE, i64 16), ptr %i.a, align 8, !tbaa !187
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128Splitter_RangeIterators_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_128Splitter_RangeIterators_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::strings_internal::Splitter.58", align 8 ; 8 uses
  %2 = alloca %"class.std::vector.60", align 8    ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 15 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i64 5, ptr %1, align 8, !tbaa !199, !alias.scope !2473
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.66, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !201, !alias.scope !2473
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 44, ptr %i.a, align 8, !tbaa !207, !alias.scope !2473
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %3, align 8, !tbaa !246, !alias.scope !2474
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !247, !alias.scope !2474
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !2474
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !248, !alias.scope !2474
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i8 44, ptr %i.e, align 8, !tbaa !207, !alias.scope !2474
  %i.f = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 5, ptr nonnull @.str.66, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %i.i = icmp eq ptr %i.h, getelementptr inbounds nuw (i8, ptr @.str.66, i64 5)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  store i32 1, ptr %i.b, align 8, !tbaa !247, !alias.scope !2474
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %i.j = load i64, ptr %3, align 8, !tbaa !246, !alias.scope !2474 ; 5 uses
  %i.k = icmp ugt i64 %i.j, 5
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i64 noundef %i.j, i64 noundef 5) #31
          to label %.noexc16 unwind label %bb.f

.noexc16:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr @.str.66, i64 %i.j ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.l, %i.n
  %i.p = sub nuw nsw i64 5, %i.j
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.c, align 8, !tbaa !199, !alias.scope !2474
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !201, !alias.scope !2474
  %i.q = add i64 %i.j, %i.g
  %i.r = add i64 %i.q, %.sroa.speculated.i.i.i.i  ; 2 uses
  store i64 %i.r, ptr %3, align 8, !tbaa !246, !alias.scope !2474
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %1, align 8, !tbaa !199, !noalias !2475 ; 2 uses
  %i.s = load i32, ptr %i.b, align 8, !tbaa !247
  %i.t = icmp ne i32 %i.s, 2
  %i.u = icmp ne i64 %i.r, %.sroa.0.0.copyload.i.i.i17
  %.not3.i43 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %.not3.i43, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit36:                                      ; preds = %bb.m
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp37:                             ; preds = %bb.p
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %i.y = phi ptr [ null, %.lr.ph ], [ %10, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 4 uses
  %9 = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !249
  %.not.i = icmp eq ptr %9, %i.y
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !318
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !318
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !231
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %2, align 8, !tbaa !230   ; 5 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.j, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #31
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #29
          to label %.noexc19 unwind label %.loopexit ; 5 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !249
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc19, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc19 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.noexc19 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !249, !alias.scope !2476
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %.noexc19 ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.am, ptr %2, align 8, !tbaa !230
  store ptr %i.aq, ptr %i.v, align 8, !tbaa !318
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !231
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h
  %10 = phi ptr [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.pre, %bb.h ]
  %i.as = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.at = load i32, ptr %i.b, align 8, !tbaa !247
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  store i32 2, ptr %i.b, align 8, !tbaa !247
  %.pre46 = load i64, ptr %3, align 8
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.m:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !248 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.av, align 8, !tbaa !199 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !201 ; 3 uses
  %i.aw = load i64, ptr %3, align 8, !tbaa !246
  %i.ax = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.aw)
          to label %.noexc21 unwind label %.loopexit36 ; 2 uses

.noexc21:                                         ; preds = %bb.m
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc21
  store i32 1, ptr %i.b, align 8, !tbaa !247
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc21
  %i.bc = load i64, ptr %3, align 8, !tbaa !246   ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, %.sroa.0.0.copyload.i.i
  br i1 %i.bd, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i64 noundef %i.bc, i64 noundef %.sroa.0.0.copyload.i.i) #31
          to label %.noexc22 unwind label %.loopexit.split-lp37

.noexc22:                                         ; preds = %bb.p
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.o
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.bc ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.be, %i.bg
  %i.bi = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.bc
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bh) ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %i.c, align 8, !tbaa !199
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !201
  %i.bj = add i64 %i.bc, %i.ay
  %i.bk = add i64 %i.bj, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.bk, ptr %3, align 8, !tbaa !246
  %.pre.a = load i32, ptr %i.b, align 8, !tbaa !247
  %i.bl = icmp ne i32 %.pre.a, 2
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !3

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.bm = phi i64 [ %.pre46, %bb.l ], [ %i.bk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %i.bn = phi i1 [ false, %bb.l ], [ %i.bl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %i.bo = icmp ne i64 %i.bm, %.sroa.0.0.copyload.i.i.i17
  %.not3.i = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %.not3.i, label %bb.g, label %._crit_edge

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.r

bb.r:                                             ; preds = %.loopexit36, %.loopexit.split-lp37, %bb.q, %bb.f
  %.pn12.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %lpad.phi, %bb.q ], [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ah

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr @.str.70, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.69, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.68, ptr %.sroa.535.0..sroa_idx, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJPKcS5_S5_EEEEEclISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISE_EEEENS_15AssertionResultES5_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull @.str.191, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bp = load i8, ptr %5, align 8, !tbaa !217, !range !218, !noundef !219
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.ad, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !220 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !205
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.bv = phi ptr [ %i.bu, %bb.w ], [ @.str.76, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 380, ptr noundef %i.bv)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bw = load ptr, ptr %7, align 8, !tbaa !222   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !187
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit26

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %i.cb, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cd = load ptr, ptr %7, align 8, !tbaa !222   ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i24, label %_ZN7testing7MessageD2Ev.exit26, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25: ; preds = %bb.ac
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit26

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25, %bb.ac, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.z ], [ %.pn, %bb.ac ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  br label %bb.ag

bb.ad:                                            ; preds = %bb.s, %_ZN7testing7MessageD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !220 ; 4 uses
  %.not.i.i27 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i27, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !205 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_1
