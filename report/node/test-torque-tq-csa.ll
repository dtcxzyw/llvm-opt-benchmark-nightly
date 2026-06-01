inline.NumInlined: 16946
inline.NumDeleted: 1160
begin_hunk_0_@_ZN2v88internal26AddSmiAndConstexprValues_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_3SmiEEENS0_7int31_tE:bb.a
  store ptr %i.z, ptr %8, align 8, !noalias !6648
  call void @_ZN2v88internal8compiler13CodeAssembler25BitcastWordToTaggedSignedENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull dead_on_return %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.aa = load ptr, ptr %20, align 8, !noalias !6654
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %18, ptr noundef nonnull %5) #11
  %i.ab = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i5, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit6, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit6

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit6: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %i.f) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit6, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  %.sroa.025.0 = phi ptr [ %i.aa, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit6 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit ]
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %18, ptr noundef nonnull %4) #11 ; 0 uses
  %i.ai = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i7, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit8

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit8: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %.sroa.025.0, ptr %0, align 8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.f) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.h, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit8
  %i.av = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.av, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.ay = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.bf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.av, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.c) #11
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10: ; preds = %bb.k, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bs = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not4.i.i.i.i11 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i.i11, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i15
  %.05.i.i.i.i13 = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i15 ], [ %i.bs, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10 ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i.i13, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i14, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i15, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i12
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i15

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i15: ; preds = %bb.l, %.lr.ph.i.i.i.i12
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 24 ; 2 uses
  %.not.i.i.i1.i16 = icmp eq ptr %i.cb, %i.bu
  br i1 %.not.i.i.i1.i16, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i17, label %.lr.ph.i.i.i.i12, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i17: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i15
  %.pr.i.i18 = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i19

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i19: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i17, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10
  %i.cc = phi ptr [ %.pr.i.i18, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i17 ], [ %i.bs, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i10 ] ; 3 uses
  %.not.i.i1.i.i20 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i.i20, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit21, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i19
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit21

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit21: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i19, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @_ZN2v88internal8compiler13CodeAssembler17PopSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal30TestCreateLazyNodeFromTorque_0EPNS0_8compiler18CodeAssemblerStateE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %2 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %3 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %4 = alloca %"class.std::vector.190", align 8   ; 6 uses
  %5 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %11 = alloca %"class.std::function.178", align 16 ; 10 uses
  %12 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %13 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %14 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %20 = alloca %"class.std::function.178", align 16 ; 10 uses
  %21 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %22 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %23 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %24 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %25 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %26 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %27 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %28 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %29 = alloca %"class.std::function.178", align 16 ; 10 uses
  %30 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %31 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %32 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %33 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %34 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %35 = alloca %"class.v8::internal::TNode.48", align 8 ; 4 uses
  %36 = alloca %"class.v8::internal::TNode.47", align 8 ; 4 uses
  %37 = alloca %"class.v8::internal::TNode.26", align 8 ; 4 uses
  %38 = alloca %"class.std::function.178", align 16 ; 10 uses
  %39 = alloca %"class.std::vector.190", align 8  ; 6 uses
  %40 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %41 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 46 uses
  %42 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %43 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %44 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %45 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %46 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %47 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %48 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %49 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %50 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %51 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 11 uses
  %52 = alloca %"class.std::function.178", align 16 ; 11 uses
  %53 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %54 = alloca %"class.std::function.178", align 8 ; 8 uses
  %55 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %56 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %57 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %58 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %59 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %60 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %61 = alloca %"class.std::vector.18", align 8   ; 9 uses
  %62 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %63 = alloca %"class.std::function.178", align 16 ; 11 uses
  %64 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %65 = alloca %"class.std::function.178", align 8 ; 8 uses
  %66 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %67 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %68 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %69 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %70 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %71 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %72 = alloca %"class.std::vector.18", align 8   ; 9 uses
  %73 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %74 = alloca %"class.std::function.178", align 16 ; 11 uses
  %75 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %76 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %77 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %78 = alloca %"class.std::function.178", align 8 ; 8 uses
  %79 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %80 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %81 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %82 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %83 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %84 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %85 = alloca %"class.std::vector.18", align 8   ; 9 uses
  %86 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %87 = alloca %"class.std::function.178", align 16 ; 11 uses
  %88 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %89 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %90 = alloca %"class.std::function.178", align 8 ; 8 uses
  %91 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %92 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %93 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %94 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %95 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %96 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %97 = alloca %"class.std::vector.18", align 8   ; 9 uses
  %98 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #11
  store ptr %0, ptr %41, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18PushSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #11
  %i.a = load ptr, ptr %41, align 8
  store ptr %i.a, ptr %42, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %42, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #11
  %i.d = load ptr, ptr %41, align 8
  store ptr %i.d, ptr %43, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %43, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #11
  %i.g = load ptr, ptr %41, align 8
  store ptr %i.g, ptr %44, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %44, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #11
  %i.j = load ptr, ptr %41, align 8
  store ptr %i.j, ptr %45, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %45, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #11
  %i.m = load ptr, ptr %41, align 8
  store ptr %i.m, ptr %46, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %46, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #11
  %i.p = load ptr, ptr %41, align 8
  store ptr %i.p, ptr %47, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %47, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #11
  %i.s = load ptr, ptr %41, align 8
  store ptr %i.s, ptr %48, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %48, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #11
  %i.v = load ptr, ptr %41, align 8
  store ptr %i.v, ptr %49, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %49, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.x, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #11
  %i.y = load ptr, ptr %41, align 8
  store ptr %i.y, ptr %50, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %50, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #11
  %i.ab = load ptr, ptr %41, align 8
  store ptr %i.ab, ptr %51, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %51, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull %41, i64 noundef 0, ptr noundef null, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %42, ptr noundef nonnull %40) #11
  %i.ae = load ptr, ptr %40, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %52, i8 0, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.al = load i64, ptr %i.ak, align 8
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit29, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %42, ptr noundef nonnull %39) #11 ; 0 uses
  %i.an = load ptr, ptr %39, align 8              ; 3 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i27, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  %i.at = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #11
  %i.au = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.av, align 8
  store i64 %i.at, ptr %38, align 16
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %38, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %38, ptr noundef nonnull align 16 dereferenceable(32) %52, i64 16, i1 false)
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %52, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.ay = load <2 x ptr>, ptr %i.aw, align 16
  %i.az = load ptr, ptr %i.aw, align 16           ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.aw, align 16
  store <2 x ptr> %i.ay, ptr %i.au, align 16
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ax, align 8
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %54, i8 0, i64 32, i1 false)
  br label %bb.e

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 3) #11, !inline_history !6657 ; 0 uses
  %.pre = load ptr, ptr %i.aw, align 16           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %54, i8 0, i64 32, i1 false)
  %.not.i.i.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit, label %bb.e

bb.e:                                             ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"
  %i.bb = phi ptr [ @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread" ], [ %.pre, %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit" ]
  %i.bc = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.bd = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %52, i32 noundef 2) #11, !inline_history !6605 ; 0 uses
  %i.be = load <2 x ptr>, ptr %i.aw, align 16
  store <2 x ptr> %i.be, ptr %i.bc, align 8
  br label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit

_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit: ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit", %bb.e
  call void @_ZN2v88internal18TestRunLazyTwice_0EPNS0_8compiler18CodeAssemblerStateESt8functionIFNS0_5TNodeINS0_3SmiEEEvEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %53, ptr noundef %0, ptr noundef nonnull %54)
  %i.bf = load ptr, ptr %53, align 8, !noalias !6658
  %i.bg = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %54, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit, %bb.f
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %55, ptr noundef %0, i8 0, i64 6) #11
  %i.bj = load ptr, ptr %55, align 8, !noalias !6661
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #11, !noalias !6664
  store ptr %i.bf, ptr %34, align 8, !noalias !6664
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull dead_on_return %34) #11, !noalias !6664
  %i.bk = load ptr, ptr %33, align 8, !noalias !6664
  store ptr %i.bk, ptr %32, align 8, !noalias !6664
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #11, !noalias !6664
  store ptr %i.bj, ptr %37, align 8, !noalias !6664
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull dead_on_return %37) #11, !noalias !6664
  %i.bl = load ptr, ptr %36, align 8, !noalias !6664
  store ptr %i.bl, ptr %35, align 8, !noalias !6664
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %56, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull dead_on_return %32, ptr noundef nonnull dead_on_return %35) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11, !noalias !6664
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #11, !noalias !6664
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  %i.bm = load ptr, ptr %56, align 8, !noalias !6667
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #11
  store ptr %i.bm, ptr %58, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISE_EEPNS7_IJDpT0_EEESG_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull dead_on_return %58, ptr noundef nonnull %44, ptr noundef nonnull %59, ptr noundef nonnull %43, ptr noundef nonnull %60)
  %i.bn = load ptr, ptr %60, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.g
  %i.bt = load ptr, ptr %59, align 8              ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit29

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit29: ; preds = %bb.h, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %43, i64 64
  %i.ca = load i64, ptr %i.bz, align 8
  %.not379 = icmp eq i64 %i.ca, 0
  br i1 %.not379, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit29
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.cb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %43, ptr noundef nonnull %31) #11 ; 0 uses
  %i.cc = load ptr, ptr %31, align 8              ; 3 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i30, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit31

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit31: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #11
  %i.ci = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2v88internal8compiler13CodeAssembler27GetMacroSourcePositionStackEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #11 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8            ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit31
  %i.cp = icmp ugt i64 %i.co, 9223372036854775792
  br i1 %i.cp, label %bb.l, label %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i, !prof !25

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.cq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #12
  br label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit31
  %i.cr = phi ptr [ %i.cq, %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit31 ] ; 8 uses
  store ptr %i.cr, ptr %61, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.cw = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %i.cr, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %i.cv, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cw
  br i1 %i.da, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cr, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i ], [ %i.cz, %.lr.ph.i.i.i.i.i ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cs, align 8
  %.not.i.i32 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.ct
  br i1 %.not.i.i32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit
  store ptr @.str, ptr %.0.lcssa.i.i.i.i.i, align 8
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  store i32 1330, ptr %.sroa.5361.0..sroa_idx, align 8
  %i.db = load ptr, ptr %i.cs, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.dc, ptr %i.cs, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit
  %i.dd = ptrtoint ptr %i.ct to i64
  %i.de = ptrtoint ptr %i.cr to i64
  %i.df = icmp eq i64 %i.co, 9223372036854775792
  br i1 %i.df, label %bb.o, label %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #14
  unreachable

_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i: ; preds = %bb.n
  %i.dg = lshr exact i64 %i.co, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.dg
  %i.di = call i64 @llvm.umin.i64(i64 %i.dh, i64 576460752303423487) ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #12 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.co ; 2 uses
  store ptr @.str, ptr %i.dl, align 8
  %.sroa.5361.0..sroa_idx362 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 1330, ptr %.sroa.5361.0..sroa_idx362, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i
  %i.dm = add i64 %i.dd, -16
  %i.dn = sub i64 %i.dm, %i.de
  %i.do = and i64 %i.dn, -16
  %i.dp = add i64 %i.do, 16                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.cr, i64 %i.dp, i1 false), !alias.scope !6670
  %scevgep = getelementptr i8, ptr %i.dk, i64 %i.dp
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i

_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dk, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.co) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.dk, ptr %61, align 8
  store ptr %i.dq, ptr %i.cs, align 8
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dr, ptr %i.cu, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.m, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef %0) #11
  call void @_ZN2v88internal17CodeStubAssembler10FailAssertEPKcRKSt6vectorISt4pairIS3_iESaIS6_EESt16initializer_listIS5_INS0_5TNodeINS0_6ObjectEEES3_EE(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull @.str.181, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr null, i64 0) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %62) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #11
  %i.ds = load ptr, ptr %61, align 8              ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit
  %i.dt = load ptr, ptr %i.cu, align 8
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #11
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %63, i8 0, i64 32, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.dy = load i64, ptr %i.dx, align 8
  %.not380 = icmp eq i64 %i.dy, 0
  br i1 %.not380, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit46, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.dz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %44, ptr noundef nonnull %30) #11 ; 0 uses
  %i.ea = load ptr, ptr %30, align 8              ; 3 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i35, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit36, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit36

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit36: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  %i.eg = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #11
  %i.eh = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.ei, align 8
  store i64 %i.eg, ptr %29, align 16
  %.sroa.0.i.i.i37.sroa.0.0.copyload = load <2 x i64>, ptr %29, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %29, ptr noundef nonnull align 16 dereferenceable(32) %63, i64 16, i1 false)
  store <2 x i64> %.sroa.0.i.i.i37.sroa.0.0.copyload, ptr %63, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.el = load <2 x ptr>, ptr %i.ej, align 16
  %i.em = load ptr, ptr %i.ej, align 16           ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.ej, align 16
  store <2 x ptr> %i.el, ptr %i.eh, align 16
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.ek, align 8
  %.not.i.i38 = icmp eq ptr %i.em, null
  br i1 %.not.i.i38, label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %65, i8 0, i64 32, i1 false)
  br label %bb.u

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit36
  %i.en = call noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 3) #11, !inline_history !6674 ; 0 uses
  %.pre404 = load ptr, ptr %i.ej, align 16        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %65, i8 0, i64 32, i1 false)
  %.not.i.i.not.i39 = icmp eq ptr %.pre404, null
  br i1 %.not.i.i.not.i39, label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit40, label %bb.u

bb.u:                                             ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"
  %i.eo = phi ptr [ @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread" ], [ %.pre404, %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit" ]
  %i.ep = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.eq = call noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(32) %63, i32 noundef 2) #11, !inline_history !6605 ; 0 uses
  %i.er = load <2 x ptr>, ptr %i.ej, align 16
  store <2 x ptr> %i.er, ptr %i.ep, align 8
  br label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit40

_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit40: ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit", %bb.u
  call void @_ZN2v88internal18TestRunLazyTwice_0EPNS0_8compiler18CodeAssemblerStateESt8functionIFNS0_5TNodeINS0_3SmiEEEvEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %64, ptr noundef %0, ptr noundef nonnull %65)
  %i.es = load ptr, ptr %64, align 8, !noalias !6675
  %i.et = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i41 = icmp eq ptr %i.eu, null
  br i1 %.not.i41, label %_ZNSt14_Function_baseD2Ev.exit42, label %bb.v

bb.v:                                             ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit40
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(32) %65, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit42

_ZNSt14_Function_baseD2Ev.exit42:                 ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit40, %bb.v
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %66, ptr noundef %0, i8 0, i64 6) #11
  %i.ew = load ptr, ptr %66, align 8, !noalias !6678
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11, !noalias !6681
  store ptr %i.es, ptr %25, align 8, !noalias !6681
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull dead_on_return %25) #11, !noalias !6681
  %i.ex = load ptr, ptr %24, align 8, !noalias !6681
  store ptr %i.ex, ptr %23, align 8, !noalias !6681
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #11, !noalias !6681
  store ptr %i.ew, ptr %28, align 8, !noalias !6681
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull dead_on_return %28) #11, !noalias !6681
  %i.ey = load ptr, ptr %27, align 8, !noalias !6681
  store ptr %i.ey, ptr %26, align 8, !noalias !6681
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %67, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull dead_on_return %23, ptr noundef nonnull dead_on_return %26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11, !noalias !6681
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11, !noalias !6681
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %i.ez = load ptr, ptr %67, align 8, !noalias !6684
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %68) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #11
  store ptr %i.ez, ptr %69, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISE_EEPNS7_IJDpT0_EEESG_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull dead_on_return %69, ptr noundef nonnull %46, ptr noundef nonnull %70, ptr noundef nonnull %45, ptr noundef nonnull %71)
  %i.fa = load ptr, ptr %71, align 8              ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit44, label %bb.w

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit42
  %i.fb = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit44

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit44: ; preds = %_ZNSt14_Function_baseD2Ev.exit42, %bb.w
  %i.fg = load ptr, ptr %70, align 8              ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit46, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit44
  %i.fh = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit46

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit46: ; preds = %bb.x, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit44, %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %45, i64 64
  %i.fn = load i64, ptr %i.fm, align 8
  %.not381 = icmp eq i64 %i.fn, 0
  br i1 %.not381, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit46
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.l) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.fo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %45, ptr noundef nonnull %22) #11 ; 0 uses
  %i.fp = load ptr, ptr %22, align 8              ; 3 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i47, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit48

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit48: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #11
  %i.fv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2v88internal8compiler13CodeAssembler27GetMacroSourcePositionStackEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #11 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8            ; 3 uses
  %i.fy = load ptr, ptr %i.fv, align 8            ; 3 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false)
  %.not.i.i.i.i49 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i.i.i.i49, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit48
  %i.gc = icmp ugt i64 %i.gb, 9223372036854775792
  br i1 %i.gc, label %bb.ab, label %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i50, !prof !25

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i50: ; preds = %bb.aa
  %i.gd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #12
  br label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51: ; preds = %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i50, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit48
  %i.ge = phi ptr [ %i.gd, %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i50 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit48 ] ; 8 uses
  store ptr %i.ge, ptr %72, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 3 uses
  store ptr %i.gg, ptr %i.gh, align 8
  %i.gi = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.gj = load ptr, ptr %i.fw, align 8            ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit56, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51, %.lr.ph.i.i.i.i.i52
  %.08.i.i.i.i.i53 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i52 ], [ %i.ge, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i54 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i52 ], [ %i.gi, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i54, i64 16, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i54, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i53, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gj
  br i1 %i.gn, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit56, label %.lr.ph.i.i.i.i.i52, !llvm.loop !26

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit56: ; preds = %.lr.ph.i.i.i.i.i52, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51
  %.0.lcssa.i.i.i.i.i55 = phi ptr [ %i.ge, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i51 ], [ %i.gm, %.lr.ph.i.i.i.i.i52 ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i.i55, ptr %i.gf, align 8
  %.not.i.i57 = icmp eq ptr %.0.lcssa.i.i.i.i.i55, %i.gg
  br i1 %.not.i.i57, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit56
  store ptr @.str, ptr %.0.lcssa.i.i.i.i.i55, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i55, i64 8
  store i32 1335, ptr %.sroa.5339.0..sroa_idx, align 8
  %i.go = load ptr, ptr %i.gf, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store ptr %i.gp, ptr %i.gf, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit70

bb.ad:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit56
  %i.gq = ptrtoint ptr %i.gg to i64
  %i.gr = ptrtoint ptr %i.ge to i64
  %i.gs = icmp eq i64 %i.gb, 9223372036854775792
  br i1 %i.gs, label %bb.ae, label %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i58

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #14
  unreachable

_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i58: ; preds = %bb.ad
  %i.gt = lshr exact i64 %i.gb, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nuw nsw i64 %.sroa.speculated.i.i.i.i59, %i.gt
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gu, i64 576460752303423487) ; 2 uses
  %i.gw = shl nuw nsw i64 %i.gv, 4
  %i.gx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #12 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gb ; 2 uses
  store ptr @.str, ptr %i.gy, align 8
  %.sroa.5339.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 1335, ptr %.sroa.5339.0..sroa_idx340, align 8
  %.not10.i.i.i.i.i.i61 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not10.i.i.i.i.i.i61, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i66, label %.lr.ph.i.i.i.i.i.i62.preheader

.lr.ph.i.i.i.i.i.i62.preheader:                   ; preds = %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i58
  %i.gz = add i64 %i.gq, -16
  %i.ha = sub i64 %i.gz, %i.gr
  %i.hb = and i64 %i.ha, -16
  %i.hc = add i64 %i.hb, 16                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr align 8 %i.ge, i64 %i.hc, i1 false), !alias.scope !6687
  %scevgep401 = getelementptr i8, ptr %i.gx, i64 %i.hc
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i66

_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i66: ; preds = %.lr.ph.i.i.i.i.i.i62.preheader, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i58
  %.0.lcssa.i.i.i.i.i.i67 = phi ptr [ %i.gx, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i58 ], [ %scevgep401, %.lr.ph.i.i.i.i.i.i62.preheader ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i67, i64 16
  %.not.i23.i.i.i68 = icmp eq ptr %i.ge, null
  br i1 %.not.i23.i.i.i68, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i69, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gb) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i69

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i69: ; preds = %bb.af, %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i66
  store ptr %i.gx, ptr %72, align 8
  store ptr %i.hd, ptr %i.gf, align 8
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.gv
  store ptr %i.he, ptr %i.gh, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit70

_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit70: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i69
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef %0) #11
  call void @_ZN2v88internal17CodeStubAssembler10FailAssertEPKcRKSt6vectorISt4pairIS3_iESaIS6_EESt16initializer_listIS5_INS0_5TNodeINS0_6ObjectEEES3_EE(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr null, i64 0) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %73) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #11
  %i.hf = load ptr, ptr %72, align 8              ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit72, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit70
  %i.hg = load ptr, ptr %i.gh, align 8
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit72

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit72:    ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit70, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #11
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit72, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %74, i8 0, i64 32, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %46, i64 64
  %i.hl = load i64, ptr %i.hk, align 8
  %.not382 = icmp eq i64 %i.hl, 0
  br i1 %.not382, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit84, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.o) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.hm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %46, ptr noundef nonnull %21) #11 ; 0 uses
  %i.hn = load ptr, ptr %21, align 8              ; 3 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i73, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit74, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit74

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit74: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %75, ptr noundef %0, i8 0, i64 5) #11
  %i.ht = load ptr, ptr %75, align 8, !noalias !6691
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %76, ptr noundef %0, i8 0, i64 6) #11
  %i.hu = load ptr, ptr %76, align 8, !noalias !6694
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.hw, align 8
  %i.hx = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 4 uses
  store ptr %0, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.ht, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.hu, ptr %i.hz, align 8
  store ptr %i.hx, ptr %20, align 16
  %.sroa.0.i.i.i75.sroa.0.0.copyload = load <2 x i64>, ptr %20, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %20, ptr noundef nonnull align 16 dereferenceable(32) %74, i64 16, i1 false)
  store <2 x i64> %.sroa.0.i.i.i75.sroa.0.0.copyload, ptr %74, align 16
  %i.ia = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.ic = load <2 x ptr>, ptr %i.ia, align 16
  %i.id = load ptr, ptr %i.ia, align 16           ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.ia, align 16
  store <2 x ptr> %i.ic, ptr %i.hv, align 16
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2E9_M_invokeERKSt9_Any_data", ptr %i.ib, align 8
  %.not.i.i76 = icmp eq ptr %i.id, null
  br i1 %.not.i.i76, label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %78, i8 0, i64 32, i1 false)
  br label %bb.ak

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit74
  %i.ie = call noundef zeroext i1 %i.id(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3) #11, !inline_history !6697 ; 0 uses
  %.pre405 = load ptr, ptr %i.ia, align 16        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %78, i8 0, i64 32, i1 false)
  %.not.i.i.not.i77 = icmp eq ptr %.pre405, null
  br i1 %.not.i.i.not.i77, label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit78, label %bb.ak

bb.ak:                                            ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"
  %i.if = phi ptr [ @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread" ], [ %.pre405, %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit" ]
  %i.ig = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.ih = call noundef zeroext i1 %i.if(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %74, i32 noundef 2) #11, !inline_history !6605 ; 0 uses
  %i.ii = load <2 x ptr>, ptr %i.ia, align 16
  store <2 x ptr> %i.ii, ptr %i.ig, align 8
  br label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit78

_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit78: ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_2EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit", %bb.ak
  call void @_ZN2v88internal18TestRunLazyTwice_0EPNS0_8compiler18CodeAssemblerStateESt8functionIFNS0_5TNodeINS0_3SmiEEEvEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %77, ptr noundef %0, ptr noundef nonnull %78)
  %i.ij = load ptr, ptr %77, align 8, !noalias !6698
  %i.ik = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.il = load ptr, ptr %i.ik, align 8            ; 2 uses
  %.not.i79 = icmp eq ptr %i.il, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.al

bb.al:                                            ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit78
  %i.im = call noundef zeroext i1 %i.il(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %78, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit80

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit78, %bb.al
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %79, ptr noundef %0, i8 0, i64 22) #11
  %i.in = load ptr, ptr %79, align 8, !noalias !6701
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11, !noalias !6704
  store ptr %i.ij, ptr %16, align 8, !noalias !6704
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull dead_on_return %16) #11, !noalias !6704
  %i.io = load ptr, ptr %15, align 8, !noalias !6704
  store ptr %i.io, ptr %14, align 8, !noalias !6704
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11, !noalias !6704
  store ptr %i.in, ptr %19, align 8, !noalias !6704
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull dead_on_return %19) #11, !noalias !6704
  %i.ip = load ptr, ptr %18, align 8, !noalias !6704
  store ptr %i.ip, ptr %17, align 8, !noalias !6704
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %80, ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11, !noalias !6704
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11, !noalias !6704
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.iq = load ptr, ptr %80, align 8, !noalias !6707
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %81) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #11
  store ptr %i.iq, ptr %82, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %83, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISE_EEPNS7_IJDpT0_EEESG_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull dead_on_return %82, ptr noundef nonnull %48, ptr noundef nonnull %83, ptr noundef nonnull %47, ptr noundef nonnull %84)
  %i.ir = load ptr, ptr %84, align 8              ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit82, label %bb.am

bb.am:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit80
  %i.is = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = ptrtoint ptr %i.ir to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iw) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit82

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit82: ; preds = %_ZNSt14_Function_baseD2Ev.exit80, %bb.am
  %i.ix = load ptr, ptr %83, align 8              ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit84, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit82
  %i.iy = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jc) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit84

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit84: ; preds = %bb.an, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit82, %bb.ah
  %i.jd = getelementptr inbounds nuw i8, ptr %47, i64 64
  %i.je = load i64, ptr %i.jd, align 8
  %.not383 = icmp eq i64 %i.je, 0
  br i1 %.not383, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit84
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.r) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.jf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %47, ptr noundef nonnull %13) #11 ; 0 uses
  %i.jg = load ptr, ptr %13, align 8              ; 3 uses
  %.not.i.i.i.i.i85 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i85, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit86, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jl) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit86

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit86: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #11
  %i.jm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2v88internal8compiler13CodeAssembler27GetMacroSourcePositionStackEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #11 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8            ; 3 uses
  %i.jp = load ptr, ptr %i.jm, align 8            ; 3 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, i8 0, i64 24, i1 false)
  %.not.i.i.i.i87 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not.i.i.i.i87, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit86
  %i.jt = icmp ugt i64 %i.js, 9223372036854775792
  br i1 %i.jt, label %bb.ar, label %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i88, !prof !25

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i88: ; preds = %bb.aq
  %i.ju = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #12
  br label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89: ; preds = %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i88, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit86
  %i.jv = phi ptr [ %i.ju, %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i88 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit86 ] ; 8 uses
  store ptr %i.jv, ptr %85, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.js ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 3 uses
  store ptr %i.jx, ptr %i.jy, align 8
  %i.jz = load ptr, ptr %i.jm, align 8            ; 2 uses
  %i.ka = load ptr, ptr %i.jn, align 8            ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit94, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89, %.lr.ph.i.i.i.i.i90
  %.08.i.i.i.i.i91 = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i90 ], [ %i.jv, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i92 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i90 ], [ %i.jz, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i91, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i92, i64 16, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i92, i64 16 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i91, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.ka
  br i1 %i.ke, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit94, label %.lr.ph.i.i.i.i.i90, !llvm.loop !26

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit94: ; preds = %.lr.ph.i.i.i.i.i90, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.jv, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i89 ], [ %i.kd, %.lr.ph.i.i.i.i.i90 ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i.i93, ptr %i.jw, align 8
  %.not.i.i95 = icmp eq ptr %.0.lcssa.i.i.i.i.i93, %i.jx
  br i1 %.not.i.i95, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit94
  store ptr @.str, ptr %.0.lcssa.i.i.i.i.i93, align 8
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i93, i64 8
  store i32 1342, ptr %.sroa.5307.0..sroa_idx, align 8
  %i.kf = load ptr, ptr %i.jw, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store ptr %i.kg, ptr %i.jw, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit108

bb.at:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit94
  %i.kh = ptrtoint ptr %i.jx to i64
  %i.ki = ptrtoint ptr %i.jv to i64
  %i.kj = icmp eq i64 %i.js, 9223372036854775792
  br i1 %i.kj, label %bb.au, label %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i96

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #14
  unreachable

_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i96: ; preds = %bb.at
  %i.kk = lshr exact i64 %i.js, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i97 = call i64 @llvm.umax.i64(i64 %i.kk, i64 1)
  %i.kl = add nuw nsw i64 %.sroa.speculated.i.i.i.i97, %i.kk
  %i.km = call i64 @llvm.umin.i64(i64 %i.kl, i64 576460752303423487) ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 4
  %i.ko = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #12 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.js ; 2 uses
  store ptr @.str, ptr %i.kp, align 8
  %.sroa.5307.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 1342, ptr %.sroa.5307.0..sroa_idx308, align 8
  %.not10.i.i.i.i.i.i99 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not10.i.i.i.i.i.i99, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i104, label %.lr.ph.i.i.i.i.i.i100.preheader

.lr.ph.i.i.i.i.i.i100.preheader:                  ; preds = %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i96
  %i.kq = add i64 %i.kh, -16
  %i.kr = sub i64 %i.kq, %i.ki
  %i.ks = and i64 %i.kr, -16
  %i.kt = add i64 %i.ks, 16                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ko, ptr align 8 %i.jv, i64 %i.kt, i1 false), !alias.scope !6710
  %scevgep402 = getelementptr i8, ptr %i.ko, i64 %i.kt
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i104

_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i104: ; preds = %.lr.ph.i.i.i.i.i.i100.preheader, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i96
  %.0.lcssa.i.i.i.i.i.i105 = phi ptr [ %i.ko, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i96 ], [ %scevgep402, %.lr.ph.i.i.i.i.i.i100.preheader ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i105, i64 16
  %.not.i23.i.i.i106 = icmp eq ptr %i.jv, null
  br i1 %.not.i23.i.i.i106, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i107, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i104
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.js) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i107

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i107: ; preds = %bb.av, %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i104
  store ptr %i.ko, ptr %85, align 8
  store ptr %i.ku, ptr %i.jw, align 8
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.km
  store ptr %i.kv, ptr %i.jy, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit108

_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit108: ; preds = %bb.as, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i107
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef %0) #11
  call void @_ZN2v88internal17CodeStubAssembler10FailAssertEPKcRKSt6vectorISt4pairIS3_iESaIS6_EESt16initializer_listIS5_INS0_5TNodeINS0_6ObjectEEES3_EE(ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef nonnull @.str.183, ptr noundef nonnull align 8 dereferenceable(24) %85, ptr null, i64 0) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %86) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #11
  %i.kw = load ptr, ptr %85, align 8              ; 3 uses
  %.not.i.i.i109 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit110, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit108
  %i.kx = load ptr, ptr %i.jy, align 8
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.la) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit110

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit110:   ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit108, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #11
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit110, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %87, i8 0, i64 32, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %48, i64 64
  %i.lc = load i64, ptr %i.lb, align 8
  %.not384 = icmp eq i64 %i.lc, 0
  br i1 %.not384, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit122, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.u) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ld = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %48, ptr noundef nonnull %12) #11 ; 0 uses
  %i.le = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i.i111, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit112, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lj) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit112

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit112: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %88, ptr noundef %0, i8 0, i64 7) #11
  %i.lk = load ptr, ptr %88, align 8, !noalias !6714
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ll = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.lm, align 8
  %i.ln = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12 ; 3 uses
  store ptr %0, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr %i.lk, ptr %i.lo, align 8
  store ptr %i.ln, ptr %11, align 16
  %.sroa.0.i.i.i113.sroa.0.0.copyload = load <2 x i64>, ptr %11, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 16 dereferenceable(32) %87, i64 16, i1 false)
  store <2 x i64> %.sroa.0.i.i.i113.sroa.0.0.copyload, ptr %87, align 16
  %i.lp = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %87, i64 24
  %i.lr = load <2 x ptr>, ptr %i.lp, align 16
  %i.ls = load ptr, ptr %i.lp, align 16           ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.lp, align 16
  store <2 x ptr> %i.lr, ptr %i.ll, align 16
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3E9_M_invokeERKSt9_Any_data", ptr %i.lq, align 8
  %.not.i.i114 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i114, label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", label %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %90, i8 0, i64 32, i1 false)
  br label %bb.ba

"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit112
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #11, !inline_history !6717 ; 0 uses
  %.pre406 = load ptr, ptr %i.lp, align 16        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %90, i8 0, i64 32, i1 false)
  %.not.i.i.not.i115 = icmp eq ptr %.pre406, null
  br i1 %.not.i.i.not.i115, label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit116, label %bb.ba

bb.ba:                                            ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"
  %i.lu = phi ptr [ @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_3SmiEEEvEZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit.thread" ], [ %.pre406, %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit" ]
  %i.lv = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.lw = call noundef zeroext i1 %i.lu(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(32) %87, i32 noundef 2) #11, !inline_history !6605 ; 0 uses
  %i.lx = load <2 x ptr>, ptr %i.lp, align 16
  store <2 x ptr> %i.lx, ptr %i.lv, align 8
  br label %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit116

_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit116: ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEaSIZNS1_30TestCreateLazyNodeFromTorque_0EPNS1_8compiler18CodeAssemblerStateEE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit", %bb.ba
  call void @_ZN2v88internal18TestRunLazyTwice_0EPNS0_8compiler18CodeAssemblerStateESt8functionIFNS0_5TNodeINS0_3SmiEEEvEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %89, ptr noundef %0, ptr noundef nonnull %90)
  %i.ly = load ptr, ptr %89, align 8, !noalias !6718
  %i.lz = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8            ; 2 uses
  %.not.i117 = icmp eq ptr %i.ma, null
  br i1 %.not.i117, label %_ZNSt14_Function_baseD2Ev.exit118, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit116
  %i.mb = call noundef zeroext i1 %i.ma(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(32) %90, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit118

_ZNSt14_Function_baseD2Ev.exit118:                ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_3SmiEEEvEEC2ERKS6_.exit116, %bb.bb
  call void @_ZN2v88internal44FromConstexpr_Smi_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %91, ptr noundef %0, i8 0, i64 30) #11
  %i.mc = load ptr, ptr %91, align 8, !noalias !6721
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !6724
  store ptr %i.ly, ptr %7, align 8, !noalias !6724
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull dead_on_return %7) #11, !noalias !6724
  %i.md = load ptr, ptr %6, align 8, !noalias !6724
  store ptr %i.md, ptr %5, align 8, !noalias !6724
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11, !noalias !6724
  store ptr %i.mc, ptr %10, align 8, !noalias !6724
  call void @_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.47") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull dead_on_return %10) #11, !noalias !6724
  %i.me = load ptr, ptr %9, align 8, !noalias !6724
  store ptr %i.me, ptr %8, align 8, !noalias !6724
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %92, ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !6724
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !6724
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.mf = load ptr, ptr %92, align 8, !noalias !6727
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %93) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #11
  store ptr %i.mf, ptr %94, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %95, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISE_EEPNS7_IJDpT0_EEESG_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull dead_on_return %94, ptr noundef nonnull %50, ptr noundef nonnull %95, ptr noundef nonnull %49, ptr noundef nonnull %96)
  %i.mg = load ptr, ptr %96, align 8              ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit120, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit118
  %i.mh = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit120

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit120: ; preds = %_ZNSt14_Function_baseD2Ev.exit118, %bb.bc
  %i.mm = load ptr, ptr %95, align 8              ; 3 uses
  %.not.i.i.i121 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit122, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit120
  %i.mn = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit122

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit122: ; preds = %bb.bd, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit120, %bb.ax
  %i.ms = getelementptr inbounds nuw i8, ptr %49, i64 64
  %i.mt = load i64, ptr %i.ms, align 8
  %.not385 = icmp eq i64 %i.mt, 0
  br i1 %.not385, label %bb.bn, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit122
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.x) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.mu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %49, ptr noundef nonnull %4) #11 ; 0 uses
  %i.mv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i123 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i123, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit124, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mv to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.na) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit124

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit124: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #11
  %i.nb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2v88internal8compiler13CodeAssembler27GetMacroSourcePositionStackEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #11 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8            ; 3 uses
  %i.ne = load ptr, ptr %i.nb, align 8            ; 3 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %97, i8 0, i64 24, i1 false)
  %.not.i.i.i.i125 = icmp eq ptr %i.nd, %i.ne
  br i1 %.not.i.i.i.i125, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127, label %bb.bg

bb.bg:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit124
  %i.ni = icmp ugt i64 %i.nh, 9223372036854775792
  br i1 %i.ni, label %bb.bh, label %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i126, !prof !25

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i126: ; preds = %bb.bg
  %i.nj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #12
  br label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127: ; preds = %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i126, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit124
  %i.nk = phi ptr [ %i.nj, %_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv.exit.i.i.i.i126 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit124 ] ; 8 uses
  store ptr %i.nk, ptr %97, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %97, i64 8 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nh ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 3 uses
  store ptr %i.nm, ptr %i.nn, align 8
  %i.no = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.np = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit132, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127, %.lr.ph.i.i.i.i.i128
  %.08.i.i.i.i.i129 = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i128 ], [ %i.nk, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i130 = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i128 ], [ %i.no, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i129, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i130, i64 16, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i130, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i129, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.np
  br i1 %i.nt, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit132, label %.lr.ph.i.i.i.i.i128, !llvm.loop !26

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit132: ; preds = %.lr.ph.i.i.i.i.i128, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127
  %.0.lcssa.i.i.i.i.i131 = phi ptr [ %i.nk, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i127 ], [ %i.ns, %.lr.ph.i.i.i.i.i128 ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i.i131, ptr %i.nl, align 8
  %.not.i.i133 = icmp eq ptr %.0.lcssa.i.i.i.i.i131, %i.nm
  br i1 %.not.i.i133, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit132
  store ptr @.str, ptr %.0.lcssa.i.i.i.i.i131, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i131, i64 8
  store i32 1347, ptr %.sroa.5.0..sroa_idx, align 8
  %i.nu = load ptr, ptr %i.nl, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store ptr %i.nv, ptr %i.nl, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit146

bb.bj:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit132
  %i.nw = ptrtoint ptr %i.nm to i64
  %i.nx = ptrtoint ptr %i.nk to i64
  %i.ny = icmp eq i64 %i.nh, 9223372036854775792
  br i1 %i.ny, label %bb.bk, label %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i134

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #14
  unreachable

_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i134: ; preds = %bb.bj
  %i.nz = lshr exact i64 %i.nh, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i135 = call i64 @llvm.umax.i64(i64 %i.nz, i64 1)
  %i.oa = add nuw nsw i64 %.sroa.speculated.i.i.i.i135, %i.nz
  %i.ob = call i64 @llvm.umin.i64(i64 %i.oa, i64 576460752303423487) ; 2 uses
  %i.oc = shl nuw nsw i64 %i.ob, 4
  %i.od = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oc) #12 ; 6 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.nh ; 2 uses
  store ptr @.str, ptr %i.oe, align 8
  %.sroa.5.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i32 1347, ptr %.sroa.5.0..sroa_idx283, align 8
  %.not10.i.i.i.i.i.i137 = icmp eq ptr %i.nd, %i.ne
  br i1 %.not10.i.i.i.i.i.i137, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i138.preheader

.lr.ph.i.i.i.i.i.i138.preheader:                  ; preds = %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i134
  %i.of = add i64 %i.nw, -16
  %i.og = sub i64 %i.of, %i.nx
  %i.oh = and i64 %i.og, -16
  %i.oi = add i64 %i.oh, 16                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.od, ptr align 8 %i.nk, i64 %i.oi, i1 false), !alias.scope !6730
  %scevgep403 = getelementptr i8, ptr %i.od, i64 %i.oi
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i142

_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i142: ; preds = %.lr.ph.i.i.i.i.i.i138.preheader, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i134
  %.0.lcssa.i.i.i.i.i.i143 = phi ptr [ %i.od, %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i134 ], [ %scevgep403, %.lr.ph.i.i.i.i.i.i138.preheader ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i143, i64 16
  %.not.i23.i.i.i144 = icmp eq ptr %i.nk, null
  br i1 %.not.i23.i.i.i144, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i145, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i142
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.nh) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i145

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i145: ; preds = %bb.bl, %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i142
  store ptr %i.od, ptr %97, align 8
  store ptr %i.oj, ptr %i.nl, align 8
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %i.ob
  store ptr %i.ok, ptr %i.nn, align 8
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit146

_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit146: ; preds = %bb.bi, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i145
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #11
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %98, ptr noundef %0) #11
  call void @_ZN2v88internal17CodeStubAssembler10FailAssertEPKcRKSt6vectorISt4pairIS3_iESaIS6_EESt16initializer_listIS5_INS0_5TNodeINS0_6ObjectEEES3_EE(ptr noundef nonnull align 8 dereferenceable(16) %98, ptr noundef nonnull @.str.184, ptr noundef nonnull align 8 dereferenceable(24) %97, ptr null, i64 0) #11
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %98) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #11
  %i.ol = load ptr, ptr %97, align 8              ; 3 uses
  %.not.i.i.i147 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit148, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit146
  %i.om = load ptr, ptr %i.nn, align 8
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.op) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit148

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit148:   ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE9push_backEOS3_.exit146, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #11
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit148, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit122
  %i.oq = getelementptr inbounds nuw i8, ptr %50, i64 64
  %i.or = load i64, ptr %i.oq, align 8
  %.not386 = icmp eq i64 %i.or, 0
  br i1 %.not386, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.aa) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.os = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %50, ptr noundef nonnull %3) #11 ; 0 uses
  %i.ot = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i.i149 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i.i.i149, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit150, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = ptrtoint ptr %i.ot to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef %i.oy) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit150

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit150: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %51, ptr noundef nonnull %2) #11
  %i.oz = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i.i151, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit152, label %bb.bq

bb.bq:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit150
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = ptrtoint ptr %i.oz to i64
  %i.pe = sub i64 %i.pc, %i.pd
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.pe) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit152

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit152: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit150, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.ad) #11
  br label %bb.br

bb.br:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit152, %bb.bn
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.ad) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.pf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %51, ptr noundef nonnull %1) #11 ; 0 uses
  %i.pg = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i.i.i153 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i.i.i153, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit154, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.pg to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.pl) #13
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit154

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit154: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.pm = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.pn = load ptr, ptr %i.pm, align 16           ; 2 uses
  %.not.i155 = icmp eq ptr %i.pn, null
  br i1 %.not.i155, label %_ZNSt14_Function_baseD2Ev.exit156, label %bb.bt

bb.bt:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit154
  %i.po = call noundef zeroext i1 %i.pn(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull align 8 dereferenceable(32) %87, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit156

_ZNSt14_Function_baseD2Ev.exit156:                ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit154, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #11
  %i.pp = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.pq = load ptr, ptr %i.pp, align 16           ; 2 uses
  %.not.i157 = icmp eq ptr %i.pq, null
  br i1 %.not.i157, label %_ZNSt14_Function_baseD2Ev.exit158, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit156
  %i.pr = call noundef zeroext i1 %i.pq(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(32) %74, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit158

_ZNSt14_Function_baseD2Ev.exit158:                ; preds = %_ZNSt14_Function_baseD2Ev.exit156, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #11
  %i.ps = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.pt = load ptr, ptr %i.ps, align 16           ; 2 uses
  %.not.i159 = icmp eq ptr %i.pt, null
  br i1 %.not.i159, label %_ZNSt14_Function_baseD2Ev.exit160, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit158
  %i.pu = call noundef zeroext i1 %i.pt(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(32) %63, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit160

_ZNSt14_Function_baseD2Ev.exit160:                ; preds = %_ZNSt14_Function_baseD2Ev.exit158, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #11
  %i.pv = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.pw = load ptr, ptr %i.pv, align 16           ; 2 uses
  %.not.i161 = icmp eq ptr %i.pw, null
  br i1 %.not.i161, label %_ZNSt14_Function_baseD2Ev.exit162, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit160
  %i.px = call noundef zeroext i1 %i.pw(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %52, i32 noundef 3) #11, !inline_history !6615 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit162

_ZNSt14_Function_baseD2Ev.exit162:                ; preds = %_ZNSt14_Function_baseD2Ev.exit160, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ad) #11
  %i.py = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.pz = load ptr, ptr %i.py, align 8            ; 3 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit162
  %i.qa = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.pz to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qe) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.bx, %_ZNSt14_Function_baseD2Ev.exit162
  %i.qf = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.qf, %i.qh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qo, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.qf, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.qi = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qi to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef %i.qn) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.by, %.lr.ph.i.i.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.qo, %i.qh
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ac, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.qp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.qf, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.qu) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.aa) #11
  %i.qv = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8            ; 3 uses
  %.not.i.i.i.i164 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i.i164, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165, label %bb.ca

bb.ca:                                            ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rb) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165: ; preds = %bb.ca, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.rc = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.re = load ptr, ptr %i.rd, align 8            ; 2 uses
  %.not4.i.i.i.i166 = icmp eq ptr %i.rc, %i.re
  br i1 %.not4.i.i.i.i166, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i174, label %.lr.ph.i.i.i.i167

.lr.ph.i.i.i.i167:                                ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i170
  %.05.i.i.i.i168 = phi ptr [ %i.rl, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i170 ], [ %i.rc, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165 ] ; 3 uses
  %i.rf = load ptr, ptr %.05.i.i.i.i168, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i169 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i169, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i170, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i167
  %i.rg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i168, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rk) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i170

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i170: ; preds = %bb.cb, %.lr.ph.i.i.i.i167
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i168, i64 24 ; 2 uses
  %.not.i.i.i1.i171 = icmp eq ptr %i.rl, %i.re
  br i1 %.not.i.i.i1.i171, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i172, label %.lr.ph.i.i.i.i167, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i172: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i170
  %.pr.i.i173 = load ptr, ptr %i.z, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i174

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i174: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i172, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165
  %i.rm = phi ptr [ %.pr.i.i173, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i172 ], [ %i.rc, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i165 ] ; 3 uses
  %.not.i.i1.i.i175 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i1.i.i175, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit176, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i174
  %i.rn = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rm to i64
  %i.rr = sub i64 %i.rp, %i.rq
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rr) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit176

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit176: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i174, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.x) #11
  %i.rs = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.rt = load ptr, ptr %i.rs, align 8            ; 3 uses
  %.not.i.i.i.i177 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i.i177, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178, label %bb.cd

bb.cd:                                            ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit176
  %i.ru = getelementptr inbounds nuw i8, ptr %49, i64 48
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = ptrtoint ptr %i.rt to i64
  %i.ry = sub i64 %i.rw, %i.rx
  call void @_ZdlPvm(ptr noundef nonnull %i.rt, i64 noundef %i.ry) #13
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178: ; preds = %bb.cd, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit176
  %i.rz = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  %.not4.i.i.i.i179 = icmp eq ptr %i.rz, %i.sb
  br i1 %.not4.i.i.i.i179, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i187, label %.lr.ph.i.i.i.i180

.lr.ph.i.i.i.i180:                                ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i183
  %.05.i.i.i.i181 = phi ptr [ %i.si, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i183 ], [ %i.rz, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178 ] ; 3 uses
  %i.sc = load ptr, ptr %.05.i.i.i.i181, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i182 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i182, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i183, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i180
  %i.sd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i181, i64 16
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = ptrtoint ptr %i.sc to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef %i.sh) #13
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i183

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i183: ; preds = %bb.ce, %.lr.ph.i.i.i.i180
  %i.si = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i181, i64 24 ; 2 uses
  %.not.i.i.i1.i184 = icmp eq ptr %i.si, %i.sb
  br i1 %.not.i.i.i1.i184, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i185, label %.lr.ph.i.i.i.i180, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i185: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i183
  %.pr.i.i186 = load ptr, ptr %i.w, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i187

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i187: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i185, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178
  %i.sj = phi ptr [ %.pr.i.i186, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i185 ], [ %i.rz, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i178 ] ; 3 uses
  %.not.i.i1.i.i188 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i1.i.i188, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit189, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i187
  %i.sk = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = ptrtoint ptr %i.sj to i64
  %i.so = sub i64 %i.sm, %i.sn
  call void @_ZdlPvm(ptr noundef nonnull %i.sj, i64 noundef %i.so) #13
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit189

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit189: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i187, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #11
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.u) #11
  %i.sp = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.sq = load ptr, ptr %i.sp, align 8            ; 3 uses
  %.not.i.i.i.i190 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i.i190, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i191, label %bb.cg
end_hunk_0
