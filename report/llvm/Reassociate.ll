Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Reassociate?download=true
inline.NumInlined: 5231
inline.NumDeleted: 2361
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZL17buildMultiplyTreeRN4llvm13IRBuilderBaseERNS_15SmallVectorImplIPNS_5ValueEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i16 257, ptr %i.j, align 8
  %i.as = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.0, ptr noundef %i.ag, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit, %bb.g
  %.1 = phi ptr [ %.1.i, %_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit ], [ %i.as, %bb.g ] ; 2 uses
  %i.at = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %.loopexit, label %bb.c, !llvm.loop !586

.loopexit:                                        ; preds = %bb.h, %bb.a
  %.013 = phi ptr [ %i.h, %bb.a ], [ %.1, %bb.h ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm15ReassociatePass11OptimizeMulEPNS_14BinaryOperatorERNS_15SmallVectorImplINS_11reassociate10ValueEntryEEE(ptr noundef nonnull align 8 dereferenceable(585) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::reassociate::ValueEntry", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.94", align 8 ; 11 uses
  %5 = alloca %"class.llvm::IRBuilder", align 8   ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80   ; 5 uses
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ult i32 %i.b, 4
  br i1 %i.d, label %bb.y, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 4, ptr %i.g, align 4, !tbaa !100
  %i.h = load ptr, ptr %2, align 8, !tbaa !55     ; 3 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %.critedge.i
  %i.i = icmp ugt i32 %spec.select.i, 3
  br i1 %i.i, label %.preheader.i, label %_ZN4llvm11SmallVectorINS_11reassociate6FactorELj4EED2Ev.exit

bb.b:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.04968.i = phi i32 [ 1, %.lr.ph.i ], [ %i.z, %.critedge.i ] ; 3 uses
  %.05167.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i, %.critedge.i ]
  %i.j = add i32 %.04968.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.o = zext i32 %.04968.i to i64
  %i.p = add nuw i32 %.04968.i, 1
  %umax.i = call i32 @llvm.umax.i32(i32 %i.b, i32 %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ %i.o, %bb.b ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.04866.i = phi i32 [ 1, %bb.b ], [ %i.u, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.t = icmp eq ptr %i.s, %i.n
  br i1 %i.t, label %bb.d, label %.critedge.split.loop.exit99.i

bb.d:                                             ; preds = %bb.c
  %i.u = add i32 %.04866.i, 1                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next.i, %i.c
  br i1 %i.v, label %bb.c, label %.critedge.i, !llvm.loop !587

.critedge.split.loop.exit99.i:                    ; preds = %bb.c
  %i.w = trunc nuw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.critedge.split.loop.exit99.i
  %.150.lcssa.i = phi i32 [ %i.w, %.critedge.split.loop.exit99.i ], [ %umax.i, %bb.d ]
  %.048.lcssa.i = phi i32 [ %.04866.i, %.critedge.split.loop.exit99.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.x = icmp ugt i32 %.048.lcssa.i, 1
  %i.y = select i1 %i.x, i32 %.048.lcssa.i, i32 0
  %spec.select.i = add i32 %i.y, %.05167.i        ; 2 uses
  %i.z = add i32 %.150.lcssa.i, 1                 ; 2 uses
  %i.aa = icmp ult i32 %i.z, %i.b
  br i1 %i.aa, label %bb.b, label %._crit_edge.i, !llvm.loop !588

._crit_edge74.i:                                  ; preds = %bb.s
  %.val.i = load ptr, ptr %4, align 8, !tbaa !55  ; 8 uses
  %.val57.i = load i32, ptr %i.f, align 8, !tbaa !80 ; 2 uses
  %i.ab = zext i32 %.val57.i to i64               ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 4            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i ; 4 uses
  %i.ad = icmp eq i32 %.val57.i, 0
  br i1 %i.ad, label %bb.t, label %bb.e

bb.e:                                             ; preds = %._crit_edge74.i
  %i.ae = add nuw nsw i64 %i.ab, 1
  %i.af = lshr i64 %i.ae, 1                       ; 6 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %select.unfold.i.i.i.i.i.i, %bb.e
  %.010.i.i.i.i.i.i = phi i64 [ %i.ak, %select.unfold.i.i.i.i.i.i ], [ %i.af, %bb.e ] ; 7 uses
  %i.ag = shl nuw nsw i64 %.010.i.i.i.i.i.i, 4    ; 3 uses
  %i.ah = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ag, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #28 ; 12 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %bb.f

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = icmp eq i64 %.010.i.i.i.i.i.i, 1
  %i.aj = add nuw nsw i64 %.010.i.i.i.i.i.i, 1
  %i.ak = lshr i64 %i.aj, 1
  br i1 %i.ai, label %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !589

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.val.i, i64 16, i1 false), !tbaa.struct !219
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %.010.i.i.i.i.i.i, 1
  br i1 %.not19.i.i.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %.01518.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.am = add nsw i64 %i.ag, -32                  ; 2 uses
  %i.an = lshr exact i64 %i.am, 4
  %i.ao = add nuw nsw i64 %i.an, 1
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.01521.i.i.i.i.i.i.i.prol = phi ptr [ %.015.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.01518.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.020.i.i.i.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01521.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.020.i.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !219
  %i.ap = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %.015.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !590

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01521.i.i.i.i.i.i.i.unr = phi ptr [ %.01518.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi ptr [ %i.ah, %.lr.ph.i.i.preheader.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.am, 48
  br i1 %i.aq, label %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.01521.i.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i ], [ %.01521.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01521.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.020.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !219
  %i.ar = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i.i, i64 16
  %.015.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !219
  %i.as = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i.i, i64 32
  %.015.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !219
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i.i, i64 48
  %.015.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !219
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.015.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %.015.i.i.i.i.i.i.i.3, %i.al
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !591

_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.val.i, ptr noundef nonnull align 8 dereferenceable(12) %.0.lcssa.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !219
  %i.av = icmp eq i64 %i.af, %.010.i.i.i.i.i.i
  br i1 %i.av, label %bb.g, label %bb.i, !prof !96

_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.thread.i.i: ; preds = %select.unfold.i.i.i.i.i.i
  %i.aw = icmp eq i64 %i.af, 0
  br i1 %i.aw, label %bb.g, label %bb.h, !prof !96

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.thread.i.i, %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i
  %.sroa.4.0.i.i19.i.i = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.thread.i.i ], [ %i.af, %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i ]
  %.idx1.i.i = shl nuw nsw i64 %i.af, 4           ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx1.i.i ; 3 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm11reassociate6FactorES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZL22collectMultiplyFactorsRNS0_15SmallVectorImplINS1_10ValueEntryEEERNS7_IS2_EEE3$_0EEEvT_SF_T0_T1_"(ptr noundef %.val.i, ptr noundef %i.ax, ptr noundef %i.ah)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm11reassociate6FactorES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZL22collectMultiplyFactorsRNS0_15SmallVectorImplINS1_10ValueEntryEEERNS7_IS2_EEE3$_0EEEvT_SF_T0_T1_"(ptr noundef %i.ax, ptr noundef nonnull %i.ac, ptr noundef %i.ah)
  %gepdiff.i.i = sub nsw i64 %.idx.i.i, %.idx1.i.i
  %i.ay = ashr exact i64 %gepdiff.i.i, 4
  call fastcc void @"_ZSt16__merge_adaptiveIPN4llvm11reassociate6FactorElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZL22collectMultiplyFactorsRNS0_15SmallVectorImplINS1_10ValueEntryEEERNS7_IS2_EEE3$_0EEEvT_SF_SF_T0_SG_T1_T2_"(ptr noundef %.val.i, ptr noundef %i.ax, ptr noundef nonnull %i.ac, i64 noundef %i.af, i64 noundef %i.ay, ptr noundef %i.ah)
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.thread.i.i
  call fastcc void @"_ZSt21__inplace_stable_sortIPN4llvm11reassociate6FactorEN9__gnu_cxx5__ops15_Iter_comp_iterIZL22collectMultiplyFactorsRNS0_15SmallVectorImplINS1_10ValueEntryEEERNS7_IS2_EEE3$_0EEEvT_SF_T0_"(ptr noundef %.val.i, ptr noundef nonnull %i.ac)
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt17_Temporary_bufferIPN4llvm11reassociate6FactorES2_EC2ES3_l.exit.i.i.i.i
  call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPN4llvm11reassociate6FactorES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZL22collectMultiplyFactorsRNS0_15SmallVectorImplINS1_10ValueEntryEEERNS7_IS2_EEE3$_0EEEvT_SF_T0_T1_T2_"(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ah, i64 noundef %.010.i.i.i.i.i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.4.0.i.i17.i.i = phi i64 [ %.010.i.i.i.i.i.i, %bb.i ], [ 0, %bb.h ], [ %.sroa.4.0.i.i19.i.i, %bb.g ]
  %i.az = shl nuw nsw i64 %.sroa.4.0.i.i17.i.i, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.az) #23
  br label %bb.t

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.s
  %i.ba = phi i32 [ %i.cq, %bb.s ], [ %i.b, %._crit_edge.i ] ; 3 uses
  %i.bb = phi ptr [ %i.cr, %bb.s ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %.04772.i = phi i32 [ %i.cs, %bb.s ], [ 1, %._crit_edge.i ] ; 3 uses
  %i.bc = add i32 %.04772.i, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !128 ; 3 uses
  %reass.sub = sub i32 %i.ba, %.04772.i           ; 2 uses
  %i.bh = add i32 %reass.sub, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i
  %.070.i = phi i32 [ 1, %.preheader.i ], [ %i.bn, %bb.l ] ; 3 uses
  %.169.i = phi i32 [ %.04772.i, %.preheader.i ], [ %i.bo, %bb.l ] ; 3 uses
  %i.bi = zext i32 %.169.i to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !128
  %i.bm = icmp eq ptr %i.bl, %i.bg
  br i1 %i.bm, label %bb.l, label %.critedge2.i

bb.l:                                             ; preds = %bb.k
  %i.bn = add i32 %.070.i, 1
  %i.bo = add i32 %.169.i, 1
  %exitcond.not.i = icmp eq i32 %.070.i, %reass.sub
  br i1 %exitcond.not.i, label %.critedge2.i, label %bb.k, !llvm.loop !592

.critedge2.i:                                     ; preds = %bb.l, %bb.k
  %.1.lcssa.i = phi i32 [ %i.ba, %bb.l ], [ %.169.i, %bb.k ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.bh, %bb.l ], [ %.070.i, %bb.k ] ; 2 uses
  %i.bp = icmp eq i32 %.0.lcssa.i, 1
  br i1 %i.bp, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.critedge2.i
  %i.bq = and i32 %.0.lcssa.i, -2                 ; 4 uses
  %i.br = sub i32 %.1.lcssa.i, %i.bq              ; 2 uses
  %i.bs = load i32, ptr %i.f, align 8, !tbaa !80  ; 2 uses
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !100
  %.not.i.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !96

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11reassociate6FactorELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.bg, i32 %i.bq)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11reassociate6FactorELb1EE9push_backES2_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bu = zext i32 %i.bs to i64
  %i.bv = load ptr, ptr %4, align 8, !tbaa !55
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  store ptr %i.bg, ptr %i.bw, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bq, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !80
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.f, align 8, !tbaa !80
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11reassociate6FactorELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11reassociate6FactorELb1EE9push_backES2_.exit.i: ; preds = %bb.o, %bb.n
  %i.bz = load ptr, ptr %2, align 8, !tbaa !55
  %i.ca = zext i32 %i.br to i64
  %.idx58.i = shl nuw nsw i64 %i.ca, 4            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx58.i ; 4 uses
  %i.cc = zext i32 %i.bq to i64
  %.idx59.i = shl nuw nsw i64 %i.cc, 4            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx59.i ; 2 uses
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !80
  %i.cf = zext i32 %i.ce to i64
  %.idx.i = shl nuw nsw i64 %i.cf, 4
  %i.cg = add nuw nsw i64 %.idx58.i, %.idx59.i
  %gepdiff.i = sub nsw i64 %.idx.i, %i.cg         ; 4 uses
  %i.ch = icmp sgt i64 %gepdiff.i, 16
  br i1 %i.ch, label %bb.p, label %bb.q, !prof !96

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11reassociate6FactorELb1EE9push_backES2_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cb, ptr align 8 %i.cd, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11reassociate6FactorELb1EE9push_backES2_.exit.i
  %i.ci = icmp eq i64 %gepdiff.i, 16
  br i1 %i.ci, label %bb.r, label %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !144
  br label %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i

_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cj = getelementptr inbounds i8, ptr %i.cb, i64 %gepdiff.i
  %i.ck = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 4
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  store i32 %i.cp, ptr %i.a, align 8, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i, %.critedge2.i
  %i.cq = phi i32 [ %i.cp, %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i ], [ %i.ba, %.critedge2.i ] ; 2 uses
  %i.cr = phi ptr [ %i.ck, %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i ], [ %i.bb, %.critedge2.i ]
  %.2.i = phi i32 [ %i.br, %_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE5eraseEPKS2_S5_.exit.i ], [ %.1.lcssa.i, %.critedge2.i ]
  %i.cs = add i32 %.2.i, 1                        ; 2 uses
  %i.ct = icmp ugt i32 %i.cq, %i.cs
  br i1 %i.ct, label %.preheader.i, label %._crit_edge74.i, !llvm.loop !593

bb.t:                                             ; preds = %bb.j, %._crit_edge74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !73
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !210, !nonnull !52, !align !203
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !234
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !235
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !236
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !237
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.dc, align 8, !tbaa !238
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i32 0, ptr %i.dd, align 8, !tbaa !239
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i8 0, ptr %i.de, align 4, !tbaa !240
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 69
  store i8 2, ptr %i.df, align 1, !tbaa !241
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 70
  store i8 7, ptr %i.dg, align 2, !tbaa !242
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.cx, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.cy, align 8, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !102
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !243
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.dj, ptr %i.dm, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #23
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !157
  store i64 %i.do, ptr %5, align 8, !tbaa !157
  %i.dp = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %1)
  br i1 %i.dp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  %.sroa.0.0.copyload.i = load i32, ptr %i.dq, align 4, !tbaa !83
  store i32 %.sroa.0.0.copyload.i, ptr %i.dd, align 8, !tbaa !83
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dr = call noundef ptr @_ZN4llvm15ReassociatePass23buildMinimalMultiplyDAGERNS_13IRBuilderBaseERNS_15SmallVectorImplINS_11reassociate6FactorEEE(ptr noundef nonnull align 8 dereferenceable(585) %0, ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 3 uses
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i, label %_ZL22collectMultiplyFactorsRN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEEERNS0_INS1_6FactorEEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = call noundef i32 @_ZN4llvm15ReassociatePass7getRankEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(585) %0, ptr noundef %i.dr) ; 2 uses
  %i.du = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.dv = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %.not.i16 = icmp eq i32 %i.dv, 0
  br i1 %.not.i16, label %_ZN4llvm11lower_boundIRNS_15SmallVectorImplINS_11reassociate10ValueEntryEEERS3_EEDaOT_OT0_.exit, label %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %bb.w
  %i.dw = zext i32 %i.dv to i64
  br label %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.dw, %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.du, %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.dx = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !199
  %i.ea = icmp ugt i32 %i.dz, %i.dt               ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = xor i64 %i.dx, -1
  %i.ed = add nsw i64 %.017.i.i.i, %i.ec
  %.112.i.i.i = select i1 %i.ea, ptr %i.eb, ptr %.01116.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ea, i64 %i.ed, i64 %i.dx ; 2 uses
  %i.ee = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ee, label %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11lower_boundIRNS_15SmallVectorImplINS_11reassociate10ValueEntryEEERS3_EEDaOT_OT0_.exit, !llvm.loop !9

_ZN4llvm11lower_boundIRNS_15SmallVectorImplINS_11reassociate10ValueEntryEEERS3_EEDaOT_OT0_.exit: ; preds = %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.w
  %.011.lcssa.i.i.i = phi ptr [ %i.du, %bb.w ], [ %.112.i.i.i, %_ZSt9__advanceIPN4llvm11reassociate10ValueEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.dt, ptr %3, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dr, ptr %i.ef, align 8
  %i.eg = call noundef ptr @_ZN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEE15insert_one_implIS2_EEPS2_S5_OT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.011.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZL22collectMultiplyFactorsRN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEEERNS0_INS1_6FactorEEE.exit

_ZL22collectMultiplyFactorsRN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEEERNS0_INS1_6FactorEEE.exit: ; preds = %_ZN4llvm11lower_boundIRNS_15SmallVectorImplINS_11reassociate10ValueEntryEEERS3_EEDaOT_OT0_.exit, %bb.v
  %.0 = phi ptr [ null, %_ZN4llvm11lower_boundIRNS_15SmallVectorImplINS_11reassociate10ValueEntryEEERS3_EEDaOT_OT0_.exit ], [ %i.dr, %bb.v ] ; 2 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cy) #23
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.pre = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.eh = icmp eq ptr %.pre, %i.e
  br i1 %i.eh, label %_ZN4llvm11SmallVectorINS_11reassociate6FactorELj4EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZL22collectMultiplyFactorsRN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEEERNS0_INS1_6FactorEEE.exit
  call void @free(ptr noundef %.pre) #23
  br label %_ZN4llvm11SmallVectorINS_11reassociate6FactorELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_11reassociate6FactorELj4EED2Ev.exit: ; preds = %._crit_edge.i, %_ZL22collectMultiplyFactorsRN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEEERNS0_INS1_6FactorEEE.exit, %bb.x
  %.150 = phi ptr [ %.0, %bb.x ], [ %.0, %_ZL22collectMultiplyFactorsRN4llvm15SmallVectorImplINS_11reassociate10ValueEntryEEERNS0_INS1_6FactorEEE.exit ], [ null, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorINS_11reassociate6FactorELj4EED2Ev.exit
  %.2 = phi ptr [ %.150, %_ZN4llvm11SmallVectorINS_11reassociate6FactorELj4EED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm15ReassociatePass18OptimizeExpressionEPNS_14BinaryOperatorERNS_15SmallVectorImplINS_11reassociate10ValueEntryEEE(ptr noundef nonnull align 8 dereferenceable(585) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %tailrecurse

end_hunk_0
