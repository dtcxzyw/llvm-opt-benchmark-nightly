inline.NumInlined: 691
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler21EscapeAnalysisReducer6ReduceEPNS1_4NodeE:bb.a
  %.sroa.0.0.copyload.i11 = load ptr, ptr %i.b, align 8
  store ptr %.sroa.0.0.copyload.i11, ptr %3, align 8
  %i.h = call noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetVirtualObjectEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #13, !inline_history !9
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.e) #13
  %i.w = load ptr, ptr %1, align 8
  %i.x = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.w) #13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 251658240
  %.not.i.i.i = icmp eq i32 %i.aa, 251658240
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = add i64 %i.ab, 32
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.ad, %bb.i ]
  %i.ai = zext i1 %i.v to i32
  %i.aj = zext i1 %i.x to i32
  %i.ak = add i32 %i.u, %i.ai
  %i.al = add i32 %i.ak, %i.aj
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = icmp eq i16 %i.ar, 40
  br i1 %i.as, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ao, ptr noundef null, ptr noundef null) #13, !inline_history !9
  %i.ay = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #13, !inline_history !9
  br label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal8compiler21EscapeAnalysisReducer22ReduceFrameStateInputsEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %bb.k, %bb.d, %bb.e, %bb.f, %bb.b, %bb.l
  %.sroa.07.1 = phi ptr [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ], [ %i.d, %bb.b ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.m ]
  ret ptr %.sroa.07.1
}

declare noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetReplacementOfEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler21EscapeAnalysisReducer22ReduceFrameStateInputsEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Deduplicator", align 8 ; 7 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 32
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = insertelement <2 x ptr> poison, ptr %i.g, i64 0
  %i.j = insertelement <2 x ptr> %i.i, ptr %i.h, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 7 uses
  %i.k = load i32, ptr %i.d, align 4              ; 2 uses
  %i.l = and i32 %i.k, 251658240
  %.not.i = icmp eq i32 %i.l, 251658240
  br i1 %.not.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %bb.b
  %i.r = lshr i32 %i.k, 24
  %i.s = and i32 %i.r, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv, %i.t
  br i1 %i.u, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  ret void

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = add i64 %i.v, 16
  %i.x = inttoptr i64 %i.w to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %bb.d
  %.sink.i.i = phi ptr [ %i.x, %bb.d ], [ %i.c, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = icmp eq i16 %i.ac, 42
  br i1 %i.ad, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ae = load ptr, ptr %i.e, align 8
  store ptr %i.ae, ptr %2, align 8
  store i32 0, ptr %i.f, align 8
  store i64 0, ptr %i.g, align 8
  store <2 x ptr> %i.j, ptr %i.h, align 8
  %i.af = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull %i.z, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 5 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.d, align 4
  %i.ah = and i32 %i.ag, 251658240
  %.not.i.i13 = icmp eq i32 %i.ah, 251658240
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i14 = icmp eq ptr %i.an, %i.af
  br i1 %.not.i14, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.ap, %i.af
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.aq = phi ptr [ %i.ao, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.am, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ar = phi ptr [ %i.ap, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.an, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.as = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ai, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.at = xor i64 %indvars.iv, -1
  %sext = shl i64 %i.at, 32
  %3 = ashr exact i64 %sext, 32
  %i.au = getelementptr inbounds [24 x i8], ptr %i.as, i64 %3 ; 2 uses
  %.not14.i = icmp eq ptr %i.ar, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull %i.au) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i, %bb.g
  store ptr %i.af, ptr %i.aq, align 8
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull %i.au) #13
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.h, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !11
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::NodeHashCache::Constructor", align 8 ; 12 uses
  %5 = alloca %"class.v8::internal::compiler::NodeHashCache::Constructor", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::compiler::EscapeAnalysisResult", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::EscapeAnalysisResult", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::NodeHashCache::Constructor", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  switch i16 %i.c, label %bb.q [
    i16 42, label %bb.b
    i16 43, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.d, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 12 uses
  %i.k = load i32, ptr %i.g, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i = icmp eq i32 %i.l, 251658240
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, 16
  %i.p = inttoptr i64 %i.o to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ %i.j, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.r, ptr noundef %2, ptr noundef %3)
  call void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.s, i32 noundef 5)
  %i.t = load i32, ptr %i.g, align 4
  %i.u = and i32 %i.t, 251658240
  %.not.i.i.1 = icmp eq i32 %i.u, 251658240
  br i1 %.not.i.i.1, label %bb.d, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.v = load ptr, ptr %i.j, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 16
  %i.y = inttoptr i64 %i.x to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1

_ZNK2v88internal8compiler4Node7InputAtEi.exit.1:  ; preds = %bb.d, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.sink.i.i.1 = phi ptr [ %i.y, %bb.d ], [ %i.j, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.i.1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.aa, ptr noundef %2, ptr noundef %3)
  call void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ab, i32 noundef 4)
  %i.ac = load i32, ptr %i.g, align 4
  %i.ad = and i32 %i.ac, 251658240
  %.not.i.i.2 = icmp eq i32 %i.ad, 251658240
  br i1 %.not.i.i.2, label %bb.e, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.2

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1
  %i.ae = load ptr, ptr %i.j, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.2

_ZNK2v88internal8compiler4Node7InputAtEi.exit.2:  ; preds = %bb.e, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1
  %.sink.i.i.2 = phi ptr [ %i.ah, %bb.e ], [ %i.j, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1 ]
  %i.ai = load ptr, ptr %.sink.i.i.2, align 8
  %i.aj = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.ai, ptr noundef %2, ptr noundef %3)
  call void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.aj, i32 noundef 0)
  %i.ak = load i32, ptr %i.g, align 4
  %i.al = and i32 %i.ak, 251658240
  %.not.i.i.3 = icmp eq i32 %i.al, 251658240
  br i1 %.not.i.i.3, label %bb.f, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.3

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.2
  %i.am = load ptr, ptr %i.j, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 16
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.3

_ZNK2v88internal8compiler4Node7InputAtEi.exit.3:  ; preds = %bb.f, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.2
  %.sink.i.i.3 = phi ptr [ %i.ap, %bb.f ], [ %i.j, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.2 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink.i.i.3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.ar, ptr noundef %2, ptr noundef %3)
  call void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.as, i32 noundef 3)
  %i.at = load i32, ptr %i.g, align 4
  %i.au = and i32 %i.at, 251658240
  %.not.i.i.4 = icmp eq i32 %i.au, 251658240
  br i1 %.not.i.i.4, label %bb.g, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.4

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.3
  %i.av = load ptr, ptr %i.j, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, 16
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.4

_ZNK2v88internal8compiler4Node7InputAtEi.exit.4:  ; preds = %bb.g, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.3
  %.sink.i.i.4 = phi ptr [ %i.ay, %bb.g ], [ %i.j, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.3 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i.i.4, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.ba, ptr noundef %2, ptr noundef %3)
  call void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bb, i32 noundef 1)
  %i.bc = load i32, ptr %i.g, align 4
  %i.bd = and i32 %i.bc, 251658240
  %.not.i.i.5 = icmp eq i32 %i.bd, 251658240
  br i1 %.not.i.i.5, label %bb.h, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.5

bb.h:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.4
  %i.be = load ptr, ptr %i.j, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bf, 16
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.5

_ZNK2v88internal8compiler4Node7InputAtEi.exit.5:  ; preds = %bb.h, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.4
  %.sink.i.i.5 = phi ptr [ %i.bh, %bb.h ], [ %i.j, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.4 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink.i.i.5, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.bj, ptr noundef %2, ptr noundef %3)
  call void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bk, i32 noundef 2)
  %i.bl = call noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor3GetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ah

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bm, ptr %5, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bt = ptrtoint ptr %1 to i64
  %i.bu = add i64 %i.bt, 32
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler13NodeHashCache11Constructor17ReplaceValueInputEPNS1_4NodeEi.exit, %bb.i
  %i.bw = call noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor3GetEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ah

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler13NodeHashCache11Constructor17ReplaceValueInputEPNS1_4NodeEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal8compiler13NodeHashCache11Constructor17ReplaceValueInputEPNS1_4NodeEi.exit ] ; 5 uses
  %i.bx = load i32, ptr %i.bs, align 4
  %i.by = and i32 %i.bx, 251658240
  %.not.i.i.i = icmp eq i32 %i.by, 251658240
  br i1 %.not.i.i.i, label %bb.k, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = add i64 %i.ca, 16
  %i.cc = inttoptr i64 %i.cb to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.j, %bb.k
end_hunk_0
