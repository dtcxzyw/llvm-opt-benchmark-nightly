Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/handle_llvm?download=true
inline.NumInlined: 1335
inline.NumDeleted: 924
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL19CreateAndRunJITFuncRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm15CodeGenOptLevelE:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZN4llvm7codegen14getFeatureListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.153") align 8 %15) #21
  %i.da = call noundef nonnull align 8 dereferenceable(730) ptr @_ZN4llvm13EngineBuilder9setMAttrsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(730) %11, ptr noundef nonnull align 8 dereferenceable(24) %15) ; 0 uses
  %i.db = load ptr, ptr %15, align 8, !tbaa !81   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.db, %i.dd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ] ; 3 uses
  %i.de = load ptr, ptr %.05.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !15
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, %i.dd
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.dk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !83
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %9, ptr %i.dq, align 8, !tbaa !307
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %i.dr, align 8, !tbaa !308
  %i.ds = call noalias noundef nonnull dereferenceable(4128) ptr @_Znwm(i64 noundef 4128) #24, !noalias !309 ; 2 uses
  call void @_ZN4llvm20SectionMemoryManagerC1EPNS0_12MemoryMapperEb(ptr noundef nonnull align 8 dereferenceable(4121) %i.ds, ptr noundef null, i1 noundef zeroext false) #21, !noalias !309
  store ptr %i.ds, ptr %16, align 8, !tbaa !312
  %i.dt = call noundef nonnull align 8 dereferenceable(730) ptr @_ZN4llvm13EngineBuilder21setMCJITMemoryManagerESt10unique_ptrINS_19RTDyldMemoryManagerESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(730) %11, ptr nofree noundef nonnull align 8 dereferenceable(8) %16) #21 ; 0 uses
  %i.du = load ptr, ptr %16, align 8, !tbaa !313  ; 3 uses
  %.not.i16 = icmp eq ptr %i.du, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4llvm20SectionMemoryManagerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm19RTDyldMemoryManagerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm19RTDyldMemoryManagerEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(48) %i.du) #21, !inline_history !250
  br label %_ZNSt10unique_ptrIN4llvm20SectionMemoryManagerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm20SectionMemoryManagerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm19RTDyldMemoryManagerEEclEPS1_.exit.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %1, ptr %i.dy, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @_ZN4llvm7codegen33InitTargetOptionsFromCodeGenFlagsERKNS_6TripleE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetOptions") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %10) #21
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ea = call noundef nonnull align 8 dereferenceable(440) ptr @_ZN4llvm13TargetOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %i.dz, ptr noundef nonnull align 8 dereferenceable(440) %17) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 408
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !42 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 424 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm20SectionMemoryManagerESt14default_deleteIS1_EED2Ev.exit
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !15
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm20SectionMemoryManagerESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 120
  call void @_ZN4llvm15MCTargetOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(282) dereferenceable(282) %i.eh) #21
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !42 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !15
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i18 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i18, label %_ZN4llvm13TargetOptionsD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.eq, align 8, !tbaa !75
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !76
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #21, !inline_history !251
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #21, !inline_history !251
  br label %_ZN4llvm13TargetOptionsD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.et, %bb.o ], [ %i.fd, %bb.p ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fe, label %bb.q, label %_ZN4llvm13TargetOptionsD2Ev.exit, !prof !77

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #21
  br label %_ZN4llvm13TargetOptionsD2Ev.exit

_ZN4llvm13TargetOptionsD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.ff = call noundef ptr @_ZN4llvm13EngineBuilder12selectTargetEv(ptr noundef nonnull align 8 dereferenceable(730) %11) #21
  %i.fg = call noundef ptr @_ZN4llvm13EngineBuilder6createEPNS_13TargetMachineE(ptr noundef nonnull align 8 dereferenceable(730) %11, ptr noundef %i.ff) #21 ; 11 uses
  %.not66 = icmp eq ptr %i.fg, null
  br i1 %.not66, label %._crit_edge.i.i19, label %_ZNSt10unique_ptrIN4llvm15ExecutionEngineESt14default_deleteIS1_EED2Ev.exit

._crit_edge.i.i19:                                ; preds = %_ZN4llvm13TargetOptionsD2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.fh, ptr %18, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 33, ptr %i.a, align 8, !tbaa !43
  %i.fi = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 3 uses
  store ptr %i.fi, ptr %18, align 8, !tbaa !42
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.fi, ptr noundef nonnull align 1 dereferenceable(33) @.str.16, i64 33, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @_ZL12ErrorAndExitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef align 8 dereferenceable(32) %18)
  unreachable

_ZNSt10unique_ptrIN4llvm15ExecutionEngineESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm13TargetOptionsD2Ev.exit
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !61
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(1136) %i.fg) #21
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !61
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 120
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(1136) %i.fg, i1 noundef zeroext false) #21
  %i.fs = load ptr, ptr %i.fg, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call noundef ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(1136) %i.fg, ptr noundef nonnull %i.ba) #21 ; 31 uses
  %i.fw = icmp eq i32 %1, 0
  %_ZL11UnoptArrays._ZL9OptArrays = select i1 %i.fw, ptr @_ZL11UnoptArrays, ptr @_ZL9OptArrays ; 93 uses
  %19 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 7936
  %20 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 15872
  call void %i.fv(ptr noundef nonnull %_ZL11UnoptArrays._ZL9OptArrays, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef 64) #21, !inline_history !252
  %21 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 8192
  %23 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 16128
  call void %i.fv(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, i32 noundef 64) #21, !inline_history !252
  %24 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 512
  %25 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 8448
  %26 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 16384
  call void %i.fv(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26, i32 noundef 64) #21, !inline_history !252
  %27 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 768
  %28 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 8704
  %29 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 16640
  call void %i.fv(ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29, i32 noundef 64) #21, !inline_history !252
  %30 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 1024
  %31 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 8960
  %32 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 16896
  call void %i.fv(ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32, i32 noundef 64) #21, !inline_history !252
  %33 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 1280
  %34 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 9216
  %35 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 17152
  call void %i.fv(ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35, i32 noundef 64) #21, !inline_history !252
  %36 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 1536
  %37 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 9472
  %38 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 17408
  call void %i.fv(ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38, i32 noundef 64) #21, !inline_history !252
  %39 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 1792
  %40 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 9728
  %41 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 17664
  call void %i.fv(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41, i32 noundef 64) #21, !inline_history !252
  %42 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 2048
  %43 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 9984
  %44 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 17920
  call void %i.fv(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44, i32 noundef 64) #21, !inline_history !252
  %45 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 2304
  %46 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 10240
  %47 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 18176
  call void %i.fv(ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47, i32 noundef 64) #21, !inline_history !252
  %48 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 2560
  %49 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 10496
  %50 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 18432
  call void %i.fv(ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50, i32 noundef 64) #21, !inline_history !252
  %51 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 2816
  %52 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 10752
  %53 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 18688
  call void %i.fv(ptr noundef nonnull %51, ptr noundef nonnull %52, ptr noundef nonnull %53, i32 noundef 64) #21, !inline_history !252
  %54 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 3072
  %55 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 11008
  %56 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 18944
  call void %i.fv(ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %56, i32 noundef 64) #21, !inline_history !252
  %57 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 3328
  %58 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 11264
  %59 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 19200
  call void %i.fv(ptr noundef nonnull %57, ptr noundef nonnull %58, ptr noundef nonnull %59, i32 noundef 64) #21, !inline_history !252
  %60 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 3584
  %61 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 11520
  %62 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 19456
  call void %i.fv(ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef nonnull %62, i32 noundef 64) #21, !inline_history !252
  %63 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 3840
  %64 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 11776
  %65 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 19712
  call void %i.fv(ptr noundef nonnull %63, ptr noundef nonnull %64, ptr noundef nonnull %65, i32 noundef 64) #21, !inline_history !252
  %66 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 4096
  %67 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 12032
  %68 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 19968
  call void %i.fv(ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef nonnull %68, i32 noundef 64) #21, !inline_history !252
  %69 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 4352
  %70 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 12288
  %71 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 20224
  call void %i.fv(ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef nonnull %71, i32 noundef 64) #21, !inline_history !252
  %72 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 4608
  %73 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 12544
  %74 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 20480
  call void %i.fv(ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %74, i32 noundef 64) #21, !inline_history !252
  %75 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 4864
  %76 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 12800
  %77 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 20736
  call void %i.fv(ptr noundef nonnull %75, ptr noundef nonnull %76, ptr noundef nonnull %77, i32 noundef 64) #21, !inline_history !252
  %78 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 5120
  %79 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 13056
  %80 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 20992
  call void %i.fv(ptr noundef nonnull %78, ptr noundef nonnull %79, ptr noundef nonnull %80, i32 noundef 64) #21, !inline_history !252
  %81 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 5376
  %82 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 13312
  %83 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 21248
  call void %i.fv(ptr noundef nonnull %81, ptr noundef nonnull %82, ptr noundef nonnull %83, i32 noundef 64) #21, !inline_history !252
  %84 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 5632
  %85 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 13568
  %86 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 21504
  call void %i.fv(ptr noundef nonnull %84, ptr noundef nonnull %85, ptr noundef nonnull %86, i32 noundef 64) #21, !inline_history !252
  %87 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 5888
  %88 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 13824
  %89 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 21760
  call void %i.fv(ptr noundef nonnull %87, ptr noundef nonnull %88, ptr noundef nonnull %89, i32 noundef 64) #21, !inline_history !252
  %90 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 6144
  %91 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 14080
  %92 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 22016
  call void %i.fv(ptr noundef nonnull %90, ptr noundef nonnull %91, ptr noundef nonnull %92, i32 noundef 64) #21, !inline_history !252
  %93 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 6400
  %94 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 14336
  %95 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 22272
  call void %i.fv(ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %95, i32 noundef 64) #21, !inline_history !252
  %96 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 6656
  %97 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 14592
  %98 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 22528
  call void %i.fv(ptr noundef nonnull %96, ptr noundef nonnull %97, ptr noundef nonnull %98, i32 noundef 64) #21, !inline_history !252
  %99 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 6912
  %100 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 14848
  %101 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 22784
  call void %i.fv(ptr noundef nonnull %99, ptr noundef nonnull %100, ptr noundef nonnull %101, i32 noundef 64) #21, !inline_history !252
  %102 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 7168
  %103 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 15104
  %104 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 23040
  call void %i.fv(ptr noundef nonnull %102, ptr noundef nonnull %103, ptr noundef nonnull %104, i32 noundef 64) #21, !inline_history !252
  %105 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 7424
  %106 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 15360
  %107 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 23296
  call void %i.fv(ptr noundef nonnull %105, ptr noundef nonnull %106, ptr noundef nonnull %107, i32 noundef 64) #21, !inline_history !252
  %108 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 7680
  %109 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 15616
  %110 = getelementptr inbounds nuw i8, ptr %_ZL11UnoptArrays._ZL9OptArrays, i64 23552
  call void %i.fv(ptr noundef nonnull %108, ptr noundef nonnull %109, ptr noundef nonnull %110, i32 noundef 64) #21, !inline_history !252
  %i.fx = load ptr, ptr %i.fg, align 8, !tbaa !61
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 120
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(1136) %i.fg, i1 noundef zeroext true) #21
  %i.ga = load ptr, ptr %i.fg, align 8, !tbaa !61
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(1136) %i.fg) #21, !inline_history !253
  call void @_ZN4llvm13EngineBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(730) dereferenceable(730) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.gd = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.bl
  br i1 %i.ge, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt10unique_ptrIN4llvm15ExecutionEngineESt14default_deleteIS1_EED2Ev.exit
  %i.gf = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #23
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %_ZNSt10unique_ptrIN4llvm15ExecutionEngineESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.gh = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.bh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZN4llvm6TripleD2Ev.exit
  %i.gj = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZN4llvm6TripleD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.gl = load ptr, ptr %4, align 8, !tbaa !56    ; 3 uses
  %.not.i31 = icmp eq ptr %i.gl, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit33, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i32

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.gl) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 1288) #23
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit33

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.gm = load ptr, ptr %i.r, align 8, !tbaa !39  ; 3 uses
  %i.gn = load i32, ptr %i.t, align 8, !tbaa !40  ; 2 uses
  %.not4.i.i.i34 = icmp eq i32 %i.gn, 0
  br i1 %.not4.i.i.i34, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit33
  %i.go = zext i32 %i.gn to i64
  %.idx.i.i = mul nuw nsw i64 %i.go, 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i.i
  br label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i36 = phi ptr [ %i.gq, %_ZN4llvm7SMFixItD2Ev.exit.i.i.i ], [ %i.gp, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %.05.i.i.i36, i64 -48 ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %.05.i.i.i36, i64 -32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !42 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.05.i.i.i36, i64 -16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i35
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !15
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #23
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37
  %.not.i.i.i38 = icmp eq ptr %i.gm, %i.gq
  br i1 %.not.i.i.i38, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i35, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit33
  %i.gx = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.gm, %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit33 ] ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.s
  br i1 %i.gy, label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.gx) #21
  br label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i: ; preds = %bb.r, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.gz = load ptr, ptr %i.q, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !79
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #23
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.s, %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.hf = load ptr, ptr %i.n, align 8, !tbaa !42  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.o
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.hh = load i64, ptr %i.o, align 8, !tbaa !15
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  %i.hj = load ptr, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.l
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41
  %i.hl = load i64, ptr %i.l, align 8, !tbaa !15
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i42
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.f
  br i1 %i.ho, label %_ZN4llvm12SMDiagnosticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i43
  %i.hp = load i64, ptr %i.f, align 8, !tbaa !15
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #23
  br label %_ZN4llvm12SMDiagnosticD2Ev.exit

_ZN4llvm12SMDiagnosticD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind uwtable
define internal fastcc void @_ZL12ErrorAndExitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #21
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.19)
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.20) ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @LLVMLinkInMCJIT() local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %i.a) #21
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !87
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
end_hunk_0
