Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/test-torque-tq-csa?download=true
inline.NumInlined: 16946
inline.NumDeleted: 1160
begin_hunk_0_@_ZN2v88internal13TestStruct3_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE:bb.a
  store ptr %i.af, ptr %23, align 8
  store ptr %i.ae, ptr %24, align 8
  call void @_ZN2v88internal23UnsafeCast_FixedArray_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_6ObjectEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %22, ptr noundef %1, ptr noundef nonnull dead_on_return %23, ptr noundef nonnull dead_on_return %24) #11
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %25, ptr noundef %1, i8 0, i64 27) #11
  call void @_ZN2v88internal47FromConstexpr_Number_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.45") align 8 %26, ptr noundef %1, i8 0, i64 31) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #11
  %i.ag = load ptr, ptr %2, align 8
  store ptr %i.ag, ptr %28, align 8
  call void @_ZN2v88internal13TestStruct2_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructTestStructA_0") align 8 %27, ptr noundef %1, ptr noundef nonnull dead_on_return %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %4) #11
  %i.ah = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i14, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit15, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit15

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit15: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.f) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit15, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  %.sroa.064.0 = phi ptr [ %i.ad, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit15 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit ] ; 2 uses
  %.sroa.068.0 = phi ptr [ %i.x, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit15 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit ]
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.an = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %3) #11 ; 0 uses
  %i.ao = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i16, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit17

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit17: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.sroa.068.0, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.064.0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.064.0, ptr %i.av, align 8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.f) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit17
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.h, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit17
  %i.bd = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.bd, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bm, %i.bf
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.bn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.bd, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.c) #11
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19: ; preds = %bb.k, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.ca = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not4.i.i.i.i20 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not4.i.i.i.i20, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i28, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i24
  %.05.i.i.i.i22 = phi ptr [ %i.cj, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i24 ], [ %i.ca, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19 ] ; 3 uses
  %i.cd = load ptr, ptr %.05.i.i.i.i22, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i24, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i22, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i24

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i24: ; preds = %bb.l, %.lr.ph.i.i.i.i21
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i22, i64 24 ; 2 uses
  %.not.i.i.i1.i25 = icmp eq ptr %i.cj, %i.cc
  br i1 %.not.i.i.i1.i25, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i26, label %.lr.ph.i.i.i.i21, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i26: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i24
  %.pr.i.i27 = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i28

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i28: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i26, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19
  %i.ck = phi ptr [ %.pr.i.i27, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i26 ], [ %i.ca, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i19 ] ; 3 uses
  %.not.i.i1.i.i29 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i29, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit30, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i28
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit30

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit30: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i28, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @_ZN2v88internal8compiler13CodeAssembler17PopSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13TestStruct4_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.v8::internal::TorqueStructTestStructC_0") align 8 captures(none) initializes((0, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %5 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %7 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 14 uses
  %8 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %9 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 11 uses
  %10 = alloca %"struct.v8::internal::TorqueStructTestStructA_0", align 16 ; 5 uses
  %11 = alloca %"class.v8::internal::TNode.36", align 8 ; 2 uses
  %12 = alloca %"struct.v8::internal::TorqueStructTestStructA_0", align 8 ; 5 uses
  %13 = alloca %"class.v8::internal::TNode.36", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %1, ptr %7, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18PushSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = load ptr, ptr %7, align 8
  store ptr %i.a, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %7, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.d = load ptr, ptr %7, align 8
  store ptr %i.d, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull %7, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %8, ptr noundef nonnull %6) #11
  %i.g = load ptr, ptr %6, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.c) #11
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %8, ptr noundef nonnull %5) #11 ; 0 uses
  %i.p = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i3, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.v = load ptr, ptr %2, align 8
  store ptr %i.v, ptr %11, align 8
  call void @_ZN2v88internal13TestStruct2_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructTestStructA_0") align 8 %10, ptr noundef %1, ptr noundef nonnull dead_on_return %11)
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !noalias !1070
  %i.y = load <2 x ptr>, ptr %10, align 16, !noalias !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.z = load ptr, ptr %2, align 8
  store ptr %i.z, ptr %13, align 8
  call void @_ZN2v88internal13TestStruct2_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructTestStructA_0") align 8 %12, ptr noundef %1, ptr noundef nonnull dead_on_return %13)
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load <2 x ptr>, ptr %i.aa, align 8, !noalias !1071
  %15 = load ptr, ptr %12, align 8, !noalias !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %4) #11
  %i.ab = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i4, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit5, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit5

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit5: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.f) #11
  %16 = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %17 = insertelement <4 x ptr> %16, ptr %15, i64 1
  %18 = shufflevector <2 x ptr> %14, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x ptr> %17, <4 x ptr> %18, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit5, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  %i.ah = phi <2 x ptr> [ %i.y, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit5 ], [ splat (ptr null), %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit ]
  %20 = phi <4 x ptr> [ %19, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit5 ], [ splat (ptr null), %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit ]
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %3) #11 ; 0 uses
  %i.aj = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i6, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit7

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit7: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x ptr> %i.ah, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x ptr> %20, ptr %i.ap, align 8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.f) #11
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit7
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.h, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit7
  %i.ax = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.ax, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bg, %i.az
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.bh = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.ax, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.c) #11
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i8, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9: ; preds = %bb.k, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bu = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i18, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i14
  %.05.i.i.i.i12 = phi ptr [ %i.cd, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i14 ], [ %i.bu, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9 ] ; 3 uses
  %i.bx = load ptr, ptr %.05.i.i.i.i12, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i13, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i14, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i14

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i14: ; preds = %bb.l, %.lr.ph.i.i.i.i11
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 24 ; 2 uses
  %.not.i.i.i1.i15 = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i.i.i1.i15, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i16, label %.lr.ph.i.i.i.i11, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i16: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i14
  %.pr.i.i17 = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i18

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i18: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i16, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9
  %i.ce = phi ptr [ %.pr.i.i17, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i16 ], [ %i.bu, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i9 ] ; 3 uses
  %.not.i.i1.i.i19 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i19, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i18
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit20

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit20: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i18, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @_ZN2v88internal8compiler13CodeAssembler17PopSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23CallTestStructInLabel_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr noundef %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %4 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %6 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 14 uses
  %7 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %8 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 11 uses
  %9 = alloca %"struct.v8::internal::TorqueStructTestStructA_0", align 8 ; 3 uses
  %10 = alloca %"class.v8::internal::TNode.36", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr %0, ptr %6, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18PushSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.a = load ptr, ptr %6, align 8
  store ptr %i.a, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.d = load ptr, ptr %6, align 8
  store ptr %i.d, ptr %8, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %7, ptr noundef nonnull %5) #11
  %i.g = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.c) #11
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %7, ptr noundef nonnull %4) #11 ; 0 uses
  %i.p = load ptr, ptr %4, align 8                ; 3 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i2, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
end_hunk_0
