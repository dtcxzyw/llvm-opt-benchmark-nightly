Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGProfile?download=true
inline.NumInlined: 1395
inline.NumDeleted: 681
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4llvm13CGProfilePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i.i: ; preds = %bb.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i14.i.i, %.preheader.i23.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_.exit.i.i, %bb.u
  %i.hb = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 17 uses
  %i.hc = load ptr, ptr %i.aq, align 8, !tbaa !324 ; 13 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i.i
  %i.he = ptrtoint ptr %i.hc to i64               ; 5 uses
  %i.hf = ptrtoint ptr %i.hb to i64               ; 3 uses
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = ashr exact i64 %i.hg, 4                 ; 5 uses
  %i.hi = add nsw i64 %i.hh, 1
  %i.hj = sdiv i64 %i.hi, 2                       ; 10 uses
  %i.hk = icmp sgt i64 %i.hh, 0                   ; 2 uses
  br i1 %i.hk, label %.lr.ph.i.i.i93.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i

.lr.ph.i.i.i93.i:                                 ; preds = %bb.ad, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.hp, %select.unfold.i.i.i.i ], [ %i.hj, %bb.ad ] ; 5 uses
  %i.hl = shl nuw nsw i64 %.010.i.i.i.i, 4        ; 3 uses
  %i.hm = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.hl, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #18 ; 8 uses
  %.not.i.i.i94.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i94.i, label %select.unfold.i.i.i.i, label %bb.ae

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i93.i
  %i.hn = icmp eq i64 %.010.i.i.i.i, 1
  %i.ho = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.hp = lshr i64 %i.ho, 1
  br i1 %i.hn, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i, label %.lr.ph.i.i.i93.i, !llvm.loop !94

bb.ae:                                            ; preds = %.lr.ph.i.i.i93.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false)
  %.not18.i.i.i.i95.i = icmp eq i64 %.010.i.i.i.i, 1
  br i1 %.not18.i.i.i.i95.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ae
  %.01317.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hr = add nsw i64 %i.hl, -32                  ; 2 uses
  %i.hs = lshr exact i64 %i.hr, 4
  %i.ht = add nuw nsw i64 %i.hs, 1
  %xtraiter486 = and i64 %i.ht, 3                 ; 2 uses
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  br i1 %lcmp.mod487.not, label %.lr.ph.i.i.i.i96.i.prol.loopexit, label %.lr.ph.i.i.i.i96.i.prol

.lr.ph.i.i.i.i96.i.prol:                          ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i96.i.prol
  %.01320.i.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i96.i.prol ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i.prol = phi ptr [ %i.hu, %.lr.ph.i.i.i.i96.i.prol ], [ %i.hm, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i96.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.i.prol, i64 16, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter486
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i96.i.prol.loopexit, label %.lr.ph.i.i.i.i96.i.prol, !llvm.loop !95

.lr.ph.i.i.i.i96.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i96.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.hu, %.lr.ph.i.i.i.i96.i.prol ]
  %.01320.i.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i96.i.prol ]
  %.019.i.i.i.i.i.unr = phi ptr [ %i.hm, %.lr.ph.i.i.preheader.i.i.i ], [ %i.hu, %.lr.ph.i.i.i.i96.i.prol ]
  %i.hv = icmp ult i64 %i.hr, 48
  br i1 %i.hv, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i96.i

.lr.ph.i.i.i.i96.i:                               ; preds = %.lr.ph.i.i.i.i96.i.prol.loopexit, %.lr.ph.i.i.i.i96.i
  %.01320.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.3, %.lr.ph.i.i.i.i96.i ], [ %.01320.i.i.i.i.i.unr, %.lr.ph.i.i.i.i96.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i96.i ], [ %.019.i.i.i.i.i.unr, %.lr.ph.i.i.i.i96.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.i, i64 16, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 16
  %.013.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 32
  %.013.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 48
  %.013.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i64 16, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i97.i.3 = icmp eq ptr %.013.i.i.i.i.i.3, %i.hq
  br i1 %.not.i.i.i.i97.i.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i96.i, !llvm.loop !96

_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i96.i.prol.loopexit, %.lr.ph.i.i.i.i96.i, %bb.ae
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hm, %bb.ae ], [ %.lcssa433.unr, %.lr.ph.i.i.i.i96.i.prol.loopexit ], [ %i.hz, %.lr.ph.i.i.i.i96.i ] ; 2 uses
  %i.ia = load i64, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !60
  store i64 %i.ia, ptr %i.hb, align 8, !tbaa !69
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !70
  %i.id = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !71
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i, %bb.ad
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.ad ], [ %.010.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.ad ], [ %i.hm, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 22 uses
  %i.ie = icmp eq i64 %i.hj, %.sroa.4.0.i.i
  br i1 %i.ie, label %bb.af, label %bb.di, !prof !72

bb.af:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i
  %.idx415.i = shl nsw i64 %i.hj, 4               ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.hb, i64 %.idx415.i ; 16 uses
  %i.ig = ptrtoint ptr %i.if to i64               ; 6 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.10.0.i.i, i64 %.idx415.i ; 3 uses
  %.not38.i322.i = icmp slt i64 %i.hh, 13
  br i1 %.not38.i322.i, label %._crit_edge.i339.i, label %.lr.ph.i.i324.i

.lr.ph.i.i324.i:                                  ; preds = %bb.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i337.i
  %i.ii = phi i64 [ %i.tv, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i337.i ], [ %i.hf, %bb.af ] ; 6 uses
  %.sroa.035.039.i325.i = phi ptr [ %i.tu, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i337.i ], [ %i.hb, %bb.af ] ; 31 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 8 ; 6 uses
  %.pre22.i.i327.i = load i64, ptr %.sroa.035.039.i325.i, align 8, !tbaa !60 ; 2 uses
  %.sroa.08.020.i.i328.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 16 ; 6 uses
  %i.ik = load i64, ptr %.sroa.08.020.i.i328.ptr.i, align 8, !tbaa !60 ; 3 uses
  %i.il = icmp ult i64 %i.ik, %.pre22.i.i327.i
  %.sroa.4.0..sroa_idx.i.i330.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 24
  %.sroa.4.0.copyload.i.i331.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i330.i, align 8
  br i1 %i.il, label %bb.ag, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.i

bb.ag:                                            ; preds = %.lr.ph.i.i324.i
  %i.im = ptrtoint ptr %.sroa.08.020.i.i328.ptr.i to i64
  %i.in = sub i64 %i.im, %i.ii
  %i.io = ashr exact i64 %i.in, 4                 ; 5 uses
  %i.ip = icmp sgt i64 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i.i.i.i.i.preheader.i.i371.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.i

.lr.ph.i.i.i.i.i.preheader.i.i371.i:              ; preds = %bb.ag
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 32 ; 2 uses
  %xtraiter488 = and i64 %i.io, 3                 ; 2 uses
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  br i1 %lcmp.mod489.not, label %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i372.i.prol

.lr.ph.i.i.i.i.i.i.i372.i.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i371.i, %.lr.ph.i.i.i.i.i.i.i372.i.prol
  %.010.i.i.i.i.i.i.i373.i.prol = phi i64 [ %i.ix, %.lr.ph.i.i.i.i.i.i.i372.i.prol ], [ %i.io, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ]
  %.069.i.i.i.i.i.i.i374.i.prol = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i372.i.prol ], [ %i.iq, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i375.i.prol = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i.i372.i.prol ], [ %.sroa.08.020.i.i328.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ] ; 2 uses
  %prol.iter490 = phi i64 [ %prol.iter490.next, %.lr.ph.i.i.i.i.i.i.i372.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ]
  %i.ir = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i.prol, i64 -16 ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i.prol, i64 -16 ; 3 uses
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !60
  store i64 %i.it, ptr %i.is, align 8, !tbaa !69
  %i.iu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i.prol, i64 -8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !70
  %i.iw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i.prol, i64 -8
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !71
  %i.ix = add nsw i64 %.010.i.i.i.i.i.i.i373.i.prol, -1 ; 2 uses
  %prol.iter490.next = add i64 %prol.iter490, 1   ; 2 uses
  %prol.iter490.cmp.not = icmp eq i64 %prol.iter490.next, %xtraiter488
  br i1 %prol.iter490.cmp.not, label %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i372.i.prol, !llvm.loop !97

.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i372.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i371.i
  %.010.i.i.i.i.i.i.i373.i.unr = phi i64 [ %i.io, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ], [ %i.ix, %.lr.ph.i.i.i.i.i.i.i372.i.prol ]
  %.069.i.i.i.i.i.i.i374.i.unr = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i372.i.prol ]
  %.078.i.i.i.i.i.i.i375.i.unr = phi ptr [ %.sroa.08.020.i.i328.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i371.i ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i372.i.prol ]
  %i.iy = icmp ult i64 %i.io, 4
  br i1 %i.iy, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.i, label %.lr.ph.i.i.i.i.i.i.i372.i

.lr.ph.i.i.i.i.i.i.i372.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i372.i
  %.010.i.i.i.i.i.i.i373.i = phi i64 [ %i.jx, %.lr.ph.i.i.i.i.i.i.i372.i ], [ %.010.i.i.i.i.i.i.i373.i.unr, %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i374.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i372.i ], [ %.069.i.i.i.i.i.i.i374.i.unr, %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i375.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i372.i ], [ %.078.i.i.i.i.i.i.i375.i.unr, %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit ] ; 8 uses
  %i.iz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -16
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -16
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !60
  store i64 %i.jb, ptr %i.ja, align 8, !tbaa !69
  %i.jc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !70
  %i.je = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -8
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !71
  %i.jf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -32
  %i.jg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -32
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !60
  store i64 %i.jh, ptr %i.jg, align 8, !tbaa !69
  %i.ji = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !70
  %i.jk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -24
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !71
  %i.jl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -48
  %i.jm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -48
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !60
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !69
  %i.jo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -40
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !70
  %i.jq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -40
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !71
  %i.jr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -64 ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -64 ; 2 uses
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !60
  store i64 %i.jt, ptr %i.js, align 8, !tbaa !69
  %i.ju = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.i, i64 -56
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !70
  %i.jw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.i, i64 -56
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !71
  %i.jx = add nsw i64 %.010.i.i.i.i.i.i.i373.i, -4
  %i.jy = icmp sgt i64 %.010.i.i.i.i.i.i.i373.i, 4
  br i1 %i.jy, label %.lr.ph.i.i.i.i.i.i.i372.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.i, !llvm.loop !0

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.i: ; preds = %.lr.ph.i.i.i.i.i.i.i372.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i372.i, %bb.ag
  store i64 %i.ik, ptr %.sroa.035.039.i325.i, align 8, !tbaa !69
  store ptr %.sroa.4.0.copyload.i.i331.i, ptr %i.ij, align 8, !tbaa !71
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.i, %.lr.ph.i.i324.i
  %i.jz = phi i64 [ %i.ik, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.i ], [ %.pre22.i.i327.i, %.lr.ph.i.i324.i ]
  %.sroa.08.020.i.i328.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 32 ; 8 uses
  %i.ka = load i64, ptr %.sroa.08.020.i.i328.ptr.1.i, align 8, !tbaa !60 ; 6 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %.sroa.4.0..sroa_idx.i.i330.1.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 40
  %.sroa.4.0.copyload.i.i331.1.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i330.1.i, align 8 ; 2 uses
  br i1 %i.kb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.i
  %i.kc = load i64, ptr %.sroa.08.020.i.i328.ptr.i, align 8, !tbaa !60 ; 2 uses
  %i.kd = icmp ult i64 %i.ka, %i.kc
  br i1 %i.kd, label %.lr.ph.i.i.i366.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.1.i

.lr.ph.i.i.i366.1.i:                              ; preds = %bb.ah, %.lr.ph.i.i.i366.1.i
  %i.ke = phi i64 [ %i.ki, %.lr.ph.i.i.i366.1.i ], [ %i.kc, %bb.ah ]
  %.sroa.0.010.i.i.i367.1.i = phi ptr [ %.sroa.0.0.i.i.i369.1.i, %.lr.ph.i.i.i366.1.i ], [ %.sroa.08.020.i.i328.ptr.i, %bb.ah ] ; 3 uses
  %.sroa.05.09.i.i.i368.1.i = phi ptr [ %.sroa.0.010.i.i.i367.1.i, %.lr.ph.i.i.i366.1.i ], [ %.sroa.08.020.i.i328.ptr.1.i, %bb.ah ] ; 3 uses
  store i64 %i.ke, ptr %.sroa.05.09.i.i.i368.1.i, align 8, !tbaa !69
  %i.kf = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i368.1.i, i64 -8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !70
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i368.1.i, i64 8
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !71
  %.sroa.0.0.i.i.i369.1.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i367.1.i, i64 -16 ; 2 uses
  %i.ki = load i64, ptr %.sroa.0.0.i.i.i369.1.i, align 8, !tbaa !60 ; 2 uses
  %i.kj = icmp ult i64 %i.ka, %i.ki
  br i1 %i.kj, label %.lr.ph.i.i.i366.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.1.i, !llvm.loop !1

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.1.i: ; preds = %.lr.ph.i.i.i366.1.i, %bb.ah
  %.sroa.05.0.lcssa.i.i.i333.1.i = phi ptr [ %.sroa.08.020.i.i328.ptr.1.i, %bb.ah ], [ %.sroa.0.010.i.i.i367.1.i, %.lr.ph.i.i.i366.1.i ] ; 2 uses
  store i64 %i.ka, ptr %.sroa.05.0.lcssa.i.i.i333.1.i, align 8, !tbaa !69
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i333.1.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i331.1.i, ptr %i.kk, align 8, !tbaa !71
  %.pre.i.i334.1.i = load i64, ptr %.sroa.035.039.i325.i, align 8, !tbaa !60
  br label %bb.aj

bb.ai:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.i
  %i.kl = ptrtoint ptr %.sroa.08.020.i.i328.ptr.1.i to i64
  %i.km = sub i64 %i.kl, %i.ii
  %i.kn = ashr exact i64 %i.km, 4                 ; 5 uses
  %i.ko = icmp sgt i64 %i.kn, 0
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.1.i

.lr.ph.i.i.i.i.i.preheader.i.i371.1.i:            ; preds = %bb.ai
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 48 ; 2 uses
  %xtraiter491 = and i64 %i.kn, 3                 ; 2 uses
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br i1 %lcmp.mod492.not, label %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i372.1.i.prol

.lr.ph.i.i.i.i.i.i.i372.1.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol
  %.010.i.i.i.i.i.i.i373.1.i.prol = phi i64 [ %i.kw, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ], [ %i.kn, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ]
  %.069.i.i.i.i.i.i.i374.1.i.prol = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ], [ %i.kp, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i375.1.i.prol = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ], [ %.sroa.08.020.i.i328.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ] ; 2 uses
  %prol.iter493 = phi i64 [ %prol.iter493.next, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ]
  %i.kq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i.prol, i64 -16 ; 3 uses
  %i.kr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i.prol, i64 -16 ; 3 uses
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !60
  store i64 %i.ks, ptr %i.kr, align 8, !tbaa !69
  %i.kt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i.prol, i64 -8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !70
  %i.kv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i.prol, i64 -8
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !71
  %i.kw = add nsw i64 %.010.i.i.i.i.i.i.i373.1.i.prol, -1 ; 2 uses
  %prol.iter493.next = add i64 %prol.iter493, 1   ; 2 uses
  %prol.iter493.cmp.not = icmp eq i64 %prol.iter493.next, %xtraiter491
  br i1 %prol.iter493.cmp.not, label %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i372.1.i.prol, !llvm.loop !98

.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i372.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i
  %.010.i.i.i.i.i.i.i373.1.i.unr = phi i64 [ %i.kn, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ], [ %i.kw, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ]
  %.069.i.i.i.i.i.i.i374.1.i.unr = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ]
  %.078.i.i.i.i.i.i.i375.1.i.unr = phi ptr [ %.sroa.08.020.i.i328.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.i371.1.i ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol ]
  %i.kx = icmp ult i64 %i.kn, 4
  br i1 %i.kx, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.1.i, label %.lr.ph.i.i.i.i.i.i.i372.1.i

.lr.ph.i.i.i.i.i.i.i372.1.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i372.1.i
  %.010.i.i.i.i.i.i.i373.1.i = phi i64 [ %i.lw, %.lr.ph.i.i.i.i.i.i.i372.1.i ], [ %.010.i.i.i.i.i.i.i373.1.i.unr, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i374.1.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i.i.i372.1.i ], [ %.069.i.i.i.i.i.i.i374.1.i.unr, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i375.1.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i.i372.1.i ], [ %.078.i.i.i.i.i.i.i375.1.i.unr, %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit ] ; 8 uses
  %i.ky = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -16
  %i.kz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -16
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !60
  store i64 %i.la, ptr %i.kz, align 8, !tbaa !69
  %i.lb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !70
  %i.ld = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -8
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !71
  %i.le = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -32
  %i.lf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -32
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !60
  store i64 %i.lg, ptr %i.lf, align 8, !tbaa !69
  %i.lh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !70
  %i.lj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -24
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !71
  %i.lk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -48
  %i.ll = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -48
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !60
  store i64 %i.lm, ptr %i.ll, align 8, !tbaa !69
  %i.ln = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !70
  %i.lp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -40
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !71
  %i.lq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -64 ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -64 ; 2 uses
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !60
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !69
  %i.lt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.1.i, i64 -56
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !70
  %i.lv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.1.i, i64 -56
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !71
  %i.lw = add nsw i64 %.010.i.i.i.i.i.i.i373.1.i, -4
  %i.lx = icmp sgt i64 %.010.i.i.i.i.i.i.i373.1.i, 4
  br i1 %i.lx, label %.lr.ph.i.i.i.i.i.i.i372.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.1.i, !llvm.loop !0

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.i372.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i372.1.i, %bb.ai
  store i64 %i.ka, ptr %.sroa.035.039.i325.i, align 8, !tbaa !69
  store ptr %.sroa.4.0.copyload.i.i331.1.i, ptr %i.ij, align 8, !tbaa !71
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.1.i
  %i.ly = phi i64 [ %i.ka, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.1.i ], [ %.pre.i.i334.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.1.i ]
  %.sroa.08.020.i.i328.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 48 ; 8 uses
  %i.lz = load i64, ptr %.sroa.08.020.i.i328.ptr.2.i, align 8, !tbaa !60 ; 6 uses
  %i.ma = icmp ult i64 %i.lz, %i.ly
  %.sroa.4.0..sroa_idx.i.i330.2.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 56
  %.sroa.4.0.copyload.i.i331.2.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i330.2.i, align 8 ; 2 uses
  br i1 %i.ma, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mb = load i64, ptr %.sroa.08.020.i.i328.ptr.1.i, align 8, !tbaa !60 ; 2 uses
  %i.mc = icmp ult i64 %i.lz, %i.mb
  br i1 %i.mc, label %.lr.ph.i.i.i366.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.2.i

.lr.ph.i.i.i366.2.i:                              ; preds = %bb.ak, %.lr.ph.i.i.i366.2.i
  %i.md = phi i64 [ %i.mh, %.lr.ph.i.i.i366.2.i ], [ %i.mb, %bb.ak ]
  %.sroa.0.010.i.i.i367.2.i = phi ptr [ %.sroa.0.0.i.i.i369.2.i, %.lr.ph.i.i.i366.2.i ], [ %.sroa.08.020.i.i328.ptr.1.i, %bb.ak ] ; 3 uses
  %.sroa.05.09.i.i.i368.2.i = phi ptr [ %.sroa.0.010.i.i.i367.2.i, %.lr.ph.i.i.i366.2.i ], [ %.sroa.08.020.i.i328.ptr.2.i, %bb.ak ] ; 3 uses
  store i64 %i.md, ptr %.sroa.05.09.i.i.i368.2.i, align 8, !tbaa !69
  %i.me = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i368.2.i, i64 -8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !70
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i368.2.i, i64 8
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !71
  %.sroa.0.0.i.i.i369.2.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i367.2.i, i64 -16 ; 2 uses
  %i.mh = load i64, ptr %.sroa.0.0.i.i.i369.2.i, align 8, !tbaa !60 ; 2 uses
  %i.mi = icmp ult i64 %i.lz, %i.mh
  br i1 %i.mi, label %.lr.ph.i.i.i366.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.2.i, !llvm.loop !1

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i332.2.i: ; preds = %.lr.ph.i.i.i366.2.i, %bb.ak
  %.sroa.05.0.lcssa.i.i.i333.2.i = phi ptr [ %.sroa.08.020.i.i328.ptr.2.i, %bb.ak ], [ %.sroa.0.010.i.i.i367.2.i, %.lr.ph.i.i.i366.2.i ] ; 2 uses
  store i64 %i.lz, ptr %.sroa.05.0.lcssa.i.i.i333.2.i, align 8, !tbaa !69
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i333.2.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i331.2.i, ptr %i.mj, align 8, !tbaa !71
  %.pre.i.i334.2.i = load i64, ptr %.sroa.035.039.i325.i, align 8, !tbaa !60
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.mk = ptrtoint ptr %.sroa.08.020.i.i328.ptr.2.i to i64
  %i.ml = sub i64 %i.mk, %i.ii
  %i.mm = ashr exact i64 %i.ml, 4                 ; 5 uses
  %i.mn = icmp sgt i64 %i.mm, 0
  br i1 %i.mn, label %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.2.i

.lr.ph.i.i.i.i.i.preheader.i.i371.2.i:            ; preds = %bb.al
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i325.i, i64 64 ; 2 uses
  %xtraiter494 = and i64 %i.mm, 3                 ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i372.2.i.prol

.lr.ph.i.i.i.i.i.i.i372.2.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol
  %.010.i.i.i.i.i.i.i373.2.i.prol = phi i64 [ %i.mv, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ], [ %i.mm, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ]
  %.069.i.i.i.i.i.i.i374.2.i.prol = phi ptr [ %i.mq, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ], [ %i.mo, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i375.2.i.prol = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ], [ %.sroa.08.020.i.i328.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ] ; 2 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ]
  %i.mp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.2.i.prol, i64 -16 ; 3 uses
  %i.mq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.2.i.prol, i64 -16 ; 3 uses
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !60
  store i64 %i.mr, ptr %i.mq, align 8, !tbaa !69
  %i.ms = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.2.i.prol, i64 -8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !70
  %i.mu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.2.i.prol, i64 -8
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !71
  %i.mv = add nsw i64 %.010.i.i.i.i.i.i.i373.2.i.prol, -1 ; 2 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i372.2.i.prol, !llvm.loop !99

.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i372.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i
  %.010.i.i.i.i.i.i.i373.2.i.unr = phi i64 [ %i.mm, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ], [ %i.mv, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ]
  %.069.i.i.i.i.i.i.i374.2.i.unr = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ], [ %i.mq, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ]
  %.078.i.i.i.i.i.i.i375.2.i.unr = phi ptr [ %.sroa.08.020.i.i328.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.i371.2.i ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol ]
  %i.mw = icmp ult i64 %i.mm, 4
  br i1 %i.mw, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i370.2.i, label %.lr.ph.i.i.i.i.i.i.i372.2.i

.lr.ph.i.i.i.i.i.i.i372.2.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i372.2.i
  %.010.i.i.i.i.i.i.i373.2.i = phi i64 [ %i.nv, %.lr.ph.i.i.i.i.i.i.i372.2.i ], [ %.010.i.i.i.i.i.i.i373.2.i.unr, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i374.2.i = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i.i.i372.2.i ], [ %.069.i.i.i.i.i.i.i374.2.i.unr, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i375.2.i = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i.i.i372.2.i ], [ %.078.i.i.i.i.i.i.i375.2.i.unr, %.lr.ph.i.i.i.i.i.i.i372.2.i.prol.loopexit ] ; 8 uses
  %i.mx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i375.2.i, i64 -16
  %i.my = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i374.2.i, i64 -16
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !60
  store i64 %i.mz, ptr %i.my, align 8, !tbaa !69
end_hunk_0
begin_hunk_1_@_ZN4llvm13CGProfilePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.aip = load i64, ptr %i.ain, align 8, !tbaa !60
  store i64 %i.aip, ptr %i.aio, align 8, !tbaa !69
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i234.i, i64 56
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !70
  %i.ais = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i233.i, i64 56
  store ptr %i.air, ptr %i.ais, align 8, !tbaa !71
  %i.ait = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i234.i, i64 64
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i233.i, i64 64 ; 2 uses
  %i.aiv = add nsw i64 %.012.i.i.i.i.i.i37.i232.i, -4
  %i.aiw = icmp sgt i64 %.012.i.i.i.i.i.i37.i232.i, 4
  br i1 %i.aiw, label %.lr.ph.i.i.i.i.i.i36.i231.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i224.i, !llvm.loop !5

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i224.i: ; preds = %.lr.ph.i.i.i.i.i.i36.i231.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i231.i, %._crit_edge.i25.i220.i
  %.08.lcssa.i.i.i.i.i.i30.i225.i = phi ptr [ %.sroa.0.0.lcssa.i26.i221.i, %._crit_edge.i25.i220.i ], [ %.lcssa450.unr, %.lr.ph.i.i.i.i.i.i36.i231.i.prol.loopexit ], [ %i.aiu, %.lr.ph.i.i.i.i.i.i36.i231.i ]
  %i.aix = ptrtoint ptr %.016.lcssa.i27.i222.i to i64
  %i.aiy = sub i64 %i.wa, %i.aix
  %i.aiz = ashr exact i64 %i.aiy, 4               ; 5 uses
  %i.aja = icmp sgt i64 %i.aiz, 0
  br i1 %i.aja, label %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit253.i

.lr.ph.i.i.i.i.i19.i32.preheader.i226.i:          ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i224.i
  %i.ajb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i225.i to i64
  %i.ajc = ptrtoint ptr %.sroa.0.0.lcssa.i26.i221.i to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  %i.aje = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i221.i, i64 %i.ajd ; 2 uses
  %xtraiter530 = and i64 %i.aiz, 3                ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i227.i.prol

.lr.ph.i.i.i.i.i19.i32.i227.i.prol:               ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol
  %.012.i.i.i.i.i20.i33.i228.i.prol = phi i64 [ %i.ajl, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ], [ %i.aiz, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ]
  %.0811.i.i.i.i.i21.i34.i229.i.prol = phi ptr [ %i.ajk, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ], [ %i.aje, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i230.i.prol = phi ptr [ %i.ajj, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ], [ %.016.lcssa.i27.i222.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ] ; 3 uses
  %prol.iter532 = phi i64 [ %prol.iter532.next, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ]
  %i.ajf = load i64, ptr %.0910.i.i.i.i.i22.i35.i230.i.prol, align 8, !tbaa !60
  store i64 %i.ajf, ptr %.0811.i.i.i.i.i21.i34.i229.i.prol, align 8, !tbaa !69
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i.prol, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !70
  %i.aji = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i.prol, i64 8
  store ptr %i.ajh, ptr %i.aji, align 8, !tbaa !71
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i.prol, i64 16 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i.prol, i64 16 ; 2 uses
  %i.ajl = add nsw i64 %.012.i.i.i.i.i20.i33.i228.i.prol, -1 ; 2 uses
  %prol.iter532.next = add i64 %prol.iter532, 1   ; 2 uses
  %prol.iter532.cmp.not = icmp eq i64 %prol.iter532.next, %xtraiter530
  br i1 %prol.iter532.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i227.i.prol, !llvm.loop !111

.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i19.i32.i227.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i
  %.012.i.i.i.i.i20.i33.i228.i.unr = phi i64 [ %i.aiz, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ], [ %i.ajl, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ]
  %.0811.i.i.i.i.i21.i34.i229.i.unr = phi ptr [ %i.aje, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ], [ %i.ajk, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ]
  %.0910.i.i.i.i.i22.i35.i230.i.unr = phi ptr [ %.016.lcssa.i27.i222.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i226.i ], [ %i.ajj, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol ]
  %i.ajm = icmp ult i64 %i.aiz, 4
  br i1 %i.ajm, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit253.i, label %.lr.ph.i.i.i.i.i19.i32.i227.i

.lr.ph.i.i.i.i.i19.i32.i227.i:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i227.i
  %.012.i.i.i.i.i20.i33.i228.i = phi i64 [ %i.akl, %.lr.ph.i.i.i.i.i19.i32.i227.i ], [ %.012.i.i.i.i.i20.i33.i228.i.unr, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i229.i = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.i19.i32.i227.i ], [ %.0811.i.i.i.i.i21.i34.i229.i.unr, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i230.i = phi ptr [ %i.akj, %.lr.ph.i.i.i.i.i19.i32.i227.i ], [ %.0910.i.i.i.i.i22.i35.i230.i.unr, %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit ] ; 9 uses
  %i.ajn = load i64, ptr %.0910.i.i.i.i.i22.i35.i230.i, align 8, !tbaa !60
  store i64 %i.ajn, ptr %.0811.i.i.i.i.i21.i34.i229.i, align 8, !tbaa !69
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !70
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 8
  store ptr %i.ajp, ptr %i.ajq, align 8, !tbaa !71
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 16
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 16
  %i.ajt = load i64, ptr %i.ajr, align 8, !tbaa !60
  store i64 %i.ajt, ptr %i.ajs, align 8, !tbaa !69
  %i.aju = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 24
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !70
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 24
  store ptr %i.ajv, ptr %i.ajw, align 8, !tbaa !71
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 32
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 32
  %i.ajz = load i64, ptr %i.ajx, align 8, !tbaa !60
  store i64 %i.ajz, ptr %i.ajy, align 8, !tbaa !69
  %i.aka = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 40
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !70
  %i.akc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 40
  store ptr %i.akb, ptr %i.akc, align 8, !tbaa !71
  %i.akd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 48
  %i.ake = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 48
  %i.akf = load i64, ptr %i.akd, align 8, !tbaa !60
  store i64 %i.akf, ptr %i.ake, align 8, !tbaa !69
  %i.akg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 56
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !70
  %i.aki = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 56
  store ptr %i.akh, ptr %i.aki, align 8, !tbaa !71
  %i.akj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i230.i, i64 64
  %i.akk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i229.i, i64 64
  %i.akl = add nsw i64 %.012.i.i.i.i.i20.i33.i228.i, -4
  %i.akm = icmp sgt i64 %.012.i.i.i.i.i20.i33.i228.i, 4
  br i1 %i.akm, label %.lr.ph.i.i.i.i.i19.i32.i227.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit253.i, !llvm.loop !5

_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit253.i: ; preds = %.lr.ph.i.i.i.i.i19.i32.i227.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i227.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i224.i
  %i.akn = icmp slt i64 %i.ada, %i.hj
  br i1 %i.akn, label %.lr.ph.i.i127.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i.i, !llvm.loop !9

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit253.i, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit376.i
  %i.ako = sub i64 %i.he, %i.ig                   ; 2 uses
  %i.akp = ashr exact i64 %i.ako, 4               ; 13 uses
  %i.akq = getelementptr inbounds i8, ptr %.sroa.10.0.i.i, i64 %i.ako ; 3 uses
  %.not38.i.i = icmp slt i64 %i.akp, 7
  br i1 %.not38.i.i, label %._crit_edge.i176.i, label %.lr.ph.i.i167.i

.lr.ph.i.i167.i:                                  ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i.i
  %i.akr = phi i64 [ %i.awe, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i.i ], [ %i.ig, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i.i ] ; 6 uses
  %.sroa.035.039.i.i = phi ptr [ %i.awd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i.i ], [ %i.if, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i.i ] ; 31 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 8 ; 6 uses
  %.pre22.i.i168.i = load i64, ptr %.sroa.035.039.i.i, align 8, !tbaa !60 ; 2 uses
  %.sroa.08.020.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 16 ; 6 uses
  %i.akt = load i64, ptr %.sroa.08.020.i.i.ptr.i, align 8, !tbaa !60 ; 3 uses
  %i.aku = icmp ult i64 %i.akt, %.pre22.i.i168.i
  %.sroa.4.0..sroa_idx.i.i170.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 24
  %.sroa.4.0.copyload.i.i171.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i170.i, align 8
  br i1 %i.aku, label %bb.bn, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i167.i
  %i.akv = ptrtoint ptr %.sroa.08.020.i.i.ptr.i to i64
  %i.akw = sub i64 %i.akv, %i.akr
  %i.akx = ashr exact i64 %i.akw, 4               ; 5 uses
  %i.aky = icmp sgt i64 %i.akx, 0
  br i1 %i.aky, label %.lr.ph.i.i.i.i.i.preheader.i.i183.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i183.i:              ; preds = %bb.bn
  %i.akz = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 32 ; 2 uses
  %xtraiter533 = and i64 %i.akx, 3                ; 2 uses
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod534.not, label %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i184.i.prol

.lr.ph.i.i.i.i.i.i.i184.i.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i183.i, %.lr.ph.i.i.i.i.i.i.i184.i.prol
  %.010.i.i.i.i.i.i.i185.i.prol = phi i64 [ %i.alg, %.lr.ph.i.i.i.i.i.i.i184.i.prol ], [ %i.akx, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ]
  %.069.i.i.i.i.i.i.i186.i.prol = phi ptr [ %i.alb, %.lr.ph.i.i.i.i.i.i.i184.i.prol ], [ %i.akz, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i187.i.prol = phi ptr [ %i.ala, %.lr.ph.i.i.i.i.i.i.i184.i.prol ], [ %.sroa.08.020.i.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ] ; 2 uses
  %prol.iter535 = phi i64 [ %prol.iter535.next, %.lr.ph.i.i.i.i.i.i.i184.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ]
  %i.ala = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i.prol, i64 -16 ; 3 uses
  %i.alb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i.prol, i64 -16 ; 3 uses
  %i.alc = load i64, ptr %i.ala, align 8, !tbaa !60
  store i64 %i.alc, ptr %i.alb, align 8, !tbaa !69
  %i.ald = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i.prol, i64 -8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !70
  %i.alf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i.prol, i64 -8
  store ptr %i.ale, ptr %i.alf, align 8, !tbaa !71
  %i.alg = add nsw i64 %.010.i.i.i.i.i.i.i185.i.prol, -1 ; 2 uses
  %prol.iter535.next = add i64 %prol.iter535, 1   ; 2 uses
  %prol.iter535.cmp.not = icmp eq i64 %prol.iter535.next, %xtraiter533
  br i1 %prol.iter535.cmp.not, label %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i184.i.prol, !llvm.loop !112

.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i184.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i183.i
  %.010.i.i.i.i.i.i.i185.i.unr = phi i64 [ %i.akx, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ], [ %i.alg, %.lr.ph.i.i.i.i.i.i.i184.i.prol ]
  %.069.i.i.i.i.i.i.i186.i.unr = phi ptr [ %i.akz, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ], [ %i.alb, %.lr.ph.i.i.i.i.i.i.i184.i.prol ]
  %.078.i.i.i.i.i.i.i187.i.unr = phi ptr [ %.sroa.08.020.i.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i183.i ], [ %i.ala, %.lr.ph.i.i.i.i.i.i.i184.i.prol ]
  %i.alh = icmp ult i64 %i.akx, 4
  br i1 %i.alh, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i184.i

.lr.ph.i.i.i.i.i.i.i184.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i184.i
  %.010.i.i.i.i.i.i.i185.i = phi i64 [ %i.amg, %.lr.ph.i.i.i.i.i.i.i184.i ], [ %.010.i.i.i.i.i.i.i185.i.unr, %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i186.i = phi ptr [ %i.amb, %.lr.ph.i.i.i.i.i.i.i184.i ], [ %.069.i.i.i.i.i.i.i186.i.unr, %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i187.i = phi ptr [ %i.ama, %.lr.ph.i.i.i.i.i.i.i184.i ], [ %.078.i.i.i.i.i.i.i187.i.unr, %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit ] ; 8 uses
  %i.ali = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -16
  %i.alj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -16
  %i.alk = load i64, ptr %i.ali, align 8, !tbaa !60
  store i64 %i.alk, ptr %i.alj, align 8, !tbaa !69
  %i.all = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -8
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !70
  %i.aln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -8
  store ptr %i.alm, ptr %i.aln, align 8, !tbaa !71
  %i.alo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -32
  %i.alp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -32
  %i.alq = load i64, ptr %i.alo, align 8, !tbaa !60
  store i64 %i.alq, ptr %i.alp, align 8, !tbaa !69
  %i.alr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -24
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !70
  %i.alt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -24
  store ptr %i.als, ptr %i.alt, align 8, !tbaa !71
  %i.alu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -48
  %i.alv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -48
  %i.alw = load i64, ptr %i.alu, align 8, !tbaa !60
  store i64 %i.alw, ptr %i.alv, align 8, !tbaa !69
  %i.alx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -40
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !70
  %i.alz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -40
  store ptr %i.aly, ptr %i.alz, align 8, !tbaa !71
  %i.ama = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -64 ; 2 uses
  %i.amb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -64 ; 2 uses
  %i.amc = load i64, ptr %i.ama, align 8, !tbaa !60
  store i64 %i.amc, ptr %i.amb, align 8, !tbaa !69
  %i.amd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.i, i64 -56
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !70
  %i.amf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.i, i64 -56
  store ptr %i.ame, ptr %i.amf, align 8, !tbaa !71
  %i.amg = add nsw i64 %.010.i.i.i.i.i.i.i185.i, -4
  %i.amh = icmp sgt i64 %.010.i.i.i.i.i.i.i185.i, 4
  br i1 %i.amh, label %.lr.ph.i.i.i.i.i.i.i184.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, !llvm.loop !0

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i184.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i184.i, %bb.bn
  store i64 %i.akt, ptr %.sroa.035.039.i.i, align 8, !tbaa !69
  store ptr %.sroa.4.0.copyload.i.i171.i, ptr %i.aks, align 8, !tbaa !71
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %.lr.ph.i.i167.i
  %i.ami = phi i64 [ %i.akt, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i ], [ %.pre22.i.i168.i, %.lr.ph.i.i167.i ]
  %.sroa.08.020.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 32 ; 8 uses
  %i.amj = load i64, ptr %.sroa.08.020.i.i.ptr.1.i, align 8, !tbaa !60 ; 6 uses
  %i.amk = icmp ult i64 %i.amj, %i.ami
  %.sroa.4.0..sroa_idx.i.i170.1.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 40
  %.sroa.4.0.copyload.i.i171.1.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i170.1.i, align 8 ; 2 uses
  br i1 %i.amk, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.i
  %i.aml = load i64, ptr %.sroa.08.020.i.i.ptr.i, align 8, !tbaa !60 ; 2 uses
  %i.amm = icmp ult i64 %i.amj, %i.aml
  br i1 %i.amm, label %.lr.ph.i.i.i179.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1.i

.lr.ph.i.i.i179.1.i:                              ; preds = %bb.bo, %.lr.ph.i.i.i179.1.i
  %i.amn = phi i64 [ %i.amr, %.lr.ph.i.i.i179.1.i ], [ %i.aml, %bb.bo ]
  %.sroa.0.010.i.i.i180.1.i = phi ptr [ %.sroa.0.0.i.i.i182.1.i, %.lr.ph.i.i.i179.1.i ], [ %.sroa.08.020.i.i.ptr.i, %bb.bo ] ; 3 uses
  %.sroa.05.09.i.i.i181.1.i = phi ptr [ %.sroa.0.010.i.i.i180.1.i, %.lr.ph.i.i.i179.1.i ], [ %.sroa.08.020.i.i.ptr.1.i, %bb.bo ] ; 3 uses
  store i64 %i.amn, ptr %.sroa.05.09.i.i.i181.1.i, align 8, !tbaa !69
  %i.amo = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i181.1.i, i64 -8
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !70
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i181.1.i, i64 8
  store ptr %i.amp, ptr %i.amq, align 8, !tbaa !71
  %.sroa.0.0.i.i.i182.1.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i180.1.i, i64 -16 ; 2 uses
  %i.amr = load i64, ptr %.sroa.0.0.i.i.i182.1.i, align 8, !tbaa !60 ; 2 uses
  %i.ams = icmp ult i64 %i.amj, %i.amr
  br i1 %i.ams, label %.lr.ph.i.i.i179.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1.i, !llvm.loop !1

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1.i: ; preds = %.lr.ph.i.i.i179.1.i, %bb.bo
  %.sroa.05.0.lcssa.i.i.i172.1.i = phi ptr [ %.sroa.08.020.i.i.ptr.1.i, %bb.bo ], [ %.sroa.0.010.i.i.i180.1.i, %.lr.ph.i.i.i179.1.i ] ; 2 uses
  store i64 %i.amj, ptr %.sroa.05.0.lcssa.i.i.i172.1.i, align 8, !tbaa !69
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i172.1.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i171.1.i, ptr %i.amt, align 8, !tbaa !71
  %.pre.i.i173.1.i = load i64, ptr %.sroa.035.039.i.i, align 8, !tbaa !60
  br label %bb.bq

bb.bp:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.i
  %i.amu = ptrtoint ptr %.sroa.08.020.i.i.ptr.1.i to i64
  %i.amv = sub i64 %i.amu, %i.akr
  %i.amw = ashr exact i64 %i.amv, 4               ; 5 uses
  %i.amx = icmp sgt i64 %i.amw, 0
  br i1 %i.amx, label %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.i183.1.i:            ; preds = %bb.bp
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 48 ; 2 uses
  %xtraiter536 = and i64 %i.amw, 3                ; 2 uses
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i184.1.i.prol

.lr.ph.i.i.i.i.i.i.i184.1.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol
  %.010.i.i.i.i.i.i.i185.1.i.prol = phi i64 [ %i.anf, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ], [ %i.amw, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ]
  %.069.i.i.i.i.i.i.i186.1.i.prol = phi ptr [ %i.ana, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ], [ %i.amy, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i187.1.i.prol = phi ptr [ %i.amz, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ], [ %.sroa.08.020.i.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ] ; 2 uses
  %prol.iter538 = phi i64 [ %prol.iter538.next, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ]
  %i.amz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i.prol, i64 -16 ; 3 uses
  %i.ana = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i.prol, i64 -16 ; 3 uses
  %i.anb = load i64, ptr %i.amz, align 8, !tbaa !60
  store i64 %i.anb, ptr %i.ana, align 8, !tbaa !69
  %i.anc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i.prol, i64 -8
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !70
  %i.ane = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i.prol, i64 -8
  store ptr %i.and, ptr %i.ane, align 8, !tbaa !71
  %i.anf = add nsw i64 %.010.i.i.i.i.i.i.i185.1.i.prol, -1 ; 2 uses
  %prol.iter538.next = add i64 %prol.iter538, 1   ; 2 uses
  %prol.iter538.cmp.not = icmp eq i64 %prol.iter538.next, %xtraiter536
  br i1 %prol.iter538.cmp.not, label %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i184.1.i.prol, !llvm.loop !113

.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i184.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i
  %.010.i.i.i.i.i.i.i185.1.i.unr = phi i64 [ %i.amw, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ], [ %i.anf, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ]
  %.069.i.i.i.i.i.i.i186.1.i.unr = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ], [ %i.ana, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ]
  %.078.i.i.i.i.i.i.i187.1.i.unr = phi ptr [ %.sroa.08.020.i.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.i183.1.i ], [ %i.amz, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol ]
  %i.ang = icmp ult i64 %i.amw, 4
  br i1 %i.ang, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1.i, label %.lr.ph.i.i.i.i.i.i.i184.1.i

.lr.ph.i.i.i.i.i.i.i184.1.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i184.1.i
  %.010.i.i.i.i.i.i.i185.1.i = phi i64 [ %i.aof, %.lr.ph.i.i.i.i.i.i.i184.1.i ], [ %.010.i.i.i.i.i.i.i185.1.i.unr, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i186.1.i = phi ptr [ %i.aoa, %.lr.ph.i.i.i.i.i.i.i184.1.i ], [ %.069.i.i.i.i.i.i.i186.1.i.unr, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i187.1.i = phi ptr [ %i.anz, %.lr.ph.i.i.i.i.i.i.i184.1.i ], [ %.078.i.i.i.i.i.i.i187.1.i.unr, %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit ] ; 8 uses
  %i.anh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -16
  %i.ani = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -16
  %i.anj = load i64, ptr %i.anh, align 8, !tbaa !60
  store i64 %i.anj, ptr %i.ani, align 8, !tbaa !69
  %i.ank = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -8
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !70
  %i.anm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -8
  store ptr %i.anl, ptr %i.anm, align 8, !tbaa !71
  %i.ann = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -32
  %i.ano = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -32
  %i.anp = load i64, ptr %i.ann, align 8, !tbaa !60
  store i64 %i.anp, ptr %i.ano, align 8, !tbaa !69
  %i.anq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -24
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !70
  %i.ans = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -24
  store ptr %i.anr, ptr %i.ans, align 8, !tbaa !71
  %i.ant = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -48
  %i.anu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -48
  %i.anv = load i64, ptr %i.ant, align 8, !tbaa !60
  store i64 %i.anv, ptr %i.anu, align 8, !tbaa !69
  %i.anw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -40
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !70
  %i.any = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -40
  store ptr %i.anx, ptr %i.any, align 8, !tbaa !71
  %i.anz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -64 ; 2 uses
  %i.aoa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -64 ; 2 uses
  %i.aob = load i64, ptr %i.anz, align 8, !tbaa !60
  store i64 %i.aob, ptr %i.aoa, align 8, !tbaa !69
  %i.aoc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.1.i, i64 -56
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !70
  %i.aoe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.1.i, i64 -56
  store ptr %i.aod, ptr %i.aoe, align 8, !tbaa !71
  %i.aof = add nsw i64 %.010.i.i.i.i.i.i.i185.1.i, -4
  %i.aog = icmp sgt i64 %.010.i.i.i.i.i.i.i185.1.i, 4
  br i1 %i.aog, label %.lr.ph.i.i.i.i.i.i.i184.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1.i, !llvm.loop !0

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.i184.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i184.1.i, %bb.bp
  store i64 %i.amj, ptr %.sroa.035.039.i.i, align 8, !tbaa !69
  store ptr %.sroa.4.0.copyload.i.i171.1.i, ptr %i.aks, align 8, !tbaa !71
  br label %bb.bq

bb.bq:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1.i
  %i.aoh = phi i64 [ %i.amj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1.i ], [ %.pre.i.i173.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1.i ]
  %.sroa.08.020.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 48 ; 8 uses
  %i.aoi = load i64, ptr %.sroa.08.020.i.i.ptr.2.i, align 8, !tbaa !60 ; 6 uses
  %i.aoj = icmp ult i64 %i.aoi, %i.aoh
  %.sroa.4.0..sroa_idx.i.i170.2.i = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 56
  %.sroa.4.0.copyload.i.i171.2.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i170.2.i, align 8 ; 2 uses
  br i1 %i.aoj, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aok = load i64, ptr %.sroa.08.020.i.i.ptr.1.i, align 8, !tbaa !60 ; 2 uses
  %i.aol = icmp ult i64 %i.aoi, %i.aok
  br i1 %i.aol, label %.lr.ph.i.i.i179.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2.i

.lr.ph.i.i.i179.2.i:                              ; preds = %bb.br, %.lr.ph.i.i.i179.2.i
  %i.aom = phi i64 [ %i.aoq, %.lr.ph.i.i.i179.2.i ], [ %i.aok, %bb.br ]
  %.sroa.0.010.i.i.i180.2.i = phi ptr [ %.sroa.0.0.i.i.i182.2.i, %.lr.ph.i.i.i179.2.i ], [ %.sroa.08.020.i.i.ptr.1.i, %bb.br ] ; 3 uses
  %.sroa.05.09.i.i.i181.2.i = phi ptr [ %.sroa.0.010.i.i.i180.2.i, %.lr.ph.i.i.i179.2.i ], [ %.sroa.08.020.i.i.ptr.2.i, %bb.br ] ; 3 uses
  store i64 %i.aom, ptr %.sroa.05.09.i.i.i181.2.i, align 8, !tbaa !69
  %i.aon = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i181.2.i, i64 -8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !70
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i181.2.i, i64 8
  store ptr %i.aoo, ptr %i.aop, align 8, !tbaa !71
  %.sroa.0.0.i.i.i182.2.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i180.2.i, i64 -16 ; 2 uses
  %i.aoq = load i64, ptr %.sroa.0.0.i.i.i182.2.i, align 8, !tbaa !60 ; 2 uses
  %i.aor = icmp ult i64 %i.aoi, %i.aoq
  br i1 %i.aor, label %.lr.ph.i.i.i179.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2.i, !llvm.loop !1

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2.i: ; preds = %.lr.ph.i.i.i179.2.i, %bb.br
  %.sroa.05.0.lcssa.i.i.i172.2.i = phi ptr [ %.sroa.08.020.i.i.ptr.2.i, %bb.br ], [ %.sroa.0.010.i.i.i180.2.i, %.lr.ph.i.i.i179.2.i ] ; 2 uses
  store i64 %i.aoi, ptr %.sroa.05.0.lcssa.i.i.i172.2.i, align 8, !tbaa !69
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i172.2.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i171.2.i, ptr %i.aos, align 8, !tbaa !71
  %.pre.i.i173.2.i = load i64, ptr %.sroa.035.039.i.i, align 8, !tbaa !60
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.aot = ptrtoint ptr %.sroa.08.020.i.i.ptr.2.i to i64
  %i.aou = sub i64 %i.aot, %i.akr
  %i.aov = ashr exact i64 %i.aou, 4               ; 5 uses
  %i.aow = icmp sgt i64 %i.aov, 0
  br i1 %i.aow, label %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.i183.2.i:            ; preds = %bb.bs
  %i.aox = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i.i, i64 64 ; 2 uses
  %xtraiter539 = and i64 %i.aov, 3                ; 2 uses
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i184.2.i.prol

.lr.ph.i.i.i.i.i.i.i184.2.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol
  %.010.i.i.i.i.i.i.i185.2.i.prol = phi i64 [ %i.ape, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ], [ %i.aov, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ]
  %.069.i.i.i.i.i.i.i186.2.i.prol = phi ptr [ %i.aoz, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ], [ %i.aox, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i187.2.i.prol = phi ptr [ %i.aoy, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ], [ %.sroa.08.020.i.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ] ; 2 uses
  %prol.iter541 = phi i64 [ %prol.iter541.next, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ]
  %i.aoy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.2.i.prol, i64 -16 ; 3 uses
  %i.aoz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.2.i.prol, i64 -16 ; 3 uses
  %i.apa = load i64, ptr %i.aoy, align 8, !tbaa !60
  store i64 %i.apa, ptr %i.aoz, align 8, !tbaa !69
  %i.apb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.2.i.prol, i64 -8
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !70
  %i.apd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.2.i.prol, i64 -8
  store ptr %i.apc, ptr %i.apd, align 8, !tbaa !71
  %i.ape = add nsw i64 %.010.i.i.i.i.i.i.i185.2.i.prol, -1 ; 2 uses
  %prol.iter541.next = add i64 %prol.iter541, 1   ; 2 uses
  %prol.iter541.cmp.not = icmp eq i64 %prol.iter541.next, %xtraiter539
  br i1 %prol.iter541.cmp.not, label %.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i184.2.i.prol, !llvm.loop !114

.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i184.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i
  %.010.i.i.i.i.i.i.i185.2.i.unr = phi i64 [ %i.aov, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ], [ %i.ape, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ]
  %.069.i.i.i.i.i.i.i186.2.i.unr = phi ptr [ %i.aox, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ], [ %i.aoz, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ]
  %.078.i.i.i.i.i.i.i187.2.i.unr = phi ptr [ %.sroa.08.020.i.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.i183.2.i ], [ %i.aoy, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol ]
  %i.apf = icmp ult i64 %i.aov, 4
  br i1 %i.apf, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2.i, label %.lr.ph.i.i.i.i.i.i.i184.2.i

.lr.ph.i.i.i.i.i.i.i184.2.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i184.2.i
  %.010.i.i.i.i.i.i.i185.2.i = phi i64 [ %i.aqe, %.lr.ph.i.i.i.i.i.i.i184.2.i ], [ %.010.i.i.i.i.i.i.i185.2.i.unr, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i186.2.i = phi ptr [ %i.apz, %.lr.ph.i.i.i.i.i.i.i184.2.i ], [ %.069.i.i.i.i.i.i.i186.2.i.unr, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i187.2.i = phi ptr [ %i.apy, %.lr.ph.i.i.i.i.i.i.i184.2.i ], [ %.078.i.i.i.i.i.i.i187.2.i.unr, %.lr.ph.i.i.i.i.i.i.i184.2.i.prol.loopexit ] ; 8 uses
  %i.apg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i187.2.i, i64 -16
  %i.aph = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i186.2.i, i64 -16
  %i.api = load i64, ptr %i.apg, align 8, !tbaa !60
  store i64 %i.api, ptr %i.aph, align 8, !tbaa !69
end_hunk_1
