Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.export?download=true
inline.NumInlined: 2020
inline.NumDeleted: 932
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5vcpkg23command_export_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_:bb.a

bb.ep:                                            ; preds = %bb.eo
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.en
  %.pn52 = phi { ptr, i32 } [ %i.so, %bb.eq ], [ %i.sl, %bb.en ] ; 2 uses
  %i.sp = load ptr, ptr %39, align 8, !tbaa !38   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.er
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !39
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn52.pn = phi { ptr, i32 } [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn52, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.es

bb.es:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.do
  %i.su = phi ptr [ %i.qf, %bb.eg ], [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.val69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre, %bb.do ] ; 3 uses
  %.pn55 = phi { ptr, i32 } [ %i.ro, %bb.eg ], [ %.pn52.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.qe, %bb.do ] ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.sv = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !114
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = ptrtoint ptr %i.su to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sz) #26
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit: ; preds = %bb.et, %bb.es, %bb.dn
  %.pn55.pn = phi { ptr, i32 } [ %i.qd, %bb.dn ], [ %.pn55, %bb.es ], [ %.pn55, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit, %bb.dj, %bb.di
  %.pn58 = phi { ptr, i32 } [ %i.qb, %bb.dj ], [ %i.qa, %bb.di ], [ %.pn55.pn, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit ]
  call void @_ZNSt6vectorIN5vcpkg16ExportPlanActionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #24
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.dh
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.eu ], [ %i.pz, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @_ZN5vcpkg21PathsPortFileProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %29) #24
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit74
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.ev ], [ %.pn, %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @_ZNSt10unique_ptrIN5vcpkg11RegistrySetESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #24
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.de
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn, %bb.ew ], [ %i.ps, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %.body

.body:                                            ; preds = %bb.dd, %bb.ex, %bb.cs
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.i, %bb.cs ], [ %.pn58.pn.pn.pn, %bb.ex ], [ %i.pr, %bb.dd ] ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_115ExportArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.ta = load ptr, ptr %26, align 8, !tbaa !237  ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !238 ; 2 uses
  %.not4.i.i.i.i90 = icmp eq ptr %i.ta, %i.tc
  br i1 %.not4.i.i.i.i90, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i91

.lr.ph.i.i.i.i91:                                 ; preds = %.body, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i92 = phi ptr [ %i.te, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ta, %.body ] ; 2 uses
  %i.td = load ptr, ptr %.05.i.i.i.i92, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i.i93, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.td) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef 248) #26
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i91
  %i.te = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92, i64 8 ; 2 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.te, %i.tc
  br i1 %.not.i.i.i.i94, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i91, !llvm.loop !214

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i95 = load ptr, ptr %26, align 8, !tbaa !237
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %.body
  %i.tf = phi ptr [ %.pr.i.i95, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ta, %.body ] ; 3 uses
  %.not.i.i1.i.i96 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i1.i.i96, label %_ZN5vcpkg16StatusParagraphsD2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !240
  %i.ti = ptrtoint ptr %i.th to i64
  %i.tj = ptrtoint ptr %i.tf to i64
  %i.tk = sub i64 %i.ti, %i.tj
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef %i.tk) #26
  br label %_ZN5vcpkg16StatusParagraphsD2Ev.exit

_ZN5vcpkg16StatusParagraphsD2Ev.exit:             ; preds = %bb.ey, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.dc
  %.pn58.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pq, %bb.dc ], [ %.pn58.pn.pn.pn.pn.pn, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %.pn58.pn.pn.pn.pn.pn, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @_ZN5vcpkg21InstalledDatabaseLockD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths9installedEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

declare void @_ZN5vcpkg21InstalledDatabaseLockC1ERKNS_10FilesystemERKNS_14InstalledPathsERKNS_8OptionalIbEESA_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(2), ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

declare void @_ZN5vcpkg13database_loadERKNS_18ReadOnlyFilesystemERKNS_14InstalledPathsERKNS_21InstalledDatabaseLockE(ptr dead_on_unwind writable sret(%"struct.vcpkg::StatusParagraphs") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK5vcpkg10VcpkgPaths17make_registry_setEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.55") align 8, ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

declare void @_ZN5vcpkg21make_overlay_providerERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.79") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN5vcpkg21PathsPortFileProviderC1ERKNS_11RegistrySetEOSt10unique_ptrINS_20IFullOverlayProviderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN5vcpkg18create_export_planERKSt6vectorINS_11PackageSpecESaIS1_EERKNS_16StatusParagraphsE(ptr dead_on_unwind writable sret(%"class.std::vector.100") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg3msg13println_errorIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  tail call void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 49, ptr nonnull @.str.39, i64 5)
  tail call void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.40, i64 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %1, i64 %0)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 10)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #24 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.c, i64 %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5vcpkg15LocalizedStringD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !39
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit5

_ZN5vcpkg15LocalizedStringD2Ev.exit5:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.j
}

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks9exit_failERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_138print_export_plan_and_return_not_builtERKSt6vectorIN5vcpkg16ExportPlanActionESaIS2_EE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.105", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not711 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not711, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.e = phi ptr [ null, %bb.a ], [ %i.at, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.f = phi ptr [ null, %bb.a ], [ %i.av, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  invoke fastcc void @_ZN12_GLOBAL__N_132print_and_sort_export_plan_blockERKN5vcpkg3msg8MessageTIJEEERSt6vectorIPKNS0_16ExportPlanActionESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg32msgExportingAlreadyBuiltPackagesE, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.av, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit ] ; 10 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.sroa.04.012 = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %i.i = phi ptr [ %.0.val, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %i.j = invoke noundef ptr @_ZNK5vcpkg16ExportPlanAction14core_paragraphEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, %.sroa.04.012
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %i.h, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !115
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %.invoke, label %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25
          to label %.noexc12 unwind label %.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.i, ptr %i.w, align 8, !tbaa !106
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.h, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.g, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %.noexc12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.n) #26
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.v, ptr %1, align 8, !tbaa !109
  store ptr %i.y, ptr %i.a, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !114
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !115 ; 4 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !114
  %.not.i.i13 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.i, ptr %i.aa, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !115
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8, !tbaa !109   ; 4 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %2, label %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i14

2:                                                ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #28
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %2
  unreachable

_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i14: ; preds = %bb.l
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i15, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #25
          to label %.noexc21 unwind label %.loopexit ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i14
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %i.i, ptr %i.ap, align 8, !tbaa !106
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.m, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i17

bb.m:                                             ; preds = %.noexc21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i17

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i17: ; preds = %bb.m, %.noexc21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.not.i17.i.i.i18 = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i18, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19: ; preds = %bb.n, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i17
  store ptr %i.ao, ptr %0, align 8, !tbaa !109
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !115
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.as, ptr %i.d, align 8, !tbaa !114
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.k, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19, %bb.f, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.at = phi ptr [ %i.z, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.04.012, %bb.f ], [ %.sroa.04.012, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19 ], [ %.sroa.04.012, %bb.k ] ; 2 uses
  %i.au = phi ptr [ %i.y, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.k, %bb.f ], [ %i.h, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19 ], [ %i.h, %bb.k ]
  %i.av = phi ptr [ %i.v, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.f ], [ %i.g, %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i19 ], [ %i.g, %bb.k ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %.not7 = icmp eq ptr %i.aw, %.8.val
  br i1 %.not7, label %bb.b, label %bb.c

bb.o:                                             ; preds = %bb.b
  invoke fastcc void @_ZN12_GLOBAL__N_132print_and_sort_export_plan_blockERKN5vcpkg3msg8MessageTIJEEERSt6vectorIPKNS0_16ExportPlanActionESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg20msgPackagesToInstallE, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.q unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.c, %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i14
  %.lcssa18 = phi ptr [ %i.h, %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.04.012, %bb.c ], [ %.sroa.04.012, %_ZNKSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i14 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.b, %bb.o, %.invoke, %2
  %3 = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.o ], [ %i.h, %.invoke ], [ %.sroa.04.012, %2 ]
  %4 = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.o ], [ %i.g, %.invoke ], [ %i.g, %2 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.ax = phi ptr [ %.lcssa18, %.loopexit ], [ %3, %.loopexit.split-lp ]
  %i.ay = phi ptr [ %i.g, %.loopexit ], [ %4, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit24, label %bb.s

bb.q:                                             ; preds = %bb.o
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = ptrtoint ptr %i.e to i64
  %i.bb = ptrtoint ptr %i.f to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.bc) #26
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.s:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !114
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.az to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bh) #26
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit24

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit24: ; preds = %bb.p, %bb.s
  %.not.i.i.i25 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit24
  %i.bi = ptrtoint ptr %i.ax to i64
  %i.bj = ptrtoint ptr %i.ay to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bk) #26
  br label %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit26

_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit26: ; preds = %_ZNSt6vectorIPKN5vcpkg16ExportPlanActionESaIS3_EED2Ev.exit24, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5vcpkg4Util6any_ofIRSt6vectorINS_16ExportPlanActionESaIS3_EEZNS_23command_export_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESD_E3$_0EEbOT_T0_"(ptr %.0.val, ptr %.8.val) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 88
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.g = mul nuw nsw i64 %i.e, 352
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.g ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %.057.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.031.056.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.0.val, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.h = getelementptr i8, ptr %.sroa.031.056.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !124
  %.not42.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 1
  br i1 %.not42.i.i.i.i.i, label %bb.b, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr i8, ptr %.sroa.031.056.i.i.i.i.i, i64 128
  %.val.i16.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !124
  %.not43.i.i.i.i.i = icmp eq i32 %.val.i16.i.i.i.i.i, 1
  br i1 %.not43.i.i.i.i.i, label %bb.c, label %.loopexit.split.loop.exit47.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.sroa.031.056.i.i.i.i.i, i64 216
  %.val.i17.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !124
  %.not44.i.i.i.i.i = icmp eq i32 %.val.i17.i.i.i.i.i, 1
  br i1 %.not44.i.i.i.i.i, label %bb.d, label %.loopexit.split.loop.exit49.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.sroa.031.056.i.i.i.i.i, i64 304
  %.val.i18.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !124
  %.not45.i.i.i.i.i = icmp eq i32 %.val.i18.i.i.i.i.i, 1
  br i1 %.not45.i.i.i.i.i, label %bb.e, label %.loopexit.split.loop.exit51.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.031.056.i.i.i.i.i, i64 352
  %i.m = add nsw i64 %.057.i.i.i.i.i, -1
  %i.n = icmp sgt i64 %.057.i.i.i.i.i, 1
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !241

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre62.i.i.i.i.i = sub i64 %i.a, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi63.i.i.i.i.i = phi i64 [ %.pre62.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.c, %bb.a ]
  %.sroa.031.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  %i.o = sdiv exact i64 %.pre-phi63.i.i.i.i.i, 88
  switch i64 %i.o, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = getelementptr i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 40
  %.val.i19.i.i.i.i.i = load i32, ptr %i.p, align 8, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i32 %.val.i19.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i, label %bb.g, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 88
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.031.1.i.i.i.i.i = phi ptr [ %i.q, %bb.g ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr i8, ptr %.sroa.031.1.i.i.i.i.i, i64 40
  %.val.i20.i.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !124
  %.not40.i.i.i.i.i = icmp eq i32 %.val.i20.i.i.i.i.i, 1
  br i1 %.not40.i.i.i.i.i, label %bb.i, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i.i, i64 88
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.sroa.031.2.i.i.i.i.i = phi ptr [ %i.s, %bb.i ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.031.2.i.i.i.i.i, i64 40
  %.val.i21.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !124
  %.not41.i.i.i.i.i = icmp eq i32 %.val.i21.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i = select i1 %.not41.i.i.i.i.i, ptr %.8.val, ptr %.sroa.031.2.i.i.i.i.i
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

.loopexit.split.loop.exit47.i.i.i.i.i:            ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.056.i.i.i.i.i, i64 88
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

.loopexit.split.loop.exit49.i.i.i.i.i:            ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.056.i.i.i.i.i, i64 176
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

.loopexit.split.loop.exit51.i.i.i.i.i:            ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.031.056.i.i.i.i.i, i64 264
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit"

"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg16ExportPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_23command_export_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_E3$_0EbT_SH_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %bb.f, %bb.h, %bb.j, %.loopexit.split.loop.exit47.i.i.i.i.i, %.loopexit.split.loop.exit49.i.i.i.i.i, %.loopexit.split.loop.exit51.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.031.1.i.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i.i, %bb.j ], [ %.8.val, %._crit_edge.i.i.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %bb.f ], [ %i.v, %.loopexit.split.loop.exit49.i.i.i.i.i ], [ %i.u, %.loopexit.split.loop.exit47.i.i.i.i.i ], [ %i.w, %.loopexit.split.loop.exit51.i.i.i.i.i ], [ %.sroa.031.056.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.x = icmp ne ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg3msg7printlnIJEJEEEvNS_5ColorENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(i8 noundef signext %0, i64 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %2, i64 %1)
  %i.a = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #24 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext %0, ptr %i.b, i64 %i.c)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.65, i64 1)
          to label %_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit unwind label %bb.b

_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit: ; preds = %.noexc
  %i.d = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !39
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5vcpkg15LocalizedStringD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !39
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit6
end_hunk_0
