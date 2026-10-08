Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadPlanStepInRange?download=true
inline.NumInlined: 410
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private21ThreadPlanStepInRange29DefaultShouldStopHereCallbackEPNS_10ThreadPlanERNS_5FlagsEN4lldb15FrameComparisonERNS_6StatusEPv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !98
  store <2 x ptr> %i.az, ptr %i.av, align 16, !tbaa !98
  %.not.i.i.i6.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i6.i, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i7.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i7.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !107
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.be = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i: ; preds = %bb.r, %bb.q, %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !126 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !98
  store <2 x ptr> %i.bl, ptr %i.bh, align 8, !tbaa !98
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !107
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !107
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i

_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i: ; preds = %bb.u, %bb.t, %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.bt = load <2 x i64>, ptr %i.bs, align 8, !tbaa !111
  store <2 x i64> %i.bt, ptr %i.br, align 8, !tbaa !111
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !127, !range !120, !noundef !121
  store i8 %i.bw, ptr %i.bu, align 8, !tbaa !127
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %i.by, align 8, !tbaa !98
  store <2 x ptr> %i.cb, ptr %i.bx, align 16, !tbaa !98
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i6.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !107
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !107
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i

_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i: ; preds = %bb.x, %bb.w, %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !103 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !98
  store <2 x ptr> %i.cl, ptr %i.ch, align 16, !tbaa !98
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i7.i.i, label %_ZN12lldb_private13SymbolContextC2ERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i8.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !107
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !107
  br label %_ZN12lldb_private13SymbolContextC2ERKS0_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private13SymbolContextC2ERKS0_.exit

_ZN12lldb_private13SymbolContextC2ERKS0_.exit:    ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i, %bb.z, %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.cr, ptr noundef nonnull align 8 dereferenceable(7) %i.cs, i64 7, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !128
  %.not = icmp eq ptr %i.cv, null
  br i1 %.not, label %.thread46, label %bb.ab

bb.ab:                                            ; preds = %_ZN12lldb_private13SymbolContextC2ERKS0_.exit
  %i.cw = call ptr @_ZNK12lldb_private13SymbolContext15GetFunctionNameENS_7Mangled14NamePreferenceE(ptr noundef nonnull align 8 dereferenceable(152) %7, i32 noundef 1) #13
  %i.cx = load ptr, ptr %i.af, align 8, !tbaa !109 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %.thread46, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit

_ZNK12lldb_private11ConstString9AsCStringEPKc.exit: ; preds = %bb.ab
  %i.cz = call ptr @_ZNK12lldb_private13SymbolContext15GetFunctionNameENS_7Mangled14NamePreferenceE(ptr noundef nonnull align 8 dereferenceable(152) %7, i32 noundef 1) #13 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36.thread, label %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i34

_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i34: ; preds = %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !102
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36.thread, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36

_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36: ; preds = %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i34
  %i.dd = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(1) %i.cx) #16
  %i.de = icmp ne ptr %i.dd, null
  br label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36.thread

_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36.thread: ; preds = %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i34, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36
  %.1 = phi i1 [ %i.de, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36 ], [ false, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit ], [ false, %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i34 ] ; 2 uses
  %i.df = icmp eq ptr %.0.i.i, null
  %or.cond3 = or i1 %i.df, %.1
  br i1 %or.cond3, label %bb.ac, label %.thread48

.thread48:                                        ; preds = %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36.thread
  %i.dg = call ptr @_ZNK12lldb_private13SymbolContext15GetFunctionNameENS_7Mangled14NamePreferenceE(ptr noundef nonnull align 8 dereferenceable(152) %7, i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.af to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr @.str.15, ptr %5, align 8, !tbaa !110, !alias.scope !180
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 67, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !111, !alias.scope !180
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !113, !alias.scope !180
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !111, !alias.scope !180
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.dl, align 8, !tbaa !117, !alias.scope !180
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 %i.di, ptr %i.dm, align 8, !tbaa !119, !alias.scope !180
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i64 %i.dh, ptr %i.dn, align 8, !tbaa !110, !alias.scope !180
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIN12lldb_private11ConstStringEEEEEvlS2_S3_, ptr %i.dj, align 8, !alias.scope !180
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.do, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !180
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRN12lldb_private11ConstStringEEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !180
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %i.dp, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !102, !alias.scope !180
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.6, i64 78, ptr nonnull @__func__._ZN12lldb_private21ThreadPlanStepInRange29DefaultShouldStopHereCallbackEPNS_10ThreadPlanERNS_5FlagsEN4lldb15FrameComparisonERNS_6StatusEPv, i64 29, ptr noundef nonnull align 8 dereferenceable(33) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ad

.thread46:                                        ; preds = %_ZN12lldb_private13SymbolContextC2ERKS0_.exit, %bb.ab
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.thread43

bb.ac:                                            ; preds = %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit36.thread
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br i1 %.1, label %.thread43, label %bb.ad

.thread43:                                        ; preds = %bb.k, %_ZNK12lldb_private11ConstStringcvbEv.exit, %.thread46, %bb.ac
  %i.dq = call noundef zeroext i1 @_ZN12lldb_private21ThreadPlanStepInRange25FrameMatchesAvoidCriteriaEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
  %i.dr = xor i1 %i.dq, true
  br label %bb.ad

bb.ad:                                            ; preds = %.thread48, %bb.j, %.thread43, %bb.ac, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %.0 = phi i1 [ false, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ], [ true, %bb.j ], [ %i.dr, %.thread43 ], [ false, %bb.ac ], [ false, %.thread48 ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN12lldb_private24ThreadPlanShouldStopHere29DefaultShouldStopHereCallbackEPNS_10ThreadPlanERNS_5FlagsEN4lldb15FrameComparisonERNS_6StatusEPv(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21ThreadPlanStepInRange18DoPlanExplainsStopEPNS_5EventE(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.41", align 16 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.41", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.b = load i32, ptr %i.a, align 4, !tbaa !97
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.d = tail call noundef nonnull align 8 dereferenceable(576) ptr @_ZN12lldb_private10ThreadPlan9GetThreadEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #13, !noalias !184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13, !noalias !184
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.g = load ptr, ptr %i.f, align 8, !noalias !184
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %2, ptr noundef nonnull align 8 dereferenceable(576) %i.d, i1 noundef zeroext true) #13, !inline_history !183
  %i.h = load ptr, ptr %2, align 16, !tbaa !187   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(112) %i.h) #13 ; 2 uses
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 16, !tbaa !98
  store <2 x ptr> %i.q, ptr %3, align 16, !tbaa !98
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.r, align 4, !tbaa !107
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !107
  br label %_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.w = call noundef zeroext i1 @_ZN12lldb_private19ThreadPlanStepRange31NextRangeBreakpointExplainsStopESt10shared_ptrINS_8StopInfoEE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %3) #13 ; 4 uses
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !103  ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !106
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #13, !inline_history !2
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #13, !inline_history !2
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i7 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !108

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #13
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.c
  %i.an = call noundef zeroext i1 @_ZN12lldb_private10ThreadPlan30IsUsuallyUnexplainedStopReasonEN4lldb10StopReasonE(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.l) #13
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #13
  %i.ap = load atomic ptr, ptr %i.ao monotonic, align 8 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ap) #13
  %i.ar = and i64 %i.aq, 4194304
  %.not6.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not6.i.i, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.p
  call void @_ZN12lldb_private3Log10PutCStringEPKc(ptr noundef nonnull align 8 dereferenceable(104) %i.ap, ptr noundef nonnull @.str.16) #13
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.o, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i, %_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit, %bb.b, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ %i.w, %bb.m ], [ true, %bb.b ], [ false, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ], [ %i.w, %_ZNSt10shared_ptrIN12lldb_private8StopInfoEEC2ERKS2_.exit ], [ %i.w, %bb.i ], [ %i.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ false, %bb.o ], [ false, %bb.p ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.at, null
  br i1 %.not.i.i9, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.au, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !106
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #13, !inline_history !2
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #13, !inline_history !2
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13

bb.s:                                             ; preds = %bb.q
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i10 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i10, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i12 = phi i32 [ %i.ax, %bb.t ], [ %i.bh, %bb.u ]
  %i.bi = icmp eq i32 %.0.i.i.i.i12, 1
  br i1 %i.bi, label %bb.v, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13, !prof !108

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #13
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13

_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13: ; preds = %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13
  %.2 = phi i1 [ %.1, %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13 ], [ true, %bb.a ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZN12lldb_private19ThreadPlanStepRange31NextRangeBreakpointExplainsStopESt10shared_ptrINS_8StopInfoEE(ptr noundef nonnull align 8 dereferenceable(528), ptr nofree noundef align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private10ThreadPlan30IsUsuallyUnexplainedStopReasonEN4lldb10StopReasonE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #1

declare void @_ZN12lldb_private3Log10PutCStringEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
