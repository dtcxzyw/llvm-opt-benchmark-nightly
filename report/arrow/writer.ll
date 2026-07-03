inline.NumInlined: 5023
inline.NumDeleted: 1781
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10DoubleTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i362, %bb.ml, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33.i365, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #28, !noalias !870
  call void @llvm.lifetime.end.p0(ptr nonnull %163)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.mr:                                            ; preds = %tailrecurse
  %i.avv = getelementptr inbounds nuw i8, ptr %.tr1790, i64 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.lifetime.start.p0(ptr nonnull %161)
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #28, !noalias !884
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %157, i8 0, i64 16, i1 false), !noalias !884
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #28, !noalias !884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.lifetime.start.p0(ptr nonnull %156), !noalias !884
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !138, !noalias !890 ; 2 uses
  %i.avy = icmp eq i64 %i.avx, 0
  br i1 %i.avy, label %bb.ms, label %_ZN5arrow6StatusD2Ev.exit.i.i

bb.ms:                                            ; preds = %bb.mr
  %i.avz = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !45, !noalias !891 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 16
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !33, !noalias !891 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awa, i64 24
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !118, !noalias !891 ; 4 uses
  %.not.i.i.i.i.i.i396 = icmp eq ptr %i.awe, null
  br i1 %.not.i.i.i.i.i.i396, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8 ; 3 uses
  %i.awg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !891
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.awg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.awh = load i32, ptr %i.awf, align 4, !tbaa !3, !noalias !891
  %i.awi = add nsw i32 %i.awh, 1
  store i32 %i.awi, ptr %i.awf, align 4, !tbaa !3, !noalias !891
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i: ; preds = %bb.mu, %bb.ms
  store ptr %i.awc, ptr %157, align 16, !tbaa !351, !noalias !890
  %i.awj = getelementptr inbounds nuw i8, ptr %157, i64 8
  store ptr %i.awe, ptr %i.awj, align 8, !tbaa !118, !noalias !890
  br label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i: ; preds = %bb.mt
  %i.awk = atomicrmw volatile add ptr %i.awf, i32 1 acq_rel, align 4, !noalias !891 ; 0 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %157, i64 8 ; 2 uses
  %.pre.i397 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !118, !noalias !890 ; 8 uses
  store ptr %i.awc, ptr %157, align 16, !tbaa !351, !noalias !890
  store ptr %i.awe, ptr %.phi.trans.insert.i, align 8, !tbaa !118, !noalias !890
  %.not.i.i.i.i56.i.i = icmp eq ptr %.pre.i397, null
  br i1 %.not.i.i.i.i56.i.i, label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i, label %bb.mv

bb.mv:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i
  %i.awl = getelementptr inbounds nuw i8, ptr %.pre.i397, i64 8 ; 4 uses
  %i.awm = load atomic i64, ptr %i.awl acquire, align 8, !noalias !890 ; 2 uses
  %i.awn = icmp eq i64 %i.awm, 4294967297
  %i.awo = trunc i64 %i.awm to i32                ; 2 uses
  br i1 %i.awn, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  store i32 0, ptr %i.awl, align 8, !tbaa !125, !noalias !890
  %i.awp = getelementptr inbounds nuw i8, ptr %.pre.i397, i64 12
  store i32 0, ptr %i.awp, align 4, !tbaa !127, !noalias !890
  %i.awq = load ptr, ptr %.pre.i397, align 8, !tbaa !55, !noalias !890
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 16
  %i.aws = load ptr, ptr %i.awr, align 8, !noalias !890
  tail call void %i.aws(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i397) #28, !noalias !890, !inline_history !894
  %i.awt = load ptr, ptr %.pre.i397, align 8, !tbaa !55, !noalias !890
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  %i.awv = load ptr, ptr %i.awu, align 8, !noalias !890
  tail call void %i.awv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i397) #28, !noalias !890, !inline_history !894
  br label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i

bb.mx:                                            ; preds = %bb.mv
  %i.aww = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i.i.i57.i.i = icmp eq i8 %i.aww, 0
  br i1 %.not.i.i.i.i.i57.i.i, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.awx = add nsw i32 %i.awo, -1
  store i32 %i.awx, ptr %i.awl, align 8, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.mz:                                            ; preds = %bb.mx
  %i.awy = atomicrmw volatile add ptr %i.awl, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.mz, %bb.my
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.awo, %bb.my ], [ %i.awy, %bb.mz ]
  %i.awz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.awz, label %bb.na, label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i, !prof !129

bb.na:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i397) #28, !noalias !890
  br label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.mr
  %i.axa = shl i64 %i.avx, 2
  %i.axb = add i64 %i.axa, 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #28, !noalias !890
  store i32 0, ptr %i.bl, align 4, !tbaa !3, !noalias !890
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #28, !noalias !890
  %i.axc = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !45, !noalias !890
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 16
  %i.axf = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.axg = load i64, ptr %i.axf, align 8, !tbaa !647, !noalias !890
  %i.axh = shl i64 %i.axg, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.axe, i64 noundef %i.axh, i64 noundef 4, ptr noundef nonnull %i.bl)
          to label %.noexc.i384 unwind label %bb.pn, !noalias !884

.noexc.i384:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.axi = load ptr, ptr %153, align 8, !tbaa !39, !noalias !890 ; 3 uses
  store ptr %i.axi, ptr %158, align 8, !tbaa !39, !alias.scope !887, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #28, !noalias !890
  %i.axj = icmp eq ptr %i.axi, null
  br i1 %i.axj, label %_ZN5arrow6StatusD2Ev.exit61.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread94.i

_ZN5arrow6StatusD2Ev.exit.thread94.i:             ; preds = %.noexc.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #28, !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %156), !noalias !884
  store ptr %i.axi, ptr %0, align 8, !tbaa !39, !alias.scope !884
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28, !noalias !884
  br label %.critedge.i385

_ZN5arrow6StatusD2Ev.exit61.i.i:                  ; preds = %.noexc.i384
  %i.axk = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !890
  %i.axl = icmp sgt i32 %i.axk, 0
  %i.axm = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !890 ; 3 uses
  br i1 %i.axl, label %bb.nb, label %bb.ns

bb.nb:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 40
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !45, !noalias !890
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 16
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !33, !noalias !890
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 9
  %i.axs = load i8, ptr %i.axr, align 1, !tbaa !346, !range !187, !noalias !890, !noundef !183
  %i.axt = trunc nuw i8 %i.axs to i1
  br i1 %i.axt, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %158, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit.i395 unwind label %bb.pn, !noalias !884

bb.nd:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #28, !noalias !890
  %i.axu = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !182, !noalias !890, !nonnull !183, !align !184
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !364, !noalias !890
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %154, i64 noundef %i.axb, ptr noundef %i.axx)
          to label %.noexc41.i unwind label %bb.pn, !noalias !884

.noexc41.i:                                       ; preds = %bb.nd
  %i.axy = load ptr, ptr %154, align 8, !tbaa !39, !noalias !890
  %i.axz = icmp eq ptr %i.axy, null               ; 2 uses
  br i1 %i.axz, label %bb.ng, label %bb.ne, !prof !256

bb.ne:                                            ; preds = %.noexc41.i
  store ptr null, ptr %158, align 8, !tbaa !39, !alias.scope !887, !noalias !884
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %158, ptr noundef nonnull align 8 dereferenceable(8) %154)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i unwind label %bb.nf, !noalias !884

bb.nf:                                            ; preds = %bb.ne
  %i.aya = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.ng:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #28, !noalias !890
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.ayb = getelementptr inbounds nuw i8, ptr %154, i64 8 ; 2 uses
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !351, !noalias !901 ; 2 uses
  store i64 %i.ayc, ptr %155, align 8, !tbaa !351, !alias.scope !902, !noalias !890
  store ptr null, ptr %i.ayb, align 8, !tbaa !351, !noalias !901
  %i.ayd = getelementptr inbounds nuw i8, ptr %.tr1790, i64 32
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !903, !noalias !890 ; 8 uses
  %.cast.i.i = inttoptr i64 %i.ayc to ptr
  %i.ayf = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 16
  %i.ayg = load ptr, ptr %i.ayf, align 8, !noalias !890 ; 7 uses
  %i.ayh = load i32, ptr %i.aye, align 4, !tbaa !3, !noalias !890 ; 6 uses
  %i.ayi = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !890
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 16
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !138, !noalias !890 ; 6 uses
  %.not125.i.i = icmp slt i64 %i.ayk, 0
  br i1 %.not125.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ng
  %i.ayl = ptrtoaddr ptr %i.ayg to i64
  %i.aym = ptrtoaddr ptr %i.aye to i64
  %i.ayn = add nuw i64 %i.ayk, 1                  ; 2 uses
  %min.iters.check3006 = icmp ult i64 %i.ayk, 7
  %i.ayo = sub i64 %i.ayl, %i.aym
  %diff.check3004 = icmp ult i64 %i.ayo, 32
  %or.cond = select i1 %min.iters.check3006, i1 true, i1 %diff.check3004
  br i1 %or.cond, label %.lr.ph.i.i.preheader3025, label %vector.ph3007

vector.ph3007:                                    ; preds = %.lr.ph.i.i.preheader
  %n.vec3009 = and i64 %i.ayn, -8                 ; 3 uses
  %broadcast.splatinsert3010 = insertelement <4 x i32> poison, i32 %i.ayh, i64 0
  %broadcast.splat3011 = shufflevector <4 x i32> %broadcast.splatinsert3010, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body3012

vector.body3012:                                  ; preds = %vector.body3012, %vector.ph3007
  %index3013 = phi i64 [ 0, %vector.ph3007 ], [ %index.next3016, %vector.body3012 ] ; 3 uses
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %index3013 ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16
  %wide.load3014 = load <4 x i32>, ptr %i.ayp, align 4, !tbaa !3, !noalias !890
  %wide.load3015 = load <4 x i32>, ptr %i.ayq, align 4, !tbaa !3, !noalias !890
  %i.ayr = sub nsw <4 x i32> %wide.load3014, %broadcast.splat3011
  %i.ays = sub nsw <4 x i32> %wide.load3015, %broadcast.splat3011
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %index3013 ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  store <4 x i32> %i.ayr, ptr %i.ayt, align 4, !tbaa !3, !noalias !890
  store <4 x i32> %i.ays, ptr %i.ayu, align 4, !tbaa !3, !noalias !890
  %index.next3016 = add nuw i64 %index3013, 8     ; 2 uses
  %i.ayv = icmp eq i64 %index.next3016, %n.vec3009
  br i1 %i.ayv, label %middle.block3017, label %vector.body3012, !llvm.loop !907

middle.block3017:                                 ; preds = %vector.body3012
  %cmp.n3018 = icmp eq i64 %i.ayn, %n.vec3009
  br i1 %cmp.n3018, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader3025

.lr.ph.i.i.preheader3025:                         ; preds = %.lr.ph.i.i.preheader, %middle.block3017
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec3009, %middle.block3017 ] ; 3 uses
  %i.ayw = add nuw i64 %i.ayk, 1
  %i.ayx = sub i64 %i.ayk, %indvars.iv.i.i.ph
  %xtraiter3184 = and i64 %i.ayw, 3               ; 2 uses
  %lcmp.mod3185.not = icmp eq i64 %xtraiter3184, 0
  br i1 %lcmp.mod3185.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader3025, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader3025 ] ; 3 uses
  %prol.iter3186 = phi i64 [ %prol.iter3186.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader3025 ]
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv.i.i.prol
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !3, !noalias !890
  %i.aza = sub nsw i32 %i.ayz, %i.ayh
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %indvars.iv.i.i.prol
  store i32 %i.aza, ptr %i.azb, align 4, !tbaa !3, !noalias !890
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter3186.next = add i64 %prol.iter3186, 1 ; 2 uses
  %prol.iter3186.cmp.not = icmp eq i64 %prol.iter3186.next, %xtraiter3184
  br i1 %prol.iter3186.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !910

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader3025
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader3025 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.azc = icmp ult i64 %i.ayx, 3
  br i1 %i.azc, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block3017, %bb.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #28, !noalias !890
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %152, ptr noundef nonnull align 8 dereferenceable(8) %155)
          to label %.noexc.i.i unwind label %bb.nq, !noalias !890

.noexc.i.i:                                       ; preds = %._crit_edge.i.i
  %i.azd = getelementptr inbounds nuw i8, ptr %157, i64 8
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !118, !noalias !890 ; 8 uses
  %i.azf = load <2 x ptr>, ptr %157, align 16, !tbaa !119, !noalias !890
  %i.azg = load <2 x ptr>, ptr %152, align 16, !tbaa !119, !noalias !890
  store <2 x ptr> %i.azg, ptr %157, align 16, !tbaa !119, !noalias !890
  store <2 x ptr> %i.azf, ptr %152, align 16, !tbaa !119, !noalias !890
  %.not.i.i.i.i62.i.i = icmp eq ptr %i.aze, null
  br i1 %.not.i.i.i.i62.i.i, label %bb.nn, label %bb.nh

bb.nh:                                            ; preds = %.noexc.i.i
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aze, i64 8 ; 4 uses
  %i.azi = load atomic i64, ptr %i.azh acquire, align 8, !noalias !890 ; 2 uses
  %i.azj = icmp eq i64 %i.azi, 4294967297
  %i.azk = trunc i64 %i.azi to i32                ; 2 uses
  br i1 %i.azj, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  store i32 0, ptr %i.azh, align 8, !tbaa !125, !noalias !890
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aze, i64 12
  store i32 0, ptr %i.azl, align 4, !tbaa !127, !noalias !890
  %i.azm = load ptr, ptr %i.aze, align 8, !tbaa !55, !noalias !890
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 16
  %i.azo = load ptr, ptr %i.azn, align 8, !noalias !890
  call void %i.azo(ptr noundef nonnull align 8 dereferenceable(16) %i.aze) #28, !noalias !890, !inline_history !912
  %i.azp = load ptr, ptr %i.aze, align 8, !tbaa !55, !noalias !890
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 24
  %i.azr = load ptr, ptr %i.azq, align 8, !noalias !890
  call void %i.azr(ptr noundef nonnull align 8 dereferenceable(16) %i.aze) #28, !noalias !890, !inline_history !912
  br label %bb.nn

bb.nj:                                            ; preds = %bb.nh
  %i.azs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i.i.i63.i.i = icmp eq i8 %i.azs, 0
  br i1 %.not.i.i.i.i.i63.i.i, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.azt = add nsw i32 %i.azk, -1
  store i32 %i.azt, ptr %i.azh, align 8, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i

bb.nl:                                            ; preds = %bb.nj
  %i.azu = atomicrmw volatile add ptr %i.azh, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i: ; preds = %bb.nl, %bb.nk
  %.0.i.i.i.i.i.i65.i.i = phi i32 [ %i.azk, %bb.nk ], [ %i.azu, %bb.nl ]
  %i.azv = icmp eq i32 %.0.i.i.i.i.i.i65.i.i, 1
  br i1 %i.azv, label %bb.nm, label %bb.nn, !prof !129

bb.nm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aze) #28, !noalias !890
  br label %bb.nn

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv.i.i
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !3, !noalias !890
  %i.azy = sub nsw i32 %i.azx, %i.ayh
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %indvars.iv.i.i
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !3, !noalias !890
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv.next.i.i
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !3, !noalias !890
  %i.bac = sub nsw i32 %i.bab, %i.ayh
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %indvars.iv.next.i.i
  store i32 %i.bac, ptr %i.bad, align 4, !tbaa !3, !noalias !890
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv.next.i.i.1
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !3, !noalias !890
  %i.bag = sub nsw i32 %i.baf, %i.ayh
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %indvars.iv.next.i.i.1
  store i32 %i.bag, ptr %i.bah, align 4, !tbaa !3, !noalias !890
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv.next.i.i.2
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !3, !noalias !890
  %i.bak = sub nsw i32 %i.baj, %i.ayh
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %indvars.iv.next.i.i.2
  store i32 %i.bak, ptr %i.bal, align 4, !tbaa !3, !noalias !890
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  %exitcond.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.2, %i.ayk
  br i1 %exitcond.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !913

bb.nn:                                            ; preds = %bb.nm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i, %bb.ni, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #28, !noalias !890
  %i.bam = load ptr, ptr %155, align 8, !tbaa !351, !noalias !890 ; 3 uses
  %.not.i66.i.i = icmp eq ptr %i.bam, null
  br i1 %.not.i66.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i: ; preds = %bb.nn
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !55, !noalias !890
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bap = load ptr, ptr %i.bao, align 8, !noalias !890
  call void %i.bap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bam) #28, !noalias !890, !inline_history !914
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i, %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #28, !noalias !890
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.ne
  %i.baq = load ptr, ptr %154, align 8, !tbaa !39, !noalias !890 ; 2 uses
  %i.bar = icmp eq ptr %i.baq, null
  br i1 %i.bar, label %bb.no, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !256

bb.no:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.bas = getelementptr inbounds nuw i8, ptr %154, i64 8
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !351, !noalias !890 ; 3 uses
  %.not.i.i.i.i67.i.i = icmp eq ptr %i.bat, null
  br i1 %.not.i.i.i.i67.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.no
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !55, !noalias !884
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 8
  %i.baw = load ptr, ptr %i.bav, align 8, !noalias !884
  call void %i.baw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bat) #28, !noalias !884, !inline_history !915
  %.pr.pre.i.i.i = load ptr, ptr %154, align 8, !tbaa !39, !noalias !890 ; 2 uses
  %.not.i.i68.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i68.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.bax = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.baq, %_ZN5arrow6StatusC2ERKS0_.exit.i.i ]
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 1
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !257, !range !187, !noalias !884, !noundef !183
  %i.bba = trunc nuw i8 %i.baz to i1
  br i1 %i.bba, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.np

bb.np:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %154) #28, !noalias !884
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %bb.np, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #28, !noalias !890
  br i1 %i.axz, label %_ZN5arrow6StatusD2Ev.exit.thread92.i, label %_ZN5arrow6StatusD2Ev.exit.i395

bb.nq:                                            ; preds = %._crit_edge.i.i
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  %i.bbc = load ptr, ptr %155, align 8, !tbaa !351, !noalias !890 ; 3 uses
  %.not.i69.i.i = icmp eq ptr %i.bbc, null
end_hunk_0
begin_hunk_1_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %161)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.re:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_15BinaryViewArrayE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(40) %.tr1790)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.rf:                                            ; preds = %tailrecurse
  %i.blq = getelementptr inbounds nuw i8, ptr %.tr1790, i64 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.lifetime.start.p0(ptr nonnull %150)
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #28, !noalias !948
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %146, i8 0, i64 16, i1 false), !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #28, !noalias !948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.lifetime.start.p0(ptr nonnull %145), !noalias !948
  %i.blr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !138, !noalias !954 ; 2 uses
  %i.blt = icmp eq i64 %i.bls, 0
  br i1 %i.blt, label %bb.rg, label %_ZN5arrow6StatusD2Ev.exit.i.i398

bb.rg:                                            ; preds = %bb.rf
  %i.blu = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !45, !noalias !955 ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !33, !noalias !955 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 24
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !118, !noalias !955 ; 4 uses
  %.not.i.i.i.i.i.i519 = icmp eq ptr %i.blz, null
  br i1 %.not.i.i.i.i.i.i519, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 8 ; 3 uses
  %i.bmb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !955
  %.not.i.i.i.i.i.i.i520 = icmp eq i8 %i.bmb, 0
  br i1 %.not.i.i.i.i.i.i.i520, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bmc = load i32, ptr %i.bma, align 4, !tbaa !3, !noalias !955
  %i.bmd = add nsw i32 %i.bmc, 1
  store i32 %i.bmd, ptr %i.bma, align 4, !tbaa !3, !noalias !955
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521: ; preds = %bb.ri, %bb.rg
  store ptr %i.blx, ptr %146, align 16, !tbaa !351, !noalias !954
  %i.bme = getelementptr inbounds nuw i8, ptr %146, i64 8
  store ptr %i.blz, ptr %i.bme, align 8, !tbaa !118, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i433

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522: ; preds = %bb.rh
  %i.bmf = atomicrmw volatile add ptr %i.bma, i32 1 acq_rel, align 4, !noalias !955 ; 0 uses
  %.phi.trans.insert.i523 = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %.pre.i524 = load ptr, ptr %.phi.trans.insert.i523, align 8, !tbaa !118, !noalias !954 ; 8 uses
  store ptr %i.blx, ptr %146, align 16, !tbaa !351, !noalias !954
  store ptr %i.blz, ptr %.phi.trans.insert.i523, align 8, !tbaa !118, !noalias !954
  %.not.i.i.i.i56.i.i525 = icmp eq ptr %.pre.i524, null
  br i1 %.not.i.i.i.i56.i.i525, label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i433, label %bb.rj

bb.rj:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522
  %i.bmg = getelementptr inbounds nuw i8, ptr %.pre.i524, i64 8 ; 4 uses
  %i.bmh = load atomic i64, ptr %i.bmg acquire, align 8, !noalias !954 ; 2 uses
  %i.bmi = icmp eq i64 %i.bmh, 4294967297
  %i.bmj = trunc i64 %i.bmh to i32                ; 2 uses
  br i1 %i.bmi, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  store i32 0, ptr %i.bmg, align 8, !tbaa !125, !noalias !954
  %i.bmk = getelementptr inbounds nuw i8, ptr %.pre.i524, i64 12
  store i32 0, ptr %i.bmk, align 4, !tbaa !127, !noalias !954
  %i.bml = load ptr, ptr %.pre.i524, align 8, !tbaa !55, !noalias !954
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  %i.bmn = load ptr, ptr %i.bmm, align 8, !noalias !954
  tail call void %i.bmn(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i524) #28, !noalias !954, !inline_history !958
  %i.bmo = load ptr, ptr %.pre.i524, align 8, !tbaa !55, !noalias !954
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 24
  %i.bmq = load ptr, ptr %i.bmp, align 8, !noalias !954
  tail call void %i.bmq(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i524) #28, !noalias !954, !inline_history !958
  br label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i433

bb.rl:                                            ; preds = %bb.rj
  %i.bmr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i.i.i57.i.i526 = icmp eq i8 %i.bmr, 0
  br i1 %.not.i.i.i.i.i57.i.i526, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bms = add nsw i32 %i.bmj, -1
  store i32 %i.bms, ptr %i.bmg, align 8, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i527

bb.rn:                                            ; preds = %bb.rl
  %i.bmt = atomicrmw volatile add ptr %i.bmg, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i527

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i527: ; preds = %bb.rn, %bb.rm
  %.0.i.i.i.i.i.i.i.i528 = phi i32 [ %i.bmj, %bb.rm ], [ %i.bmt, %bb.rn ]
  %i.bmu = icmp eq i32 %.0.i.i.i.i.i.i.i.i528, 1
  br i1 %i.bmu, label %bb.ro, label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i433, !prof !129

bb.ro:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i527
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i524) #28, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit45.sink.split.i433

_ZN5arrow6StatusD2Ev.exit.i.i398:                 ; preds = %bb.rf
  %i.bmv = shl i64 %i.bls, 2
  %i.bmw = add i64 %i.bmv, 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #28, !noalias !954
  store i32 0, ptr %i.bh, align 4, !tbaa !3, !noalias !954
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #28, !noalias !954
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !45, !noalias !954
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 16
  %i.bna = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.bnb = load i64, ptr %i.bna, align 8, !tbaa !647, !noalias !954
  %i.bnc = shl i64 %i.bnb, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %142, ptr noundef nonnull align 8 dereferenceable(16) %i.bmz, i64 noundef %i.bnc, i64 noundef 4, ptr noundef nonnull %i.bh)
          to label %.noexc.i402 unwind label %bb.ub, !noalias !948

.noexc.i402:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i398
  %i.bnd = load ptr, ptr %142, align 8, !tbaa !39, !noalias !954 ; 3 uses
  store ptr %i.bnd, ptr %147, align 8, !tbaa !39, !alias.scope !951, !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #28, !noalias !954
  %i.bne = icmp eq ptr %i.bnd, null
  br i1 %i.bne, label %_ZN5arrow6StatusD2Ev.exit61.i.i409, label %_ZN5arrow6StatusD2Ev.exit.thread94.i403

_ZN5arrow6StatusD2Ev.exit.thread94.i403:          ; preds = %.noexc.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #28, !noalias !954
  call void @llvm.lifetime.end.p0(ptr nonnull %145), !noalias !948
  store ptr %i.bnd, ptr %0, align 8, !tbaa !39, !alias.scope !948
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28, !noalias !948
  br label %.critedge.i404

_ZN5arrow6StatusD2Ev.exit61.i.i409:               ; preds = %.noexc.i402
  %i.bnf = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !954
  %i.bng = icmp sgt i32 %i.bnf, 0
  %i.bnh = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !954 ; 3 uses
  br i1 %i.bng, label %bb.rp, label %bb.sg

bb.rp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i409
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 40
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !45, !noalias !954
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 16
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !33, !noalias !954
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 9
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !346, !range !187, !noalias !954, !noundef !183
  %i.bno = trunc nuw i8 %i.bnn to i1
  br i1 %i.bno, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %147, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit.i490 unwind label %bb.ub, !noalias !948

bb.rr:                                            ; preds = %bb.rp
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #28, !noalias !954
  %i.bnp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !182, !noalias !954, !nonnull !183, !align !184
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 16
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !364, !noalias !954
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %143, i64 noundef %i.bmw, ptr noundef %i.bns)
          to label %.noexc41.i492 unwind label %bb.ub, !noalias !948

.noexc41.i492:                                    ; preds = %bb.rr
  %i.bnt = load ptr, ptr %143, align 8, !tbaa !39, !noalias !954
  %i.bnu = icmp eq ptr %i.bnt, null               ; 2 uses
  br i1 %i.bnu, label %bb.ru, label %bb.rs, !prof !256

bb.rs:                                            ; preds = %.noexc41.i492
  store ptr null, ptr %147, align 8, !tbaa !39, !alias.scope !951, !noalias !948
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i494 unwind label %bb.rt, !noalias !948

bb.rt:                                            ; preds = %bb.rs
  %i.bnv = landingpad { ptr, i32 }
          cleanup
  br label %bb.sf

bb.ru:                                            ; preds = %.noexc41.i492
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #28, !noalias !954
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.bnw = getelementptr inbounds nuw i8, ptr %143, i64 8 ; 2 uses
  %i.bnx = load i64, ptr %i.bnw, align 8, !tbaa !351, !noalias !965 ; 2 uses
  store i64 %i.bnx, ptr %144, align 8, !tbaa !351, !alias.scope !966, !noalias !954
  store ptr null, ptr %i.bnw, align 8, !tbaa !351, !noalias !965
  %i.bny = getelementptr inbounds nuw i8, ptr %.tr1790, i64 32
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !903, !noalias !954 ; 8 uses
  %.cast.i.i501 = inttoptr i64 %i.bnx to ptr
  %i.boa = getelementptr inbounds nuw i8, ptr %.cast.i.i501, i64 16
  %i.bob = load ptr, ptr %i.boa, align 8, !noalias !954 ; 7 uses
  %i.boc = load i32, ptr %i.bnz, align 4, !tbaa !3, !noalias !954 ; 6 uses
  %i.bod = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !954
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 16
  %i.bof = load i64, ptr %i.boe, align 8, !tbaa !138, !noalias !954 ; 6 uses
  %.not125.i.i502 = icmp slt i64 %i.bof, 0
  br i1 %.not125.i.i502, label %._crit_edge.i.i507, label %.lr.ph.i.i503.preheader

.lr.ph.i.i503.preheader:                          ; preds = %bb.ru
  %i.bog = ptrtoaddr ptr %i.bob to i64
  %i.boh = ptrtoaddr ptr %i.bnz to i64
  %i.boi = add nuw i64 %i.bof, 1                  ; 2 uses
  %min.iters.check2989 = icmp ult i64 %i.bof, 7
  %i.boj = sub i64 %i.bog, %i.boh
  %diff.check2987 = icmp ult i64 %i.boj, 32
  %or.cond3020 = select i1 %min.iters.check2989, i1 true, i1 %diff.check2987
  br i1 %or.cond3020, label %.lr.ph.i.i503.preheader3026, label %vector.ph2990

vector.ph2990:                                    ; preds = %.lr.ph.i.i503.preheader
  %n.vec2992 = and i64 %i.boi, -8                 ; 3 uses
  %broadcast.splatinsert2993 = insertelement <4 x i32> poison, i32 %i.boc, i64 0
  %broadcast.splat2994 = shufflevector <4 x i32> %broadcast.splatinsert2993, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2995

vector.body2995:                                  ; preds = %vector.body2995, %vector.ph2990
  %index2996 = phi i64 [ 0, %vector.ph2990 ], [ %index.next2999, %vector.body2995 ] ; 3 uses
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %index2996 ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 16
  %wide.load2997 = load <4 x i32>, ptr %i.bok, align 4, !tbaa !3, !noalias !954
  %wide.load2998 = load <4 x i32>, ptr %i.bol, align 4, !tbaa !3, !noalias !954
  %i.bom = sub nsw <4 x i32> %wide.load2997, %broadcast.splat2994
  %i.bon = sub nsw <4 x i32> %wide.load2998, %broadcast.splat2994
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %index2996 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 16
  store <4 x i32> %i.bom, ptr %i.boo, align 4, !tbaa !3, !noalias !954
  store <4 x i32> %i.bon, ptr %i.bop, align 4, !tbaa !3, !noalias !954
  %index.next2999 = add nuw i64 %index2996, 8     ; 2 uses
  %i.boq = icmp eq i64 %index.next2999, %n.vec2992
  br i1 %i.boq, label %middle.block3000, label %vector.body2995, !llvm.loop !967

middle.block3000:                                 ; preds = %vector.body2995
  %cmp.n3001 = icmp eq i64 %i.boi, %n.vec2992
  br i1 %cmp.n3001, label %._crit_edge.i.i507, label %.lr.ph.i.i503.preheader3026

.lr.ph.i.i503.preheader3026:                      ; preds = %.lr.ph.i.i503.preheader, %middle.block3000
  %indvars.iv.i.i504.ph = phi i64 [ 0, %.lr.ph.i.i503.preheader ], [ %n.vec2992, %middle.block3000 ] ; 3 uses
  %i.bor = add nuw i64 %i.bof, 1
  %i.bos = sub i64 %i.bof, %indvars.iv.i.i504.ph
  %xtraiter3181 = and i64 %i.bor, 3               ; 2 uses
  %lcmp.mod3182.not = icmp eq i64 %xtraiter3181, 0
  br i1 %lcmp.mod3182.not, label %.lr.ph.i.i503.prol.loopexit, label %.lr.ph.i.i503.prol

.lr.ph.i.i503.prol:                               ; preds = %.lr.ph.i.i503.preheader3026, %.lr.ph.i.i503.prol
  %indvars.iv.i.i504.prol = phi i64 [ %indvars.iv.next.i.i505.prol, %.lr.ph.i.i503.prol ], [ %indvars.iv.i.i504.ph, %.lr.ph.i.i503.preheader3026 ] ; 3 uses
  %prol.iter3183 = phi i64 [ %prol.iter3183.next, %.lr.ph.i.i503.prol ], [ 0, %.lr.ph.i.i503.preheader3026 ]
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.i.i504.prol
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !3, !noalias !954
  %i.bov = sub nsw i32 %i.bou, %i.boc
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %indvars.iv.i.i504.prol
  store i32 %i.bov, ptr %i.bow, align 4, !tbaa !3, !noalias !954
  %indvars.iv.next.i.i505.prol = add nuw nsw i64 %indvars.iv.i.i504.prol, 1 ; 2 uses
  %prol.iter3183.next = add i64 %prol.iter3183, 1 ; 2 uses
  %prol.iter3183.cmp.not = icmp eq i64 %prol.iter3183.next, %xtraiter3181
  br i1 %prol.iter3183.cmp.not, label %.lr.ph.i.i503.prol.loopexit, label %.lr.ph.i.i503.prol, !llvm.loop !968

.lr.ph.i.i503.prol.loopexit:                      ; preds = %.lr.ph.i.i503.prol, %.lr.ph.i.i503.preheader3026
  %indvars.iv.i.i504.unr = phi i64 [ %indvars.iv.i.i504.ph, %.lr.ph.i.i503.preheader3026 ], [ %indvars.iv.next.i.i505.prol, %.lr.ph.i.i503.prol ]
  %i.box = icmp ult i64 %i.bos, 3
  br i1 %i.box, label %._crit_edge.i.i507, label %.lr.ph.i.i503

._crit_edge.i.i507:                               ; preds = %.lr.ph.i.i503.prol.loopexit, %.lr.ph.i.i503, %middle.block3000, %bb.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #28, !noalias !954
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr noundef nonnull align 8 dereferenceable(8) %144)
          to label %.noexc.i.i511 unwind label %bb.se, !noalias !954

.noexc.i.i511:                                    ; preds = %._crit_edge.i.i507
  %i.boy = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !118, !noalias !954 ; 8 uses
  %i.bpa = load <2 x ptr>, ptr %146, align 16, !tbaa !119, !noalias !954
  %i.bpb = load <2 x ptr>, ptr %141, align 16, !tbaa !119, !noalias !954
  store <2 x ptr> %i.bpb, ptr %146, align 16, !tbaa !119, !noalias !954
  store <2 x ptr> %i.bpa, ptr %141, align 16, !tbaa !119, !noalias !954
  %.not.i.i.i.i62.i.i512 = icmp eq ptr %i.boz, null
  br i1 %.not.i.i.i.i62.i.i512, label %bb.sb, label %bb.rv

bb.rv:                                            ; preds = %.noexc.i.i511
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.boz, i64 8 ; 4 uses
  %i.bpd = load atomic i64, ptr %i.bpc acquire, align 8, !noalias !954 ; 2 uses
  %i.bpe = icmp eq i64 %i.bpd, 4294967297
  %i.bpf = trunc i64 %i.bpd to i32                ; 2 uses
  br i1 %i.bpe, label %bb.rw, label %bb.rx

bb.rw:                                            ; preds = %bb.rv
  store i32 0, ptr %i.bpc, align 8, !tbaa !125, !noalias !954
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.boz, i64 12
  store i32 0, ptr %i.bpg, align 4, !tbaa !127, !noalias !954
  %i.bph = load ptr, ptr %i.boz, align 8, !tbaa !55, !noalias !954
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 16
  %i.bpj = load ptr, ptr %i.bpi, align 8, !noalias !954
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boz) #28, !noalias !954, !inline_history !969
  %i.bpk = load ptr, ptr %i.boz, align 8, !tbaa !55, !noalias !954
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 24
  %i.bpm = load ptr, ptr %i.bpl, align 8, !noalias !954
  call void %i.bpm(ptr noundef nonnull align 8 dereferenceable(16) %i.boz) #28, !noalias !954, !inline_history !969
  br label %bb.sb

bb.rx:                                            ; preds = %bb.rv
  %i.bpn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i.i.i63.i.i513 = icmp eq i8 %i.bpn, 0
  br i1 %.not.i.i.i.i.i63.i.i513, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.bpo = add nsw i32 %i.bpf, -1
  store i32 %i.bpo, ptr %i.bpc, align 8, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i514

bb.rz:                                            ; preds = %bb.rx
  %i.bpp = atomicrmw volatile add ptr %i.bpc, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i514

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i514: ; preds = %bb.rz, %bb.ry
  %.0.i.i.i.i.i.i65.i.i515 = phi i32 [ %i.bpf, %bb.ry ], [ %i.bpp, %bb.rz ]
  %i.bpq = icmp eq i32 %.0.i.i.i.i.i.i65.i.i515, 1
  br i1 %i.bpq, label %bb.sa, label %bb.sb, !prof !129

bb.sa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i514
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boz) #28, !noalias !954
  br label %bb.sb

.lr.ph.i.i503:                                    ; preds = %.lr.ph.i.i503.prol.loopexit, %.lr.ph.i.i503
  %indvars.iv.i.i504 = phi i64 [ %indvars.iv.next.i.i505.3, %.lr.ph.i.i503 ], [ %indvars.iv.i.i504.unr, %.lr.ph.i.i503.prol.loopexit ] ; 6 uses
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.i.i504
  %i.bps = load i32, ptr %i.bpr, align 4, !tbaa !3, !noalias !954
  %i.bpt = sub nsw i32 %i.bps, %i.boc
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %indvars.iv.i.i504
  store i32 %i.bpt, ptr %i.bpu, align 4, !tbaa !3, !noalias !954
  %indvars.iv.next.i.i505 = add nuw nsw i64 %indvars.iv.i.i504, 1 ; 2 uses
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.next.i.i505
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !3, !noalias !954
  %i.bpx = sub nsw i32 %i.bpw, %i.boc
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %indvars.iv.next.i.i505
  store i32 %i.bpx, ptr %i.bpy, align 4, !tbaa !3, !noalias !954
  %indvars.iv.next.i.i505.1 = add nuw nsw i64 %indvars.iv.i.i504, 2 ; 2 uses
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.next.i.i505.1
  %i.bqa = load i32, ptr %i.bpz, align 4, !tbaa !3, !noalias !954
  %i.bqb = sub nsw i32 %i.bqa, %i.boc
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %indvars.iv.next.i.i505.1
  store i32 %i.bqb, ptr %i.bqc, align 4, !tbaa !3, !noalias !954
  %indvars.iv.next.i.i505.2 = add nuw nsw i64 %indvars.iv.i.i504, 3 ; 3 uses
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.next.i.i505.2
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !3, !noalias !954
  %i.bqf = sub nsw i32 %i.bqe, %i.boc
  %i.bqg = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %indvars.iv.next.i.i505.2
  store i32 %i.bqf, ptr %i.bqg, align 4, !tbaa !3, !noalias !954
  %indvars.iv.next.i.i505.3 = add nuw nsw i64 %indvars.iv.i.i504, 4
  %exitcond.i.i506.3 = icmp eq i64 %indvars.iv.next.i.i505.2, %i.bof
  br i1 %exitcond.i.i506.3, label %._crit_edge.i.i507, label %.lr.ph.i.i503, !llvm.loop !970

bb.sb:                                            ; preds = %bb.sa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i514, %bb.rw, %.noexc.i.i511
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #28, !noalias !954
  %i.bqh = load ptr, ptr %144, align 8, !tbaa !351, !noalias !954 ; 3 uses
  %.not.i66.i.i516 = icmp eq ptr %i.bqh, null
  br i1 %.not.i66.i.i516, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i517

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i517: ; preds = %bb.sb
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !55, !noalias !954
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8
  %i.bqk = load ptr, ptr %i.bqj, align 8, !noalias !954
  call void %i.bqk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqh) #28, !noalias !954, !inline_history !971
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i517, %bb.sb
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #28, !noalias !954
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i494

_ZN5arrow6StatusC2ERKS0_.exit.i.i494:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518, %bb.rs
  %i.bql = load ptr, ptr %143, align 8, !tbaa !39, !noalias !954 ; 2 uses
  %i.bqm = icmp eq ptr %i.bql, null
  br i1 %i.bqm, label %bb.sc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495, !prof !256

bb.sc:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i494
  %i.bqn = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !351, !noalias !954 ; 3 uses
  %.not.i.i.i.i67.i.i497 = icmp eq ptr %i.bqo, null
  br i1 %.not.i.i.i.i67.i.i497, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498: ; preds = %bb.sc
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !55, !noalias !948
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 8
  %i.bqr = load ptr, ptr %i.bqq, align 8, !noalias !948
  call void %i.bqr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqo) #28, !noalias !948, !inline_history !972
  %.pr.pre.i.i.i499 = load ptr, ptr %143, align 8, !tbaa !39, !noalias !954 ; 2 uses
  %.not.i.i68.i.i500 = icmp eq ptr %.pr.pre.i.i.i499, null
  br i1 %.not.i.i68.i.i500, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498, %_ZN5arrow6StatusC2ERKS0_.exit.i.i494
  %i.bqs = phi ptr [ %.pr.pre.i.i.i499, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498 ], [ %i.bql, %_ZN5arrow6StatusC2ERKS0_.exit.i.i494 ]
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 1
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !257, !range !187, !noalias !948, !noundef !183
  %i.bqv = trunc nuw i8 %i.bqu to i1
  br i1 %i.bqv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, label %bb.sd

bb.sd:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %143) #28, !noalias !948
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496: ; preds = %bb.sd, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498, %bb.sc
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #28, !noalias !954
  br i1 %i.bnu, label %_ZN5arrow6StatusD2Ev.exit.thread92.i432, label %_ZN5arrow6StatusD2Ev.exit.i490

bb.se:                                            ; preds = %._crit_edge.i.i507
  %i.bqw = landingpad { ptr, i32 }
          cleanup
  %i.bqx = load ptr, ptr %144, align 8, !tbaa !351, !noalias !954 ; 3 uses
  %.not.i69.i.i508 = icmp eq ptr %i.bqx, null
end_hunk_1
begin_hunk_2_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.avk:                                           ; preds = %.body.i1135, %bb.ava, %bb.auz
  %.pn19.pn.i1123 = phi { ptr, i32 } [ %i.fha, %bb.auz ], [ %i.fhb, %bb.ava ], [ %eh.lpad-body.i1136, %.body.i1135 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %90) #28, !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28, !noalias !1299
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_15Decimal256ArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i1128, %bb.avf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33.i1131, %bb.avj
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28, !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %91)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.avl:                                           ; preds = %tailrecurse
  %i.fid = getelementptr inbounds nuw i8, ptr %.tr1790, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28, !noalias !1313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %83, i8 0, i64 16, i1 false), !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28, !noalias !1313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %i.fie = load ptr, ptr %i.fid, align 8, !tbaa !115, !noalias !1319 ; 4 uses
  %i.fif = getelementptr inbounds nuw i8, ptr %i.fie, i64 16
  %i.fig = load i64, ptr %i.fif, align 8, !tbaa !138, !noalias !1319 ; 2 uses
  %i.fih = icmp eq i64 %i.fig, 0
  br i1 %i.fih, label %bb.avm, label %_ZN5arrow6StatusD2Ev.exit.i1232

bb.avm:                                           ; preds = %bb.avl
  %i.fii = getelementptr inbounds nuw i8, ptr %i.fie, i64 40
  %i.fij = load ptr, ptr %i.fii, align 8, !tbaa !45, !noalias !1319 ; 2 uses
  %i.fik = getelementptr inbounds nuw i8, ptr %i.fij, i64 16
  %i.fil = load ptr, ptr %i.fik, align 8, !tbaa !33, !noalias !1319
  store ptr %i.fil, ptr %83, align 16, !tbaa !33, !noalias !1319
  %i.fim = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.fin = getelementptr inbounds nuw i8, ptr %i.fij, i64 24
  %i.fio = load ptr, ptr %i.fin, align 8, !tbaa !118, !noalias !1319 ; 3 uses
  %.not.i.i.i.i1255 = icmp eq ptr %i.fio, null
  br i1 %.not.i.i.i.i1255, label %_ZN5arrow6StatusD2Ev.exit1227.sink.split, label %bb.avn

bb.avn:                                           ; preds = %bb.avm
  %i.fip = getelementptr inbounds nuw i8, ptr %i.fio, i64 8 ; 3 uses
  %i.fiq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1319
  %.not.i.i.i.i.i1256 = icmp eq i8 %i.fiq, 0
  br i1 %.not.i.i.i.i.i1256, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.avn
  %i.fir = load i32, ptr %i.fip, align 4, !tbaa !3, !noalias !1319
  %i.fis = add nsw i32 %i.fir, 1
  store i32 %i.fis, ptr %i.fip, align 4, !tbaa !3, !noalias !1319
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.avn
  %i.fit = atomicrmw volatile add ptr %i.fip, i32 1 acq_rel, align 4, !noalias !1319 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.fim, align 8, !tbaa !118, !noalias !1319 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.avo

bb.avo:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.fiu = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.fiv = load atomic i64, ptr %i.fiu acquire, align 8, !noalias !1319 ; 2 uses
  %i.fiw = icmp eq i64 %i.fiv, 4294967297
  %i.fix = trunc i64 %i.fiv to i32                ; 2 uses
  br i1 %i.fiw, label %bb.avp, label %bb.avq

bb.avp:                                           ; preds = %bb.avo
  store i32 0, ptr %i.fiu, align 8, !tbaa !125, !noalias !1319
  %i.fiy = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.fiy, align 4, !tbaa !127, !noalias !1319
  %i.fiz = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !55, !noalias !1319
  %i.fja = getelementptr inbounds nuw i8, ptr %i.fiz, i64 16
  %i.fjb = load ptr, ptr %i.fja, align 8, !noalias !1319
  tail call void %i.fjb(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #28, !noalias !1319, !inline_history !1320
  %i.fjc = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !55, !noalias !1319
  %i.fjd = getelementptr inbounds nuw i8, ptr %i.fjc, i64 24
  %i.fje = load ptr, ptr %i.fjd, align 8, !noalias !1319
  tail call void %i.fje(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #28, !noalias !1319, !inline_history !1320
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.avq:                                           ; preds = %bb.avo
  %i.fjf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1319
  %.not.i9.i.i.i.i = icmp eq i8 %i.fjf, 0
  br i1 %.not.i9.i.i.i.i, label %bb.avs, label %bb.avr

bb.avr:                                           ; preds = %bb.avq
  %i.fjg = add nsw i32 %i.fix, -1
  store i32 %i.fjg, ptr %i.fiu, align 8, !tbaa !3, !noalias !1319
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.avs:                                           ; preds = %bb.avq
  %i.fjh = atomicrmw volatile add ptr %i.fiu, i32 -1 acq_rel, align 4, !noalias !1319
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.avs, %bb.avr
  %.0.i.i.i.i.i.i = phi i32 [ %i.fix, %bb.avr ], [ %i.fjh, %bb.avs ]
  %i.fji = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fji, label %bb.avt, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !129

bb.avt:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #28, !noalias !1319
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread, %bb.avt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.avp, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.fio, ptr %i.fim, align 8, !tbaa !118, !noalias !1319
  br label %_ZN5arrow6StatusD2Ev.exit1227.sink.split

_ZN5arrow6StatusD2Ev.exit.i1232:                  ; preds = %bb.avl
  %i.fjj = shl i64 %i.fig, 2
  %i.fjk = add i64 %i.fjj, 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28, !noalias !1319
  store i32 0, ptr %i.m, align 4, !tbaa !3, !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28, !noalias !1319
  %i.fjl = getelementptr inbounds nuw i8, ptr %i.fie, i64 40
  %i.fjm = load ptr, ptr %i.fjl, align 8, !tbaa !45, !noalias !1319
  %i.fjn = getelementptr inbounds nuw i8, ptr %i.fjm, i64 16
  %i.fjo = getelementptr inbounds nuw i8, ptr %i.fie, i64 32
  %i.fjp = load i64, ptr %i.fjo, align 8, !tbaa !647, !noalias !1319
  %i.fjq = shl i64 %i.fjp, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %i.fjn, i64 noundef %i.fjq, i64 noundef 4, ptr noundef nonnull %i.m)
          to label %.noexc unwind label %bb.axq

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i1232
  %i.fjr = load ptr, ptr %24, align 8, !tbaa !39, !noalias !1319 ; 3 uses
  store ptr %i.fjr, ptr %84, align 8, !tbaa !39, !alias.scope !1316, !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !1319
  %i.fjs = icmp eq ptr %i.fjr, null
  br i1 %i.fjs, label %_ZN5arrow6StatusD2Ev.exit53.i, label %_ZN5arrow6StatusD2Ev.exit1231.thread1775

_ZN5arrow6StatusD2Ev.exit1231.thread1775:         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28, !noalias !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  store ptr %i.fjr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28, !noalias !1313
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit53.i:                    ; preds = %.noexc
  %i.fjt = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !1319
  %i.fju = icmp sgt i32 %i.fjt, 0
  %i.fjv = load ptr, ptr %i.fid, align 8, !tbaa !115, !noalias !1319 ; 3 uses
  br i1 %i.fju, label %bb.avu, label %bb.awl

bb.avu:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit53.i
  %i.fjw = getelementptr inbounds nuw i8, ptr %i.fjv, i64 40
  %i.fjx = load ptr, ptr %i.fjw, align 8, !tbaa !45, !noalias !1319
  %i.fjy = getelementptr inbounds nuw i8, ptr %i.fjx, i64 16
  %i.fjz = load ptr, ptr %i.fjy, align 8, !tbaa !33, !noalias !1319
  %i.fka = getelementptr inbounds nuw i8, ptr %i.fjz, i64 9
  %i.fkb = load i8, ptr %i.fka, align 1, !tbaa !346, !range !187, !noalias !1319, !noundef !183
  %i.fkc = trunc nuw i8 %i.fkb to i1
  br i1 %i.fkc, label %bb.avw, label %bb.avv

bb.avv:                                           ; preds = %bb.avu
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %84, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit1231 unwind label %bb.axq

bb.avw:                                           ; preds = %bb.avu
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28, !noalias !1319
  %i.fkd = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fke = load ptr, ptr %i.fkd, align 8, !tbaa !182, !noalias !1319, !nonnull !183, !align !184
  %i.fkf = getelementptr inbounds nuw i8, ptr %i.fke, i64 16
  %i.fkg = load ptr, ptr %i.fkf, align 8, !tbaa !364, !noalias !1319
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %25, i64 noundef %i.fjk, ptr noundef %i.fkg)
          to label %.noexc1258 unwind label %bb.axq

.noexc1258:                                       ; preds = %bb.avw
  %i.fkh = load ptr, ptr %25, align 8, !tbaa !39, !noalias !1319
  %i.fki = icmp eq ptr %i.fkh, null               ; 2 uses
  br i1 %i.fki, label %bb.avz, label %bb.avx, !prof !256

bb.avx:                                           ; preds = %.noexc1258
  store ptr null, ptr %84, align 8, !tbaa !39, !alias.scope !1316, !noalias !1313
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.avy, !noalias !1313

bb.avy:                                           ; preds = %bb.avx
  %i.fkj = landingpad { ptr, i32 }
          cleanup
  br label %bb.awk

bb.avz:                                           ; preds = %.noexc1258
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28, !noalias !1319
  call void @llvm.experimental.noalias.scope.decl(metadata !1321), !noalias !1313
  call void @llvm.experimental.noalias.scope.decl(metadata !1324), !noalias !1313
  %i.fkk = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.fkl = load i64, ptr %i.fkk, align 8, !tbaa !351, !noalias !1327 ; 2 uses
  store i64 %i.fkl, ptr %26, align 8, !tbaa !351, !alias.scope !1328, !noalias !1319
  store ptr null, ptr %i.fkk, align 8, !tbaa !351, !noalias !1327
  %i.fkm = getelementptr inbounds nuw i8, ptr %.tr1790, i64 56
  %i.fkn = load ptr, ptr %i.fkm, align 8, !tbaa !1329, !noalias !1319 ; 8 uses
  %.cast.i = inttoptr i64 %i.fkl to ptr
  %i.fko = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.fkp = load ptr, ptr %i.fko, align 8, !noalias !1319 ; 7 uses
  %i.fkq = load i32, ptr %i.fkn, align 4, !tbaa !3, !noalias !1319 ; 6 uses
  %i.fkr = load ptr, ptr %i.fid, align 8, !tbaa !115, !noalias !1319
  %i.fks = getelementptr inbounds nuw i8, ptr %i.fkr, i64 16
  %i.fkt = load i64, ptr %i.fks, align 8, !tbaa !138, !noalias !1319 ; 6 uses
  %.not87.i = icmp slt i64 %i.fkt, 0
  br i1 %.not87.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.avz
  %i.fku = ptrtoaddr ptr %i.fkp to i64
  %i.fkv = ptrtoaddr ptr %i.fkn to i64
  %i.fkw = add nuw i64 %i.fkt, 1                  ; 2 uses
  %min.iters.check2972 = icmp ult i64 %i.fkt, 7
  %i.fkx = sub i64 %i.fku, %i.fkv
  %diff.check2970 = icmp ult i64 %i.fkx, 32
  %or.cond3021 = select i1 %min.iters.check2972, i1 true, i1 %diff.check2970
  br i1 %or.cond3021, label %.lr.ph.i.preheader3027, label %vector.ph2973

vector.ph2973:                                    ; preds = %.lr.ph.i.preheader
  %n.vec2975 = and i64 %i.fkw, -8                 ; 3 uses
  %broadcast.splatinsert2976 = insertelement <4 x i32> poison, i32 %i.fkq, i64 0
  %broadcast.splat2977 = shufflevector <4 x i32> %broadcast.splatinsert2976, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2978

vector.body2978:                                  ; preds = %vector.body2978, %vector.ph2973
  %index2979 = phi i64 [ 0, %vector.ph2973 ], [ %index.next2982, %vector.body2978 ] ; 3 uses
  %i.fky = getelementptr inbounds nuw [4 x i8], ptr %i.fkn, i64 %index2979 ; 2 uses
  %i.fkz = getelementptr inbounds nuw i8, ptr %i.fky, i64 16
  %wide.load2980 = load <4 x i32>, ptr %i.fky, align 4, !tbaa !3, !noalias !1319
  %wide.load2981 = load <4 x i32>, ptr %i.fkz, align 4, !tbaa !3, !noalias !1319
  %i.fla = sub nsw <4 x i32> %wide.load2980, %broadcast.splat2977
  %i.flb = sub nsw <4 x i32> %wide.load2981, %broadcast.splat2977
  %i.flc = getelementptr inbounds nuw [4 x i8], ptr %i.fkp, i64 %index2979 ; 2 uses
  %i.fld = getelementptr inbounds nuw i8, ptr %i.flc, i64 16
  store <4 x i32> %i.fla, ptr %i.flc, align 4, !tbaa !3, !noalias !1319
  store <4 x i32> %i.flb, ptr %i.fld, align 4, !tbaa !3, !noalias !1319
  %index.next2982 = add nuw i64 %index2979, 8     ; 2 uses
  %i.fle = icmp eq i64 %index.next2982, %n.vec2975
  br i1 %i.fle, label %middle.block2983, label %vector.body2978, !llvm.loop !1333

middle.block2983:                                 ; preds = %vector.body2978
  %cmp.n2984 = icmp eq i64 %i.fkw, %n.vec2975
  br i1 %cmp.n2984, label %._crit_edge.i, label %.lr.ph.i.preheader3027

.lr.ph.i.preheader3027:                           ; preds = %.lr.ph.i.preheader, %middle.block2983
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec2975, %middle.block2983 ] ; 3 uses
  %i.flf = add nuw i64 %i.fkt, 1
  %i.flg = sub i64 %i.fkt, %indvars.iv.i.ph
  %xtraiter3178 = and i64 %i.flf, 3               ; 2 uses
  %lcmp.mod3179.not = icmp eq i64 %xtraiter3178, 0
  br i1 %lcmp.mod3179.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader3027, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader3027 ] ; 3 uses
  %prol.iter3180 = phi i64 [ %prol.iter3180.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader3027 ]
  %i.flh = getelementptr inbounds nuw [4 x i8], ptr %i.fkn, i64 %indvars.iv.i.prol
  %i.fli = load i32, ptr %i.flh, align 4, !tbaa !3, !noalias !1319
  %i.flj = sub nsw i32 %i.fli, %i.fkq
  %i.flk = getelementptr inbounds nuw [4 x i8], ptr %i.fkp, i64 %indvars.iv.i.prol
  store i32 %i.flj, ptr %i.flk, align 4, !tbaa !3, !noalias !1319
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter3180.next = add i64 %prol.iter3180, 1 ; 2 uses
  %prol.iter3180.cmp.not = icmp eq i64 %prol.iter3180.next, %xtraiter3178
  br i1 %prol.iter3180.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1334

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader3027
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader3027 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fll = icmp ult i64 %i.flg, 3
  br i1 %i.fll, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block2983, %bb.avz
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28, !noalias !1319
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %.noexc.i1251 unwind label %bb.awj, !noalias !1319

.noexc.i1251:                                     ; preds = %._crit_edge.i
  %i.flm = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.fln = load ptr, ptr %i.flm, align 8, !tbaa !118, !noalias !1319 ; 8 uses
  %i.flo = load <2 x ptr>, ptr %83, align 16, !tbaa !119, !noalias !1319
  %i.flp = load <2 x ptr>, ptr %23, align 16, !tbaa !119, !noalias !1319
  store <2 x ptr> %i.flp, ptr %83, align 16, !tbaa !119, !noalias !1319
  store <2 x ptr> %i.flo, ptr %23, align 16, !tbaa !119, !noalias !1319
  %.not.i.i.i.i54.i = icmp eq ptr %i.fln, null
  br i1 %.not.i.i.i.i54.i, label %bb.awg, label %bb.awa

bb.awa:                                           ; preds = %.noexc.i1251
  %i.flq = getelementptr inbounds nuw i8, ptr %i.fln, i64 8 ; 4 uses
  %i.flr = load atomic i64, ptr %i.flq acquire, align 8, !noalias !1319 ; 2 uses
  %i.fls = icmp eq i64 %i.flr, 4294967297
  %i.flt = trunc i64 %i.flr to i32                ; 2 uses
  br i1 %i.fls, label %bb.awb, label %bb.awc

bb.awb:                                           ; preds = %bb.awa
  store i32 0, ptr %i.flq, align 8, !tbaa !125, !noalias !1319
  %i.flu = getelementptr inbounds nuw i8, ptr %i.fln, i64 12
  store i32 0, ptr %i.flu, align 4, !tbaa !127, !noalias !1319
  %i.flv = load ptr, ptr %i.fln, align 8, !tbaa !55, !noalias !1319
  %i.flw = getelementptr inbounds nuw i8, ptr %i.flv, i64 16
  %i.flx = load ptr, ptr %i.flw, align 8, !noalias !1319
  call void %i.flx(ptr noundef nonnull align 8 dereferenceable(16) %i.fln) #28, !noalias !1319, !inline_history !1335
  %i.fly = load ptr, ptr %i.fln, align 8, !tbaa !55, !noalias !1319
  %i.flz = getelementptr inbounds nuw i8, ptr %i.fly, i64 24
  %i.fma = load ptr, ptr %i.flz, align 8, !noalias !1319
  call void %i.fma(ptr noundef nonnull align 8 dereferenceable(16) %i.fln) #28, !noalias !1319, !inline_history !1335
  br label %bb.awg

bb.awc:                                           ; preds = %bb.awa
  %i.fmb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1319
  %.not.i.i.i.i.i.i1252 = icmp eq i8 %i.fmb, 0
  br i1 %.not.i.i.i.i.i.i1252, label %bb.awe, label %bb.awd

bb.awd:                                           ; preds = %bb.awc
  %i.fmc = add nsw i32 %i.flt, -1
  store i32 %i.fmc, ptr %i.flq, align 8, !tbaa !3, !noalias !1319
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1253

bb.awe:                                           ; preds = %bb.awc
  %i.fmd = atomicrmw volatile add ptr %i.flq, i32 -1 acq_rel, align 4, !noalias !1319
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1253

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1253: ; preds = %bb.awe, %bb.awd
  %.0.i.i.i.i.i.i.i1254 = phi i32 [ %i.flt, %bb.awd ], [ %i.fmd, %bb.awe ]
  %i.fme = icmp eq i32 %.0.i.i.i.i.i.i.i1254, 1
  br i1 %i.fme, label %bb.awf, label %bb.awg, !prof !129

bb.awf:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1253
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fln) #28, !noalias !1319
  br label %bb.awg

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fmf = getelementptr inbounds nuw [4 x i8], ptr %i.fkn, i64 %indvars.iv.i
  %i.fmg = load i32, ptr %i.fmf, align 4, !tbaa !3, !noalias !1319
  %i.fmh = sub nsw i32 %i.fmg, %i.fkq
  %i.fmi = getelementptr inbounds nuw [4 x i8], ptr %i.fkp, i64 %indvars.iv.i
  store i32 %i.fmh, ptr %i.fmi, align 4, !tbaa !3, !noalias !1319
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fmj = getelementptr inbounds nuw [4 x i8], ptr %i.fkn, i64 %indvars.iv.next.i
  %i.fmk = load i32, ptr %i.fmj, align 4, !tbaa !3, !noalias !1319
  %i.fml = sub nsw i32 %i.fmk, %i.fkq
  %i.fmm = getelementptr inbounds nuw [4 x i8], ptr %i.fkp, i64 %indvars.iv.next.i
  store i32 %i.fml, ptr %i.fmm, align 4, !tbaa !3, !noalias !1319
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fmn = getelementptr inbounds nuw [4 x i8], ptr %i.fkn, i64 %indvars.iv.next.i.1
  %i.fmo = load i32, ptr %i.fmn, align 4, !tbaa !3, !noalias !1319
  %i.fmp = sub nsw i32 %i.fmo, %i.fkq
  %i.fmq = getelementptr inbounds nuw [4 x i8], ptr %i.fkp, i64 %indvars.iv.next.i.1
  store i32 %i.fmp, ptr %i.fmq, align 4, !tbaa !3, !noalias !1319
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.fmr = getelementptr inbounds nuw [4 x i8], ptr %i.fkn, i64 %indvars.iv.next.i.2
  %i.fms = load i32, ptr %i.fmr, align 4, !tbaa !3, !noalias !1319
  %i.fmt = sub nsw i32 %i.fms, %i.fkq
  %i.fmu = getelementptr inbounds nuw [4 x i8], ptr %i.fkp, i64 %indvars.iv.next.i.2
  store i32 %i.fmt, ptr %i.fmu, align 4, !tbaa !3, !noalias !1319
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.i.3 = icmp eq i64 %indvars.iv.next.i.2, %i.fkt
  br i1 %exitcond.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1336

bb.awg:                                           ; preds = %bb.awf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1253, %bb.awb, %.noexc.i1251
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !1319
  %i.fmv = load ptr, ptr %26, align 8, !tbaa !351, !noalias !1319 ; 3 uses
  %.not.i55.i = icmp eq ptr %i.fmv, null
  br i1 %.not.i55.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i: ; preds = %bb.awg
  %i.fmw = load ptr, ptr %i.fmv, align 8, !tbaa !55, !noalias !1319
  %i.fmx = getelementptr inbounds nuw i8, ptr %i.fmw, i64 8
  %i.fmy = load ptr, ptr %i.fmx, align 8, !noalias !1319
  call void %i.fmy(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fmv) #28, !noalias !1319, !inline_history !1337
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i, %bb.awg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !1319
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i, %bb.avx
  %i.fmz = load ptr, ptr %25, align 8, !tbaa !39, !noalias !1319 ; 2 uses
  %i.fna = icmp eq ptr %i.fmz, null
  br i1 %i.fna, label %bb.awh, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, !prof !256

bb.awh:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.fnb = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.fnc = load ptr, ptr %i.fnb, align 8, !tbaa !351, !noalias !1319 ; 3 uses
  %.not.i.i.i.i56.i1249 = icmp eq ptr %i.fnc, null
  br i1 %.not.i.i.i.i56.i1249, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i: ; preds = %bb.awh
  %i.fnd = load ptr, ptr %i.fnc, align 8, !tbaa !55, !noalias !1313
  %i.fne = getelementptr inbounds nuw i8, ptr %i.fnd, i64 8
  %i.fnf = load ptr, ptr %i.fne, align 8, !noalias !1313
  call void %i.fnf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fnc) #28, !noalias !1313, !inline_history !1338
  %.pr.pre.i.i = load ptr, ptr %25, align 8, !tbaa !39, !noalias !1319 ; 2 uses
  %.not.i.i.i1250 = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i1250, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.fng = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i ], [ %i.fmz, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.fnh = getelementptr inbounds nuw i8, ptr %i.fng, i64 1
  %i.fni = load i8, ptr %i.fnh, align 1, !tbaa !257, !range !187, !noalias !1313, !noundef !183
  %i.fnj = trunc nuw i8 %i.fni to i1
  br i1 %i.fnj, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %bb.awi

bb.awi:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #28, !noalias !1313
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i: ; preds = %bb.awi, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %bb.awh
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !1319
  br i1 %i.fki, label %_ZN5arrow6StatusD2Ev.exit1231.thread1773, label %_ZN5arrow6StatusD2Ev.exit1231

bb.awj:                                           ; preds = %._crit_edge.i
  %i.fnk = landingpad { ptr, i32 }
          cleanup
  %i.fnl = load ptr, ptr %26, align 8, !tbaa !351, !noalias !1319 ; 3 uses
  %.not.i57.i = icmp eq ptr %i.fnl, null
end_hunk_2
begin_hunk_3_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.bbp:                                           ; preds = %bb.bbn
  %i.gec = atomicrmw volatile add ptr %i.gdp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261: ; preds = %bb.bbp, %bb.bbo
  %.0.i.i.i.i1262 = phi i32 [ %i.gds, %bb.bbo ], [ %i.gec, %bb.bbp ]
  %i.ged = icmp eq i32 %.0.i.i.i.i1262, 1
  br i1 %i.ged, label %bb.bbq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263, !prof !129

bb.bbq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gdo) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %bb.bbm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261, %bb.bbq
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28, !noalias !1352
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bbr:                                           ; preds = %tailrecurse
  %i.gee = getelementptr inbounds nuw i8, ptr %.tr1790, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28, !noalias !1388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %69, i8 0, i64 16, i1 false), !noalias !1388
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28, !noalias !1388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !1394
  %i.gef = load ptr, ptr %i.gee, align 8, !tbaa !115, !noalias !1394 ; 3 uses
  %i.geg = getelementptr inbounds nuw i8, ptr %i.gef, i64 40
  %i.geh = load ptr, ptr %i.geg, align 8, !tbaa !45, !noalias !1394 ; 2 uses
  %i.gei = getelementptr inbounds nuw i8, ptr %i.geh, i64 16
  %i.gej = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.gek = getelementptr inbounds nuw i8, ptr %i.geh, i64 24
  %i.gel = load ptr, ptr %i.gek, align 8, !tbaa !118, !noalias !1394 ; 2 uses
  %i.gem = load <2 x ptr>, ptr %i.gei, align 8, !tbaa !119, !noalias !1394
  store <2 x ptr> %i.gem, ptr %14, align 16, !tbaa !119, !noalias !1394
  %.not.i.i.i.i1392 = icmp eq ptr %i.gel, null
  br i1 %.not.i.i.i.i1392, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394, label %bb.bbs

bb.bbs:                                           ; preds = %bb.bbr
  %i.gen = getelementptr inbounds nuw i8, ptr %i.gel, i64 8 ; 3 uses
  %i.geo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1394
  %.not.i.i.i.i.i1393 = icmp eq i8 %i.geo, 0
  br i1 %.not.i.i.i.i.i1393, label %bb.bbu, label %bb.bbt

bb.bbt:                                           ; preds = %bb.bbs
  %i.gep = load i32, ptr %i.gen, align 4, !tbaa !3, !noalias !1394
  %i.geq = add nsw i32 %i.gep, 1
  store i32 %i.geq, ptr %i.gen, align 4, !tbaa !3, !noalias !1394
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394

bb.bbu:                                           ; preds = %bb.bbs
  %i.ger = atomicrmw volatile add ptr %i.gen, i32 1 acq_rel, align 4, !noalias !1394 ; 0 uses
  %.pre.i1423 = load ptr, ptr %i.gee, align 8, !tbaa !115, !noalias !1394
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394: ; preds = %bb.bbu, %bb.bbt, %bb.bbr
  %i.ges = phi ptr [ %i.gef, %bb.bbr ], [ %i.gef, %bb.bbt ], [ %.pre.i1423, %bb.bbu ] ; 3 uses
  %i.get = getelementptr inbounds nuw i8, ptr %i.ges, i64 16
  %i.geu = load i64, ptr %i.get, align 8, !tbaa !138, !noalias !1394
  %i.gev = shl i64 %i.geu, 2                      ; 3 uses
  %i.gew = getelementptr inbounds nuw i8, ptr %i.ges, i64 32
  %i.gex = load i64, ptr %i.gew, align 8, !tbaa !647, !noalias !1394
  %.not.i1395 = icmp eq i64 %i.gex, 0
  br i1 %.not.i1395, label %bb.bcp, label %bb.bbv

bb.bbv:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394
  %i.gey = getelementptr inbounds nuw i8, ptr %i.ges, i64 40
  %i.gez = load ptr, ptr %i.gey, align 8, !tbaa !45, !noalias !1394
  %i.gfa = getelementptr inbounds nuw i8, ptr %i.gez, i64 16
  %i.gfb = load ptr, ptr %i.gfa, align 8, !tbaa !33, !noalias !1394
  %i.gfc = getelementptr inbounds nuw i8, ptr %i.gfb, i64 9
  %i.gfd = load i8, ptr %i.gfc, align 1, !tbaa !346, !range !187, !noalias !1394, !noundef !183
  %i.gfe = trunc nuw i8 %i.gfd to i1
  br i1 %i.gfe, label %bb.bby, label %bb.bbw

bb.bbw:                                           ; preds = %bb.bbv
  invoke void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %70, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(35) @.str.14)
          to label %_ZN5arrow6Status14NotImplementedIJRA35_KcEEES0_DpOT_.exit.i unwind label %bb.bbx, !noalias !1388

bb.bbx:                                           ; preds = %bb.bbw
  %i.gff = landingpad { ptr, i32 }
          cleanup
  br label %.body1424

bb.bby:                                           ; preds = %bb.bbv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28, !noalias !1394
  %i.gfg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gfh = load ptr, ptr %i.gfg, align 8, !tbaa !182, !noalias !1394, !nonnull !183, !align !184
  %i.gfi = getelementptr inbounds nuw i8, ptr %i.gfh, i64 16
  %i.gfj = load ptr, ptr %i.gfi, align 8, !tbaa !364, !noalias !1394
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %15, i64 noundef %i.gev, ptr noundef %i.gfj)
          to label %bb.bbz unwind label %bb.bcb, !noalias !1394

bb.bbz:                                           ; preds = %bb.bby
  %i.gfk = load ptr, ptr %15, align 8, !tbaa !39, !noalias !1394
  %i.gfl = icmp eq ptr %i.gfk, null               ; 2 uses
  br i1 %i.gfl, label %bb.bcd, label %bb.bca, !prof !256

bb.bca:                                           ; preds = %bb.bbz
  store ptr null, ptr %70, align 8, !tbaa !39, !alias.scope !1391, !noalias !1388
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i1398 unwind label %bb.bcc, !noalias !1388

bb.bcb:                                           ; preds = %bb.bby
  %i.gfm = landingpad { ptr, i32 }
          cleanup
  br label %.body1424

bb.bcc:                                           ; preds = %bb.bca
  %i.gfn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bco

bb.bcd:                                           ; preds = %bb.bbz
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28, !noalias !1394
  call void @llvm.experimental.noalias.scope.decl(metadata !1395), !noalias !1388
  call void @llvm.experimental.noalias.scope.decl(metadata !1398), !noalias !1388
  %i.gfo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.gfp = load i64, ptr %i.gfo, align 8, !tbaa !351, !noalias !1401 ; 2 uses
  store i64 %i.gfp, ptr %16, align 8, !tbaa !351, !alias.scope !1402, !noalias !1394
  store ptr null, ptr %i.gfo, align 8, !tbaa !351, !noalias !1401
  %i.gfq = load ptr, ptr %i.gee, align 8, !tbaa !115, !noalias !1394
  %i.gfr = getelementptr inbounds nuw i8, ptr %i.gfq, i64 16
  %i.gfs = load i64, ptr %i.gfr, align 8, !tbaa !138, !noalias !1394 ; 11 uses
  %i.gft = icmp sgt i64 %i.gfs, 0
  %i.gfu = inttoptr i64 %i.gfp to ptr
  br i1 %i.gft, label %.preheader.i, label %._crit_edge.i1405

.preheader.i:                                     ; preds = %bb.bcd
  %i.gfv = getelementptr inbounds nuw i8, ptr %.tr1790, i64 56
  %i.gfw = load ptr, ptr %i.gfv, align 8, !tbaa !1403, !noalias !1394 ; 9 uses
  %i.gfx = ptrtoaddr ptr %i.gfw to i64
  %i.gfy = getelementptr inbounds nuw i8, ptr %.tr1790, i64 64
  %i.gfz = load ptr, ptr %i.gfy, align 8, !tbaa !1406, !noalias !1394 ; 2 uses
  %min.iters.check2930 = icmp ult i64 %i.gfs, 8
  br i1 %min.iters.check2930, label %scalar.ph2929.preheader, label %vector.ph2931

vector.ph2931:                                    ; preds = %.preheader.i
  %n.vec2933 = and i64 %i.gfs, 9223372036854775800 ; 3 uses
  br label %vector.body2934

vector.body2934:                                  ; preds = %vector.body2934, %vector.ph2931
  %index2935 = phi i64 [ 0, %vector.ph2931 ], [ %index.next2944, %vector.body2934 ] ; 3 uses
  %vec.phi2936 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph2931 ], [ %i.ggc, %vector.body2934 ]
  %vec.phi2937 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph2931 ], [ %i.ggd, %vector.body2934 ]
  %vec.phi2938 = phi <4 x i32> [ zeroinitializer, %vector.ph2931 ], [ %i.ggi, %vector.body2934 ]
  %vec.phi2939 = phi <4 x i32> [ zeroinitializer, %vector.ph2931 ], [ %i.ggj, %vector.body2934 ]
  %i.gga = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %index2935 ; 2 uses
  %i.ggb = getelementptr inbounds nuw i8, ptr %i.gga, i64 16
  %wide.load2940 = load <4 x i32>, ptr %i.gga, align 4, !tbaa !3, !noalias !1394 ; 2 uses
  %wide.load2941 = load <4 x i32>, ptr %i.ggb, align 4, !tbaa !3, !noalias !1394 ; 2 uses
  %i.ggc = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load2940, <4 x i32> %vec.phi2936) ; 2 uses
  %i.ggd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load2941, <4 x i32> %vec.phi2937) ; 2 uses
  %i.gge = getelementptr inbounds nuw [4 x i8], ptr %i.gfz, i64 %index2935 ; 2 uses
  %i.ggf = getelementptr inbounds nuw i8, ptr %i.gge, i64 16
  %wide.load2942 = load <4 x i32>, ptr %i.gge, align 4, !tbaa !3, !noalias !1394
  %wide.load2943 = load <4 x i32>, ptr %i.ggf, align 4, !tbaa !3, !noalias !1394
  %i.ggg = add nsw <4 x i32> %wide.load2942, %wide.load2940
  %i.ggh = add nsw <4 x i32> %wide.load2943, %wide.load2941
  %i.ggi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2938, <4 x i32> %i.ggg) ; 2 uses
  %i.ggj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2939, <4 x i32> %i.ggh) ; 2 uses
  %index.next2944 = add nuw i64 %index2935, 8     ; 2 uses
  %i.ggk = icmp eq i64 %index.next2944, %n.vec2933
  br i1 %i.ggk, label %middle.block2945, label %vector.body2934, !llvm.loop !1408

middle.block2945:                                 ; preds = %vector.body2934
  %rdx.minmax2946 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ggc, <4 x i32> %i.ggd)
  %i.ggl = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax2946) ; 2 uses
  %rdx.minmax2947 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ggi, <4 x i32> %i.ggj)
  %i.ggm = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax2947) ; 2 uses
  %cmp.n2948 = icmp eq i64 %i.gfs, %n.vec2933
  br i1 %cmp.n2948, label %.lr.ph.i1417, label %scalar.ph2929.preheader

scalar.ph2929.preheader:                          ; preds = %.preheader.i, %middle.block2945
  %indvars.iv.i1414.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec2933, %middle.block2945 ]
  %.096100.i.ph = phi i32 [ 2147483647, %.preheader.i ], [ %i.ggl, %middle.block2945 ]
  %.09799.i.ph = phi i32 [ 0, %.preheader.i ], [ %i.ggm, %middle.block2945 ]
  br label %scalar.ph2929

scalar.ph2929:                                    ; preds = %scalar.ph2929.preheader, %scalar.ph2929
  %indvars.iv.i1414 = phi i64 [ %indvars.iv.next.i1416, %scalar.ph2929 ], [ %indvars.iv.i1414.ph, %scalar.ph2929.preheader ] ; 3 uses
  %.096100.i = phi i32 [ %.sroa.speculated86.i, %scalar.ph2929 ], [ %.096100.i.ph, %scalar.ph2929.preheader ]
  %.09799.i = phi i32 [ %.sroa.speculated.i1415, %scalar.ph2929 ], [ %.09799.i.ph, %scalar.ph2929.preheader ]
  %i.ggn = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %indvars.iv.i1414
  %i.ggo = load i32, ptr %i.ggn, align 4, !tbaa !3, !noalias !1394 ; 2 uses
  %.sroa.speculated86.i = call i32 @llvm.smin.i32(i32 %i.ggo, i32 %.096100.i) ; 2 uses
  %i.ggp = getelementptr inbounds nuw [4 x i8], ptr %i.gfz, i64 %indvars.iv.i1414
  %i.ggq = load i32, ptr %i.ggp, align 4, !tbaa !3, !noalias !1394
  %i.ggr = add nsw i32 %i.ggq, %i.ggo
  %.sroa.speculated.i1415 = call i32 @llvm.smax.i32(i32 %.09799.i, i32 %i.ggr) ; 2 uses
  %indvars.iv.next.i1416 = add nuw nsw i64 %indvars.iv.i1414, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i1416, %i.gfs
  br i1 %exitcond.not.i, label %.lr.ph.i1417, label %scalar.ph2929, !llvm.loop !1409

.lr.ph.i1417:                                     ; preds = %scalar.ph2929, %middle.block2945
  %.sroa.speculated86.i.lcssa = phi i32 [ %i.ggl, %middle.block2945 ], [ %.sroa.speculated86.i, %scalar.ph2929 ] ; 9 uses
  %.sroa.speculated.i1415.lcssa = phi i32 [ %i.ggm, %middle.block2945 ], [ %.sroa.speculated.i1415, %scalar.ph2929 ] ; 3 uses
  %i.ggs = getelementptr inbounds nuw i8, ptr %i.gfu, i64 16
  %i.ggt = load ptr, ptr %i.ggs, align 8, !noalias !1394 ; 7 uses
  %min.iters.check2955 = icmp ult i64 %i.gfs, 8
  %i.ggu = ptrtoaddr ptr %i.ggt to i64
  %i.ggv = sub i64 %i.ggu, %i.gfx
  %diff.check2953 = icmp ult i64 %i.ggv, 32
  %or.cond3023 = select i1 %min.iters.check2955, i1 true, i1 %diff.check2953
  br i1 %or.cond3023, label %scalar.ph2954.preheader, label %vector.ph2956

vector.ph2956:                                    ; preds = %.lr.ph.i1417
  %n.vec2958 = and i64 %i.gfs, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert2959 = insertelement <4 x i32> poison, i32 %.sroa.speculated86.i.lcssa, i64 0
  %broadcast.splat2960 = shufflevector <4 x i32> %broadcast.splatinsert2959, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2961

vector.body2961:                                  ; preds = %vector.body2961, %vector.ph2956
  %index2962 = phi i64 [ 0, %vector.ph2956 ], [ %index.next2965, %vector.body2961 ] ; 3 uses
  %i.ggw = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %index2962 ; 2 uses
  %i.ggx = getelementptr inbounds nuw i8, ptr %i.ggw, i64 16
  %wide.load2963 = load <4 x i32>, ptr %i.ggw, align 4, !tbaa !3, !noalias !1394
  %wide.load2964 = load <4 x i32>, ptr %i.ggx, align 4, !tbaa !3, !noalias !1394
  %i.ggy = sub nsw <4 x i32> %wide.load2963, %broadcast.splat2960
  %i.ggz = sub nsw <4 x i32> %wide.load2964, %broadcast.splat2960
  %i.gha = getelementptr inbounds nuw [4 x i8], ptr %i.ggt, i64 %index2962 ; 2 uses
  %i.ghb = getelementptr inbounds nuw i8, ptr %i.gha, i64 16
  store <4 x i32> %i.ggy, ptr %i.gha, align 4, !tbaa !3, !noalias !1394
  store <4 x i32> %i.ggz, ptr %i.ghb, align 4, !tbaa !3, !noalias !1394
  %index.next2965 = add nuw i64 %index2962, 8     ; 2 uses
  %i.ghc = icmp eq i64 %index.next2965, %n.vec2958
  br i1 %i.ghc, label %middle.block2966, label %vector.body2961, !llvm.loop !1410

middle.block2966:                                 ; preds = %vector.body2961
  %cmp.n2967 = icmp eq i64 %i.gfs, %n.vec2958
  br i1 %cmp.n2967, label %._crit_edge.i1405, label %scalar.ph2954.preheader

scalar.ph2954.preheader:                          ; preds = %.lr.ph.i1417, %middle.block2966
  %indvars.iv104.i.ph = phi i64 [ 0, %.lr.ph.i1417 ], [ %n.vec2958, %middle.block2966 ] ; 3 uses
  %xtraiter3175 = and i64 %i.gfs, 3               ; 2 uses
  %lcmp.mod3176.not = icmp eq i64 %xtraiter3175, 0
  br i1 %lcmp.mod3176.not, label %scalar.ph2954.prol.loopexit, label %scalar.ph2954.prol

scalar.ph2954.prol:                               ; preds = %scalar.ph2954.preheader, %scalar.ph2954.prol
  %indvars.iv104.i.prol = phi i64 [ %indvars.iv.next105.i.prol, %scalar.ph2954.prol ], [ %indvars.iv104.i.ph, %scalar.ph2954.preheader ] ; 3 uses
  %prol.iter3177 = phi i64 [ %prol.iter3177.next, %scalar.ph2954.prol ], [ 0, %scalar.ph2954.preheader ]
  %i.ghd = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %indvars.iv104.i.prol
  %i.ghe = load i32, ptr %i.ghd, align 4, !tbaa !3, !noalias !1394
  %i.ghf = sub nsw i32 %i.ghe, %.sroa.speculated86.i.lcssa
  %i.ghg = getelementptr inbounds nuw [4 x i8], ptr %i.ggt, i64 %indvars.iv104.i.prol
  store i32 %i.ghf, ptr %i.ghg, align 4, !tbaa !3, !noalias !1394
  %indvars.iv.next105.i.prol = add nuw nsw i64 %indvars.iv104.i.prol, 1 ; 2 uses
  %prol.iter3177.next = add i64 %prol.iter3177, 1 ; 2 uses
  %prol.iter3177.cmp.not = icmp eq i64 %prol.iter3177.next, %xtraiter3175
  br i1 %prol.iter3177.cmp.not, label %scalar.ph2954.prol.loopexit, label %scalar.ph2954.prol, !llvm.loop !1411

scalar.ph2954.prol.loopexit:                      ; preds = %scalar.ph2954.prol, %scalar.ph2954.preheader
  %indvars.iv104.i.unr = phi i64 [ %indvars.iv104.i.ph, %scalar.ph2954.preheader ], [ %indvars.iv.next105.i.prol, %scalar.ph2954.prol ]
  %i.ghh = sub nsw i64 %indvars.iv104.i.ph, %i.gfs
  %i.ghi = icmp ugt i64 %i.ghh, -4
  br i1 %i.ghi, label %._crit_edge.i1405, label %scalar.ph2954

._crit_edge.i1405:                                ; preds = %scalar.ph2954.prol.loopexit, %scalar.ph2954, %middle.block2966, %bb.bcd
  %.1127.i = phi i32 [ 0, %bb.bcd ], [ %.sroa.speculated86.i.lcssa, %middle.block2966 ], [ %.sroa.speculated86.i.lcssa, %scalar.ph2954 ], [ %.sroa.speculated86.i.lcssa, %scalar.ph2954.prol.loopexit ]
  %.198124.i = phi i32 [ 0, %bb.bcd ], [ %.sroa.speculated.i1415.lcssa, %middle.block2966 ], [ %.sroa.speculated.i1415.lcssa, %scalar.ph2954 ], [ %.sroa.speculated.i1415.lcssa, %scalar.ph2954.prol.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !1394
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc.i1409 unwind label %bb.bck, !noalias !1394

.noexc.i1409:                                     ; preds = %._crit_edge.i1405
  %i.ghj = load ptr, ptr %i.gej, align 8, !tbaa !118, !noalias !1394 ; 8 uses
  %i.ghk = load <2 x ptr>, ptr %14, align 16, !tbaa !119, !noalias !1394
  %i.ghl = load <2 x ptr>, ptr %13, align 16, !tbaa !119, !noalias !1394
  store <2 x ptr> %i.ghl, ptr %14, align 16, !tbaa !119, !noalias !1394
  store <2 x ptr> %i.ghk, ptr %13, align 16, !tbaa !119, !noalias !1394
  %.not.i.i.i.i52.i = icmp eq ptr %i.ghj, null
  br i1 %.not.i.i.i.i52.i, label %bb.bcl, label %bb.bce

bb.bce:                                           ; preds = %.noexc.i1409
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.ghj, i64 8 ; 4 uses
  %i.ghn = load atomic i64, ptr %i.ghm acquire, align 8, !noalias !1394 ; 2 uses
  %i.gho = icmp eq i64 %i.ghn, 4294967297
  %i.ghp = trunc i64 %i.ghn to i32                ; 2 uses
  br i1 %i.gho, label %bb.bcf, label %bb.bcg

bb.bcf:                                           ; preds = %bb.bce
  store i32 0, ptr %i.ghm, align 8, !tbaa !125, !noalias !1394
  %i.ghq = getelementptr inbounds nuw i8, ptr %i.ghj, i64 12
  store i32 0, ptr %i.ghq, align 4, !tbaa !127, !noalias !1394
  %i.ghr = load ptr, ptr %i.ghj, align 8, !tbaa !55, !noalias !1394
  %i.ghs = getelementptr inbounds nuw i8, ptr %i.ghr, i64 16
  %i.ght = load ptr, ptr %i.ghs, align 8, !noalias !1394
  call void %i.ght(ptr noundef nonnull align 8 dereferenceable(16) %i.ghj) #28, !noalias !1394, !inline_history !1412
  %i.ghu = load ptr, ptr %i.ghj, align 8, !tbaa !55, !noalias !1394
  %i.ghv = getelementptr inbounds nuw i8, ptr %i.ghu, i64 24
  %i.ghw = load ptr, ptr %i.ghv, align 8, !noalias !1394
  call void %i.ghw(ptr noundef nonnull align 8 dereferenceable(16) %i.ghj) #28, !noalias !1394, !inline_history !1412
  br label %bb.bcl

bb.bcg:                                           ; preds = %bb.bce
  %i.ghx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1394
  %.not.i.i.i.i.i.i1410 = icmp eq i8 %i.ghx, 0
  br i1 %.not.i.i.i.i.i.i1410, label %bb.bci, label %bb.bch

bb.bch:                                           ; preds = %bb.bcg
  %i.ghy = add nsw i32 %i.ghp, -1
  store i32 %i.ghy, ptr %i.ghm, align 8, !tbaa !3, !noalias !1394
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1411

bb.bci:                                           ; preds = %bb.bcg
  %i.ghz = atomicrmw volatile add ptr %i.ghm, i32 -1 acq_rel, align 4, !noalias !1394
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1411

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1411: ; preds = %bb.bci, %bb.bch
  %.0.i.i.i.i.i.i.i1412 = phi i32 [ %i.ghp, %bb.bch ], [ %i.ghz, %bb.bci ]
  %i.gia = icmp eq i32 %.0.i.i.i.i.i.i.i1412, 1
  br i1 %i.gia, label %bb.bcj, label %bb.bcl, !prof !129

bb.bcj:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1411
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ghj) #28, !noalias !1394
  br label %bb.bcl

bb.bck:                                           ; preds = %._crit_edge.i1405
  %i.gib = landingpad { ptr, i32 }
          cleanup
  %i.gic = load ptr, ptr %16, align 8, !tbaa !351, !noalias !1394 ; 3 uses
  %.not.i.i1406 = icmp eq ptr %i.gic, null
  br i1 %.not.i.i1406, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1408, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1407

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1407: ; preds = %bb.bck
  %i.gid = load ptr, ptr %i.gic, align 8, !tbaa !55, !noalias !1394
  %i.gie = getelementptr inbounds nuw i8, ptr %i.gid, i64 8
  %i.gif = load ptr, ptr %i.gie, align 8, !noalias !1394
  call void %i.gif(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gic) #28, !noalias !1394, !inline_history !1413
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1408

scalar.ph2954:                                    ; preds = %scalar.ph2954.prol.loopexit, %scalar.ph2954
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i.3, %scalar.ph2954 ], [ %indvars.iv104.i.unr, %scalar.ph2954.prol.loopexit ] ; 6 uses
  %i.gig = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %indvars.iv104.i
  %i.gih = load i32, ptr %i.gig, align 4, !tbaa !3, !noalias !1394
  %i.gii = sub nsw i32 %i.gih, %.sroa.speculated86.i.lcssa
  %i.gij = getelementptr inbounds nuw [4 x i8], ptr %i.ggt, i64 %indvars.iv104.i
  store i32 %i.gii, ptr %i.gij, align 4, !tbaa !3, !noalias !1394
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.gik = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %indvars.iv.next105.i
  %i.gil = load i32, ptr %i.gik, align 4, !tbaa !3, !noalias !1394
  %i.gim = sub nsw i32 %i.gil, %.sroa.speculated86.i.lcssa
  %i.gin = getelementptr inbounds nuw [4 x i8], ptr %i.ggt, i64 %indvars.iv.next105.i
  store i32 %i.gim, ptr %i.gin, align 4, !tbaa !3, !noalias !1394
  %indvars.iv.next105.i.1 = add nuw nsw i64 %indvars.iv104.i, 2 ; 2 uses
  %i.gio = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %indvars.iv.next105.i.1
  %i.gip = load i32, ptr %i.gio, align 4, !tbaa !3, !noalias !1394
  %i.giq = sub nsw i32 %i.gip, %.sroa.speculated86.i.lcssa
  %i.gir = getelementptr inbounds nuw [4 x i8], ptr %i.ggt, i64 %indvars.iv.next105.i.1
  store i32 %i.giq, ptr %i.gir, align 4, !tbaa !3, !noalias !1394
  %indvars.iv.next105.i.2 = add nuw nsw i64 %indvars.iv104.i, 3 ; 2 uses
  %i.gis = getelementptr inbounds nuw [4 x i8], ptr %i.gfw, i64 %indvars.iv.next105.i.2
  %i.git = load i32, ptr %i.gis, align 4, !tbaa !3, !noalias !1394
  %i.giu = sub nsw i32 %i.git, %.sroa.speculated86.i.lcssa
  %i.giv = getelementptr inbounds nuw [4 x i8], ptr %i.ggt, i64 %indvars.iv.next105.i.2
  store i32 %i.giu, ptr %i.giv, align 4, !tbaa !3, !noalias !1394
  %indvars.iv.next105.i.3 = add nuw nsw i64 %indvars.iv104.i, 4 ; 2 uses
  %exitcond107.not.i.3 = icmp eq i64 %indvars.iv.next105.i.3, %i.gfs
  br i1 %exitcond107.not.i.3, label %._crit_edge.i1405, label %scalar.ph2954, !llvm.loop !1414

bb.bcl:                                           ; preds = %bb.bcj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1411, %bb.bcf, %.noexc.i1409
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !1394
  %i.giw = load ptr, ptr %16, align 8, !tbaa !351, !noalias !1394 ; 3 uses
  %.not.i53.i1413 = icmp eq ptr %i.giw, null
  br i1 %.not.i53.i1413, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit55.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i54.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i54.i: ; preds = %bb.bcl
  %i.gix = load ptr, ptr %i.giw, align 8, !tbaa !55, !noalias !1394
  %i.giy = getelementptr inbounds nuw i8, ptr %i.gix, i64 8
  %i.giz = load ptr, ptr %i.giy, align 8, !noalias !1394
  call void %i.giz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.giw) #28, !noalias !1394, !inline_history !1413
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit55.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit55.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i54.i, %bb.bcl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !1394
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i1398

_ZN5arrow6StatusC2ERKS0_.exit.i1398:              ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit55.i, %bb.bca
  %.11765 = phi i32 [ %.1127.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit55.i ], [ 0, %bb.bca ] ; 2 uses
  %.1 = phi i32 [ %.198124.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit55.i ], [ 0, %bb.bca ] ; 2 uses
  %i.gja = load ptr, ptr %15, align 8, !tbaa !39, !noalias !1394 ; 2 uses
  %i.gjb = icmp eq ptr %i.gja, null
  br i1 %i.gjb, label %bb.bcm, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1399, !prof !256

bb.bcm:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i1398
  %i.gjc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gjd = load ptr, ptr %i.gjc, align 8, !tbaa !351, !noalias !1394 ; 3 uses
  %.not.i.i.i.i56.i1401 = icmp eq ptr %i.gjd, null
  br i1 %.not.i.i.i.i56.i1401, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1400, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1402

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1402: ; preds = %bb.bcm
  %i.gje = load ptr, ptr %i.gjd, align 8, !tbaa !55, !noalias !1388
  %i.gjf = getelementptr inbounds nuw i8, ptr %i.gje, i64 8
  %i.gjg = load ptr, ptr %i.gjf, align 8, !noalias !1388
  call void %i.gjg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gjd) #28, !noalias !1388, !inline_history !1415
  %.pr.pre.i.i1403 = load ptr, ptr %15, align 8, !tbaa !39, !noalias !1394 ; 2 uses
  %.not.i.i.i1404 = icmp eq ptr %.pr.pre.i.i1403, null
  br i1 %.not.i.i.i1404, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1400, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1399, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1399: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1402, %_ZN5arrow6StatusC2ERKS0_.exit.i1398
  %i.gjh = phi ptr [ %.pr.pre.i.i1403, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1402 ], [ %i.gja, %_ZN5arrow6StatusC2ERKS0_.exit.i1398 ]
  %i.gji = getelementptr inbounds nuw i8, ptr %i.gjh, i64 1
  %i.gjj = load i8, ptr %i.gji, align 1, !tbaa !257, !range !187, !noalias !1388, !noundef !183
end_hunk_3
begin_hunk_4_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a

.critedge43.i1170:                                ; preds = %_ZN5arrow6StatusD2Ev.exit1446
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %62) #28, !inline_history !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28, !noalias !1431
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

.critedge46.i1174:                                ; preds = %_ZN5arrow6StatusD2Ev.exit1440
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %64) #28, !inline_history !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28, !noalias !1431
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bhj:                                           ; preds = %tailrecurse
  %i.gxl = getelementptr inbounds nuw i8, ptr %.tr1790, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28, !noalias !1472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %55, i8 0, i64 16, i1 false), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28, !noalias !1472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.gxm = load ptr, ptr %i.gxl, align 8, !tbaa !115, !noalias !1478 ; 4 uses
  %i.gxn = getelementptr inbounds nuw i8, ptr %i.gxm, i64 16
  %i.gxo = load i64, ptr %i.gxn, align 8, !tbaa !138, !noalias !1478 ; 2 uses
  %i.gxp = icmp eq i64 %i.gxo, 0
  br i1 %i.gxp, label %bb.bhk, label %_ZN5arrow6StatusD2Ev.exit.i1546

bb.bhk:                                           ; preds = %bb.bhj
  %i.gxq = getelementptr inbounds nuw i8, ptr %i.gxm, i64 40
  %i.gxr = load ptr, ptr %i.gxq, align 8, !tbaa !45, !noalias !1478 ; 2 uses
  %i.gxs = getelementptr inbounds nuw i8, ptr %i.gxr, i64 16
  %i.gxt = load ptr, ptr %i.gxs, align 8, !tbaa !33, !noalias !1478
  store ptr %i.gxt, ptr %55, align 16, !tbaa !33, !noalias !1478
  %i.gxu = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.gxv = getelementptr inbounds nuw i8, ptr %i.gxr, i64 24
  %i.gxw = load ptr, ptr %i.gxv, align 8, !tbaa !118, !noalias !1478 ; 3 uses
  %.not.i.i.i.i1611 = icmp eq ptr %i.gxw, null
  br i1 %.not.i.i.i.i1611, label %_ZN5arrow6StatusD2Ev.exit1541.sink.split, label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk
  %i.gxx = getelementptr inbounds nuw i8, ptr %i.gxw, i64 8 ; 3 uses
  %i.gxy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1478
  %.not.i.i.i.i.i1613 = icmp eq i8 %i.gxy, 0
  br i1 %.not.i.i.i.i.i1613, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614.thread: ; preds = %bb.bhl
  %i.gxz = load i32, ptr %i.gxx, align 4, !tbaa !3, !noalias !1478
  %i.gya = add nsw i32 %i.gxz, 1
  store i32 %i.gya, ptr %i.gxx, align 4, !tbaa !3, !noalias !1478
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1619

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614: ; preds = %bb.bhl
  %i.gyb = atomicrmw volatile add ptr %i.gxx, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  %.pr.pre.i.i.i.i1621 = load ptr, ptr %i.gxu, align 8, !tbaa !118, !noalias !1478 ; 8 uses
  %.not8.i.i.i.i1615 = icmp eq ptr %.pr.pre.i.i.i.i1621, null
  br i1 %.not8.i.i.i.i1615, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1619, label %bb.bhm

bb.bhm:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614
  %i.gyc = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i1621, i64 8 ; 4 uses
  %i.gyd = load atomic i64, ptr %i.gyc acquire, align 8, !noalias !1478 ; 2 uses
  %i.gye = icmp eq i64 %i.gyd, 4294967297
  %i.gyf = trunc i64 %i.gyd to i32                ; 2 uses
  br i1 %i.gye, label %bb.bhn, label %bb.bho

bb.bhn:                                           ; preds = %bb.bhm
  store i32 0, ptr %i.gyc, align 8, !tbaa !125, !noalias !1478
  %i.gyg = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i1621, i64 12
  store i32 0, ptr %i.gyg, align 4, !tbaa !127, !noalias !1478
  %i.gyh = load ptr, ptr %.pr.pre.i.i.i.i1621, align 8, !tbaa !55, !noalias !1478
  %i.gyi = getelementptr inbounds nuw i8, ptr %i.gyh, i64 16
  %i.gyj = load ptr, ptr %i.gyi, align 8, !noalias !1478
  tail call void %i.gyj(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1621) #28, !noalias !1478, !inline_history !1479
  %i.gyk = load ptr, ptr %.pr.pre.i.i.i.i1621, align 8, !tbaa !55, !noalias !1478
  %i.gyl = getelementptr inbounds nuw i8, ptr %i.gyk, i64 24
  %i.gym = load ptr, ptr %i.gyl, align 8, !noalias !1478
  tail call void %i.gym(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1621) #28, !noalias !1478, !inline_history !1479
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1619

bb.bho:                                           ; preds = %bb.bhm
  %i.gyn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1478
  %.not.i9.i.i.i.i1616 = icmp eq i8 %i.gyn, 0
  br i1 %.not.i9.i.i.i.i1616, label %bb.bhq, label %bb.bhp

bb.bhp:                                           ; preds = %bb.bho
  %i.gyo = add nsw i32 %i.gyf, -1
  store i32 %i.gyo, ptr %i.gyc, align 8, !tbaa !3, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1617

bb.bhq:                                           ; preds = %bb.bho
  %i.gyp = atomicrmw volatile add ptr %i.gyc, i32 -1 acq_rel, align 4, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1617

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1617: ; preds = %bb.bhq, %bb.bhp
  %.0.i.i.i.i.i.i1618 = phi i32 [ %i.gyf, %bb.bhp ], [ %i.gyp, %bb.bhq ]
  %i.gyq = icmp eq i32 %.0.i.i.i.i.i.i1618, 1
  br i1 %i.gyq, label %bb.bhr, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1619, !prof !129

bb.bhr:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1617
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1621) #28, !noalias !1478
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1619

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1619: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614.thread, %bb.bhr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1617, %bb.bhn, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1614
  store ptr %i.gxw, ptr %i.gxu, align 8, !tbaa !118, !noalias !1478
  br label %_ZN5arrow6StatusD2Ev.exit1541.sink.split

_ZN5arrow6StatusD2Ev.exit.i1546:                  ; preds = %bb.bhj
  %i.gyr = shl i64 %i.gxo, 2
  %i.gys = add i64 %i.gyr, 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !1478
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1478
  %i.gyt = getelementptr inbounds nuw i8, ptr %i.gxm, i64 40
  %i.gyu = load ptr, ptr %i.gyt, align 8, !tbaa !45, !noalias !1478
  %i.gyv = getelementptr inbounds nuw i8, ptr %i.gyu, i64 16
  %i.gyw = getelementptr inbounds nuw i8, ptr %i.gxm, i64 32
  %i.gyx = load i64, ptr %i.gyw, align 8, !tbaa !647, !noalias !1478
  %i.gyy = shl i64 %i.gyx, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.gyv, i64 noundef %i.gyy, i64 noundef 4, ptr noundef nonnull %i.c)
          to label %.noexc1622 unwind label %bb.bjo

.noexc1622:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i1546
  %i.gyz = load ptr, ptr %4, align 8, !tbaa !39, !noalias !1478 ; 3 uses
  store ptr %i.gyz, ptr %56, align 8, !tbaa !39, !alias.scope !1475, !noalias !1472
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1478
  %i.gza = icmp eq ptr %i.gyz, null
  br i1 %i.gza, label %_ZN5arrow6StatusD2Ev.exit53.i1548, label %_ZN5arrow6StatusD2Ev.exit1545.thread1785

_ZN5arrow6StatusD2Ev.exit1545.thread1785:         ; preds = %.noexc1622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.gyz, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28, !noalias !1472
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit53.i1548:                ; preds = %.noexc1622
  %i.gzb = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !1478
  %i.gzc = icmp sgt i32 %i.gzb, 0
  %i.gzd = load ptr, ptr %i.gxl, align 8, !tbaa !115, !noalias !1478 ; 3 uses
  br i1 %i.gzc, label %bb.bhs, label %bb.bij

bb.bhs:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit53.i1548
  %i.gze = getelementptr inbounds nuw i8, ptr %i.gzd, i64 40
  %i.gzf = load ptr, ptr %i.gze, align 8, !tbaa !45, !noalias !1478
  %i.gzg = getelementptr inbounds nuw i8, ptr %i.gzf, i64 16
  %i.gzh = load ptr, ptr %i.gzg, align 8, !tbaa !33, !noalias !1478
  %i.gzi = getelementptr inbounds nuw i8, ptr %i.gzh, i64 9
  %i.gzj = load i8, ptr %i.gzi, align 1, !tbaa !346, !range !187, !noalias !1478, !noundef !183
  %i.gzk = trunc nuw i8 %i.gzj to i1
  br i1 %i.gzk, label %bb.bhu, label %bb.bht

bb.bht:                                           ; preds = %bb.bhs
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %56, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit1545 unwind label %bb.bjo

bb.bhu:                                           ; preds = %bb.bhs
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1478
  %i.gzl = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gzm = load ptr, ptr %i.gzl, align 8, !tbaa !182, !noalias !1478, !nonnull !183, !align !184
  %i.gzn = getelementptr inbounds nuw i8, ptr %i.gzm, i64 16
  %i.gzo = load ptr, ptr %i.gzn, align 8, !tbaa !364, !noalias !1478
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %5, i64 noundef %i.gys, ptr noundef %i.gzo)
          to label %.noexc1624 unwind label %bb.bjo

.noexc1624:                                       ; preds = %bb.bhu
  %i.gzp = load ptr, ptr %5, align 8, !tbaa !39, !noalias !1478
  %i.gzq = icmp eq ptr %i.gzp, null               ; 2 uses
  br i1 %i.gzq, label %bb.bhx, label %bb.bhv, !prof !256

bb.bhv:                                           ; preds = %.noexc1624
  store ptr null, ptr %56, align 8, !tbaa !39, !alias.scope !1475, !noalias !1472
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i1586 unwind label %bb.bhw, !noalias !1472

bb.bhw:                                           ; preds = %bb.bhv
  %i.gzr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bii

bb.bhx:                                           ; preds = %.noexc1624
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1478
  call void @llvm.experimental.noalias.scope.decl(metadata !1480), !noalias !1472
  call void @llvm.experimental.noalias.scope.decl(metadata !1483), !noalias !1472
  %i.gzs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gzt = load i64, ptr %i.gzs, align 8, !tbaa !351, !noalias !1486 ; 2 uses
  store i64 %i.gzt, ptr %6, align 8, !tbaa !351, !alias.scope !1487, !noalias !1478
  store ptr null, ptr %i.gzs, align 8, !tbaa !351, !noalias !1486
  %i.gzu = getelementptr inbounds nuw i8, ptr %.tr1790, i64 56
  %i.gzv = load ptr, ptr %i.gzu, align 8, !tbaa !1329, !noalias !1478 ; 8 uses
  %.cast.i1593 = inttoptr i64 %i.gzt to ptr
  %i.gzw = getelementptr inbounds nuw i8, ptr %.cast.i1593, i64 16
  %i.gzx = load ptr, ptr %i.gzw, align 8, !noalias !1478 ; 7 uses
  %i.gzy = load i32, ptr %i.gzv, align 4, !tbaa !3, !noalias !1478 ; 6 uses
  %i.gzz = load ptr, ptr %i.gxl, align 8, !tbaa !115, !noalias !1478
  %i.haa = getelementptr inbounds nuw i8, ptr %i.gzz, i64 16
  %i.hab = load i64, ptr %i.haa, align 8, !tbaa !138, !noalias !1478 ; 6 uses
  %.not87.i1594 = icmp slt i64 %i.hab, 0
  br i1 %.not87.i1594, label %._crit_edge.i1599, label %.lr.ph.i1595.preheader

.lr.ph.i1595.preheader:                           ; preds = %bb.bhx
  %i.hac = ptrtoaddr ptr %i.gzx to i64
  %i.had = ptrtoaddr ptr %i.gzv to i64
  %i.hae = add nuw i64 %i.hab, 1                  ; 2 uses
  %min.iters.check2893 = icmp ult i64 %i.hab, 7
  %i.haf = sub i64 %i.hac, %i.had
  %diff.check = icmp ult i64 %i.haf, 32
  %or.cond3024 = select i1 %min.iters.check2893, i1 true, i1 %diff.check
  br i1 %or.cond3024, label %.lr.ph.i1595.preheader3039, label %vector.ph2894

vector.ph2894:                                    ; preds = %.lr.ph.i1595.preheader
  %n.vec2896 = and i64 %i.hae, -8                 ; 3 uses
  %broadcast.splatinsert2897 = insertelement <4 x i32> poison, i32 %i.gzy, i64 0
  %broadcast.splat2898 = shufflevector <4 x i32> %broadcast.splatinsert2897, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2899

vector.body2899:                                  ; preds = %vector.body2899, %vector.ph2894
  %index2900 = phi i64 [ 0, %vector.ph2894 ], [ %index.next2903, %vector.body2899 ] ; 3 uses
  %i.hag = getelementptr inbounds nuw [4 x i8], ptr %i.gzv, i64 %index2900 ; 2 uses
  %i.hah = getelementptr inbounds nuw i8, ptr %i.hag, i64 16
  %wide.load2901 = load <4 x i32>, ptr %i.hag, align 4, !tbaa !3, !noalias !1478
  %wide.load2902 = load <4 x i32>, ptr %i.hah, align 4, !tbaa !3, !noalias !1478
  %i.hai = sub nsw <4 x i32> %wide.load2901, %broadcast.splat2898
  %i.haj = sub nsw <4 x i32> %wide.load2902, %broadcast.splat2898
  %i.hak = getelementptr inbounds nuw [4 x i8], ptr %i.gzx, i64 %index2900 ; 2 uses
  %i.hal = getelementptr inbounds nuw i8, ptr %i.hak, i64 16
  store <4 x i32> %i.hai, ptr %i.hak, align 4, !tbaa !3, !noalias !1478
  store <4 x i32> %i.haj, ptr %i.hal, align 4, !tbaa !3, !noalias !1478
  %index.next2903 = add nuw i64 %index2900, 8     ; 2 uses
  %i.ham = icmp eq i64 %index.next2903, %n.vec2896
  br i1 %i.ham, label %middle.block2904, label %vector.body2899, !llvm.loop !1488

middle.block2904:                                 ; preds = %vector.body2899
  %cmp.n2905 = icmp eq i64 %i.hae, %n.vec2896
  br i1 %cmp.n2905, label %._crit_edge.i1599, label %.lr.ph.i1595.preheader3039

.lr.ph.i1595.preheader3039:                       ; preds = %.lr.ph.i1595.preheader, %middle.block2904
  %indvars.iv.i1596.ph = phi i64 [ 0, %.lr.ph.i1595.preheader ], [ %n.vec2896, %middle.block2904 ] ; 3 uses
  %i.han = add nuw i64 %i.hab, 1
  %i.hao = sub i64 %i.hab, %indvars.iv.i1596.ph
  %xtraiter = and i64 %i.han, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i1595.prol.loopexit, label %.lr.ph.i1595.prol

.lr.ph.i1595.prol:                                ; preds = %.lr.ph.i1595.preheader3039, %.lr.ph.i1595.prol
  %indvars.iv.i1596.prol = phi i64 [ %indvars.iv.next.i1597.prol, %.lr.ph.i1595.prol ], [ %indvars.iv.i1596.ph, %.lr.ph.i1595.preheader3039 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i1595.prol ], [ 0, %.lr.ph.i1595.preheader3039 ]
  %i.hap = getelementptr inbounds nuw [4 x i8], ptr %i.gzv, i64 %indvars.iv.i1596.prol
  %i.haq = load i32, ptr %i.hap, align 4, !tbaa !3, !noalias !1478
  %i.har = sub nsw i32 %i.haq, %i.gzy
  %i.has = getelementptr inbounds nuw [4 x i8], ptr %i.gzx, i64 %indvars.iv.i1596.prol
  store i32 %i.har, ptr %i.has, align 4, !tbaa !3, !noalias !1478
  %indvars.iv.next.i1597.prol = add nuw nsw i64 %indvars.iv.i1596.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i1595.prol.loopexit, label %.lr.ph.i1595.prol, !llvm.loop !1489

.lr.ph.i1595.prol.loopexit:                       ; preds = %.lr.ph.i1595.prol, %.lr.ph.i1595.preheader3039
  %indvars.iv.i1596.unr = phi i64 [ %indvars.iv.i1596.ph, %.lr.ph.i1595.preheader3039 ], [ %indvars.iv.next.i1597.prol, %.lr.ph.i1595.prol ]
  %i.hat = icmp ult i64 %i.hao, 3
  br i1 %i.hat, label %._crit_edge.i1599, label %.lr.ph.i1595

._crit_edge.i1599:                                ; preds = %.lr.ph.i1595.prol.loopexit, %.lr.ph.i1595, %middle.block2904, %bb.bhx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1478
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i1603 unwind label %bb.bih, !noalias !1478

.noexc.i1603:                                     ; preds = %._crit_edge.i1599
  %i.hau = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.hav = load ptr, ptr %i.hau, align 8, !tbaa !118, !noalias !1478 ; 8 uses
  %i.haw = load <2 x ptr>, ptr %55, align 16, !tbaa !119, !noalias !1478
  %i.hax = load <2 x ptr>, ptr %3, align 16, !tbaa !119, !noalias !1478
  store <2 x ptr> %i.hax, ptr %55, align 16, !tbaa !119, !noalias !1478
  store <2 x ptr> %i.haw, ptr %3, align 16, !tbaa !119, !noalias !1478
  %.not.i.i.i.i54.i1604 = icmp eq ptr %i.hav, null
  br i1 %.not.i.i.i.i54.i1604, label %bb.bie, label %bb.bhy

bb.bhy:                                           ; preds = %.noexc.i1603
  %i.hay = getelementptr inbounds nuw i8, ptr %i.hav, i64 8 ; 4 uses
  %i.haz = load atomic i64, ptr %i.hay acquire, align 8, !noalias !1478 ; 2 uses
  %i.hba = icmp eq i64 %i.haz, 4294967297
  %i.hbb = trunc i64 %i.haz to i32                ; 2 uses
  br i1 %i.hba, label %bb.bhz, label %bb.bia

bb.bhz:                                           ; preds = %bb.bhy
  store i32 0, ptr %i.hay, align 8, !tbaa !125, !noalias !1478
  %i.hbc = getelementptr inbounds nuw i8, ptr %i.hav, i64 12
  store i32 0, ptr %i.hbc, align 4, !tbaa !127, !noalias !1478
  %i.hbd = load ptr, ptr %i.hav, align 8, !tbaa !55, !noalias !1478
  %i.hbe = getelementptr inbounds nuw i8, ptr %i.hbd, i64 16
  %i.hbf = load ptr, ptr %i.hbe, align 8, !noalias !1478
  call void %i.hbf(ptr noundef nonnull align 8 dereferenceable(16) %i.hav) #28, !noalias !1478, !inline_history !1490
  %i.hbg = load ptr, ptr %i.hav, align 8, !tbaa !55, !noalias !1478
  %i.hbh = getelementptr inbounds nuw i8, ptr %i.hbg, i64 24
  %i.hbi = load ptr, ptr %i.hbh, align 8, !noalias !1478
  call void %i.hbi(ptr noundef nonnull align 8 dereferenceable(16) %i.hav) #28, !noalias !1478, !inline_history !1490
  br label %bb.bie

bb.bia:                                           ; preds = %bb.bhy
  %i.hbj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1478
  %.not.i.i.i.i.i.i1605 = icmp eq i8 %i.hbj, 0
  br i1 %.not.i.i.i.i.i.i1605, label %bb.bic, label %bb.bib

bb.bib:                                           ; preds = %bb.bia
  %i.hbk = add nsw i32 %i.hbb, -1
  store i32 %i.hbk, ptr %i.hay, align 8, !tbaa !3, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1606

bb.bic:                                           ; preds = %bb.bia
  %i.hbl = atomicrmw volatile add ptr %i.hay, i32 -1 acq_rel, align 4, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1606

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1606: ; preds = %bb.bic, %bb.bib
  %.0.i.i.i.i.i.i.i1607 = phi i32 [ %i.hbb, %bb.bib ], [ %i.hbl, %bb.bic ]
  %i.hbm = icmp eq i32 %.0.i.i.i.i.i.i.i1607, 1
  br i1 %i.hbm, label %bb.bid, label %bb.bie, !prof !129

bb.bid:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1606
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hav) #28, !noalias !1478
  br label %bb.bie

.lr.ph.i1595:                                     ; preds = %.lr.ph.i1595.prol.loopexit, %.lr.ph.i1595
  %indvars.iv.i1596 = phi i64 [ %indvars.iv.next.i1597.3, %.lr.ph.i1595 ], [ %indvars.iv.i1596.unr, %.lr.ph.i1595.prol.loopexit ] ; 6 uses
  %i.hbn = getelementptr inbounds nuw [4 x i8], ptr %i.gzv, i64 %indvars.iv.i1596
  %i.hbo = load i32, ptr %i.hbn, align 4, !tbaa !3, !noalias !1478
  %i.hbp = sub nsw i32 %i.hbo, %i.gzy
  %i.hbq = getelementptr inbounds nuw [4 x i8], ptr %i.gzx, i64 %indvars.iv.i1596
  store i32 %i.hbp, ptr %i.hbq, align 4, !tbaa !3, !noalias !1478
  %indvars.iv.next.i1597 = add nuw nsw i64 %indvars.iv.i1596, 1 ; 2 uses
  %i.hbr = getelementptr inbounds nuw [4 x i8], ptr %i.gzv, i64 %indvars.iv.next.i1597
  %i.hbs = load i32, ptr %i.hbr, align 4, !tbaa !3, !noalias !1478
  %i.hbt = sub nsw i32 %i.hbs, %i.gzy
  %i.hbu = getelementptr inbounds nuw [4 x i8], ptr %i.gzx, i64 %indvars.iv.next.i1597
  store i32 %i.hbt, ptr %i.hbu, align 4, !tbaa !3, !noalias !1478
  %indvars.iv.next.i1597.1 = add nuw nsw i64 %indvars.iv.i1596, 2 ; 2 uses
  %i.hbv = getelementptr inbounds nuw [4 x i8], ptr %i.gzv, i64 %indvars.iv.next.i1597.1
  %i.hbw = load i32, ptr %i.hbv, align 4, !tbaa !3, !noalias !1478
  %i.hbx = sub nsw i32 %i.hbw, %i.gzy
  %i.hby = getelementptr inbounds nuw [4 x i8], ptr %i.gzx, i64 %indvars.iv.next.i1597.1
  store i32 %i.hbx, ptr %i.hby, align 4, !tbaa !3, !noalias !1478
  %indvars.iv.next.i1597.2 = add nuw nsw i64 %indvars.iv.i1596, 3 ; 3 uses
  %i.hbz = getelementptr inbounds nuw [4 x i8], ptr %i.gzv, i64 %indvars.iv.next.i1597.2
  %i.hca = load i32, ptr %i.hbz, align 4, !tbaa !3, !noalias !1478
  %i.hcb = sub nsw i32 %i.hca, %i.gzy
  %i.hcc = getelementptr inbounds nuw [4 x i8], ptr %i.gzx, i64 %indvars.iv.next.i1597.2
  store i32 %i.hcb, ptr %i.hcc, align 4, !tbaa !3, !noalias !1478
  %indvars.iv.next.i1597.3 = add nuw nsw i64 %indvars.iv.i1596, 4
  %exitcond.i1598.3 = icmp eq i64 %indvars.iv.next.i1597.2, %i.hab
  br i1 %exitcond.i1598.3, label %._crit_edge.i1599, label %.lr.ph.i1595, !llvm.loop !1491

bb.bie:                                           ; preds = %bb.bid, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1606, %bb.bhz, %.noexc.i1603
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1478
  %i.hcd = load ptr, ptr %6, align 8, !tbaa !351, !noalias !1478 ; 3 uses
  %.not.i55.i1608 = icmp eq ptr %i.hcd, null
  br i1 %.not.i55.i1608, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1610, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1609

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1609: ; preds = %bb.bie
  %i.hce = load ptr, ptr %i.hcd, align 8, !tbaa !55, !noalias !1478
  %i.hcf = getelementptr inbounds nuw i8, ptr %i.hce, i64 8
  %i.hcg = load ptr, ptr %i.hcf, align 8, !noalias !1478
  call void %i.hcg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hcd) #28, !noalias !1478, !inline_history !1492
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1610

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1610: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1609, %bb.bie
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1478
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i1586

_ZN5arrow6StatusC2ERKS0_.exit.i1586:              ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1610, %bb.bhv
  %i.hch = load ptr, ptr %5, align 8, !tbaa !39, !noalias !1478 ; 2 uses
  %i.hci = icmp eq ptr %i.hch, null
  br i1 %i.hci, label %bb.bif, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1587, !prof !256

bb.bif:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i1586
  %i.hcj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hck = load ptr, ptr %i.hcj, align 8, !tbaa !351, !noalias !1478 ; 3 uses
  %.not.i.i.i.i56.i1589 = icmp eq ptr %i.hck, null
  br i1 %.not.i.i.i.i56.i1589, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1588, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1590

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1590: ; preds = %bb.bif
  %i.hcl = load ptr, ptr %i.hck, align 8, !tbaa !55, !noalias !1472
  %i.hcm = getelementptr inbounds nuw i8, ptr %i.hcl, i64 8
  %i.hcn = load ptr, ptr %i.hcm, align 8, !noalias !1472
  call void %i.hcn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hck) #28, !noalias !1472, !inline_history !1493
  %.pr.pre.i.i1591 = load ptr, ptr %5, align 8, !tbaa !39, !noalias !1478 ; 2 uses
  %.not.i.i.i1592 = icmp eq ptr %.pr.pre.i.i1591, null
  br i1 %.not.i.i.i1592, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1588, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1587, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1587: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1590, %_ZN5arrow6StatusC2ERKS0_.exit.i1586
  %i.hco = phi ptr [ %.pr.pre.i.i1591, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1590 ], [ %i.hch, %_ZN5arrow6StatusC2ERKS0_.exit.i1586 ]
  %i.hcp = getelementptr inbounds nuw i8, ptr %i.hco, i64 1
  %i.hcq = load i8, ptr %i.hcp, align 1, !tbaa !257, !range !187, !noalias !1472, !noundef !183
  %i.hcr = trunc nuw i8 %i.hcq to i1
  br i1 %i.hcr, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1588, label %bb.big

bb.big:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1587
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28, !noalias !1472
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1588

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1588: ; preds = %bb.big, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1587, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1590, %bb.bif
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1478
  br i1 %i.gzq, label %_ZN5arrow6StatusD2Ev.exit1545.thread1783, label %_ZN5arrow6StatusD2Ev.exit1545

bb.bih:                                           ; preds = %._crit_edge.i1599
  %i.hcs = landingpad { ptr, i32 }
          cleanup
  %i.hct = load ptr, ptr %6, align 8, !tbaa !351, !noalias !1478 ; 3 uses
  %.not.i57.i1600 = icmp eq ptr %i.hct, null
end_hunk_4
