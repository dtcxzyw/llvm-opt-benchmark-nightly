Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjectFileMachO?download=true
inline.NumInlined: 6159
inline.NumDeleted: 2923
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN15ObjectFileMachO24GetCorefileAllImageInfosEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZN15ObjectFileMachO23MachOCorefileImageEntryD2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0151.0205, i64 16 ; 2 uses
  %.not181 = icmp eq ptr %i.kn, %i.hg
  br i1 %.not181, label %.critedge54.loopexit, label %bb.aj

bb.az:                                            ; preds = %.thread
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kp = load ptr, ptr %i.ko, align 16, !tbaa !629
  br label %_ZN15ObjectFileMachO26MachOCorefileAllImageInfosD2Ev.exit.sink.split

_ZN15ObjectFileMachO26MachOCorefileAllImageInfosD2Ev.exit.sink.split: ; preds = %bb.ai, %bb.az
  %.sink309 = phi ptr [ %i.kp, %bb.az ], [ %i.ie, %bb.ai ]
  %.sink308 = phi ptr [ %i.au, %bb.az ], [ %i.id, %bb.ai ] ; 2 uses
  %i.kq = ptrtoint ptr %.sink309 to i64
  %i.kr = ptrtoint ptr %.sink308 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %.sink308, i64 noundef %i.ks) #30
  br label %_ZN15ObjectFileMachO26MachOCorefileAllImageInfosD2Ev.exit

_ZN15ObjectFileMachO26MachOCorefileAllImageInfosD2Ev.exit: ; preds = %_ZN15ObjectFileMachO26MachOCorefileAllImageInfosD2Ev.exit.sink.split, %.thread, %.critedge54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare noundef ptr @_ZNK12lldb_private13DataExtractor7GetCStrEPm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN15ObjectFileMachO18LoadCoreFileImagesERN12lldb_private7ProcessE(ptr noundef nonnull align 8 dereferenceable(465) %0, ptr noundef nonnull align 8 dereferenceable(3224) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.ObjectFileMachO::MachOCorefileAllImageInfos", align 8 ; 8 uses
  %3 = alloca %"class.lldb_private::Status", align 8 ; 4 uses
  %4 = alloca %"class.lldb_private::ModuleList", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.8", align 16 ; 11 uses
  %6 = alloca %"class.std::shared_ptr.8", align 16 ; 6 uses
  %7 = alloca %"class.lldb_private::UUID", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::tuple.989", align 8   ; 5 uses
  %11 = alloca %"class.std::shared_ptr.183", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN15ObjectFileMachO24GetCorefileAllImageInfosEv(ptr dead_on_unwind nonnull writable sret(%"struct.ObjectFileMachO::MachOCorefileAllImageInfos") align 8 %2, ptr noundef nonnull align 8 dereferenceable(465) %0)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #26
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #26
  %i.e = and i64 %i.d, 65792
  %.not6.i.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i.i, label %bb.c, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.c ], [ %i.c, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN12lldb_private10ModuleListC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #26
  %i.f = load ptr, ptr %2, align 8, !tbaa !1359   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1359 ; 2 uses
  %.not140146 = icmp eq ptr %i.f, %i.h
  br i1 %.not140146, label %._crit_edge, label %.lr.ph148

.lr.ph148:                                        ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %.0.i.i, null             ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.v = call noundef i64 @_ZNK12lldb_private10ModuleList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %4) #26
  %.not59 = icmp ne i64 %i.v, 0                   ; 2 uses
  br i1 %.not59, label %bb.br, label %bb.bz

bb.d:                                             ; preds = %.lr.ph148, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112
  %.sroa.0137.0147 = phi ptr [ %i.f, %.lr.ph148 ], [ %i.ij, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !129, !noalias !1360, !nonnull !125, !noundef !125 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 7 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 8, !noalias !1360
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.06.i.i.i.i.i.i = phi i32 [ %i.y, %bb.d ], [ %i.ac, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.z = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.aa = cmpxchg weak ptr %i.x, i32 %.06.i.i.i.i.i.i, i32 %i.z acq_rel monotonic, align 8, !noalias !1360 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  %i.ac = extractvalue { i32, i1 } %i.aa, 0
  br i1 %i.ab, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.e, !llvm.loop !3

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = load atomic i32, ptr %i.x monotonic, align 8, !noalias !1360
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !131, !noalias !1360
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.f, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.af = phi ptr [ %i.ae, %bb.f ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.ag = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !56
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !4
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !4
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.h:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i1.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.x, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ai, %bb.i ], [ %i.as, %bb.j ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.at, label %bb.k, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !63

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 656
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !401, !nonnull !125, !align !402
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 80 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !652
  %i.az = call noundef zeroext i1 @_ZN12lldb_private12PlatformList26LoadPlatformBinaryAndSetupEPNS_7ProcessEmb(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull %1, i64 noundef %i.ay, i1 noundef zeroext true) #26
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  br i1 %.not62, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !652
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.14, i64 91, ptr nonnull @__func__._ZN15ObjectFileMachO18LoadCoreFileImagesERN12lldb_private7ProcessE, i64 18, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__._ZN15ObjectFileMachO18LoadCoreFileImagesERN12lldb_private7ProcessE, i64 noundef %i.ba) #26
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.n:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !652 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, -1                   ; 6 uses
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !653
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bf = phi i64 [ %i.be, %bb.o ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  %or.cond = select i1 %i.bc, i1 %i.bg, i1 false
  %spec.store.select4 = select i1 %or.cond, i64 0, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 32 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 40 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !190 ; 5 uses
  %.not.i.i67.not = icmp eq i64 %i.bj, 0          ; 2 uses
  %i.bk = icmp eq i64 %spec.store.select4, -1
  %or.cond3.not = select i1 %i.bc, i1 true, i1 %i.bk
  %or.cond66 = select i1 %.not.i.i67.not, i1 %or.cond3.not, i1 false
  br i1 %or.cond66, label %bb.af, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !655
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !657
  %i.bp = icmp eq ptr %i.bn, %i.bo                ; 2 uses
  %.not149 = xor i1 %i.bp, true
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bq = load ptr, ptr %.sroa.0137.0147, align 8, !tbaa !133
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !134
  store ptr %i.k, ptr %7, align 8, !tbaa !189
  store i64 0, ptr %i.l, align 8, !tbaa !190
  store i64 20, ptr %i.m, align 8, !tbaa !191
  %i.bt = icmp eq ptr %7, %i.bh
  %or.cond.i.i = or i1 %i.bt, %.not.i.i67.not
  br i1 %or.cond.i.i, label %_ZN12lldb_private4UUIDC2ERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp ugt i64 %i.bj, 20
  br i1 %i.bu, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.r
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.k, i64 noundef %i.bj, i64 noundef 1) #26
  %.pre.i.i = load i64, ptr %i.bi, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i.i68 = icmp samesign eq i64 %.pre.i.i, 0
  br i1 %.not.i.i.i.i68, label %.sink.split.i.i.i, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !189
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.r
  %i.bv = phi ptr [ %.pre.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.k, %bb.r ]
  %i.bw = phi i64 [ %.pre.i.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.bj, %bb.r ]
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bx, i64 %i.bw, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i
  store i64 %i.bj, ptr %i.l, align 8, !tbaa !190
  br label %_ZN12lldb_private4UUIDC2ERKS0_.exit

_ZN12lldb_private4UUIDC2ERKS0_.exit:              ; preds = %bb.q, %.sink.split.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 96
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !654, !range !124, !noundef !125
  %i.ca = trunc nuw i8 %i.bz to i1
  call void @_ZN12lldb_private13DynamicLoader28LoadBinaryWithUUIDAndAddressEPNS_7ProcessEN4llvm9StringRefENS_4UUIDEmbbbbb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %6, ptr noundef nonnull %1, ptr %i.bq, i64 %i.bs, ptr nofree noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %spec.store.select4, i1 noundef zeroext %i.bc, i1 noundef zeroext %i.ca, i1 noundef zeroext false, i1 noundef zeroext %i.bp, i1 noundef zeroext %.not149) #26
  %i.cb = load <2 x ptr>, ptr %6, align 16, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !60  ; 8 uses
  store <2 x ptr> %i.cb, ptr %5, align 16, !tbaa !66
  %.not.i.i.i.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i69, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN12lldb_private4UUIDC2ERKS0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cd, align 8, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !56
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26, !inline_history !1352
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26, !inline_history !1352
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.v ], [ %i.cq, %bb.w ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.x, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exitthread-pre-split, !prof !63

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exitthread-pre-split

_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exitthread-pre-split: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  %.pr = load ptr, ptr %i.n, align 8, !tbaa !60
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exit

_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exitthread-pre-split, %_ZN12lldb_private4UUIDC2ERKS0_.exit
  %i.cs = phi ptr [ %.pr, %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exitthread-pre-split ], [ null, %_ZN12lldb_private4UUIDC2ERKS0_.exit ] ; 8 uses
  %.not.i.i70 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i70, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ct, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !56
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #26, !inline_history !12
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #26, !inline_history !12
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i71 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i71, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.cw, %bb.ab ], [ %i.dg, %bb.ac ]
  %i.dh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dh, label %bb.ad, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #26
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEaSEOS2_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  %i.di = load ptr, ptr %7, align 8, !tbaa !189   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.k
  br i1 %i.dj, label %_ZN12lldb_private4UUIDD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @free(ptr noundef %i.di) #26
  br label %_ZN12lldb_private4UUIDD2Ev.exit

_ZN12lldb_private4UUIDD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.p, %_ZN12lldb_private4UUIDD2Ev.exit
  %i.dk = load ptr, ptr %5, align 16, !tbaa !188
  %.not141 = icmp eq ptr %i.dk, null
  br i1 %.not141, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN12lldb_private10ModuleList6AppendERKSt10shared_ptrINS_6ModuleEEb(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 104 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0137.0147, i64 112 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !655 ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !657 ; 2 uses
  %.not = icmp eq ptr %i.dn, %i.do
  br i1 %.not, label %bb.bb, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not62, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZNK12lldb_private4UUID11GetAsStringB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr nonnull @.str.54, i64 1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.dp = load ptr, ptr %5, align 16, !tbaa !188
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i1 noundef zeroext true) #26
  %i.dr = load ptr, ptr %9, align 8, !tbaa !133
  %i.ds = load ptr, ptr %8, align 8, !tbaa !133
  call void (ptr, ptr, ...) @_ZN12lldb_private3Log6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr noundef nonnull @.str.91, ptr noundef %i.dr, ptr noundef %i.ds) #26
  %i.dt = load ptr, ptr %9, align 8, !tbaa !133   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.p
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.dv = load i64, ptr %i.p, align 8, !tbaa !61
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.dx = load ptr, ptr %8, align 8, !tbaa !133   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.q
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = load i64, ptr %i.q, align 8, !tbaa !61
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
end_hunk_0
