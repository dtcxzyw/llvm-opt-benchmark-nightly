inline.NumInlined: 8841
inline.NumDeleted: 3439
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface3RunEiPKPKc:bb.a
  call void %i.agp(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0396.1) #37, !inline_history !517
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit299

_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit299: ; preds = %bb.be, %bb.av, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit180, %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i298
  %.14449 = phi i32 [ %.14, %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i298 ], [ %.14, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit180 ], [ 1, %bb.av ], [ 1, %bb.be ] ; 2 uses
  %.sroa.0409.2448 = phi ptr [ %.sroa.0409.1, %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i298 ], [ %.sroa.0409.1, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit180 ], [ null, %bb.av ], [ %i.jp, %bb.be ] ; 2 uses
  %.not.i300 = icmp eq ptr %.sroa.0402.0, null
  br i1 %.not.i300, label %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302, label %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i301

_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i301: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit299
  %i.agq = load ptr, ptr %.sroa.0402.0, align 8, !tbaa !82
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load ptr, ptr %i.agr, align 8
  call void %i.ags(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0402.0) #37, !inline_history !518
  br label %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302

_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302: ; preds = %.noexc169, %_ZN6google8protobuf8compiler12_GLOBAL__N_138PopulateSingleSimpleDescriptorDatabaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread424, %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit299, %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i301
  %.sroa.0409.2448475 = phi ptr [ %.sroa.0409.2448, %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i301 ], [ %.sroa.0409.2448, %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit299 ], [ null, %_ZN6google8protobuf8compiler12_GLOBAL__N_138PopulateSingleSimpleDescriptorDatabaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread424 ], [ null, %.noexc169 ] ; 3 uses
  %.14449474 = phi i32 [ %.14449, %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i301 ], [ %.14449, %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit299 ], [ 1, %_ZN6google8protobuf8compiler12_GLOBAL__N_138PopulateSingleSimpleDescriptorDatabaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread424 ], [ 1, %.noexc169 ]
  %i.agt = load ptr, ptr %18, align 8, !tbaa !334 ; 5 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !319 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.agt, %i.agv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i303

.lr.ph.i.i.i303:                                  ; preds = %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302, %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aha, %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.agt, %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302 ] ; 2 uses
  %i.agw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.i.i.i304 = icmp eq ptr %i.agw, null
  br i1 %.not.i.i.i.i.i304, label %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6google8protobuf24SimpleDescriptorDatabaseEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf24SimpleDescriptorDatabaseEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i303
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !82
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8
  call void %i.agz(ptr noundef nonnull align 8 dereferenceable(104) %i.agw) #37, !inline_history !519
  br label %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf24SimpleDescriptorDatabaseEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i303
  %i.aha = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i305 = icmp eq ptr %i.aha, %i.agv
  br i1 %.not.i.i.i305, label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i303, !llvm.loop !520

_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302
  %.not.i.i1.i = icmp eq ptr %i.agt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.gj

bb.gj:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !335
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = ptrtoint ptr %i.agt to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %i.agt, i64 noundef %i.ahf) #42
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ahg = load ptr, ptr %17, align 8, !tbaa !367 ; 3 uses
  %.not.i306 = icmp eq ptr %i.ahg, null
  br i1 %.not.i306, label %_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev.exit308, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPoolEEclEPS2_.exit.i307

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPoolEEclEPS2_.exit.i307: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  call void @_ZN6google8protobuf14DescriptorPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ahg) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.ahg, i64 noundef 120) #42
  br label %_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev.exit308

_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev.exit308: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPoolEEclEPS2_.exit.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.ahh = load ptr, ptr %16, align 8, !tbaa !362 ; 3 uses
  %.not.i309 = icmp eq ptr %i.ahh, null
  br i1 %.not.i309, label %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit311, label %_ZNKSt14default_deleteIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterEEclEPS4_.exit.i310

_ZNKSt14default_deleteIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterEEclEPS4_.exit.i310: ; preds = %_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev.exit308
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !82
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8
  call void %i.ahk(ptr noundef nonnull align 8 dereferenceable(42) %i.ahh) #37, !inline_history !521
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit311

_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit311: ; preds = %_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev.exit308, %_ZNKSt14default_deleteIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterEEclEPS4_.exit.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %.not.i312 = icmp eq ptr %.sroa.0409.2448475, null
  br i1 %.not.i312, label %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit314, label %_ZNKSt14default_deleteIN6google8protobuf8compiler14DiskSourceTreeEEclEPS3_.exit.i313

_ZNKSt14default_deleteIN6google8protobuf8compiler14DiskSourceTreeEEclEPS3_.exit.i313: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit311
  %i.ahl = load ptr, ptr %.sroa.0409.2448475, align 8, !tbaa !82
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8
  call void %i.ahn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0409.2448475) #37, !inline_history !522
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit314

_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit314: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit311, %_ZNKSt14default_deleteIN6google8protobuf8compiler14DiskSourceTreeEEclEPS3_.exit.i313
  %i.aho = load ptr, ptr %15, align 8, !tbaa !514 ; 3 uses
  %.not.i.i.i315 = icmp eq ptr %i.aho, null
  br i1 %.not.i.i.i315, label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit314
  %i.ahp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !523
  %i.ahr = ptrtoint ptr %i.ahq to i64
  %i.ahs = ptrtoint ptr %i.aho to i64
  %i.aht = sub i64 %i.ahr, %i.ahs
  call void @_ZdlPvm(ptr noundef nonnull %i.aho, i64 noundef %i.aht) #42
  br label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit314, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.gm

.body:                                            ; preds = %.body234, %bb.aw
  %.sroa.0396.3 = phi ptr [ %.sroa.0396.1, %.body234 ], [ %.sroa.0396.0, %bb.aw ] ; 2 uses
  %.sroa.0409.3 = phi ptr [ %.sroa.0409.1, %.body234 ], [ %.sroa.0409.0, %bb.aw ] ; 2 uses
  %.pn145.pn = phi { ptr, i32 } [ %.pn145, %.body234 ], [ %i.it, %bb.aw ] ; 2 uses
  %.not.i316 = icmp eq ptr %.sroa.0396.3, null
  br i1 %.not.i316, label %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318, label %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i317

_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i317: ; preds = %bb.bm, %bb.bj, %.body
  %.pn145.pn469 = phi { ptr, i32 } [ %.pn145.pn, %.body ], [ %i.kn, %bb.bj ], [ %i.kr, %bb.bm ]
  %.sroa.0409.3468 = phi ptr [ %.sroa.0409.3, %.body ], [ %i.jp, %bb.bj ], [ %i.jp, %bb.bm ]
  %.sroa.0396.3466 = phi ptr [ %.sroa.0396.3, %.body ], [ %i.kg, %bb.bj ], [ %i.kg, %bb.bm ] ; 2 uses
  %i.ahu = load ptr, ptr %.sroa.0396.3466, align 8, !tbaa !82
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8
  call void %i.ahw(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0396.3466) #37, !inline_history !517
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318

_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318: ; preds = %bb.bi, %bb.bd, %bb.az, %bb.bb, %bb.bk, %bb.bf, %bb.bl, %bb.ba, %.body, %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i317
  %.pn145.pn457 = phi { ptr, i32 } [ %.pn145.pn469, %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i317 ], [ %.pn145.pn, %.body ], [ %i.kq, %bb.bl ], [ %i.js, %bb.bf ], [ %i.jo, %bb.bb ], [ %i.jq, %bb.bd ], [ %i.kh, %bb.bi ], [ %i.jn, %bb.ba ], [ %i.jl, %bb.az ], [ %i.kp, %bb.bk ] ; 2 uses
  %.sroa.0409.3456 = phi ptr [ %.sroa.0409.3468, %_ZNKSt14default_deleteIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseEEclEPS3_.exit.i317 ], [ %.sroa.0409.3, %.body ], [ %i.jp, %bb.bl ], [ null, %bb.bf ], [ null, %bb.bb ], [ null, %bb.bd ], [ %i.jp, %bb.bi ], [ null, %bb.ba ], [ null, %bb.az ], [ %i.jp, %bb.bk ] ; 2 uses
  %.not.i319 = icmp eq ptr %.sroa.0402.0, null
  br i1 %.not.i319, label %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit321, label %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i320

_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i320: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318
  %i.ahx = load ptr, ptr %.sroa.0402.0, align 8, !tbaa !82
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8
  call void %i.ahz(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0402.0) #37, !inline_history !518
  br label %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit321

_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit321: ; preds = %.loopexit519, %.loopexit.split-lp520.loopexit.split-lp, %.loopexit.split-lp520.loopexit, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit177, %_ZNSt6vectorIPN6google8protobuf18DescriptorDatabaseESaIS3_EED2Ev.exit193, %.body.i, %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318, %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i320
  %.sroa.0409.3456481 = phi ptr [ %.sroa.0409.3456, %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i320 ], [ %.sroa.0409.3456, %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318 ], [ null, %.body.i ], [ null, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit177 ], [ null, %_ZNSt6vectorIPN6google8protobuf18DescriptorDatabaseESaIS3_EED2Ev.exit193 ], [ null, %.loopexit.split-lp520.loopexit ], [ null, %.loopexit.split-lp520.loopexit.split-lp ], [ null, %.loopexit519 ] ; 3 uses
  %.pn145.pn457480 = phi { ptr, i32 } [ %.pn145.pn457, %_ZNKSt14default_deleteIN6google8protobuf24MergedDescriptorDatabaseEEclEPS2_.exit.i320 ], [ %.pn145.pn457, %_ZNSt10unique_ptrIN6google8protobuf8compiler28SourceTreeDescriptorDatabaseESt14default_deleteIS3_EED2Ev.exit318 ], [ %.pn28.i, %.body.i ], [ %lpad.phi535, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit177 ], [ %.pn123, %_ZNSt6vectorIPN6google8protobuf18DescriptorDatabaseESaIS3_EED2Ev.exit193 ], [ %lpad.loopexit525, %.loopexit.split-lp520.loopexit ], [ %lpad.loopexit.split-lp526, %.loopexit.split-lp520.loopexit.split-lp ], [ %lpad.loopexit521, %.loopexit519 ]
  call void @_ZNSt6vectorISt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.aia = load ptr, ptr %16, align 8, !tbaa !362 ; 3 uses
  %.not.i322 = icmp eq ptr %i.aia, null
  br i1 %.not.i322, label %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit324, label %_ZNKSt14default_deleteIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterEEclEPS4_.exit.i323

_ZNKSt14default_deleteIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterEEclEPS4_.exit.i323: ; preds = %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit321
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !82
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8
  call void %i.aid(ptr noundef nonnull align 8 dereferenceable(42) %i.aia) #37, !inline_history !521
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit324

_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit324: ; preds = %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit321, %_ZNKSt14default_deleteIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterEEclEPS4_.exit.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %.not.i325 = icmp eq ptr %.sroa.0409.3456481, null
  br i1 %.not.i325, label %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit327, label %_ZNKSt14default_deleteIN6google8protobuf8compiler14DiskSourceTreeEEclEPS3_.exit.i326

_ZNKSt14default_deleteIN6google8protobuf8compiler14DiskSourceTreeEEclEPS3_.exit.i326: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit324
  %i.aie = load ptr, ptr %.sroa.0409.3456481, align 8, !tbaa !82
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aig = load ptr, ptr %i.aif, align 8
  call void %i.aig(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0409.3456481) #37, !inline_history !522
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit327

_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit327: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterESt14default_deleteIS4_EED2Ev.exit324, %_ZNKSt14default_deleteIN6google8protobuf8compiler14DiskSourceTreeEEclEPS3_.exit.i326
  %i.aih = load ptr, ptr %15, align 8, !tbaa !514 ; 3 uses
  %.not.i.i.i328 = icmp eq ptr %i.aih, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit329, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit327
  %i.aii = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !523
  %i.aik = ptrtoint ptr %i.aij to i64
  %i.ail = ptrtoint ptr %i.aih to i64
  %i.aim = sub i64 %i.aik, %i.ail
  call void @_ZdlPvm(ptr noundef nonnull %i.aih, i64 noundef %i.aim) #42
  br label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit329

_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit329: ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler14DiskSourceTreeESt14default_deleteIS3_EED2Ev.exit327, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  resume { ptr, i32 } %.pn145.pn457480

bb.gm:                                            ; preds = %bb.a, %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit, %bb.b
  %.15 = phi i32 [ %.14449474, %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EED2Ev.exit ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.15
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8compiler20CommandLineInterface5ClearEv(ptr noundef nonnull align 8 dereferenceable(647) initializes((8, 16)) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %class.anon.387, align 8            ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %class.anon.387, align 8            ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !101
  %i.d = load ptr, ptr %0, align 8, !tbaa !105
  store i8 0, ptr %i.d, align 1, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !257  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !258  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.o = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #42
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !259

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !258
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !133  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i4, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i5

.lr.ph.i.i.i.i5:                                  ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i6 = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.v, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i6, align 8, !tbaa !105 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i5
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #42
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i.i.i7, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i5, !llvm.loop !138

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !133
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !7  ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.ae, ptr %2, align 8, !tbaa !254
  call void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 32, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.ah = icmp ult i64 %i.af, 128
  call void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i1 noundef zeroext %i.ah, i1 noundef zeroext false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 62, ptr %i.b, align 8, !tbaa !30
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !105
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.aj, ptr noundef nonnull align 1 dereferenceable(62) @.str.170, i64 62, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !105 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = load ptr, ptr %3, align 8, !tbaa !105   ; 6 uses
  %i.as = icmp eq ptr %i.ar, %i.ai                ; 2 uses
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit
  br i1 %i.as, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit
  br i1 %i.as, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.at = load i64, ptr %i.al, align 8, !tbaa !101 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %.not21.i = icmp eq ptr %3, %i.an
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %5, !prof !42

5:                                                ; preds = %bb.c
  switch i64 %i.at, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %5
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !34
  store i8 %i.av, ptr %i.ao, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ar, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %5
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !101 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !101
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !105
  %i.bb = load <2 x i64>, ptr %i.al, align 8, !tbaa !34
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !tbaa !34
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !34
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.be = load <2 x i64>, ptr %i.al, align 8, !tbaa !34
  store <2 x i64> %i.be, ptr %i.bd, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ao, ptr %3, align 8, !tbaa !105
  store i64 %i.bc, ptr %i.ai, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %3, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %6 = phi ptr [ %i.ao, %bb.f ], [ %i.ai, %bb.g ], [ %i.ar, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.al, align 8, !tbaa !101
  store i8 0, ptr %6, align 1, !tbaa !34
  %i.bf = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ai
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !7  ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.bj, ptr %1, align 8, !tbaa !254
  call void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef 32, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.bm = icmp ult i64 %i.bk, 128
  call void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i1 noundef zeroext %i.bm, i1 noundef zeroext false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit8

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.bn, ptr %4, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 69, ptr %i.a, align 8, !tbaa !30
  %i.bo = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.bo, ptr %4, align 8, !tbaa !105
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %i.bo, ptr noundef nonnull align 1 dereferenceable(69) @.str.171, i64 69, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !101
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = load ptr, ptr %4, align 8, !tbaa !105   ; 6 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn                ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit8
  br i1 %i.bx, label %bb.i, label %.thread.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5clearEv.exit8
  br i1 %i.bx, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.by = load i64, ptr %i.bq, align 8, !tbaa !101 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %.not21.i13 = icmp eq ptr %4, %i.bs
  br i1 %.not21.i13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18, label %7, !prof !42

7:                                                ; preds = %bb.i
  switch i64 %i.by, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %7
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !34
  store i8 %i.ca, ptr %i.bt, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14

bb.k:                                             ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14: ; preds = %bb.k, %bb.j, %7
  %i.cb = load i64, ptr %i.bq, align 8, !tbaa !101 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !101
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !105
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !34
  %.pre.i15 = load ptr, ptr %4, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18

.thread.i17:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !105
  %i.cg = load <2 x i64>, ptr %i.bq, align 8, !tbaa !34
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !tbaa !34
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !34
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !105
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cj = load <2 x i64>, ptr %i.bq, align 8, !tbaa !34
  store <2 x i64> %i.cj, ptr %i.ci, align 8, !tbaa !34
  %.not.i12 = icmp eq ptr %i.bt, null
  br i1 %.not.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11
  store ptr %i.bt, ptr %4, align 8, !tbaa !105
  store i64 %i.ch, ptr %i.bn, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11, %.thread.i17
  store ptr %i.bn, ptr %4, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14, %bb.l, %bb.m
  %8 = phi ptr [ %i.bt, %bb.l ], [ %i.bn, %bb.m ], [ %i.bw, %bb.i ], [ %.pre.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14 ]
  store i64 0, ptr %i.bq, align 8, !tbaa !101
  store i8 0, ptr %8, align 1, !tbaa !34
  %i.ck = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bn
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18
  %i.cm = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !250 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !251 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cr, %i.cp
  br i1 %.not.i.i22, label %_ZNSt6vectorIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZSt8_DestroyIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i24 = phi ptr [ %i.dj, %_ZSt8_DestroyIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveEEvPT_.exit.i.i.i.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ] ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i24, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !105 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i24, i64 88 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i23
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !34
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i26: ; preds = %.lr.ph.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i25
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i24, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !105 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i24, i64 56 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i26
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !34
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i27
  %i.de = load ptr, ptr %.05.i.i.i.i24, align 8, !tbaa !105 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i24, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !34
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #42
  br label %_ZSt8_DestroyIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i24, i64 104 ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.dj, %i.cr
  br i1 %.not.i.i.i.i28, label %_ZSt8_DestroyIPN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i23, !llvm.loop !252

_ZSt8_DestroyIPN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveEEvPT_.exit.i.i.i.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !251
  br label %_ZNSt6vectorIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveESaIS4_EE5clearEv.exit

_ZNSt6vectorIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveESaIS4_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZSt8_DestroyIPN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %i.dl, align 8, !tbaa !101
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !105
  store i8 0, ptr %i.dm, align 1, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !135 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !133 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.dq, %i.do
  br i1 %.not.i.i31, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit39, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_ZNSt6vectorIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveESaIS4_EE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i35
  %.05.i.i.i.i33 = phi ptr [ %i.dw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i35 ], [ %i.do, %_ZNSt6vectorIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveESaIS4_EE5clearEv.exit ] ; 3 uses
  %i.dr = load ptr, ptr %.05.i.i.i.i33, align 8, !tbaa !105 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i33, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i32
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !34
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #42
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i35

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.dw, %i.dq
  br i1 %.not.i.i.i.i36, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37, label %.lr.ph.i.i.i.i32, !llvm.loop !138

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i35
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !133
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit39

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit39: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler20CommandLineInterface15OutputDirectiveESaIS4_EE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 0, ptr %i.dy, align 8, !tbaa !101
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !105
  store i8 0, ptr %i.dz, align 1, !tbaa !34
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 0, ptr %i.eb, align 8, !tbaa !101
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !105
  store i8 0, ptr %i.ec, align 1, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 0, ptr %i.ed, align 8, !tbaa !248
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %i.ef, align 8, !tbaa !101
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !105
  store i8 0, ptr %i.eg, align 1, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 0, ptr %i.eh, align 8, !tbaa !524
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.ei, align 4, !tbaa !525
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.ej, align 8, !tbaa !444
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 0, ptr %i.ek, align 4, !tbaa !511
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 641
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 0, ptr %i.em, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.el, i8 0, i64 5, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6google8protobuf8compiler20CommandLineInterface14ParseArgumentsEiPKPKc(ptr noundef nonnull align 8 dereferenceable(647) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.23", align 8    ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 8 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"struct.std::pair.262", align 8   ; 21 uses
  %16 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !192    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !101
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #37
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.c, i64 noundef %i.f) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not424 = icmp sgt i32 %1, 1
  br i1 %.not424, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !192  ; 5 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !34
  %i.o = icmp eq i8 %i.n, 64
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler20CommandLineInterface18ExpandArgumentFileEPKcPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE(ptr nonnull align 8 poison, ptr noundef nonnull %i.p, ptr noundef nonnull %6)
          to label %bb.d unwind label %.loopexit363

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.49, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp364 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #37
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.u, i64 noundef %i.v)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %.loopexit.split-lp364 ; 0 uses

end_hunk_0
