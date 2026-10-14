Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEED2Ev:bb.a
  store ptr %0, ptr %1, align 8, !tbaa !676
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.i = load i64, ptr %0, align 8          ; 2 uses
  %i.f = and i64 %.val2.i.i, 255                  ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.f       ; 4 uses
  %i.g = add nsw i64 %notmask.i.i.i.i.i, 511
  %i.h = or i64 %i.g, %notmask.i.i.i.i.i
  %i.i = icmp eq i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp ne i64 %i.f, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %notmask.i.i.i.i.i, -513
  call void @llvm.assume(i1 %i.k)
  %i.l = and i64 %.val2.i.i, 65536
  %.not.i.i.i.i = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.n = xor i64 %notmask.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i1 noundef zeroext %.not.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE15destructor_implEv.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE15destructor_implEv.exit: ; preds = %bb.b, %.noexc
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1679", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 6 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.val, 33685504
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.d = or i64 %.val, 131328
  store i64 %i.d, ptr %1, align 8, !noalias !12163
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load i8, ptr %i.f, align 8, !tbaa !161, !noalias !12163
  %.val7.val.i.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12163
  %i.g = trunc i32 %.val7.val.i.i to i8
  %i.h = icmp eq i8 %.val8.i.i, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12163
  store ptr %1, ptr %3, align 8, !tbaa !670, !noalias !12163
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !248, !noalias !12163
  %i.j = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIaEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !12163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12163
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !12163, !nonnull !181, !noundef !181
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !161, !noalias !12163
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.j
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12164 ; 3 uses
  %i.o = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.o
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12164
  %i.p = lshr i64 %.val, 8
  %i.q = and i64 %i.p, 255
  %i.r = load i32, ptr %2, align 4, !tbaa !188, !noalias !12164 ; 2 uses
  %i.s = and i32 %i.r, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %i.q, %i.t
  %i.v = zext nneg i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ab = lshr i64 %i.z, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val5.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12164 ; 3 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = trunc i32 %i.r to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.z, %bb.e ], [ %i.bc, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.640.0.i = and i64 %.pn.i, %i.aa          ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.640.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1), !noalias !12164
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.640.0.i
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !161, !noalias !12164 ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.af, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32
  %i.an = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.am) #49, !srcloc !240 ; 2 uses
  %.not68.i = icmp eq i32 %i.an, 0
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.025.069.i = phi i32 [ %i.av, %.critedge.i.i ], [ %i.an, %bb.f ] ; 3 uses
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nuw i64 %.sroa.640.0.i, %i.ap
  %i.ar = and i64 %i.aq, %i.aa                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.ar
  %.val3.i = load i8, ptr %i.as, align 1, !tbaa !161, !noalias !12164
  %i.at = icmp eq i8 %.val3.i, %i.ag
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.au = add i32 %.sroa.025.069.i, -1
  %i.av = and i32 %i.au, %.sroa.025.069.i         ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.aw = icmp eq <16 x i8> %i.aj, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #49, !srcloc !240 ; 2 uses
  %.not62.i = icmp eq i32 %i.az, 0
  br i1 %.not62.i, label %bb.h, label %bb.g, !prof !233

bb.g:                                             ; preds = %._crit_edge.i
  %i.ba = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i32 %i.az, i64 %.sroa.640.0.i, i64 %.sroa.14.0.i), !noalias !12164
  %.sroa.0.0.copyload.i.i.i.i8.pre.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12164
  %.val.i.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12164
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bb = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.640.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val5.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.350.ph.i = phi i64 [ %i.ba, %bb.g ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8.i, i64 %.350.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i4, i64 %.350.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i8.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit
  %.sink20 = phi ptr [ %i.bd, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.be, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.m, %bb.d ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ %i.f, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink20, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.bf, align 8, !tbaa !673
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIaEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !tbaa !161
  %i.a = zext i8 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE19transfer_n_slots_fnEPvS7_S7_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = and i64 %3, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !161
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <16 x i8> %wide.load17, ptr %i.i, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !12165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec20
  %i.l = getelementptr i8, ptr %2, i64 %n.vec20
  %i.m = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %index21
  %next.gep23 = getelementptr i8, ptr %2, i64 %index21
  %wide.load24 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.e, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 4 uses
  %i.o = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i8, ptr %.0913.prol, align 1, !tbaa !161
  store i8 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.p = add i64 %.01012.prol, -1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12167

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.s = icmp ult i64 %i.o, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.ai, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ah, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i8, ptr %.0913, align 1, !tbaa !161
  store i8 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.val1.val.val.i.1 = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %.val1.val.val.i.1, ptr %i.u, align 1, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.2 = load i8, ptr %i.v, align 1, !tbaa !161
  store i8 %.val1.val.val.i.2, ptr %i.w, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %.val1.val.val.i.3 = load i8, ptr %i.x, align 1, !tbaa !161
  store i8 %.val1.val.val.i.3, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.4 = load i8, ptr %i.z, align 1, !tbaa !161
  store i8 %.val1.val.val.i.4, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 5
  %.val1.val.val.i.5 = load i8, ptr %i.ab, align 1, !tbaa !161
  store i8 %.val1.val.val.i.5, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.6 = load i8, ptr %i.ad, align 1, !tbaa !161
  store i8 %.val1.val.val.i.6, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 7
  %.val1.val.val.i.7 = load i8, ptr %i.af, align 1, !tbaa !161
  store i8 %.val1.val.val.i.7, ptr %i.ag, align 1, !tbaa !161
  %i.ah = add i64 %.01012, -8                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12168

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIaLb0ELb1EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSC_PFvSC_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12169

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load i8, ptr %i.y, align 1, !tbaa !161
  %i.ac = zext i8 %.val53 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEED2Ev:bb.a
  store ptr %0, ptr %1, align 8, !tbaa !690
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.i = load i64, ptr %0, align 8          ; 2 uses
  %i.f = and i64 %.val2.i.i, 255                  ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.f       ; 4 uses
  %i.g = add nsw i64 %notmask.i.i.i.i.i, 131071
  %i.h = or i64 %i.g, %notmask.i.i.i.i.i
  %i.i = icmp eq i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp ne i64 %i.f, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %notmask.i.i.i.i.i, -131073
  call void @llvm.assume(i1 %i.k)
  %i.l = and i64 %.val2.i.i, 65536
  %.not.i.i.i.i = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.n = xor i64 %notmask.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef 2, i64 noundef 2, i1 noundef zeroext %.not.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE15destructor_implEv.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE15destructor_implEv.exit: ; preds = %bb.b, %.noexc
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS6_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1728", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 6 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.val, 8590065664
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.d = or i64 %.val, 131328
  store i64 %i.d, ptr %1, align 8, !noalias !12242
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load i16, ptr %i.f, align 8, !tbaa !604, !noalias !12242
  %.val7.val.i.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12242
  %i.g = trunc i32 %.val7.val.i.i to i16
  %i.h = icmp eq i16 %.val8.i.i, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12242
  store ptr %1, ptr %3, align 8, !tbaa !684, !noalias !12242
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !248, !noalias !12242
  %i.j = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIsEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !12242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12242
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !12242, !nonnull !181, !noundef !181
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !161, !noalias !12242
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.j
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12243 ; 3 uses
  %i.o = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.o
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12243
  %i.p = lshr i64 %.val, 8
  %i.q = and i64 %i.p, 255
  %i.r = load i32, ptr %2, align 4, !tbaa !188, !noalias !12243 ; 2 uses
  %i.s = and i32 %i.r, 65535
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %i.q, %i.t
  %i.v = zext nneg i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ab = lshr i64 %i.z, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val5.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12243 ; 3 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = trunc i32 %i.r to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.z, %bb.e ], [ %i.bc, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.640.0.i = and i64 %.pn.i, %i.aa          ; 5 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.val5.i, i64 %.sroa.640.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1), !noalias !12243
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.640.0.i
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !161, !noalias !12243 ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.af, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32
  %i.an = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.am) #49, !srcloc !240 ; 2 uses
  %.not68.i = icmp eq i32 %i.an, 0
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.025.069.i = phi i32 [ %i.av, %.critedge.i.i ], [ %i.an, %bb.f ] ; 3 uses
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nuw i64 %.sroa.640.0.i, %i.ap
  %i.ar = and i64 %i.aq, %i.aa                    ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.val5.i, i64 %i.ar
  %.val3.i = load i16, ptr %i.as, align 2, !tbaa !604, !noalias !12243
  %i.at = icmp eq i16 %.val3.i, %i.ag
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.au = add i32 %.sroa.025.069.i, -1
  %i.av = and i32 %i.au, %.sroa.025.069.i         ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.aw = icmp eq <16 x i8> %i.aj, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #49, !srcloc !240 ; 2 uses
  %.not62.i = icmp eq i32 %i.az, 0
  br i1 %.not62.i, label %bb.h, label %bb.g, !prof !233

bb.g:                                             ; preds = %._crit_edge.i
  %i.ba = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i32 %i.az, i64 %.sroa.640.0.i, i64 %.sroa.14.0.i), !noalias !12243
  %.sroa.0.0.copyload.i.i.i.i8.pre.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12243
  %.val.i.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !161, !noalias !12243
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bb = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.640.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val5.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.350.ph.i = phi i64 [ %i.ba, %bb.g ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8.i, i64 %.350.ph.i
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i4, i64 %.350.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i8.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS6_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit
  %.sink20 = phi ptr [ %i.bd, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.be, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ %i.m, %bb.d ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ %i.f, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS6_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink20, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.bf, align 8, !tbaa !687
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIsEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i16, ptr %1, align 2, !tbaa !604
  %i.a = zext i16 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE19transfer_n_slots_fnEPvS7_S7_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  %i.e = shl i64 %n.vec, 1                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  %i.h = and i64 %3, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep16, align 2, !tbaa !604
  %wide.load17 = load <8 x i16>, ptr %i.j, align 2, !tbaa !604
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !604
  store <8 x i16> %wide.load17, ptr %i.k, align 2, !tbaa !604
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !12244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !691

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 3 uses
  %i.m = shl i64 %n.vec20, 1                      ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 %i.m
  %i.p = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.q = shl i64 %index21, 1                      ; 2 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.q
  %next.gep23 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 2, !tbaa !604
  store <4 x i16> %wide.load24, ptr %next.gep22, align 2, !tbaa !604
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12245

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 4 uses
  %i.s = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.u, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i16, ptr %.0913.prol, align 2, !tbaa !604
  store i16 %.val1.val.val.i.prol, ptr %.014.prol, align 2, !tbaa !604
  %i.t = add i64 %.01012.prol, -1                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12246

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.w = icmp ult i64 %i.s, 7
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.an, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.am, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.al, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i16, ptr %.0913, align 2, !tbaa !604
  store i16 %.val1.val.val.i, ptr %.014, align 2, !tbaa !604
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.1 = load i16, ptr %i.x, align 2, !tbaa !604
  store i16 %.val1.val.val.i.1, ptr %i.y, align 2, !tbaa !604
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.2 = load i16, ptr %i.z, align 2, !tbaa !604
  store i16 %.val1.val.val.i.2, ptr %i.aa, align 2, !tbaa !604
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.3 = load i16, ptr %i.ab, align 2, !tbaa !604
  store i16 %.val1.val.val.i.3, ptr %i.ac, align 2, !tbaa !604
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.val1.val.val.i.4 = load i16, ptr %i.ad, align 2, !tbaa !604
  store i16 %.val1.val.val.i.4, ptr %i.ae, align 2, !tbaa !604
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 10
  %.val1.val.val.i.5 = load i16, ptr %i.af, align 2, !tbaa !604
  store i16 %.val1.val.val.i.5, ptr %i.ag, align 2, !tbaa !604
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.014, i64 12
  %.val1.val.val.i.6 = load i16, ptr %i.ah, align 2, !tbaa !604
  store i16 %.val1.val.val.i.6, ptr %i.ai, align 2, !tbaa !604
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913, i64 14
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 14
  %.val1.val.val.i.7 = load i16, ptr %i.aj, align 2, !tbaa !604
  store i16 %.val1.val.val.i.7, ptr %i.ak, align 2, !tbaa !604
  %i.al = add i64 %.01012, -8                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %.not.7 = icmp eq i64 %i.al, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12247

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIsLb0ELb1EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSC_PFvSC_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load i16, ptr %i.y, align 2, !tbaa !604 ; 2 uses
  %i.ac = zext i16 %.val53 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEED2Ev:bb.a
  %.pre6.i = add nsw i64 %.pre5.i, 511
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE7deallocEv.exit.i: ; preds = %.noexc, %bb.c
  %.pre-phi7.i = phi i64 [ %i.b, %bb.c ], [ %.pre6.i, %.noexc ]
  %notmask.i.i.i.i.pre-phi.i = phi i64 [ %notmask.i.i.i.i, %bb.c ], [ %.pre5.i, %.noexc ] ; 3 uses
  %.val2.i.i = phi i64 [ %.val3.i, %bb.c ], [ %.val2.i.pre.i, %.noexc ]
  %i.j = or i64 %notmask.i.i.i.i.pre-phi.i, %.pre-phi7.i
  %i.k = icmp eq i64 %i.j, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %notmask.i.i.i.i.pre-phi.i, -513
  call void @llvm.assume(i1 %i.l)
  %i.m = and i64 %.val2.i.i, 65536
  %.not.i.i.i.i = icmp ne i64 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.o = xor i64 %notmask.i.i.i.i.pre-phi.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_21MinimumAlignmentAllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i1 noundef zeroext %.not.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE7deallocEv.exit.i
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE7deallocEv.exit.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE22find_or_prepare_insertIiEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1854", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 5 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12532)
  %i.c = icmp ult i64 %.val, 33685504
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !12532 ; 2 uses
  %.val5.i = load i8, ptr %.val3.i, align 1, !tbaa !161, !noalias !12532
  %.val4.val.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12532
  %i.e = trunc i32 %.val4.val.i to i8
  %i.f = icmp eq i8 %.val5.i, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !12532
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val3.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !12532
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !721, !alias.scope !12532
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12532
  store ptr %1, ptr %3, align 8, !tbaa !726, !noalias !12532
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !248, !noalias !12532
  %i.i = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIhEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !12532 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.j, ptr %0, align 8, !alias.scope !12532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !12532
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.l, align 8, !tbaa !721, !alias.scope !12532
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12532
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12533)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !161, !noalias !12533 ; 3 uses
  %i.n = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.n
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12533
  %i.o = lshr i64 %.val, 8
  %i.p = and i64 %i.o, 255
  %i.q = load i32, ptr %2, align 4, !tbaa !188, !noalias !12533 ; 2 uses
  %i.r = and i32 %i.q, 255
  %i.s = zext nneg i32 %i.r to i64
  %i.t = xor i64 %i.p, %i.s
  %i.u = zext nneg i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 8779197792823184629 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64                   ; 3 uses
  %i.z = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.aa = lshr i64 %i.y, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val3.i4 = load ptr, ptr %i.ac, align 8, !tbaa !161, !noalias !12533 ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.af = trunc i32 %i.q to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i = phi i64 [ %i.y, %bb.f ], [ %i.bb, %bb.i ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.i ] ; 2 uses
  %.sroa.640.0.i = and i64 %.pn.i, %i.z           ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3.i4, i64 %.sroa.640.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1), !noalias !12533
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.640.0.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !tbaa !161, !noalias !12533 ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ae, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = zext i16 %i.ak to i32
  %i.am = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.al) #49, !srcloc !240 ; 2 uses
  %.not68.i = icmp eq i32 %i.am, 0
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i.i
  %.sroa.025.069.i = phi i32 [ %i.au, %.critedge.i.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.an = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.069.i, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw i64 %.sroa.640.0.i, %i.ao
  %i.aq = and i64 %i.ap, %i.z                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3.i4, i64 %i.aq
  %.val5.i5 = load i8, ptr %i.ar, align 1, !tbaa !161, !noalias !12533
  %i.as = icmp eq i8 %.val5.i5, %i.af
  br i1 %i.as, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.at = add i32 %.sroa.025.069.i, -1
  %i.au = and i32 %i.at, %.sroa.025.069.i         ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.g
  %i.av = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #49, !srcloc !240 ; 2 uses
  %.not62.i = icmp eq i32 %i.ay, 0
  br i1 %.not62.i, label %bb.i, label %bb.h, !prof !233

bb.h:                                             ; preds = %._crit_edge.i
  %i.az = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.y, i32 %i.ay, i64 %.sroa.640.0.i, i64 %.sroa.14.0.i), !noalias !12533
  %.sroa.0.0.copyload.i.i.i.i8.pre.i = load ptr, ptr %i.m, align 8, !tbaa !161, !noalias !12533
  %.val.i.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !161, !noalias !12533
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.ba = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.640.0.i
  br label %bb.g

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.h
  %.val.i.i = phi ptr [ %.val.i.pre.i, %bb.h ], [ %.val3.i4, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre.i, %bb.h ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.350.ph.i = phi i64 [ %i.az, %bb.h ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.h ], [ 0, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8.i, i64 %.350.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.350.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i8.i) ]
  store ptr %i.bc, ptr %0, align 8, !alias.scope !12533
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !12533
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i, ptr %i.be, align 8, !tbaa !721, !alias.scope !12533
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_smallIiEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE28find_or_prepare_insert_largeIiEESt4pairINSD_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIhEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !tbaa !161
  %i.a = zext i8 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE19transfer_n_slots_fnEPvSE_SE_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = and i64 %3, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !161
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <16 x i8> %wide.load17, ptr %i.i, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !12534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec20
  %i.l = getelementptr i8, ptr %2, i64 %n.vec20
  %i.m = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %index21
  %next.gep23 = getelementptr i8, ptr %2, i64 %index21
  %wide.load24 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12535

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.e, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 4 uses
  %i.o = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i8, ptr %.0913.prol, align 1, !tbaa !161
  store i8 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.p = add i64 %.01012.prol, -1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12536

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.s = icmp ult i64 %i.o, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.ai, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ah, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i8, ptr %.0913, align 1, !tbaa !161
  store i8 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.val1.val.val.i.1 = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %.val1.val.val.i.1, ptr %i.u, align 1, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.2 = load i8, ptr %i.v, align 1, !tbaa !161
  store i8 %.val1.val.val.i.2, ptr %i.w, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %.val1.val.val.i.3 = load i8, ptr %i.x, align 1, !tbaa !161
  store i8 %.val1.val.val.i.3, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.4 = load i8, ptr %i.z, align 1, !tbaa !161
  store i8 %.val1.val.val.i.4, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 5
  %.val1.val.val.i.5 = load i8, ptr %i.ab, align 1, !tbaa !161
  store i8 %.val1.val.val.i.5, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.6 = load i8, ptr %i.ad, align 1, !tbaa !161
  store i8 %.val1.val.val.i.6, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 7
  %.val1.val.val.i.7 = load i8, ptr %i.af, align 1, !tbaa !161
  store i8 %.val1.val.val.i.7, ptr %i.ag, align 1, !tbaa !161
  %i.ah = add i64 %.01012, -8                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12537

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS1_21MinimumAlignmentAllocIcEEEEPvS5_m(ptr noundef %0, i64 noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 3 uses
  %i.b = icmp ugt i64 %i.a, 9223372036854775799
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS1_21MinimumAlignmentAllocIcEEEEPvPT0_m.exit, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %i.a, -9
  br i1 %i.c, label %.noexc.i, label %.noexc4.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #45
  unreachable

.noexc4.i:                                        ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS1_21MinimumAlignmentAllocIcEEEEPvPT0_m.exit: ; preds = %bb.a
  %i.d = and i64 %i.a, 9223372036854775800
  %i.e = add nuw nsw i64 %i.d, 8
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  ret ptr %i.g
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_21MinimumAlignmentAllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  %i.b = select i1 %i.a, i64 8, i64 0
  %.0.i.i = select i1 %5, i64 9, i64 %i.b, !prof !233 ; 2 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, 15
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = add i64 %i.e, %4
  %i.g = add i64 %i.f, %.0.i.i
  %i.h = sub i64 0, %4
  %i.i = and i64 %i.g, %i.h
  %i.j = mul i64 %3, %1
  %i.k = sub nsw i64 0, %.0.i.i
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, -8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = add i64 %i.o, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.q) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJNS0_13hash_internal4HashIhEESt8equal_toIhENS1_21MinimumAlignmentAllocIhEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEED2Ev:bb.a
  store ptr %0, ptr %1, align 8, !tbaa !746
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyINS5_12AlignedValueIhLi2EEELb0ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.i = load i64, ptr %0, align 8          ; 2 uses
  %i.f = and i64 %.val2.i.i, 255                  ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.f       ; 4 uses
  %i.g = add nsw i64 %notmask.i.i.i.i.i, 131071
  %i.h = or i64 %i.g, %notmask.i.i.i.i.i
  %i.i = icmp eq i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp ne i64 %i.f, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %notmask.i.i.i.i.i, -131073
  call void @llvm.assume(i1 %i.k)
  %i.l = and i64 %.val2.i.i, 65536
  %.not.i.i.i.i = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.n = xor i64 %notmask.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef 2, i64 noundef 1, i1 noundef zeroext %.not.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE15destructor_implEv.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE15destructor_implEv.exit: ; preds = %bb.b, %.noexc
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1909", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 6 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.val, 8590065664
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i.i = icmp samesign ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.d = or i64 %.val, 131328
  store i64 %i.d, ptr %1, align 8, !noalias !12801
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load i16, ptr %i.f, align 8, !noalias !12801
  %.val7.val.i.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12801
  %i.g = trunc i32 %.val7.val.i.i to i16
  %i.h = icmp eq i16 %.val8.i.i, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !12801
  store ptr %1, ptr %3, align 8, !tbaa !740, !noalias !12801
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !248, !noalias !12801
  %i.j = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashINS3_12_GLOBAL__N_112AlignedValueIhLi2EEEEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !12801 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !12801
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !12801, !nonnull !181, !noundef !181
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !161, !noalias !12801
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.j
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12802 ; 3 uses
  %i.o = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.o
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !12802
  %i.p = lshr i64 %.val, 8
  %i.q = and i64 %i.p, 255
  %.val3.i = load i32, ptr %2, align 4, !tbaa !188, !noalias !12802 ; 2 uses
  %.sroa.0.0.insert.insert1.i.i.i = and i32 %.val3.i, 65535
  %.sroa.0.0.insert.insert.i.i.i = zext nneg i32 %.sroa.0.0.insert.insert1.i.i.i to i64
  %i.r = xor i64 %i.q, %.sroa.0.0.insert.insert.i.i.i
  %i.s = zext nneg i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 3 uses
  %i.x = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.y = lshr i64 %i.w, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val8.i = load ptr, ptr %i.aa, align 8, !tbaa !161, !noalias !12802 ; 3 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = trunc i32 %.val3.i to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.w, %bb.e ], [ %i.az, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.643.0.i = and i64 %.pn.i, %i.x           ; 5 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.val8.i, i64 %.sroa.643.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1), !noalias !12802
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.643.0.i
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !161, !noalias !12802 ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ac, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aj) #49, !srcloc !240 ; 2 uses
  %.not71.i = icmp eq i32 %i.ak, 0
  br i1 %.not71.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.028.072.i = phi i32 [ %i.as, %.critedge.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.al = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.028.072.i, i1 true)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nuw i64 %.sroa.643.0.i, %i.am
  %i.ao = and i64 %i.an, %i.x                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.val8.i, i64 %i.ao
  %.val5.i = load i16, ptr %i.ap, align 1, !noalias !12802
  %i.aq = icmp eq i16 %.val5.i, %i.ad
  br i1 %i.aq, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !241

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.ar = add i32 %.sroa.028.072.i, -1
  %i.as = and i32 %i.ar, %.sroa.028.072.i         ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.at = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32
  %i.aw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av) #49, !srcloc !240 ; 2 uses
  %.not65.i = icmp eq i32 %i.aw, 0
  br i1 %.not65.i, label %bb.h, label %bb.g, !prof !233

bb.g:                                             ; preds = %._crit_edge.i
  %i.ax = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.w, i32 %i.aw, i64 %.sroa.643.0.i, i64 %.sroa.14.0.i), !noalias !12802
  %.sroa.0.0.copyload.i.i.i.i11.pre.i = load ptr, ptr %i.n, align 8, !tbaa !161, !noalias !12802
  %.val.i.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !161, !noalias !12802
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.ay = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.643.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val8.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i11.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i11.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.353.ph.i = phi i64 [ %i.ax, %bb.g ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i11.i, i64 %.353.ph.i
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i4, i64 %.353.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i11.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit
  %.sink20 = phi ptr [ %i.ba, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.bb, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit ], [ %i.m, %bb.d ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ %i.f, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink20, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.bc, align 8, !tbaa !743
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIS6_EELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #19 align 2 {
bb.a:
  %.val2 = load i16, ptr %1, align 1, !tbaa !161
  %i.a = zext i16 %.val2 to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE19transfer_n_slots_fnEPvS9_S9_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  %i.e = shl i64 %n.vec, 1                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  %i.h = and i64 %3, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <8 x i16>, ptr %i.j, align 1, !tbaa !161
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <8 x i16> %wide.load17, ptr %i.k, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !12803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !691

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 3 uses
  %i.m = shl i64 %n.vec20, 1                      ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 %i.m
  %i.p = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.q = shl i64 %index21, 1                      ; 2 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.q
  %next.gep23 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i16> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12804

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 4 uses
  %i.s = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.u, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i16, ptr %.0913.prol, align 1, !tbaa !161
  store i16 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.t = add i64 %.01012.prol, -1                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12805

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.w = icmp ult i64 %i.s, 7
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.an, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.am, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.al, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i16, ptr %.0913, align 1, !tbaa !161
  store i16 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.1 = load i16, ptr %i.x, align 1, !tbaa !161
  store i16 %.val1.val.val.i.1, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.2 = load i16, ptr %i.z, align 1, !tbaa !161
  store i16 %.val1.val.val.i.2, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.3 = load i16, ptr %i.ab, align 1, !tbaa !161
  store i16 %.val1.val.val.i.3, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.val1.val.val.i.4 = load i16, ptr %i.ad, align 1, !tbaa !161
  store i16 %.val1.val.val.i.4, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 10
  %.val1.val.val.i.5 = load i16, ptr %i.af, align 1, !tbaa !161
  store i16 %.val1.val.val.i.5, ptr %i.ag, align 1, !tbaa !161
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.014, i64 12
  %.val1.val.val.i.6 = load i16, ptr %i.ah, align 1, !tbaa !161
  store i16 %.val1.val.val.i.6, ptr %i.ai, align 1, !tbaa !161
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913, i64 14
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 14
  %.val1.val.val.i.7 = load i16, ptr %i.aj, align 1, !tbaa !161
  store i16 %.val1.val.val.i.7, ptr %i.ak, align 1, !tbaa !161
  %i.al = add i64 %.01012, -8                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %.not.7 = icmp eq i64 %i.al, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !12806

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueIhLi2EEELb0ELb1EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSE_PFvSE_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12807

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load i16, ptr %i.y, align 1, !tbaa !161
  %i.ac = zext i16 %.val53 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_126AlignOneTest_AlignOne_TestINS2_10ValueTableIhLb0ELb0ESaIhEEEE8TestBodyEv:bb.a
  %.pre5.i.i = shl nsw i64 -1, %.pre.i.i          ; 2 uses
  %.pre6.i.i = add nsw i64 %.pre5.i.i, 511
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i.i: ; preds = %.noexc.i, %bb.cc
  %.pre-phi7.i.i = phi i64 [ %i.ks, %bb.cc ], [ %.pre6.i.i, %.noexc.i ]
  %notmask.i.i.i.i.pre-phi.i.i = phi i64 [ %notmask.i.i.i.i.i172, %bb.cc ], [ %.pre5.i.i, %.noexc.i ] ; 3 uses
  %.val2.i.i.i = phi i64 [ %.val3.i.i171, %bb.cc ], [ %.val2.i.pre.i.i, %.noexc.i ]
  %i.la = or i64 %notmask.i.i.i.i.pre-phi.i.i, %.pre-phi7.i.i
  %i.lb = icmp eq i64 %i.la, -1
  call void @llvm.assume(i1 %i.lb)
  %i.lc = icmp samesign ugt i64 %notmask.i.i.i.i.pre-phi.i.i, -513
  call void @llvm.assume(i1 %i.lc)
  %i.ld = and i64 %.val2.i.i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.ld, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.le = xor i64 %notmask.i.i.i.i.pre-phi.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.le, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev.exit unwind label %bb.ce

bb.ce:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i.i, %bb.cd
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev.exit: ; preds = %.loopexit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void

bb.cf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit163, %bb.bo, %bb.av
  %.pn64.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.av ], [ %.pn60.pn.pn, %bb.bo ], [ %.pn64.pn.pn, %_ZN7testing7MessageD2Ev.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2IlEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.a = load ptr, ptr %5, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %3, align 8, !tbaa !166
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit:           ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !160    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !161
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr %5, align 8, !tbaa !170    ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIlEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !160    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !161
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.o, %bb.e ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !170    ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i.i10, label %_ZN7testing7MessageD2Ev.exit12, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit12

_ZN7testing7MessageD2Ev.exit12:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.2764, align 8           ; 4 uses
  %.val3.i = load i64, ptr %0, align 8            ; 4 uses
  %i.a = and i64 %.val3.i, 255                    ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.a         ; 4 uses
  %i.b = add nsw i64 %notmask.i.i.i.i, 511        ; 2 uses
  %i.c = or i64 %i.b, %notmask.i.i.i.i
  %i.d = icmp eq i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %notmask.i.i.i.i, -513
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.val3.i, 254
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %.val3.i, 33685504
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store ptr %0, ptr %1, align 8, !tbaa !888
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.pre.i = load i64, ptr %0, align 8      ; 2 uses
  %.pre.i = and i64 %.val2.i.pre.i, 255
  %.pre5.i = shl nsw i64 -1, %.pre.i              ; 2 uses
  %.pre6.i = add nsw i64 %.pre5.i, 511
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i: ; preds = %.noexc, %bb.c
  %.pre-phi7.i = phi i64 [ %i.b, %bb.c ], [ %.pre6.i, %.noexc ]
  %notmask.i.i.i.i.pre-phi.i = phi i64 [ %notmask.i.i.i.i, %bb.c ], [ %.pre5.i, %.noexc ] ; 3 uses
  %.val2.i.i = phi i64 [ %.val3.i, %bb.c ], [ %.val2.i.pre.i, %.noexc ]
  %i.j = or i64 %notmask.i.i.i.i.pre-phi.i, %.pre-phi7.i
  %i.k = icmp eq i64 %i.j, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %notmask.i.i.i.i.pre-phi.i, -513
  call void @llvm.assume(i1 %i.l)
  %i.m = and i64 %.val2.i.i, 65536
  %.not.i.i.i.i = icmp ne i64 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.o = xor i64 %notmask.i.i.i.i.pre-phi.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i1 noundef zeroext %.not.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE7deallocEv.exit.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE19transfer_n_slots_fnEPvS7_S7_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = and i64 %3, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !161
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !161
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !161
  store <16 x i8> %wide.load17, ptr %i.i, align 1, !tbaa !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !21332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %3, -4                       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec20
  %i.l = getelementptr i8, ptr %2, i64 %n.vec20
  %i.m = and i64 %3, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %index21
  %next.gep23 = getelementptr i8, ptr %2, i64 %index21
  %wide.load24 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !161
  store <4 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !161
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21333

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %3, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %1, %iter.check ], [ %i.e, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 4 uses
  %i.o = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.0913.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.val1.val.val.i.prol = load i8, ptr %.0913.prol, align 1, !tbaa !161
  store i8 %.val1.val.val.i.prol, ptr %.014.prol, align 1, !tbaa !161
  %i.p = add i64 %.01012.prol, -1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21334

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.s = icmp ult i64 %i.o, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.ai, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ah, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %.val1.val.val.i = load i8, ptr %.0913, align 1, !tbaa !161
  store i8 %.val1.val.val.i, ptr %.014, align 1, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.val1.val.val.i.1 = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %.val1.val.val.i.1, ptr %i.u, align 1, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %.val1.val.val.i.2 = load i8, ptr %i.v, align 1, !tbaa !161
  store i8 %.val1.val.val.i.2, ptr %i.w, align 1, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %.0913, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %.val1.val.val.i.3 = load i8, ptr %i.x, align 1, !tbaa !161
  store i8 %.val1.val.val.i.3, ptr %i.y, align 1, !tbaa !161
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %.val1.val.val.i.4 = load i8, ptr %i.z, align 1, !tbaa !161
  store i8 %.val1.val.val.i.4, ptr %i.aa, align 1, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 5
  %.val1.val.val.i.5 = load i8, ptr %i.ab, align 1, !tbaa !161
  store i8 %.val1.val.val.i.5, ptr %i.ac, align 1, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 6
  %.val1.val.val.i.6 = load i8, ptr %i.ad, align 1, !tbaa !161
  store i8 %.val1.val.val.i.6, ptr %i.ae, align 1, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 7
  %.val1.val.val.i.7 = load i8, ptr %i.af, align 1, !tbaa !161
  store i8 %.val1.val.val.i.7, ptr %i.ag, align 1, !tbaa !161
  %i.ah = add i64 %.01012, -8                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !21335

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIhLb0ELb0EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSC_PFvSC_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !161 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val53 = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #49, !srcloc !240 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !21336

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val52 = load i8, ptr %i.y, align 1, !tbaa !161
  %i.ac = zext i8 %.val52 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
end_hunk_4
