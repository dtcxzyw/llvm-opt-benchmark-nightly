Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ProcessMinidump?download=true
inline.NumInlined: 3393
inline.NumDeleted: 1865
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12lldb_private8minidump15ProcessMinidump17GetOrCreateModuleENS_4UUIDEN4llvm9StringRefENS_10ModuleSpecE:bb.a
bb.d:                                             ; preds = %bb.d, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %.06.i.i.i.i.i.i = phi i32 [ %i.i, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ], [ %i.m, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.j = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.k = cmpxchg weak ptr %i.h, i32 %.06.i.i.i.i.i.i, i32 %i.j acq_rel monotonic, align 8, !noalias !782 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  %i.m = extractvalue { i32, i1 } %i.k, 0
  br i1 %i.l, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.d, !llvm.loop !106

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load atomic i32, ptr %i.h monotonic, align 8, !noalias !782
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107, !noalias !782
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.r = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.h, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !36
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !110
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !110
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.g:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i1.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.h, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !48

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  call void @_ZN12lldb_private6Target17GetOrCreateModuleERKNS_10ModuleSpecEbPNS_6StatusE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.433") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2200) %i.q, ptr noundef nonnull align 8 dereferenceable(440) %5, i1 noundef zeroext true, ptr noundef nonnull %10) #23
  %i.af = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %.not132 = icmp eq ptr %i.af, null
  br i1 %.not132, label %_ZNSt6vectorIhSaIhEED2Ev.exit44, label %bb.k

bb.k:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.ag = load ptr, ptr %2, align 8, !tbaa !647   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !645 ; 7 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6Module7GetUUIDEv(ptr noundef nonnull align 8 dereferenceable(952) %i.af) #23 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !647
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !645 ; 2 uses
  %i.an = icmp eq i64 %i.ai, 0
  %i.ao = icmp eq i64 %i.am, 0
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i21.not = icmp ugt i64 %i.ai, %i.am
  br i1 %.not.i.i21.not, label %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit.thread, label %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit:         ; preds = %bb.l
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ak, ptr %i.ag, i64 %i.ai)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %.critedge, label %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit.thread

.critedge:                                        ; preds = %bb.k, %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit
  %.not18 = icmp eq ptr %.0.i.i, null
  br i1 %.not18, label %_ZNSt6vectorIhSaIhEED2Ev.exit44, label %bb.m

bb.m:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ap = ptrtoint ptr %9 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr @.str.10, ptr %8, align 8, !tbaa !68, !alias.scope !785
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 27, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113, !alias.scope !785
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !589, !alias.scope !785
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113, !alias.scope !785
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.as, align 8, !tbaa !591, !alias.scope !785
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !790, !alias.scope !785
  %i.au = ptrtoint ptr %i.at to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.aq, align 8, !alias.scope !785
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !12, !alias.scope !785
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.4, i64 90, ptr nonnull @__func__._ZN12lldb_private8minidump15ProcessMinidump17GetOrCreateModuleENS_4UUIDEN4llvm9StringRefENS_10ModuleSpecE, i64 17, ptr noundef nonnull align 8 dereferenceable(33) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit.thread:  ; preds = %bb.l, %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit
  %i.av = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null           ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i23 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !42
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit: ; preds = %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit.thread, %bb.o, %bb.p
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(952) %i.av) #23, !inline_history !792 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN12_GLOBAL__N_118HashElfTextSectionESt10shared_ptrIN12lldb_private6ModuleEERSt6vectorIhSaIhEES7_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK12lldb_private11SectionList17FindSectionByNameEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.900") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr nonnull @.str.26, i64 5) #23
  %i.bi = load ptr, ptr %6, align 8, !tbaa !793   ; 4 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.x, label %_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh.exit46.i

_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh.exit46.i: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !796 ; 3 uses
  %i.bl = icmp ne i64 %i.bk, 0                    ; 2 uses
  %.neg.i = sext i1 %i.bl to i64
  %i.bm = add i64 %i.bk, %.neg.i
  %i.bn = select i1 %i.bl, i64 16, i64 0
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -16
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 4096)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !808
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !809
  %i.bu = call noundef i64 @_ZNK12lldb_private10ObjectFile7GetDataEmmRSt10shared_ptrINS_13DataExtractorEE(ptr noundef nonnull align 8 dereferenceable(200) %i.br, i64 noundef %i.bt, i64 noundef %.sroa.speculated.i, ptr noundef nonnull align 8 dereferenceable(16) %7) #23 ; 0 uses
  %i.bv = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 25 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bx = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 24 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = urem i64 %i.bk, 255
  %i.ca = trunc nuw i64 %i.bz to i8               ; 50 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 3 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 5 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 6 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 7 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 9 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 10 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 11 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 12 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 13 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 14 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 15 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bx, i8 %i.ca, i64 16, i1 false)
  %i.cq = load ptr, ptr %7, align 8, !tbaa !810   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !811 ; 33 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !813 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64              ; 2 uses
  %i.cx = icmp ult ptr %i.cs, %i.cv
  br i1 %i.cx, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh.exit46.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 3 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 5 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 6 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 7 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 9 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 10 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 11 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 12 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 13 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 14 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 15 ; 3 uses
  %i.dn = load <16 x i8>, ptr %i.bv, align 1, !tbaa !12 ; 33 uses
  %i.do = xor i64 %i.ct, -1
  %i.dp = add i64 %i.do, %i.cw                    ; 3 uses
  %i.dq = lshr i64 %i.dp, 4
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.dp, 112
  %i.ds = extractelement <16 x i8> %i.dn, i64 0   ; 2 uses
  %i.dt = extractelement <16 x i8> %i.dn, i64 1   ; 2 uses
  %i.du = extractelement <16 x i8> %i.dn, i64 2   ; 2 uses
  %i.dv = extractelement <16 x i8> %i.dn, i64 3   ; 2 uses
  %i.dw = extractelement <16 x i8> %i.dn, i64 4   ; 2 uses
  %i.dx = extractelement <16 x i8> %i.dn, i64 5   ; 2 uses
  %i.dy = extractelement <16 x i8> %i.dn, i64 6   ; 2 uses
  %i.dz = extractelement <16 x i8> %i.dn, i64 7   ; 2 uses
  %i.ea = extractelement <16 x i8> %i.dn, i64 8   ; 2 uses
  %i.eb = extractelement <16 x i8> %i.dn, i64 9   ; 2 uses
  %i.ec = extractelement <16 x i8> %i.dn, i64 10  ; 2 uses
  %i.ed = extractelement <16 x i8> %i.dn, i64 11  ; 2 uses
  %i.ee = extractelement <16 x i8> %i.dn, i64 12  ; 2 uses
  %i.ef = extractelement <16 x i8> %i.dn, i64 13  ; 2 uses
  %i.eg = extractelement <16 x i8> %i.dn, i64 14  ; 2 uses
  %i.eh = extractelement <16 x i8> %i.dn, i64 15  ; 2 uses
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %scevgep174 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ei = xor i64 %i.ct, -1
  %i.ej = add i64 %i.ei, %i.cw
  %i.ek = and i64 %i.ej, -16
  %i.el = getelementptr i8, ptr %i.cs, i64 %i.ek
  %scevgep175 = getelementptr i8, ptr %i.el, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %i.bv, %scevgep174
  %bound1 = icmp ult ptr %i.bx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0176 = icmp ult ptr %i.bv, %scevgep175
  %bound1177 = icmp ult ptr %i.cs, %scevgep
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx = or i1 %found.conflict, %found.conflict178
  %bound0179 = icmp ult ptr %i.bx, %scevgep175
  %bound1180 = icmp ult ptr %i.cs, %scevgep174
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx, %found.conflict181
  br i1 %conflict.rdx182, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check184 = icmp ult i64 %i.dp, 240
  br i1 %min.iters.check184, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.em = and i64 %i.dr, 8
  %n.vec = and i64 %i.dr, 2305843009213693936     ; 4 uses
  %i.en = shl i64 %n.vec, 4
  %i.eo = getelementptr i8, ptr %i.cs, i64 %i.en
  %i.ep = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.ca, i64 0 ; 16 uses
  %i.eq = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 31, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 30, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 29, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 28, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eu = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 27, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 26, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ew = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 25, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ex = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 24, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 23, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ez = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 22, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fa = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 21, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fb = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 20, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fc = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fd = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = shufflevector <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dn, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ff = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.bdr, %vector.body ]
  %vec.phi185.a = phi <16 x i8> [ %i.eq, %vector.ph ], [ %i.bck, %vector.body ]
  %vec.phi186.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.ban, %vector.body ]
  %vec.phi187.a = phi <16 x i8> [ %i.er, %vector.ph ], [ %i.azg, %vector.body ]
  %vec.phi188.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.axj, %vector.body ]
  %vec.phi189.a = phi <16 x i8> [ %i.es, %vector.ph ], [ %i.awc, %vector.body ]
  %vec.phi190.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.auf, %vector.body ]
  %vec.phi191.a = phi <16 x i8> [ %i.et, %vector.ph ], [ %i.asy, %vector.body ]
  %vec.phi192.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.arb, %vector.body ]
  %vec.phi193.a = phi <16 x i8> [ %i.eu, %vector.ph ], [ %i.apu, %vector.body ]
  %vec.phi194.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.anx, %vector.body ]
  %vec.phi195.a = phi <16 x i8> [ %i.ev, %vector.ph ], [ %i.amq, %vector.body ]
  %vec.phi196.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.akt, %vector.body ]
  %vec.phi197.a = phi <16 x i8> [ %i.ew, %vector.ph ], [ %i.ajm, %vector.body ]
  %vec.phi198.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.ahp, %vector.body ]
  %vec.phi199.a = phi <16 x i8> [ %i.ex, %vector.ph ], [ %i.agi, %vector.body ]
  %vec.phi200.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.ael, %vector.body ]
  %vec.phi201.a = phi <16 x i8> [ %i.ey, %vector.ph ], [ %i.ade, %vector.body ]
  %vec.phi202.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.abh, %vector.body ]
  %vec.phi203.a = phi <16 x i8> [ %i.ez, %vector.ph ], [ %i.aaa, %vector.body ]
  %vec.phi204.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.yd, %vector.body ]
  %vec.phi205.a = phi <16 x i8> [ %i.fa, %vector.ph ], [ %i.ww, %vector.body ]
  %vec.phi206.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.uz, %vector.body ]
  %vec.phi207.a = phi <16 x i8> [ %i.fb, %vector.ph ], [ %i.ts, %vector.body ]
  %vec.phi208.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.rv, %vector.body ]
  %vec.phi209.a = phi <16 x i8> [ %i.fc, %vector.ph ], [ %i.qo, %vector.body ]
  %vec.phi210.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.or, %vector.body ]
  %vec.phi211.a = phi <16 x i8> [ %i.fd, %vector.ph ], [ %i.nk, %vector.body ]
  %vec.phi212.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.ln, %vector.body ]
  %vec.phi213.a = phi <16 x i8> [ %i.fe, %vector.ph ], [ %i.kg, %vector.body ]
  %vec.phi214.a = phi <16 x i8> [ %i.ep, %vector.ph ], [ %i.ij, %vector.body ]
  %vec.phi215 = phi <16 x i8> [ %i.ff, %vector.ph ], [ %i.hc, %vector.body ]
  %i.fg = shl i64 %index, 4                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.fg ; 17 uses
  %i.fh = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep216.a = getelementptr i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep217.a = getelementptr i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep218.a = getelementptr i8, ptr %i.fj, i64 48 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep219.a = getelementptr i8, ptr %i.fk, i64 64 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep220.a = getelementptr i8, ptr %i.fl, i64 80 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep221.a = getelementptr i8, ptr %i.fm, i64 96 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep222.a = getelementptr i8, ptr %i.fn, i64 112 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep223.a = getelementptr i8, ptr %i.fo, i64 128 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep224.a = getelementptr i8, ptr %i.fp, i64 144 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep225.a = getelementptr i8, ptr %i.fq, i64 160 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep226.a = getelementptr i8, ptr %i.fr, i64 176 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep227.a = getelementptr i8, ptr %i.fs, i64 192 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep228.a = getelementptr i8, ptr %i.ft, i64 208 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep229.a = getelementptr i8, ptr %i.fu, i64 224 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.cs, i64 %i.fg  ; 16 uses
  %next.gep230 = getelementptr i8, ptr %i.fv, i64 240 ; 2 uses
  %i.fw = load i8, ptr %next.gep, align 1, !tbaa !12, !alias.scope !814
  %i.fx = load i8, ptr %next.gep216.a, align 1, !tbaa !12, !alias.scope !814
  %i.fy = load i8, ptr %next.gep217.a, align 1, !tbaa !12, !alias.scope !814
  %i.fz = load i8, ptr %next.gep218.a, align 1, !tbaa !12, !alias.scope !814
  %i.ga = load i8, ptr %next.gep219.a, align 1, !tbaa !12, !alias.scope !814
  %i.gb = load i8, ptr %next.gep220.a, align 1, !tbaa !12, !alias.scope !814
  %i.gc = load i8, ptr %next.gep221.a, align 1, !tbaa !12, !alias.scope !814
  %i.gd = load i8, ptr %next.gep222.a, align 1, !tbaa !12, !alias.scope !814
  %i.ge = load i8, ptr %next.gep223.a, align 1, !tbaa !12, !alias.scope !814
  %i.gf = load i8, ptr %next.gep224.a, align 1, !tbaa !12, !alias.scope !814
  %i.gg = load i8, ptr %next.gep225.a, align 1, !tbaa !12, !alias.scope !814
  %i.gh = load i8, ptr %next.gep226.a, align 1, !tbaa !12, !alias.scope !814
  %i.gi = load i8, ptr %next.gep227.a, align 1, !tbaa !12, !alias.scope !814
  %i.gj = load i8, ptr %next.gep228.a, align 1, !tbaa !12, !alias.scope !814
  %i.gk = load i8, ptr %next.gep229.a, align 1, !tbaa !12, !alias.scope !814
  %i.gl = load i8, ptr %next.gep230, align 1, !tbaa !12, !alias.scope !814
  %i.gm = insertelement <16 x i8> poison, i8 %i.fw, i64 0
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 1
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 2
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 3
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 4
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 5
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 6
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 7
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 8
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 9
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 10
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 11
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 12
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 13
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 14
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 15
  %i.hc = xor <16 x i8> %vec.phi215, %i.hb        ; 2 uses
  %i.hd = load i8, ptr %next.gep, align 1, !tbaa !12, !alias.scope !814
  %i.he = load i8, ptr %next.gep216.a, align 1, !tbaa !12, !alias.scope !814
  %i.hf = load i8, ptr %next.gep217.a, align 1, !tbaa !12, !alias.scope !814
  %i.hg = load i8, ptr %next.gep218.a, align 1, !tbaa !12, !alias.scope !814
  %i.hh = load i8, ptr %next.gep219.a, align 1, !tbaa !12, !alias.scope !814
  %i.hi = load i8, ptr %next.gep220.a, align 1, !tbaa !12, !alias.scope !814
  %i.hj = load i8, ptr %next.gep221.a, align 1, !tbaa !12, !alias.scope !814
  %i.hk = load i8, ptr %next.gep222.a, align 1, !tbaa !12, !alias.scope !814
  %i.hl = load i8, ptr %next.gep223.a, align 1, !tbaa !12, !alias.scope !814
  %i.hm = load i8, ptr %next.gep224.a, align 1, !tbaa !12, !alias.scope !814
  %i.hn = load i8, ptr %next.gep225.a, align 1, !tbaa !12, !alias.scope !814
  %i.ho = load i8, ptr %next.gep226.a, align 1, !tbaa !12, !alias.scope !814
  %i.hp = load i8, ptr %next.gep227.a, align 1, !tbaa !12, !alias.scope !814
  %i.hq = load i8, ptr %next.gep228.a, align 1, !tbaa !12, !alias.scope !814
  %i.hr = load i8, ptr %next.gep229.a, align 1, !tbaa !12, !alias.scope !814
  %i.hs = load i8, ptr %next.gep230, align 1, !tbaa !12, !alias.scope !814
  %i.ht = insertelement <16 x i8> poison, i8 %i.hd, i64 0
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 1
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 2
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 3
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 4
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 5
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 6
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 7
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 8
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 9
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 10
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 11
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 12
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 13
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 14
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 15
  %i.ij = xor <16 x i8> %vec.phi214.a, %i.ii      ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %next.gep, i64 1 ; 2 uses
  %i.il = getelementptr i8, ptr %i.fh, i64 17     ; 2 uses
  %i.im = getelementptr i8, ptr %i.fi, i64 33     ; 2 uses
  %i.in = getelementptr i8, ptr %i.fj, i64 49     ; 2 uses
  %i.io = getelementptr i8, ptr %i.fk, i64 65     ; 2 uses
  %i.ip = getelementptr i8, ptr %i.fl, i64 81     ; 2 uses
  %i.iq = getelementptr i8, ptr %i.fm, i64 97     ; 2 uses
  %i.ir = getelementptr i8, ptr %i.fn, i64 113    ; 2 uses
  %i.is = getelementptr i8, ptr %i.fo, i64 129    ; 2 uses
  %i.it = getelementptr i8, ptr %i.fp, i64 145    ; 2 uses
  %i.iu = getelementptr i8, ptr %i.fq, i64 161    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.fr, i64 177    ; 2 uses
  %i.iw = getelementptr i8, ptr %i.fs, i64 193    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ft, i64 209    ; 2 uses
  %i.iy = getelementptr i8, ptr %i.fu, i64 225    ; 2 uses
  %i.iz = getelementptr i8, ptr %i.fv, i64 241    ; 2 uses
  %i.ja = load i8, ptr %i.ik, align 1, !tbaa !12, !alias.scope !814
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !12, !alias.scope !814
  %i.jc = load i8, ptr %i.im, align 1, !tbaa !12, !alias.scope !814
  %i.jd = load i8, ptr %i.in, align 1, !tbaa !12, !alias.scope !814
  %i.je = load i8, ptr %i.io, align 1, !tbaa !12, !alias.scope !814
  %i.jf = load i8, ptr %i.ip, align 1, !tbaa !12, !alias.scope !814
  %i.jg = load i8, ptr %i.iq, align 1, !tbaa !12, !alias.scope !814
  %i.jh = load i8, ptr %i.ir, align 1, !tbaa !12, !alias.scope !814
end_hunk_0
