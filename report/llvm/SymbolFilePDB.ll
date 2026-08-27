Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolFilePDB?download=true
inline.NumInlined: 5584
inline.NumDeleted: 2944
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13SymbolFilePDB13ParseLanguageERN12lldb_private11CompileUnitE:bb.a
_ZNKSt14default_deleteIN4llvm3pdb25PDBSymbolCompilandDetailsEEclEPS2_.exit.i: ; preds = %bb.f, %switch.lookup
  %.0.ph = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.f ]
  %i.av = load ptr, ptr %.sroa.0.0, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0) #26, !inline_history !294
  br label %_ZNKSt14default_deleteIN4llvm3pdb18PDBSymbolCompilandEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3pdb18PDBSymbolCompilandEEclEPS2_.exit.i: ; preds = %bb.d, %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_25PDBSymbolCompilandDetailsEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit, %_ZNKSt14default_deleteIN4llvm3pdb25PDBSymbolCompilandDetailsEEclEPS2_.exit.i
  %.1.ph = phi i32 [ 0, %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_25PDBSymbolCompilandDetailsEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit ], [ %.0.ph, %_ZNKSt14default_deleteIN4llvm3pdb25PDBSymbolCompilandDetailsEEclEPS2_.exit.i ], [ 0, %bb.d ]
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.q) #26, !inline_history !178
  br label %_ZNSt10unique_ptrIN4llvm3pdb18PDBSymbolCompilandESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb18PDBSymbolCompilandESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN13SymbolFilePDB20GetPDBCompilandByUIDEj.exit, %_ZN13SymbolFilePDB20GetPDBCompilandByUIDEj.exit.thread, %_ZNKSt14default_deleteIN4llvm3pdb18PDBSymbolCompilandEEclEPS2_.exit.i
  %.129 = phi i32 [ %.1.ph, %_ZNKSt14default_deleteIN4llvm3pdb18PDBSymbolCompilandEEclEPS2_.exit.i ], [ 0, %_ZN13SymbolFilePDB20GetPDBCompilandByUIDEj.exit.thread ], [ 0, %_ZN13SymbolFilePDB20GetPDBCompilandByUIDEj.exit ]
  %i.bb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #26 ; 0 uses
  ret i32 %.129
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN13SymbolFilePDB34ParseCompileUnitFunctionForPDBFuncERKN4llvm3pdb13PDBSymbolFuncERN12lldb_private11CompileUnitE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(196) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::Address", align 16 ; 6 uses
  %4 = alloca %"class.lldb_private::AddressRanges", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.1051, align 1           ; 3 uses
  %8 = alloca %"class.std::shared_ptr.388", align 8 ; 5 uses
  %9 = alloca %"class.lldb_private::Address", align 16 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.164", align 8 ; 5 uses
  %11 = alloca %"class.lldb_private::Mangled", align 8 ; 5 uses
  %12 = alloca %"class.std::shared_ptr.388", align 8 ; 6 uses
  %13 = alloca [1 x %"class.lldb_private::AddressRange"], align 16 ; 7 uses
  %14 = alloca %"class.llvm::Expected", align 8   ; 10 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.a = tail call noundef i32 @_ZNK4llvm3pdb9PDBSymbol13getSymIndexIdEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.b = zext i32 %i.a to i64
  call void @_ZN12lldb_private11CompileUnit17FindFunctionByUIDEm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.388") align 8 %8, ptr noundef nonnull align 8 dereferenceable(196) %2, i64 noundef %i.b) #26
  %i.c = load ptr, ptr %8, align 8, !tbaa !326    ; 2 uses
  %.not95 = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !17
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !329
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !329
  br label %_ZNSt12__shared_ptrIN12lldb_private8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZNSt12__shared_ptrIN12lldb_private8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.not95, label %bb.h, label %bb.bj

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !146  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 768
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #26, !inline_history !330 ; 2 uses
  %i.aa = add i64 %i.z, 1
  %or.cond = icmp ult i64 %i.aa, 2
  br i1 %or.cond, label %bb.bj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !146 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 752
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #26, !inline_history !331
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ag = load ptr, ptr %0, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(104) %0) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @_ZNK12lldb_private11ModuleChild9GetModuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.164") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26
  %i.al = load ptr, ptr %10, align 8, !tbaa !116  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(952) %i.al) #26
  call void @_ZN12lldb_private7AddressC1EmPKNS_11SectionListE(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.z, ptr noundef %i.ap) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.as, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !17
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #26, !inline_history !119
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #26, !inline_history !119
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i36 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

bb.n:                                             ; preds = %bb.l
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i38 = phi i32 [ %i.av, %bb.m ], [ %i.bf, %bb.n ]
  %i.bg = icmp eq i32 %.0.i.i.i.i38, 1
  br i1 %i.bg, label %bb.o, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #26
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 16, !tbaa !332
  %.not96 = icmp eq i64 %i.bi, -1
  br i1 %.not96, label %bb.be, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = call noundef i32 @_ZNK4llvm3pdb9PDBSymbol13getSymIndexIdEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %0, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 noundef %i.bk) #26 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %bb.be, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !146 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 592
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #26, !inline_history !337
  %16 = zext i32 %i.bt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_ZN13SymbolFilePDB20GetMangledForPDBFuncERKN4llvm3pdb13PDBSymbolFuncE(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Mangled") align 8 %11, ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bu = call noundef i32 @_ZNK4llvm3pdb9PDBSymbol13getSymIndexIdEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @_ZN12lldb_private12AddressRangeC1ERKNS_7AddressEm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.af) #26
  %i.bv = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !139 ; 2 uses
  %i.bz = load <2 x ptr>, ptr %13, align 16, !tbaa !28
  store <2 x ptr> %i.bz, ptr %i.bv, align 8, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 12 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !22
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !22
  br label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ce = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ch = load <2 x i64>, ptr %i.cg, align 16, !tbaa !40
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !40
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cj = call noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #28, !noalias !341 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 1, ptr %i.ck, align 8, !tbaa !15, !noalias !338
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 1, ptr %i.cl, align 4, !tbaa !17, !noalias !338
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private8FunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cj, align 8, !tbaa !18, !noalias !338
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cn = zext i32 %i.bu to i64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139, !noalias !338 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %9, align 16, !tbaa !28, !noalias !338
  store <2 x ptr> %i.cr, ptr %3, align 16, !tbaa !28, !noalias !338
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i, label %_ZN12lldb_private7AddressC2ERKS0_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 3 uses
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !338
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !22, !noalias !338
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !22, !noalias !338
  br label %_ZN12lldb_private7AddressC2ERKS0_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cw = atomicrmw volatile add ptr %i.cs, i32 1 acq_rel, align 4, !noalias !338 ; 0 uses
  br label %_ZN12lldb_private7AddressC2ERKS0_.exit.i

_ZN12lldb_private7AddressC2ERKS0_.exit.i:         ; preds = %bb.v, %bb.u, %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cy = load i64, ptr %i.bh, align 16, !tbaa !332, !noalias !338
  store i64 %i.cy, ptr %i.cx, align 16, !tbaa !332, !noalias !338
  store ptr %i.bv, ptr %4, align 8, !tbaa !344, !noalias !338
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.cz, align 8, !tbaa !347, !noalias !338
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.da, align 8, !tbaa !348, !noalias !338
  call void @_ZN12lldb_private8FunctionC1EPNS_11CompileUnitEmmRKNS_7MangledEPNS_4TypeENS_7AddressENS_13AddressRangesE(ptr noundef nonnull align 8 dereferenceable(336) %i.cm, ptr noundef nonnull %2, i64 noundef %i.cn, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %i.bo, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4) #26, !noalias !338
  %i.db = load ptr, ptr %4, align 8, !tbaa !344, !noalias !338 ; 3 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !347, !noalias !338 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12lldb_private7AddressC2ERKS0_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %i.db, %_ZN12lldb_private7AddressC2ERKS0_.exit.i ] ; 2 uses
  call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.05.i.i.i.i) #26, !noalias !338
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.dd, %i.dc
  br i1 %.not.i.i.i.i65, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !349

_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !344, !noalias !338
  br label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split.i.i, %_ZN12lldb_private7AddressC2ERKS0_.exit.i
  %i.de = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split.i.i ], [ %i.db, %_ZN12lldb_private7AddressC2ERKS0_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !348, !noalias !338
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #27, !noalias !338
  br label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit.i: ; preds = %bb.w, %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i
  %i.dj = load ptr, ptr %i.co, align 8, !tbaa !139, !noalias !338 ; 4 uses
  %.not.i.i.i8.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i8.i, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12 ; 3 uses
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !338
  %.not.i.i.i.i9.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i9.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !22, !noalias !338 ; 2 uses
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !22, !noalias !338
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4, !noalias !338
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.dm, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !18, !noalias !338
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !338
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #26, !noalias !338, !inline_history !350
  br label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !14, !alias.scope !338
  store ptr %i.cm, ptr %12, align 8, !tbaa !351, !alias.scope !338
  call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN12lldb_private11CompileUnit11AddFunctionERSt10shared_ptrINS_8FunctionEE(ptr noundef nonnull align 8 dereferenceable(196) %2, ptr noundef nonnull align 8 dereferenceable(16) %12) #26
  %i.dt = load ptr, ptr %0, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(196) %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dx = load ptr, ptr %0, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 392
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %14, ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %i.dw) #26
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !noalias !352
  %i.ec = trunc i8 %i.eb to i1
  br i1 %i.ec, label %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit, label %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit.thread

_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit.thread: ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit
  %.pr = load ptr, ptr %14, align 8, !tbaa !355
  br label %_ZN4llvm5ErrorD2Ev.exit44

_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit: ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit
  %i.ed = load i64, ptr %14, align 8, !tbaa !358, !noalias !352 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  store ptr null, ptr %14, align 8, !tbaa !358, !noalias !352
  %.not97 = icmp eq i64 %i.ed, 0
  br i1 %.not97, label %_ZN4llvm5ErrorD2Ev.exit44, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit
  %i.ef = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #26
  %i.eg = load atomic ptr, ptr %i.ef monotonic, align 8 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i40, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.eg) #26
  %i.ei = and i64 %i.eh, 8388608
  %.not6.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread87

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.ac, %bb.ab
  %i.ej = call noundef ptr @_ZN12lldb_private15GetLLDBErrorLogEv() #26 ; 2 uses
  %.not33 = icmp eq ptr %i.ej, null
  br i1 %.not33, label %bb.ae, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread87

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread87: ; preds = %bb.ac, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %.090 = phi ptr [ %i.ej, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ], [ %i.eg, %bb.ac ]
  store ptr %i.ee, ptr %15, align 8, !tbaa !120
  call void @_ZN12lldb_private3Log11FormatErrorIJEEEvN4llvm5ErrorENS2_9StringRefES4_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.090, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr nonnull @.str.7, i64 86, ptr nonnull @__func__._ZN13SymbolFilePDB34ParseCompileUnitFunctionForPDBFuncERKN4llvm3pdb13PDBSymbolFuncERN12lldb_private11CompileUnitE, i64 34, ptr noundef nonnull @.str.8)
  %i.ek = load ptr, ptr %15, align 8, !tbaa !120  ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNSt12__shared_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread87
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek) #26, !inline_history !130
  br label %_ZNSt12__shared_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.ee, ptr %6, align 8, !tbaa !120
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %i.ep = load ptr, ptr %6, align 8, !tbaa !120   ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN4llvm5ErrorD2Ev.exit42, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #26, !inline_history !123
  br label %_ZN4llvm5ErrorD2Ev.exit42

_ZN4llvm5ErrorD2Ev.exit42:                        ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt12__shared_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZN4llvm5ErrorD2Ev.exit44:                        ; preds = %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit.thread, %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit
  %i.eu = phi ptr [ %.pr, %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit.thread ], [ null, %_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEE9takeErrorEv.exit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !14 ; 9 uses
end_hunk_0
