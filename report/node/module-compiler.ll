Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-compiler?download=true
inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v88internal4wasm25ThrowLazyCompilationErrorEPNS0_7IsolateEPKNS1_12NativeModuleEi:bb.a
  %i.ef = load i64, ptr %i.ed, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #30
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit

_ZN2v88internal4wasm9WasmErrorD2Ev.exit:          ; preds = %_ZN2v88internal4wasm9WasmErrorC2EOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eh = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dn
  br i1 %i.ei, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit
  %i.ej = load i64, ptr %i.dn, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #30
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21

_ZN2v88internal4wasm9WasmErrorD2Ev.exit21:        ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN2v88internal4wasm12ErrorThrowerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.el = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dp
  br i1 %i.em, label %_ZN2v88internal4wasm6ResultIDnED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21
  %i.en = load i64, ptr %i.dp, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #30
  br label %_ZN2v88internal4wasm6ResultIDnED2Ev.exit

_ZN2v88internal4wasm6ResultIDnED2Ev.exit:         ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZN2v88internal4wasm20GetWasmErrorWithNameENS_4base6VectorIKhEEiPKNS1_10WasmModuleENS1_9WasmErrorE(ptr dead_on_unwind writable sret(%"class.v8::internal::wasm::WasmError") align 8, ptr, i64, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Sp_locker", align 1  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !117
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull %i.a) #29, !noalias !117
  %i.b = load ptr, ptr %i.a, align 8, !noalias !117 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !noalias !117 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !noalias !117
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !noalias !117
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !noalias !117
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !117 ; 0 uses
  br label %bb.e

_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit: ; preds = %bb.a
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #29, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !117
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #29, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !117
  %i.m = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.t, align 4
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !122
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !122
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.j, label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !10

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ae = phi i64 [ %i.l, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ], [ %i.o, %bb.f ], [ %i.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.o, %bb.j ]
  %i.af = phi ptr [ %i.j, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ], [ %i.m, %bb.f ], [ %i.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.m, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.af, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind
declare void @_ZN2v88internal4wasm12ErrorThrowerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm19IsCrossInstanceCallENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateE(i64 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %0, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.v8::internal::wasm::FeedbackMaker", align 8 ; 18 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 247
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = sext i32 %i.h to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97: ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = add i16 %i.z, -205
  %i.ab = icmp ult i16 %i.aa, 13
  br i1 %i.ab, label %bb.b, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread

bb.b:                                             ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 %1, ptr %i.a, align 4
  %i.ad = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = lshr i64 %i.aj, 32                      ; 2 uses
  %i.al = trunc nuw i64 %i.ak to i32              ; 3 uses
  %i.am = shl i64 %i.ah, 1
  %i.an = icmp sgt i64 %i.aj, -1
  %i.ao = icmp eq i64 %i.am, %i.ak
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.c, !prof !104

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.sroa.074.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  %i.as = lshr i32 %i.al, 1                       ; 2 uses
  store ptr %i.ar, ptr %2, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.sroa.074.0.copyload, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.av = zext nneg i32 %i.as to i64              ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.aw = icmp eq i32 %i.as, 0
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !123
  br label %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit

bb.f:                                             ; preds = %bb.d
  %i.ax = shl nuw nsw i64 %i.av, 4                ; 2 uses
  %i.ay = or disjoint i64 %i.ax, 8
  %i.az = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #31, !noalias !126 ; 2 uses
  store i64 %i.av, ptr %i.az, align 16, !noalias !126
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.av
  %i.bc = add nsw i64 %i.ax, -16                  ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %i.bf = phi ptr [ %i.bj, %.prol.preheader ], [ %i.ba, %bb.f ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.f ]
  store i32 -1, ptr %i.bf, align 8, !noalias !126
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i8 0, ptr %i.bg, align 4, !noalias !126
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  store i8 0, ptr %i.bh, align 1, !noalias !126
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.bi, align 8, !noalias !126
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.unr = phi ptr [ %i.ba, %bb.f ], [ %i.bj, %.prol.preheader ]
  %i.bk = icmp ult i64 %i.bc, 48
  br i1 %i.bk, label %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bl = phi ptr [ %i.cb, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 -1, ptr %i.bl, align 8, !noalias !126
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i8 0, ptr %i.bm, align 4, !noalias !126
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  store i8 0, ptr %i.bn, align 1, !noalias !126
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.bo, align 8, !noalias !126
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 -1, ptr %i.bp, align 8, !noalias !126
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i8 0, ptr %i.bq, align 4, !noalias !126
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 21
  store i8 0, ptr %i.br, align 1, !noalias !126
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 0, ptr %i.bs, align 8, !noalias !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 -1, ptr %i.bt, align 8, !noalias !126
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store i8 0, ptr %i.bu, align 4, !noalias !126
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 37
  store i8 0, ptr %i.bv, align 1, !noalias !126
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i64 0, ptr %i.bw, align 8, !noalias !126
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i32 -1, ptr %i.bx, align 8, !noalias !126
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store i8 0, ptr %i.by, align 4, !noalias !126
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 53
  store i8 0, ptr %i.bz, align 1, !noalias !126
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 0, ptr %i.ca, align 8, !noalias !126
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bb
  br i1 %i.cc, label %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i, label %.new

_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %.new, %.prol.loopexit
  %i.cd = ptrtoint ptr %i.ba to i64
  store i64 %i.cd, ptr %i.au, align 8, !alias.scope !123
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.av, ptr %i.ce, align 8, !alias.scope !123
  br label %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit

_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.cf = phi i64 [ 0, %bb.e ], [ %i.av, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i ]
  %i.cg = phi ptr [ null, %bb.e ], [ %i.ba, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.cj = add i64 %.sroa.074.0.copyload, 263
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, 7
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 216
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 84
  %i.cw = load i32, ptr %i.cv, align 4
  store i32 %i.cw, ptr %i.ci, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %1, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 9 uses
  store i32 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 81 ; 11 uses
  store i8 0, ptr %i.da, align 1
  %i.db = icmp sgt i32 %i.al, 0
  br i1 %i.db, label %.lr.ph233, label %._crit_edge

.lr.ph233:                                        ; preds = %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 16 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 16 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.au, align 8, !noalias !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre265 = load i64, ptr %.phi.trans.insert, align 8, !noalias !131
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit
  %i.dg = phi i64 [ %.pre265, %._crit_edge.loopexit ], [ %i.cf, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit ] ; 2 uses
  %i.dh = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cg, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor14EnqueueCalleesENS_4base6VectorINS1_16CallSiteFeedbackEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.dh, i64 %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !77, !align !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i32 %1, ptr %i.c, align 4
  %i.dk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 4 uses
  store ptr %i.dh, ptr %i.dk, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %.idx.i.i.i.i.i.i = shl i64 %i.dn, 4            ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.g
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.dq = phi ptr [ %i.dr, %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i ], [ %i.dp, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp slt i32 %i.ds, -1
  br i1 %i.dt, label %bb.h, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.dv = load i64, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = inttoptr i64 %i.dv to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #30
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %.preheader.i.i.i.i.i.i
  %i.dy = icmp eq ptr %i.dr, %i.dl
  br i1 %i.dy, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi:bb.a

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ez to i64 ; 2 uses
  br label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.ff = load i32, ptr %i.fe, align 4
  %.not.i = icmp slt i32 %i.ff, %i.ey
  br i1 %.not.i, label %.lr.ph24.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit236, label %.lr.ph.i, !llvm.loop !135

._crit_edge.i.loopexit236:                        ; preds = %bb.p
  %i.fg = zext nneg i32 %i.ez to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph24.i, %._crit_edge.i.loopexit236, %.preheader.i
  %.015.lcssa31.i = phi i64 [ 0, %.preheader.i ], [ %i.fg, %._crit_edge.i.loopexit236 ], [ %indvars.iv.i, %.lr.ph24.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i
  store i32 %i.es, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i
  store i32 %i.ey, ptr %i.fi, align 4
  %i.fj = add nsw i32 %i.ez, 1
  store i32 %i.fj, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph.i, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %.lr.ph24.i ], [ %wide.trip.count.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 4 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i
  store i32 %i.fl, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i
  store i32 %i.fo, ptr %i.fp, align 4
  %.not16.not.i = icmp sgt i64 %indvars.iv.next27.i, %indvars.iv.i
  br i1 %.not16.not.i, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !136

bb.q:                                             ; preds = %bb.m
  %i.fq = and i64 %i.ew, -4294967295
  %or.cond209 = icmp eq i64 %i.fq, 0
  br i1 %or.cond209, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.s, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.s:                                             ; preds = %bb.r
  %i.ft = trunc nuw i64 %i.eq to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %i.ft) #29
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.t:                                             ; preds = %bb.q
  %i.fu = trunc i64 %i.eu to i1                   ; 2 uses
  br i1 %i.fu, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.t
  %i.fv = add nsw i64 %i.eu, -1
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i64, ptr %i.fw monotonic, align 8
  %i.fy = add i64 %i.fx, 11
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load atomic volatile i16, ptr %i.fz monotonic, align 2
  %i.gb = icmp eq i16 %i.ga, 293
  br i1 %i.gb, label %bb.u, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.u:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.gc = lshr i64 %i.ew, 32
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = add i64 %i.eu, 7
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load atomic volatile i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = add i64 %i.gg, 7
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load i64, ptr %i.gi, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8
  %.not.i102 = icmp eq i64 %i.gj, %.sroa.0.0.copyload.i
  br i1 %.not.i102, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.w:                                             ; preds = %bb.u
  %i.gk = add i64 %i.gg, 23
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = lshr i64 %i.gm, 32
  %i.go = trunc nuw i64 %i.gn to i32              ; 2 uses
  %i.gp = load i32, ptr %i.ci, align 4
  %i.gq = icmp sgt i32 %i.gp, %i.go
  br i1 %i.gq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.y:                                             ; preds = %bb.w
  %i.gr = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.gs = icmp eq i32 %i.gr, 4
  %i.gt = load i8, ptr %i.da, align 1, !range !76
  %i.gu = trunc nuw i8 %i.gt to i1
  %or.cond.i.i = select i1 %i.gs, i1 true, i1 %i.gu
  br i1 %or.cond.i.i, label %bb.z, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.y
  %i.gv = icmp sgt i32 %i.gr, 0
  br i1 %i.gv, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.gr to i64 ; 3 uses
  br label %.lr.ph.i.i

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i
  %i.gx = load i32, ptr %i.gw, align 4
  %.not.i.i103 = icmp slt i32 %i.gx, %i.gd
  br i1 %.not.i.i103, label %.lr.ph24.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !135

._crit_edge.i.i:                                  ; preds = %bb.aa, %.lr.ph24.i.i, %.preheader.i.i
  %.015.lcssa31.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.i.i, %.lr.ph24.i.i ], [ %wide.trip.count.i.i, %bb.aa ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i.i
  store i32 %i.go, ptr %i.gy, align 4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i.i
  store i32 %i.gd, ptr %i.gz, align 4
  %i.ha = add nsw i32 %i.gr, 1
  store i32 %i.ha, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph24.i.i
  %indvars.iv26.i.i = phi i64 [ %indvars.iv.next27.i.i, %.lr.ph24.i.i ], [ %wide.trip.count.i.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next27.i.i = add nsw i64 %indvars.iv26.i.i, -1 ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i.i
  store i32 %i.hc, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i.i
  store i32 %i.hf, ptr %i.hg, align 4
  %.not16.not.i.i = icmp sgt i64 %indvars.iv.next27.i.i, %indvars.iv.i.i
  br i1 %.not16.not.i.i, label %.lr.ph24.i.i, label %._crit_edge.i.i, !llvm.loop !136

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.t, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.hh = and i64 %i.eu, 1
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.hj = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8112
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = icmp eq i64 %i.eu, %i.hl
  br i1 %i.hm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.hn = lshr i64 %i.ew, 32
  %i.ho = trunc nuw i64 %i.hn to i32
  call void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %2, i64 %i.eu, i32 noundef %i.ho)
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.fu, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ad
  %i.hp = add nsw i64 %i.eu, -1
  %i.hq = inttoptr i64 %i.hp to ptr               ; 4 uses
  %i.hr = load atomic volatile i64, ptr %i.hq monotonic, align 8
  %i.hs = add i64 %i.hr, 11
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load atomic volatile i16, ptr %i.ht monotonic, align 2
  %i.hv = add i16 %i.hu, -205
  %i.hw = icmp ult i16 %i.hv, 13
  br i1 %i.hw, label %bb.ae, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.ae:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = lshr i64 %i.hy, 32
  %i.ia = trunc nuw i64 %i.hz to i32              ; 4 uses
  %i.ib = icmp slt i32 %i.ia, 9
  br i1 %i.ib, label %bb.ag, label %bb.af, !prof !104

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #32
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ic = icmp eq i32 %i.es, -1
  %i.id = icmp sgt i32 %i.ia, 0                   ; 2 uses
  br i1 %i.ic, label %.preheader, label %.preheader215

.preheader215:                                    ; preds = %bb.ag
  br i1 %i.id, label %.lr.ph, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph:                                           ; preds = %.preheader215
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  br label %bb.ao

.preheader:                                       ; preds = %bb.ag
  br i1 %i.id, label %.lr.ph223, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph223:                                        ; preds = %.preheader
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph223, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124
  %indvars.iv250 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next251, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124 ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv250 ; 2 uses
  %i.ih = load atomic volatile i64, ptr %i.ig monotonic, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load atomic volatile i64, ptr %i.ii monotonic, align 8
  %i.ik = lshr i64 %i.ij, 32
  %i.il = trunc nuw i64 %i.ik to i32              ; 2 uses
  %i.im = add i64 %i.ih, 7
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = load atomic volatile i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = add i64 %i.io, 7
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = load i64, ptr %i.iq, align 8
  %.sroa.0.0.copyload.i105 = load i64, ptr %i.at, align 8
  %.not.i106 = icmp eq i64 %i.ir, %.sroa.0.0.copyload.i105
  br i1 %.not.i106, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124

bb.aj:                                            ; preds = %bb.ah
  %i.is = add i64 %i.io, 23
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = lshr i64 %i.iu, 32
  %i.iw = trunc nuw i64 %i.iv to i32              ; 2 uses
  %i.ix = load i32, ptr %i.ci, align 4
  %i.iy = icmp sgt i32 %i.ix, %i.iw
  br i1 %i.iy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124

bb.al:                                            ; preds = %bb.aj
  %i.iz = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.ja = icmp eq i32 %i.iz, 4
  %i.jb = load i8, ptr %i.da, align 1, !range !76
  %i.jc = trunc nuw i8 %i.jb to i1
  %or.cond.i.i107 = select i1 %i.ja, i1 true, i1 %i.jc
  br i1 %or.cond.i.i107, label %bb.am, label %.preheader.i.i108

.preheader.i.i108:                                ; preds = %bb.al
  %i.jd = icmp sgt i32 %i.iz, 0
  br i1 %i.jd, label %.lr.ph.preheader.i.i111, label %._crit_edge.i.i109

.lr.ph.preheader.i.i111:                          ; preds = %.preheader.i.i108
  %wide.trip.count.i.i112 = zext nneg i32 %i.iz to i64 ; 3 uses
  br label %.lr.ph.i.i113

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124

.lr.ph.i.i113:                                    ; preds = %bb.an, %.lr.ph.preheader.i.i111
  %indvars.iv.i.i114 = phi i64 [ 0, %.lr.ph.preheader.i.i111 ], [ %indvars.iv.next.i.i116, %bb.an ] ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i114
  %i.jf = load i32, ptr %i.je, align 4
  %.not.i.i115 = icmp slt i32 %i.jf, %i.il
  br i1 %.not.i.i115, label %.lr.ph24.i.i120, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i113
  %indvars.iv.next.i.i116 = add nuw nsw i64 %indvars.iv.i.i114, 1 ; 2 uses
  %exitcond.not.i.i117 = icmp eq i64 %indvars.iv.next.i.i116, %wide.trip.count.i.i112
  br i1 %exitcond.not.i.i117, label %._crit_edge.i.i109, label %.lr.ph.i.i113, !llvm.loop !135

._crit_edge.i.i109:                               ; preds = %bb.an, %.lr.ph24.i.i120, %.preheader.i.i108
  %.015.lcssa31.i.i110 = phi i64 [ 0, %.preheader.i.i108 ], [ %indvars.iv.i.i114, %.lr.ph24.i.i120 ], [ %wide.trip.count.i.i112, %bb.an ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i.i110
  store i32 %i.iw, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i.i110
  store i32 %i.il, ptr %i.jh, align 4
  %i.ji = add nsw i32 %i.iz, 1
  store i32 %i.ji, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124

.lr.ph24.i.i120:                                  ; preds = %.lr.ph.i.i113, %.lr.ph24.i.i120
  %indvars.iv26.i.i121 = phi i64 [ %indvars.iv.next27.i.i122, %.lr.ph24.i.i120 ], [ %wide.trip.count.i.i112, %.lr.ph.i.i113 ] ; 3 uses
  %indvars.iv.next27.i.i122 = add nsw i64 %indvars.iv26.i.i121, -1 ; 4 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i122
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i.i121
  store i32 %i.jk, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i122
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i.i121
  store i32 %i.jn, ptr %i.jo, align 4
  %.not16.not.i.i123 = icmp sgt i64 %indvars.iv.next27.i.i122, %indvars.iv.i.i114
  br i1 %.not16.not.i.i123, label %.lr.ph24.i.i120, label %._crit_edge.i.i109, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124: ; preds = %bb.ai, %bb.ak, %bb.am, %._crit_edge.i.i109
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 2 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next251 to i32
  %4 = icmp slt i32 %3, %i.ia
  br i1 %4, label %bb.ah, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !137

bb.ao:                                            ; preds = %.lr.ph, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv ; 2 uses
  %i.jq = load atomic volatile i64, ptr %i.jp monotonic, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load atomic volatile i64, ptr %i.jr monotonic, align 8
  %i.jt = lshr i64 %i.js, 32
  %i.ju = trunc nuw i64 %i.jt to i32
  call void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %2, i64 %i.jq, i32 noundef %i.ju)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %5 = trunc nuw i64 %indvars.iv.next to i32
  %6 = icmp slt i32 %5, %i.ia
  br i1 %6, label %bb.ao, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !138

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ad, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hj, i64 7872
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = icmp eq i64 %i.eu, %i.jw
  br i1 %i.jx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.aq:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7) #32
  unreachable

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit: ; preds = %bb.ao, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit124, %.preheader215, %.preheader, %._crit_edge.i.i, %bb.z, %bb.x, %bb.v, %._crit_edge.i, %bb.o, %bb.s, %bb.r, %bb.ac, %bb.ap
  %i.jy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !76, !noundef !77
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 7872
  %i.kc = load i64, ptr %i.kb, align 8
  %.not = icmp eq i64 %i.eu, %i.kc
  br i1 %.not, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kd = load ptr, ptr %i.df, align 8, !nonnull !77, !align !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 %1, ptr %i.b, align 4
  %i.ke = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.kd, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = icmp ugt i64 %i.kg, %i.eq
  br i1 %i.kh, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.ki = load ptr, ptr %i.ke, align 8
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.ki, i64 %i.eq ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i8, ptr %i.kk, align 4, !range !76, !noundef !77
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.cz, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 5 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !range !76, !noundef !77
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.da, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit144, %bb.ax
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit144 ], [ 0, %bb.ax ] ; 3 uses
  %i.kr = load i32, ptr %i.kj, align 8            ; 4 uses
  %i.ks = icmp sgt i32 %i.kr, -1                  ; 2 uses
  br i1 %i.ks, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kt = icmp ne i32 %i.kr, -1
  %i.ku = load i8, ptr %i.kn, align 1, !range !76
  %i.kv = trunc nuw i8 %i.ku to i1                ; 2 uses
  %.not1.i = select i1 %i.kt, i1 true, i1 %i.kv
  br i1 %.not1.i, label %bb.ba, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

bb.ba:                                            ; preds = %bb.az
  %i.kw = sub nsw i32 0, %i.kr
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = select i1 %i.kv, i64 0, i64 %i.kx
  br label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit: ; preds = %bb.ay, %bb.az, %bb.ba
  %.0.i = phi i64 [ 0, %bb.az ], [ 1, %bb.ay ], [ %i.ky, %bb.ba ]
  %i.kz = icmp slt i64 %indvars.iv259, %.0.i
  br i1 %i.kz, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit
  %i.la = load i64, ptr %i.kq, align 8            ; 2 uses
  %i.lb = inttoptr i64 %i.la to ptr
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv259 ; 2 uses
  %i.ld = icmp slt i32 %i.kr, 0
  %.0.in.i = select i1 %i.ld, ptr %i.lc, ptr %i.kj
  %.0.i125 = load i32, ptr %.0.in.i, align 4      ; 8 uses
  %i.le = load i32, ptr %i.cy, align 4            ; 6 uses
  %i.lf = sext i32 %i.le to i64                   ; 4 uses
  %.idx6.i = shl nsw i64 %i.lf, 2                 ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.dd, i64 %.idx6.i
  %i.lh = ashr i64 %i.lf, 2                       ; 2 uses
  %i.li = icmp sgt i64 %i.lh, 0
  br i1 %i.li, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb
  %i.lj = and i64 %.idx6.i, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dd, i64 %i.lj
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bg, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.lh, %.lr.ph.i.i.i.i ], [ %i.lw, %bb.bg ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %i.lv, %bb.bg ] ; 9 uses
  %i.lk = load i32, ptr %.02946.i.i.i.i, align 4
  %i.ll = icmp eq i32 %i.lk, %.0.i125
  br i1 %i.ll, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = icmp eq i32 %i.ln, %.0.i125
  br i1 %i.lo, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = icmp eq i32 %i.lq, %.0.i125
  br i1 %i.lr, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit291, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ls = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = icmp eq i32 %i.lt, %.0.i125
  br i1 %i.lu, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit293, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.lw = add nsw i64 %.047.i.i.i.i, -1
  %i.lx = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.lx, label %bb.bc, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !139

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.bg
  %i.ly = and i64 %i.lf, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.bb
  %.pre-phi56.i.i.i.i = phi i64 [ %i.ly, %._crit_edge.loopexit.i.i.i.i ], [ %i.lf, %bb.bb ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dd, %bb.bb ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread [
    i64 3, label %bb.bh
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lz = load i32, ptr %.029.lcssa.i.i.i.i, align 4
  %i.ma = icmp eq i32 %i.lz, %.0.i125
  br i1 %i.ma, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.bi, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.mb, %bb.bi ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.mc = load i32, ptr %.1.i.i.i.i, align 4
  %i.md = icmp eq i32 %i.mc, %.0.i125
  br i1 %i.md, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %bb.bj, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.me, %bb.bj ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.mf = load i32, ptr %.2.i.i.i.i, align 4
  %i.mg = icmp eq i32 %i.mf, %.0.i125
  br i1 %i.mg, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit: ; preds = %bb.bd
  %i.mh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit291: ; preds = %bb.be
  %i.mi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit293: ; preds = %bb.bf
  %i.mj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit: ; preds = %bb.bc, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit291, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit293, %bb.bh, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.bh ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.mj, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit293 ], [ %i.mi, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit291 ], [ %i.mh, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.bc ]
  %.not210 = icmp eq ptr %.028.i.i.i.i, %i.lg
  br i1 %.not210, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit144

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit
  br i1 %i.ks, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread
  %i.mk = trunc i64 %i.la to i32
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

bb.bl:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.mm = load i32, ptr %i.ml, align 4
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit: ; preds = %bb.bk, %bb.bl
  %.0.i126 = phi i32 [ %i.mk, %bb.bk ], [ %i.mm, %bb.bl ] ; 2 uses
  %i.mn = icmp eq i32 %i.le, 4
  %i.mo = load i8, ptr %i.da, align 1, !range !76
  %i.mp = trunc nuw i8 %i.mo to i1
  %or.cond.i127 = select i1 %i.mn, i1 true, i1 %i.mp
  br i1 %or.cond.i127, label %bb.bm, label %.preheader.i128

.preheader.i128:                                  ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  %i.mq = icmp sgt i32 %i.le, 0
  br i1 %i.mq, label %.lr.ph.preheader.i131, label %._crit_edge.i129

.lr.ph.preheader.i131:                            ; preds = %.preheader.i128
  %wide.trip.count.i132 = zext nneg i32 %i.le to i64 ; 2 uses
  br label %.lr.ph.i133

bb.bm:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit144

.lr.ph.i133:                                      ; preds = %bb.bn, %.lr.ph.preheader.i131
  %indvars.iv.i134 = phi i64 [ 0, %.lr.ph.preheader.i131 ], [ %indvars.iv.next.i136, %bb.bn ] ; 4 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i134
  %i.ms = load i32, ptr %i.mr, align 4
  %.not.i135 = icmp slt i32 %i.ms, %.0.i126
  br i1 %.not.i135, label %.lr.ph24.i140, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i133
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %exitcond.not.i137 = icmp eq i64 %indvars.iv.next.i136, %wide.trip.count.i132
  br i1 %exitcond.not.i137, label %._crit_edge.i129.loopexit234, label %.lr.ph.i133, !llvm.loop !135

._crit_edge.i129.loopexit234:                     ; preds = %bb.bn
  %i.mt = zext nneg i32 %i.le to i64
  br label %._crit_edge.i129

._crit_edge.i129:                                 ; preds = %.lr.ph24.i140, %._crit_edge.i129.loopexit234, %.preheader.i128
  %.015.lcssa31.i130 = phi i64 [ 0, %.preheader.i128 ], [ %i.mt, %._crit_edge.i129.loopexit234 ], [ %indvars.iv.i134, %.lr.ph24.i140 ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i130
  store i32 %.0.i125, ptr %i.mu, align 4
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i130
  store i32 %.0.i126, ptr %i.mv, align 4
  %i.mw = add nsw i32 %i.le, 1
  store i32 %i.mw, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit144

.lr.ph24.i140:                                    ; preds = %.lr.ph.i133, %.lr.ph24.i140
  %indvars.iv26.i141 = phi i64 [ %indvars.iv.next27.i142, %.lr.ph24.i140 ], [ %wide.trip.count.i132, %.lr.ph.i133 ] ; 3 uses
  %indvars.iv.next27.i142 = add nsw i64 %indvars.iv26.i141, -1 ; 4 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i142
  %i.my = load i32, ptr %i.mx, align 4
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i141
  store i32 %i.my, ptr %i.mz, align 4
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i142
  %i.nb = load i32, ptr %i.na, align 4
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i141
  store i32 %i.nb, ptr %i.nc, align 4
  %.not16.not.i143 = icmp sgt i64 %indvars.iv.next27.i142, %indvars.iv.i134
  br i1 %.not16.not.i143, label %.lr.ph24.i140, label %._crit_edge.i129, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit144: ; preds = %._crit_edge.i129, %bb.bm, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  br label %bb.ay, !llvm.loop !140

.critedge:                                        ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, %bb.as, %bb.ar
  call void @_ZN2v88internal4wasm13FeedbackMaker12FinalizeCallEv(ptr noundef nonnull align 8 dereferenceable(82) %2)
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 2 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv.next263 to i32
  %8 = icmp slt i32 %7, %i.al
  br i1 %8, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !141

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread: ; preds = %bb.a, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97, %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8112
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 32
  %i.g = tail call noundef ptr @_ZN2v88internal4wasm34GetProcessWideWasmCodePointerTableEv() #29
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load atomic i64, ptr %i.i monotonic, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() #29
  %i.l = tail call noundef ptr @_ZNK2v88internal4wasm15WasmCodeManager10LookupCodeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef null, i64 noundef %i.j) #29 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 263
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %.not12 = icmp eq ptr %i.m, %i.y
  br i1 %.not12, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.ac, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ag = icmp eq i32 %i.ae, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !range !76
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.al = icmp sgt i32 %i.ae, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ae to i64 ; 2 uses
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.ah, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4
  %.not.i = icmp slt i32 %i.an, %2
  br i1 %.not.i, label %.lr.ph24.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit19, label %.lr.ph.i, !llvm.loop !135

._crit_edge.i.loopexit19:                         ; preds = %bb.h
  %i.ao = zext nneg i32 %i.ae to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph24.i, %._crit_edge.i.loopexit19, %.preheader.i
  %.015.lcssa31.i = phi i64 [ 0, %.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit19 ], [ %indvars.iv.i, %.lr.ph24.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.015.lcssa31.i
  store i32 %i.aa, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.015.lcssa31.i
  store i32 %2, ptr %i.aq, align 4
  %i.ar = add nsw i32 %i.ae, 1
  store i32 %i.ar, ptr %i.ad, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph.i, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %.lr.ph24.i ], [ %wide.trip.count.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv26.i
  store i32 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv26.i
  store i32 %i.aw, ptr %i.ax, align 4
  %.not16.not.i = icmp sgt i64 %indvars.iv.next27.i, %indvars.iv.i
  br i1 %.not16.not.i, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit: ; preds = %.critedge, %bb.g, %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm13FeedbackMaker12FinalizeCallEv(ptr noundef nonnull align 8 dereferenceable(82) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.82, i32 noundef %i.g, i32 noundef %i.i) #29
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit:  ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 1, ptr %i.r, align 1
  %i.s = load i32, ptr %i.k, align 8
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.k, align 8
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit32

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  switch i32 %i.v, label %bb.i [
    i32 0, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit21
    i32 1, label %bb.e
  ]

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit21: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 4 uses
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 0, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.x, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.x, align 8
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit32

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_1
