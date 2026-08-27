Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi3EEELb0ELb1ESaIS6_EEEE8TestBodyEv:bb.a
  %i.ls = icmp ne i64 %i.lo, 0
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp samesign ugt i64 %notmask.i.i.i.i.i.i164, -281474976710657
  call void @llvm.assume(i1 %i.lt)
  %i.lu = and i64 %.val2.i.i.i163, 65536
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i167 = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.lv = xor i64 %notmask.i.i.i.i.i.i164, -1
  %i.lw = icmp ne i64 %i.lu, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.lv, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i167, i64 noundef 6, i64 noundef 2, i1 noundef zeroext %i.lw)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %.noexc.i162, %bb.bs
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #48
  unreachable

bb.bu:                                            ; preds = %.noexc.i162, %.critedge68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.lz = add nuw nsw i64 %.040252, 1             ; 2 uses
  %exitcond264 = icmp eq i64 %i.lz, %indvars.iv
  br i1 %exitcond264, label %.critedge70, label %bb.b, !llvm.loop !15116

bb.bv:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit104, %_ZN7testing15AssertionResultD2Ev.exit153, %bb.ag, %bb.r
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.r ], [ %.pn.pn.pn.pn, %bb.ag ], [ %.pn59.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit153 ], [ %.pn51.pn.pn, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.j
  %.pn65 = phi { ptr, i32 } [ %i.cd, %bb.j ], [ %.pn59.pn.pn.pn.pn, %bb.bv ]
  %.val2.i.i173 = load i64, ptr %7, align 8       ; 2 uses
  %i.ma = and i64 %.val2.i.i173, 255
  %i.mb = icmp ne i64 %i.ma, 0
  call void @llvm.assume(i1 %i.mb)
  %i.mc = and i64 %.val2.i.i173, 254
  %i.md = icmp eq i64 %i.mc, 0
  br i1 %i.md, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi3EEELb0ELb1EEEJEED2Ev.exit185, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %7, ptr %4, align 8, !tbaa !12790
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 6, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyINS5_12AlignedValueItLi3EEELb0ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i175 unwind label %bb.by

.noexc.i175:                                      ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %.val2.i.i.i176 = load i64, ptr %7, align 8     ; 2 uses
  %i.me = and i64 %.val2.i.i.i176, 255            ; 2 uses
  %notmask.i.i.i.i.i.i177 = shl nsw i64 -1, %i.me ; 4 uses
  %i.mf = add nsw i64 %notmask.i.i.i.i.i.i177, 281474976710655
  %i.mg = or i64 %i.mf, %notmask.i.i.i.i.i.i177
  %i.mh = icmp eq i64 %i.mg, -1
  call void @llvm.assume(i1 %i.mh)
  %i.mi = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp samesign ugt i64 %notmask.i.i.i.i.i.i177, -281474976710657
  call void @llvm.assume(i1 %i.mj)
  %i.mk = and i64 %.val2.i.i.i176, 65536
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i180 = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.ml = xor i64 %notmask.i.i.i.i.i.i177, -1
  %i.mm = icmp ne i64 %i.mk, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ml, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i180, i64 noundef 6, i64 noundef 2, i1 noundef zeroext %i.mm)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi3EEELb0ELb1EEEJEED2Ev.exit185 unwind label %bb.by

bb.by:                                            ; preds = %.noexc.i175, %bb.bx
  %i.mn = landingpad { ptr, i32 }
          catch ptr null
  %i.mo = extractvalue { ptr, i32 } %i.mn, 0
  call void @__clang_call_terminate(ptr %i.mo) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi3EEELb0ELb1EEEJEED2Ev.exit185: ; preds = %bb.bw, %.noexc.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  resume { ptr, i32 } %.pn65

bb.bz:                                            ; preds = %.noexc.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.loopexit

.critedge70:                                      ; preds = %bb.bu
  %i.mp = add nuw nsw i64 %storemerge253, 1       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond265.not = icmp eq i64 %i.mp, 32
  br i1 %exitcond265.not, label %.loopexit, label %.preheader, !llvm.loop !15117

.loopexit:                                        ; preds = %.critedge70, %bb.bz
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS5_10ValueTableINS5_12AlignedValueItLi5EEELb1ELb1ESaIS9_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS5_10ValueTableINS5_12AlignedValueItLi5EEELb1ELb1ESaIS9_EEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb1ELb1ESaIS6_EEEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb1ELb1ESaIS6_EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb1ELb1ESaIS6_EEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.2059", align 8 ; 5 uses
  %4 = alloca %class.anon.2071, align 8           ; 4 uses
  %5 = alloca %class.anon.2071, align 8           ; 4 uses
  %6 = alloca %class.anon.2071, align 8           ; 4 uses
  %7 = alloca %"struct.absl::lts_20260526::container_internal::(anonymous namespace)::ValueTable.2041", align 8 ; 31 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  tail call void @_ZN4absl12lts_2026052618container_internal20SetHashtablezEnabledEb(i1 noundef zeroext false)
  tail call void @_ZN4absl12lts_2026052618container_internal28SetHashtablezSampleParameterEi(i32 noundef 65536)
  tail call void @_ZN4absl12lts_2026052618container_internal44TestOnlyRefreshSamplingStateForCurrentThreadEv()
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge70
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.critedge70 ] ; 2 uses
  %storemerge236 = phi i64 [ 0, %bb.a ], [ %i.ll, %.critedge70 ] ; 5 uses
  %i.n = call i64 @llvm.umax.i64(i64 %storemerge236, i64 1)
  %umax245 = call i64 @llvm.umin.i64(i64 %i.n, i64 5) ; 2 uses
  %.not237 = icmp eq i64 %storemerge236, 0        ; 2 uses
  %i.o = icmp samesign ugt i64 %storemerge236, 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.bu
  %.040235 = phi i64 [ 0, %.preheader ], [ %i.kv, %bb.bu ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  store i64 1, ptr %7, align 8
  br i1 %.not237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit
  %.val.i185 = phi i64 [ %.val.i185250, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit ], [ 1, %bb.b ] ; 7 uses
  %.039230 = phi i64 [ %i.br, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit ], [ 0, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.p = trunc i64 %.039230 to i32                ; 3 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !3847
  %i.q = and i64 %.val.i185, 254
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %.not.i.i.i.i = icmp ult i64 %.val.i185, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE17should_sample_sooEv.exit.i.i.i, label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE17should_sample_sooEv.exit.i.i.i: ; preds = %bb.c
  %i.s = or i64 %.val.i185, 131328
  store i64 %i.s, ptr %7, align 8, !noalias !15118
  br label %.noexc.thread

bb.d:                                             ; preds = %bb.c
  %.val8.i.i.i = load i64, ptr %i.e, align 8, !noalias !15118
  %isneg.i.i.i.i.i.i.i = icmp slt i32 %i.p, 0
  %.sroa.0.4.insert.ext.i.i.i.i.i.i.i = select i1 %isneg.i.i.i.i.i.i.i, i64 281470681743360, i64 0
  %.sroa.0.4.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.0.4.insert.ext.i.i.i.i.i.i.i, %.039230
  %i.t = icmp eq i64 %.val8.i.i.i, %.sroa.0.4.insert.insert.i.i.i.i.i.i.i
  br i1 %i.t, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !15118
  store ptr %7, ptr %3, align 8, !tbaa !12861, !noalias !15118
  store ptr %i.a, ptr %i.g, align 8, !tbaa !4289, !noalias !15118
  %i.u = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashINS3_12_GLOBAL__N_112AlignedValueItLi5EEEEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc189 unwind label %bb.j

.noexc189:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !15118
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !15118
  %i.v = getelementptr inbounds nuw [10 x i8], ptr %.val.i.i.i.i, i64 %i.u
  br label %.noexc.thread

bb.f:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !30, !noalias !15125 ; 3 uses
  %i.w = and i64 %.val.i185, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.w
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !15125
  %i.x = lshr i64 %.val.i185, 8
  %i.y = and i64 %i.x, 255
  %isneg.i.i.i.i = icmp slt i32 %i.p, 0
  %.sroa.0.4.insert.ext.i.i.i.i = select i1 %isneg.i.i.i.i, i64 281470681743360, i64 0
  %.sroa.0.4.insert.insert.i.i.i.i = or disjoint i64 %.sroa.0.4.insert.ext.i.i.i.i, %.039230 ; 2 uses
  %i.z = xor i64 %i.y, %.sroa.0.4.insert.insert.i.i.i.i
  %i.aa = zext nneg i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 3 uses
  %i.af = xor i64 %notmask.i.i.i.i.i.i.i, -1      ; 2 uses
  %i.ag = lshr i64 %i.ae, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %.val7.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !15125 ; 2 uses
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.bg, %bb.i ]
  %.sroa.14.0.i.i = phi i64 [ 0, %bb.f ], [ %i.bf, %bb.i ] ; 2 uses
  %.sroa.642.0.i.i = and i64 %.pn.i.i, %i.af      ; 5 uses
  %i.ak = getelementptr inbounds nuw [10 x i8], ptr %.val7.i.i, i64 %.sroa.642.0.i.i
  call void @llvm.prefetch.p0(ptr %i.ak, i32 0, i32 3, i32 1), !noalias !15125
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.642.0.i.i
  %i.am = load <16 x i8>, ptr %i.al, align 1, !tbaa !30, !noalias !15125 ; 2 uses
  %i.an = icmp eq <16 x i8> %i.aj, %i.am
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = zext i16 %i.ao to i32
  %i.aq = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap) #49, !srcloc !4277 ; 2 uses
  %.not70.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not70.i.i, label %._crit_edge.i.i188, label %.lr.ph.i.i186

.lr.ph.i.i186:                                    ; preds = %bb.g, %.critedge.i.i.i
  %.sroa.027.071.i.i = phi i32 [ %i.ay, %.critedge.i.i.i ], [ %i.aq, %bb.g ] ; 3 uses
  %i.ar = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nuw i64 %.sroa.642.0.i.i, %i.as
  %i.au = and i64 %i.at, %i.af
  %i.av = getelementptr inbounds nuw [10 x i8], ptr %.val7.i.i, i64 %i.au
  %.val3.i.i = load i64, ptr %i.av, align 2, !noalias !15125
  %i.aw = icmp eq i64 %.val3.i.i, %.sroa.0.4.insert.insert.i.i.i.i
  br i1 %i.aw, label %.noexc, label %.critedge.i.i.i, !prof !4278

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i186
  %i.ax = add i32 %.sroa.027.071.i.i, -1
  %i.ay = and i32 %i.ax, %.sroa.027.071.i.i       ; 2 uses
  %.not.i.i187 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i187, label %._crit_edge.i.i188, label %.lr.ph.i.i186

._crit_edge.i.i188:                               ; preds = %.critedge.i.i.i, %bb.g
  %i.az = icmp eq <16 x i8> %i.am, splat (i8 -128)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = zext i16 %i.ba to i32
  %i.bc = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bb) #49, !srcloc !4277 ; 2 uses
  %.not64.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not64.i.i, label %bb.i, label %bb.h, !prof !4208

bb.h:                                             ; preds = %._crit_edge.i.i188
  %i.bd = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ae, i32 %i.bc, i64 %.sroa.642.0.i.i, i64 %.sroa.14.0.i.i)
          to label %.noexc.thread216 unwind label %bb.j

.noexc.thread216:                                 ; preds = %bb.h
  %.val.i.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !15125
  %i.be = getelementptr inbounds nuw [10 x i8], ptr %.val.i.pre.i.i, i64 %i.bd
  br label %.noexc.thread

bb.i:                                             ; preds = %._crit_edge.i.i188
  %i.bf = add i64 %.sroa.14.0.i.i, 16             ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.642.0.i.i
  br label %bb.g

.noexc:                                           ; preds = %.lr.ph.i.i186
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit

.noexc.thread:                                    ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE17should_sample_sooEv.exit.i.i.i, %.noexc189, %.noexc.thread216
  %.sink.i212 = phi ptr [ %i.be, %.noexc.thread216 ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE17should_sample_sooEv.exit.i.i.i ], [ %i.v, %.noexc189 ] ; 4 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3847, !noalias !15128 ; 3 uses
  %i.bh = sext i32 %.val.i.i.i.i.i.i to i64       ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %.sink.i212, align 2, !noalias !15128
  %i.bi = ashr i32 %.val.i.i.i.i.i.i, 31
  %i.bj = trunc nsw i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink.i212, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !9295, !noalias !15128
  %i.bl = lshr i64 %i.bh, 48
  %i.bm = trunc nuw i64 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink.i212, i64 6
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !9295, !noalias !15128
  %i.bo = ashr i64 %i.bh, 63
  %i.bp = trunc nsw i64 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink.i212, i64 8
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !9295, !noalias !15128
  %.val.i185.pre = load i64, ptr %7, align 8, !noalias !15141
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit: ; preds = %bb.d, %.noexc.thread, %.noexc
  %.val.i185250 = phi i64 [ %.val.i185, %bb.d ], [ %.val.i185.pre, %.noexc.thread ], [ %.val.i185, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.br = add nuw nsw i64 %.039230, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %umax245
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15142

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.bw

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit
  %i.bt = and i64 %.val.i185250, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.val80 = phi i64 [ %i.bt, %._crit_edge.loopexit ], [ 1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %notmask.i.i.i = shl nsw i64 -1, %.val80        ; 4 uses
  %i.bu = xor i64 %notmask.i.i.i, -1
  %i.bv = add nsw i64 %notmask.i.i.i, 281474976710655
  %i.bw = or i64 %i.bv, %notmask.i.i.i
  %i.bx = icmp eq i64 %i.bw, -1
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp ne i64 %.val80, 0
  call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i64 %notmask.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.bz)
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !52
  br i1 %i.o, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE7reserveEm.exit, !prof !4278

bb.k:                                             ; preds = %._crit_edge
  invoke void @_ZN4absl12lts_2026052618container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %storemerge236)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE7reserveEm.exit unwind label %bb.r

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE7reserveEm.exit: ; preds = %._crit_edge, %bb.k
  invoke void @_ZN4absl12lts_2026052618container_internal6RehashERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %.040235)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6rehashEm.exit unwind label %bb.r

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6rehashEm.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE7reserveEm.exit
  %i.ca = icmp eq i64 %.040235, 0
  br i1 %i.ca, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE6rehashEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %.val79 = load i64, ptr %7, align 8
  %i.cb = and i64 %.val79, 255                    ; 2 uses
  %notmask.i.i.i84 = shl nsw i64 -1, %i.cb        ; 4 uses
  %i.cc = xor i64 %notmask.i.i.i84, -1            ; 2 uses
  %i.cd = add nsw i64 %notmask.i.i.i84, 281474976710655
  %i.ce = or i64 %i.cd, %notmask.i.i.i84
  %i.cf = icmp eq i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ugt i64 %notmask.i.i.i84, -281474976710657
  call void @llvm.assume(i1 %i.ch)
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !52
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !15143
  %i.cj = icmp eq i64 %i.ci, %i.cc
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.s

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43, !noalias !15148
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc192 unwind label %bb.s

.noexc192:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !15148
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.p, !noalias !15148

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc192
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.489, ptr noundef nonnull @.str.792, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ck = load ptr, ptr %2, align 8, !tbaa !26, !noalias !15148 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.h
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.cm = load i64, ptr %i.h, align 8, !tbaa !30, !noalias !15148
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !15148
  %i.co = load ptr, ptr %1, align 8, !tbaa !26, !noalias !15148 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.i
  br i1 %i.cp, label %.noexc86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !30, !noalias !15148
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #44
  br label %.noexc86

bb.p:                                             ; preds = %.noexc192
  %i.cs = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb1ELb1ESaIS6_EEEE8TestBodyEv:bb.a
  %i.ko = icmp ne i64 %i.kk, 0
  call void @llvm.assume(i1 %i.ko)
  %i.kp = icmp samesign ugt i64 %notmask.i.i.i.i.i.i163, -281474976710657
  call void @llvm.assume(i1 %i.kp)
  %i.kq = and i64 %.val2.i.i.i162, 65536
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i166 = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.kr = xor i64 %notmask.i.i.i.i.i.i163, -1
  %i.ks = icmp ne i64 %i.kq, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.kr, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i166, i64 noundef 10, i64 noundef 2, i1 noundef zeroext %i.ks)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %.noexc.i161, %bb.bs
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #48
  unreachable

bb.bu:                                            ; preds = %.noexc.i161, %.critedge68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.kv = add nuw nsw i64 %.040235, 1             ; 2 uses
  %exitcond247 = icmp eq i64 %i.kv, %indvars.iv
  br i1 %exitcond247, label %.critedge70, label %bb.b, !llvm.loop !15152

bb.bv:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit108, %_ZN7testing15AssertionResultD2Ev.exit152, %bb.ag, %bb.r
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.r ], [ %.pn.pn.pn.pn, %bb.ag ], [ %.pn59.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit152 ], [ %.pn51.pn.pn, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.j
  %.pn65 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %.pn59.pn.pn.pn.pn, %bb.bv ]
  %.val2.i.i172 = load i64, ptr %7, align 8       ; 2 uses
  %i.kw = and i64 %.val2.i.i172, 255
  %i.kx = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %i.kx)
  %i.ky = and i64 %.val2.i.i172, 254
  %i.kz = icmp eq i64 %i.ky, 0
  br i1 %i.kz, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit184, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %7, ptr %4, align 8, !tbaa !12829
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 10, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyINS5_12AlignedValueItLi5EEELb1ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i174 unwind label %bb.by

.noexc.i174:                                      ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %.val2.i.i.i175 = load i64, ptr %7, align 8     ; 2 uses
  %i.la = and i64 %.val2.i.i.i175, 255            ; 2 uses
  %notmask.i.i.i.i.i.i176 = shl nsw i64 -1, %i.la ; 4 uses
  %i.lb = add nsw i64 %notmask.i.i.i.i.i.i176, 281474976710655
  %i.lc = or i64 %i.lb, %notmask.i.i.i.i.i.i176
  %i.ld = icmp eq i64 %i.lc, -1
  call void @llvm.assume(i1 %i.ld)
  %i.le = icmp ne i64 %i.la, 0
  call void @llvm.assume(i1 %i.le)
  %i.lf = icmp samesign ugt i64 %notmask.i.i.i.i.i.i176, -281474976710657
  call void @llvm.assume(i1 %i.lf)
  %i.lg = and i64 %.val2.i.i.i175, 65536
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i179 = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.lh = xor i64 %notmask.i.i.i.i.i.i176, -1
  %i.li = icmp ne i64 %i.lg, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.lh, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i179, i64 noundef 10, i64 noundef 2, i1 noundef zeroext %i.li)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit184 unwind label %bb.by

bb.by:                                            ; preds = %.noexc.i174, %bb.bx
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit184: ; preds = %bb.bw, %.noexc.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  resume { ptr, i32 } %.pn65

bb.bz:                                            ; preds = %.noexc.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.loopexit

.critedge70:                                      ; preds = %bb.bu
  %i.ll = add nuw nsw i64 %storemerge236, 1       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond248.not = icmp eq i64 %i.ll, 32
  br i1 %exitcond248.not, label %.loopexit, label %.preheader, !llvm.loop !15153

.loopexit:                                        ; preds = %.critedge70, %bb.bz
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS5_10ValueTableINS5_12AlignedValueItLi5EEELb0ELb1ESaIS9_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS5_10ValueTableINS5_12AlignedValueItLi5EEELb0ELb1ESaIS9_EEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb0ELb1ESaIS6_EEEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb0ELb1ESaIS6_EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_149SmallTableResizeTest_ResizeReduceSmallTables_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb0ELb1ESaIS6_EEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.2059", align 8 ; 5 uses
  %4 = alloca %class.anon.2087, align 8           ; 4 uses
  %5 = alloca %class.anon.2087, align 8           ; 4 uses
  %6 = alloca %class.anon.2087, align 8           ; 4 uses
  %7 = alloca %"struct.absl::lts_20260526::container_internal::(anonymous namespace)::ValueTable.2075", align 8 ; 31 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  tail call void @_ZN4absl12lts_2026052618container_internal20SetHashtablezEnabledEb(i1 noundef zeroext false)
  tail call void @_ZN4absl12lts_2026052618container_internal28SetHashtablezSampleParameterEi(i32 noundef 65536)
  tail call void @_ZN4absl12lts_2026052618container_internal44TestOnlyRefreshSamplingStateForCurrentThreadEv()
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge70
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.critedge70 ] ; 2 uses
  %storemerge235 = phi i64 [ 0, %bb.a ], [ %i.ll, %.critedge70 ] ; 5 uses
  %i.n = call i64 @llvm.umax.i64(i64 %storemerge235, i64 1)
  %umax244 = call i64 @llvm.umin.i64(i64 %i.n, i64 5) ; 2 uses
  %.not236 = icmp eq i64 %storemerge235, 0        ; 2 uses
  %i.o = icmp samesign ugt i64 %storemerge235, 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.bu
  %.040234 = phi i64 [ 0, %.preheader ], [ %i.kv, %bb.bu ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  store i64 1, ptr %7, align 8
  br i1 %.not236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit
  %.val.i = phi i64 [ %.val.i249, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit ], [ 1, %bb.b ] ; 7 uses
  %.039229 = phi i64 [ %i.br, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit ], [ 0, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.p = trunc i64 %.039229 to i32                ; 3 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !3847
  %i.q = and i64 %.val.i, 254
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %.not.i.i.i.i = icmp ult i64 %.val.i, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i, label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i: ; preds = %bb.c
  %i.s = or i64 %.val.i, 131328
  store i64 %i.s, ptr %7, align 8, !noalias !15154
  br label %.noexc.thread

bb.d:                                             ; preds = %bb.c
  %.val8.i.i.i = load i64, ptr %i.e, align 8, !noalias !15154
  %isneg.i.i.i.i.i.i.i = icmp slt i32 %i.p, 0
  %.sroa.0.4.insert.ext.i.i.i.i.i.i.i = select i1 %isneg.i.i.i.i.i.i.i, i64 281470681743360, i64 0
  %.sroa.0.4.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.0.4.insert.ext.i.i.i.i.i.i.i, %.039229
  %i.t = icmp eq i64 %.val8.i.i.i, %.sroa.0.4.insert.insert.i.i.i.i.i.i.i
  br i1 %i.t, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43, !noalias !15154
  store ptr %7, ptr %3, align 8, !tbaa !12861, !noalias !15154
  store ptr %i.a, ptr %i.g, align 8, !tbaa !4289, !noalias !15154
  %i.u = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashINS3_12_GLOBAL__N_112AlignedValueItLi5EEEEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc188 unwind label %bb.j

.noexc188:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43, !noalias !15154
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !15154
  %i.v = getelementptr inbounds nuw [10 x i8], ptr %.val.i.i.i.i, i64 %i.u
  br label %.noexc.thread

bb.f:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !30, !noalias !15161 ; 3 uses
  %i.w = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.w
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !15161
  %i.x = lshr i64 %.val.i, 8
  %i.y = and i64 %i.x, 255
  %isneg.i.i.i.i = icmp slt i32 %i.p, 0
  %.sroa.0.4.insert.ext.i.i.i.i = select i1 %isneg.i.i.i.i, i64 281470681743360, i64 0
  %.sroa.0.4.insert.insert.i.i.i.i = or disjoint i64 %.sroa.0.4.insert.ext.i.i.i.i, %.039229 ; 2 uses
  %i.z = xor i64 %i.y, %.sroa.0.4.insert.insert.i.i.i.i
  %i.aa = zext nneg i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 3 uses
  %i.af = xor i64 %notmask.i.i.i.i.i.i.i, -1      ; 2 uses
  %i.ag = lshr i64 %i.ae, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %.val7.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !15161 ; 2 uses
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.bg, %bb.i ]
  %.sroa.14.0.i.i = phi i64 [ 0, %bb.f ], [ %i.bf, %bb.i ] ; 2 uses
  %.sroa.642.0.i.i = and i64 %.pn.i.i, %i.af      ; 5 uses
  %i.ak = getelementptr inbounds nuw [10 x i8], ptr %.val7.i.i, i64 %.sroa.642.0.i.i
  call void @llvm.prefetch.p0(ptr %i.ak, i32 0, i32 3, i32 1), !noalias !15161
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.642.0.i.i
  %i.am = load <16 x i8>, ptr %i.al, align 1, !tbaa !30, !noalias !15161 ; 2 uses
  %i.an = icmp eq <16 x i8> %i.aj, %i.am
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = zext i16 %i.ao to i32
  %i.aq = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap) #49, !srcloc !4277 ; 2 uses
  %.not70.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not70.i.i, label %._crit_edge.i.i187, label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %bb.g, %.critedge.i.i.i
  %.sroa.027.071.i.i = phi i32 [ %i.ay, %.critedge.i.i.i ], [ %i.aq, %bb.g ] ; 3 uses
  %i.ar = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nuw i64 %.sroa.642.0.i.i, %i.as
  %i.au = and i64 %i.at, %i.af
  %i.av = getelementptr inbounds nuw [10 x i8], ptr %.val7.i.i, i64 %i.au
  %.val5.i.i = load i64, ptr %i.av, align 2, !noalias !15161
  %i.aw = icmp eq i64 %.val5.i.i, %.sroa.0.4.insert.insert.i.i.i.i
  br i1 %i.aw, label %.noexc, label %.critedge.i.i.i, !prof !4278

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i185
  %i.ax = add i32 %.sroa.027.071.i.i, -1
  %i.ay = and i32 %i.ax, %.sroa.027.071.i.i       ; 2 uses
  %.not.i.i186 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i186, label %._crit_edge.i.i187, label %.lr.ph.i.i185

._crit_edge.i.i187:                               ; preds = %.critedge.i.i.i, %bb.g
  %i.az = icmp eq <16 x i8> %i.am, splat (i8 -128)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = zext i16 %i.ba to i32
  %i.bc = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bb) #49, !srcloc !4277 ; 2 uses
  %.not64.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not64.i.i, label %bb.i, label %bb.h, !prof !4208

bb.h:                                             ; preds = %._crit_edge.i.i187
  %i.bd = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ae, i32 %i.bc, i64 %.sroa.642.0.i.i, i64 %.sroa.14.0.i.i)
          to label %.noexc.thread215 unwind label %bb.j

.noexc.thread215:                                 ; preds = %bb.h
  %.val.i.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !15161
  %i.be = getelementptr inbounds nuw [10 x i8], ptr %.val.i.pre.i.i, i64 %i.bd
  br label %.noexc.thread

bb.i:                                             ; preds = %._crit_edge.i.i187
  %i.bf = add i64 %.sroa.14.0.i.i, 16             ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.642.0.i.i
  br label %bb.g

.noexc:                                           ; preds = %.lr.ph.i.i185
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit

.noexc.thread:                                    ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i, %.noexc188, %.noexc.thread215
  %.sink.i211 = phi ptr [ %i.be, %.noexc.thread215 ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE17should_sample_sooEv.exit.i.i.i ], [ %i.v, %.noexc188 ] ; 4 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3847, !noalias !15164 ; 3 uses
  %i.bh = sext i32 %.val.i.i.i.i.i.i to i64       ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %.sink.i211, align 2, !noalias !15164
  %i.bi = ashr i32 %.val.i.i.i.i.i.i, 31
  %i.bj = trunc nsw i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink.i211, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !9295, !noalias !15164
  %i.bl = lshr i64 %i.bh, 48
  %i.bm = trunc nuw i64 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink.i211, i64 6
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !9295, !noalias !15164
  %i.bo = ashr i64 %i.bh, 63
  %i.bp = trunc nsw i64 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink.i211, i64 8
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !9295, !noalias !15164
  %.val.i.pre = load i64, ptr %7, align 8, !noalias !15177
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit: ; preds = %bb.d, %.noexc.thread, %.noexc
  %.val.i249 = phi i64 [ %.val.i, %bb.d ], [ %.val.i.pre, %.noexc.thread ], [ %.val.i, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.br = add nuw nsw i64 %.039229, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %umax244
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15178

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.bw

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6insertIiLi0EEESt4pairINS8_8iteratorEbEOT_.exit
  %i.bt = and i64 %.val.i249, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.val80 = phi i64 [ %i.bt, %._crit_edge.loopexit ], [ 1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %notmask.i.i.i = shl nsw i64 -1, %.val80        ; 4 uses
  %i.bu = xor i64 %notmask.i.i.i, -1
  %i.bv = add nsw i64 %notmask.i.i.i, 281474976710655
  %i.bw = or i64 %i.bv, %notmask.i.i.i
  %i.bx = icmp eq i64 %i.bw, -1
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp ne i64 %.val80, 0
  call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i64 %notmask.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.bz)
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !52
  br i1 %i.o, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE7reserveEm.exit, !prof !4278

bb.k:                                             ; preds = %._crit_edge
  invoke void @_ZN4absl12lts_2026052618container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %storemerge235)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE7reserveEm.exit unwind label %bb.r

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE7reserveEm.exit: ; preds = %._crit_edge, %bb.k
  invoke void @_ZN4absl12lts_2026052618container_internal6RehashERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %.040234)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6rehashEm.exit unwind label %bb.r

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6rehashEm.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE7reserveEm.exit
  %i.ca = icmp eq i64 %.040234, 0
  br i1 %i.ca, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb0ELb1EEEJEE6rehashEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %.val79 = load i64, ptr %7, align 8
  %i.cb = and i64 %.val79, 255                    ; 2 uses
  %notmask.i.i.i84 = shl nsw i64 -1, %i.cb        ; 4 uses
  %i.cc = xor i64 %notmask.i.i.i84, -1            ; 2 uses
  %i.cd = add nsw i64 %notmask.i.i.i84, 281474976710655
  %i.ce = or i64 %i.cd, %notmask.i.i.i84
  %i.cf = icmp eq i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ugt i64 %notmask.i.i.i84, -281474976710657
  call void @llvm.assume(i1 %i.ch)
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !52
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !15179
  %i.cj = icmp eq i64 %i.ci, %i.cc
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.s

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43, !noalias !15184
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc191 unwind label %bb.s

.noexc191:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !15184
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.p, !noalias !15184

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc191
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.489, ptr noundef nonnull @.str.792, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ck = load ptr, ptr %2, align 8, !tbaa !26, !noalias !15184 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.h
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.cm = load i64, ptr %i.h, align 8, !tbaa !30, !noalias !15184
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !15184
  %i.co = load ptr, ptr %1, align 8, !tbaa !26, !noalias !15184 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.i
  br i1 %i.cp, label %.noexc86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !30, !noalias !15184
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #44
  br label %.noexc86

bb.p:                                             ; preds = %.noexc191
  %i.cs = landingpad { ptr, i32 }
end_hunk_1
