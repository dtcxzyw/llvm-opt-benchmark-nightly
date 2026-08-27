Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MinidumpFileBuilder?download=true
inline.NumInlined: 2108
inline.NumDeleted: 1070
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN19MinidumpFileBuilder32AddHeaderAndCalculateDirectoriesEv:bb.a
bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !118 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false)
  br label %_ZN12lldb_private6StatusC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !117
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !88
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !118
  br label %_ZN12lldb_private6StatusC2EOS0_.exit

_ZN12lldb_private6StatusC2EOS0_.exit:             ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cn = phi i64 [ %i.cj, %bb.v ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !118
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !117
  store i64 0, ptr %i.co, align 8, !tbaa !118
  store i8 0, ptr %i.cg, align 8, !tbaa !88
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !119
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17, !noalias !119
  call void @_ZN19MinidumpFileBuilder12AddDirectoryEN4llvm8minidump10StreamTypeEm(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 1280066626, i64 noundef 0)
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !119
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN12lldb_private6StatusC2EOS0_.exit
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cq = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i ], [ %i.cq, %bb.x ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !111 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cu, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !84
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #17, !inline_history !125
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !85
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #17, !inline_history !125
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.ab ], [ %i.dh, %bb.ac ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.di, label %bb.ad, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i, !prof !90

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.dj, %i.cr
  br i1 %.not.i.i.i8, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !126

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !122
  br label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i, %bb.x
  %i.dk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i ], [ %i.cq, %bb.x ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !127
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #18
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN12lldb_private7Process27CalculateCoreFileThreadListERKNS_15SaveCoreOptionsE(ptr dead_on_unwind writable sret(%"class.std::vector.91") align 8, ptr noundef nonnull align 8 dereferenceable(3224), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN12lldb_private6Thread11GetStopInfoEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.423") align 8, ptr noundef nonnull align 8 dereferenceable(576)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ...) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19MinidumpFileBuilder22AddLLDBGeneratedStreamEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::Status", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @_ZN19MinidumpFileBuilder12AddDirectoryEN4llvm8minidump10StreamTypeEm(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 1280066626, i64 noundef 0)
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19MinidumpFileBuilder12AddDirectoryEN4llvm8minidump10StreamTypeEm(ptr dead_on_unwind noalias nonnull writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %5 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = tail call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = add i64 %i.d, %i.b
  %i.f = icmp ugt i64 %i.e, 4294967295
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef %2) #17
  %i.g = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #17 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.j = load ptr, ptr %1, align 8, !tbaa !129
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 12
  %i.o = add nsw i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !103  ; 2 uses
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %5, ptr noundef nonnull @.str.2, i32 noundef %2, i64 noundef %i.q) #17
  %i.s = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %5) #17 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.u = load i64, ptr %i.c, align 8, !tbaa !8
  %i.v = add i64 %i.u, %i.t
  %.sroa.4.0.insert.ext = shl i64 %i.v, 32
  %.sroa.011.0.insert.ext = and i64 %3, 4294967295
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.011.0.insert.ext ; 2 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !128  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %2, ptr %i.w, align 1, !tbaa !88
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i64 %.sroa.011.0.insert.insert, ptr %.sroa.5.0..sroa_idx, align 1
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !128
  br label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %1, align 8, !tbaa !129   ; 4 uses
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #19
  unreachable

_ZNKSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ag = sdiv exact i64 %i.ae, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 768614336404564650)
  %i.ak = select i1 %i.ai, i64 768614336404564650, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 12
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #20 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 3 uses
  store i32 %2, ptr %i.an, align 1, !tbaa !88
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i64 %.sroa.011.0.insert.insert, ptr %.sroa.5.0..sroa_idx7, align 1
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.i, label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.not.i17.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !130
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #18
  br label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.am, ptr %1, align 8, !tbaa !129
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.x, align 8, !tbaa !130
  br label %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4llvm8minidump9DirectoryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK19MinidumpFileBuilder23GetCurrentDataEndOffsetEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19MinidumpFileBuilder13AddSystemInfoEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %3 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.llvm::minidump::SystemInfo", align 2 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %10 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71, !noalias !131, !nonnull !76, !noundef !76 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 8, !noalias !131
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i.i.i.i.i.i = phi i32 [ %i.h, %bb.a ], [ %i.l, %bb.b ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.i = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.j = cmpxchg weak ptr %i.g, i32 %.06.i.i.i.i.i.i, i32 %i.i acq_rel monotonic, align 8, !noalias !131 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.b, !llvm.loop !77

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = load atomic i32, ptr %i.g monotonic, align 8, !noalias !131
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79, !noalias !131
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 4 uses
  %i.q = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.g, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !84
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !87
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !87
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i1.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !90

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 760 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN19MinidumpFileBuilder12AddDirectoryEN4llvm8minidump10StreamTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 7, i64 noundef 56)
  %i.af = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #17 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ag = call noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  br i1 %i.ag, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 792
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !134
  %switch.tableidx = add i32 %i.ai, -1            ; 3 uses
  %i.aj = icmp ult i32 %switch.tableidx, 41
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 1649281564677, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.aj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ak = call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #17 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 3 uses
  %i.am = extractvalue { ptr, i64 } %i.ak, 1      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN19MinidumpFileBuilder13AddModuleListEv:bb.a

bb.u:                                             ; preds = %bb.i
  %i.ej = load ptr, ptr %i.al, align 8, !tbaa !206 ; 6 uses
  %i.ek = load ptr, ptr %i.am, align 8, !tbaa !242
  %.not.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !111 ; 2 uses
  %i.em = load <2 x ptr>, ptr %9, align 16, !tbaa !243
  store <2 x ptr> %i.em, ptr %i.ej, align 8, !tbaa !243
  %.not.i.i.i.i.i34 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i34, label %_ZNSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEC2IRS3_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !89
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !89
  br label %_ZNSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEC2IRS3_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.er = atomicrmw volatile add ptr %i.en, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !206
  br label %_ZNSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEC2IRS3_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit.i

_ZNSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEC2IRS3_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit.i: ; preds = %bb.y, %bb.x, %bb.v
  %i.es = phi ptr [ %i.ej, %bb.v ], [ %i.ej, %bb.x ], [ %.pre.i, %bb.y ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.eu = load i64, ptr %11, align 8, !tbaa !138
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !244
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.ev, ptr %i.al, align 8, !tbaa !206
  br label %_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EE12emplace_backIJRS4_RmEEERS5_DpOT_.exit

bb.z:                                             ; preds = %bb.u
  call void @_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EE17_M_realloc_insertIJRS4_RmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EE12emplace_backIJRS4_RmEEERS5_DpOT_.exit

_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EE12emplace_backIJRS4_RmEEERS5_DpOT_.exit: ; preds = %bb.z, %_ZNSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEC2IRS3_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit.i, %_ZN4llvm5ErrorD2Ev.exit33
  %i.ew = load i8, ptr %i.ak, align 8
  %i.ex = trunc i8 %i.ew to i1
  br i1 %i.ex, label %bb.aa, label %_ZN4llvm8ExpectedImED2Ev.exit

bb.aa:                                            ; preds = %_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EE12emplace_backIJRS4_RmEEERS5_DpOT_.exit
  %i.ey = load ptr, ptr %11, align 8, !tbaa !187  ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i36, label %_ZN4llvm8ExpectedImED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.aa
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey) #17, !inline_history !247
  br label %_ZN4llvm8ExpectedImED2Ev.exit

_ZN4llvm8ExpectedImED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EE12emplace_backIJRS4_RmEEERS5_DpOT_.exit, %bb.aa, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.fc = load ptr, ptr %10, align 8, !tbaa !117  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aq
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm8ExpectedImED2Ev.exit
  %i.fe = load i64, ptr %i.aq, align 8, !tbaa !88
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm8ExpectedImED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.fg = load ptr, ptr %i.an, align 8, !tbaa !111 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.fh, align 8, !tbaa !82
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !84
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !85
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #17, !inline_history !248
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !85
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #17, !inline_history !248
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.fk, %bb.ae ], [ %i.fu, %bb.af ]
  %i.fv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fv, label %bb.ag, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.fw = add nuw nsw i64 %.024125, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %i.aj
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !249

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.fx = load ptr, ptr %i.ay, align 8, !tbaa !206
  %i.fy = load ptr, ptr %8, align 8, !tbaa !209
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 24
  %i.gd = trunc i64 %i.gc to i32
  store i32 %i.gd, ptr %13, align 4
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull %13, i64 noundef 4) #17
  %i.ge = load ptr, ptr %8, align 8, !tbaa !250   ; 2 uses
  %i.gf = load ptr, ptr %i.ay, align 8, !tbaa !250 ; 2 uses
  %.not126 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not126, label %.critedge28, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.ah
  %i.gg = add i64 %i.ai, %i.ax                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 76
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0115.0127, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.gf
  br i1 %.not, label %.critedge28, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph130, %bb.ai
  %.025128 = phi i1 [ false, %.lr.ph130 ], [ %.126, %bb.ai ]
  %.sroa.0115.0127 = phi ptr [ %i.ge, %.lr.ph130 ], [ %i.gq, %bb.ai ] ; 4 uses
  %i.gr = load ptr, ptr %.sroa.0115.0127, align 8, !tbaa !147 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0115.0127, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !111 ; 9 uses
  %.not.i.i.i38 = icmp eq ptr %i.gt, null         ; 2 uses
  br i1 %.not.i.i.i38, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i39 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i39, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !89
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !89
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit

bb.am:                                            ; preds = %bb.ak
  %i.gy = atomicrmw volatile add ptr %i.gu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit: ; preds = %bb.aj, %bb.al, %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0115.0127, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZNK12lldb_private6Module27GetSpecificationDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(952) %i.gr) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i32 1114654028, ptr %15, align 4
  %i.hb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6Module7GetUUIDEv(ptr noundef nonnull align 8 dereferenceable(952) %i.gr) #17 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !143
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !145 ; 2 uses
  %i.hf = add i64 %i.he, 4
  %i.hg = call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %i.hh = add i64 %i.hg, %i.gg
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %15, i64 noundef 4) #17
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.hc, i64 noundef %i.he) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %16, i8 0, i64 108, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.hi = load ptr, ptr %i.gr, align 8, !tbaa !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(952) %i.gr) #17 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !85
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 232
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Address") align 8 %17, ptr noundef nonnull align 8 dereferenceable(200) %i.hl) #17
  %i.hp = call noundef i64 @_ZNK12lldb_private7Address14GetLoadAddressEPNS_6TargetE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %i.n) #17
  store i64 %i.hp, ptr %16, align 8, !tbaa !88
  %i.hq = load ptr, ptr %i.gh, align 8, !tbaa !71 ; 4 uses
  %.not.i.i.i40 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i40, label %_ZN12lldb_private7AddressD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 12 ; 3 uses
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i41 = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i.i41, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !89 ; 2 uses
  %i.hu = add nsw i32 %i.ht, -1
  store i32 %i.hu, ptr %i.hr, align 4, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42

bb.ap:                                            ; preds = %bb.an
  %i.hv = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i43 = phi i32 [ %i.ht, %bb.ao ], [ %i.hv, %bb.ap ]
  %i.hw = icmp eq i32 %.0.i.i.i.i.i43, 1
  br i1 %i.hw, label %bb.aq, label %_ZN12lldb_private7AddressD2Ev.exit

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42
  %i.hx = load ptr, ptr %i.hq, align 8, !tbaa !85
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #17, !inline_history !178
  br label %_ZN12lldb_private7AddressD2Ev.exit

_ZN12lldb_private7AddressD2Ev.exit:               ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.ia = trunc i64 %i.ha to i32
  store i32 %i.ia, ptr %i.gi, align 8, !tbaa !88
  store i32 0, ptr %i.gj, align 4, !tbaa !88
  %i.ib = call i64 @time(ptr noundef null) #17
  %i.ic = trunc i64 %i.ib to i32
  store i32 %i.ic, ptr %i.gk, align 8, !tbaa !88
  %i.id = call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %i.ie = add i64 %i.id, %i.gg
  %i.if = trunc i64 %i.ie to i32
  store i32 %i.if, ptr %i.gl, align 4, !tbaa !88
  %.sroa.4.0.insert.ext = shl i64 %i.hh, 32
  %.sroa.087.0.insert.ext = and i64 %i.hf, 4294967295
  %.sroa.087.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.087.0.insert.ext
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.gm, i8 0, i64 52, i1 false)
  store i64 %.sroa.087.0.insert.insert, ptr %i.gn, align 4
  store i64 0, ptr %i.go, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @_Z11WriteStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN12lldb_private14DataBufferHeapE(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %7)
  %i.ig = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %18) #17 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %i.ih = call noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17 ; 2 uses
  br i1 %i.ih, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN12lldb_private7AddressD2Ev.exit
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull %16, i64 noundef 108) #17
  br label %bb.as

bb.as:                                            ; preds = %_ZN12lldb_private7AddressD2Ev.exit, %bb.ar
  %.126 = phi i1 [ %.025128, %bb.ar ], [ true, %_ZN12lldb_private7AddressD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.ii = load ptr, ptr %14, align 8, !tbaa !117  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.gp
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.as
  %i.ik = load i64, ptr %i.gp, align 8, !tbaa !88
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.not.i.i.i38, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.im = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.in = load atomic i64, ptr %i.im acquire, align 8 ; 2 uses
  %i.io = icmp eq i64 %i.in, 4294967297
  %i.ip = trunc i64 %i.in to i32                  ; 2 uses
  br i1 %i.io, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.im, align 8, !tbaa !82
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.iq, align 4, !tbaa !84
  %i.ir = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #17, !inline_history !248
  %i.iu = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #17, !inline_history !248
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

bb.av:                                            ; preds = %bb.at
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i48 = icmp eq i8 %i.ix, 0
  br i1 %.not.i.i.i48, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iy = add nsw i32 %i.ip, -1
  store i32 %i.iy, ptr %i.im, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ax:                                            ; preds = %bb.av
  %i.iz = atomicrmw volatile add ptr %i.im, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i50 = phi i32 [ %i.ip, %bb.aw ], [ %i.iz, %bb.ax ]
  %i.ja = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.ja, label %bb.ay, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, !prof !90

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ay
  br i1 %i.ih, label %bb.bg, label %bb.ai

.critedge28:                                      ; preds = %bb.ai, %bb.ah
  %i.jb = load ptr, ptr %7, align 8, !tbaa !85
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call noundef ptr %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %7) #17, !inline_history !251
  %i.jf = call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef %i.je, i64 noundef %i.jf) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.jg = load ptr, ptr %8, align 8, !tbaa !209   ; 3 uses
  %i.jh = load ptr, ptr %i.ay, align 8, !tbaa !206 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jg, %i.jh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge28, %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jz, %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i ], [ %i.jg, %.critedge28 ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !111 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.jk, align 8, !tbaa !82
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !84
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #17, !inline_history !252
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !85
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #17, !inline_history !252
  br label %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jn, %bb.bc ], [ %i.jx, %bb.bd ]
  %i.jy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.jy, label %bb.be, label %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i, !prof !90

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #17
  br label %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ba, %.lr.ph.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.jz, %i.jh
  br i1 %.not.i.i.i52, label %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !209
  br label %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exit.i

_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exitthread-pre-split.i, %.critedge28
  %i.ka = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exitthread-pre-split.i ], [ %i.jg, %.critedge28 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !242
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.ka to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.kf) #18
  br label %_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN12lldb_private14DataBufferHeapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bw

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.kg = load ptr, ptr %8, align 8, !tbaa !209   ; 3 uses
  %i.kh = load ptr, ptr %i.ay, align 8, !tbaa !206 ; 2 uses
  %.not4.i.i.i53 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not4.i.i.i53, label %_ZSt8_DestroyIPSt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvT_S7_.exit.i64, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.bg, %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i60
  %.05.i.i.i55 = phi ptr [ %i.kz, %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i60 ], [ %i.kg, %bb.bg ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i55, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !111 ; 8 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZSt8_DestroyISt4pairISt10shared_ptrIN12lldb_private6ModuleEEmEEvPT_.exit.i.i.i60, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i54
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.kl = load atomic i64, ptr %i.kk acquire, align 8 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 4294967297
  %i.kn = trunc i64 %i.kl to i32                  ; 2 uses
  br i1 %i.km, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.kk, align 8, !tbaa !82
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store i32 0, ptr %i.ko, align 4, !tbaa !84
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !85
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #17, !inline_history !252
end_hunk_1
begin_hunk_2_@_ZN19MinidumpFileBuilder13AddThreadListEv:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !79, !noalias !299
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.r, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.dw = phi ptr [ %i.dv, %bb.r ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.dx = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.dn, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !84
  %i.eb = load ptr, ptr %i.dm, align 8, !tbaa !85
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #17, !inline_history !87
  %i.ee = load ptr, ptr %i.dm, align 8, !tbaa !85
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #17, !inline_history !87
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.t:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i1.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dn, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ej = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.dz, %bb.u ], [ %i.ej, %bb.v ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ek, label %bb.w, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !90

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #17
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 760 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.em = call noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96) %i.el) #17 ; 2 uses
  store i32 %i.em, ptr %11, align 8, !tbaa !302
  switch i32 %i.em, label %_ZN18ArchThreadContexts22prepareRegisterContextEPN12lldb_private15RegisterContextE.exit [
    i32 41, label %bb.x
    i32 3, label %bb.y
  ]

bb.x:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_Z23GetThreadContext_x86_64PN12lldb_private15RegisterContextE(ptr dead_on_unwind nonnull writable sret(%"struct.lldb_private::minidump::MinidumpContext_x86_64") align 1 %2, ptr noundef %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %i.bc, ptr noundef nonnull align 1 dereferenceable(736) %2, i64 736, i1 false), !tbaa.struct !304
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.af

bb.y:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_Z22GetThreadContext_ARM64PN12lldb_private15RegisterContextE(ptr dead_on_unwind nonnull writable sret(%"struct.lldb_private::minidump::RegisterContextMinidump_ARM64::Context") align 8 %3, ptr noundef nonnull %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.bc, ptr noundef nonnull align 8 dereferenceable(800) %3, i64 800, i1 false), !tbaa.struct !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.af

_ZN18ArchThreadContexts22prepareRegisterContextEPN12lldb_private15RegisterContextE.exit: ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.en = call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %i.el) #17 ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0      ; 3 uses
  %i.ep = extractvalue { ptr, i64 } %i.en, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %.not.i = icmp eq ptr %i.eo, null
  store ptr %i.bw, ptr %13, align 8, !tbaa !116, !alias.scope !306
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN18ArchThreadContexts22prepareRegisterContextEPN12lldb_private15RegisterContextE.exit
  store i64 0, ptr %i.bx, align 8, !tbaa !118, !alias.scope !306
  store i8 0, ptr %i.bw, align 8, !tbaa !88, !alias.scope !306
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.aa:                                            ; preds = %_ZN18ArchThreadContexts22prepareRegisterContextEPN12lldb_private15RegisterContextE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !306
  store i64 %i.ep, ptr %i.a, align 8, !tbaa !138, !noalias !306
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %bb.ab, label %._crit_edge.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.er = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.er, ptr %13, align 8, !tbaa !117, !alias.scope !306
  %i.es = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !306
  store i64 %i.es, ptr %i.bw, align 8, !tbaa !88, !alias.scope !306
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ab, %bb.aa
  %i.et = phi ptr [ %i.er, %bb.ab ], [ %i.bw, %bb.aa ] ; 2 uses
  switch i64 %i.ep, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %i.eu = load i8, ptr %i.eo, align 1, !tbaa !88
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 1 %i.eo, i64 %i.ep, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !306 ; 2 uses
  store i64 %i.ev, ptr %i.bx, align 8, !tbaa !118, !alias.scope !306
  %i.ew = load ptr, ptr %13, align 8, !tbaa !117, !alias.scope !306
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !306
  %.pre = load ptr, ptr %13, align 8, !tbaa !117
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.ey = phi ptr [ %i.bw, %bb.z ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %12, ptr noundef nonnull @.str.42, ptr noundef %i.ey) #17
  %i.ez = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %12) #17 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #17
  %i.fa = load ptr, ptr %13, align 8, !tbaa !117  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bw
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.fc = load i64, ptr %i.bw, align 8, !tbaa !88
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.fe = load ptr, ptr %5, align 8, !tbaa !113
  store ptr %i.fe, ptr %0, align 8, !tbaa !113
  store ptr null, ptr %5, align 8, !tbaa !113
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !116
  %i.ff = load ptr, ptr %i.bz, align 8, !tbaa !117 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cb
  br i1 %i.fg, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fh = load i64, ptr %i.cc, align 8, !tbaa !118 ; 3 uses
  %i.fi = icmp ult i64 %i.fh, 16
  call void @llvm.assume(i1 %i.fi)
  %i.fj = add nuw nsw i64 %i.fh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.fj, i1 false)
  br label %_ZN12lldb_private6StatusC2EOS0_.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ff, ptr %i.by, align 8, !tbaa !117
  %i.fk = load i64, ptr %i.cb, align 8, !tbaa !88
  store i64 %i.fk, ptr %i.ca, align 8, !tbaa !88
  %.pre91 = load i64, ptr %i.cc, align 8, !tbaa !118
  br label %_ZN12lldb_private6StatusC2EOS0_.exit37

_ZN12lldb_private6StatusC2EOS0_.exit37:           ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.fl = phi i64 [ %i.fh, %bb.ae ], [ %.pre91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ]
  store i64 %i.fl, ptr %i.cd, align 8, !tbaa !118
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !117
  store i64 0, ptr %i.cc, align 8, !tbaa !118
  store i8 0, ptr %i.cb, align 8, !tbaa !88
  br label %bb.ak

bb.af:                                            ; preds = %bb.y, %bb.x
  %i.fm = call noundef i64 @_ZN12lldb_private15RegisterContext5GetSPEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 noundef -1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %14, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, i8 -1, i64 20, i1 false)
  store ptr null, ptr %i.be, align 8, !tbaa !309
  store i32 -1, ptr %i.bf, align 8, !tbaa !310
  store i64 0, ptr %i.bg, align 8, !tbaa !323
  store i32 -1, ptr %i.bh, align 8, !tbaa !324
  store i32 -1, ptr %i.bi, align 4, !tbaa !325
  store i32 -1, ptr %i.bj, align 8, !tbaa !326
  store i8 0, ptr %i.bk, align 8, !tbaa !327
  store i32 0, ptr %i.bl, align 4, !tbaa !328
  store i8 0, ptr %i.bm, align 8, !tbaa !329
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @_ZN12lldb_private7Process19GetMemoryRegionInfoEmRNS_16MemoryRegionInfoE(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(3224) %i.fn, i64 noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(120) %14) #17
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #17
  %i.fo = load i32, ptr %11, align 8, !tbaa !302  ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.fo, 3
  %switch.selectcmp1.i = icmp eq i32 %i.fo, 41
  %i.fp = select i1 %switch.selectcmp.i, i64 800, i64 0
  %.sroa.065.0.insert.ext = select i1 %switch.selectcmp1.i, i64 736, i64 %i.fp
  %i.fq = call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %i.fr = add i64 %i.bn, %i.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.fs = load ptr, ptr %.sroa.081.090, align 8, !tbaa !105
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !330
  store i64 %i.fu, ptr %i.b, align 8, !tbaa !138
  %i.fv = call noundef nonnull align 1 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN4llvm8minidump18LocationDescriptorEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.sroa.5.0.insert.ext = shl i64 %i.fr, 32
  %.sroa.065.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.065.0.insert.ext ; 2 uses
  store i64 %.sroa.065.0.insert.insert, ptr %i.fv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fw = load ptr, ptr %.sroa.081.090, align 8, !tbaa !105
  %i.fx = call noundef i32 @_ZNK12lldb_private6Thread10GetIndexIDEv(ptr noundef nonnull align 8 dereferenceable(576) %i.fw) #17
  %i.fy = load i32, ptr %11, align 8, !tbaa !302  ; 2 uses
  %switch.selectcmp.i38 = icmp eq i32 %i.fy, 3
  %switch.select.i39 = select i1 %switch.selectcmp.i38, i64 800, i64 0
  %switch.selectcmp1.i40 = icmp eq i32 %i.fy, 41
  %switch.select2.i41 = select i1 %switch.selectcmp1.i40, i64 736, i64 %switch.select.i39
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.43, i64 97, ptr nonnull @__func__._ZN19MinidumpFileBuilder13AddThreadListEv, i64 13, ptr noundef nonnull @.str.44, i32 noundef %i.fx, i64 noundef %switch.select2.i41) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fz = load i32, ptr %11, align 8, !tbaa !302  ; 2 uses
  %switch.selectcmp.i42 = icmp eq i32 %i.fz, 3
  %switch.select.i43 = select i1 %switch.selectcmp.i42, i64 800, i64 0
  %switch.selectcmp1.i44 = icmp eq i32 %i.fz, 41
  %switch.select2.i45 = select i1 %switch.selectcmp1.i44, i64 736, i64 %switch.select.i43
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.bc, i64 noundef %switch.select2.i45) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.ga = load ptr, ptr %.sroa.081.090, align 8, !tbaa !105
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !330
  %i.gd = trunc i64 %i.gc to i32
  store i32 %i.gd, ptr %16, align 4, !tbaa !88
  %i.ge = load ptr, ptr %.sroa.081.090, align 8, !tbaa !105
  %i.gf = call noundef i32 @_ZNK12lldb_private6Thread8GetStateEv(ptr noundef nonnull align 8 dereferenceable(576) %i.ge) #17
  %i.gg = icmp eq i32 %i.gf, 11
  %i.gh = zext i1 %i.gg to i32
  store i32 %i.gh, ptr %i.bp, align 4, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  store i64 %.sroa.065.0.insert.insert, ptr %i.br, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.gi = load i64, ptr %14, align 8, !tbaa !331
  %i.gj = load i64, ptr %i.bt, align 8, !tbaa !332
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.c, align 8, !tbaa !138
  %i.gl = call noundef nonnull align 1 dereferenceable(48) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN4llvm8minidump6ThreadEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.gl, ptr noundef nonnull align 4 dereferenceable(48) %16, i64 48, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %16, i64 noundef 48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.gm = load i8, ptr %i.bm, align 8, !tbaa !329, !range !334, !noundef !76
  %i.gn = trunc nuw i8 %i.gm to i1
  store i8 0, ptr %i.bm, align 8, !tbaa !329
  br i1 %i.gn, label %bb.ai, label %_ZN12lldb_private16MemoryRegionInfoD2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.go = load ptr, ptr %i.bu, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN12lldb_private16MemoryRegionInfoD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gp = load ptr, ptr %i.bv, align 8, !tbaa !338
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #18
  br label %_ZN12lldb_private16MemoryRegionInfoD2Ev.exit

_ZN12lldb_private16MemoryRegionInfoD2Ev.exit:     ; preds = %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12lldb_private16MemoryRegionInfoD2Ev.exit, %_ZN12lldb_private6StatusC2EOS0_.exit37
  %.0.i85 = phi i1 [ true, %_ZN12lldb_private16MemoryRegionInfoD2Ev.exit ], [ false, %_ZN12lldb_private6StatusC2EOS0_.exit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.gt = load ptr, ptr %i.ce, align 8, !tbaa !111 ; 8 uses
  %.not.i.i46 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i46, label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit50, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load atomic i64, ptr %i.gu acquire, align 8 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 4294967297
  %i.gx = trunc i64 %i.gv to i32                  ; 2 uses
  br i1 %i.gw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.gu, align 8, !tbaa !82
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gy, align 4, !tbaa !84
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #17, !inline_history !298
  %i.hc = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #17, !inline_history !298
  br label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit50

bb.an:                                            ; preds = %bb.al
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i47 = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i47, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hg = add nsw i32 %i.gx, -1
  store i32 %i.hg, ptr %i.gu, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48

bb.ap:                                            ; preds = %bb.an
  %i.hh = atomicrmw volatile add ptr %i.gu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i49 = phi i32 [ %i.gx, %bb.ao ], [ %i.hh, %bb.ap ]
  %i.hi = icmp eq i32 %.0.i.i.i.i49, 1
  br i1 %i.hi, label %bb.aq, label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit50, !prof !90

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit50

_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit50: ; preds = %bb.ak, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %.0.i85, label %bb.g, label %.loopexit

.critedge31:                                      ; preds = %bb.g, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %.not29 = icmp eq ptr %.0.i.i, null
  br i1 %.not29, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.critedge31
  %i.hj = call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.43, i64 97, ptr nonnull @__func__._ZN19MinidumpFileBuilder13AddThreadListEv, i64 13, ptr noundef nonnull @.str.45, i64 noundef %i.hj) #17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge31
  %i.hk = load ptr, ptr %8, align 8, !tbaa !85
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef ptr %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %8) #17, !inline_history !251
  %i.ho = call noundef i64 @_ZNK12lldb_private14DataBufferHeap11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @_ZN12lldb_private14DataBufferHeap10AppendDataEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef %i.hn, i64 noundef %i.ho) #17
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit50, %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as
  call void @_ZN12lldb_private14DataBufferHeapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.at

bb.at:                                            ; preds = %.loopexit, %_ZN12lldb_private6StatusC2EOS0_.exit
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hp = load ptr, ptr %4, align 8, !tbaa !122   ; 3 uses
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hp, %i.hq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ii, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i ], [ %i.hp, %bb.at ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !111 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  %i.hu = load atomic i64, ptr %i.ht acquire, align 8 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 4294967297
  %i.hw = trunc i64 %i.hu to i32                  ; 2 uses
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ht, align 8, !tbaa !82
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.hx, align 4, !tbaa !84
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !85
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #17, !inline_history !125
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !85
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #17, !inline_history !125
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.if = add nsw i32 %i.hw, -1
  store i32 %i.if, ptr %i.ht, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ig = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hw, %bb.ax ], [ %i.ig, %bb.ay ]
  %i.ih = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ih, label %bb.az, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i, !prof !90

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.av, %.lr.ph.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.ii, %i.hq
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !126

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !122
  br label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i, %bb.at
  %i.ij = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i ], [ %i.hp, %bb.at ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !127
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.io) #18
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

declare noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2
end_hunk_2
