inline.NumInlined: 1729
inline.NumDeleted: 639
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE:bb.a
  %.sroa.04.0.copyload6.i = phi i8 [ %.sroa.04.0.copyload6.i.pre, %.thread._crit_edge ], [ %i.h, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 788
  store i32 -1, ptr %i.p, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit: ; preds = %.thread.thread, %bb.e
  %.pre-phi12.i = phi i32 [ %.pre11.i.pre-phi, %bb.e ], [ %.pre-phi1523, %.thread.thread ]
  %.sroa.04.0.i = phi i8 [ %.sroa.04.0.copyload6.i, %bb.e ], [ %i.b, %.thread.thread ] ; 3 uses
  %i.q = icmp samesign ult i8 %.sroa.04.0.i, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.s = zext nneg i8 %.sroa.04.0.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.v = xor i32 %.pre-phi12.i, -1
  %i.w = load i32, ptr %i.u, align 8
  %i.x = and i32 %i.w, %i.v
  store i32 %i.x, ptr %i.u, align 8
  br label %bb.g

_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10: ; preds = %bb.c, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 4
  %i.z = xor i32 %.sroa.0.0.copyload.i, -1
  %i.aa = and i32 %1, %i.z                        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit

bb.f:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10
  store i32 0, ptr %i.y, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, %bb.f
  %.sroa.02.0.i = phi i32 [ %1, %bb.f ], [ %i.aa, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10 ] ; 2 uses
  %i.ac = icmp ne i32 %.sroa.02.0.i, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.02.0.i, i1 true)
  %i.ae = trunc nuw nsw i32 %i.ad to i8           ; 2 uses
  tail call preserve_mostcc void @_ZN2v88internal4wasm16LiftoffAssembler13SpillRegisterENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit
  %.sroa.07.0 = phi i8 [ %.sroa.04.0.i, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit ], [ %i.ae, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit ]
  ret i8 %.sroa.07.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noundef i8 @_ZN2v88internal4wasm16LiftoffAssembler24SpillAdjacentFpRegistersENS1_14LiftoffRegListE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(824) %0, i32 %1) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler14set_num_localsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(824) initializes((436, 440)) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 %1, ptr %i.a, align 4
  %i.b = icmp ugt i32 %1, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal4wasmlsERSoNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2) local_unnamed_addr #0 {
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.36.0.extract.shift = lshr i64 %1, 32     ; 4 uses
  %.sroa.36.sroa.0.0.extract.trunc = trunc i64 %.sroa.36.0.extract.shift to i8 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %i.a = and i64 %.sroa.2.0.extract.shift, 255
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN2v88internal4wasm4nameENS1_9ValueKindE.kKindName, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #20
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %i.d) #20 ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) #20 ; 0 uses
  switch i8 %.sroa.0.0.extract.trunc, label %bb.d [
    i8 0, label %bb.a
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.a:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 3) #20 ; 0 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, -75
  %i.o = or disjoint i32 %i.n, 8
  store i32 %i.o, ptr %i.l, align 8
  %i.p = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) #20 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, -75
  %i.y = or disjoint i32 %i.x, 2
  store i32 %i.y, ptr %i.v, align 8
  br label %bb.e

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = icmp ult i8 %.sroa.36.sroa.0.0.extract.trunc, 16
  br i1 %i.z, label %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i, label %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i

_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i: ; preds = %bb.b
  %i.aa = and i64 %.sroa.36.0.extract.shift, 15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %i.aa
  br label %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit

_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i: ; preds = %bb.b
  %i.ac = icmp slt i8 %.sroa.36.sroa.0.0.extract.trunc, 32
  tail call void @llvm.assume(i1 %i.ac)
  %sext = shl i64 %.sroa.36.0.extract.shift, 56
  %i.ad = ashr exact i64 %sext, 53
  %i.ae = getelementptr i8, ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -128
  br label %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i, %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i
  %.sink9.in.i = phi ptr [ %i.af, %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i ], [ %i.ab, %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i ]
  %.sink9.i = load ptr, ptr %.sink9.in.i, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink9.i) #20
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink9.i, i64 noundef %i.ag) #20 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1) #20 ; 0 uses
  %tr.sh.diff = trunc nuw i64 %.sroa.36.0.extract.shift to i32
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %tr.sh.diff) #20
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

bb.e:                                             ; preds = %bb.c, %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit, %bb.a
  %.0 = phi ptr [ %i.q, %bb.a ], [ %0, %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit ], [ %i.aj, %bb.c ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE(ptr noundef nonnull align 8 dereferenceable(408), i64 noundef, ptr) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436), i8, i16 noundef zeroext) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare void @_ZN2v88internal4wasm12ParallelMove15TransferToStackEiRKNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(356), i32 noundef, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = icmp eq i64 %i.k, 1
  br i1 %i.n, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24 ; 9 uses
  %i.p = icmp eq ptr %i.d, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = sub i64 %i.c, %i.h                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  %i.s = sub i64 %i.h, %i.q
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 28
  %n.vec = and i64 %i.r, -32                      ; 5 uses
  %i.t = getelementptr i8, ptr %i.o, i64 %n.vec
  %i.u = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep13, align 1
  %wide.load14 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load14, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.r, -4                     ; 4 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %n.vec17
  %i.z = getelementptr i8, ptr %i.d, i64 %n.vec17
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.o, i64 %index18
  %next.gep20 = getelementptr i8, ptr %i.d, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.r, %n.vec17
  br i1 %cmp.n23, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.04.07.i.i.i.i.ph26 = ptrtoaddr ptr %.sroa.04.07.i.i.i.i.ph to i64 ; 2 uses
  %i.ab = sub i64 %i.c, %.sroa.04.07.i.i.i.i.ph26
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.prol ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ac = load i8, ptr %.sroa.04.07.i.i.i.i.prol, align 1
  store i8 %i.ac, ptr %.08.i.i.i.i.prol, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !58

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.08.i.i.i.i.unr = phi ptr [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.unr = phi ptr [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %i.af = sub i64 %.sroa.04.07.i.i.i.i.ph26, %i.c
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = load i8, ptr %.sroa.04.07.i.i.i.i, align 1
  store i8 %i.ah, ptr %.08.i.i.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1
  %i.ak = load i8, ptr %i.ai, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 2
  %i.an = load i8, ptr %i.al, align 1
  store i8 %i.an, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 3
  %i.aq = load i8, ptr %i.ao, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.at = load i8, ptr %i.ar, align 1
  store i8 %i.at, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 5
  %i.aw = load i8, ptr %i.au, align 1
  store i8 %i.aw, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 6
  %i.az = load i8, ptr %i.ax, align 1
  store i8 %i.az, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 7
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 7
  %i.bc = load i8, ptr %i.ba, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.bf = icmp eq ptr %i.bd, %i.b
  br i1 %i.bf, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !60

_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bg = ptrtoint ptr %i.b to i64
  %i.bh = sub i64 %i.bg, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bh
  store ptr %i.bi, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.bj, ptr %i.e, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal4wasm15LiftoffVarStateElET_S5_T0_.exit:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(224) ptr @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = sdiv exact i64 %i.h, 12
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %i.s = icmp ult i64 %i.q, 1537228672809129301
  br i1 %i.s, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = add nuw i64 %i.h, 4
  %i.u = and i64 %i.t, -8                         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.u) #20
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.e, %bb.f
  %i.ab = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = add i64 %i.ab, %i.u
  store i64 %i.ad, ptr %i.x, align 8
  store ptr %i.ac, ptr %i.k, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.h
  store ptr %i.ae, ptr %i.i, align 8
  %i.af = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.ac, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.af, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0810.i.i.i, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i, !llvm.loop !61

bb.g:                                             ; preds = %bb.b
  %i.aj = icmp sgt i64 %i.h, 12
  br i1 %i.aj, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
end_hunk_0
