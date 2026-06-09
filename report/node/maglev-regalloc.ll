inline.NumInlined: 3627
inline.NumDeleted: 1327
begin_hunk_0_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator13ForceAllocateINS0_11XMMRegisterEEENS0_8compiler16AllocatedOperandERNS1_18RegisterFrameStateIT_EES8_PNS1_9ValueNodeE:bb.a

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
  %neg = sub i16 0, %i.ay
  %i.aq = and i16 %i.ay, %neg                     ; 2 uses
  %i.ar = or i16 %i.aw, %i.aq                     ; 2 uses
  %i.as = or i16 %i.aq, %i.av                     ; 2 uses
  %i.at = add nsw i32 %i.au, -1                   ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %.thread70, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit
  %i.au = phi i32 [ %i.at, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.ap, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
  %i.av = phi i16 [ %i.as, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.ao, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
  %i.aw = phi i16 [ %i.ar, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.an, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.sroa.0.04587 = phi i16 [ %i.ay, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.al, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.0304686 = phi i32 [ %i.au, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ], [ %i.g, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ]
  %i.ax = add i16 %.sroa.0.04587, -1
  %i.ay = and i16 %i.ax, %.sroa.0.04587           ; 4 uses
  %.not42 = icmp eq i16 %i.ay, 0
  br i1 %.not42, label %bb.f, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit

.thread70:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader
  %.lcssa81 = phi i16 [ %i.an, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ], [ %i.ar, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ]
  %.lcssa79 = phi i16 [ %i.ao, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ], [ %i.as, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ]
  store i16 %.lcssa81, ptr %i.ah, align 2
  br label %._crit_edge54

bb.f:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit
  store i16 %i.aw, ptr %i.ah, align 2
  %i.az = icmp sgt i32 %.0304686, 1
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge54

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit, %bb.f
  %.169 = phi i32 [ %i.au, %bb.f ], [ %i.g, %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit ]
  %.sroa.038.168 = phi i16 [ %i.av, %bb.f ], [ %i.j, %_ZN2v88internal6maglev12_GLOBAL__N_120GetReservedRegistersINS0_8RegisterEEENS0_11RegListBaseIT_EEPNS1_8NodeBaseE.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit
  %.03152 = phi i32 [ %i.bh, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.038.251 = phi i16 [ %.sroa.038.3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ], [ %.sroa.038.168, %.lr.ph.preheader ] ; 2 uses
  %i.ba = tail call i8 @_ZN2v88internal6maglev32StraightForwardRegisterAllocator21FreeUnblockedRegisterINS0_8RegisterEEET_NS0_11RegListBaseIS5_EE(ptr noundef nonnull align 8 dereferenceable(424) %0, i16 %.sroa.08.1.i) ; 3 uses
  %.not.i.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bb = zext nneg i8 %i.ba to i16
  %i.bc = shl nuw i16 1, %i.bb                    ; 2 uses
  %i.bd = load i16, ptr %i.ah, align 2
  %i.be = or i16 %i.bd, %i.bc
  store i16 %i.be, ptr %i.ah, align 2
  %i.bf = icmp samesign ult i8 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = or i16 %i.bc, %.sroa.038.251
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit: ; preds = %.lr.ph, %bb.g
  %.sroa.038.3 = phi i16 [ %i.bg, %bb.g ], [ %.sroa.038.251, %.lr.ph ] ; 2 uses
  %i.bh = add nuw nsw i32 %.03152, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, %.169
  br i1 %exitcond.not, label %._crit_edge54, label %.lr.ph, !llvm.loop !82

._crit_edge54:                                    ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit, %.thread70, %bb.f
  %.sroa.038.2.lcssa = phi i16 [ %i.av, %bb.f ], [ %.lcssa79, %.thread70 ], [ %.sroa.038.3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ]
  %i.bi = load ptr, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 %.sroa.038.2.lcssa, ptr %i.bj, align 2
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
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %sext.i = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext.i, 48
  %i.p = zext i32 %i.d to i64
  %i.q = xor i64 %i.o, %i.p
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw nsw i128 %i.r, 8779197792823184629 ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64                   ; 2 uses
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.v, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1      ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.aa, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.af, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.af, %bb.e ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.e                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %i.d
  br i1 %i.am, label %.thread33.i.i, label %bb.f, !prof !25

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.047.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !83

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %i.aw = icmp eq ptr %i.au, null                 ; 2 uses
  %i.ax = icmp eq ptr %i.au, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  br i1 %i.ax, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #25
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.aw, label %.loopexit56, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  %i.ba = load i8, ptr %i.au, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.102) #25
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.idx = shl nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %.idx
  %.not62 = icmp eq i32 %i.bf, 0
  br i1 %.not62, label %.loopexit56, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 266 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %.loopexit
  %.02463 = phi ptr [ %i.bd, %.lr.ph ], [ %i.fk, %.loopexit ] ; 2 uses
  %i.bo = load ptr, ptr %.02463, align 8          ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load i16, ptr %i.bq, align 2            ; 3 uses
  %.0.i.not = icmp eq i16 %i.br, 0
  br i1 %.0.i.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %sum.shift.i = lshr i64 %i.bt, 40
  %i.bu = trunc i64 %sum.shift.i to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = add nsw i8 %i.bv, -3
  %i.bx = icmp ult i8 %i.bw, 2
  br i1 %i.bx, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader: ; preds = %bb.n
  %.sroa.0.0.copyload.i.i30.pre = load i16, ptr %i.bj, align 8
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader: ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.pre = load i16, ptr %i.bm, align 8
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i.i70, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %.sroa.0.0.copyload.i.i.pre, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.sroa.043.061 = phi i16 [ %i.dq, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %i.br, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.043.061, i1 true) ; 3 uses
  %i.bz = shl nuw i16 1, %i.by                    ; 2 uses
  %i.ca = load i16, ptr %i.bl, align 2
  %i.cb = xor i16 %i.bz, -1                       ; 3 uses
  %i.cc = and i16 %i.ca, %i.cb
  store i16 %i.cc, ptr %i.bl, align 2
  %i.cd = zext i16 %.sroa.0.0.copyload.i.i to i32
  %i.ce = zext nneg i16 %i.by to i32
  %i.cf = shl nuw nsw i32 1, %i.ce
  %i.cg = and i32 %i.cf, %i.cd
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %bb.o, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

bb.o:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit
  %i.ch = zext nneg i16 %i.by to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.bk, align 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp eq i32 %i.cp, %i.cm
  br i1 %i.cq, label %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i, label %bb.p

_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i: ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = and i16 %i.cs, %i.cb
  store i16 %i.ct, ptr %i.cr, align 8
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = and i64 %i.cv, 7696581394432
  %i.cx = icmp eq i64 %i.cw, 6597069766656
  br i1 %i.cx, label %bb.q, label %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i32

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i32: ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 8
  %i.da = and i16 %i.cz, %i.cb
  store i16 %i.da, ptr %i.cy, align 8
  %i.db = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load i16, ptr %i.dc, align 2
  %.0.i27.not.i = icmp eq i16 %i.dd, 0
  br i1 %.0.i27.not.i, label %bb.r, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i

bb.r:                                             ; preds = %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = and i64 %i.df, 7                        ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 2
  %i.di = icmp samesign ugt i64 %i.dg, 4
  %i.dj = and i64 %i.df, 8
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = and i1 %i.di, %i.dk
  %i.dm = select i1 %i.dh, i1 true, i1 %i.dl
  br i1 %i.dm, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator17AllocateSpillSlotEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull readonly %i.cj)
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i

_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i32, %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_11XMMRegisterE.exit.i
  %i.dn = load i16, ptr %i.bm, align 8
  %i.do = or i16 %i.dn, %i.bz                     ; 2 uses
  store i16 %i.do, ptr %i.bm, align 8
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit: ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit
  %.sroa.0.0.copyload.i.i70 = phi i16 [ %i.do, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE9AddToFreeES3_.exit.i ], [ %.sroa.0.0.copyload.i.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ]
  %i.dp = add i16 %.sroa.043.061, -1
  %i.dq = and i16 %i.dp, %.sroa.043.061           ; 2 uses
  %.not53 = icmp eq i16 %i.dq, 0
  br i1 %.not53, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit
  %.sroa.0.0.copyload.i.i30 = phi i16 [ %.sroa.0.0.copyload.i.i3068, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit ], [ %.sroa.0.0.copyload.i.i30.pre, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 2 uses
  %.sroa.0.060 = phi i16 [ %i.fj, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit ], [ %i.br, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.preheader ] ; 3 uses
  %i.dr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.060, i1 true) ; 3 uses
  %i.ds = shl nuw i16 1, %i.dr                    ; 2 uses
  %i.dt = load i16, ptr %i.bi, align 2
  %i.du = xor i16 %i.ds, -1                       ; 3 uses
  %i.dv = and i16 %i.dt, %i.du
  store i16 %i.dv, ptr %i.bi, align 2
  %i.dw = zext i16 %.sroa.0.0.copyload.i.i30 to i32
  %i.dx = zext nneg i16 %i.dr to i32
  %i.dy = shl nuw nsw i32 1, %i.dx
  %i.dz = and i32 %i.dy, %i.dw
  %.not.i31 = icmp eq i32 %i.dz, 0
  br i1 %.not.i31, label %bb.t, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

bb.t:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit
  %i.ea = zext nneg i16 %i.dr to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8            ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %i.bk, align 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp eq i32 %i.ei, %i.ef
  br i1 %i.ej, label %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i, label %bb.u

_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i: ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 48 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 8
  %i.em = and i16 %i.el, %i.du
  store i16 %i.em, ptr %i.ek, align 8
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = and i64 %i.eo, 7696581394432
  %i.eq = icmp eq i64 %i.ep, 6597069766656
  br i1 %i.eq, label %bb.v, label %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i35

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i35: ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 48 ; 2 uses
  %i.es = load i16, ptr %i.er, align 8
  %i.et = and i16 %i.es, %i.du
  store i16 %i.et, ptr %i.er, align 8
  %i.eu = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load i16, ptr %i.ev, align 2
  %.0.i27.not.i37 = icmp eq i16 %i.ew, 0
  br i1 %.0.i27.not.i37, label %bb.w, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i

bb.w:                                             ; preds = %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ey = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ez = and i64 %i.ey, 7                        ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 2
  %i.fb = icmp samesign ugt i64 %i.ez, 4
  %i.fc = and i64 %i.ey, 8
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = and i1 %i.fb, %i.fd
  %i.ff = select i1 %i.fa, i1 true, i1 %i.fe
  br i1 %i.ff, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator17AllocateSpillSlotEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull readonly %i.ec)
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i

_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i: ; preds = %bb.x, %bb.w, %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i35, %_ZN2v88internal6maglev21RegallocValueNodeInfo14RemoveRegisterENS0_8RegisterE.exit.i
  %i.fg = load i16, ptr %i.bj, align 8
  %i.fh = or i16 %i.fg, %i.ds                     ; 2 uses
  store i16 %i.fh, ptr %i.bj, align 8
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit: ; preds = %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit
  %.sroa.0.0.copyload.i.i3068 = phi i16 [ %i.fh, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE9AddToFreeES3_.exit.i ], [ %.sroa.0.0.copyload.i.i30, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit ]
  %i.fi = add i16 %.sroa.0.060, -1
  %i.fj = and i16 %i.fi, %.sroa.0.060             ; 2 uses
  %.not52 = icmp eq i16 %i.fj, 0
  br i1 %.not52, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit

.loopexit:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit, %bb.m
  %i.fk = getelementptr inbounds nuw i8, ptr %.02463, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fk, %i.bh
  br i1 %.not, label %.loopexit56, label %bb.m

.loopexit56:                                      ; preds = %.loopexit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_8RegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(132) %2) local_unnamed_addr #11 comdat align 2 {
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
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %sext.i = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext.i, 48
  %i.p = zext i32 %i.d to i64
  %i.q = xor i64 %i.o, %i.p
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw nsw i128 %i.r, 8779197792823184629 ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64                   ; 2 uses
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.v, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1      ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.aa, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.af, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.af, %bb.e ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.e                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %i.d
  br i1 %i.am, label %.thread33.i.i, label %bb.f, !prof !25

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.047.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !83

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %i.aw = icmp eq ptr %i.au, null                 ; 2 uses
  %i.ax = icmp eq ptr %i.au, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  br i1 %i.ax, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #25
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.aw, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  %i.ba = load i8, ptr %i.au, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.102) #25
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.idx = shl nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %.idx
  %.not60 = icmp eq i32 %i.bf, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.x
  %.02961 = phi ptr [ %i.bd, %.lr.ph ], [ %i.de, %bb.x ] ; 2 uses
  %i.bj = load ptr, ptr %.02961, align 8          ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bi, align 8 ; 4 uses
  %i.bl = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.bl, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load i16, ptr %i.bm, align 2
  %.0.i.not = icmp eq i16 %i.bn, 0
  br i1 %.0.i.not, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = and i64 %i.bp, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 2
  %i.bs = icmp samesign ugt i64 %i.bq, 4
  %i.bt = and i64 %i.bp, 8
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = and i1 %i.bs, %i.bu
  %i.bw = select i1 %i.br, i1 true, i1 %i.bv
  br i1 %i.bw, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  %sum.shift.i = lshr i64 %i.by, 40
  %i.bz = trunc i64 %sum.shift.i to i8
  %i.ca = and i8 %i.bz, 7                         ; 2 uses
  %i.cb = add nsw i8 %i.ca, -3
  %i.cc = icmp ult i8 %i.cb, 2
  br i1 %i.cc, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = and i64 %i.ce, 7
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE5firstEv.exit, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit: ; preds = %bb.q
  %i.ch = lshr i64 %i.ce, 41
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = and i8 %i.ci, 63                        ; 3 uses
  %i.ck = zext i16 %.sroa.0.0.copyload.i to i32
  %i.cl = icmp samesign ult i8 %i.cj, 16
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = zext nneg i8 %i.cj to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = and i32 %i.cn, %i.ck
  %.not56 = icmp eq i32 %i.co, 0
  br i1 %.not56, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE5firstEv.exit, label %bb.r

_ZNK2v88internal11RegListBaseINS0_8RegisterEE5firstEv.exit: ; preds = %bb.q, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.0.copyload.i, i1 true)
  %i.cq = trunc nuw nsw i16 %i.cp to i8
  br label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE5firstEv.exit, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit
  %.sroa.040.0 = phi i8 [ %i.cj, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit ], [ %i.cq, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE5firstEv.exit ] ; 2 uses
  switch i8 %i.ca, label %bb.w [
    i8 0, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE14RemoveFromFreeES3_.exit
    i8 1, label %bb.s
    i8 2, label %bb.s
    i8 5, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.u
    i8 6, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE14RemoveFromFreeES3_.exit

bb.t:                                             ; preds = %bb.r
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE14RemoveFromFreeES3_.exit

bb.u:                                             ; preds = %bb.r, %bb.r
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE14RemoveFromFreeES3_.exit

bb.v:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.w:                                             ; preds = %bb.r
  unreachable

_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE14RemoveFromFreeES3_.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i35 = phi i64 [ 144, %bb.r ], [ 64, %bb.s ], [ 80, %bb.t ], [ 288, %bb.u ]
  %i.cr = zext nneg i8 %.sroa.040.0 to i64        ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 32
  %i.ct = or disjoint i64 %.0.i35, %i.cs
  %i.cu = or disjoint i64 %i.ct, 5
  %i.cv = zext nneg i8 %.sroa.040.0 to i16
  %i.cw = shl nuw i16 1, %i.cv                    ; 2 uses
  %i.cx = xor i16 %i.cw, -1
  %i.cy = and i16 %.sroa.0.0.copyload.i, %i.cx
  store i16 %i.cy, ptr %i.bi, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cr
  store ptr %i.bj, ptr %i.cz, align 8
  %i.da = load ptr, ptr %i.bj, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = or i16 %i.dc, %i.cw
  store i16 %i.dd, ptr %i.db, align 2
  %.sroa.0.0.copyload.i37 = load i64, ptr %i.bo, align 8
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator24AddMoveBeforeCurrentNodeEPNS1_9ValueNodeENS0_8compiler18InstructionOperandENS5_16AllocatedOperandE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.bj, i64 %.sroa.0.0.copyload.i37, i64 %i.cu)
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.o, %_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE14RemoveFromFreeES3_.exit, %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %.02961, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.bh
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.x, %bb.m, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_11XMMRegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(132) %2) local_unnamed_addr #11 comdat align 2 {
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
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %sext.i = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext.i, 48
  %i.p = zext i32 %i.d to i64
  %i.q = xor i64 %i.o, %i.p
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw nsw i128 %i.r, 8779197792823184629 ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64                   ; 2 uses
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.v, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1      ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.aa, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.af, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.af, %bb.e ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.e                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %i.d
  br i1 %i.am, label %.thread33.i.i, label %bb.f, !prof !25

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.047.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !83

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %i.aw = icmp eq ptr %i.au, null                 ; 2 uses
  %i.ax = icmp eq ptr %i.au, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE4findIjEENSI_8iteratorERSF_.exit
  br i1 %i.ax, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #25
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.aw, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  %i.ba = load i8, ptr %i.au, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.102) #25
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.idx = shl nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %.idx
  %.not60 = icmp eq i32 %i.bf, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.r
  %.02961 = phi ptr [ %i.bd, %.lr.ph ], [ %i.dd, %bb.r ] ; 2 uses
  %i.bj = load ptr, ptr %.02961, align 8          ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bi, align 8 ; 4 uses
  %i.bl = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.bl, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load i16, ptr %i.bm, align 2
  %.0.i.not = icmp eq i16 %i.bn, 0
  br i1 %.0.i.not, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = and i64 %i.bp, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 2
  %i.bs = icmp samesign ugt i64 %i.bq, 4
  %i.bt = and i64 %i.bp, 8
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = and i1 %i.bs, %i.bu
  %i.bw = select i1 %i.br, i1 true, i1 %i.bv
  br i1 %i.bw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  %sum.shift.i = lshr i64 %i.by, 40
  %i.bz = trunc i64 %sum.shift.i to i8
  %i.ca = and i8 %i.bz, 7
  %i.cb = add nsw i8 %i.ca, -3
  %i.cc = icmp ult i8 %i.cb, 2
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = and i64 %i.ce, 7
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE5firstEv.exit, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit

_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit: ; preds = %bb.q
  %i.ch = lshr i64 %i.ce, 41
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = and i8 %i.ci, 63                        ; 3 uses
  %i.ck = zext i16 %.sroa.0.0.copyload.i to i32
  %i.cl = icmp samesign ult i8 %i.cj, 16
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = zext nneg i8 %i.cj to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = and i32 %i.cn, %i.ck
  %.not56 = icmp eq i32 %i.co, 0
  br i1 %.not56, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE5firstEv.exit, label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit

_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE5firstEv.exit: ; preds = %bb.q, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.0.copyload.i, i1 true)
  %i.cq = trunc nuw nsw i16 %i.cp to i8
  br label %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit

_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit: ; preds = %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE5firstEv.exit, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit
  %.sroa.040.0 = phi i8 [ %i.cj, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit ], [ %i.cq, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE5firstEv.exit ] ; 2 uses
  %i.cr = zext nneg i8 %.sroa.040.0 to i64        ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 32
  %i.ct = or disjoint i64 %i.cs, 293
  %i.cu = zext nneg i8 %.sroa.040.0 to i16
  %i.cv = shl nuw i16 1, %i.cu                    ; 2 uses
  %i.cw = xor i16 %i.cv, -1
  %i.cx = and i16 %.sroa.0.0.copyload.i, %i.cw
  store i16 %i.cx, ptr %i.bi, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cr
  store ptr %i.bj, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %i.bj, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = or i16 %i.db, %i.cv
  store i16 %i.dc, ptr %i.da, align 2
  %.sroa.0.0.copyload.i37 = load i64, ptr %i.bo, align 8
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator24AddMoveBeforeCurrentNodeEPNS1_9ValueNodeENS0_8compiler18InstructionOperandENS5_16AllocatedOperandE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.bj, i64 %.sroa.0.0.copyload.i37, i64 %i.ct)
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE14RemoveFromFreeES3_.exit, %bb.o, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.02961, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.bh
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.r, %bb.m, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorESL_.exit
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal6maglev12InitialValue10stack_slotEj(i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIPKN2v88internal6maglev8NodeBaseENS2_19MaglevGraphLabeller8NodeInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRS5_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

end_hunk_0
