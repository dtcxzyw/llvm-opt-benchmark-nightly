Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-regalloc?download=true
inline.NumInlined: 3627
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator13ForceAllocateINS0_8RegisterEEENS0_8compiler16AllocatedOperandERNS1_18RegisterFrameStateIT_EES8_PNS1_9ValueNodeE:bb.a
  %i.ab = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi45
  store ptr %3, ptr %i.ac, align 8
  %i.ad = or i16 %i.aa, %.pre-phi41
  store i16 %i.ad, ptr %i.y, align 2
  %i.ae = load ptr, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = or i16 %i.ag, %.pre-phi41
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %sum.shift.i24 = lshr i64 %i.aj, 40
  %i.ak = trunc i64 %sum.shift.i24 to i8
  %i.al = and i8 %i.ak, 7
  switch i8 %i.al, label %bb.l [
    i8 0, label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 5, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 6, label %bb.k
  ]

bb.h:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.i:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.j:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.k:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit
  unreachable

_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit, %bb.d, %bb.c, %bb.b, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE5blockES3_.exit
  %.pre-phi45.sink = phi i64 [ %i.l, %bb.d ], [ %i.l, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE5blockES3_.exit ], [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %.pre-phi45, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit ], [ %.pre-phi45, %bb.h ], [ %.pre-phi45, %bb.i ], [ %.pre-phi45, %bb.j ]
  %.0.i25.sink = phi i64 [ 288, %bb.d ], [ 144, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE5blockES3_.exit ], [ 64, %bb.b ], [ 80, %bb.c ], [ 144, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE7unblockES3_.exit ], [ 64, %bb.h ], [ 80, %bb.i ], [ 288, %bb.j ]
  %i.am = shl nuw nsw i64 %.pre-phi45.sink, 32
  %i.an = or disjoint i64 %.0.i25.sink, %i.am
  %.sroa.038.0 = or disjoint i64 %i.an, 5
  ret i64 %.sroa.038.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal6maglev32StraightForwardRegisterAllocator13ForceAllocateINS0_11XMMRegisterEEENS0_8compiler16AllocatedOperandERNS1_18RegisterFrameStateIT_EES8_PNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(132) %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 8 ; 2 uses
  %.not.i = icmp eq i8 %2, -1
  br i1 %.not.i, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit

_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit: ; preds = %bb.a
  %i.b = zext i16 %.sroa.0.0.copyload.i to i32
  %i.c = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext nneg i8 %2 to i32
  %i.e = shl nuw nsw i32 1, %i.d
  %i.f = and i32 %i.e, %i.b
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit

_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit: ; preds = %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit
  %i.g = zext nneg i8 %2 to i16
  %i.h = shl nuw i16 1, %i.g                      ; 2 uses
  %i.i = xor i16 %i.h, -1                         ; 2 uses
  %i.j = and i16 %.sroa.0.0.copyload.i, %i.i
  store i16 %i.j, ptr %i.a, align 8
  %.pre44 = zext nneg i8 %2 to i64
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit

_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread: ; preds = %bb.a, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = zext nneg i8 %2 to i64                   ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, %3
  %i.p = zext nneg i8 %2 to i16
  %i.q = shl nuw i16 1, %i.p                      ; 3 uses
  br i1 %i.o, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit, label %bb.g

_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit: ; preds = %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 130 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = or i16 %i.s, %i.q
  store i16 %i.t, ptr %i.r, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %sum.shift.i = lshr i64 %i.v, 40
  %i.w = trunc i64 %sum.shift.i to i8
  %i.x = and i8 %i.w, 7
  switch i8 %i.x, label %bb.f [
    i8 0, label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 5, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.d
    i8 6, label %bb.e
  ]

bb.b:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.c:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.d:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.e:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit
  unreachable

bb.g:                                             ; preds = %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator17DropRegisterValueINS0_11XMMRegisterEEEvRNS1_18RegisterFrameStateIT_EES6_b(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(132) %1, i8 %2, i1 noundef zeroext false)
  %.pre42 = xor i16 %i.q, -1
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit

_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit: ; preds = %bb.g, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit
  %.pre-phi45 = phi i64 [ %i.l, %bb.g ], [ %.pre44, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit ] ; 5 uses
  %.pre-phi43 = phi i16 [ %.pre42, %bb.g ], [ %i.i, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit ]
  %.pre-phi41 = phi i16 [ %i.q, %bb.g ], [ %i.h, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 130 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = and i16 %i.z, %.pre-phi43
  %i.ab = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi45
  store ptr %3, ptr %i.ac, align 8
  %i.ad = or i16 %i.aa, %.pre-phi41
  store i16 %i.ad, ptr %i.y, align 2
  %i.ae = load ptr, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = or i16 %i.ag, %.pre-phi41
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %sum.shift.i24 = lshr i64 %i.aj, 40
  %i.ak = trunc i64 %sum.shift.i24 to i8
  %i.al = and i8 %i.ak, 7
  switch i8 %i.al, label %bb.l [
    i8 0, label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 5, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 6, label %bb.k
  ]

bb.h:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.i:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.j:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit
  br label %_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit

bb.k:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit
  unreachable

_ZNK2v88internal6maglev9ValueNode24GetMachineRepresentationEv.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit, %bb.d, %bb.c, %bb.b, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit
  %.pre-phi45.sink = phi i64 [ %i.l, %bb.d ], [ %i.l, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit ], [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %.pre-phi45, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit ], [ %.pre-phi45, %bb.h ], [ %.pre-phi45, %bb.i ], [ %.pre-phi45, %bb.j ]
  %.0.i25.sink = phi i64 [ 288, %bb.d ], [ 144, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE5blockES3_.exit ], [ 64, %bb.b ], [ 80, %bb.c ], [ 144, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE7unblockES3_.exit ], [ 64, %bb.h ], [ 80, %bb.i ], [ 288, %bb.j ]
  %i.am = shl nuw nsw i64 %.pre-phi45.sink, 32
  %i.an = or disjoint i64 %.0.i25.sink, %i.am
  %.sroa.038.0 = or disjoint i64 %i.an, 5
  ret i64 %.sroa.038.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator26AssignArbitraryTemporariesINS0_8RegisterEEEvRNS1_18RegisterFrameStateIT_EEPNS1_8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 48
  %i.d = trunc i64 %i.c to i8
  %i.e = and i8 %i.d, 3                           ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.h = load ptr, ptr %2, align 8                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = trunc i64 %i.b to i16
  %i.l = add i16 %i.k, -67
  %i.m = icmp ult i16 %i.l, 231
  br i1 %i.m, label %bb.c, label %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN2v88internal11RegListBaseINS0_8RegisterEEC2ESt16initializer_listIS2_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i64 %i.p, 41
  %i.t = trunc i64 %i.s to i8
  %i.u = and i8 %i.t, 63                          ; 2 uses
  %i.v = icmp samesign ult i8 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext nneg i8 %i.u to i16
  %i.x = shl nuw i16 1, %i.w
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEEC2ESt16initializer_listIS2_E.exit.i

_ZN2v88internal11RegListBaseINS0_8RegisterEEC2ESt16initializer_listIS2_E.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.08.3.i = phi i16 [ %i.x, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i, 515396075520
  %or.cond.i = icmp eq i64 %i.y, 240518168576
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit

bb.e:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEEC2ESt16initializer_listIS2_E.exit.i
  %i.z = lshr i64 %.sroa.0.0.copyload.i.i, 41
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 63                        ; 2 uses
  %i.ac = icmp samesign ult i8 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = zext nneg i8 %i.ab to i16
  %i.ae = shl nuw i16 1, %i.ad
  %i.af = or i16 %.sroa.08.3.i, %i.ae
  br label %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit

_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit: ; preds = %bb.b, %_ZN2v88internal11RegListBaseINS0_8RegisterEEC2ESt16initializer_listIS2_E.exit.i, %bb.e
  %.sroa.08.1.i = phi i16 [ 0, %bb.b ], [ %.sroa.08.3.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEEC2ESt16initializer_listIS2_E.exit.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 130 ; 5 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ah, align 2 ; 2 uses
  %i.ai = load i16, ptr %i.ag, align 8
  %i.aj = or i16 %.sroa.0.0.copyload.i, %.sroa.08.1.i
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %i.ai, %i.ak                    ; 4 uses
  %.not4243 = icmp eq i16 %i.al, 0
  br i1 %.not4243, label %.lr.ph.preheader, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader: ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit
  %neg84 = sub i16 0, %i.al
  %i.am = and i16 %i.al, %neg84                   ; 2 uses
  %i.an = or i16 %.sroa.0.0.copyload.i, %i.am     ; 2 uses
  %i.ao = or i16 %i.am, %i.j                      ; 2 uses
  %i.ap = add nsw i32 %i.g, -1                    ; 2 uses
  %.not85 = icmp eq i32 %i.ap, 0
  br i1 %.not85, label %.thread70, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit
  %neg = sub i16 0, %i.av
  %i.aq = and i16 %i.av, %neg                     ; 2 uses
  %i.ar = or i16 %5, %i.aq                        ; 2 uses
  %i.as = or i16 %i.aq, %4                        ; 2 uses
  %i.at = add nsw i32 %3, -1                      ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %.thread70, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit
  %3 = phi i32 [ %i.at, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.ap, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
  %4 = phi i16 [ %i.as, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.ao, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
  %5 = phi i16 [ %i.ar, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.an, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.sroa.0.04587 = phi i16 [ %i.av, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.al, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.0304686 = phi i32 [ %3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.g, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ]
  %i.au = add i16 %.sroa.0.04587, -1
  %i.av = and i16 %i.au, %.sroa.0.04587           ; 4 uses
  %.not42 = icmp eq i16 %i.av, 0
  br i1 %.not42, label %bb.f, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit

.thread70:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader
  %.lcssa81 = phi i16 [ %i.an, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ], [ %i.ar, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ]
  %.lcssa79 = phi i16 [ %i.ao, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ], [ %i.as, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ]
  store i16 %.lcssa81, ptr %i.ah, align 2
  br label %._crit_edge54

bb.f:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit
  store i16 %5, ptr %i.ah, align 2
  %i.aw = icmp sgt i32 %.0304686, 1
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge54

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit, %bb.f
  %.169 = phi i32 [ %3, %bb.f ], [ %i.g, %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit ]
  %.sroa.038.168 = phi i16 [ %4, %bb.f ], [ %i.j, %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit
  %.03152 = phi i32 [ %i.be, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.038.251 = phi i16 [ %.sroa.038.3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ], [ %.sroa.038.168, %.lr.ph.preheader ] ; 2 uses
  %i.ax = tail call i8 @_ZN2v88internal6maglev32StraightForwardRegisterAllocator21FreeUnblockedRegisterINS0_8RegisterEEET_NS0_11RegListBaseIS5_EE(ptr noundef nonnull align 8 dereferenceable(424) %0, i16 %.sroa.08.1.i) ; 3 uses
  %.not.i.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ay = zext nneg i8 %i.ax to i16
  %i.az = shl nuw i16 1, %i.ay                    ; 2 uses
  %i.ba = load i16, ptr %i.ah, align 2
  %i.bb = or i16 %i.ba, %i.az
  store i16 %i.bb, ptr %i.ah, align 2
  %i.bc = icmp samesign ult i8 %i.ax, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = or i16 %i.az, %.sroa.038.251
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit: ; preds = %.lr.ph, %bb.g
  %.sroa.038.3 = phi i16 [ %i.bd, %bb.g ], [ %.sroa.038.251, %.lr.ph ] ; 2 uses
  %i.be = add nuw nsw i32 %.03152, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %.169
  br i1 %exitcond.not, label %._crit_edge54, label %.lr.ph, !llvm.loop !91

._crit_edge54:                                    ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit, %.thread70, %bb.f
  %.sroa.038.2.lcssa = phi i16 [ %4, %bb.f ], [ %.lcssa79, %.thread70 ], [ %.sroa.038.3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ]
  %i.bf = load ptr, ptr %2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i16 %.sroa.038.2.lcssa, ptr %i.bg, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator15HoistLoopSpillsEPNS1_10BasicBlockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = load i64, ptr %i.b, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.k = icmp eq i32 %i.j, %i.d
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.k, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = shl i64 %i.n, 48
  %i.p = ashr exact i64 %i.o, 48
  %i.q = zext i32 %i.d to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.w, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.e                     ; 2 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.d
  br i1 %i.an, label %.thread33.i.i, label %bb.f, !prof !24

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not44.i.i = icmp eq i16 %i.as, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i, !prof !20

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !7

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ao, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %i.ax = icmp eq ptr %i.av, null                 ; 2 uses
  %i.ay = icmp eq ptr %i.av, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ax, %i.ay
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  %i.az = load i8, ptr %i.av, align 1
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  br i1 %i.ay, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit, !prof !20

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #25
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ax, label %.loopexit56, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  %i.bb = load i8, ptr %i.av, align 1
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.102) #25
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit: ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %.idx = shl nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %.idx
  %.not62 = icmp eq i32 %i.bg, 0
  br i1 %.not62, label %.loopexit56, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 266 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %.loopexit
  %.02463 = phi ptr [ %i.be, %.lr.ph ], [ %i.fl, %.loopexit ] ; 2 uses
  %i.bp = load ptr, ptr %.02463, align 8          ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load i16, ptr %i.br, align 2            ; 3 uses
  %.0.i.not = icmp eq i16 %i.bs, 0
  br i1 %.0.i.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %sum.shift.i = lshr i64 %i.bu, 40
  %i.bv = trunc i64 %sum.shift.i to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = add nsw i8 %i.bw, -3
  %i.by = icmp ult i8 %i.bx, 2
  br i1 %i.by, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader: ; preds = %bb.n
  %.sroa.0.0.copyload.i.i30.pre = load i16, ptr %i.bk, align 8
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader: ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.pre = load i16, ptr %i.bn, align 8
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i.i70, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %.sroa.0.0.copyload.i.i.pre, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.sroa.043.061 = phi i16 [ %i.dr, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %i.bs, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZZN2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIRZNS1_32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEE3$_1EEvNS1_17VirtualObjectListEOT_ENKUlRPNS1_9ValueNodeEE_clESE_":bb.a
  %i.df = icmp eq i64 %i.de, 0
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = trunc i64 %i.dd to i16
  %i.dh = and i16 %i.dg, 15
  %i.di = shl nuw i16 1, %i.dh
  %i.dj = load i16, ptr %i.ct, align 2
  %i.dk = or i16 %i.dj, %i.di
  store i16 %i.dk, ptr %i.ct, align 2
  %i.dl = load i64, ptr %i.l, align 8
  %i.dm = and i64 %i.dl, 7696581394432
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit8.i15, label %"_ZZN2v88internal6maglev32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEENK3$_1clEPNS1_9ValueNodeE.exit18"

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit8.i15: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.i14
  %i.do = load ptr, ptr %i.cs, align 8, !nonnull !23, !align !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 2 uses
  %i.dq = load ptr, ptr %i.ch, align 8, !nonnull !23, !align !25
  %i.dr = load ptr, ptr %i.dq, align 8
  %.sroa.0.0.copyload.i.i6.i16 = load i64, ptr %i.dr, align 8 ; 2 uses
  %i.ds = lshr i64 %.sroa.0.0.copyload.i.i6.i16, 32
  %i.dt = and i64 %.sroa.0.0.copyload.i.i6.i16, 1030792151040
  %i.du = icmp eq i64 %i.dt, 0
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = trunc i64 %i.ds to i16
  %i.dw = and i16 %i.dv, 15
  %i.dx = shl nuw i16 1, %i.dw
  %i.dy = load i16, ptr %i.dp, align 2
  %i.dz = or i16 %i.dx, %i.dy
  store i16 %i.dz, ptr %i.dp, align 2
  br label %"_ZZN2v88internal6maglev32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEENK3$_1clEPNS1_9ValueNodeE.exit18"

"_ZZN2v88internal6maglev32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEENK3$_1clEPNS1_9ValueNodeE.exit18": ; preds = %bb.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE3setES2_.exit.i17, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.i14, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit8.i15
  %i.ea = load ptr, ptr %i.ch, align 8, !nonnull !23, !align !25 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.ec, ptr %i.ea, align 8
  br label %bb.k

bb.k:                                             ; preds = %"_ZN2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIRZNS1_32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEE3$_1EEvNS1_17VirtualObjectListEOT_.exit", %"_ZZN2v88internal6maglev32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEENK3$_1clEPNS1_9ValueNodeE.exit", %bb.b, %bb.b, %bb.b, %_ZN2v88internal6maglev9ValueNode16UnwrapIdentitiesEv.exit, %"_ZZN2v88internal6maglev32StraightForwardRegisterAllocator20SaveRegisterSnapshotEPNS1_8NodeBaseEENK3$_1clEPNS1_9ValueNodeE.exit18"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #21

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr nofree noundef readonly captures(none) %0, i32 %.0.val.0.val, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp ugt i32 %i.d, %.0.val.0.val
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i8, ptr %1, align 8
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = select i1 %i.h, i1 %i.k, i1 false
  br i1 %i.l, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.n, null
  br i1 %.not25.i, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i, label %_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not26.i = icmp eq ptr %i.p, %i.r
  br i1 %.not26.i, label %_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i, %bb.d
  %.01327.i = phi ptr [ %i.aa, %bb.d ], [ %i.p, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i ] ; 2 uses
  %i.s = load ptr, ptr %.01327.i, align 8         ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = and i64 %i.v, 65534
  %i.x = icmp eq i64 %i.w, 64
  %i.y = and i64 %i.v, 65535
  %i.z = icmp eq i64 %i.y, 67
  %or.cond.i = or i1 %i.x, %i.z
  br i1 %or.cond.i, label %bb.d, label %_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.01327.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i, label %_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit, label %.lr.ph.i

_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit: ; preds = %bb.d, %bb.c, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i
  %.3.in.in.i = phi ptr [ %i.n, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i ], [ %i.b, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i ], [ %i.b, %bb.d ], [ %i.s, %bb.c ]
  %.3.in.i = load ptr, ptr %.3.in.in.i, align 8
  %.3.i = load i32, ptr %.3.in.i, align 8
  %i.ab = icmp ult i32 %i.f, %.3.i
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %1, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit, label %bb.f

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 7
  %or.cond.not = icmp eq i32 %i.ak, 5
  br i1 %or.cond.not, label %bb.i, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8
  br label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10: ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9, label %_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9: ; preds = %bb.f, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10
  %i.at = phi i32 [ %i.aq, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10 ], [ %i.an, %bb.f ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not22.i.i, label %_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9, %bb.h
  %.01223.i.i = phi ptr [ %i.be, %bb.h ], [ %i.av, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9 ] ; 2 uses
  %i.ay = load ptr, ptr %.01223.i.i, align 8      ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 65535
  %i.bd = icmp eq i64 %i.bc, 67
  br i1 %i.bd, label %bb.h, label %_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i.i, label %_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit, label %.lr.ph.i.i

_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit: ; preds = %bb.h, %bb.g, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10
  %i.bf = phi i32 [ %i.aq, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10 ], [ %i.at, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9 ], [ %i.at, %bb.g ], [ %i.at, %bb.h ]
  %.0.in.in.i = phi ptr [ %i.as, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i10 ], [ %i.b, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread.i9 ], [ %i.b, %bb.h ], [ %i.ay, %bb.g ]
  %.0.in.i = load ptr, ptr %.0.in.in.i, align 8
  %.0.i = load i32, ptr %.0.in.i, align 8
  %i.bg = icmp ule i32 %.0.i, %i.bf
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit, %_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit, %_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit
  %.0 = phi i1 [ %i.ab, %_ZNK2v88internal6maglev10BasicBlock17FirstNonGapMoveIdEv.exit ], [ %i.bg, %_ZNK2v88internal6maglev10BasicBlock8first_idEv.exit ], [ false, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = distinct !{!5, !21}
!6 = distinct !{!6, !21}
!7 = distinct !{!7, !21}
!8 = distinct !{!8, !21}
!9 = distinct !{null, null}
!10 = distinct !{!10, !21}
!11 = distinct !{null, null}
!12 = distinct !{!12, !21}
!13 = distinct !{null, null}
!14 = distinct !{!14, !21}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{i64 8}
!26 = !{i64 2}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, i1 true, !"_ZN2v84base8ReversedINS_8internal6maglev5GraphEEEDaRT_"}
!30 = distinct !{!30, !29, !"_ZN2v84base8ReversedINS_8internal6maglev5GraphEEEDaRT_: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZNK2v88internal6maglev5Graph6rbeginEv"}
!32 = distinct !{!32, !31, !"_ZNK2v88internal6maglev5Graph6rbeginEv: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZNK2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE6rbeginEv"}
!34 = distinct !{!34, !33, !"_ZNK2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE6rbeginEv: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZNK2v88internal6maglev5Graph4rendEv"}
!36 = distinct !{!36, !35, !"_ZNK2v88internal6maglev5Graph4rendEv: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZNK2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4rendEv"}
!38 = distinct !{!38, !37, !"_ZNK2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4rendEv: argument 0"}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = !{!34, !32, !30}
!46 = !{!38, !36, !30}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!50 = distinct !{!50, !48, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!52 = distinct !{!52, !51, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!53 = distinct !{!53, !51, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = !{!50, !49}
!60 = !{!53, !52}
!61 = !{!56, !55}
!62 = distinct !{!62, !64}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.peeled.count", i32 1}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!67 = distinct !{!67, !66, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!68 = distinct !{!68, !66, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!69 = !{!68, !67}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, i1 true, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv"}
!72 = distinct !{!72, !71, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNK2v88internal9BitVector5beginEv"}
!74 = distinct !{!74, !73, !"_ZNK2v88internal9BitVector5beginEv: argument 0"}
!75 = !{!74, !72}
!76 = !{!72}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!80 = distinct !{!80, !79, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!81 = distinct !{!81, !79, !"_ZSt19__relocate_object_aIN2v88internal6maglev32StraightForwardRegisterAllocator13SpillSlotInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!82 = distinct !{!82, !21}
!83 = !{!81, !80}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21, !89, !90}
!86 = distinct !{!86, !21, !90, !89}
!87 = distinct !{!87, !21, !89, !90}
!88 = distinct !{!88, !21, !90, !89}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = distinct !{!91, !21}
!92 = distinct !{!92, !21}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, i1 true, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv"}
!104 = distinct !{!104, !103, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZNK2v88internal9BitVector5beginEv"}
!106 = distinct !{!106, !105, !"_ZNK2v88internal9BitVector5beginEv: argument 0"}
!107 = !{!106, !104}
!108 = !{!104}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, i1 true, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv"}
!111 = distinct !{!111, !110, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZNK2v88internal9BitVector5beginEv"}
!113 = distinct !{!113, !112, !"_ZNK2v88internal9BitVector5beginEv: argument 0"}
!114 = !{!113, !111}
!115 = !{!111}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, i1 true, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv"}
!118 = distinct !{!118, !117, !"_ZNK2v88internal8compiler21BytecodeLivenessState5beginEv: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNK2v88internal9BitVector5beginEv"}
!120 = distinct !{!120, !119, !"_ZNK2v88internal9BitVector5beginEv: argument 0"}
!121 = !{!120, !118}
!122 = !{!118}
!123 = distinct !{!123, !21}
end_hunk_1
