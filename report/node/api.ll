inline.NumInlined: 14197
inline.NumDeleted: 4685
begin_hunk_0_@_ZN2v86Module24SetSyntheticModuleExportEPNS_7IsolateENS_5LocalINS_6StringEEENS3_INS_5ValueEEE:bb.a

bb.f:                                             ; preds = %_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 368
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 960
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = load i64, ptr %i.bj, align 8
  %i.bn = icmp eq i64 %i.bm, %i.bl
  br i1 %i.bn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 656
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 368
  store i64 %i.bp, ptr %i.bq, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit
  %i.br = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 344
  store i64 %i.bt, ptr %i.bu, align 8
  br label %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i

_ZN2v814CallDepthScopeILb0EED2Ev.exit.i:          ; preds = %bb.j, %bb.i
  %i.bv = load ptr, ptr %4, align 8               ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit, label %bb.k, !prof !11

bb.k:                                             ; preds = %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i
  %i.bx = load ptr, ptr %i.ab, align 8
  %i.by = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 560
  store ptr %i.bx, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 576 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 568 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.by
  br i1 %.not.i.i, label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  store ptr %i.by, ptr %i.cd, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bv) #44
  br label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit

_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit: ; preds = %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i, %bb.k, %bb.l
  %spec.select = and i16 %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %spec.select29 = shl i16 %i.ay, 8
  %.sroa.419.0.insert.shift = and i16 %spec.select29, 256
  %.sroa.018.0.insert.insert = or disjoint i16 %.sroa.419.0.insert.shift, %spec.select
  ret i16 %.sroa.018.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %.sroa.0.0.copyload.i, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 31
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #44
  br label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.07.0 = phi ptr [ %.0.i.i.i, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.a ]
  ret ptr %.sroa.07.0
}

declare i16 @_ZN2v88internal15SyntheticModule9SetExportEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef, ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v86Module31GetStalledTopLevelAwaitMessagesEPNS_7IsolateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.707", align 8    ; 10 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.678", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 255
  br i1 %i.h, label %_ZN2v85Utils8ApiCheckEbPKcS2_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v85Utils16ReportApiFailureEPKcS2_(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86)
  %.pre = load i64, ptr %1, align 8
  br label %_ZN2v85Utils8ApiCheckEbPKcS2_.exit

_ZN2v85Utils8ApiCheckEbPKcS2_.exit:               ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.a, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  store i64 %i.i, ptr %4, align 8
  call void @_ZN2v88internal16SourceTextModule31GetStalledTopLevelAwaitMessagesEPNS0_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.707") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %3, align 8                ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %.loopexit93, label %bb.c

bb.c:                                             ; preds = %_ZN2v85Utils8ApiCheckEbPKcS2_.exit
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.380) #45
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit
  %.sroa.063.0106 = phi ptr [ %.sroa.063.3, %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.q, %.lr.ph.preheader ] ; 7 uses
  %.sroa.1068.0105 = phi ptr [ %.sroa.1068.3, %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.q, %.lr.ph.preheader ] ; 6 uses
  %.sroa.1873.0104 = phi ptr [ %.sroa.1873.3, %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.sroa.060.0103 = phi ptr [ %i.au, %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %.sroa.060.0103, align 8
  %i.s = ptrtoint ptr %.sroa.05.0.copyload to i64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.1068.0105, %.sroa.1873.0104
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store i64 %i.s, ptr %.sroa.1068.0105, align 8
  br label %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit

bb.f:                                             ; preds = %.lr.ph
  %i.t = ptrtoint ptr %.sroa.1068.0105 to i64     ; 2 uses
  %i.u = ptrtoint ptr %.sroa.063.0106 to i64      ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.381) #45
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i.i20 = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i20)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #48 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i64 %i.s, ptr %i.ae, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.063.0106, %.sroa.1068.0105
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.af = ptrtoaddr ptr %i.ad to i64
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.ai = sub i64 %i.af, %i.u
  %diff.check = icmp ult i64 %i.ai, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader204, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %.sroa.063.0106, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.am ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.sroa.063.0106, i64 %i.am ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.an = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep139, align 8, !alias.scope !33, !noalias !30
  %wide.load140 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !33, !noalias !30
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !30, !noalias !33
  store <2 x i64> %wide.load140, ptr %i.ao, align 8, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader204

.lr.ph.i.i.i.i.i.i.i.preheader204:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.063.0106, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader204, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader204 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader204 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !33, !noalias !30
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !30, !noalias !33
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %.sroa.1068.0105
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0106, i64 noundef %i.v) #49
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.1873.3 = phi ptr [ %i.at, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.1873.0104, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.1068.0105, %bb.e ]
  %.sroa.063.3 = phi ptr [ %i.ad, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.063.0106, %bb.e ] ; 2 uses
  %.sroa.1068.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.060.0103, i64 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.k
  br i1 %i.av, label %.loopexit93.loopexit, label %.lr.ph

.loopexit93.loopexit:                             ; preds = %_ZN2v811LocalVectorINS_6ModuleEE9push_backERKNS_5LocalIS1_EE.exit
  %i.aw = ptrtoint ptr %.sroa.1873.3 to i64
  br label %.loopexit93

.loopexit93:                                      ; preds = %.loopexit93.loopexit, %_ZN2v85Utils8ApiCheckEbPKcS2_.exit
  %.sroa.1873.1 = phi i64 [ 0, %_ZN2v85Utils8ApiCheckEbPKcS2_.exit ], [ %i.aw, %.loopexit93.loopexit ]
  %.sroa.1068.1 = phi ptr [ null, %_ZN2v85Utils8ApiCheckEbPKcS2_.exit ], [ %.sroa.1068.3, %.loopexit93.loopexit ] ; 3 uses
  %.sroa.063.1 = phi ptr [ null, %_ZN2v85Utils8ApiCheckEbPKcS2_.exit ], [ %.sroa.063.3, %.loopexit93.loopexit ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %.not19 = icmp eq ptr %i.az, %i.ba
  br i1 %.not19, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.loopexit93
  %i.be = icmp ugt i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.i, label %.lr.ph113.preheader

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.380) #45
  unreachable

.lr.ph113.preheader:                              ; preds = %bb.h
  %i.bf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #48 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit
  %.sroa.043.0112 = phi ptr [ %i.cj, %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.ba, %.lr.ph113.preheader ] ; 2 uses
  %.sroa.18.0111 = phi ptr [ %.sroa.18.3, %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.bg, %.lr.ph113.preheader ] ; 5 uses
  %.sroa.10.0110 = phi ptr [ %.sroa.10.3, %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.bf, %.lr.ph113.preheader ] ; 3 uses
  %.sroa.046.0109 = phi ptr [ %.sroa.046.3, %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.bf, %.lr.ph113.preheader ] ; 7 uses
  %.sroa.01.0.copyload = load ptr, ptr %.sroa.043.0112, align 8
  %i.bh = ptrtoint ptr %.sroa.01.0.copyload to i64 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %.sroa.10.0110, %.sroa.18.0111
  br i1 %.not.i.i.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph113
  store i64 %i.bh, ptr %.sroa.10.0110, align 8
  br label %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit

bb.k:                                             ; preds = %.lr.ph113
  %i.bi = ptrtoint ptr %.sroa.18.0111 to i64      ; 2 uses
  %i.bj = ptrtoint ptr %.sroa.046.0109 to i64     ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.l, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.381) #45
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.k
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i28 = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i.i28, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i.i.i29 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i29)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #48 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i64 %i.bh, ptr %i.bt, align 8
  %.not10.i.i.i.i.i.i.i30 = icmp eq ptr %.sroa.046.0109, %.sroa.18.0111
  br i1 %.not10.i.i.i.i.i.i.i30, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bu = ptrtoaddr ptr %i.bs to i64
  %7 = add i64 %i.bi, -8
  %8 = sub i64 %7, %i.bj                          ; 2 uses
  %i.bv = lshr i64 %8, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %8, 24
  %i.bx = sub i64 %i.bu, %i.bj
  %diff.check143 = icmp ult i64 %i.bx, 32
  %or.cond196 = or i1 %min.iters.check145, %diff.check143
  br i1 %or.cond196, label %.lr.ph.i.i.i.i.i.i.i31.preheader202, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader
  %n.vec148 = and i64 %i.bw, 4611686018427387900  ; 3 uses
  %i.by = shl i64 %n.vec148, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bs, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.046.0109, i64 %i.by
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.cb = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.sroa.046.0109, i64 %i.cb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cc = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <2 x i64>, ptr %next.gep152, align 8, !alias.scope !42, !noalias !39
  %wide.load154 = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !42, !noalias !39
  %i.cd = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load153, ptr %next.gep151, align 8, !alias.scope !39, !noalias !42
  store <2 x i64> %wide.load154, ptr %i.cd, align 8, !alias.scope !39, !noalias !42
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.ce, label %middle.block156, label %vector.body149, !llvm.loop !44

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.bw, %n.vec148
  br i1 %cmp.n157, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i31.preheader202

.lr.ph.i.i.i.i.i.i.i31.preheader202:              ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %middle.block156
  %.012.i.i.i.i.i.i.i32.ph = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i31.preheader ], [ %i.bz, %middle.block156 ]
  %.0911.i.i.i.i.i.i.i33.ph = phi ptr [ %.sroa.046.0109, %.lr.ph.i.i.i.i.i.i.i31.preheader ], [ %i.ca, %middle.block156 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader202, %.lr.ph.i.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i.i32 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.012.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader202 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i33 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.0911.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader202 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cf = load i64, ptr %.0911.i.i.i.i.i.i.i33, align 8, !alias.scope !42, !noalias !39
  store i64 %i.cf, ptr %.012.i.i.i.i.i.i.i32, align 8, !alias.scope !39, !noalias !42
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.cg, %.sroa.18.0111
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !45

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block156, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i35 = phi ptr [ %i.bs, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.bz, %middle.block156 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i31 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.0109, i64 noundef %i.bk) #49
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.046.3 = phi ptr [ %i.bs, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.046.0109, %bb.j ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i35.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i35, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.0110, %bb.j ]
  %.sroa.18.3 = phi ptr [ %i.ci, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.18.0111, %bb.j ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i35.pn, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.043.0112, i64 8 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.az
  br i1 %i.ck, label %.loopexit.loopexit, label %.lr.ph113

.loopexit.loopexit:                               ; preds = %_ZN2v811LocalVectorINS_7MessageEE9push_backERKNS_5LocalIS1_EE.exit
  %i.cl = ptrtoint ptr %.sroa.18.3 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit93
  %.sroa.046.1 = phi ptr [ null, %.loopexit93 ], [ %.sroa.046.3, %.loopexit.loopexit ] ; 7 uses
  %.sroa.10.1 = phi ptr [ null, %.loopexit93 ], [ %.sroa.10.3, %.loopexit.loopexit ] ; 3 uses
  %.sroa.18.1 = phi i64 [ 0, %.loopexit93 ], [ %i.cl, %.loopexit.loopexit ]
  %i.cm = ptrtoint ptr %.sroa.1068.1 to i64       ; 2 uses
  %i.cn = ptrtoint ptr %.sroa.063.1 to i64        ; 4 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.1068.1, %.sroa.063.1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread, label %bb.m

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread: ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr null, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.cq, ptr %i.cr, align 8
  br label %_ZN2v811LocalVectorINS_6ModuleEEC2ERKS2_.exit.i

bb.m:                                             ; preds = %.loopexit
  %i.cs = icmp ugt i64 %i.co, 9223372036854775800
  br i1 %i.cs, label %bb.n, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i, !prof !11

bb.n:                                             ; preds = %bb.m
  call void @_ZSt28__throw_bad_array_new_lengthv() #45
  unreachable

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i: ; preds = %bb.m
  %i.ct = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #48 ; 7 uses
  store ptr %i.ct, ptr %0, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.co
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cv, ptr %i.cw, align 8
  %9 = add i64 %i.cm, -8
  %10 = sub i64 %9, %i.cn                         ; 2 uses
  %i.cx = lshr i64 %10, 3
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check163 = icmp ult i64 %10, 56
  %i.cz = ptrtoaddr ptr %i.ct to i64
  %i.da = sub i64 %i.cz, %i.cn
  %diff.check161 = icmp ult i64 %i.da, 32
  %or.cond198 = or i1 %min.iters.check163, %diff.check161
  br i1 %or.cond198, label %.lr.ph.i.i.i.i.i.i.i37.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i
  %n.vec166 = and i64 %i.cy, 4611686018427387900  ; 3 uses
  %i.db = shl i64 %n.vec166, 3                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ct, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %.sroa.063.1, i64 %i.db
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.de = shl i64 %index168, 3                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.ct, i64 %i.de ; 2 uses
  %next.gep170 = getelementptr i8, ptr %.sroa.063.1, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load171 = load <2 x i64>, ptr %next.gep170, align 8
  %wide.load172 = load <2 x i64>, ptr %i.df, align 8
  %i.dg = getelementptr i8, ptr %next.gep169, i64 16
  store <2 x i64> %wide.load171, ptr %next.gep169, align 8
  store <2 x i64> %wide.load172, ptr %i.dg, align 8
  %index.next173 = add nuw i64 %index168, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.dh, label %middle.block174, label %vector.body167, !llvm.loop !46

middle.block174:                                  ; preds = %vector.body167
  %cmp.n175 = icmp eq i64 %i.cy, %n.vec166
  br i1 %cmp.n175, label %_ZN2v811LocalVectorINS_6ModuleEEC2ERKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i37.preheader

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i, %middle.block174
  %.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.ct, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i ], [ %i.dc, %middle.block174 ]
  %.sroa.04.07.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.063.1, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i ], [ %i.dd, %middle.block174 ]
  br label %.lr.ph.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i37:                           ; preds = %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i37
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.sroa.04.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 2 uses
  %i.di = load i64, ptr %.sroa.04.07.i.i.i.i.i.i.i, align 8
  store i64 %i.di, ptr %.08.i.i.i.i.i.i.i, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %.sroa.1068.1
  br i1 %i.dl, label %_ZN2v811LocalVectorINS_6ModuleEEC2ERKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i37, !llvm.loop !47

_ZN2v811LocalVectorINS_6ModuleEEC2ERKS2_.exit.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i37, %middle.block174, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread
  %i.dm = phi ptr [ %i.cp, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread ], [ %i.cu, %middle.block174 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i37 ]
  %.0.lcssa.i.i.i.i.i.i.i38 = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread ], [ %i.dc, %middle.block174 ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i37 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i38, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.do = ptrtoint ptr %.sroa.10.1 to i64         ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.046.1 to i64        ; 4 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3.i = icmp eq ptr %.sroa.10.1, %.sroa.046.1
  br i1 %.not.i.i.i.i.i3.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread, label %bb.o

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread: ; preds = %_ZN2v811LocalVectorINS_6ModuleEEC2ERKS2_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr null, i64 %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  store ptr %i.ds, ptr %i.dt, align 8
  br label %_ZNSt4pairIN2v811LocalVectorINS0_6ModuleEEENS1_INS0_7MessageEEEEC2IRS3_RS5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISA_SB_EEEEOT_OT0_.exit

bb.o:                                             ; preds = %_ZN2v811LocalVectorINS_6ModuleEEC2ERKS2_.exit.i
  %i.du = icmp ugt i64 %i.dq, 9223372036854775800
  br i1 %i.du, label %bb.p, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @_ZSt28__throw_bad_array_new_lengthv() #45
  unreachable

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i: ; preds = %bb.o
  %i.dv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #48 ; 7 uses
  store ptr %i.dv, ptr %i.dn, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.dv, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dq
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dx, ptr %i.dy, align 8
  %11 = add i64 %i.do, -8
  %12 = sub i64 %11, %i.dp                        ; 2 uses
  %i.dz = lshr i64 %12, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %12, 56
  %i.eb = ptrtoaddr ptr %i.dv to i64
  %i.ec = sub i64 %i.eb, %i.dp
  %diff.check179 = icmp ult i64 %i.ec, 32
  %or.cond200 = or i1 %min.iters.check181, %diff.check179
  br i1 %or.cond200, label %.lr.ph.i.i.i.i.i.i4.i.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i
  %n.vec184 = and i64 %i.ea, 4611686018427387900  ; 3 uses
  %i.ed = shl i64 %n.vec184, 3                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dv, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %.sroa.046.1, i64 %i.ed
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph182
  %index186 = phi i64 [ 0, %vector.ph182 ], [ %index.next191, %vector.body185 ] ; 2 uses
  %i.eg = shl i64 %index186, 3                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  %next.gep188 = getelementptr i8, ptr %.sroa.046.1, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <2 x i64>, ptr %next.gep188, align 8
  %wide.load190 = load <2 x i64>, ptr %i.eh, align 8
  %i.ei = getelementptr i8, ptr %next.gep187, i64 16
  store <2 x i64> %wide.load189, ptr %next.gep187, align 8
  store <2 x i64> %wide.load190, ptr %i.ei, align 8
  %index.next191 = add nuw i64 %index186, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.ej, label %middle.block192, label %vector.body185, !llvm.loop !48

middle.block192:                                  ; preds = %vector.body185
  %cmp.n193 = icmp eq i64 %i.ea, %n.vec184
  br i1 %cmp.n193, label %_ZNSt4pairIN2v811LocalVectorINS0_6ModuleEEENS1_INS0_7MessageEEEEC2IRS3_RS5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISA_SB_EEEEOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i4.i.preheader

.lr.ph.i.i.i.i.i.i4.i.preheader:                  ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i, %middle.block192
  %.08.i.i.i.i.i.i5.i.ph = phi ptr [ %i.dv, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i ], [ %i.ee, %middle.block192 ]
  %.sroa.04.07.i.i.i.i.i.i6.i.ph = phi ptr [ %.sroa.046.1, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i ], [ %i.ef, %middle.block192 ]
  br label %.lr.ph.i.i.i.i.i.i4.i

.lr.ph.i.i.i.i.i.i4.i:                            ; preds = %.lr.ph.i.i.i.i.i.i4.i.preheader, %.lr.ph.i.i.i.i.i.i4.i
  %.08.i.i.i.i.i.i5.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i4.i ], [ %.08.i.i.i.i.i.i5.i.ph, %.lr.ph.i.i.i.i.i.i4.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i6.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i4.i ], [ %.sroa.04.07.i.i.i.i.i.i6.i.ph, %.lr.ph.i.i.i.i.i.i4.i.preheader ] ; 2 uses
  %i.ek = load i64, ptr %.sroa.04.07.i.i.i.i.i.i6.i, align 8
  store i64 %i.ek, ptr %.08.i.i.i.i.i.i5.i, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i, i64 8 ; 2 uses
  %i.en = icmp eq ptr %i.el, %.sroa.10.1
  br i1 %i.en, label %_ZNSt4pairIN2v811LocalVectorINS0_6ModuleEEENS1_INS0_7MessageEEEEC2IRS3_RS5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISA_SB_EEEEOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i4.i, !llvm.loop !49

_ZNSt4pairIN2v811LocalVectorINS0_6ModuleEEENS1_INS0_7MessageEEEEC2IRS3_RS5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISA_SB_EEEEOT_OT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i4.i, %middle.block192, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread
  %i.eo = phi ptr [ %i.dr, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread ], [ %i.dw, %middle.block192 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i4.i ]
  %.0.lcssa.i.i.i.i.i.i7.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_7MessageEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread ], [ %i.ee, %middle.block192 ], [ %i.em, %.lr.ph.i.i.i.i.i.i4.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i7.i, ptr %i.eo, align 8
  %.not.i.i.i.i = icmp eq ptr %.sroa.046.1, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_7MessageEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairIN2v811LocalVectorINS0_6ModuleEEENS1_INS0_7MessageEEEEC2IRS3_RS5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISA_SB_EEEEOT_OT0_.exit
  %i.ep = sub i64 %.sroa.18.1, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.1, i64 noundef %i.ep) #49
  br label %_ZN2v811LocalVectorINS_7MessageEED2Ev.exit

_ZN2v811LocalVectorINS_7MessageEED2Ev.exit:       ; preds = %_ZNSt4pairIN2v811LocalVectorINS0_6ModuleEEENS1_INS0_7MessageEEEEC2IRS3_RS5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISA_SB_EEEEOT_OT0_.exit, %bb.q
  %.not.i.i.i.i39 = icmp eq ptr %.sroa.063.1, null
  br i1 %.not.i.i.i.i39, label %_ZN2v811LocalVectorINS_6ModuleEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v811LocalVectorINS_7MessageEED2Ev.exit
  %i.eq = sub i64 %.sroa.1873.1, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.1, i64 noundef %i.eq) #49
  br label %_ZN2v811LocalVectorINS_6ModuleEED2Ev.exit

_ZN2v811LocalVectorINS_6ModuleEED2Ev.exit:        ; preds = %_ZN2v811LocalVectorINS_7MessageEED2Ev.exit, %bb.r
  %i.er = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i.i.i.i.i40 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i40, label %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN2v811LocalVectorINS_6ModuleEED2Ev.exit
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #49
  br label %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEED2Ev.exit.i

_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEED2Ev.exit.i: ; preds = %bb.s, %_ZN2v811LocalVectorINS_6ModuleEED2Ev.exit
  %i.ex = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt4pairIN2v88internal18DirectHandleVectorINS1_16SourceTextModuleEEENS2_INS1_15JSMessageObjectEEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEED2Ev.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #49
  br label %_ZNSt4pairIN2v88internal18DirectHandleVectorINS1_16SourceTextModuleEEENS2_INS1_15JSMessageObjectEEEED2Ev.exit

_ZNSt4pairIN2v88internal18DirectHandleVectorINS1_16SourceTextModuleEEENS2_INS1_15JSMessageObjectEEEED2Ev.exit: ; preds = %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void
}

declare void @_ZN2v88internal16SourceTextModule31GetStalledTopLevelAwaitMessagesEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"struct.std::pair.707") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN2v814ScriptCompiler22CompileUnboundInternalEPNS_7IsolateEPNS0_6SourceENS0_14CompileOptionsENS0_13NoCacheReasonE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca [2 x %"class.std::unique_ptr.2201"], align 16 ; 6 uses
  %5 = alloca %"class.v8::EnterV8NoScriptScope.728", align 8 ; 13 uses
  %6 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %7 = alloca %"struct.v8::internal::ScriptDetails", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.b, label %_ZN2v87Isolate17GetCurrentContextEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 31
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #44
  br label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i.i.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v87Isolate17GetCurrentContextEv.exit

_ZN2v87Isolate17GetCurrentContextEv.exit:         ; preds = %bb.a, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.07.0.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ null, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.s = load i64, ptr %i.r, align 8
  %i.t = ptrtoint ptr %0 to i64
  %i.u = add i64 %i.t, 560
  %i.v = inttoptr i64 %i.u to ptr                 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i, !prof !11

bb.d:                                             ; preds = %_ZN2v87Isolate17GetCurrentContextEv.exit
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #44
  br label %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i

_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i: ; preds = %bb.d, %_ZN2v87Isolate17GetCurrentContextEv.exit
  %.0.i.i.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.w, %_ZN2v87Isolate17GetCurrentContextEv.exit ] ; 3 uses
  %i.ab = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ac = add i64 %i.ab, 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.v, align 8
  store i64 %i.s, ptr %.0.i.i.i.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.ae, align 8
  store ptr %0, ptr %5, align 8
  %i.af = load ptr, ptr %i.v, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr %0, ptr %i.am, align 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZN2v820EnterV8NoScriptScopeINS_22InternalEscapableScopeEEC2IJNS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdEEEEPNS7_7IsolateEDpT_.exit, !prof !11

bb.e:                                             ; preds = %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #44
  br label %_ZN2v820EnterV8NoScriptScopeINS_22InternalEscapableScopeEEC2IJNS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdEEEEPNS7_7IsolateEDpT_.exit

_ZN2v820EnterV8NoScriptScopeINS_22InternalEscapableScopeEEC2IJNS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdEEEEPNS7_7IsolateEDpT_.exit: ; preds = %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i, %bb.e
  %.0.i.i.i5.i.i = phi ptr [ %i.as, %bb.e ], [ %i.ao, %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.au = ptrtoint ptr %.0.i.i.i5.i.i to i64
  %i.av = add i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.an, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.0.i.i.i5.i.i, align 8
  store ptr %.0.i.i.i5.i.i, ptr %i.at, align 8
  %i.ax = load ptr, ptr %i.am, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal13ObjectVisitor19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor20VisitIndirectPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19IndirectPointerSlotENS0_19IndirectPointerModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor21VisitProtectedPointerENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor21VisitProtectedPointerENS0_6TaggedINS0_13TrustedObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor29VisitTrustedPointerTableEntryENS0_6TaggedINS0_10HeapObjectEEENS0_19IndirectPointerSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor25VisitJSDispatchTableEntryENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer15VisitMapPointerENS_8internal6TaggedINS2_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %i.a) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer11VisitObjectENS_8internal6TaggedINS2_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::Tagged.1", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::ScopeInfo::LocalNamesRange", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::ScopeInfo::LocalNamesRange<v8::internal::Tagged<v8::internal::ScopeInfo>>::Iterator", align 8 ; 9 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.2193", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::DirectHandle.794", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.885", align 8 ; 5 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.968", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.968", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %.val63 = load i8, ptr %i.b, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %.val63 to i1
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 272
  br i1 %i.j, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %.fr = freeze i16 %i.n                          ; 8 uses
  %i.o = icmp ugt i16 %.fr, 127
  br i1 %i.o, label %switch.early.test, label %switch.lookup

switch.early.test:                                ; preds = %bb.c
  %switch.tableidx = add i16 %.fr, -248           ; 2 uses
  %i.p = icmp ult i16 %switch.tableidx, 39
  br i1 %i.p, label %switch.hole_check, label %bb.d

bb.d:                                             ; preds = %switch.hole_check, %switch.early.test
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store ptr %i.q, ptr %2, align 8
  %i.r = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %.fca.1.extract = extractvalue { ptr, i8 } %i.r, 1
  %i.s = trunc i8 %.fca.1.extract to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br i1 %i.s, label %bb.e, label %switch.lookup

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i16 %.fr, 140
  br i1 %i.t, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54.thread

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54: ; preds = %bb.f
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 248
  br i1 %i.ad, label %bb.g, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54.thread

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54.thread: ; preds = %bb.f, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEE9push_backERKNS0_12DirectHandleIS2_EE.exit

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54.thread
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 248
  br i1 %i.an, label %bb.g, label %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEE9push_backERKNS0_12DirectHandleIS2_EE.exit

bb.g:                                             ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 560 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 568
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %_ZN2v88internal6HandleINS0_12AccessorPairEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.av = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ap) #44
  br label %_ZN2v88internal6HandleINS0_12AccessorPairEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_12AccessorPairEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.ar, %bb.g ] ; 2 uses
  %i.aw = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.aq, align 8
  store i64 %1, ptr %.0.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not.i.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6HandleINS0_12AccessorPairEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  store i64 %i.aw, ptr %i.bb, align 8
  %i.be = load ptr, ptr %i.ba, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %i.ba, align 8
  br label %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEE9push_backERKNS0_12DirectHandleIS2_EE.exit

bb.j:                                             ; preds = %_ZN2v88internal6HandleINS0_12AccessorPairEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bg = load ptr, ptr %i.az, align 8            ; 7 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.k, label %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.381) #45
  unreachable

_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #48 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i64 %i.aw, ptr %i.bs, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bt = ptrtoaddr ptr %i.br to i64
  %11 = add i64 %i.bh, -8
  %12 = sub i64 %11, %i.bi                        ; 2 uses
  %i.bu = lshr i64 %12, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 56
  %i.bw = sub i64 %i.bt, %i.bi
  %diff.check = icmp ult i64 %i.bw, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bv, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.br, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bg, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.ca ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.bg, i64 %i.ca ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.cb = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep158, align 8, !alias.scope !446, !noalias !443
  %wide.load159 = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !446, !noalias !443
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !443, !noalias !446
  store <2 x i64> %wide.load159, ptr %i.cc, align 8, !alias.scope !443, !noalias !446
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader161

.lr.ph.i.i.i.i.i.i.i.preheader161:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader161, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader161 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader161 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.ce = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !446, !noalias !443
  store i64 %i.ce, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !443, !noalias !446
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !449

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.by, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bj) #49
  br label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12AccessorPairEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  store ptr %i.br, ptr %i.az, align 8
  store ptr %i.ch, ptr %i.ba, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.ci, ptr %i.bc, align 8
  br label %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEE9push_backERKNS0_12DirectHandleIS2_EE.exit

bb.m:                                             ; preds = %bb.e
  %i.cj = add i16 %.fr, -221
  %i.ck = icmp ult i16 %i.cj, 10
  br i1 %i.ck, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cl = add i64 %1, 15
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  store i64 %i.cn, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.co = call { ptr, i64 } @_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 3 uses
  store ptr %i.cp, ptr %5, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cr = extractvalue { ptr, i64 } %i.co, 1      ; 3 uses
  store i64 %i.cr, ptr %i.cq, align 8
  %i.cs = call { ptr, i64 } @_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1      ; 2 uses
  %i.cv = icmp ne ptr %i.cp, %i.ct
  %i.cw = icmp ne i64 %i.cr, %i.cu
  %.not3.i149 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %.not3.i149, label %.lr.ph, label %.critedge49

.lr.ph:                                           ; preds = %bb.n, %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit
  %i.cx = phi i64 [ %i.fa, %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit ], [ %i.cr, %bb.n ] ; 2 uses
  %i.cy = phi ptr [ %i.fb, %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit ], [ %i.cp, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  store i64 %i.cn, ptr %6, align 8
  %i.cz = load i64, ptr %i.cy, align 8            ; 3 uses
  %i.da = add i64 %i.cz, 23
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 8            ; 3 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = trunc nuw i64 %i.dd to i32
  %i.df = icmp slt i32 %i.de, 75
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.dg = trunc i64 %i.cx to i32
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit

bb.p:                                             ; preds = %.lr.ph
  %i.dh = add i64 %i.cz, 7
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i32, ptr %i.di monotonic, align 4, !noalias !450
  %i.dk = and i32 %i.dj, 15
  %i.dl = icmp eq i32 %i.dk, 5
  %i.dm = select i1 %i.dl, i64 56, i64 48
  %i.dn = icmp slt i64 %i.dc, 322122547200
  %i.do = lshr i64 %i.dc, 29
  %i.dp = and i64 %i.do, 4294967288
  %i.dq = select i1 %i.dn, i64 %i.dp, i64 322122547200
  %i.dr = add nuw nsw i64 %i.dm, %i.dq
  %i.ds = add i64 %i.cz, -1
  %sext.i.i.i.i = shl i64 %i.dr, 32
  %i.dt = ashr exact i64 %sext.i.i.i.i, 32
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = add i64 %i.dw, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = call noundef i32 @_ZN2v88internal20NameToIndexHashTable7IndexAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 %i.cx) #44
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit: ; preds = %bb.o, %bb.p
  %.0.i67 = phi i32 [ %i.dg, %bb.o ], [ %i.dz, %bb.p ]
  %i.ea = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo16ContextLocalModeEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %.0.i67) #44
  %i.eb = add i8 %i.ea, -1
  %i.ec = icmp ult i8 %i.eb, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br i1 %i.ec, label %.critedge47, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit
  %i.ed = call i64 @_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8            ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 560 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 568
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %bb.r, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit62, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.el = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ef) #44
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit62

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit62: ; preds = %bb.q, %bb.r
  %.0.i.i61 = phi ptr [ %i.el, %bb.r ], [ %i.eh, %bb.q ] ; 3 uses
  %i.em = ptrtoint ptr %.0.i.i61 to i64
  %i.en = add i64 %i.em, 8
  %i.eo = inttoptr i64 %i.en to ptr
  store ptr %i.eo, ptr %i.eg, align 8
  store i64 %i.ed, ptr %.0.i.i61, align 8
  %.val.i = load i8, ptr %i.b, align 8, !range !5, !noundef !6
  %i.ep = trunc nuw i8 %.val.i to i1
  store i32 484, ptr %i.a, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.0.i.i61, ptr %.sroa.485.0..sroa_idx, align 8
  br i1 %i.ep, label %_ZNSt8optionalIN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer9ErrorInfoEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit62
  store i8 1, ptr %i.b, align 8
  br label %_ZNSt8optionalIN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer9ErrorInfoEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer9ErrorInfoEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit62, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %switch.lookup

.critedge47:                                      ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit
  %i.eq = load i64, ptr %i.cq, align 8
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  store i64 %i.er, ptr %i.cq, align 8
  %i.es = load ptr, ptr %5, align 8               ; 2 uses
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = add i64 %i.et, 23
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = lshr i64 %i.ew, 32
  %i.ey = trunc nuw i64 %i.ex to i32
  %i.ez = icmp slt i32 %i.ey, 75
  br i1 %i.ez, label %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit, label %bb.t

bb.t:                                             ; preds = %.critedge47
  call void @_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator23advance_hashtable_indexEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.pre = load ptr, ptr %5, align 8
end_hunk_1
begin_hunk_2_@_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  store i64 %i.b, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = call i64 @_ZNK2v88internal9ScopeInfo23ContextInlinedLocalNameENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.k) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameENS0_16PtrComprCageBaseE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = add i64 %i.b, 7
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4, !noalias !464
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  %i.r = select i1 %i.q, i64 56, i64 48
  %i.s = icmp slt i64 %i.e, 322122547200
  %i.t = lshr i64 %i.e, 29
  %i.u = and i64 %i.t, 4294967288
  %i.v = select i1 %i.s, i64 %i.u, i64 322122547200
  %i.w = add nuw nsw i64 %i.r, %i.v
  %i.x = add i64 %i.b, -1
  %sext.i.i.i.i = shl i64 %i.w, 32
  %i.y = ashr exact i64 %sext.i.i.i.i, 32
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ae, align 8
  %i.af = trunc i64 %.sroa.01.0.copyload.i to i32
  %i.ag = shl nsw i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 40
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameENS0_16PtrComprCageBaseE.exit

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameENS0_16PtrComprCageBaseE.exit: ; preds = %bb.b, %bb.c
  %.sroa.03.0.i = phi i64 [ %i.l, %bb.b ], [ %i.ak, %bb.c ]
  ret i64 %.sroa.03.0.i
}

declare i64 @_ZN2v88internal10JSReceiver10class_nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer36FreezeEmbedderObjectAndVisitChildrenENS_8internal12DirectHandleINS2_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.v8::LocalVector.2390", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #44
  %.pre22 = load ptr, ptr %2, align 8             ; 4 uses
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %.pre22, %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.015.019 = phi ptr [ %i.k, %.lr.ph ], [ %.pre22, %bb.b ] ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.015.019, align 8
  %i.i = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.j = call fastcc noundef zeroext i1 @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer11VisitObjectENS_8internal6TaggedINS2_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 2 uses
  %i.l = icmp ne ptr %i.k, %i.g
  %or.cond.not = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load ptr, ptr %2, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.m = phi ptr [ %.pre22, %bb.a ], [ %.pre22, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 3 uses
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.j, %.loopexit.loopexit ]
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #49
  br label %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit

_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit:        ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN2v812_GLOBAL__N_124IsJSReceiverSafeToFreezeENS_8internal12InstanceTypeE(i16 noundef zeroext %0) unnamed_addr #17 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 1057, label %bb.c
    i16 303, label %bb.c
    i16 304, label %bb.c
    i16 1041, label %bb.c
    i16 2065, label %bb.c
    i16 2066, label %bb.c
    i16 2067, label %bb.c
    i16 2068, label %bb.c
    i16 2069, label %bb.c
    i16 2070, label %bb.c
    i16 2071, label %bb.c
    i16 2072, label %bb.c
    i16 2073, label %bb.c
    i16 2074, label %bb.c
    i16 2075, label %bb.c
    i16 2076, label %bb.c
    i16 2077, label %bb.c
    i16 2078, label %bb.c
    i16 2079, label %bb.c
    i16 2080, label %bb.c
    i16 2081, label %bb.c
    i16 2082, label %bb.c
    i16 2083, label %bb.c
    i16 2084, label %bb.c
    i16 2085, label %bb.c
    i16 2086, label %bb.c
    i16 2087, label %bb.c
    i16 2088, label %bb.c
    i16 2089, label %bb.c
    i16 2090, label %bb.c
    i16 2091, label %bb.c
    i16 2119, label %bb.c
    i16 300, label %bb.c
    i16 301, label %bb.c
    i16 2157, label %bb.c
    i16 302, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEE9push_backERKNS0_12DirectHandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.381) #45
  unreachable

_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #48 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i64 %i.a, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %2 = add i64 %i.i, -8
  %3 = sub i64 %2, %i.j                           ; 2 uses
  %i.v = lshr i64 %3, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.x = sub i64 %i.u, %i.j
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.ac = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !alias.scope !474, !noalias !471
  %wide.load6 = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !474, !noalias !471
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !471, !noalias !474
  store <2 x i64> %wide.load6, ptr %i.ad, align 8, !alias.scope !471, !noalias !474
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !474, !noalias !471
  store i64 %i.af, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !471, !noalias !474
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !477

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #49
  br label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.s, ptr %0, align 8
  store ptr %i.ai, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aj, ptr %i.d, align 8
  br label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_10JSReceiverEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret void
}

declare void @_ZN2v88internal11VisitObjectEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEEPNS0_13ObjectVisitorE(ptr noundef, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %.sroa.0.0.copyload.i32 = load i64, ptr %1, align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = urem i64 %.sroa.0.0.copyload.i32, %i.d   ; 5 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.i, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.k = icmp eq ptr %.sroa.025.0, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8
  %i.m = icmp eq i64 %i.j, %.sroa.0.0.copyload.i.i
  br i1 %i.m, label %_ZNKSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS6_10_Hash_nodeIS4_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !478

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = urem i64 %i.j, %i.o
  br label %.critedge

bb.f:                                             ; preds = %.thread31
  %i.q = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i32, %i.t
  %.sroa.0.0.copyload.i.i.i20.i.i = load i64, ptr %i.r, align 8
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i32, %.sroa.0.0.copyload.i.i.i20.i.i
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %_ZNKSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS6_10_Hash_nodeIS4_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.y = icmp eq i64 %.sroa.0.0.copyload.i32, %i.ad
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %.sroa.0.0.copyload.i32, %.sroa.0.0.copyload.i.i.i.i.i
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNKSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS6_10_Hash_nodeIS4_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !479

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.021.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.q, %bb.f ]
  %i.ab = load ptr, ptr %.021.i.i, align 8        ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = urem i64 %i.ad, %i.d
  %.not19.i.i = icmp eq i64 %i.ae, %i.e
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i, !llvm.loop !479

..loopexit_crit_edge22.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !479

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge22.i.i, %.thread31
  %i.af = phi i64 [ %i.p, %bb.e ], [ %i.e, %.thread31 ], [ %i.e, %..loopexit_crit_edge22.i.i ], [ %i.e, %.lr.ph.i.i ]
  %i.ag = phi i64 [ %i.o, %bb.e ], [ %i.d, %.thread31 ], [ %i.d, %..loopexit_crit_edge22.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.ah = phi ptr [ %i.n, %bb.e ], [ %i.c, %.thread31 ], [ %i.c, %..loopexit_crit_edge22.i.i ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i34 = phi i64 [ %i.j, %bb.e ], [ %.sroa.0.0.copyload.i32, %.thread31 ], [ %.sroa.0.0.copyload.i32, %..loopexit_crit_edge22.i.i ], [ %.sroa.0.0.copyload.i32, %.lr.ph.i.i ] ; 3 uses
  %i.ai = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #48 ; 9 uses
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.0.0.copyload.i34, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 noundef %i.ag, i64 noundef %i.b, i64 noundef 1) #44 ; 2 uses
  %i.am = extractvalue { i8, i64 } %i.al, 0
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ao = extractvalue { i8, i64 } %i.al, 1
  tail call void @_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ao)
  %i.ap = load i64, ptr %i.ah, align 8
  %i.aq = urem i64 %.sroa.0.0.copyload.i34, %i.ap
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.aq, %bb.i ], [ %i.af, %.critedge ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.0.0.copyload.i34, ptr %i.ar, align 8
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i17 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8
  store ptr %i.av, ptr %i.ai, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  store ptr %i.ai, ptr %i.aw, align 8
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  store ptr %i.ay, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.ax, align 8
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

end_hunk_2
