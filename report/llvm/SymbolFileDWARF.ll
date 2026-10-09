Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolFileDWARF?download=true
inline.NumInlined: 10314
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZZN12lldb_private6plugin5dwarf15SymbolFileDWARF16ParseVariableDIEERKNS_13SymbolContextERKNS1_8DWARFDIEEmENK3$_1clEv":bb.a

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit19.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99, !noalias !1686
  %.not.i.i.i.i18.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i18.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !100, !noalias !1686
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !100, !noalias !1686
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit19.i

bb.v:                                             ; preds = %bb.t
  %i.bu = atomicrmw volatile add ptr %i.bq, i32 1 acq_rel, align 4, !noalias !1686 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit19.i

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit19.i: ; preds = %bb.v, %bb.u, %bb.s
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %17) #27, !noalias !1686
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !230, !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1686
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %0, align 8, !tbaa !237, !alias.scope !1686
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bx, align 8, !tbaa !234, !alias.scope !1686
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !235, !alias.scope !1686
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.bz, align 8, !tbaa !226, !alias.scope !1686
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.ca, align 8, !tbaa !224, !alias.scope !1686
  br i1 %.not.i.i.i, label %_ZN12lldb_private19DWARFExpressionListC2ESt10shared_ptrINS_6ModuleEENS_15DWARFExpressionEPKNS4_8DelegateE.exit22.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit19.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 3 uses
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99, !noalias !1686
  %.not.i.i.i.i.i21.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i21.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !100
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !100
  br label %_ZN12lldb_private19DWARFExpressionListC2ESt10shared_ptrINS_6ModuleEENS_15DWARFExpressionEPKNS4_8DelegateE.exit22.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.cb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private19DWARFExpressionListC2ESt10shared_ptrINS_6ModuleEENS_15DWARFExpressionEPKNS4_8DelegateE.exit22.i

_ZN12lldb_private19DWARFExpressionListC2ESt10shared_ptrINS_6ModuleEENS_15DWARFExpressionEPKNS4_8DelegateE.exit22.i: ; preds = %bb.y, %bb.x, %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit19.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bv, ptr %i.cg, align 8, !tbaa !690, !alias.scope !1686
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 -1, ptr %i.ch, align 8, !tbaa !691, !alias.scope !1686
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(56) %17) #27
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !694, !noalias !1686
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !694, !noalias !1686
  %i.cl = call noundef zeroext i1 @_ZN12lldb_private19DWARFExpressionList13AddExpressionEmmNS_15DWARFExpressionE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0, i64 noundef -1, ptr nofree noundef nonnull align 8 dereferenceable(56) %13) #27 ; 0 uses
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1686
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #27
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i, label %bb.z

bb.z:                                             ; preds = %_ZN12lldb_private19DWARFExpressionListC2ESt10shared_ptrINS_6ModuleEENS_15DWARFExpressionEPKNS4_8DelegateE.exit22.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cm, align 8, !tbaa !97
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !98
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !1672
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !1672
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i

bb.ab:                                            ; preds = %bb.z
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99, !noalias !1686
  %.not.i.i.i24.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i24.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25.i

bb.ad:                                            ; preds = %bb.ab
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i26.i = phi i32 [ %i.cp, %bb.ac ], [ %i.cz, %bb.ad ]
  %i.da = icmp eq i32 %.0.i.i.i.i26.i, 1
  br i1 %i.da, label %bb.ae, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i, !prof !101

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25.i, %bb.aa, %_ZN12lldb_private19DWARFExpressionListC2ESt10shared_ptrINS_6ModuleEENS_15DWARFExpressionEPKNS4_8DelegateE.exit22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27, !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27, !noalias !1686
  %i.db = load ptr, ptr %i.p, align 8, !tbaa !230, !noalias !1686
  call void @_ZNK12lldb_private6plugin5dwarf9DWARFUnit15GetLocationDataEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::DWARFDataExtractor") align 8 %19, ptr noundef nonnull align 8 dereferenceable(864) %i.db) #27
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12lldb_private13DataExtractorE, i64 16), ptr %18, align 8, !tbaa !83, !noalias !1686
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !1686
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.di = load <2 x ptr>, ptr %i.df, align 8, !tbaa !106, !noalias !1686
  store ptr null, ptr %i.dh, align 8, !tbaa !95, !noalias !1686
  store <2 x ptr> %i.di, ptr %i.de, align 8, !tbaa !106, !noalias !1686
  store ptr null, ptr %i.df, align 8, !tbaa !1687, !noalias !1686
  call void @_ZN12lldb_private13DataExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !1686
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !99, !noalias !1686 ; 2 uses
  %i.dl = load i16, ptr %i.t, align 8, !tbaa !680, !noalias !1686
  %i.dm = icmp eq i16 %i.dl, 34
  br i1 %i.dm, label %bb.af, label %_ZN12lldb_private6plugin5dwarf9DWARFUnit16GetLoclistOffsetEj.exit.i

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !230, !noalias !1686 ; 6 uses
  %i.do = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 792
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !1688, !range !312, !noundef !313
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ag, label %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !499, !nonnull !313, !align !425
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 152
  %i.dv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6plugin5dwarf12DWARFContext21getOrLoadLocListsDataEv(ptr noundef nonnull align 8 dereferenceable(920) %i.du) #27 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !83, !noalias !1689
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !1689
  %i.dz = call { ptr, i64 } %i.dy(ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #27, !noalias !1689, !inline_history !1675 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 740
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !1692
  %.not.i.i28.i = icmp ugt i32 %i.eb, %i.do
  br i1 %.not.i.i28.i, label %bb.ah, label %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !359, !noalias !1689
  %i.ee = icmp eq i32 %i.ed, 4
  %i.ef = zext i1 %i.ee to i8
  %i.eg = extractvalue { ptr, i64 } %i.dz, 1
  %i.eh = extractvalue { ptr, i64 } %i.dz, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !1686
  store ptr %i.eh, ptr %12, align 8, !noalias !1686
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.eg, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1686
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 %i.ef, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1686
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 752
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1693
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 744
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !1694 ; 2 uses
  %i.em = icmp eq i8 %i.el, 0
  %..i.i.i.i = select i1 %i.em, i64 12, i64 20
  %i.en = add i64 %..i.i.i.i, %i.ej
  %i.eo = icmp eq i8 %i.el, 1                     ; 2 uses
  %i.ep = select i1 %i.eo, i32 8, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !1686
  %i.eq = select i1 %i.eo, i32 3, i32 2
  %i.er = shl i32 %i.do, %i.eq
  %i.es = zext i32 %i.er to i64
  %i.et = add i64 %i.en, %i.es
  store i64 %i.et, ptr %i.a, align 8, !tbaa !241, !noalias !1686
  %i.eu = call noundef i64 @_ZNK4llvm13DataExtractor11getUnsignedEPmjPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull %i.a, i32 noundef %i.ep, ptr noundef null) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !1686
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dn, i64 512
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1695
  %i.ex = add i64 %i.ew, %i.eu
  br label %_ZN12lldb_private6plugin5dwarf9DWARFUnit16GetLoclistOffsetEj.exit.i

_ZN12lldb_private6plugin5dwarf9DWARFUnit16GetLoclistOffsetEj.exit.i: ; preds = %bb.ah, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i
  %.0.i = phi i64 [ %i.dk, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27.i ], [ %i.ex, %bb.ah ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !315, !noalias !1686
  %i.fa = load ptr, ptr %i.dc, align 8, !tbaa !316, !noalias !1686
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 2 uses
  %i.fe = icmp ult i64 %.0.i, %i.fd
  br i1 %i.fe, label %bb.ai, label %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit

bb.ai:                                            ; preds = %_ZN12lldb_private6plugin5dwarf9DWARFUnit16GetLoclistOffsetEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27, !noalias !1686
  %i.ff = sub nuw i64 %i.fd, %.0.i
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_mm(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %18, i64 noundef %.0.i, i64 noundef %i.ff) #27
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !noalias !1686
  %i.fh = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %i.fh, align 8, !tbaa !106, !noalias !1686
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i8 0, i64 16, i1 false), !noalias !1686
  %i.fj = load ptr, ptr %i.dg, align 8, !tbaa !95, !noalias !1686 ; 8 uses
  store <2 x ptr> %i.fi, ptr %i.de, align 8, !tbaa !106, !noalias !1686
  %.not.i.i.i.i.i29.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i29.i, label %_ZN12lldb_private13DataExtractoraSEOS0_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fk, align 8, !tbaa !97
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !98
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !83
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27, !inline_history !1676
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27, !inline_history !1676
  br label %_ZN12lldb_private13DataExtractoraSEOS0_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99, !noalias !1686
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fn, %bb.am ], [ %i.fx, %bb.an ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fy, label %bb.ao, label %_ZN12lldb_private13DataExtractoraSEOS0_.exit.i, !prof !101

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27
  br label %_ZN12lldb_private13DataExtractoraSEOS0_.exit.i

_ZN12lldb_private13DataExtractoraSEOS0_.exit.i:   ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ak, %bb.ai
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27, !noalias !1686
  %i.fz = load ptr, ptr %21, align 8, !tbaa !679, !noalias !1686
  %i.ga = call noundef zeroext i1 @_ZNK12lldb_private6plugin5dwarf9DWARFUnit22ParseDWARFLocationListERKNS_13DataExtractorERNS_19DWARFExpressionListE(ptr noundef nonnull align 8 dereferenceable(864) %i.fz, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(56) %0) #27
  br i1 %i.ga, label %bb.ap, label %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit

bb.ap:                                            ; preds = %_ZN12lldb_private13DataExtractoraSEOS0_.exit.i
  store i64 %i.s, ptr %i.ch, align 8, !tbaa !691, !alias.scope !1686
  br label %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit

_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit.thread: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.aq

_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit: ; preds = %bb.af, %bb.ag, %_ZN12lldb_private6plugin5dwarf9DWARFUnit16GetLoclistOffsetEj.exit.i, %_ZN12lldb_private13DataExtractoraSEOS0_.exit.i, %bb.ap
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27, !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit.thread, %_ZL25GetExprListFromAtLocationN12lldb_private6plugin5dwarf14DWARFFormValueESt10shared_ptrINS_6ModuleEERKNS1_8DWARFDIEEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.gb, align 8, !tbaa !97
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !98
  %i.gg = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !3
  %i.gj = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !3
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i.i.i2 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i2, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.go = atomicrmw volatile add ptr %i.gb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i = phi i32 [ %i.ge, %bb.at ], [ %i.go, %bb.au ]
  %i.gp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gp, label %bb.av, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %bb.a
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1696, !nonnull !313, !align !425 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !680
  %.not39 = icmp eq i16 %i.gt, 0
  br i1 %.not39, label %bb.cu, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 8 dereferenceable(40) %i.gr, i64 40, i1 false), !tbaa.struct !685
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !1683, !nonnull !313, !align !425 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !239 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !95 ; 39 uses
  %.not.i.i.i3 = icmp eq ptr %i.gy, null          ; 10 uses
  br i1 %.not.i.i.i3, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit5, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 3 uses
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i.i.i.i4 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i4, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !100
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gz, align 4, !tbaa !100
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit5

bb.ba:                                            ; preds = %bb.ay
  %i.hd = atomicrmw volatile add ptr %i.gz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit5

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit5: ; preds = %bb.ax, %bb.az, %bb.ba
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1684, !nonnull !313, !align !425 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %23, i64 40, i1 false)
  %i.hg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE7GetDataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #27, !noalias !1697 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hi = load i16, ptr %i.hh, align 8, !tbaa !680, !noalias !1697
  %i.hj = tail call noundef zeroext i1 @_ZN12lldb_private6plugin5dwarf14DWARFFormValue11IsBlockFormEN4llvm5dwarf4FormE(i16 noundef zeroext %i.hi) #27, !noalias !1697
  br i1 %i.hj, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit5
  %i.hk = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9BlockDataEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #27, !noalias !1697
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !316, !noalias !1697
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !99, !noalias !1697
  br i1 %.not.i.i.i3, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i8, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 3 uses
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99, !noalias !1697
  %.not.i.i.i.i.i7 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i.i.i7, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !100, !noalias !1697
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.hs, align 4, !tbaa !100, !noalias !1697
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i8

bb.be:                                            ; preds = %bb.bc
  %i.hw = atomicrmw volatile add ptr %i.hs, i32 1 acq_rel, align 4, !noalias !1697 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i8

end_hunk_0
