begin_hunk_0
inline.NumInlined: 6810
inline.NumDeleted: 3465
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i, %.lr.ph362.i
  %.sroa.17.3 = phi ptr [ null, %.lr.ph362.i ], [ %.sroa.17.5, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 11 uses
  %.sroa.10.2 = phi ptr [ null, %.lr.ph362.i ], [ %.sroa.10.4, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 11 uses
  %.sroa.0241.3 = phi ptr [ null, %.lr.ph362.i ], [ %.sroa.0241.5, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 13 uses
  %.0361.i = phi i32 [ 0, %.lr.ph362.i ], [ %.1.lcssa.i, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %.sroa.5210.0360.i = phi i64 [ 0, %.lr.ph362.i ], [ %i.ajw, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 3 uses
  %i.aai = load ptr, ptr %i.zw, align 8, !tbaa !225
end_hunk_1
begin_hunk_2

bb.fy:                                            ; preds = %bb.fx
  %i.adc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.act, ptr noundef nonnull @.str.299, i64 noundef 30) #27 ; 0 uses
  br label %.critedge94.i

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.acx, ptr noundef nonnull align 1 dereferenceable(30) @.str.299, i64 30, i1 false)
  %i.add = load ptr, ptr %i.acw, align 8, !tbaa !169
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 30
  store ptr %i.ade, ptr %i.acw, align 8, !tbaa !169
  br label %.critedge94.i

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i: ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #27
end_hunk_2
begin_hunk_3
_ZN4llvh11raw_ostreamlsEPKc.exit131.thread253.i:  ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  br label %.critedge94.i

bb.ga:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #27
end_hunk_3
begin_hunk_4
  call void %i.ago(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.pr.i32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  br i1 %i.agh, label %bb.gr, label %.critedge94.i

_ZN4llvh11raw_ostreamlsEPKc.exit131.i:            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  br i1 %i.agh, label %bb.gr, label %.critedge94.i

bb.gr:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit131.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i
  %i.agp = getelementptr inbounds nuw i8, ptr %.072354.i, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.gr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %.sroa.19.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.19.1.i, %bb.gr ] ; 2 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.13.1.i, %bb.gr ] ; 5 uses
  %.sroa.0197.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.0197.1.i, %bb.gr ] ; 9 uses
  %.1.lcssa.i = phi i32 [ %.0361.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.4.i31, %bb.gr ]
  %.val.i.i.i149.i = load ptr, ptr %i.qo, align 8, !tbaa !287 ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %.val.i.i.i149.i, null
end_hunk_5
begin_hunk_6
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.ajc
  br label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i

_ZN4llvh11raw_ostreamlsEPKc.exit161.i:            ; preds = %bb.hb, %bb.ha
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0197.0.lcssa.i, %.sroa.13.0.lcssa.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit161.i, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ajs, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i ], [ %.sroa.0197.0.lcssa.i, %_ZN4llvh11raw_ostreamlsEPKc.exit161.i ] ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !220 ; 3 uses
  %.not.i.i.i.i.i.i164.i = icmp eq ptr %i.ajj, null
end_hunk_6
begin_hunk_7

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i165.i = icmp eq ptr %i.ajs, %.sroa.13.0.lcssa.i
  br i1 %.not.i.i.i165.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit161.i
  %.not.i.i2.i.i = icmp eq ptr %.sroa.0197.0.lcssa.i, null
  br i1 %.not.i.i2.i.i, label %.critedge.i.a, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i
  %i.ajt = ptrtoint ptr %.sroa.19.0.lcssa.i to i64
  %i.aju = ptrtoint ptr %.sroa.0197.0.lcssa.i to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.0.lcssa.i, i64 noundef %i.ajv) #26
  br label %.critedge.i.a

_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.hd
end_hunk_7
begin_hunk_8
  %.not306.i = icmp eq i64 %i.ajw, %i.zy
  br i1 %.not306.i, label %.critedge.i.a, label %bb.fh

.critedge94.i:                                    ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit131.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread253.i, %bb.fz, %bb.fy
  %.sroa.19.4.ph.i = phi ptr [ %.sroa.19.0350.i, %bb.fy ], [ %.sroa.19.0350.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread253.i ], [ %.sroa.19.0350.i, %bb.fz ], [ %.sroa.19.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i ], [ %.sroa.19.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.i ]
  %.sroa.13.4.ph.i = phi ptr [ %.sroa.13.0351.i, %bb.fy ], [ %.sroa.13.0351.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread253.i ], [ %.sroa.13.0351.i, %bb.fz ], [ %.sroa.13.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i ], [ %.sroa.13.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.i ] ; 2 uses
  %.sroa.0197.4.ph.i = phi ptr [ %.sroa.0197.0352.i, %bb.fy ], [ %.sroa.0197.0352.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread253.i ], [ %.sroa.0197.0352.i, %bb.fz ], [ %.sroa.0197.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i ], [ %.sroa.0197.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.i ] ; 5 uses
  %.not4.i.i.i166.i = icmp eq ptr %.sroa.0197.4.ph.i, %.sroa.13.4.ph.i
  br i1 %.not4.i.i.i166.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, label %.lr.ph.i.i.i167.i

.lr.ph.i.i.i167.i:                                ; preds = %.critedge94.i, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i
  %.05.i.i.i168.i = phi ptr [ %124, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i ], [ %.sroa.0197.4.ph.i, %.critedge94.i ] ; 3 uses
  %114 = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 16
  %115 = load ptr, ptr %114, align 8, !tbaa !220  ; 3 uses
  %.not.i.i.i.i.i.i169.i = icmp eq ptr %115, null
  br i1 %.not.i.i.i.i.i.i169.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i: ; preds = %.lr.ph.i.i.i167.i
  %116 = load ptr, ptr %115, align 8, !tbaa !7
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 8
  %118 = load ptr, ptr %117, align 8
  call void %118(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %115) #27
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i, %.lr.ph.i.i.i167.i
  %119 = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 8
  %120 = load ptr, ptr %119, align 8, !tbaa !220  ; 3 uses
  %.not.i1.i.i.i.i.i172.i = icmp eq ptr %120, null
  br i1 %.not.i1.i.i.i.i.i172.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i
  %121 = load ptr, ptr %120, align 8, !tbaa !7
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %120) #27
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i
  %124 = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 24 ; 2 uses
  %.not.i.i.i175.i = icmp eq ptr %124, %.sroa.13.4.ph.i
  br i1 %.not.i.i.i175.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, label %.lr.ph.i.i.i167.i, !llvm.loop !300

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i, %.critedge94.i
  %.not.i.i2.i180.i = icmp eq ptr %.sroa.0197.4.ph.i, null
  br i1 %.not.i.i2.i180.i, label %.critedge.i.a, label %125

125:                                              ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i
  %126 = ptrtoint ptr %.sroa.19.4.ph.i to i64
  %127 = ptrtoint ptr %.sroa.0197.4.ph.i to i64
  %128 = sub i64 %126, %127
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.4.ph.i, i64 noundef %128) #26
  br label %.critedge.i.a

.critedge.i.a:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i, %125, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, %bb.hi, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, %bb.fv, %bb.fu, %bb.fq, %bb.fp, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i
  %.sroa.17.4 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.17.3, %bb.fq ], [ %.sroa.17.3, %bb.fp ], [ %.sroa.17.3, %bb.fu ], [ %.sroa.17.3, %bb.fv ], [ %.sroa.17.3, %125 ], [ %.sroa.17.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.17.3, %bb.hi ], [ %.sroa.17.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.17.5, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %.sroa.10.3 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.10.2, %bb.fq ], [ %.sroa.10.2, %bb.fp ], [ %.sroa.10.2, %bb.fu ], [ %.sroa.10.2, %bb.fv ], [ %.sroa.10.2, %125 ], [ %.sroa.10.2, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.10.2, %bb.hi ], [ %.sroa.10.2, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.10.4, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %.sroa.0241.4 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.0241.3, %bb.fq ], [ %.sroa.0241.3, %bb.fp ], [ %.sroa.0241.3, %bb.fu ], [ %.sroa.0241.3, %bb.fv ], [ %.sroa.0241.3, %125 ], [ %.sroa.0241.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.0241.3, %bb.hi ], [ %.sroa.0241.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.0241.5, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %spec.select.i = phi ptr [ %i.sk, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ null, %bb.fq ], [ null, %bb.fp ], [ null, %bb.fu ], [ null, %bb.fv ], [ null, %125 ], [ null, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ null, %bb.hi ], [ null, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %i.sk, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %i.ajx = load ptr, ptr %96, align 8, !tbaa !259
  call void @_ZdlPv(ptr noundef %i.ajx) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
end_hunk_8
begin_hunk_9
_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %bb.ed, %bb.ec, %bb.dz, %bb.dy, %bb.dv
  %.sroa.17.2 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.17.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.sroa.10.1 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.10.3, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.sroa.0241.2 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.0241.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.17301.i = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %spec.select.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %i.akc = phi ptr [ %i.rx, %bb.dv ], [ %i.rx, %bb.ec ], [ %i.rx, %bb.ed ], [ %.pr298.pre.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ %i.rx, %bb.dy ], [ %i.rx, %bb.dz ] ; 2 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !7
end_hunk_9
begin_hunk_10
_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit: ; preds = %bb.dt, %bb.du, %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i
  %.sroa.17.6 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.17.2, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %.sroa.17.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %.sroa.10.5 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.10.1, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %.sroa.10.3, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  %.sroa.0241.6 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.0241.2, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %.sroa.0241.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %.17302.i = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.17301.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %spec.select.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %94)
end_hunk_10
begin_hunk_11
  call void @_ZN6hermes6parser8JSParser14preParseBufferERNS_7ContextEj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.827") align 8 %8, ptr noundef nonnull align 8 dereferenceable(656) %i.z, i32 noundef %i.q) #27
  %i.ad = load ptr, ptr %8, align 8, !tbaa !1127  ; 2 uses
  %.not51 = icmp eq ptr %i.ad, null
  br i1 %.not51, label %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef zeroext i1 @_ZNK6hermes6parser8JSParser19getUseStaticBuiltinEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pre = load ptr, ptr %0, align 8, !tbaa !550
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.a, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit
  %i.ah = phi ptr [ %.pre, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.a ], [ %i.z, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit ]
end_hunk_12
begin_hunk_13
  call void @_ZN6hermes10generateJSERN4llvh11raw_ostreamEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(36) %i.cd, ptr noundef %.0, i1 noundef zeroext %i.cf) #27
  br label %bb.t

_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.g, %bb.r, %bb.s, %bb.o, %bb.k, %bb.n, %bb.m, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45
  %.3 = phi ptr [ null, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45 ], [ null, %bb.g ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ null, %bb.o ], [ null, %bb.k ], [ %.0, %bb.s ], [ %.0, %bb.r ]
  ret ptr %.3
}

end_hunk_13
