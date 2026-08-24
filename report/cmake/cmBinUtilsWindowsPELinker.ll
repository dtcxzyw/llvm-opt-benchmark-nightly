Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmBinUtilsWindowsPELinker?download=true
inline.NumInlined: 600
inline.NumDeleted: 314
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeE:bb.a

bb.ay:                                            ; preds = %bb.am
  invoke void @_ZN26cmRuntimeDependencyArchive17AddUnresolvedPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(440) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0108.0169)
          to label %bb.az unwind label %bb.al

bb.az:                                            ; preds = %bb.ao, %bb.ay, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.gc = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ef
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.az
  %i.ge = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bb

bb.ba:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ax, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.eq, %bb.al ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.gg = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ef
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ba
  %i.gi = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0108.0169, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.gk, %.val
  br i1 %.not, label %.critedge50, label %bb.ah

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.ak
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.ep, %bb.ak ] ; 2 uses
  %i.gl = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.bc
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !26
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

.critedge50:                                      ; preds = %bb.bb, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not117 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.ae ], [ true, %bb.bb ]
  %i.gq = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %.critedge50
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %.critedge50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.not168, label %_ZSt8_DestroyIPZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySB_EvT_SD_RSaIT0_E.exit.i, label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZSt8_DestroyIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencyEvPT_.exit.i.i.i86
  %.05.i.i.i82 = phi ptr [ %i.hg, %_ZSt8_DestroyIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencyEvPT_.exit.i.i.i86 ], [ %.val51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !21 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 48 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i83: ; preds = %.lr.ph.i.i.i81
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !26
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i84: ; preds = %.lr.ph.i.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i83
  %i.hb = load ptr, ptr %.05.i.i.i82, align 8, !tbaa !21 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZSt8_DestroyIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencyEvPT_.exit.i.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i84
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !26
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #19
  br label %_ZSt8_DestroyIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencyEvPT_.exit.i.i.i86

_ZSt8_DestroyIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencyEvPT_.exit.i.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i85
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 64 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.hg, %.val
  br i1 %.not.i.i.i87, label %_ZSt8_DestroyIPZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySB_EvT_SD_RSaIT0_E.exit.i, label %.lr.ph.i.i.i81, !llvm.loop !62

_ZSt8_DestroyIPZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySB_EvT_SD_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencyEvPT_.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.not.i.i2.i = icmp eq ptr %.val51, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySaISB_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySB_EvT_SD_RSaIT0_E.exit.i
  %.val1.i = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.hh = ptrtoint ptr %.val1.i to i64
  %i.hi = ptrtoint ptr %.val51 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %.val51, i64 noundef %i.hj) #19
  br label %_ZNSt6vectorIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySaISB_EED2Ev.exit

_ZNSt6vectorIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySB_EvT_SD_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.ag
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.ag ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn.pn.pn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.aa, %bb.h ], [ %i.ej, %bb.af ], [ %.pn.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i ]
  call fastcc void @_ZNSt6vectorIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bg

bb.be:                                            ; preds = %bb.b, %_ZNSt6vectorIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySaISB_EED2Ev.exit
  %.8 = phi i1 [ %.not117, %_ZNSt6vectorIZN25cmBinUtilsWindowsPELinker16ScanDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums10TargetTypeEE15WinPEDependencySaISB_EED2Ev.exit ], [ false, %bb.b ]
  %i.hk = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !30 ; 2 uses
  %.not4.i.i.i91 = icmp eq ptr %i.hk, %i.hm
  br i1 %.not4.i.i.i91, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i99, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %bb.be, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i95
  %.05.i.i.i93 = phi ptr [ %i.hs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i95 ], [ %i.hk, %bb.be ] ; 3 uses
  %i.hn = load ptr, ptr %.05.i.i.i93, align 8, !tbaa !21 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i94: ; preds = %.lr.ph.i.i.i92
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !26
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i95

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i95: ; preds = %.lr.ph.i.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i94
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 32 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.hs, %i.hm
  br i1 %.not.i.i.i96, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i97, label %.lr.ph.i.i.i92, !llvm.loop !31

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i97: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i95
  %.pr.i98 = load ptr, ptr %6, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i99

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i99: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i97, %bb.be
  %i.ht = phi ptr [ %.pr.i98, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i97 ], [ %i.hk, %bb.be ] ; 3 uses
  %.not.i.i1.i100 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i1.i100, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit102, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i99
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !33
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit102

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit102: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i99, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i1 %.8

bb.bg:                                            ; preds = %.body, %bb.c
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.j, %bb.c ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5cmsys11SystemTools15GetFilenamePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN25cmBinUtilsWindowsPELinker17ResolveDependencyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_Rb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %7 = alloca %"class.std::vector", align 8       ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK26cmRuntimeDependencyArchive20GetSearchDirectoriesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(440) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.j, align 8
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !33
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.f, ptr %i.e, ptr noundef %i.m)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !27     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.n, align 8, !tbaa !30
  %i.x = load ptr, ptr %7, align 8, !tbaa !61
  %i.y = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %i.z = load ptr, ptr %7, align 8, !tbaa !61     ; 2 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !61  ; 2 uses
  %.not33 = icmp eq ptr %i.z, %i.aa
  br i1 %.not33, label %.critedge25, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.i

bb.g:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.028.034, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.aa
  br i1 %.not, label %.critedge25, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.028.034 = phi ptr [ %i.z, %.lr.ph ], [ %i.an, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !69
  %i.ap = load ptr, ptr %.sroa.028.034, align 8, !tbaa !21, !noalias !69
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.028.034, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24, !noalias !69
  store i64 %i.ar, ptr %5, align 8, !tbaa !25, !alias.scope !72, !noalias !69
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !75, !alias.scope !72, !noalias !69
  store ptr null, ptr %i.ab, align 8, !tbaa !76, !alias.scope !72, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !69
  store i64 0, ptr %6, align 8, !noalias !69
  store i8 47, ptr %i.ae, align 8, !tbaa !26, !noalias !69
  store i64 1, ptr %i.ad, align 8, !tbaa !25, !noalias !69
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !75, !noalias !69
  store i64 1, ptr %i.ac, align 8, !tbaa !25, !alias.scope !79, !noalias !69
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !75, !alias.scope !79, !noalias !69
  store ptr null, ptr %i.af, align 8, !tbaa !76, !alias.scope !79, !noalias !69
  %i.as = load ptr, ptr %1, align 8, !tbaa !21, !noalias !69
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !24, !noalias !69
  store i64 %i.at, ptr %i.ag, align 8, !tbaa !25, !alias.scope !82, !noalias !69
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !75, !alias.scope !82, !noalias !69
  store ptr null, ptr %i.ai, align 8, !tbaa !76, !alias.scope !82, !noalias !69
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %5, i64 3)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !69
  %i.au = load ptr, ptr %3, align 8, !tbaa !21    ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  %i.aw = load ptr, ptr %8, align 8, !tbaa !21    ; 5 uses
  %i.ax = icmp eq ptr %i.aw, %i.ak                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.ax, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.ax, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !24 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !26
  store i8 %i.ba, ptr %i.au, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  store i64 %i.bb, ptr %i.am, align 8, !tbaa !24
  %i.bc = load ptr, ptr %3, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aw, ptr %3, align 8, !tbaa !21
  %i.be = load <2 x i64>, ptr %i.al, align 8, !tbaa !26
  store <2 x i64> %i.be, ptr %i.am, align 8, !tbaa !26
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bf = load i64, ptr %i.aj, align 8, !tbaa !26
  store ptr %i.aw, ptr %3, align 8, !tbaa !21
  %i.bg = load <2 x i64>, ptr %i.al, align 8, !tbaa !26
  store <2 x i64> %i.bg, ptr %i.am, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %8, align 8, !tbaa !21
  store i64 %i.bf, ptr %i.ak, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ak, ptr %8, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bh = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.n ], [ %i.ak, %bb.o ]
  store i64 0, ptr %i.al, align 8, !tbaa !24
  store i8 0, ptr %i.bh, align 1, !tbaa !26
  %i.bi = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ak
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bk = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.bm = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools10PathExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.critedge unwind label %.loopexit

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.bm, label %bb.p, label %bb.g

bb.p:                                             ; preds = %.critedge
  invoke void @_ZNK16cmBinUtilsLinker13NormalizePathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.critedge25 unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.s

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.critedge25:                                      ; preds = %bb.g, %bb.f, %bb.p
  %storemerge = phi i8 [ 1, %bb.p ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i8 %storemerge, ptr %4, align 1, !tbaa !64
  %i.bo = load ptr, ptr %7, align 8, !tbaa !27    ; 3 uses
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !30  ; 2 uses
end_hunk_0
