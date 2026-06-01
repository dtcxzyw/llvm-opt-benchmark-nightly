inline.NumInlined: 1987
inline.NumDeleted: 545
begin_hunk_0_@_ZN2v88internal17GetLazyReceiver_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE:bb.a
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.f) #10
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %3) #10 ; 0 uses
  %i.ac = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i4, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ai = load ptr, ptr %2, align 8
  store ptr %i.ai, ptr %0, align 8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.f) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #12
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.h, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5
  %i.aq = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.aq, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #12
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.az, %i.as
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.ba = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.aq, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #12
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.c) #10
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #12
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7: ; preds = %bb.k, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bn = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not4.i.i.i.i8 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not4.i.i.i.i8, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16, label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12
  %.05.i.i.i.i10 = phi ptr [ %i.bw, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12 ], [ %i.bn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7 ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i.i10, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i11 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i11, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i10, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #12
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12: ; preds = %bb.l, %.lr.ph.i.i.i.i9
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i10, i64 24 ; 2 uses
  %.not.i.i.i1.i13 = icmp eq ptr %i.bw, %i.bp
  br i1 %.not.i.i.i1.i13, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14, label %.lr.ph.i.i.i.i9, !llvm.loop !56

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12
  %.pr.i.i15 = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7
  %i.bx = phi ptr [ %.pr.i.i15, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14 ], [ %i.bn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7 ] ; 3 uses
  %.not.i.i1.i.i17 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i.i17, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #12
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit18

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit18: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @_ZN2v88internal8compiler13CodeAssembler17PopSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins33Generate_CallIteratorWithFeedbackEPNS0_8compiler18CodeAssemblerStateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::CallIteratorWithFeedbackAssembler", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN2v88internal17CodeStubAssemblerC2EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerState26SetInitialDebugInformationEPKcS4_i(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 260) #10
  %i.a = call noundef i32 @_ZN2v88internal8Builtins6KindOfENS0_7BuiltinE(i32 noundef 1000) #10
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal8compiler13CodeAssembler21GetJSContextParameterEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZN2v88internal17CodeStubAssembler17PerformStackCheckENS0_5TNodeINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN2v88internal33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.101", align 8   ; 6 uses
  %5 = alloca %"class.v8::internal::TNode.33", align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::TNode.33"], align 8 ; 4 uses
  %7 = alloca %"class.std::vector.101", align 8   ; 6 uses
  %8 = alloca %"class.std::vector.15", align 8    ; 6 uses
  %9 = alloca %"class.std::vector.15", align 8    ; 6 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %10 = alloca %"class.std::function.51", align 8 ; 10 uses
  %11 = alloca %"class.std::vector.101", align 8  ; 6 uses
  %12 = alloca %"class.std::vector.15", align 8   ; 6 uses
  %13 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 17 uses
  %14 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %15 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %16 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %17 = alloca %"class.std::function.51", align 8 ; 11 uses
  %18 = alloca %"class.v8::internal::TNode.49", align 8 ; 2 uses
  %19 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %20 = alloca %"class.v8::internal::TNode.35", align 8 ; 2 uses
  %21 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::TNode.7", align 8 ; 3 uses
  %23 = alloca %"class.std::function.51", align 8 ; 8 uses
  %24 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %25 = alloca %"class.v8::internal::TNode.9", align 8 ; 2 uses
  %26 = alloca %"class.v8::internal::TNode.50", align 8 ; 2 uses
  %27 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 7 uses
  %28 = alloca %"class.v8::internal::TNode.53", align 8 ; 2 uses
  %29 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %30 = alloca %"class.v8::internal::TNode.33", align 8 ; 2 uses
  %31 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %32 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %33 = alloca %"class.v8::internal::TNode.7", align 8 ; 2 uses
  %34 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %35 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %36 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %37 = alloca %"class.v8::internal::TNode.33", align 8 ; 2 uses
  %38 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %39 = alloca %"class.v8::internal::TNode.33", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  store ptr %i.a, ptr %13, align 8
  %i.b = tail call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 4) #10, !noalias !170 ; 5 uses
  %i.c = tail call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #10, !noalias !175 ; 3 uses
  %i.d = tail call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #10, !noalias !180 ; 3 uses
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 2) #10, !noalias !185
  %i.f = tail call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 3) #10, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  store ptr %i.a, ptr %14, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull %13, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.i = load ptr, ptr %13, align 8
  store ptr %i.i, ptr %15, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.k, ptr noundef nonnull %13, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.l = load ptr, ptr %13, align 8
  store ptr %i.l, ptr %16, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull %13, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %14, ptr noundef nonnull %12) #10
  %i.o = load ptr, ptr %12, align 8               ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.v = load i64, ptr %i.u, align 8
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %14, ptr noundef nonnull %11) #10 ; 0 uses
  %i.x = load ptr, ptr %11, align 8               ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i12, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.a) #10
  store ptr %i.e, ptr %20, align 8
  call void @_ZN2v88internal17CodeStubAssembler8SmiUntagENS0_5TNodeINS0_3SmiEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull dead_on_return %20) #10
  %i.ad = load ptr, ptr %18, align 8, !noalias !195
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.a) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.af, align 8
  %i.ag = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 3 uses
  store ptr %i.a, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.c, ptr %i.ah, align 8
  store ptr %i.ag, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8
  %i.al = load ptr, ptr %i.ai, align 8            ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", ptr %i.ai, align 8
  store <2 x ptr> %i.ak, ptr %i.ae, align 8
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.aj, align 8
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit.thread", label %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit"

"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit.thread": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  store ptr %i.d, ptr %22, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  br label %bb.e

"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3) #10, !inline_history !198 ; 0 uses
  %.pre = load ptr, ptr %i.ai, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  store ptr %i.d, ptr %22, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  %.not.i.i.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEC2ERKSG_.exit, label %bb.e

bb.e:                                             ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit.thread", %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit"
  %i.an = phi ptr [ @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit.thread" ], [ %.pre, %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit" ]
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ap = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 2) #10, !inline_history !199 ; 0 uses
  %i.aq = load <2 x ptr>, ptr %i.ai, align 8
  store <2 x ptr> %i.aq, ptr %i.ao, align 8
  br label %_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEC2ERKSG_.exit

_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEC2ERKSG_.exit: ; preds = %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit", %bb.e
  store ptr %i.b, ptr %24, align 8
  store ptr %i.f, ptr %25, align 8
  store ptr %i.ad, ptr %26, align 8
  call void @_ZN2v88internal21CollectCallFeedback_1EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESt8functionIFSG_vEENS4_INS0_7ContextEEENS4_INS5_IJNS0_14FeedbackVectorESD_EEEEENS4_INS0_8UintPtrTEEE(ptr noundef %i.a, ptr noundef nonnull dead_on_return %22, ptr noundef nonnull %23, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEC2ERKSG_.exit
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3) #10, !inline_history !200 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEC2ERKSG_.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %27, ptr noundef nonnull %13, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  store ptr %i.b, ptr %29, align 8
  store ptr %i.d, ptr %30, align 8
  call void @_ZN2v88internal15Cast_Callable_1EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_6ObjectEEEPNS1_18CodeAssemblerLabelE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.53") align 8 %28, ptr noundef %i.a, ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30, ptr noundef nonnull %27) #10
  %i.au = load ptr, ptr %28, align 8, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %16, ptr noundef nonnull %9) #10
  %i.av = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i13, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit14

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit14: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.n) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %.not85 = icmp eq i64 %i.bc, 0
  br i1 %.not85, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit14
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %27) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %15, ptr noundef nonnull %8) #10
  %i.bd = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i15, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit16

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit16: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.k) #10
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit16, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit14
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %27) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  %.sroa.065.0 = phi ptr [ %i.au, %bb.j ], [ null, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.bk = load i64, ptr %i.bj, align 8
  %.not86 = icmp eq i64 %i.bk, 0
  br i1 %.not86, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %15, ptr noundef nonnull %7) #10 ; 0 uses
  %i.bm = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i17, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit18

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit18: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.b, ptr %5, align 8, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !204
  store ptr %i.c, ptr %6, align 8, !noalias !204
  %i.bs = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler15CallRuntimeImplENS0_7Runtime10FunctionIdENS0_5TNodeINS0_6ObjectEEESt16initializer_listIS7_E(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 162, ptr noundef nonnull dead_on_return %5, ptr nonnull %6, i64 1) #10, !noalias !204 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef %i.a) #10
  call void @_ZN2v88internal8compiler13CodeAssembler11UnreachableEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #10
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit18, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.bu = load i64, ptr %i.bt, align 8
  %.not87 = icmp eq i64 %i.bu, 0
  br i1 %.not87, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %16, ptr noundef nonnull %4) #10 ; 0 uses
  %i.bw = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i19, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #12
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit20

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit20: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.b, ptr %1, align 8, !noalias !207
  store ptr %.sroa.065.0, ptr %2, align 8, !noalias !207
  store ptr %i.c, ptr %3, align 8, !noalias !207
  call void @_ZN2v88internal17CodeStubAssembler4CallINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEJEEENS0_5TNodeISD_EENSE_INS0_7ContextEEENSE_IT_EENS0_19ConvertReceiverModeESF_DpT0_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2, i32 noundef 2, ptr noundef nonnull dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cc = load ptr, ptr %33, align 8, !noalias !210 ; 2 uses
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef %i.a) #10
  store ptr %i.b, ptr %36, align 8
  store ptr %i.cc, ptr %37, align 8
  call void @_ZN2v88internal17CodeStubAssembler20ThrowIfNotJSReceiverENS0_5TNodeINS0_7ContextEEENS2_INS0_6ObjectEEENS0_15MessageTemplateEPKc(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull dead_on_return %36, ptr noundef nonnull dead_on_return %37, i32 noundef 206, ptr noundef nonnull @.str.6) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef %i.a) #10
  store ptr %i.cc, ptr %39, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull dead_on_return %39) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #10
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit20, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i21 = icmp eq ptr %i.ce, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3) #10, !inline_history !200 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit22

_ZNSt14_Function_baseD2Ev.exit22:                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.n) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit22
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #12
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.s, %_ZNSt14_Function_baseD2Ev.exit22
  %i.cn = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.cn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.cq = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #12
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.t, %.lr.ph.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cw, %i.cp
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.m, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.cx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.cn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #12
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.k) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #12
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24: ; preds = %bb.v, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.dk = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not4.i.i.i.i25 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not4.i.i.i.i25, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i33, label %.lr.ph.i.i.i.i26

.lr.ph.i.i.i.i26:                                 ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i29
  %.05.i.i.i.i27 = phi ptr [ %i.dt, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i29 ], [ %i.dk, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24 ] ; 3 uses
  %i.dn = load ptr, ptr %.05.i.i.i.i27, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i29, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i27, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #12
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i29

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i29: ; preds = %bb.w, %.lr.ph.i.i.i.i26
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i27, i64 24 ; 2 uses
  %.not.i.i.i1.i30 = icmp eq ptr %i.dt, %i.dm
  br i1 %.not.i.i.i1.i30, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i31, label %.lr.ph.i.i.i.i26, !llvm.loop !56

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i31: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i29
  %.pr.i.i32 = load ptr, ptr %i.j, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i33

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i33: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i31, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24
  %i.du = phi ptr [ %.pr.i.i32, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i31 ], [ %i.dk, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i24 ] ; 3 uses
  %.not.i.i1.i.i34 = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i.i34, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit35, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i33
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #12
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit35

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit35: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i33, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.h) #10
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit35
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #12
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37: ; preds = %bb.y, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit35
  %i.eh = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not4.i.i.i.i38 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not4.i.i.i.i38, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i46, label %.lr.ph.i.i.i.i39

.lr.ph.i.i.i.i39:                                 ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i42
  %.05.i.i.i.i40 = phi ptr [ %i.eq, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i42 ], [ %i.eh, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37 ] ; 3 uses
  %i.ek = load ptr, ptr %.05.i.i.i.i40, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i41 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i.i.i41, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i42, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i39
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i40, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #12
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i42

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i42: ; preds = %bb.z, %.lr.ph.i.i.i.i39
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i40, i64 24 ; 2 uses
  %.not.i.i.i1.i43 = icmp eq ptr %i.eq, %i.ej
  br i1 %.not.i.i.i1.i43, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i44, label %.lr.ph.i.i.i.i39, !llvm.loop !56

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i44: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i42
  %.pr.i.i45 = load ptr, ptr %i.g, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i46

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i46: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i44, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37
  %i.er = phi ptr [ %.pr.i.i45, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i44 ], [ %i.eh, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i37 ] ; 3 uses
  %.not.i.i1.i.i47 = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i.i47, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit48, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i46
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #12
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit48

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit48: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i46, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  ret void
}

end_hunk_0
