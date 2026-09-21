Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Executor?download=true
inline.NumInlined: 1115
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes5regex22searchWithBytecodeImplIcNS0_16ASCIIRegexTraitsEEENS0_18MatchRuntimeResultEN4llvh8ArrayRefIhEEPKT_jjPSt6vectorINS0_13CapturedRangeESaISB_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 204
  store i32 16, ptr %i.am, align 4, !tbaa !50
  store i32 0, ptr %i.al, align 8, !tbaa !51
  %i.an = icmp ugt i16 %i.m, 16
  br i1 %i.an, label %.thread11.i, label %bb.d

.thread11.i:                                      ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 noundef 8) #10
  %.pre.i7.i = load ptr, ptr %i.ai, align 8, !tbaa !49
  store i32 %i.q, ptr %i.al, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.i.i.i4.preheader.i

bb.d:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i
  store i32 %i.q, ptr %i.al, align 8, !tbaa !51
  %.not5.i.i.i.i.i.i.i3.i = icmp eq i16 %i.m, 0
  br i1 %.not5.i.i.i.i.i.i.i3.i, label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit, label %.lr.ph.i.i.i.i.i.i.i4.preheader.i

.lr.ph.i.i.i.i.i.i.i4.preheader.i:                ; preds = %bb.d, %.thread11.i
  %i.ao = phi ptr [ %.pre.i7.i, %.thread11.i ], [ %i.ak, %bb.d ]
  %i.ap = shl nuw nsw i64 %i.aj, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit

_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i4.preheader.i
  %i.aq = load i8, ptr %i.e, align 1, !tbaa !9
  %i.ar = and i8 %i.aq, 2
  %.not = icmp ne i8 %i.ar, 0
  %i.as = and i32 %6, 8
  %i.at = icmp ne i32 %i.as, 0
  %i.au = or i1 %i.at, %.not
  %i.av = call { i8, ptr } @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE5matchEPNS0_5StateIS2_EEb(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull %9, i1 noundef zeroext %i.au) ; 2 uses
  %i.aw = extractvalue { i8, ptr } %i.av, 0
  %i.ax = extractvalue { i8, ptr } %i.av, 1       ; 2 uses
  %i.ay = icmp eq i8 %i.aw, 0
  br i1 %i.ay, label %bb.e, label %bb.n

bb.e:                                             ; preds = %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit
  %.not38 = icmp eq ptr %i.ax, null               ; 2 uses
  %.not39 = icmp eq ptr %5, null
  %or.cond = or i1 %.not39, %.not38
  br i1 %or.cond, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !66
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ba                    ; 2 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !55    ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bf
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !56
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit: ; preds = %bb.f, %bb.g
  %i.bi = phi ptr [ %i.bh, %bb.f ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %.not.i.i40 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit
  %.sroa.5.0.insert.ext = shl i64 %i.be, 32
  %.sroa.0.0.insert.ext = and i64 %i.bb, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bi, align 4
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !56
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.j, label %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #12 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  %.sroa.5.0.insert.ext46 = shl i64 %i.be, 32
  %.sroa.0.0.insert.ext42 = and i64 %i.bb, 4294967295
  %.sroa.0.0.insert.insert44 = or disjoint i64 %.sroa.5.0.insert.ext46, %.sroa.0.0.insert.ext42
  store i64 %.sroa.0.0.insert.insert44, ptr %i.by, align 4
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.k, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.bf, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cd) #13
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bx, ptr %5, align 8, !tbaa !55
  store ptr %i.ca, ptr %i.bg, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !57
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cf = icmp eq i16 %i.k, 0
  br i1 %i.cf, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ab
  %i.ci = call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN6hermes5regex13CapturedRangeESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEEET0_T_SD_SC_(ptr noundef %i.cg, ptr noundef nonnull %i.ch, ptr nonnull %5) ; 0 uses
  br label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit

_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit: ; preds = %bb.m, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit, %bb.e
  %spec.select = zext i1 %.not38 to i32
  br label %bb.n

bb.n:                                             ; preds = %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit
  %.1 = phi i32 [ 2, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit ], [ %spec.select, %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit ]
  %i.cj = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ak
  br i1 %i.ck, label %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.cj) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i

_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i: ; preds = %bb.o, %bb.n
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ac
  br i1 %i.cm, label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.cl) #10
  br label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit

_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread: ; preds = %bb.b, %bb.a, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit
  %.2 = phi i32 [ %.1, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i8, ptr } @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE5matchEPNS0_5StateIS2_EEb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.8", align 8 ; 45 uses
  %4 = alloca %"struct.hermes::regex::State", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 64, ptr %i.c, align 4, !tbaa !50
  %i.d = load ptr, ptr %0, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 49 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 53 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 1
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %5 = add nuw nsw i64 %i.p, 1
  %6 = select i1 %2, i64 1, i64 %5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !171
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !171
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = icmp eq ptr %4, %1                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 20 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit
  %.0358981 = phi i64 [ 0, %.preheader ], [ %.1.i592, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ] ; 3 uses
  %.sroa.0716.0980 = phi i8 [ undef, %.preheader ], [ %.sroa.0716.49889.ph, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.0358981 ; 3 uses
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !52
  store i32 %i.g, ptr %i.f, align 8, !tbaa !48
  br label %bb.gq

bb.c:                                             ; preds = %bb.gq
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !69
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.ap, align 4
  %i.aw = and i8 %i.av, 4
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !71
  switch i16 %i.ay, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit [
    i16 8232, label %bb.g
    i16 13, label %bb.g
    i16 10, label %bb.g
    i16 8233, label %bb.g
  ]

_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit: ; preds = %bb.e, %bb.d
  %i.az = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0708.0.extract.trunc = trunc i16 %i.az to i8 ; 2 uses
  %i.ba = icmp eq i8 %.sroa.0708.0.extract.trunc, 0
  br i1 %i.ba, label %bb.f, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.f:                                             ; preds = %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bb = and i16 %i.az, 256
  %.not957 = icmp eq i16 %i.bb, 0
  br i1 %.not957, label %.critedge409.thread892, label %.backedge

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.e, %bb.e, %bb.e
  %i.bc = add i32 %i.ahx, 1
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !48
  br label %.backedge

bb.h:                                             ; preds = %bb.gq
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.bg = load i8, ptr %i.ap, align 4
  %i.bh = and i8 %i.bg, 4
  %.not67.i = icmp eq i8 %i.bh, 0
  br i1 %.not67.i, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread.i
  %i.bi = load i16, ptr %i.bd, align 2, !tbaa !71
  switch i16 %i.bi, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread [
    i16 8232, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749
    i16 13, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749
    i16 10, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749
    i16 8233, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749
  ]

_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.w, align 8, !tbaa !28
  %i.bk = and i32 %i.bj, 2
  %.not.i425 = icmp eq i32 %i.bk, 0
  br i1 %.not.i425, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread

_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread: ; preds = %bb.i, %.thread.i, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bl = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0705.0.extract.trunc = trunc i16 %i.bl to i8 ; 2 uses
  %i.bm = icmp eq i8 %.sroa.0705.0.extract.trunc, 0
  br i1 %i.bm, label %bb.j, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.j:                                             ; preds = %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread
  %i.bn = and i16 %i.bl, 256
  %.not956 = icmp eq i16 %i.bn, 0
  br i1 %.not956, label %.critedge409.thread892, label %.backedge

_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bo = add i32 %i.ahx, 1
  store i32 %i.bo, ptr %i.f, align 8, !tbaa !48
  br label %.backedge

bb.k:                                             ; preds = %bb.gq
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !172
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0702.0.extract.trunc = trunc i16 %i.bs to i8 ; 2 uses
  %i.bt = icmp eq i8 %.sroa.0702.0.extract.trunc, 0
  br i1 %i.bt, label %bb.m, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.m:                                             ; preds = %bb.l
  %i.bu = and i16 %i.bs, 256
  %.not955 = icmp eq i16 %i.bu, 0
  br i1 %.not955, label %.critedge409.thread892, label %.backedge

bb.n:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.al, align 8, !tbaa !73, !range !74, !noundef !75
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = select i1 %i.bw, i64 1, i64 -1
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bx
  store ptr %i.by, ptr %i.h, align 8, !tbaa !52
  %i.bz = add i32 %i.ahx, 1
  store i32 %i.bz, ptr %i.f, align 8, !tbaa !48
  br label %.backedge

bb.o:                                             ; preds = %bb.gq
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !52  ; 6 uses
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !172
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cd = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0699.0.extract.trunc = trunc i16 %i.cd to i8 ; 2 uses
  %i.ce = icmp eq i8 %.sroa.0699.0.extract.trunc, 0
  br i1 %i.ce, label %bb.q, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.q:                                             ; preds = %bb.p
  %i.cf = and i16 %i.cd, 256
  %.not954 = icmp eq i16 %i.cf, 0
  br i1 %.not954, label %.critedge409.thread892, label %.backedge

bb.r:                                             ; preds = %bb.o
  %i.cg = load i8, ptr %i.al, align 8, !tbaa !73, !range !74, !noundef !75
  %i.ch = trunc nuw i8 %i.cg to i1                ; 5 uses
  %i.ci = load ptr, ptr %1, align 8
  %i.cj = load ptr, ptr %i.j, align 8
  %.sink3.i.i = select i1 %i.ch, ptr %i.cj, ptr %i.ca
  %.sink2.i.i = select i1 %i.ch, ptr %i.ca, ptr %i.ci
  %i.ck = ptrtoint ptr %.sink3.i.i to i64
  %i.cl = ptrtoint ptr %.sink2.i.i to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = and i64 %i.cm, 8589934588
  %.not.i426 = icmp eq i64 %i.cn, 0
  br i1 %.not.i426, label %.thread9.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.in.idx.i = select i1 %i.ch, i64 0, i64 -4
  %.in.i = getelementptr inbounds i8, ptr %i.ca, i64 %.in.idx.i
  %i.co = load i16, ptr %.in.i, align 2, !tbaa !71
  %i.cp = and i16 %i.co, -1024
  %i.cq = icmp eq i16 %i.cp, -10240
  br i1 %i.cq, label %bb.t, label %.thread9.i

bb.t:                                             ; preds = %bb.s
  %.in7.v.i = select i1 %i.ch, i64 2, i64 -2      ; 2 uses
  %.in7.i = getelementptr inbounds i8, ptr %i.ca, i64 %.in7.v.i
  %i.cr = load i16, ptr %.in7.i, align 2, !tbaa !71
  %i.cs = and i16 %i.cr, -1024
  %i.ct = icmp eq i16 %i.cs, -9216
  br i1 %i.ct, label %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit, label %.thread9.i

.thread9.i:                                       ; preds = %bb.t, %bb.s, %bb.r
  %i.cu = select i1 %i.ch, i64 1, i64 -1
  br label %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE5matchEPNS0_5StateIS2_EEb:bb.a
  %i.afx = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.afy = load i32, ptr %i.b, align 8, !tbaa !51 ; 2 uses
  %i.afz = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i573 = icmp ult i32 %i.afy, %i.afz
  br i1 %.not.i.i573, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575, label %bb.gd, !prof !72

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i574 = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575: ; preds = %bb.gd, %bb.gc
  %i.aga = phi i32 [ %.pre.i.i574, %bb.gd ], [ %i.afy, %bb.gc ]
  %i.agb = load ptr, ptr %3, align 8, !tbaa !49
  %i.agc = zext i32 %i.aga to i64
  %i.agd = getelementptr inbounds nuw [24 x i8], ptr %i.agb, i64 %i.agc ; 3 uses
  store i8 2, ptr %i.agd, align 1
  %.sroa.5738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  store i32 %i.afw, ptr %.sroa.5738.0..sroa_idx, align 1
  %.sroa.6739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store ptr %i.afx, ptr %.sroa.6739.0..sroa_idx, align 1
  %i.age = load i32, ptr %i.b, align 8, !tbaa !51
  %i.agf = add i32 %i.age, 1                      ; 2 uses
  store i32 %i.agf, ptr %i.b, align 8, !tbaa !51
  %i.agg = icmp ugt i32 %i.agf, 16777216
  br i1 %i.agg, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.ge, !prof !99

bb.ge:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575
  %i.agh = load i32, ptr %i.x, align 8, !tbaa !31 ; 2 uses
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.gf, !prof !99

bb.gf:                                            ; preds = %bb.ge
  %i.agj = add i32 %i.agh, -1
  store i32 %i.agj, ptr %i.x, align 8, !tbaa !31
  %i.agk = call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1, ptr noundef nonnull %.03561071, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.not380 = icmp eq i8 %i.agk, 0
  br i1 %.not380, label %.thread847, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

.thread847:                                       ; preds = %bb.gf
  store i32 %i.aeo, ptr %i.f, align 8, !tbaa !48
  br label %.backedge

bb.gg:                                            ; preds = %bb.gq
  %i.agl = load i32, ptr %i.w, align 8, !tbaa !28
  %i.agm = getelementptr inbounds nuw i8, ptr %i.ahz, i64 1
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !135
  %i.ago = zext i8 %i.agn to i32                  ; 2 uses
  %i.agp = and i32 %i.ago, 1
  %.not.i578 = icmp eq i32 %i.agp, 0
  %i.agq = and i32 %i.agl, 4
  %.not4.i579 = icmp eq i32 %i.agq, 0
  %or.cond.i580 = or i1 %.not4.i579, %.not.i578
  br i1 %or.cond.i580, label %bb.gh, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584

bb.gh:                                            ; preds = %bb.gg
  %i.agr = and i32 %i.ago, 2
  %.not5.i582 = icmp eq i32 %i.agr, 0
  %.pre993 = load ptr, ptr %i.h, align 8, !tbaa !52 ; 3 uses
  br i1 %.not5.i582, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ags = load ptr, ptr %1, align 8, !tbaa !69
  %.not6.i583 = icmp eq ptr %.pre993, %i.ags
  br i1 %.not6.i583, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584

_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584: ; preds = %bb.gi, %bb.gg
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ahz, i64 2
  %i.agu = load i32, ptr %i.agt, align 1, !tbaa !136
  store i32 %i.agu, ptr %i.f, align 8, !tbaa !48
  br label %.backedge

bb.gj:                                            ; preds = %bb.gq
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ahz, i64 1
  %i.agw = load i32, ptr %i.agv, align 1, !tbaa !138 ; 2 uses
  store i32 %i.agw, ptr %i.f, align 8, !tbaa !48
  %i.agx = zext i32 %i.agw to i64
  %i.agy = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.agx
  %.pre992 = load ptr, ptr %i.h, align 8, !tbaa !52
  br label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856

_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856: ; preds = %bb.gi, %bb.gh, %bb.gj
  %i.agz = phi ptr [ %.pre992, %bb.gj ], [ %.pre993, %bb.gh ], [ %.pre993, %bb.gi ]
  %.1357 = phi ptr [ %i.agy, %bb.gj ], [ %i.ahz, %bb.gh ], [ %i.ahz, %bb.gi ]
  %i.aha = getelementptr inbounds nuw i8, ptr %.1357, i64 2
  %i.ahb = load i32, ptr %i.aha, align 1, !tbaa !136
  %i.ahc = load i32, ptr %i.b, align 8, !tbaa !51 ; 2 uses
  %i.ahd = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i585 = icmp ult i32 %i.ahc, %i.ahd
  br i1 %.not.i.i585, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587, label %bb.gk, !prof !72

bb.gk:                                            ; preds = %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i586 = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587: ; preds = %bb.gk, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856
  %i.ahe = phi i32 [ %.pre.i.i586, %bb.gk ], [ %i.ahc, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584.thread856 ]
  %i.ahf = load ptr, ptr %3, align 8, !tbaa !49
  %i.ahg = zext i32 %i.ahe to i64
  %i.ahh = getelementptr inbounds nuw [24 x i8], ptr %i.ahf, i64 %i.ahg ; 3 uses
  store i8 2, ptr %i.ahh, align 1
  %.sroa.5743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4
  store i32 %i.ahb, ptr %.sroa.5743.0..sroa_idx, align 1
  %.sroa.6744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  store ptr %i.agz, ptr %.sroa.6744.0..sroa_idx, align 1
  %i.ahi = load i32, ptr %i.b, align 8, !tbaa !51
  %i.ahj = add i32 %i.ahi, 1                      ; 2 uses
  store i32 %i.ahj, ptr %i.b, align 8, !tbaa !51
  %i.ahk = icmp ugt i32 %i.ahj, 16777216
  br i1 %i.ahk, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.gl, !prof !99

bb.gl:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587
  %i.ahl = load i32, ptr %i.x, align 8, !tbaa !31 ; 2 uses
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.thread863, !prof !99

.thread863:                                       ; preds = %bb.gl
  %i.ahn = add i32 %i.ahl, -1
  store i32 %i.ahn, ptr %i.x, align 8, !tbaa !31
  %i.aho = load i32, ptr %i.f, align 8, !tbaa !48
  %i.ahp = add i32 %i.aho, 6
  store i32 %i.ahp, ptr %i.f, align 8, !tbaa !48
  br label %.backedge

bb.gm:                                            ; preds = %bb.gq
  %i.ahq = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE15matchWidth1LoopEPKNS0_14Width1LoopInsnEPNS0_5StateIS2_EERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.ahz, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.sroa.0594.0.extract.trunc = trunc i16 %i.ahq to i8 ; 2 uses
  %i.ahr = icmp eq i8 %.sroa.0594.0.extract.trunc, 0
  br i1 %i.ahr, label %bb.gn, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.gn:                                            ; preds = %bb.gm
  %i.ahs = and i16 %i.ahq, 256
  %.not = icmp eq i16 %i.ahs, 0
  br i1 %.not, label %bb.go, label %.backedge

bb.go:                                            ; preds = %bb.gn
  %i.aht = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.aht to i8 ; 2 uses
  %i.ahu = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  br i1 %i.ahu, label %bb.gp, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.gp:                                            ; preds = %bb.go
  %i.ahv = and i16 %i.aht, 256
  %.not934 = icmp eq i16 %i.ahv, 0
  br i1 %.not934, label %.critedge409.thread892, label %.backedge

.415.si.unfold.true.jt11:                         ; preds = %.critedge414
  %i.ahw = and i16 %i.zr, 256
  %.not938 = icmp eq i16 %i.ahw, 0
  br i1 %.not938, label %.critedge409.thread892, label %.backedge

.backedge:                                        ; preds = %bb.fx, %bb.df, %.thread847, %bb.gn, %bb.dn, %bb.gq, %bb.cs, %bb.f, %bb.j, %bb.m, %bb.cy, %bb.q, %bb.w, %bb.cx, %bb.cq, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit, %bb.ad, %bb.dg, %bb.cp, %bb.fq, %bb.ah, %bb.au, %bb.cf, %bb.bs, %bb.am, %bb.do, %.thread800, %bb.dy, %.split972.us, %bb.fk, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit567, %.thread804, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584, %.thread863, %.thread841, %bb.bc, %bb.bj, %.thread834, %bb.g, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749, %bb.n, %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit, %bb.x, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit, %bb.ai, %bb.an, %bb.av, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEDs.exit.thread, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEDs.exit.thread, %bb.bt, %.loopexit, %.loopexit958, %bb.by, %bb.ct, %bb.fj, %bb.ft, %bb.gp, %.415.si.unfold.true.jt11
  %.sroa.0716.49.jt0 = phi i8 [ %.sroa.0716.50, %bb.fx ], [ %.sroa.0716.50, %bb.df ], [ %.sroa.0716.50, %.thread847 ], [ %.sroa.0716.50, %bb.gn ], [ %.sroa.0716.50, %bb.dn ], [ %.sroa.0716.50, %bb.gq ], [ %.sroa.0716.50, %bb.cs ], [ %.sroa.0716.50, %bb.f ], [ %.sroa.0716.50, %bb.j ], [ %.sroa.0716.50, %bb.m ], [ %.sroa.0716.50, %bb.cy ], [ %.sroa.0716.50, %bb.q ], [ %.sroa.0716.50, %bb.w ], [ %.sroa.0716.50, %bb.cx ], [ %.sroa.0716.50, %bb.cq ], [ %.sroa.0716.50, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit ], [ %.sroa.0716.50, %bb.ad ], [ %.sroa.0716.50, %bb.dg ], [ %.sroa.0716.50, %bb.cp ], [ %.sroa.0716.50, %bb.fq ], [ %.sroa.0716.50, %bb.ah ], [ %.sroa.0716.50, %bb.gp ], [ %.sroa.0716.50, %bb.au ], [ %.sroa.0716.50, %bb.cf ], [ %.sroa.0716.50, %bb.bs ], [ %.sroa.0716.50, %bb.am ], [ %.sroa.0716.50, %bb.do ], [ %.sroa.0716.50, %.thread800 ], [ %.sroa.0716.50, %bb.dy ], [ %.sroa.0716.50, %.split972.us ], [ %.sroa.0716.33, %bb.fk ], [ %.sroa.0716.50, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit567 ], [ %.sroa.0716.50, %.thread804 ], [ %.sroa.0716.50, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit584 ], [ %.sroa.0716.50, %.thread863 ], [ %.sroa.0716.50, %.thread841 ], [ %.sroa.0716.50, %bb.bc ], [ %.sroa.0716.50, %bb.bj ], [ %.sroa.0716.50, %.thread834 ], [ %.sroa.0716.50, %bb.g ], [ %.sroa.0716.50, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread749 ], [ %.sroa.0716.50, %bb.n ], [ %.sroa.0716.50, %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit ], [ %.sroa.0716.50, %bb.x ], [ %.sroa.0716.50, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit ], [ %.sroa.0716.50, %bb.ai ], [ %.sroa.0716.50, %bb.an ], [ %.sroa.0716.50, %bb.av ], [ %.sroa.0716.50, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEDs.exit.thread ], [ %.sroa.0716.50, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEDs.exit.thread ], [ %.sroa.0716.50, %bb.bt ], [ %.sroa.0716.50, %.loopexit ], [ %.sroa.0716.50, %.loopexit958 ], [ %.sroa.0716.50, %bb.by ], [ %.sroa.0716.50, %bb.ct ], [ %.sroa.0716.33, %bb.fj ], [ %.sroa.0716.50, %bb.ft ], [ %.sroa.0716.50, %.415.si.unfold.true.jt11 ]
  %.pre = load i32, ptr %i.f, align 8, !tbaa !48
  br label %bb.gq

bb.gq:                                            ; preds = %.backedge, %bb.b
  %i.ahx = phi i32 [ %i.g, %bb.b ], [ %.pre, %.backedge ] ; 21 uses
  %.sroa.0716.50 = phi i8 [ %.sroa.0716.0980, %bb.b ], [ %.sroa.0716.49.jt0, %.backedge ] ; 83 uses
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ahy ; 46 uses
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !139 ; 2 uses
  switch i8 %i.aia, label %.backedge [
    i8 0, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit
    i8 1, label %bb.c
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.o
    i8 5, label %bb.u
    i8 6, label %bb.y
    i8 7, label %bb.ae
    i8 8, label %bb.aj
    i8 9, label %bb.ao
    i8 12, label %bb.aw
    i8 13, label %bb.bd
    i8 14, label %bb.bk
    i8 10, label %bb.bu
    i8 11, label %bb.bz
    i8 15, label %bb.cg
    i8 16, label %bb.ct
    i8 17, label %bb.cu
    i8 18, label %bb.cz
    i8 22, label %bb.dh
    i8 19, label %bb.dp
    i8 20, label %bb.dv
    i8 21, label %bb.dz
    i8 23, label %bb.ev
    i8 24, label %bb.fl
    i8 25, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit567.thread831
    i8 26, label %bb.gg
    i8 27, label %bb.gj
    i8 28, label %bb.gm
  ]

.critedge409.thread892:                           ; preds = %.415.si.unfold.true.jt11, %bb.ft, %bb.fj, %bb.gp, %bb.cf, %bb.fq, %bb.dn, %bb.df, %bb.by, %bb.bs, %bb.au, %bb.cx, %bb.bj, %bb.bc, %bb.am, %bb.ah, %bb.ad, %bb.w, %bb.q, %bb.m, %bb.j, %bb.f, %bb.cs
  %.sroa.0716.49889.ph = phi i8 [ %.sroa.0716.50, %bb.cx ], [ %.sroa.0716.50, %bb.cs ], [ %.sroa.0716.50, %bb.f ], [ %.sroa.0716.50, %bb.j ], [ %.sroa.0716.50, %bb.m ], [ %.sroa.0716.50, %bb.q ], [ %.sroa.0716.50, %bb.w ], [ %.sroa.0716.50, %bb.ad ], [ %.sroa.0716.50, %bb.ah ], [ %.sroa.0716.50, %bb.am ], [ %.sroa.0716.50, %bb.bc ], [ %.sroa.0716.50, %bb.bj ], [ %.sroa.0716.50, %.415.si.unfold.true.jt11 ], [ %.sroa.0716.50, %bb.ft ], [ %.sroa.0716.33, %bb.fj ], [ %.sroa.0716.50, %bb.gp ], [ %.sroa.0716.50, %bb.cf ], [ %.sroa.0716.50, %bb.fq ], [ %.sroa.0716.50, %bb.dn ], [ %.sroa.0716.50, %bb.df ], [ %.sroa.0716.50, %bb.by ], [ %.sroa.0716.50, %bb.bs ], [ %.sroa.0716.50, %bb.au ]
  %i.aib = load i8, ptr %i.ap, align 4
  %i.aic = and i8 %i.aib, 8
  %.not.i590 = icmp eq i8 %i.aic, 0
  %.pre.i591 = add i64 %.0358981, 1               ; 6 uses
  br i1 %.not.i590, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, label %bb.gr, !prof !72

bb.gr:                                            ; preds = %.critedge409.thread892
  %.not13.i = icmp ult i64 %.pre.i591, %i.p
  br i1 %.not13.i, label %bb.gs, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit

bb.gs:                                            ; preds = %bb.gr
  %i.aid = load i16, ptr %i.ar, align 2, !tbaa !71
  %i.aie = and i16 %i.aid, -1024
  %i.aif = icmp eq i16 %i.aie, -10240
  br i1 %i.aif, label %bb.gt, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, !prof !99

bb.gt:                                            ; preds = %bb.gs
  %i.aig = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.pre.i591
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !71
  %i.aii = and i16 %i.aih, -1024
  %i.aij = icmp eq i16 %i.aii, -9216
  br i1 %i.aij, label %bb.gu, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, !prof !99

bb.gu:                                            ; preds = %bb.gt
  %i.aik = add i64 %.0358981, 2
  br label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit

_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit: ; preds = %.critedge409.thread892, %bb.gr, %bb.gs, %bb.gt, %bb.gu
  %.1.i592 = phi i64 [ %.pre.i591, %bb.gs ], [ %i.aik, %bb.gu ], [ %.pre.i591, %bb.gt ], [ %.pre.i591, %bb.gr ], [ %.pre.i591, %.critedge409.thread892 ] ; 2 uses
  %i.ail = icmp ult i64 %.1.i592, %6
  br i1 %i.ail, label %bb.b, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !llvm.loop !169

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit: ; preds = %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, %bb.gl, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575, %bb.ge, %bb.gb, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i570, %bb.dr, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i504, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.co, %bb.go, %bb.gf, %bb.fs, %bb.fv, %bb.fp, %bb.fi, %bb.dm, %bb.de, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit, %.critedge402, %bb.at, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit, %bb.gm, %bb.cr, %bb.bi, %bb.bb, %bb.al, %bb.ag, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit, %bb.p, %bb.l, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, %bb.gq, %bb.cw, %.critedge414, %bb.a
  %.sroa.0716.52 = phi i8 [ %.sroa.0627.0.extract.trunc, %.critedge414 ], [ 1, %bb.a ], [ 1, %bb.gl ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587 ], [ 1, %bb.ge ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i570 ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i504 ], [ 1, %bb.co ], [ %.sroa.0594.0.extract.trunc, %bb.gm ], [ %.sroa.0716.32, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit ], [ %.sroa.0684.0.extract.trunc, %bb.at ], [ %.sroa.0675.0.extract.trunc, %.critedge402 ], [ %.sroa.0672.0.extract.trunc, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ %.sroa.0669.0.extract.trunc, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ %.sroa.0655.0.extract.trunc, %bb.de ], [ %.sroa.0652.0.extract.trunc, %bb.dm ], [ %.sroa.0615.0.extract.trunc, %bb.fi ], [ %.sroa.0612.0.extract.trunc, %bb.fp ], [ 1, %bb.gb ], [ %i.aeq, %bb.fv ], [ %.sroa.0609.0.extract.trunc, %bb.fs ], [ %i.agk, %bb.gf ], [ %.sroa.0.0.extract.trunc, %bb.go ], [ %.sroa.0658.0.extract.trunc, %bb.cw ], [ %i.aia, %bb.gq ], [ %.sroa.0708.0.extract.trunc, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit ], [ %.sroa.0705.0.extract.trunc, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0702.0.extract.trunc, %bb.l ], [ %.sroa.0699.0.extract.trunc, %bb.p ], [ %.sroa.0696.0.extract.trunc, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit ], [ %.sroa.0693.0.extract.trunc, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread ], [ %.sroa.0690.0.extract.trunc, %bb.ag ], [ %.sroa.0687.0.extract.trunc, %bb.al ], [ %.sroa.0681.0.extract.trunc, %bb.bb ], [ %.sroa.0678.0.extract.trunc, %bb.bi ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575 ], [ %.sroa.0661.0.extract.trunc, %bb.cr ], [ 1, %bb.dr ], [ 0, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %.sroa.37.4 = phi ptr [ undef, %.critedge414 ], [ undef, %bb.a ], [ undef, %bb.gl ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i587 ], [ undef, %bb.ge ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i570 ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i504 ], [ undef, %bb.co ], [ undef, %bb.gm ], [ undef, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit ], [ undef, %bb.at ], [ undef, %.critedge402 ], [ undef, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ undef, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ undef, %bb.de ], [ undef, %bb.dm ], [ undef, %bb.fi ], [ undef, %bb.fp ], [ undef, %bb.gb ], [ undef, %bb.fv ], [ undef, %bb.fs ], [ undef, %bb.gf ], [ undef, %bb.go ], [ undef, %bb.cw ], [ %i.ar, %bb.gq ], [ undef, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit ], [ undef, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ undef, %bb.l ], [ undef, %bb.p ], [ undef, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit ], [ undef, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread ], [ undef, %bb.ag ], [ undef, %bb.al ], [ undef, %bb.bb ], [ undef, %bb.bi ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i575 ], [ undef, %bb.cr ], [ undef, %bb.dr ], [ null, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %i.aim = load i64, ptr %i.q, align 8, !tbaa !171
  %i.ain = add i64 %i.aim, -1
  store i64 %i.ain, ptr %i.q, align 8, !tbaa !171
  %i.aio = load ptr, ptr %3, align 8, !tbaa !49   ; 2 uses
  %i.aip = icmp eq ptr %i.aio, %i.a
  br i1 %i.aip, label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELj64EED2Ev.exit, label %bb.gv

bb.gv:                                            ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit
  call void @free(ptr noundef %i.aio) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELj64EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELj64EED2Ev.exit: ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.0716.52, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.37.4, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not.i73 = icmp eq i32 %i.b, 0
  br i1 %.not.i73, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.bo, %bb.l ] ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !49
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 15 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !29    ; 2 uses
  switch i8 %i.k, label %bb.l [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !29
  %i.o = zext i16 %i.n to i64
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load i64, ptr %i.l, align 4
  store i64 %i.r, ptr %i.q, align 4
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29
  %i.v = zext i16 %i.u to i64
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.s, align 4
  store i64 %i.y, ptr %i.x, align 4
  br label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !48
  %i.af = add i32 %i.f, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !51
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %i.ag = add i32 %i.f, -1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !51
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !123
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store i64 %.sroa.4.0.copyload, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.am, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.2.0.extract.shift.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !52
  %i.ar = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.as = zext i8 %i.ar to i16
  %i.at = or disjoint i16 %i.as, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.c, align 8, !tbaa !73, !range !74, !noundef !75
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = icmp eq i8 %i.k, 4
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bd = select i1 %i.ba, i64 -1, i64 1
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bg = select i1 %i.ba, i64 1, i64 -1
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.be, %bb.i ], [ %i.bh, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bi, align 8, !tbaa !52
  %i.bj = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !48
  br label %.thread48

.sink.split.sink.split:                           ; preds = %bb.c, %bb.d
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !51
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g
  %.sink108 = phi i32 [ %i.f, %bb.g ], [ %i.bm, %.sink.split.sink.split ]
  %i.bn = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bo = phi i32 [ %i.f, %bb.b ], [ %i.bn, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.at, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
  ret i16 %.sroa.6.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex18bracketMatchesCharINS0_16UTF16RegexTraitsEEEbRKNS0_7ContextIT_EEPKNS0_11BracketInsnEPKNS0_14BracketRange32ENS4_9CodePointE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1               ; 9 uses
  %i.c = and i8 %i.b, 126
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, -33
  %i.e = add i32 %i.d, -65
  %or.cond17.i = icmp ult i32 %i.e, 26
  %i.f = add i32 %3, -48
  %or.cond5.i = icmp ult i32 %i.f, 10             ; 3 uses
  %i.g = icmp eq i32 %3, 95
  %i.h = or i1 %or.cond17.i, %i.g
  %i.i = or i1 %i.h, %or.cond5.i                  ; 2 uses
  %i.j = add i32 %3, -8192
end_hunk_1
begin_hunk_2_@_ZN4llvh15SmallVectorImplIN6hermes5regex8LoopDataEEaSEOS4_:bb.a
    i32 1, label %bb.i
  ], !prof !152

bb.h:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 4
  store i64 %i.t, ptr %i.s, align 4
  br label %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit

_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit: ; preds = %bb.g, %bb.i, %bb.h
  store i32 %i.n, ptr %i.p, align 8, !tbaa !51
  store i32 0, ptr %i.m, align 8, !tbaa !51
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.p, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #10
  br label %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37

bb.l:                                             ; preds = %bb.j
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %.not40 = icmp eq i32 %i.q, 1
  br i1 %.not40, label %bb.o, label %bb.n, !prof !99

bb.n:                                             ; preds = %bb.m
  %.idx39 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.b, i64 %.idx39, i1 false)
  br label %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37

bb.o:                                             ; preds = %bb.m
  %i.z = load i64, ptr %i.b, align 4
  store i64 %i.z, ptr %i.y, align 4
  br label %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37

_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.029 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.r, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !51
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.029, %i.ab
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex8LoopDataELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37
  %i.ac = load ptr, ptr %1, align 8, !tbaa !49
  %.idx42 = shl nuw nsw i64 %.029, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx42
  %i.ae = load ptr, ptr %0, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.029
  %i.ag = sub nsw i64 %i.ab, %.029
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex8LoopDataELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex8LoopDataELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit37, %bb.p
  store i32 %i.n, ptr %i.p, align 8, !tbaa !51
  store i32 0, ptr %i.m, align 8, !tbaa !51
  br label %bb.q

bb.q:                                             ; preds = %_ZSt4moveIPN6hermes5regex8LoopDataES3_ET0_T_S5_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex8LoopDataELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN6hermes5regex13CapturedRangeESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEEET0_T_SD_SC_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit, %bb.a
  ret ptr %2

bb.b:                                             ; preds = %.lr.ph, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit
  %i.h = phi ptr [ %.pre, %.lr.ph ], [ %i.ag, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit ] ; 3 uses
  %.07 = phi i64 [ %i.d, %.lr.ph ], [ %i.ai, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit ] ; 2 uses
  %.056 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit ] ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.056, align 4
  store i64 %i.j, ptr %i.h, align 4
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !56
  br label %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !55     ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #12 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load i64, ptr %.056, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ae) #13
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.x, ptr %2, align 8, !tbaa !55
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.g, align 8, !tbaa !57
  br label %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit

_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ag = phi ptr [ %i.l, %bb.c ], [ %i.ab, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.ai = add nsw i64 %.07, -1
  %i.aj = icmp sgt i64 %.07, 1
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !180
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i8, ptr } @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE5matchEPNS0_5StateIS2_EEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.26", align 8 ; 45 uses
  %4 = alloca %"struct.hermes::regex::State.24", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 64, ptr %i.c, align 4, !tbaa !50
  %i.d = load ptr, ptr %0, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 44 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 48 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !187
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !68
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %5 = ptrtoint ptr %i.k to i64
  %6 = ptrtoint ptr %i.i to i64
  %7 = sub i64 %5, %6
  %8 = and i64 %7, 4294967295
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aa = icmp eq ptr %4, %1                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 19 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = select i1 %2, i64 0, i64 %8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge404.thread808
  %.03581008 = phi i64 [ 0, %.preheader ], [ %i.abx, %.critedge404.thread808 ] ; 4 uses
  %.sroa.0633.01007 = phi i8 [ undef, %.preheader ], [ %.sroa.0633.49805.ph, %.critedge404.thread808 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %.03581008
  store ptr %i.am, ptr %i.h, align 8, !tbaa !66
  store i32 %i.g, ptr %i.f, align 8, !tbaa !65
  br label %bb.fd

bb.c:                                             ; preds = %bb.fd
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !153
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = load i8, ptr %i.ak, align 4
  %i.ar = and i8 %i.aq, 4
  %.not.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit

_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  switch i8 %i.at, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664 [
    i8 13, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread
    i8 10, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread
  ]

_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664: ; preds = %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, %bb.d
  %i.au = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0626.0.extract.trunc = trunc i16 %i.au to i8 ; 2 uses
  %i.av = icmp eq i8 %.sroa.0626.0.extract.trunc, 0
  br i1 %i.av, label %bb.e, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.e:                                             ; preds = %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664
  %i.aw = and i16 %i.au, 256
  %.not872 = icmp eq i16 %i.aw, 0
  br i1 %.not872, label %.critedge404.thread808, label %.backedge

_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread: ; preds = %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, %bb.c
  %i.ax = add i32 %i.abt, 1
  store i32 %i.ax, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.f:                                             ; preds = %bb.fd
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.bb = load i8, ptr %i.ak, align 4
  %i.bc = and i8 %i.bb, 4
  %.not67.i = icmp eq i8 %i.bc, 0
  br i1 %.not67.i, label %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, label %.split

.split:                                           ; preds = %.thread.i
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !29
  switch i8 %i.bd, label %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread [
    i8 13, label %bb.h
    i8 10, label %bb.h
  ]

_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit: ; preds = %bb.f
  %i.be = load i32, ptr %i.r, align 8, !tbaa !60
  %i.bf = and i32 %i.be, 2
  %.not.i421 = icmp eq i32 %i.bf, 0
  br i1 %.not.i421, label %bb.h, label %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread

_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread: ; preds = %.split, %.thread.i, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bg = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0623.0.extract.trunc = trunc i16 %i.bg to i8 ; 2 uses
  %i.bh = icmp eq i8 %.sroa.0623.0.extract.trunc, 0
  br i1 %i.bh, label %bb.g, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread
  %i.bi = and i16 %i.bg, 256
  %.not871 = icmp eq i16 %i.bi, 0
  br i1 %.not871, label %.critedge404.thread808, label %.backedge

bb.h:                                             ; preds = %.split, %.split, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bj = add i32 %i.abt, 1
  store i32 %i.bj, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.i:                                             ; preds = %bb.fd
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bn = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0620.0.extract.trunc = trunc i16 %i.bn to i8 ; 2 uses
  %i.bo = icmp eq i8 %.sroa.0620.0.extract.trunc, 0
  br i1 %i.bo, label %bb.k, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.bp = and i16 %i.bn, 256
  %.not870 = icmp eq i16 %i.bp, 0
  br i1 %.not870, label %.critedge404.thread808, label %.backedge

bb.l:                                             ; preds = %bb.i
  %i.bq = load i8, ptr %i.ag, align 8, !tbaa !154, !range !74, !noundef !75
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = select i1 %i.br, i64 1, i64 -1
  %i.bt = getelementptr inbounds i8, ptr %i.bk, i64 %i.bs
  store ptr %i.bt, ptr %i.h, align 8, !tbaa !66
  %i.bu = add i32 %i.abt, 1
  store i32 %i.bu, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.m:                                             ; preds = %bb.fd
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.by = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0617.0.extract.trunc = trunc i16 %i.by to i8 ; 2 uses
  %i.bz = icmp eq i8 %.sroa.0617.0.extract.trunc, 0
  br i1 %i.bz, label %bb.o, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.o:                                             ; preds = %bb.n
  %i.ca = and i16 %i.by, 256
  %.not869 = icmp eq i16 %i.ca, 0
  br i1 %.not869, label %.critedge404.thread808, label %.backedge

bb.p:                                             ; preds = %bb.m
  %i.cb = load i8, ptr %i.ag, align 8, !tbaa !154, !range !74, !noundef !75
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = select i1 %i.cc, i64 1, i64 -1
  %i.ce = getelementptr inbounds i8, ptr %i.bv, i64 %i.cd
  store ptr %i.ce, ptr %i.h, align 8, !tbaa !66
  %i.cf = add i32 %i.abt, 1
  store i32 %i.cf, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.q:                                             ; preds = %bb.fd
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !66  ; 3 uses
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load i8, ptr %i.ag, align 8, !tbaa !154, !range !74, !noundef !75 ; 2 uses
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !29
  %i.co = trunc nuw i8 %i.cj to i1
  %i.cp = select i1 %i.co, i64 1, i64 -1
  %i.cq = getelementptr inbounds i8, ptr %i.cg, i64 %i.cp
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !66
  switch i8 %i.cn, label %bb.u [
    i8 13, label %bb.s
    i8 10, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.q
  %i.cr = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0614.0.extract.trunc = trunc i16 %i.cr to i8 ; 2 uses
  %i.cs = icmp eq i8 %.sroa.0614.0.extract.trunc, 0
  br i1 %i.cs, label %bb.t, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.t:                                             ; preds = %bb.s
  %i.ct = and i16 %i.cr, 256
  %.not868 = icmp eq i16 %i.ct, 0
  br i1 %.not868, label %.critedge404.thread808, label %.backedge

bb.u:                                             ; preds = %bb.r
  %i.cu = add i32 %i.abt, 1
  store i32 %i.cu, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.v:                                             ; preds = %bb.fd
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !66  ; 3 uses
  %i.cw = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = load i8, ptr %i.ag, align 8, !tbaa !154, !range !74, !noundef !75 ; 2 uses
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29
  %i.dd = trunc nuw i8 %i.cy to i1
  %i.de = select i1 %i.dd, i64 1, i64 -1
  %i.df = getelementptr inbounds i8, ptr %i.cv, i64 %i.de
  store ptr %i.df, ptr %i.h, align 8, !tbaa !66
  switch i8 %i.dc, label %bb.z [
    i8 13, label %bb.x
    i8 10, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.v
end_hunk_2
begin_hunk_3_@_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE5matchEPNS0_5StateIS2_EEb:bb.a
  %i.zr = getelementptr inbounds nuw i8, ptr %.03561098, i64 19
  %i.zs = load i32, ptr %i.zr, align 1, !tbaa !128
  %i.zt = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.zu = load i32, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.zv = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i494 = icmp ult i32 %i.zu, %i.zv
  br i1 %.not.i.i494, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496, label %bb.eq, !prof !72

bb.eq:                                            ; preds = %bb.ep
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i495 = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496: ; preds = %bb.eq, %bb.ep
  %i.zw = phi i32 [ %.pre.i.i495, %bb.eq ], [ %i.zu, %bb.ep ]
  %i.zx = load ptr, ptr %3, align 8, !tbaa !49
  %i.zy = zext i32 %i.zw to i64
  %i.zz = getelementptr inbounds nuw [24 x i8], ptr %i.zx, i64 %i.zy ; 3 uses
  store i8 2, ptr %i.zz, align 1
  %.sroa.5655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  store i32 %i.zs, ptr %.sroa.5655.0..sroa_idx, align 1
  %.sroa.6656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store ptr %i.zt, ptr %.sroa.6656.0..sroa_idx, align 1
  %i.aaa = load i32, ptr %i.b, align 8, !tbaa !51
  %i.aab = add i32 %i.aaa, 1                      ; 2 uses
  store i32 %i.aab, ptr %i.b, align 8, !tbaa !51
  %i.aac = icmp ugt i32 %i.aab, 16777216
  br i1 %i.aac, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.er, !prof !99

bb.er:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496
  %i.aad = load i32, ptr %i.s, align 4, !tbaa !62 ; 2 uses
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.es, !prof !99

bb.es:                                            ; preds = %bb.er
  %i.aaf = add i32 %i.aad, -1
  store i32 %i.aaf, ptr %i.s, align 4, !tbaa !62
  %i.aag = call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %.03561098, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.not375 = icmp eq i8 %i.aag, 0
  br i1 %.not375, label %.thread763, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

.thread763:                                       ; preds = %bb.es
  store i32 %i.yl, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.et:                                            ; preds = %bb.fd
  %i.aah = load i32, ptr %i.r, align 8, !tbaa !60
  %i.aai = getelementptr inbounds nuw i8, ptr %i.abv, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !135
  %i.aak = zext i8 %i.aaj to i32                  ; 2 uses
  %i.aal = and i32 %i.aak, 1
  %.not.i499 = icmp eq i32 %i.aal, 0
  %i.aam = and i32 %i.aah, 4
  %.not4.i500 = icmp eq i32 %i.aam, 0
  %or.cond.i501 = or i1 %.not4.i500, %.not.i499
  br i1 %or.cond.i501, label %bb.eu, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505

bb.eu:                                            ; preds = %bb.et
  %i.aan = and i32 %i.aak, 2
  %.not5.i503 = icmp eq i32 %i.aan, 0
  %.pre1023.a = load ptr, ptr %i.h, align 8, !tbaa !66 ; 3 uses
  br i1 %.not5.i503, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aao = load ptr, ptr %1, align 8, !tbaa !153
  %.not6.i504 = icmp eq ptr %.pre1023.a, %i.aao
  br i1 %.not6.i504, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505: ; preds = %bb.ev, %bb.et
  %i.aap = getelementptr inbounds nuw i8, ptr %i.abv, i64 2
  %i.aaq = load i32, ptr %i.aap, align 1, !tbaa !136
  store i32 %i.aaq, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.ew:                                            ; preds = %bb.fd
  %i.aar = getelementptr inbounds nuw i8, ptr %i.abv, i64 1
  %i.aas = load i32, ptr %i.aar, align 1, !tbaa !138 ; 2 uses
  store i32 %i.aas, ptr %i.f, align 8, !tbaa !65
  %i.aat = zext i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aat
  %.pre1022 = load ptr, ptr %i.h, align 8, !tbaa !66
  br label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772: ; preds = %bb.ev, %bb.eu, %bb.ew
  %i.aav = phi ptr [ %.pre1022, %bb.ew ], [ %.pre1023.a, %bb.eu ], [ %.pre1023.a, %bb.ev ]
  %.1357 = phi ptr [ %i.aau, %bb.ew ], [ %i.abv, %bb.eu ], [ %i.abv, %bb.ev ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.1357, i64 2
  %i.aax = load i32, ptr %i.aaw, align 1, !tbaa !136
  %i.aay = load i32, ptr %i.b, align 8, !tbaa !51 ; 2 uses
  %i.aaz = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i.i506 = icmp ult i32 %i.aay, %i.aaz
  br i1 %.not.i.i506, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508, label %bb.ex, !prof !72

bb.ex:                                            ; preds = %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i507 = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508: ; preds = %bb.ex, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772
  %i.aba = phi i32 [ %.pre.i.i507, %bb.ex ], [ %i.aay, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505.thread772 ]
  %i.abb = load ptr, ptr %3, align 8, !tbaa !49
  %i.abc = zext i32 %i.aba to i64
  %i.abd = getelementptr inbounds nuw [24 x i8], ptr %i.abb, i64 %i.abc ; 3 uses
  store i8 2, ptr %i.abd, align 1
  %.sroa.5660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abd, i64 4
  store i32 %i.aax, ptr %.sroa.5660.0..sroa_idx, align 1
  %.sroa.6661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  store ptr %i.aav, ptr %.sroa.6661.0..sroa_idx, align 1
  %i.abe = load i32, ptr %i.b, align 8, !tbaa !51
  %i.abf = add i32 %i.abe, 1                      ; 2 uses
  store i32 %i.abf, ptr %i.b, align 8, !tbaa !51
  %i.abg = icmp ugt i32 %i.abf, 16777216
  br i1 %i.abg, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.ey, !prof !99

bb.ey:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508
  %i.abh = load i32, ptr %i.s, align 4, !tbaa !62 ; 2 uses
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.thread779, !prof !99

.thread779:                                       ; preds = %bb.ey
  %i.abj = add i32 %i.abh, -1
  store i32 %i.abj, ptr %i.s, align 4, !tbaa !62
  %i.abk = load i32, ptr %i.f, align 8, !tbaa !65
  %i.abl = add i32 %i.abk, 6
  store i32 %i.abl, ptr %i.f, align 8, !tbaa !65
  br label %.backedge

bb.ez:                                            ; preds = %bb.fd
  %i.abm = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE15matchWidth1LoopEPKNS0_14Width1LoopInsnEPNS0_5StateIS2_EERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %i.abv, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.sroa.0512.0.extract.trunc = trunc i16 %i.abm to i8 ; 2 uses
  %i.abn = icmp eq i8 %.sroa.0512.0.extract.trunc, 0
  br i1 %i.abn, label %bb.fa, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.fa:                                            ; preds = %bb.ez
  %i.abo = and i16 %i.abm, 256
  %.not = icmp eq i16 %i.abo, 0
  br i1 %.not, label %bb.fb, label %.backedge

bb.fb:                                            ; preds = %bb.fa
  %i.abp = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.abp to i8 ; 2 uses
  %i.abq = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  br i1 %i.abq, label %bb.fc, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !72

bb.fc:                                            ; preds = %bb.fb
  %i.abr = and i16 %i.abp, 256
  %.not850 = icmp eq i16 %i.abr, 0
  br i1 %.not850, label %.critedge404.thread808, label %.backedge

.410.si.unfold.true.jt11:                         ; preds = %.critedge409
  %i.abs = and i16 %i.tq, 256
  %.not854 = icmp eq i16 %i.abs, 0
  br i1 %.not854, label %.critedge404.thread808, label %.backedge

.backedge:                                        ; preds = %bb.ek, %bb.ci, %.thread763, %bb.fa, %bb.cq, %bb.fd, %bb.by, %bb.e, %bb.g, %bb.k, %bb.ce, %bb.o, %bb.t, %bb.cd, %bb.bw, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit, %bb.y, %bb.cj, %bb.bv, %bb.ed, %bb.ad, %bb.an, %bb.bl, %bb.ba, %bb.ai, %bb.cr, %.thread716, %bb.db, %.split888.us, %bb.dx, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit488, %.thread720, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505, %.thread779, %.thread757, %bb.as, %bb.aw, %.thread750, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %bb.h, %bb.l, %bb.p, %bb.u, %bb.z, %bb.ae, %bb.aj, %bb.ao, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEc.exit.thread, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEc.exit.thread, %bb.bb, %.loopexit, %.loopexit873, %bb.bg, %bb.bz, %bb.dw, %bb.eg, %bb.fc, %.410.si.unfold.true.jt11
  %.sroa.0633.49.jt0 = phi i8 [ %.sroa.0633.50, %bb.ek ], [ %.sroa.0633.50, %bb.ci ], [ %.sroa.0633.50, %.thread763 ], [ %.sroa.0633.50, %bb.fa ], [ %.sroa.0633.50, %bb.cq ], [ %.sroa.0633.50, %bb.fd ], [ %.sroa.0633.50, %bb.by ], [ %.sroa.0633.50, %bb.e ], [ %.sroa.0633.50, %bb.g ], [ %.sroa.0633.50, %bb.k ], [ %.sroa.0633.50, %bb.ce ], [ %.sroa.0633.50, %bb.o ], [ %.sroa.0633.50, %bb.t ], [ %.sroa.0633.50, %bb.cd ], [ %.sroa.0633.50, %bb.bw ], [ %.sroa.0633.50, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit ], [ %.sroa.0633.50, %bb.y ], [ %.sroa.0633.50, %bb.cj ], [ %.sroa.0633.50, %bb.bv ], [ %.sroa.0633.50, %bb.ed ], [ %.sroa.0633.50, %bb.ad ], [ %.sroa.0633.50, %bb.fc ], [ %.sroa.0633.50, %bb.an ], [ %.sroa.0633.50, %bb.bl ], [ %.sroa.0633.50, %bb.ba ], [ %.sroa.0633.50, %bb.ai ], [ %.sroa.0633.50, %bb.cr ], [ %.sroa.0633.50, %.thread716 ], [ %.sroa.0633.50, %bb.db ], [ %.sroa.0633.50, %.split888.us ], [ %.sroa.0633.33, %bb.dx ], [ %.sroa.0633.50, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit488 ], [ %.sroa.0633.50, %.thread720 ], [ %.sroa.0633.50, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit505 ], [ %.sroa.0633.50, %.thread779 ], [ %.sroa.0633.50, %.thread757 ], [ %.sroa.0633.50, %bb.as ], [ %.sroa.0633.50, %bb.aw ], [ %.sroa.0633.50, %.thread750 ], [ %.sroa.0633.50, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0633.50, %bb.h ], [ %.sroa.0633.50, %bb.l ], [ %.sroa.0633.50, %bb.p ], [ %.sroa.0633.50, %bb.u ], [ %.sroa.0633.50, %bb.z ], [ %.sroa.0633.50, %bb.ae ], [ %.sroa.0633.50, %bb.aj ], [ %.sroa.0633.50, %bb.ao ], [ %.sroa.0633.50, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEc.exit.thread ], [ %.sroa.0633.50, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEc.exit.thread ], [ %.sroa.0633.50, %bb.bb ], [ %.sroa.0633.50, %.loopexit ], [ %.sroa.0633.50, %.loopexit873 ], [ %.sroa.0633.50, %bb.bg ], [ %.sroa.0633.50, %bb.bz ], [ %.sroa.0633.33, %bb.dw ], [ %.sroa.0633.50, %bb.eg ], [ %.sroa.0633.50, %.410.si.unfold.true.jt11 ]
  %.pre = load i32, ptr %i.f, align 8, !tbaa !65
  br label %bb.fd

bb.fd:                                            ; preds = %.backedge, %bb.b
  %i.abt = phi i32 [ %i.g, %bb.b ], [ %.pre, %.backedge ] ; 22 uses
  %.sroa.0633.50 = phi i8 [ %.sroa.0633.01007, %bb.b ], [ %.sroa.0633.49.jt0, %.backedge ] ; 83 uses
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.abu ; 46 uses
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !139
  switch i8 %i.abw, label %.backedge [
    i8 0, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit
    i8 1, label %bb.c
    i8 2, label %bb.f
    i8 3, label %bb.i
    i8 4, label %bb.m
    i8 5, label %bb.q
    i8 6, label %bb.v
    i8 7, label %bb.aa
    i8 8, label %bb.af
    i8 9, label %bb.ak
    i8 12, label %bb.ap
    i8 13, label %bb.at
    i8 14, label %bb.ax
    i8 10, label %bb.bc
    i8 11, label %bb.bh
    i8 15, label %bb.bm
    i8 16, label %bb.bz
    i8 17, label %bb.ca
    i8 18, label %bb.cf
    i8 22, label %bb.ck
    i8 19, label %bb.cs
    i8 20, label %bb.cy
    i8 21, label %bb.dc
    i8 23, label %bb.di
    i8 24, label %bb.dy
    i8 25, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit488.thread747
    i8 26, label %bb.et
    i8 27, label %bb.ew
    i8 28, label %bb.ez
  ]

.critedge404.thread808:                           ; preds = %.410.si.unfold.true.jt11, %bb.eg, %bb.dw, %bb.fc, %bb.bl, %bb.ed, %bb.cq, %bb.ci, %bb.bg, %bb.ba, %bb.an, %bb.cd, %bb.aw, %bb.as, %bb.ai, %bb.ad, %bb.y, %bb.t, %bb.o, %bb.k, %bb.g, %bb.e, %bb.by
  %.sroa.0633.49805.ph = phi i8 [ %.sroa.0633.50, %bb.cd ], [ %.sroa.0633.50, %bb.by ], [ %.sroa.0633.50, %bb.e ], [ %.sroa.0633.50, %bb.g ], [ %.sroa.0633.50, %bb.k ], [ %.sroa.0633.50, %bb.o ], [ %.sroa.0633.50, %bb.t ], [ %.sroa.0633.50, %bb.y ], [ %.sroa.0633.50, %bb.ad ], [ %.sroa.0633.50, %bb.ai ], [ %.sroa.0633.50, %bb.as ], [ %.sroa.0633.50, %bb.aw ], [ %.sroa.0633.50, %.410.si.unfold.true.jt11 ], [ %.sroa.0633.50, %bb.eg ], [ %.sroa.0633.33, %bb.dw ], [ %.sroa.0633.50, %bb.fc ], [ %.sroa.0633.50, %bb.bl ], [ %.sroa.0633.50, %bb.ed ], [ %.sroa.0633.50, %bb.cq ], [ %.sroa.0633.50, %bb.ci ], [ %.sroa.0633.50, %bb.bg ], [ %.sroa.0633.50, %bb.ba ], [ %.sroa.0633.50, %bb.an ]
  %i.abx = add nuw nsw i64 %.03581008, 1
  %exitcond1021.not = icmp eq i64 %.03581008, %9
  br i1 %exitcond1021.not, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.b, !llvm.loop !185

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit: ; preds = %bb.fd
  %i.aby = getelementptr inbounds nuw i8, ptr %i.i, i64 %.03581008
  br label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit: ; preds = %.critedge404.thread808, %.critedge409, %bb.ey, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496, %bb.er, %bb.eo, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i491, %bb.cu, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i455, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.bu, %bb.fb, %bb.es, %bb.ef, %bb.ei, %bb.ec, %bb.dv, %bb.cp, %bb.ch, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit, %.critedge397, %bb.am, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit, %bb.ez, %bb.bx, %bb.av, %bb.ar, %bb.ah, %bb.ac, %bb.x, %bb.s, %bb.n, %bb.j, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664, %bb.cc, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit, %bb.a
  %.sroa.0633.52 = phi i8 [ %.sroa.0576.0.extract.trunc, %bb.cc ], [ 1, %bb.a ], [ 0, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit ], [ %.sroa.0626.0.extract.trunc, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664 ], [ 1, %bb.ey ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508 ], [ 1, %bb.er ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i491 ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i455 ], [ 1, %bb.bu ], [ %.sroa.0512.0.extract.trunc, %bb.ez ], [ %.sroa.0633.32, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ %.sroa.0602.0.extract.trunc, %bb.am ], [ %.sroa.0593.0.extract.trunc, %.critedge397 ], [ %.sroa.0590.0.extract.trunc, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ %.sroa.0587.0.extract.trunc, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ %.sroa.0573.0.extract.trunc, %bb.ch ], [ %.sroa.0570.0.extract.trunc, %bb.cp ], [ %.sroa.0533.0.extract.trunc, %bb.dv ], [ %.sroa.0530.0.extract.trunc, %bb.ec ], [ 1, %bb.eo ], [ %i.yn, %bb.ei ], [ %.sroa.0527.0.extract.trunc, %bb.ef ], [ %i.aag, %bb.es ], [ %.sroa.0.0.extract.trunc, %bb.fb ], [ %.sroa.0545.0.extract.trunc, %.critedge409 ], [ %.sroa.0623.0.extract.trunc, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0620.0.extract.trunc, %bb.j ], [ %.sroa.0617.0.extract.trunc, %bb.n ], [ %.sroa.0614.0.extract.trunc, %bb.s ], [ %.sroa.0611.0.extract.trunc, %bb.x ], [ %.sroa.0608.0.extract.trunc, %bb.ac ], [ %.sroa.0605.0.extract.trunc, %bb.ah ], [ %.sroa.0599.0.extract.trunc, %bb.ar ], [ %.sroa.0596.0.extract.trunc, %bb.av ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496 ], [ %.sroa.0579.0.extract.trunc, %bb.bx ], [ 1, %bb.cu ], [ 0, %.critedge404.thread808 ]
  %.sroa.37.4 = phi ptr [ undef, %.critedge409 ], [ undef, %bb.a ], [ %i.aby, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit ], [ undef, %bb.cc ], [ undef, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread664 ], [ undef, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ undef, %bb.j ], [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.ah ], [ undef, %bb.ar ], [ undef, %bb.av ], [ undef, %bb.bx ], [ undef, %bb.ez ], [ undef, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ undef, %bb.am ], [ undef, %.critedge397 ], [ undef, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ undef, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ undef, %bb.ch ], [ undef, %bb.cp ], [ undef, %bb.dv ], [ undef, %bb.ec ], [ undef, %bb.ei ], [ undef, %bb.ef ], [ undef, %bb.es ], [ undef, %bb.fb ], [ undef, %bb.bu ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i455 ], [ undef, %bb.cu ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i491 ], [ undef, %bb.eo ], [ undef, %bb.er ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i496 ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i508 ], [ undef, %bb.ey ], [ null, %.critedge404.thread808 ]
  %i.abz = load i64, ptr %i.l, align 8, !tbaa !187
  %i.aca = add i64 %i.abz, -1
  store i64 %i.aca, ptr %i.l, align 8, !tbaa !187
  %i.acb = load ptr, ptr %3, align 8, !tbaa !49   ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.a
  br i1 %i.acc, label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELj64EED2Ev.exit, label %bb.fe

bb.fe:                                            ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit
  call void @free(ptr noundef %i.acb) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELj64EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELj64EED2Ev.exit: ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.0633.52, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.37.4, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not.i73 = icmp eq i32 %i.b, 0
  br i1 %.not.i73, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.bo, %bb.l ] ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !49
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 15 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !29    ; 2 uses
  switch i8 %i.k, label %bb.l [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !29
  %i.o = zext i16 %i.n to i64
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load i64, ptr %i.l, align 4
  store i64 %i.r, ptr %i.q, align 4
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29
  %i.v = zext i16 %i.u to i64
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.s, align 4
  store i64 %i.y, ptr %i.x, align 4
  br label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !66
  %i.ac = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !65
  %i.af = add i32 %i.f, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !51
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %i.ag = add i32 %i.f, -1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !51
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !123
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store i64 %.sroa.4.0.copyload, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.am, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.2.0.extract.shift.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !66
  %i.ar = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.as = zext i8 %i.ar to i16
  %i.at = or disjoint i16 %i.as, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.c, align 8, !tbaa !154, !range !74, !noundef !75
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = icmp eq i8 %i.k, 4
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bd = select i1 %i.ba, i64 -1, i64 1
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bg = select i1 %i.ba, i64 1, i64 -1
  %i.bh = getelementptr inbounds i8, ptr %i.av, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.be, %bb.i ], [ %i.bh, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bi, align 8, !tbaa !66
  %i.bj = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !65
  br label %.thread48

.sink.split.sink.split:                           ; preds = %bb.c, %bb.d
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !51
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g
  %.sink108 = phi i32 [ %i.f, %bb.g ], [ %i.bm, %.sink.split.sink.split ]
  %i.bn = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bo = phi i32 [ %i.f, %bb.b ], [ %i.bn, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.at, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
  ret i16 %.sroa.6.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex18bracketMatchesCharINS0_16ASCIIRegexTraitsEEEbRKNS0_7ContextIT_EEPKNS0_11BracketInsnEPKNS0_14BracketRange32ENS4_9CodePointE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1               ; 14 uses
  %i.c = and i8 %i.b, 126
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %.split63.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %3, -33
  %i.e = add i8 %i.d, -65
  %or.cond19.i = icmp ult i8 %i.e, 26
  %i.f = add i8 %3, -48
  %or.cond8.i = icmp ult i8 %i.f, 10              ; 3 uses
  %i.g = icmp eq i8 %3, 95
  %i.h = or i1 %or.cond19.i, %i.g
  %i.i = or i1 %i.h, %or.cond8.i
  br i1 %i.i, label %.split57.us.preheader, label %.split57

.split57.us.preheader:                            ; preds = %bb.b
  %i.j = and i8 %i.b, 2
  %.not35.us = icmp eq i8 %i.j, 0
end_hunk_3
