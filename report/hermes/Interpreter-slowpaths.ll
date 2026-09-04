Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Interpreter-slowpaths?download=true
inline.NumInlined: 948
inline.NumDeleted: 439
begin_hunk_0_@_ZN6hermes2vm11Interpreter14caseDirectEvalERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE:bb.a

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit
  %i.as = extractvalue { i32, i64 } %i.ap, 1
  store i64 %i.as, ptr %i.d, align 8, !tbaa !54
  br label %.thread

bb.g:                                             ; preds = %bb.b, %.critedge.thread64
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !11  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = icmp ult ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !21
  store i64 %i.u, ptr %i.av, align 8, !tbaa !25
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.at, i64 %i.u) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i44 = phi ptr [ %i.av, %bb.h ], [ %i.ba, %bb.i ]
  %i.bb = tail call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i44, ptr nonnull @.str, i64 18)
  br label %.thread

bb.j:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.mask.i = and i64 %i.bc, -281474976710656
  %i.bd = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.bd, label %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.bc, ptr %i.d, align 8, !tbaa !54
  br label %.thread

_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null)
  %i.bg = call { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.k, i1 noundef zeroext false) #12 ; 2 uses
  %i.bh = extractvalue { i32, i64 } %i.bg, 0
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.bj = extractvalue { i32, i64 } %i.bg, 1
  store i64 %i.bj, ptr %i.d, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %bb.l
  %.2 = phi i32 [ 1, %bb.l ], [ 0, %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ]
  %i.bk = load ptr, ptr %3, align 8, !tbaa !57    ; 3 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i ], [ %i.bk, %bb.m ] ; 3 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !319 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !61
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #13
  br label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bl
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !318

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, %bb.m
  %i.bt = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i ], [ %i.bk, %bb.m ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes10ScopeChainD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #13
  br label %_ZN6hermes10ScopeChainD2Ev.exit

_ZN6hermes10ScopeChainD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.thread

.thread:                                          ; preds = %bb.f, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.k, %_ZN6hermes10ScopeChainD2Ev.exit, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %i.bb, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 1, %bb.k ], [ %.2, %_ZN6hermes10ScopeChainD2Ev.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %bb.f ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.bz = zext i32 %i.q to i64
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  store i32 %i.q, ptr %i.p, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !22
  store ptr %i.o, ptr %i.n, align 8, !tbaa !21
  ret i32 %.4
}

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare { i32, i64 } @_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return) #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
_ZN6hermes2vm11TwineChar16C2EPKc.exit:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %3, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !30
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  store ptr %2, ptr %5, align 8, !tbaa !31
  br label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit

_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.a
  %.sink.i = phi i32 [ 3, %bb.a ], [ 1, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sink.i, ptr %i.h, align 8, !tbaa !32
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %i.i
}

declare { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -128, 128) i32 @_ZN6hermes2vm11Interpreter15casePutOwnByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %.not = icmp eq i8 %i.j, 0
  %spec.select = select i1 %.not, i32 318, i32 319
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = tail call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.d, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.h, i32 %spec.select, ptr %i.n, i32 0) #12
  %i.p = shl i32 %i.o, 24
  %i.q = ashr exact i32 %i.p, 24
  ret i32 %i.q
}

declare i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -128, 128) i32 @_ZN6hermes2vm11Interpreter27casePutOwnGetterSetterByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = and i8 %i.b, 1
  %i.d = or disjoint i8 %i.c, 44
  %3 = zext nneg i8 %i.d to i16                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !21
  store i64 -281474976710656, ptr %i.h, align 8, !tbaa !25
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 -281474976710656) #12
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre37 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !22
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.j, %bb.b ], [ %.pre39, %bb.c ]
  %i.o = phi ptr [ %i.l, %bb.b ], [ %.pre37, %bb.c ] ; 4 uses
  %i.p = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.n
  br i1 %i.q, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.r, align 8, !tbaa !21
  store i64 -281474976710656, ptr %i.o, align 8, !tbaa !25
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.t = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.p, i64 -281474976710656) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25

_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i24 = phi ptr [ %i.o, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  %.mask.i = and i64 %i.y, -140737488355328
  %i.z = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.z, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25
  %4 = or disjoint i16 %3, 64
  %i.aa = or i64 %i.y, -281474976710656
  store i64 %i.aa, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25
  %.sroa.034.0 = phi i16 [ %3, %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25 ], [ %4, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !31
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54 ; 2 uses
  %.mask.i26 = and i64 %i.af, -140737488355328
  %i.ag = icmp eq i64 %.mask.i26, -1688849860263936
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %5 = or i16 %.sroa.034.0, 128
  %i.ah = or i64 %i.af, -281474976710656
  store i64 %i.ah, ptr %.0.i.i.i.i.i.i24, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.034.1 = phi i16 [ %.sroa.034.0, %bb.g ], [ %5, %bb.h ]
  %i.ai = tail call i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i24) #12
  %i.aj = or i64 %i.ai, -281474976710656          ; 2 uses
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !21
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !25
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ak, i64 %i.aj) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i27 = phi ptr [ %i.am, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !31
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %.sroa.034.0.insert.ext = zext nneg i16 %.sroa.034.1 to i32
  %i.ba = tail call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.av, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.az, i32 %.sroa.034.0.insert.ext, ptr %.0.i.i.i.i.i.i27, i32 0) #12
  %i.bb = shl i32 %i.ba, 24
  %i.bc = ashr exact i32 %i.bb, 24
  ret i32 %i.bc
}

declare i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm11Interpreter17caseIteratorBeginERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 7 uses
  %4 = alloca %"class.hermes::vm::CallResult.176", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.04.0.copyload, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread, !prof !320

_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit: ; preds = %bb.a
  %i.f = and i64 %.sroa.04.0.copyload, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %i.h, -16777216
  %i.i = icmp eq i32 %.mask.i.i.i.i.i.i.i, 536870912
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread, !prof !321

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 0, ptr %3, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !67
  %i.k = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 268436017, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %3) #12 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread46, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %i.l = call { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE(ptr nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(9816) %0, i64 %.sroa.0.0.copyload) ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { i32, i64 } %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  %.not49 = icmp eq i64 %i.o, %i.q
  br i1 %.not49, label %bb.e, label %.thread46, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  store i64 0, ptr %i.u, align 8, !tbaa !54
  br label %bb.f

.thread46:                                        ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pre = load i8, ptr %i.a, align 1, !tbaa !31
  %.pre50 = zext i8 %.pre to i64
  br label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.124.ph = phi i32 [ 1, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %.thread46, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre50, %.thread46 ], [ %i.c, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi
  call void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.176") align 8 %4, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ab, i64 undef, i8 0) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !326, !range !327, !noundef !328
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !330
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.ag, align 8, !tbaa !25
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !31
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  store i64 %.sroa.0.0.copyload.i27, ptr %i.aj, align 8, !tbaa !54
  %i.ak = load ptr, ptr %4, align 8, !tbaa !330
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !31
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  store i64 %.sroa.0.0.copyload.i29, ptr %i.ao, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread, %bb.g
  %.4 = phi i32 [ 1, %bb.g ], [ 0, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.aq = zext i32 %i.aa to i64
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  store ptr %i.au, ptr %i.av, align 8, !tbaa !22
  store ptr %i.y, ptr %i.x, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %.124.ph, %bb.f ]
  ret i32 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.410.0.extract.shift = lshr i64 %2, 32    ; 3 uses
  %.sroa.410.0.extract.trunc = trunc nuw i64 %.sroa.410.0.extract.shift to i32
  %i.a = and i64 %2, 1280
  %or.cond = icmp eq i64 %i.a, 0
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !331

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = or i64 %i.b, -281474976710656            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !21
  store i64 %i.c, ptr %i.g, align 8, !tbaa !25
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.e, i64 %i.c) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.410.0.extract.trunc, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = extractvalue { i32, i64 } %i.m, 1
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.e:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %2, 21474836480
  br i1 %i.p, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !6
  %i.s = ptrtoint ptr %1 to i64
  %i.t = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = add nuw nsw i64 %.sroa.410.0.extract.shift, 4294967291
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = and i64 %i.w, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.f, %bb.g
  %.sink6.i.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.410.0.extract.shift, %bb.f ]
  %.sink.i.i = phi ptr [ %i.x, %bb.g ], [ %i.q, %bb.f ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.sink6.i.i
  %.sroa.0.0.i.i = load i32, ptr %i.z, align 4, !tbaa !6 ; 9 uses
  %i.aa = trunc i32 %.sroa.0.0.i.i to i8
  %i.ab = and i8 %i.aa, 15
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.h
    i8 8, label %bb.h
    i8 1, label %bb.i
    i8 9, label %bb.i
    i8 2, label %bb.j
    i8 10, label %bb.j
    i8 3, label %bb.k
    i8 11, label %bb.k
    i8 4, label %bb.l
    i8 12, label %bb.l
    i8 5, label %bb.m
end_hunk_0
