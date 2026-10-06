Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-file-unix.cc.X86_64?download=true
inline.NumInlined: 733
inline.NumDeleted: 370
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4mold22MemoryMappedOutputFileINS_6X86_64EEC2ERNS_7ContextIS1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEli:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.cp) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.z, %_ZNSt7__cxx119to_stringEi.exit
  %i.cq = load ptr, ptr %8, align 8, !tbaa !20, !noalias !373 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !19, !noalias !373
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #26
  br label %_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.cv = load ptr, ptr %2, align 8, !tbaa !20
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !18
  call void @_ZN4mold13path_filenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.cw, ptr %i.cv)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 1), !noalias !374 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 12 uses
  store ptr %i.cy, ptr %17, align 8, !tbaa !15, !alias.scope !374
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 5 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.aa:                                            ; preds = %_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.df, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store ptr %i.cz, ptr %17, align 8, !tbaa !20, !alias.scope !374
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !19
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !19, !alias.scope !374
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.dh = phi i64 [ %i.dd, %bb.aa ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !18, !alias.scope !374
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !20
  store i64 0, ptr %i.di, align 8, !tbaa !18
  store i8 0, ptr %i.da, align 8, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !18, !noalias !375 ; 5 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775807
  br i1 %i.dl, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29, !noalias !375
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.dm = add nsw i64 %i.dk, 1                    ; 3 uses
  %i.dn = load ptr, ptr %17, align 8, !tbaa !20, !noalias !375 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cy
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.dp = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.dq = load i64, ptr %i.cy, align 8, !tbaa !19, !noalias !375
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25
  %i.dr = phi i64 [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25 ]
  %.not.i.i.i = icmp ugt i64 %i.dm, %i.dr
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk
  store i8 46, ptr %i.ds, align 1, !tbaa !19, !noalias !375
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.dk, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 1), !noalias !375
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ad, %bb.ac
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !18, !noalias !375
  %i.dt = load ptr, ptr %17, align 8, !tbaa !20, !noalias !375
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dm
  store i8 0, ptr %i.du, align 1, !tbaa !19, !noalias !375
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 14 uses
  store ptr %i.dv, ptr %16, align 8, !tbaa !15, !alias.scope !375
  %i.dw = load ptr, ptr %17, align 8, !tbaa !20, !noalias !375 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, %i.cy
  br i1 %i.dx, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dy = load i64, ptr %i.dj, align 8, !tbaa !18, !noalias !375 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.ea, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.dw, ptr %16, align 8, !tbaa !20, !alias.scope !375
  %i.eb = load i64, ptr %i.cy, align 8, !tbaa !19, !noalias !375
  store i64 %i.eb, ptr %i.dv, align 8, !tbaa !19, !alias.scope !375
  %.pre.i24 = load i64, ptr %i.dj, align 8, !tbaa !18, !noalias !375
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ec = phi ptr [ %i.dv, %bb.ae ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ] ; 2 uses
  %i.ed = phi i64 [ %i.dy, %bb.ae ], [ %.pre.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ] ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !18, !alias.scope !375
  store ptr %i.cy, ptr %17, align 8, !tbaa !20, !noalias !375
  store i64 0, ptr %i.dj, align 8, !tbaa !18, !noalias !375
  store i8 0, ptr %i.cy, align 8, !tbaa !19, !noalias !375
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.ef = load ptr, ptr %10, align 8, !tbaa !20, !noalias !376 ; 3 uses
  %i.eg = load i64, ptr %i.bf, align 8, !tbaa !18, !noalias !376 ; 6 uses
  %i.eh = sub i64 9223372036854775807, %i.ed
  %i.ei = icmp ult i64 %i.eh, %i.eg
  br i1 %i.ei, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.af:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29, !noalias !376
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ej = add i64 %i.eg, %i.ed                    ; 3 uses
  %i.ek = icmp eq ptr %i.ec, %i.dv
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.el = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.el)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !19, !noalias !376
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.en = phi i64 [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i26 = icmp ugt i64 %i.ej, %i.en
  br i1 %.not.i.i.i.i26, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.eg, 1
  br i1 %cond.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load i8, ptr %i.ef, align 1, !tbaa !19, !noalias !376
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !19, !noalias !376
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ef, i64 %i.eg, i1 false), !noalias !376
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.ed, i64 noundef 0, ptr noundef %i.ef, i64 noundef %i.eg), !noalias !376
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !18, !noalias !376
  %i.eq = load ptr, ptr %16, align 8, !tbaa !20, !noalias !376
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ej
  store i8 0, ptr %i.er, align 1, !tbaa !19, !noalias !376
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  store ptr %i.es, ptr %15, align 8, !tbaa !15, !alias.scope !376
  %i.et = load ptr, ptr %16, align 8, !tbaa !20, !noalias !376 ; 3 uses
  %i.eu = icmp eq ptr %i.et, %i.dv
  br i1 %i.eu, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.thread, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ev = load i64, ptr %i.ee, align 8, !tbaa !18, !noalias !376 ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 16
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.es, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.dv, ptr %16, align 8, !tbaa !20, !noalias !376
  store i64 0, ptr %i.ee, align 8, !tbaa !18, !noalias !376
  store i8 0, ptr %i.dv, align 8, !tbaa !19, !noalias !376
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.ez, ptr %14, align 8, !tbaa !15
  br label %bb.al

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.fb = load <2 x i64>, ptr %i.ee, align 8, !tbaa !19, !noalias !376
  %.pre.i28 = load i64, ptr %i.ee, align 8, !tbaa !18, !noalias !376 ; 2 uses
  store <2 x i64> %i.fb, ptr %i.fa, align 8, !tbaa !19, !alias.scope !376
  store ptr %i.dv, ptr %16, align 8, !tbaa !20, !noalias !376
  store i64 0, ptr %i.ee, align 8, !tbaa !18, !noalias !376
  store i8 0, ptr %i.dv, align 8, !tbaa !19, !noalias !376
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.fc, ptr %14, align 8, !tbaa !15
  %i.fd = icmp eq ptr %i.et, %i.es
  br i1 %i.fd, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

bb.al:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.thread, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.fe = phi ptr [ %i.ez, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.thread ], [ %i.fc, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit ] ; 2 uses
  %i.ff = phi ptr [ %i.ey, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.thread ], [ %i.fa, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit ]
  %i.fg = phi i64 [ %i.ev, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.thread ], [ %.pre.i28, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit ] ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fe, ptr noundef nonnull align 8 dereferenceable(1) %i.es, i64 %i.fi, i1 false)
  br label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  store ptr %i.et, ptr %14, align 8, !tbaa !20
  %i.fj = load i64, ptr %i.es, align 8, !tbaa !19
  store i64 %i.fj, ptr %i.fc, align 8, !tbaa !19
  br label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit

_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.fk = phi ptr [ %i.fe, %bb.al ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ] ; 2 uses
  %i.fl = phi ptr [ %i.ff, %bb.al ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ]
  %i.fm = phi i64 [ %i.fg, %bb.al ], [ %.pre.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !18
  store ptr %i.es, ptr %15, align 8, !tbaa !20
  store i64 0, ptr %i.fl, align 8, !tbaa !18
  store i8 0, ptr %i.es, align 8, !tbaa !19
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fo) #18
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.fp, ptr %12, align 8, !tbaa !15, !alias.scope !377
  %i.fq = load ptr, ptr %13, align 8, !tbaa !20, !noalias !377 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !18, !noalias !377 ; 8 uses
  %i.ft = icmp ugt i64 %i.fs, 15
  br i1 %i.ft, label %bb.am, label %._crit_edge.i.i.i.i

bb.am:                                            ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  %i.fu = icmp slt i64 %i.fs, 0
  br i1 %i.fu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.fv = add nuw i64 %i.fs, 1                    ; 2 uses
  %i.fw = icmp slt i64 %i.fv, 0
  br i1 %i.fw, label %bb.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !23

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ao
  %i.fx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #28 ; 2 uses
  store ptr %i.fx, ptr %12, align 8, !tbaa !20, !alias.scope !377
  store i64 %i.fs, ptr %i.fp, align 8, !tbaa !19, !alias.scope !377
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  %i.fy = phi ptr [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.fp, %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit ] ; 3 uses
  switch i64 %i.fs, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fz = load i8, ptr %i.fq, align 1, !tbaa !19
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !19
  br label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fy, ptr align 1 %i.fq, i64 %i.fs, i1 false)
  br label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.aq, %bb.ar
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.fs, ptr %i.ga, align 8, !tbaa !18, !alias.scope !377
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fs
  store i8 0, ptr %i.gb, align 1, !tbaa !19
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  call void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %i.gd) #18
  %i.ge = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %14) #18 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.gf, ptr %11, align 8, !tbaa !15, !alias.scope !378
  %i.gg = load ptr, ptr %12, align 8, !tbaa !20, !noalias !378 ; 2 uses
  %i.gh = load i64, ptr %i.ga, align 8, !tbaa !18, !noalias !378 ; 8 uses
  %i.gi = icmp ugt i64 %i.gh, 15
  br i1 %i.gi, label %bb.as, label %._crit_edge.i.i.i30

bb.as:                                            ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.gj = icmp slt i64 %i.gh, 0
  br i1 %i.gj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.gk = add nuw i64 %i.gh, 1                    ; 2 uses
  %i.gl = icmp slt i64 %i.gk, 0
  br i1 %i.gl, label %bb.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i31, !prof !23

bb.av:                                            ; preds = %bb.au
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i31: ; preds = %bb.au
  %i.gm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #28 ; 2 uses
  store ptr %i.gm, ptr %11, align 8, !tbaa !20, !alias.scope !378
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !19, !alias.scope !378
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i31, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.gn = phi ptr [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i31 ], [ %i.gf, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit ] ; 3 uses
  switch i64 %i.gh, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNKSt10filesystem7__cxx114pathcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i30
  %i.go = load i8, ptr %i.gg, align 1, !tbaa !19
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !19
  br label %_ZNKSt10filesystem7__cxx114pathcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.ax:                                            ; preds = %._crit_edge.i.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr align 1 %i.gg, i64 %i.gh, i1 false)
  br label %_ZNKSt10filesystem7__cxx114pathcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNKSt10filesystem7__cxx114pathcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i30, %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 %i.gh, ptr %i.gp, align 8, !tbaa !18, !alias.scope !378
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gh
  store i8 0, ptr %i.gq, align 1, !tbaa !19
  %i.gr = load ptr, ptr %i.gc, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i32, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt10filesystem7__cxx114pathcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull %i.gr) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.ay, %_ZNKSt10filesystem7__cxx114pathcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.gs = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fp
  br i1 %i.gt, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.gu = load i64, ptr %i.fp, align 8, !tbaa !19
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gw = load ptr, ptr %i.fo, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i33, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i34, label %bb.az

bb.az:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull %i.gw) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i34

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i34: ; preds = %bb.az, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.gx = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fk
  br i1 %i.gy, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i34
  %i.gz = load i64, ptr %i.fk, align 8, !tbaa !19
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit37

_ZNSt10filesystem7__cxx114pathD2Ev.exit37:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.hb = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.es
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
end_hunk_0
