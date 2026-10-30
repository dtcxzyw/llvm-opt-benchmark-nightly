Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 181
loop-unroll.NumUnrolled: 278
begin_hunk_0_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_13InlinedVectorIiLm4ESaIiEEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !198
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !198
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cf, i64 %i.ch, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !5568 ; 2 uses
  store i64 %i.cn, ptr %i.l, align 8, !tbaa !199, !alias.scope !5568
  %i.co = load ptr, ptr %58, align 8, !tbaa !195, !alias.scope !5568
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36, !noalias !5568
  br label %_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit.sink.split

_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit.sink.split: ; preds = %.noexc178, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !685, !alias.scope !5568
  br label %_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit

_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit: ; preds = %_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit.sink.split, %bb.k
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !686 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cr, align 8, !tbaa !688
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !689
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !169
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #36, !inline_history !123
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !169
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #36, !inline_history !123
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.q:                                             ; preds = %bb.o
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !198
  %.not.i.i.i.i180 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i180, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.cu, %bb.r ], [ %i.de, %bb.s ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.df, label %bb.t, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !212

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #36
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p, %_ZNK4absl12lts_2026052613hash_internal16SpyHashStateImplIvE5errorB5cxx11Ev.exit
  %i.dg = load ptr, ptr %59, align 8, !tbaa !206  ; 3 uses
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !207 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.dg, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %i.di = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !195 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !198
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dn, %i.dh
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %59, align 8, !tbaa !206
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.do = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dg, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.dp = load ptr, ptr %i.o, align 8, !tbaa !208
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #39
  br label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #36
  %i.dt = load i8, ptr %i.j, align 8, !tbaa !685, !range !189, !noundef !190
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #36
  invoke void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %60)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %.noexc182 unwind label %bb.ah

.noexc182:                                        ; preds = %bb.w
  %i.dv = load ptr, ptr %55, align 8, !tbaa !223
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %58, align 8, !tbaa !195
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !199
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.dx, i64 noundef %i.dy)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i unwind label %bb.y ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i: ; preds = %.noexc182
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i
  %i.ea = load ptr, ptr %55, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i181, label %bb.z, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.x
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !169
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #36, !inline_history !9
  br label %bb.z

bb.y:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i, %.noexc182
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %55, align 8, !tbaa !223  ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.y
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !169
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #36, !inline_history !9
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %.body

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %60)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !221 ; 4 uses
  %.not.i.i183 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i183, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !195 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !198
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  %i.eq = load i8, ptr %i.j, align 8, !tbaa !685, !range !189, !noundef !190
  %i.er = trunc nuw i8 %i.eq to i1
  store i8 0, ptr %i.j, align 8, !tbaa !685
  br i1 %i.er, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.es = load ptr, ptr %58, align 8, !tbaa !195  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.k
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.eu = load i64, ptr %i.k, align 8, !tbaa !198
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.ad:                                            ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_13InlinedVectorIiLm4ESaIiEEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %59) #36
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.ae ], [ %i.ew, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit186

bb.ag:                                            ; preds = %bb.v
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.w, %bb.z
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.ah ], [ %i.ee, %_ZN7testing7MessageD2Ev.exit5.i ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #36
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ag
  %.pn124 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ey, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  %i.fa = load i8, ptr %i.j, align 8, !tbaa !685, !range !189, !noundef !190
  %i.fb = trunc nuw i8 %i.fa to i1
  store i8 0, ptr %i.j, align 8, !tbaa !685
  br i1 %i.fb, label %bb.aj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit186

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load ptr, ptr %58, align 8, !tbaa !195  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.k
  br i1 %i.fd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i184: ; preds = %bb.aj
  %i.fe = load i64, ptr %i.k, align 8, !tbaa !198
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #39
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit186

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0837.0879, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.fg, %i.e
  br i1 %.not, label %.critedge172, label %bb.b

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit186: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i184, %bb.ai, %bb.af
  %.pn124.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %.pn124, %bb.ai ], [ %.pn124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i184 ], [ %.pn124, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  br label %.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  br label %.loopexit

.critedge172:                                     ; preds = %bb.ak
  %.pre911 = load ptr, ptr %i.f, align 8, !tbaa !670 ; 3 uses
  %.pre912 = load ptr, ptr %57, align 8, !tbaa !690 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.fi = ptrtoint ptr %.pre911 to i64
  %i.fj = ptrtoint ptr %.pre912 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 24
  %i.fm = icmp ult i64 %i.fl, 2
  br i1 %i.fm, label %.critedge172.thread, label %.preheader

.preheader:                                       ; preds = %.critedge172
  %.not860892 = icmp eq ptr %.pre912, %.pre911
  br i1 %.not860892, label %._crit_edge895, label %.lr.ph894

.lr.ph894:                                        ; preds = %.preheader
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %71, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %72, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %62, i64 16
  br label %bb.av

.critedge172.thread:                              ; preds = %bb.a, %.critedge172
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #36
  invoke void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %.critedge172.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %.noexc195 unwind label %bb.as

.noexc195:                                        ; preds = %bb.al
  %i.hr = load ptr, ptr %54, align 8, !tbaa !223
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull align 1 dereferenceable(47) @.str.458, i64 noundef 46)
          to label %_ZN7testing7MessagelsIA47_cEERS0_RKT_.exit.i unwind label %bb.an ; 0 uses

_ZN7testing7MessagelsIA47_cEERS0_RKT_.exit.i:     ; preds = %.noexc195
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZN7testing7MessagelsIA47_cEERS0_RKT_.exit.i
  %i.hu = load ptr, ptr %54, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i193 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i193, label %bb.ao, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i194

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i194: ; preds = %bb.am
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !169
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(128) %i.hu) #36, !inline_history !5355
  br label %bb.ao

bb.an:                                            ; preds = %_ZN7testing7MessagelsIA47_cEERS0_RKT_.exit.i, %.noexc195
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %54, align 8, !tbaa !223  ; 3 uses
  %.not.i.i3.i190 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i3.i190, label %_ZN7testing7MessageD2Ev.exit5.i192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i191: ; preds = %bb.an
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !169
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(128) %i.hz) #36, !inline_history !5355
  br label %_ZN7testing7MessageD2Ev.exit5.i192

_ZN7testing7MessageD2Ev.exit5.i192:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i191, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  br label %.body196

bb.ao:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i194, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %61)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.id = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !221 ; 4 uses
  %.not.i.i198 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i198, label %_ZN7testing15AssertionResultD2Ev.exit202, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !195 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199: ; preds = %bb.aq
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !198
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit202

_ZN7testing15AssertionResultD2Ev.exit202:         ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #36
  br label %.loopexit

bb.ar:                                            ; preds = %.critedge172.thread
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.al, %bb.ao
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body196

.body196:                                         ; preds = %_ZN7testing7MessageD2Ev.exit5.i192, %bb.as
  %eh.lpad-body197 = phi { ptr, i32 } [ %i.il, %bb.as ], [ %i.hy, %_ZN7testing7MessageD2Ev.exit5.i192 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #36
  br label %bb.at

bb.at:                                            ; preds = %.body196, %bb.ar
  %.pn168 = phi { ptr, i32 } [ %eh.lpad-body197, %.body196 ], [ %i.ik, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #36
  br label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcRmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.t, ptr %i.a, align 8, !tbaa !197
  %i.x = icmp ugt i64 %i.t, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.y, ptr %i.r, align 8, !tbaa !195
  %i.z = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.z, ptr %i.u, align 8, !tbaa !198
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc27 ], [ %i.u, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !198
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !198
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !199
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !195
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.g ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5673)
  call void @llvm.experimental.noalias.scope.decl(metadata !5674)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !196, !alias.scope !5673
  %i.ah = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !195, !alias.scope !5674 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !199, !alias.scope !5674 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !5675
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !195, !alias.scope !5673
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !198, !alias.scope !5674
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !198, !alias.scope !5673
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !199, !alias.scope !5674
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.h
  %i.ap = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !199, !alias.scope !5673
  store ptr %i.ai, ptr %.0911.i.i.i, align 8, !tbaa !195, !alias.scope !5674
  store i64 0, ptr %i.aq, align 8, !tbaa !199, !alias.scope !5674
  store i8 0, ptr %i.ai, align 8, !tbaa !198, !alias.scope !5674
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !49

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.g ], [ %i.at, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5676)
  call void @llvm.experimental.noalias.scope.decl(metadata !5677)
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.av, ptr %.012.i.i.i30, align 8, !tbaa !196, !alias.scope !5676
  %i.aw = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !195, !alias.scope !5677 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !199, !alias.scope !5677 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !5678
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.aw, ptr %.012.i.i.i30, align 8, !tbaa !195, !alias.scope !5676
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !198, !alias.scope !5677
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !198, !alias.scope !5676
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !199, !alias.scope !5677
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32, %bb.i
  %i.be = phi i64 [ %i.ba, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !199, !alias.scope !5676
  store ptr %i.ax, ptr %.0911.i.i.i31, align 8, !tbaa !195, !alias.scope !5677
  store i64 0, ptr %i.bf, align 8, !tbaa !199, !alias.scope !5677
  store i8 0, ptr %i.ax, align 8, !tbaa !198, !alias.scope !5677
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bh, %i.c
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !49

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !208
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bm) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %i.q, ptr %0, align 8, !tbaa !206
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !207
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !208
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #36 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #39
  invoke void @__cxa_rethrow() #38
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bo

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #35
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !685, !range !189, !noundef !190
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !685
  br i1 %i.c, label %bb.b, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !198
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !198
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #36
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052613hash_internal12PrintVisitorclINS0_13InlinedVectorIiLm4ESaIiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %4 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = load i64, ptr %1, align 8, !tbaa !693
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.c = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %i.a, ptr noundef nonnull %i.b)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e
  store i64 %i.f, ptr %4, align 8, !tbaa !5682
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !5683
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.h = load ptr, ptr %5, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !5684
  store i64 1, ptr %3, align 8, !noalias !5684
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.475, ptr %i.k, align 8, !noalias !5684
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload.i5.i = load i64, ptr %4, align 8, !tbaa !197, !noalias !5684
  %.sroa.2.0.copyload.i7.i = load ptr, ptr %i.g, align 8, !tbaa !180, !noalias !5684
  store i64 %.sroa.0.0.copyload.i5.i, ptr %i.l, align 8, !noalias !5684
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.2.0.copyload.i7.i, ptr %i.m, align 8, !noalias !5684
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %i.n, align 8, !noalias !5684
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.393, ptr %i.o, align 8, !noalias !5684
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.j, ptr %i.p, align 8, !noalias !5684
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.h, ptr %i.q, align 8, !noalias !5684
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1, ptr %i.r, align 8, !noalias !5684
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @.str.251, ptr %i.s, align 8, !noalias !5684
  invoke void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !5684
  %i.t = load ptr, ptr %5, align 8, !tbaa !195    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.u, align 8, !tbaa !198
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !195    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !198
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal16ContainerPrinter10PrintValueIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEvEEvRKT_PSo(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE5PrintERKS6_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE5PrintERKS6_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5689)
  call void @llvm.experimental.noalias.scope.decl(metadata !5690)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !196, !alias.scope !5691
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !199, !alias.scope !5691
  store i8 0, ptr %i.b, align 8, !tbaa !198, !alias.scope !5691
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !5691 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5691 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE5PrintERKS6_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229, !noalias !5691 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !195, !alias.scope !5691 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !198, !alias.scope !5691
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #39
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE5PrintERKS6_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !169
end_hunk_1
