Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstrInfo?download=true
inline.NumInlined: 8369
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm15MCTargetOptionsD2Ev:bb.a
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !710
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !598 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !238
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !598 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !238
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !598 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !238
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !598 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !238
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !598 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !238
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !598 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !238
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !2260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !238
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !2260
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL20getGatherLanePatternRN4llvm12MachineInstrERNS_15SmallVectorImplIjEEjj(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef range(i32 4, 17) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.std::pair.924", align 8    ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.llvm::SmallSet", align 8    ; 16 uses
  %6 = alloca %"class.llvm::SmallVector.918", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.llvm::SmallPtrSet.333", align 8 ; 12 uses
  %i.c = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231, !nonnull !51, !align !232
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.d, i32 noundef 19) #32
  br i1 %i.e, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !345  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !242, !nonnull !51, !align !232 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(344) %i.i) #32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !237  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !238  ; 2 uses
  %i.r = add nsw i32 %3, -1
  %i.s = zext nneg i32 %i.r to i64
  %.not59 = icmp eq i64 %i.q, %i.s
  br i1 %.not59, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !238
  %i.v = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.u) #32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.x, align 8, !tbaa !255
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 16, ptr %i.y, align 4, !tbaa !256
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !2264
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !711
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !712
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !713
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !714
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ 1, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.ae = trunc i64 %.sroa.01.05.i.i to i32
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !55
  call void @_ZN4llvm8SmallSetIjLj16ESt4lessIjEE10insertImplIjEESt4pairINS_16SmallSetIteratorIjLj16ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.924") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.af = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, %i.q
  br i1 %.not.i.i, label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2261

_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !255
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 16, ptr %i.ai, align 4, !tbaa !256
  %8 = load i32, ptr %i.x, align 8, !tbaa !255    ; 2 uses
  %.not.i.i6379 = icmp eq i32 %8, 0
  %9 = load i64, ptr %i.ad, align 8               ; 3 uses
  %i.aj = icmp eq i64 %9, 0
  %i.ak = select i1 %.not.i.i6379, i1 %i.aj, i1 false
  %i.al = icmp eq ptr %i.v, null
  %or.cond.not80 = or i1 %i.al, %i.ak
  br i1 %or.cond.not80, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !233
  %i.ap = icmp eq i32 %i.ao, %2
  br i1 %i.ap, label %.lr.ph120, label %.critedge.loopexit

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ci, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !233
  %i.as = icmp eq i32 %i.ar, %2
  br i1 %i.as, label %.lr.ph120, label %.critedge.loopexit, !llvm.loop !2262

.lr.ph120:                                        ; preds = %.lr.ph, %bb.d
  %.05881119 = phi ptr [ %i.ci, %bb.d ], [ %i.v, %.lr.ph ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05881119, i64 32 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !237
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !238
  %i.ax = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.aw) #32
  br i1 %i.ax, label %bb.e, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph120
  %.pre94.pre = load i64, ptr %i.ad, align 8
  br label %.critedge.loopexit

bb.e:                                             ; preds = %.lr.ph120
  %i.ay = getelementptr inbounds nuw i8, ptr %.05881119, i64 40
  %i.az = load i24, ptr %i.ay, align 8
  %i.ba = icmp eq i24 %i.az, 4
  %.pre94.pre95 = load i64, ptr %i.ad, align 8    ; 2 uses
  br i1 %i.ba, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !237
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !238
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  store i32 %i.be, ptr %i.b, align 4, !tbaa !55
  %i.bf = icmp eq i64 %.pre94.pre95, 0
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = call noundef i64 @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  br label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEE5eraseERKj.exit

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %i.bi = load i32, ptr %i.x, align 8, !tbaa !255 ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bj, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i ; 3 uses
  %.not11.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i.i, label %_ZNK4llvm8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit.i, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %bb.h, %bb.i
  %.0812.i.i = phi ptr [ %i.bn, %bb.i ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bl = load i32, ptr %.0812.i.i, align 4, !tbaa !55
  %i.bm = icmp eq i32 %i.bl, %i.be
  br i1 %i.bm, label %_ZNK4llvm8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 4 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.bn, %i.bk
  br i1 %.not.i.i65, label %_ZNK4llvm8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit.i, label %.lr.ph.i.i64, !llvm.loop !7

_ZNK4llvm8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit.i: ; preds = %bb.i, %.lr.ph.i.i64, %bb.h
  %.1.i.i = phi ptr [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ %.0812.i.i, %.lr.ph.i.i64 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj ; 2 uses
  %.not.not.i = icmp eq ptr %.1.i.i, %i.bo
  br i1 %.not.not.i, label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEE5eraseERKj.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, 4
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !343

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.1.i.i, ptr nonnull align 4 %i.bp, i64 %i.bs, i1 false)
  br label %_ZN4llvm15SmallVectorImplIjE5eraseEPKj.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bu = icmp eq i64 %i.bs, 4
  br i1 %i.bu, label %bb.m, label %_ZN4llvm15SmallVectorImplIjE5eraseEPKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %i.bp, align 4, !tbaa !55
  store i32 %i.bv, ptr %.1.i.i, align 4, !tbaa !55
  br label %_ZN4llvm15SmallVectorImplIjE5eraseEPKj.exit.i

_ZN4llvm15SmallVectorImplIjE5eraseEPKj.exit.i:    ; preds = %bb.m, %bb.l, %bb.k
  %i.bw = load i32, ptr %i.x, align 8, !tbaa !255
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %i.x, align 8, !tbaa !255
  br label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEE5eraseERKj.exit

_ZN4llvm8SmallSetIjLj16ESt4lessIjEE5eraseERKj.exit: ; preds = %bb.g, %_ZNK4llvm8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit.i, %_ZN4llvm15SmallVectorImplIjE5eraseEPKj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.by = load i32, ptr %i.ah, align 8, !tbaa !255 ; 2 uses
  %i.bz = load i32, ptr %i.ai, align 4, !tbaa !256
  %.not.i = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !343

bb.n:                                             ; preds = %_ZN4llvm8SmallSetIjLj16ESt4lessIjEE5eraseERKj.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %.05881119)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit

bb.o:                                             ; preds = %_ZN4llvm8SmallSetIjLj16ESt4lessIjEE5eraseERKj.exit
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %6, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %.05881119, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.ah, align 8, !tbaa !255
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.ah, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit: ; preds = %bb.n, %bb.o
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !237
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !238
  %i.ci = call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.ch) #32 ; 5 uses
  %i.cj = load i32, ptr %i.x, align 8, !tbaa !255
  %.not.i.i63 = icmp eq i32 %i.cj, 0
  %i.ck = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = select i1 %.not.i.i63, i1 %i.cl, i1 false
  %i.cn = icmp eq ptr %i.ci, null
  %or.cond.not = or i1 %i.cn, %i.cm
  br i1 %or.cond.not, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit..critedge.loopexit.loopexit_crit_edge, label %bb.d, !llvm.loop !2262

_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit..critedge.loopexit.loopexit_crit_edge: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit
  br label %.critedge.loopexit, !llvm.loop !2262

.critedge.loopexit:                               ; preds = %bb.e, %bb.d, %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit..critedge.loopexit.loopexit_crit_edge, %..critedge.loopexit_crit_edge
  %.pre94.a = phi i64 [ %.pre94.pre, %..critedge.loopexit_crit_edge ], [ %9, %.lr.ph ], [ %i.ck, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit..critedge.loopexit.loopexit_crit_edge ], [ %i.ck, %bb.d ], [ %.pre94.pre95, %bb.e ]
  %.058.lcssa.ph = phi ptr [ %.05881119, %..critedge.loopexit_crit_edge ], [ %i.v, %.lr.ph ], [ %i.ci, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit..critedge.loopexit.loopexit_crit_edge ], [ %i.ci, %bb.d ], [ %.05881119, %bb.e ]
  %.pre.a = load i32, ptr %i.x, align 8, !tbaa !255
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit
  %i.co = phi i64 [ %9, %_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit ], [ %.pre94.a, %.critedge.loopexit ]
  %i.cp = phi i32 [ %8, %_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit ], [ %.pre.a, %.critedge.loopexit ]
  %.058.lcssa = phi ptr [ %i.v, %_ZN4llvm8SmallSetIjLj16ESt4lessIjEEC2INS_6detail15SafeIntIteratorIjLb0EEEEET_S8_.exit ], [ %.058.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.not.i.i66 = icmp eq i32 %i.cp, 0
  %i.cq = icmp eq i64 %i.co, 0
  %i.cr = select i1 %.not.i.i66, i1 %i.cq, i1 false
  br i1 %i.cr, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %.058.lcssa, i64 52
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !233
  %.not = icmp eq i32 %i.ct, 12
  br i1 %.not, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %.058.lcssa, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !237
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !238 ; 3 uses
  %i.cy = call { i64, i8 } @_ZNK4llvm18TargetRegisterInfo16getRegSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316) %i.m, i32 %i.cx, ptr noundef nonnull align 8 dereferenceable(520) %i.g) #32 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.cy, 1
  %i.cz = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.cz, label %bb.r, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.66) #33
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.q
  %.fca.0.extract = extractvalue { i64, i8 } %i.cy, 0
  %i.da = udiv i32 128, %3
  %i.db = zext nneg i32 %i.da to i64
  %.not61 = icmp eq i64 %.fca.0.extract, %i.db
  br i1 %.not61, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.dc = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.cx) #32
  br i1 %i.dc, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.dd = call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.cx) #32
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dd)
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20GatherOptSearchLimit, i64 120), align 8, !tbaa !287 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.df, ptr %7, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 16, ptr %i.dg, align 8, !tbaa !715
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 6 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !716
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i8 1, ptr %i.di, align 8, !tbaa !49
  %i.dj = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.dk = load i32, ptr %i.ah, align 8, !tbaa !255
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl
  call void @_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE6insertIPS3_EEvT_S7_(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %i.dj, ptr noundef %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !72
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !327
  %i.dr = icmp ne ptr %0, %i.dq
  %i.ds = icmp ne i32 %i.de, 0
  %or.cond388 = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond388, label %.lr.ph91, label %.critedge5

.lr.ph91:                                         ; preds = %bb.t, %bb.z
  %.090 = phi i32 [ %i.em, %bb.z ], [ %i.de, %bb.t ]
  %.sroa.069.089 = phi ptr [ %i.el, %bb.z ], [ %0, %bb.t ] ; 4 uses
  %i.dt = load i32, ptr %i.dh, align 4, !tbaa !716 ; 3 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.critedge5.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph91
  %i.dv = load i8, ptr %i.di, align 8, !tbaa !49, !range !50, !noundef !51
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dx = load ptr, ptr %7, align 8, !tbaa !52    ; 3 uses
  %i.dy = zext i32 %i.dt to i64
  %.idx.i.i67 = shl nuw nsw i64 %i.dy, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx.i.i67
  br label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %bb.v, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.eb, %.critedge.i.i ], [ %i.dx, %bb.v ] ; 3 uses
  %i.ea = load ptr, ptr %.01524.i.i, align 8, !tbaa !623
  %.not20.i.i = icmp eq ptr %i.ea, %.sroa.069.089
  br i1 %.not20.i.i, label %bb.w, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i68
  %i.eb = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.eb, %i.dz
  br i1 %.not19.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit, label %.lr.ph.i.i68

bb.w:                                             ; preds = %.lr.ph.i.i68
  %i.ec = add i32 %i.dt, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.dh, align 4, !tbaa !716
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !623
  store ptr %i.ef, ptr %.01524.i.i, align 8, !tbaa !623
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit

bb.x:                                             ; preds = %bb.u
  %i.eg = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull %.sroa.069.089) #32 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.not.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull %i.eg) #32
  %i.eh = load i32, ptr %i.dh, align 4, !tbaa !716
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr %i.dh, align 4, !tbaa !716
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit

_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit: ; preds = %.critedge.i.i, %bb.w, %bb.x, %bb.y
  %i.ej = call noundef zeroext i1 @_ZNK4llvm12MachineInstr17isLoadFoldBarrierEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.069.089) #32
  br i1 %i.ej, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.069.089, align 8
  %i.ek = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.em = add i32 %.090, -1                       ; 3 uses
  %i.en = load ptr, ptr %i.dp, align 8, !tbaa !327
  %i.eo = icmp ne ptr %i.en, %i.el
  %i.ep = icmp ne i32 %i.em, 0
  %or.cond3 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond3, label %.lr.ph91, label %.critedge5, !llvm.loop !2263

.critedge5:                                       ; preds = %bb.z, %bb.t
  %.0.lcssa = phi i32 [ %i.de, %bb.t ], [ %i.em, %bb.z ]
  %i.eq = icmp ne i32 %.0.lcssa, 0
  %i.er = load i32, ptr %i.dh, align 4
  %i.es = icmp eq i32 %i.er, 0
  %or.cond = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %or.cond, label %.critedge5.thread, label %.loopexit

.critedge5.thread:                                ; preds = %.lr.ph91, %.critedge5
  %i.et = zext nneg i32 %3 to i64
  %i.eu = getelementptr i8, ptr @switch.table._ZL20getGatherLanePatternRN4llvm12MachineInstrERNS_15SmallVectorImplIjEEjj, i64 %i.et
  %switch.gep = getelementptr i8, ptr %i.eu, i64 -4
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %switch.ext)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit, %.critedge5.thread, %.critedge5
  %.2 = phi i1 [ true, %.critedge5.thread ], [ false, %.critedge5 ], [ false, %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE5eraseES3_.exit ]
  %i.ev = load i8, ptr %i.di, align 8, !tbaa !49, !range !50, !noundef !51
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.ex = load ptr, ptr %7, align 8, !tbaa !52
  call void @free(ptr noundef %i.ex) #32
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.loopexit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.s, %bb.p, %.critedge
  %.4 = phi i1 [ false, %.critedge ], [ false, %bb.p ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.2, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ], [ false, %bb.s ]
  %i.ey = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ag
  br i1 %i.ez, label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj16EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.ey) #32
  br label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj16EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.fb = load ptr, ptr %i.aa, align 8, !tbaa !711
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, ptr noundef %i.fb)
  %i.fc = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.w
  br i1 %i.fd, label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj16EED2Ev.exit
  call void @free(ptr noundef %i.fc) #32
  br label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit

_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit:     ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj16EED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit, %bb.b, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ %.4, %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit ], [ false, %bb.b ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
