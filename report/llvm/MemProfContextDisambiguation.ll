Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemProfContextDisambiguation?download=true
inline.NumInlined: 24972
inline.NumDeleted: 9896
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN4llvm28MemProfContextDisambiguation10performICPERNS_6ModuleENS_8ArrayRefINS_12CallsiteInfoEEENS3_ISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISA_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISH_EEEENS3_INS0_17ICallAnalysisDataEEERNS_25OptimizationRemarkEmitterE:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i245, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.ho, %i.fo
  br i1 %.not.i16.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i13.i, !llvm.loop !1609

.preheader.i23.i:                                 ; preds = %bb.d
  %.sroa.08.017.i24.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 2 uses
  %.not18.i25.i = icmp eq ptr %.sroa.08.017.i24.i, %i.fo
  br i1 %.not18.i25.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.preheader.i23.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.pre22.i27.i = load i64, ptr %i.fm, align 8, !tbaa !460
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i26.i
  %i.hq = phi i64 [ %.pre22.i27.i, %.lr.ph.i26.i ], [ %i.in, %bb.k ]
  %.sroa.08.020.i28.i = phi ptr [ %.sroa.08.017.i24.i, %.lr.ph.i26.i ], [ %.sroa.08.0.i34.i, %bb.k ] ; 7 uses
  %.pn19.i29.i = phi ptr [ %i.fm, %.lr.ph.i26.i ], [ %.sroa.08.020.i28.i, %bb.k ] ; 4 uses
  %i.hr = load i64, ptr %.sroa.08.020.i28.i, align 8, !tbaa !460 ; 6 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 32 ; 2 uses
  br i1 %i.hs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i22.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.ht = ptrtoint ptr %.sroa.08.020.i28.i to i64
  %i.hu = sub i64 %i.ht, %i.fq                    ; 2 uses
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.preheader.i.i.i.i.i.i41.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i

.lr.ph.preheader.i.i.i.i.i.i41.i:                 ; preds = %bb.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 48
  %i.hx = udiv exact i64 %i.hu, 24
  br label %.lr.ph.i.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i.i42.i:                           ; preds = %.lr.ph.i.i.i.i.i.i42.i, %.lr.ph.preheader.i.i.i.i.i.i41.i
  %.010.i.i.i.i.i.i43.i = phi i64 [ %i.id, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.hx, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.069.i.i.i.i.i.i44.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.hw, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.078.i.i.i.i.i.i45.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i42.i ], [ %.sroa.08.020.i28.i, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -24 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -24 ; 2 uses
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !460
  store i64 %i.ia, ptr %i.hz, align 8, !tbaa !615
  %i.ib = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false), !tbaa.struct !616
  %i.id = add nsw i64 %.010.i.i.i.i.i.i43.i, -1
  %i.ie = icmp samesign ugt i64 %.010.i.i.i.i.i.i43.i, 1
  br i1 %i.ie, label %.lr.ph.i.i.i.i.i.i42.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i, !llvm.loop !1606

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i: ; preds = %.lr.ph.i.i.i.i.i.i42.i, %bb.i
  store i64 %i.hr, ptr %i.fm, align 8, !tbaa !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, i64 16, i1 false), !tbaa.struct !616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i22.i)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.if = load i64, ptr %.pn19.i29.i, align 8, !tbaa !460 ; 2 uses
  %i.ig = icmp ult i64 %i.hr, %i.if
  br i1 %i.ig, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i

.lr.ph.i.i36.i:                                   ; preds = %bb.j, %.lr.ph.i.i36.i
  %i.ih = phi i64 [ %i.ik, %.lr.ph.i.i36.i ], [ %i.if, %bb.j ]
  %.sroa.0.010.i.i37.i = phi ptr [ %.sroa.0.0.i.i39.i, %.lr.ph.i.i36.i ], [ %.pn19.i29.i, %bb.j ] ; 3 uses
  %.sroa.05.09.i.i38.i = phi ptr [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ], [ %.sroa.08.020.i28.i, %bb.j ] ; 3 uses
  store i64 %i.ih, ptr %.sroa.05.09.i.i38.i, align 8, !tbaa !615
  %i.ii = getelementptr inbounds i8, ptr %.sroa.05.09.i.i38.i, i64 -16
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i38.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i64 16, i1 false), !tbaa.struct !616
  %.sroa.0.0.i.i39.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i37.i, i64 -24 ; 2 uses
  %i.ik = load i64, ptr %.sroa.0.0.i.i39.i, align 8, !tbaa !460 ; 2 uses
  %i.il = icmp ult i64 %i.hr, %i.ik
  br i1 %i.il, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, !llvm.loop !1607

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i: ; preds = %.lr.ph.i.i36.i, %bb.j
  %.sroa.05.0.lcssa.i.i32.i = phi ptr [ %.sroa.08.020.i28.i, %bb.j ], [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ] ; 2 uses
  store i64 %i.hr, ptr %.sroa.05.0.lcssa.i.i32.i, align 8, !tbaa !615
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i32.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, i64 16, i1 false), !tbaa.struct !616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i21.i)
  %.pre.i33.i = load i64, ptr %i.fm, align 8, !tbaa !460
  br label %bb.k

bb.k:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i
  %i.in = phi i64 [ %i.hr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i ], [ %.pre.i33.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i ]
  %.sroa.08.0.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i, i64 24 ; 2 uses
  %.not.i35.i = icmp eq ptr %.sroa.08.0.i34.i, %i.fo
  br i1 %.not.i35.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %bb.h, !llvm.loop !1608

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i: ; preds = %bb.k, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i14.i, %.preheader.i23.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_.exit.i, %bb.c
  %i.io = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !1697 ; 17 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fg, i64 104
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !1697 ; 13 uses
  %i.is = icmp eq ptr %i.ip, %i.ir
  br i1 %i.is, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i
  %i.it = ptrtoint ptr %i.ir to i64               ; 5 uses
  %i.iu = ptrtoint ptr %i.ip to i64               ; 3 uses
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = ashr exact i64 %i.iv, 4                 ; 5 uses
  %i.ix = add nsw i64 %i.iw, 1
  %i.iy = sdiv i64 %i.ix, 2                       ; 10 uses
  %i.iz = icmp sgt i64 %i.iw, 0                   ; 2 uses
  br i1 %i.iz, label %.lr.ph.i.i.i229, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

.lr.ph.i.i.i229:                                  ; preds = %bb.l, %select.unfold.i.i.i
  %.010.i.i.i = phi i64 [ %i.je, %select.unfold.i.i.i ], [ %i.iy, %bb.l ] ; 5 uses
  %i.ja = shl nuw nsw i64 %.010.i.i.i, 4          ; 3 uses
  %i.jb = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ja, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #33 ; 8 uses
  %.not.i.i.i230 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i230, label %select.unfold.i.i.i, label %bb.m

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i229
  %i.jc = icmp eq i64 %.010.i.i.i, 1
  %i.jd = add nuw nsw i64 %.010.i.i.i, 1
  %i.je = lshr i64 %i.jd, 1
  br i1 %i.jc, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i, label %.lr.ph.i.i.i229, !llvm.loop !1610

bb.m:                                             ; preds = %.lr.ph.i.i.i229
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i64 16, i1 false)
  %.not18.i.i.i.i231 = icmp eq i64 %.010.i.i.i, 1
  br i1 %.not18.i.i.i.i231, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.m
  %.01317.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.jg = add nsw i64 %i.ja, -32                  ; 2 uses
  %i.jh = lshr exact i64 %i.jg, 4
  %i.ji = add nuw nsw i64 %i.jh, 1
  %xtraiter1175 = and i64 %i.ji, 3                ; 2 uses
  %lcmp.mod1176.not = icmp eq i64 %xtraiter1175, 0
  br i1 %lcmp.mod1176.not, label %.lr.ph.i.i.i.i232.prol.loopexit, label %.lr.ph.i.i.i.i232.prol

.lr.ph.i.i.i.i232.prol:                           ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i232.prol
  %.01320.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i232.prol ], [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.019.i.i.i.i.prol = phi ptr [ %i.jj, %.lr.ph.i.i.i.i232.prol ], [ %i.jb, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i232.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.prol, i64 16, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1175
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i232.prol.loopexit, label %.lr.ph.i.i.i.i232.prol, !llvm.loop !1611

.lr.ph.i.i.i.i232.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i232.prol, %.lr.ph.i.i.preheader.i.i
  %.lcssa1118.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %i.jj, %.lr.ph.i.i.i.i232.prol ]
  %.01320.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i232.prol ]
  %.019.i.i.i.i.unr = phi ptr [ %i.jb, %.lr.ph.i.i.preheader.i.i ], [ %i.jj, %.lr.ph.i.i.i.i232.prol ]
  %i.jk = icmp ult i64 %i.jg, 48
  br i1 %i.jk, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i232

.lr.ph.i.i.i.i232:                                ; preds = %.lr.ph.i.i.i.i232.prol.loopexit, %.lr.ph.i.i.i.i232
  %.01320.i.i.i.i = phi ptr [ %.013.i.i.i.i.3, %.lr.ph.i.i.i.i232 ], [ %.01320.i.i.i.i.unr, %.lr.ph.i.i.i.i232.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i = phi ptr [ %i.jo, %.lr.ph.i.i.i.i232 ], [ %.019.i.i.i.i.unr, %.lr.ph.i.i.i.i232.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i, i64 16, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %.013.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i64 16, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 32
  %.013.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i64 16, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 48
  %.013.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i233.3 = icmp eq ptr %.013.i.i.i.i.3, %i.jf
  br i1 %.not.i.i.i.i233.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i232, !llvm.loop !1612

_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i232.prol.loopexit, %.lr.ph.i.i.i.i232, %bb.m
  %.0.lcssa.i.i.i.i = phi ptr [ %i.jb, %bb.m ], [ %.lcssa1118.unr, %.lr.ph.i.i.i.i232.prol.loopexit ], [ %i.jo, %.lr.ph.i.i.i.i232 ] ; 2 uses
  %i.jp = load i64, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !460
  store i64 %i.jp, ptr %i.ip, align 8, !tbaa !619
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !409
  %i.js = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !620
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i: ; preds = %select.unfold.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, %bb.l
  %.sroa.4.0.i = phi i64 [ 0, %bb.l ], [ %.010.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ 0, %select.unfold.i.i.i ] ; 3 uses
  %.sroa.10.0.i = phi ptr [ null, %bb.l ], [ %i.jb, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ null, %select.unfold.i.i.i ] ; 22 uses
  %i.jt = icmp eq i64 %i.iy, %.sroa.4.0.i
  br i1 %i.jt, label %bb.n, label %bb.cs, !prof !530

bb.n:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i
  %.idx566 = shl nsw i64 %i.iy, 4                 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.ip, i64 %.idx566 ; 16 uses
  %i.jv = ptrtoint ptr %i.ju to i64               ; 6 uses
  %i.jw = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %.idx566 ; 3 uses
  %.not38.i454 = icmp slt i64 %i.iw, 13
  br i1 %.not38.i454, label %._crit_edge.i471, label %.lr.ph.i.i456

.lr.ph.i.i456:                                    ; preds = %bb.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i469
  %i.jx = phi i64 [ %i.vk, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i469 ], [ %i.iu, %bb.n ] ; 6 uses
  %.sroa.035.039.i457 = phi ptr [ %i.vj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i469 ], [ %i.ip, %bb.n ] ; 32 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 8 ; 6 uses
  %.pre22.i.i459 = load i64, ptr %.sroa.035.039.i457, align 8, !tbaa !460 ; 2 uses
  %.sroa.08.020.i.i460.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 16 ; 6 uses
  %i.jz = load i64, ptr %.sroa.08.020.i.i460.ptr, align 8, !tbaa !460 ; 3 uses
  %i.ka = icmp ult i64 %i.jz, %.pre22.i.i459
  %.sroa.4.0..sroa_idx.i.i462 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 24
  %.sroa.4.0.copyload.i.i463 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i462, align 8 ; 2 uses
  br i1 %i.ka, label %bb.o, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464

bb.o:                                             ; preds = %.lr.ph.i.i456
  %i.kb = ptrtoint ptr %.sroa.08.020.i.i460.ptr to i64
  %i.kc = sub i64 %i.kb, %i.jx
  %i.kd = ashr exact i64 %i.kc, 4                 ; 5 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.preheader.i.i503, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502

.lr.ph.i.i.i.i.i.preheader.i.i503:                ; preds = %bb.o
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 32 ; 2 uses
  %xtraiter1177 = and i64 %i.kd, 3                ; 2 uses
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1177, 0
  br i1 %lcmp.mod1178.not, label %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i504.prol

.lr.ph.i.i.i.i.i.i.i504.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i503, %.lr.ph.i.i.i.i.i.i.i504.prol
  %.010.i.i.i.i.i.i.i505.prol = phi i64 [ %i.km, %.lr.ph.i.i.i.i.i.i.i504.prol ], [ %i.kd, %.lr.ph.i.i.i.i.i.preheader.i.i503 ]
  %.069.i.i.i.i.i.i.i506.prol = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i.i504.prol ], [ %i.kf, %.lr.ph.i.i.i.i.i.preheader.i.i503 ] ; 2 uses
  %.078.i.i.i.i.i.i.i507.prol = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i.i504.prol ], [ %.sroa.08.020.i.i460.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i503 ] ; 2 uses
  %prol.iter1179 = phi i64 [ %prol.iter1179.next, %.lr.ph.i.i.i.i.i.i.i504.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i503 ]
  %i.kg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.prol, i64 -16 ; 3 uses
  %i.kh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.prol, i64 -16 ; 3 uses
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !460
  store i64 %i.ki, ptr %i.kh, align 8, !tbaa !619
  %i.kj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.prol, i64 -8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !409
  %i.kl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.prol, i64 -8
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !620
  %i.km = add nsw i64 %.010.i.i.i.i.i.i.i505.prol, -1 ; 2 uses
  %prol.iter1179.next = add i64 %prol.iter1179, 1 ; 2 uses
  %prol.iter1179.cmp.not = icmp eq i64 %prol.iter1179.next, %xtraiter1177
  br i1 %prol.iter1179.cmp.not, label %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i504.prol, !llvm.loop !1613

.lr.ph.i.i.i.i.i.i.i504.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i504.prol, %.lr.ph.i.i.i.i.i.preheader.i.i503
  %.010.i.i.i.i.i.i.i505.unr = phi i64 [ %i.kd, %.lr.ph.i.i.i.i.i.preheader.i.i503 ], [ %i.km, %.lr.ph.i.i.i.i.i.i.i504.prol ]
  %.069.i.i.i.i.i.i.i506.unr = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.preheader.i.i503 ], [ %i.kh, %.lr.ph.i.i.i.i.i.i.i504.prol ]
  %.078.i.i.i.i.i.i.i507.unr = phi ptr [ %.sroa.08.020.i.i460.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i503 ], [ %i.kg, %.lr.ph.i.i.i.i.i.i.i504.prol ]
  %i.kn = icmp ult i64 %i.kd, 4
  br i1 %i.kn, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502, label %.lr.ph.i.i.i.i.i.i.i504

.lr.ph.i.i.i.i.i.i.i504:                          ; preds = %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i504
  %.010.i.i.i.i.i.i.i505 = phi i64 [ %i.lm, %.lr.ph.i.i.i.i.i.i.i504 ], [ %.010.i.i.i.i.i.i.i505.unr, %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i506 = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i.i.i504 ], [ %.069.i.i.i.i.i.i.i506.unr, %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i507 = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i.i.i504 ], [ %.078.i.i.i.i.i.i.i507.unr, %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit ] ; 8 uses
  %i.ko = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -16
  %i.kp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -16
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !460
  store i64 %i.kq, ptr %i.kp, align 8, !tbaa !619
  %i.kr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !409
  %i.kt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -8
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !620
  %i.ku = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -32
  %i.kv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -32
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !460
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !619
  %i.kx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !409
  %i.kz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -24
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !620
  %i.la = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -48
  %i.lb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -48
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !460
  store i64 %i.lc, ptr %i.lb, align 8, !tbaa !619
  %i.ld = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -40
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !409
  %i.lf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -40
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !620
  %i.lg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -64 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -64 ; 2 uses
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !460
  store i64 %i.li, ptr %i.lh, align 8, !tbaa !619
  %i.lj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507, i64 -56
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !409
  %i.ll = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506, i64 -56
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !620
  %i.lm = add nsw i64 %.010.i.i.i.i.i.i.i505, -4
  %i.ln = icmp sgt i64 %.010.i.i.i.i.i.i.i505, 4
  br i1 %i.ln, label %.lr.ph.i.i.i.i.i.i.i504, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502, !llvm.loop !12

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502: ; preds = %.lr.ph.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i504, %bb.o
  store i64 %i.jz, ptr %.sroa.035.039.i457, align 8, !tbaa !619
  store ptr %.sroa.4.0.copyload.i.i463, ptr %i.jy, align 8, !tbaa !620
  br label %bb.p

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464: ; preds = %.lr.ph.i.i456
  %32 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 24
  store ptr %.sroa.4.0.copyload.i.i463, ptr %32, align 8, !tbaa !620
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502
  %i.lo = phi i64 [ %i.jz, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502 ], [ %.pre22.i.i459, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464 ]
  %.sroa.08.020.i.i460.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 32 ; 8 uses
  %i.lp = load i64, ptr %.sroa.08.020.i.i460.ptr.1, align 8, !tbaa !460 ; 6 uses
  %i.lq = icmp ult i64 %i.lp, %i.lo
  %.sroa.4.0..sroa_idx.i.i462.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 40
  %.sroa.4.0.copyload.i.i463.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i462.1, align 8 ; 2 uses
  br i1 %i.lq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lr = load i64, ptr %.sroa.08.020.i.i460.ptr, align 8, !tbaa !460 ; 2 uses
  %i.ls = icmp ult i64 %i.lp, %i.lr
  br i1 %i.ls, label %.lr.ph.i.i.i498.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.1

.lr.ph.i.i.i498.1:                                ; preds = %bb.q, %.lr.ph.i.i.i498.1
  %i.lt = phi i64 [ %i.lx, %.lr.ph.i.i.i498.1 ], [ %i.lr, %bb.q ]
  %.sroa.0.010.i.i.i499.1 = phi ptr [ %.sroa.0.0.i.i.i501.1, %.lr.ph.i.i.i498.1 ], [ %.sroa.08.020.i.i460.ptr, %bb.q ] ; 3 uses
  %.sroa.05.09.i.i.i500.1 = phi ptr [ %.sroa.0.010.i.i.i499.1, %.lr.ph.i.i.i498.1 ], [ %.sroa.08.020.i.i460.ptr.1, %bb.q ] ; 3 uses
  store i64 %i.lt, ptr %.sroa.05.09.i.i.i500.1, align 8, !tbaa !619
  %i.lu = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i500.1, i64 -8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !409
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i500.1, i64 8
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !620
  %.sroa.0.0.i.i.i501.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i499.1, i64 -16 ; 2 uses
  %i.lx = load i64, ptr %.sroa.0.0.i.i.i501.1, align 8, !tbaa !460 ; 2 uses
  %i.ly = icmp ult i64 %i.lp, %i.lx
  br i1 %i.ly, label %.lr.ph.i.i.i498.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.1, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.1: ; preds = %.lr.ph.i.i.i498.1, %bb.q
  %.sroa.05.0.lcssa.i.i.i465.1 = phi ptr [ %.sroa.08.020.i.i460.ptr.1, %bb.q ], [ %.sroa.0.010.i.i.i499.1, %.lr.ph.i.i.i498.1 ] ; 2 uses
  store i64 %i.lp, ptr %.sroa.05.0.lcssa.i.i.i465.1, align 8, !tbaa !619
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i465.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i463.1, ptr %i.lz, align 8, !tbaa !620
  %.pre.i.i466.1 = load i64, ptr %.sroa.035.039.i457, align 8, !tbaa !460
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ma = ptrtoint ptr %.sroa.08.020.i.i460.ptr.1 to i64
  %i.mb = sub i64 %i.ma, %i.jx
  %i.mc = ashr exact i64 %i.mb, 4                 ; 5 uses
  %i.md = icmp sgt i64 %i.mc, 0
  br i1 %i.md, label %.lr.ph.i.i.i.i.i.preheader.i.i503.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.1

.lr.ph.i.i.i.i.i.preheader.i.i503.1:              ; preds = %bb.r
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 48 ; 2 uses
  %xtraiter1192 = and i64 %i.mc, 3                ; 2 uses
  %lcmp.mod1193.not = icmp eq i64 %xtraiter1192, 0
  br i1 %lcmp.mod1193.not, label %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i504.1.prol

.lr.ph.i.i.i.i.i.i.i504.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i503.1, %.lr.ph.i.i.i.i.i.i.i504.1.prol
  %.010.i.i.i.i.i.i.i505.1.prol = phi i64 [ %i.ml, %.lr.ph.i.i.i.i.i.i.i504.1.prol ], [ %i.mc, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ]
  %.069.i.i.i.i.i.i.i506.1.prol = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i.i504.1.prol ], [ %i.me, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i507.1.prol = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i.i504.1.prol ], [ %.sroa.08.020.i.i460.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ] ; 2 uses
  %prol.iter1194 = phi i64 [ %prol.iter1194.next, %.lr.ph.i.i.i.i.i.i.i504.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ]
  %i.mf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1.prol, i64 -16 ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1.prol, i64 -16 ; 3 uses
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !460
  store i64 %i.mh, ptr %i.mg, align 8, !tbaa !619
  %i.mi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1.prol, i64 -8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !409
  %i.mk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1.prol, i64 -8
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !620
  %i.ml = add nsw i64 %.010.i.i.i.i.i.i.i505.1.prol, -1 ; 2 uses
  %prol.iter1194.next = add i64 %prol.iter1194, 1 ; 2 uses
  %prol.iter1194.cmp.not = icmp eq i64 %prol.iter1194.next, %xtraiter1192
  br i1 %prol.iter1194.cmp.not, label %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i504.1.prol, !llvm.loop !1614

.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i504.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i503.1
  %.010.i.i.i.i.i.i.i505.1.unr = phi i64 [ %i.mc, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ], [ %i.ml, %.lr.ph.i.i.i.i.i.i.i504.1.prol ]
  %.069.i.i.i.i.i.i.i506.1.unr = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ], [ %i.mg, %.lr.ph.i.i.i.i.i.i.i504.1.prol ]
  %.078.i.i.i.i.i.i.i507.1.unr = phi ptr [ %.sroa.08.020.i.i460.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i503.1 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i504.1.prol ]
  %i.mm = icmp ult i64 %i.mc, 4
  br i1 %i.mm, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.1, label %.lr.ph.i.i.i.i.i.i.i504.1

.lr.ph.i.i.i.i.i.i.i504.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i504.1
  %.010.i.i.i.i.i.i.i505.1 = phi i64 [ %i.nl, %.lr.ph.i.i.i.i.i.i.i504.1 ], [ %.010.i.i.i.i.i.i.i505.1.unr, %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i506.1 = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i.i.i504.1 ], [ %.069.i.i.i.i.i.i.i506.1.unr, %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i507.1 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i504.1 ], [ %.078.i.i.i.i.i.i.i507.1.unr, %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit ] ; 8 uses
  %i.mn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -16
  %i.mo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -16
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !460
  store i64 %i.mp, ptr %i.mo, align 8, !tbaa !619
  %i.mq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !409
  %i.ms = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -8
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !620
  %i.mt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -32
  %i.mu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -32
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !460
  store i64 %i.mv, ptr %i.mu, align 8, !tbaa !619
  %i.mw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !409
  %i.my = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -24
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !620
  %i.mz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -48
  %i.na = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -48
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !460
  store i64 %i.nb, ptr %i.na, align 8, !tbaa !619
  %i.nc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -40
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !409
  %i.ne = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -40
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !620
  %i.nf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -64 ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -64 ; 2 uses
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !460
  store i64 %i.nh, ptr %i.ng, align 8, !tbaa !619
  %i.ni = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.1, i64 -56
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !409
  %i.nk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.1, i64 -56
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !620
  %i.nl = add nsw i64 %.010.i.i.i.i.i.i.i505.1, -4
  %i.nm = icmp sgt i64 %.010.i.i.i.i.i.i.i505.1, 4
  br i1 %i.nm, label %.lr.ph.i.i.i.i.i.i.i504.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.1, !llvm.loop !12

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.1: ; preds = %.lr.ph.i.i.i.i.i.i.i504.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i504.1, %bb.r
  store i64 %i.lp, ptr %.sroa.035.039.i457, align 8, !tbaa !619
  store ptr %.sroa.4.0.copyload.i.i463.1, ptr %i.jy, align 8, !tbaa !620
  br label %bb.s

bb.s:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.1
  %i.nn = phi i64 [ %i.lp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.1 ], [ %.pre.i.i466.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.1 ]
  %.sroa.08.020.i.i460.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 48 ; 8 uses
  %i.no = load i64, ptr %.sroa.08.020.i.i460.ptr.2, align 8, !tbaa !460 ; 6 uses
  %i.np = icmp ult i64 %i.no, %i.nn
  %.sroa.4.0..sroa_idx.i.i462.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 56
  %.sroa.4.0.copyload.i.i463.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i462.2, align 8 ; 2 uses
  br i1 %i.np, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.nq = load i64, ptr %.sroa.08.020.i.i460.ptr.1, align 8, !tbaa !460 ; 2 uses
  %i.nr = icmp ult i64 %i.no, %i.nq
  br i1 %i.nr, label %.lr.ph.i.i.i498.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.2

.lr.ph.i.i.i498.2:                                ; preds = %bb.t, %.lr.ph.i.i.i498.2
  %i.ns = phi i64 [ %i.nw, %.lr.ph.i.i.i498.2 ], [ %i.nq, %bb.t ]
  %.sroa.0.010.i.i.i499.2 = phi ptr [ %.sroa.0.0.i.i.i501.2, %.lr.ph.i.i.i498.2 ], [ %.sroa.08.020.i.i460.ptr.1, %bb.t ] ; 3 uses
  %.sroa.05.09.i.i.i500.2 = phi ptr [ %.sroa.0.010.i.i.i499.2, %.lr.ph.i.i.i498.2 ], [ %.sroa.08.020.i.i460.ptr.2, %bb.t ] ; 3 uses
  store i64 %i.ns, ptr %.sroa.05.09.i.i.i500.2, align 8, !tbaa !619
  %i.nt = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i500.2, i64 -8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !409
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i500.2, i64 8
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !620
  %.sroa.0.0.i.i.i501.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i499.2, i64 -16 ; 2 uses
  %i.nw = load i64, ptr %.sroa.0.0.i.i.i501.2, align 8, !tbaa !460 ; 2 uses
  %i.nx = icmp ult i64 %i.no, %i.nw
  br i1 %i.nx, label %.lr.ph.i.i.i498.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.2, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i464.2: ; preds = %.lr.ph.i.i.i498.2, %bb.t
  %.sroa.05.0.lcssa.i.i.i465.2 = phi ptr [ %.sroa.08.020.i.i460.ptr.2, %bb.t ], [ %.sroa.0.010.i.i.i499.2, %.lr.ph.i.i.i498.2 ] ; 2 uses
  store i64 %i.no, ptr %.sroa.05.0.lcssa.i.i.i465.2, align 8, !tbaa !619
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i465.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i463.2, ptr %i.ny, align 8, !tbaa !620
  %.pre.i.i466.2 = load i64, ptr %.sroa.035.039.i457, align 8, !tbaa !460
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.nz = ptrtoint ptr %.sroa.08.020.i.i460.ptr.2 to i64
  %i.oa = sub i64 %i.nz, %i.jx
  %i.ob = ashr exact i64 %i.oa, 4                 ; 5 uses
  %i.oc = icmp sgt i64 %i.ob, 0
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.preheader.i.i503.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.2

.lr.ph.i.i.i.i.i.preheader.i.i503.2:              ; preds = %bb.u
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i457, i64 64 ; 2 uses
  %xtraiter1195 = and i64 %i.ob, 3                ; 2 uses
  %lcmp.mod1196.not = icmp eq i64 %xtraiter1195, 0
  br i1 %lcmp.mod1196.not, label %.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i504.2.prol

.lr.ph.i.i.i.i.i.i.i504.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i503.2, %.lr.ph.i.i.i.i.i.i.i504.2.prol
  %.010.i.i.i.i.i.i.i505.2.prol = phi i64 [ %i.ok, %.lr.ph.i.i.i.i.i.i.i504.2.prol ], [ %i.ob, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ]
  %.069.i.i.i.i.i.i.i506.2.prol = phi ptr [ %i.of, %.lr.ph.i.i.i.i.i.i.i504.2.prol ], [ %i.od, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i507.2.prol = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i.i.i504.2.prol ], [ %.sroa.08.020.i.i460.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ] ; 2 uses
  %prol.iter1197 = phi i64 [ %prol.iter1197.next, %.lr.ph.i.i.i.i.i.i.i504.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ]
  %i.oe = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.2.prol, i64 -16 ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.2.prol, i64 -16 ; 3 uses
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !460
  store i64 %i.og, ptr %i.of, align 8, !tbaa !619
  %i.oh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.2.prol, i64 -8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !409
  %i.oj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.2.prol, i64 -8
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !620
  %i.ok = add nsw i64 %.010.i.i.i.i.i.i.i505.2.prol, -1 ; 2 uses
  %prol.iter1197.next = add i64 %prol.iter1197, 1 ; 2 uses
  %prol.iter1197.cmp.not = icmp eq i64 %prol.iter1197.next, %xtraiter1195
  br i1 %prol.iter1197.cmp.not, label %.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i504.2.prol, !llvm.loop !1615

.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i504.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i503.2
  %.010.i.i.i.i.i.i.i505.2.unr = phi i64 [ %i.ob, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ], [ %i.ok, %.lr.ph.i.i.i.i.i.i.i504.2.prol ]
  %.069.i.i.i.i.i.i.i506.2.unr = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ], [ %i.of, %.lr.ph.i.i.i.i.i.i.i504.2.prol ]
  %.078.i.i.i.i.i.i.i507.2.unr = phi ptr [ %.sroa.08.020.i.i460.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i503.2 ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i504.2.prol ]
  %i.ol = icmp ult i64 %i.ob, 4
  br i1 %i.ol, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i502.2, label %.lr.ph.i.i.i.i.i.i.i504.2

.lr.ph.i.i.i.i.i.i.i504.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i504.2
  %.010.i.i.i.i.i.i.i505.2 = phi i64 [ %i.pk, %.lr.ph.i.i.i.i.i.i.i504.2 ], [ %.010.i.i.i.i.i.i.i505.2.unr, %.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i506.2 = phi ptr [ %i.pf, %.lr.ph.i.i.i.i.i.i.i504.2 ], [ %.069.i.i.i.i.i.i.i506.2.unr, %.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i507.2 = phi ptr [ %i.pe, %.lr.ph.i.i.i.i.i.i.i504.2 ], [ %.078.i.i.i.i.i.i.i507.2.unr, %.lr.ph.i.i.i.i.i.i.i504.2.prol.loopexit ] ; 8 uses
  %i.om = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.2, i64 -16
  %i.on = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i506.2, i64 -16
  %i.oo = load i64, ptr %i.om, align 8, !tbaa !460
  store i64 %i.oo, ptr %i.on, align 8, !tbaa !619
  %i.op = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i507.2, i64 -8
end_hunk_0
begin_hunk_1_@_ZN4llvm28MemProfContextDisambiguation10performICPERNS_6ModuleENS_8ArrayRefINS_12CallsiteInfoEEENS3_ISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISA_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISH_EEEENS3_INS0_17ICallAnalysisDataEEERNS_25OptimizationRemarkEmitterE:bb.a
  %i.ais = getelementptr inbounds nuw i8, ptr %.01628.i42.i369, i64 16
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph.i40.i367
  %i.ait = getelementptr inbounds nuw i8, ptr %.029.i41.i368, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink34.i44.i371 = phi i64 [ %i.aip, %bb.at ], [ %i.aiq, %bb.au ]
  %.01628.pn.i45.i372 = phi ptr [ %.01628.i42.i369, %bb.at ], [ %.029.i41.i368, %bb.au ]
  %.117.i46.i373 = phi ptr [ %i.ais, %bb.at ], [ %.01628.i42.i369, %bb.au ] ; 3 uses
  %.1.i47.i374 = phi ptr [ %.029.i41.i368, %bb.at ], [ %i.ait, %bb.au ] ; 3 uses
  %.sink.in.i48.i375 = getelementptr inbounds nuw i8, ptr %.01628.pn.i45.i372, i64 8
  %.sink.i49.i376 = load ptr, ptr %.sink.in.i48.i375, align 8, !tbaa !409
  store i64 %.sink34.i44.i371, ptr %.sroa.0.027.i43.i370, align 8, !tbaa !619
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i370, i64 8
  store ptr %.sink.i49.i376, ptr %i.aiu, align 8, !tbaa !620
  %i.aiv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i370, i64 16 ; 2 uses
  %i.aiw = icmp ne ptr %.1.i47.i374, %i.ail
  %i.aix = icmp ne ptr %.117.i46.i373, %i.jw
  %i.aiy = select i1 %i.aiw, i1 %i.aix, i1 false
  br i1 %i.aiy, label %.lr.ph.i40.i367, label %._crit_edge.i25.i352, !llvm.loop !19

._crit_edge.i25.i352:                             ; preds = %bb.av, %._crit_edge.i346
  %.sroa.0.0.lcssa.i26.i353 = phi ptr [ %.sroa.022.0.lcssa.i348, %._crit_edge.i346 ], [ %i.aiv, %bb.av ] ; 5 uses
  %.016.lcssa.i27.i354 = phi ptr [ %i.ail, %._crit_edge.i346 ], [ %.117.i46.i373, %bb.av ] ; 3 uses
  %.0.lcssa.i28.i355 = phi ptr [ %.0.lcssa.i347, %._crit_edge.i346 ], [ %.1.i47.i374, %bb.av ] ; 3 uses
  %i.aiz = ptrtoint ptr %i.ail to i64
  %i.aja = ptrtoint ptr %.0.lcssa.i28.i355 to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  %i.ajc = ashr exact i64 %i.ajb, 4               ; 5 uses
  %i.ajd = icmp sgt i64 %i.ajc, 0
  br i1 %i.ajd, label %.lr.ph.i.i.i.i.i.i36.i363.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i356

.lr.ph.i.i.i.i.i.i36.i363.preheader:              ; preds = %._crit_edge.i25.i352
  %xtraiter1228 = and i64 %i.ajc, 3               ; 2 uses
  %lcmp.mod1229.not = icmp eq i64 %xtraiter1228, 0
  br i1 %lcmp.mod1229.not, label %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i363.prol

.lr.ph.i.i.i.i.i.i36.i363.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i36.i363.preheader, %.lr.ph.i.i.i.i.i.i36.i363.prol
  %.012.i.i.i.i.i.i37.i364.prol = phi i64 [ %i.ajk, %.lr.ph.i.i.i.i.i.i36.i363.prol ], [ %i.ajc, %.lr.ph.i.i.i.i.i.i36.i363.preheader ]
  %.0811.i.i.i.i.i.i38.i365.prol = phi ptr [ %i.ajj, %.lr.ph.i.i.i.i.i.i36.i363.prol ], [ %.sroa.0.0.lcssa.i26.i353, %.lr.ph.i.i.i.i.i.i36.i363.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i39.i366.prol = phi ptr [ %i.aji, %.lr.ph.i.i.i.i.i.i36.i363.prol ], [ %.0.lcssa.i28.i355, %.lr.ph.i.i.i.i.i.i36.i363.preheader ] ; 3 uses
  %prol.iter1230 = phi i64 [ %prol.iter1230.next, %.lr.ph.i.i.i.i.i.i36.i363.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.i363.preheader ]
  %i.aje = load i64, ptr %.0910.i.i.i.i.i.i39.i366.prol, align 8, !tbaa !460
  store i64 %i.aje, ptr %.0811.i.i.i.i.i.i38.i365.prol, align 8, !tbaa !619
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366.prol, i64 8
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !409
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365.prol, i64 8
  store ptr %i.ajg, ptr %i.ajh, align 8, !tbaa !620
  %i.aji = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366.prol, i64 16 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365.prol, i64 16 ; 3 uses
  %i.ajk = add nsw i64 %.012.i.i.i.i.i.i37.i364.prol, -1 ; 2 uses
  %prol.iter1230.next = add i64 %prol.iter1230, 1 ; 2 uses
  %prol.iter1230.cmp.not = icmp eq i64 %prol.iter1230.next, %xtraiter1228
  br i1 %prol.iter1230.cmp.not, label %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i363.prol, !llvm.loop !1626

.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i36.i363.prol, %.lr.ph.i.i.i.i.i.i36.i363.preheader
  %.012.i.i.i.i.i.i37.i364.unr = phi i64 [ %i.ajc, %.lr.ph.i.i.i.i.i.i36.i363.preheader ], [ %i.ajk, %.lr.ph.i.i.i.i.i.i36.i363.prol ]
  %.0811.i.i.i.i.i.i38.i365.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i353, %.lr.ph.i.i.i.i.i.i36.i363.preheader ], [ %i.ajj, %.lr.ph.i.i.i.i.i.i36.i363.prol ]
  %.0910.i.i.i.i.i.i39.i366.unr = phi ptr [ %.0.lcssa.i28.i355, %.lr.ph.i.i.i.i.i.i36.i363.preheader ], [ %i.aji, %.lr.ph.i.i.i.i.i.i36.i363.prol ]
  %.lcssa1135.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.i363.preheader ], [ %i.ajj, %.lr.ph.i.i.i.i.i.i36.i363.prol ]
  %i.ajl = icmp ult i64 %i.ajc, 4
  br i1 %i.ajl, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i356, label %.lr.ph.i.i.i.i.i.i36.i363

.lr.ph.i.i.i.i.i.i36.i363:                        ; preds = %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i363
  %.012.i.i.i.i.i.i37.i364 = phi i64 [ %i.akk, %.lr.ph.i.i.i.i.i.i36.i363 ], [ %.012.i.i.i.i.i.i37.i364.unr, %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38.i365 = phi ptr [ %i.akj, %.lr.ph.i.i.i.i.i.i36.i363 ], [ %.0811.i.i.i.i.i.i38.i365.unr, %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i39.i366 = phi ptr [ %i.aki, %.lr.ph.i.i.i.i.i.i36.i363 ], [ %.0910.i.i.i.i.i.i39.i366.unr, %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit ] ; 9 uses
  %i.ajm = load i64, ptr %.0910.i.i.i.i.i.i39.i366, align 8, !tbaa !460
  store i64 %i.ajm, ptr %.0811.i.i.i.i.i.i38.i365, align 8, !tbaa !619
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 8
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !409
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 8
  store ptr %i.ajo, ptr %i.ajp, align 8, !tbaa !620
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 16
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 16
  %i.ajs = load i64, ptr %i.ajq, align 8, !tbaa !460
  store i64 %i.ajs, ptr %i.ajr, align 8, !tbaa !619
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 24
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !409
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 24
  store ptr %i.aju, ptr %i.ajv, align 8, !tbaa !620
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 32
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 32
  %i.ajy = load i64, ptr %i.ajw, align 8, !tbaa !460
  store i64 %i.ajy, ptr %i.ajx, align 8, !tbaa !619
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 40
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !409
  %i.akb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 40
  store ptr %i.aka, ptr %i.akb, align 8, !tbaa !620
  %i.akc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 48
  %i.akd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 48
  %i.ake = load i64, ptr %i.akc, align 8, !tbaa !460
  store i64 %i.ake, ptr %i.akd, align 8, !tbaa !619
  %i.akf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 56
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !409
  %i.akh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 56
  store ptr %i.akg, ptr %i.akh, align 8, !tbaa !620
  %i.aki = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i366, i64 64
  %i.akj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i365, i64 64 ; 2 uses
  %i.akk = add nsw i64 %.012.i.i.i.i.i.i37.i364, -4
  %i.akl = icmp sgt i64 %.012.i.i.i.i.i.i37.i364, 4
  br i1 %i.akl, label %.lr.ph.i.i.i.i.i.i36.i363, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i356, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i356: ; preds = %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i363, %._crit_edge.i25.i352
  %.08.lcssa.i.i.i.i.i.i30.i357 = phi ptr [ %.sroa.0.0.lcssa.i26.i353, %._crit_edge.i25.i352 ], [ %.lcssa1135.unr, %.lr.ph.i.i.i.i.i.i36.i363.prol.loopexit ], [ %i.akj, %.lr.ph.i.i.i.i.i.i36.i363 ]
  %i.akm = ptrtoint ptr %.016.lcssa.i27.i354 to i64
  %i.akn = sub i64 %i.xp, %i.akm
  %i.ako = ashr exact i64 %i.akn, 4               ; 5 uses
  %i.akp = icmp sgt i64 %i.ako, 0
  br i1 %i.akp, label %.lr.ph.i.i.i.i.i19.i32.preheader.i358, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit385

.lr.ph.i.i.i.i.i19.i32.preheader.i358:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i356
  %i.akq = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i357 to i64
  %i.akr = ptrtoint ptr %.sroa.0.0.lcssa.i26.i353 to i64
  %i.aks = sub i64 %i.akq, %i.akr
  %i.akt = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i353, i64 %i.aks ; 2 uses
  %xtraiter1231 = and i64 %i.ako, 3               ; 2 uses
  %lcmp.mod1232.not = icmp eq i64 %xtraiter1231, 0
  br i1 %lcmp.mod1232.not, label %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i359.prol

.lr.ph.i.i.i.i.i19.i32.i359.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i358, %.lr.ph.i.i.i.i.i19.i32.i359.prol
  %.012.i.i.i.i.i20.i33.i360.prol = phi i64 [ %i.ala, %.lr.ph.i.i.i.i.i19.i32.i359.prol ], [ %i.ako, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ]
  %.0811.i.i.i.i.i21.i34.i361.prol = phi ptr [ %i.akz, %.lr.ph.i.i.i.i.i19.i32.i359.prol ], [ %i.akt, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i362.prol = phi ptr [ %i.aky, %.lr.ph.i.i.i.i.i19.i32.i359.prol ], [ %.016.lcssa.i27.i354, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ] ; 3 uses
  %prol.iter1233 = phi i64 [ %prol.iter1233.next, %.lr.ph.i.i.i.i.i19.i32.i359.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ]
  %i.aku = load i64, ptr %.0910.i.i.i.i.i22.i35.i362.prol, align 8, !tbaa !460
  store i64 %i.aku, ptr %.0811.i.i.i.i.i21.i34.i361.prol, align 8, !tbaa !619
  %i.akv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362.prol, i64 8
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !409
  %i.akx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361.prol, i64 8
  store ptr %i.akw, ptr %i.akx, align 8, !tbaa !620
  %i.aky = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362.prol, i64 16 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361.prol, i64 16 ; 2 uses
  %i.ala = add nsw i64 %.012.i.i.i.i.i20.i33.i360.prol, -1 ; 2 uses
  %prol.iter1233.next = add i64 %prol.iter1233, 1 ; 2 uses
  %prol.iter1233.cmp.not = icmp eq i64 %prol.iter1233.next, %xtraiter1231
  br i1 %prol.iter1233.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i359.prol, !llvm.loop !1627

.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i359.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i358
  %.012.i.i.i.i.i20.i33.i360.unr = phi i64 [ %i.ako, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ], [ %i.ala, %.lr.ph.i.i.i.i.i19.i32.i359.prol ]
  %.0811.i.i.i.i.i21.i34.i361.unr = phi ptr [ %i.akt, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ], [ %i.akz, %.lr.ph.i.i.i.i.i19.i32.i359.prol ]
  %.0910.i.i.i.i.i22.i35.i362.unr = phi ptr [ %.016.lcssa.i27.i354, %.lr.ph.i.i.i.i.i19.i32.preheader.i358 ], [ %i.aky, %.lr.ph.i.i.i.i.i19.i32.i359.prol ]
  %i.alb = icmp ult i64 %i.ako, 4
  br i1 %i.alb, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit385, label %.lr.ph.i.i.i.i.i19.i32.i359

.lr.ph.i.i.i.i.i19.i32.i359:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i359
  %.012.i.i.i.i.i20.i33.i360 = phi i64 [ %i.ama, %.lr.ph.i.i.i.i.i19.i32.i359 ], [ %.012.i.i.i.i.i20.i33.i360.unr, %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i361 = phi ptr [ %i.alz, %.lr.ph.i.i.i.i.i19.i32.i359 ], [ %.0811.i.i.i.i.i21.i34.i361.unr, %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i362 = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.i19.i32.i359 ], [ %.0910.i.i.i.i.i22.i35.i362.unr, %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit ] ; 9 uses
  %i.alc = load i64, ptr %.0910.i.i.i.i.i22.i35.i362, align 8, !tbaa !460
  store i64 %i.alc, ptr %.0811.i.i.i.i.i21.i34.i361, align 8, !tbaa !619
  %i.ald = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !409
  %i.alf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 8
  store ptr %i.ale, ptr %i.alf, align 8, !tbaa !620
  %i.alg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 16
  %i.alh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 16
  %i.ali = load i64, ptr %i.alg, align 8, !tbaa !460
  store i64 %i.ali, ptr %i.alh, align 8, !tbaa !619
  %i.alj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 24
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !409
  %i.all = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 24
  store ptr %i.alk, ptr %i.all, align 8, !tbaa !620
  %i.alm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 32
  %i.aln = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 32
  %i.alo = load i64, ptr %i.alm, align 8, !tbaa !460
  store i64 %i.alo, ptr %i.aln, align 8, !tbaa !619
  %i.alp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 40
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !409
  %i.alr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 40
  store ptr %i.alq, ptr %i.alr, align 8, !tbaa !620
  %i.als = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 48
  %i.alt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 48
  %i.alu = load i64, ptr %i.als, align 8, !tbaa !460
  store i64 %i.alu, ptr %i.alt, align 8, !tbaa !619
  %i.alv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 56
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !409
  %i.alx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 56
  store ptr %i.alw, ptr %i.alx, align 8, !tbaa !620
  %i.aly = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i362, i64 64
  %i.alz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i361, i64 64
  %i.ama = add nsw i64 %.012.i.i.i.i.i20.i33.i360, -4
  %i.amb = icmp sgt i64 %.012.i.i.i.i.i20.i33.i360, 4
  br i1 %i.amb, label %.lr.ph.i.i.i.i.i19.i32.i359, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit385, !llvm.loop !17

_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit385: ; preds = %.lr.ph.i.i.i.i.i19.i32.i359.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i359, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i356
  %i.amc = icmp slt i64 %i.aep, %i.iy
  br i1 %i.amc, label %.lr.ph.i.i262, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, !llvm.loop !21

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit385, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit508
  %i.amd = sub i64 %i.it, %i.jv                   ; 2 uses
  %i.ame = ashr exact i64 %i.amd, 4               ; 13 uses
  %i.amf = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %i.amd ; 3 uses
  %.not38.i = icmp slt i64 %i.ame, 7
  br i1 %.not38.i, label %._crit_edge.i308, label %.lr.ph.i.i299

.lr.ph.i.i299:                                    ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i
  %i.amg = phi i64 [ %i.axt, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.jv, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.sroa.035.039.i = phi ptr [ %i.axs, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.ju, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 32 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 8 ; 6 uses
  %.pre22.i.i300 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !460 ; 2 uses
  %.sroa.08.020.i.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 16 ; 6 uses
  %i.ami = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !460 ; 3 uses
  %i.amj = icmp ult i64 %i.ami, %.pre22.i.i300
  %.sroa.4.0..sroa_idx.i.i302 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  %.sroa.4.0.copyload.i.i303 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i302, align 8 ; 2 uses
  br i1 %i.amj, label %bb.aw, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i299
  %i.amk = ptrtoint ptr %.sroa.08.020.i.i.ptr to i64
  %i.aml = sub i64 %i.amk, %i.amg
  %i.amm = ashr exact i64 %i.aml, 4               ; 5 uses
  %i.amn = icmp sgt i64 %i.amm, 0
  br i1 %i.amn, label %.lr.ph.i.i.i.i.i.preheader.i.i315, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i315:                ; preds = %bb.aw
  %i.amo = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 2 uses
  %xtraiter1234 = and i64 %i.amm, 3               ; 2 uses
  %lcmp.mod1235.not = icmp eq i64 %xtraiter1234, 0
  br i1 %lcmp.mod1235.not, label %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i316.prol

.lr.ph.i.i.i.i.i.i.i316.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i315, %.lr.ph.i.i.i.i.i.i.i316.prol
  %.010.i.i.i.i.i.i.i317.prol = phi i64 [ %i.amv, %.lr.ph.i.i.i.i.i.i.i316.prol ], [ %i.amm, %.lr.ph.i.i.i.i.i.preheader.i.i315 ]
  %.069.i.i.i.i.i.i.i318.prol = phi ptr [ %i.amq, %.lr.ph.i.i.i.i.i.i.i316.prol ], [ %i.amo, %.lr.ph.i.i.i.i.i.preheader.i.i315 ] ; 2 uses
  %.078.i.i.i.i.i.i.i319.prol = phi ptr [ %i.amp, %.lr.ph.i.i.i.i.i.i.i316.prol ], [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i315 ] ; 2 uses
  %prol.iter1236 = phi i64 [ %prol.iter1236.next, %.lr.ph.i.i.i.i.i.i.i316.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i315 ]
  %i.amp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.prol, i64 -16 ; 3 uses
  %i.amq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.prol, i64 -16 ; 3 uses
  %i.amr = load i64, ptr %i.amp, align 8, !tbaa !460
  store i64 %i.amr, ptr %i.amq, align 8, !tbaa !619
  %i.ams = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.prol, i64 -8
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !409
  %i.amu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.prol, i64 -8
  store ptr %i.amt, ptr %i.amu, align 8, !tbaa !620
  %i.amv = add nsw i64 %.010.i.i.i.i.i.i.i317.prol, -1 ; 2 uses
  %prol.iter1236.next = add i64 %prol.iter1236, 1 ; 2 uses
  %prol.iter1236.cmp.not = icmp eq i64 %prol.iter1236.next, %xtraiter1234
  br i1 %prol.iter1236.cmp.not, label %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i316.prol, !llvm.loop !1628

.lr.ph.i.i.i.i.i.i.i316.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i316.prol, %.lr.ph.i.i.i.i.i.preheader.i.i315
  %.010.i.i.i.i.i.i.i317.unr = phi i64 [ %i.amm, %.lr.ph.i.i.i.i.i.preheader.i.i315 ], [ %i.amv, %.lr.ph.i.i.i.i.i.i.i316.prol ]
  %.069.i.i.i.i.i.i.i318.unr = phi ptr [ %i.amo, %.lr.ph.i.i.i.i.i.preheader.i.i315 ], [ %i.amq, %.lr.ph.i.i.i.i.i.i.i316.prol ]
  %.078.i.i.i.i.i.i.i319.unr = phi ptr [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i315 ], [ %i.amp, %.lr.ph.i.i.i.i.i.i.i316.prol ]
  %i.amw = icmp ult i64 %i.amm, 4
  br i1 %i.amw, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i316

.lr.ph.i.i.i.i.i.i.i316:                          ; preds = %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i316
  %.010.i.i.i.i.i.i.i317 = phi i64 [ %i.anv, %.lr.ph.i.i.i.i.i.i.i316 ], [ %.010.i.i.i.i.i.i.i317.unr, %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i318 = phi ptr [ %i.anq, %.lr.ph.i.i.i.i.i.i.i316 ], [ %.069.i.i.i.i.i.i.i318.unr, %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i319 = phi ptr [ %i.anp, %.lr.ph.i.i.i.i.i.i.i316 ], [ %.078.i.i.i.i.i.i.i319.unr, %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit ] ; 8 uses
  %i.amx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -16
  %i.amy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -16
  %i.amz = load i64, ptr %i.amx, align 8, !tbaa !460
  store i64 %i.amz, ptr %i.amy, align 8, !tbaa !619
  %i.ana = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -8
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !409
  %i.anc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -8
  store ptr %i.anb, ptr %i.anc, align 8, !tbaa !620
  %i.and = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -32
  %i.ane = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -32
  %i.anf = load i64, ptr %i.and, align 8, !tbaa !460
  store i64 %i.anf, ptr %i.ane, align 8, !tbaa !619
  %i.ang = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -24
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !409
  %i.ani = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -24
  store ptr %i.anh, ptr %i.ani, align 8, !tbaa !620
  %i.anj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -48
  %i.ank = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -48
  %i.anl = load i64, ptr %i.anj, align 8, !tbaa !460
  store i64 %i.anl, ptr %i.ank, align 8, !tbaa !619
  %i.anm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -40
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !409
  %i.ano = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -40
  store ptr %i.ann, ptr %i.ano, align 8, !tbaa !620
  %i.anp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -64 ; 2 uses
  %i.anq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -64 ; 2 uses
  %i.anr = load i64, ptr %i.anp, align 8, !tbaa !460
  store i64 %i.anr, ptr %i.anq, align 8, !tbaa !619
  %i.ans = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319, i64 -56
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !409
  %i.anu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318, i64 -56
  store ptr %i.ant, ptr %i.anu, align 8, !tbaa !620
  %i.anv = add nsw i64 %.010.i.i.i.i.i.i.i317, -4
  %i.anw = icmp sgt i64 %.010.i.i.i.i.i.i.i317, 4
  br i1 %i.anw, label %.lr.ph.i.i.i.i.i.i.i316, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, !llvm.loop !12

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i316.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i316, %bb.aw
  store i64 %i.ami, ptr %.sroa.035.039.i, align 8, !tbaa !619
  store ptr %.sroa.4.0.copyload.i.i303, ptr %i.amh, align 8, !tbaa !620
  br label %bb.ax

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i299
  %33 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  store ptr %.sroa.4.0.copyload.i.i303, ptr %33, align 8, !tbaa !620
  br label %bb.ax

bb.ax:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.anx = phi i64 [ %i.ami, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i ], [ %.pre22.i.i300, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i ]
  %.sroa.08.020.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 8 uses
  %i.any = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !460 ; 6 uses
  %i.anz = icmp ult i64 %i.any, %i.anx
  %.sroa.4.0..sroa_idx.i.i302.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 40
  %.sroa.4.0.copyload.i.i303.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i302.1, align 8 ; 2 uses
  br i1 %i.anz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aoa = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !460 ; 2 uses
  %i.aob = icmp ult i64 %i.any, %i.aoa
  br i1 %i.aob, label %.lr.ph.i.i.i311.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i311.1:                                ; preds = %bb.ay, %.lr.ph.i.i.i311.1
  %i.aoc = phi i64 [ %i.aog, %.lr.ph.i.i.i311.1 ], [ %i.aoa, %bb.ay ]
  %.sroa.0.010.i.i.i312.1 = phi ptr [ %.sroa.0.0.i.i.i314.1, %.lr.ph.i.i.i311.1 ], [ %.sroa.08.020.i.i.ptr, %bb.ay ] ; 3 uses
  %.sroa.05.09.i.i.i313.1 = phi ptr [ %.sroa.0.010.i.i.i312.1, %.lr.ph.i.i.i311.1 ], [ %.sroa.08.020.i.i.ptr.1, %bb.ay ] ; 3 uses
  store i64 %i.aoc, ptr %.sroa.05.09.i.i.i313.1, align 8, !tbaa !619
  %i.aod = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i313.1, i64 -8
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !409
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i313.1, i64 8
  store ptr %i.aoe, ptr %i.aof, align 8, !tbaa !620
  %.sroa.0.0.i.i.i314.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i312.1, i64 -16 ; 2 uses
  %i.aog = load i64, ptr %.sroa.0.0.i.i.i314.1, align 8, !tbaa !460 ; 2 uses
  %i.aoh = icmp ult i64 %i.any, %i.aog
  br i1 %i.aoh, label %.lr.ph.i.i.i311.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i311.1, %bb.ay
  %.sroa.05.0.lcssa.i.i.i304.1 = phi ptr [ %.sroa.08.020.i.i.ptr.1, %bb.ay ], [ %.sroa.0.010.i.i.i312.1, %.lr.ph.i.i.i311.1 ] ; 2 uses
  store i64 %i.any, ptr %.sroa.05.0.lcssa.i.i.i304.1, align 8, !tbaa !619
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i304.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i303.1, ptr %i.aoi, align 8, !tbaa !620
  %.pre.i.i305.1 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !460
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.aoj = ptrtoint ptr %.sroa.08.020.i.i.ptr.1 to i64
  %i.aok = sub i64 %i.aoj, %i.amg
  %i.aol = ashr exact i64 %i.aok, 4               ; 5 uses
  %i.aom = icmp sgt i64 %i.aol, 0
  br i1 %i.aom, label %.lr.ph.i.i.i.i.i.preheader.i.i315.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i315.1:              ; preds = %bb.az
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 2 uses
  %xtraiter1249 = and i64 %i.aol, 3               ; 2 uses
  %lcmp.mod1250.not = icmp eq i64 %xtraiter1249, 0
  br i1 %lcmp.mod1250.not, label %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i316.1.prol

.lr.ph.i.i.i.i.i.i.i316.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i315.1, %.lr.ph.i.i.i.i.i.i.i316.1.prol
  %.010.i.i.i.i.i.i.i317.1.prol = phi i64 [ %i.aou, %.lr.ph.i.i.i.i.i.i.i316.1.prol ], [ %i.aol, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ]
  %.069.i.i.i.i.i.i.i318.1.prol = phi ptr [ %i.aop, %.lr.ph.i.i.i.i.i.i.i316.1.prol ], [ %i.aon, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i319.1.prol = phi ptr [ %i.aoo, %.lr.ph.i.i.i.i.i.i.i316.1.prol ], [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ] ; 2 uses
  %prol.iter1251 = phi i64 [ %prol.iter1251.next, %.lr.ph.i.i.i.i.i.i.i316.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ]
  %i.aoo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1.prol, i64 -16 ; 3 uses
  %i.aop = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1.prol, i64 -16 ; 3 uses
  %i.aoq = load i64, ptr %i.aoo, align 8, !tbaa !460
  store i64 %i.aoq, ptr %i.aop, align 8, !tbaa !619
  %i.aor = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1.prol, i64 -8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !409
  %i.aot = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1.prol, i64 -8
  store ptr %i.aos, ptr %i.aot, align 8, !tbaa !620
  %i.aou = add nsw i64 %.010.i.i.i.i.i.i.i317.1.prol, -1 ; 2 uses
  %prol.iter1251.next = add i64 %prol.iter1251, 1 ; 2 uses
  %prol.iter1251.cmp.not = icmp eq i64 %prol.iter1251.next, %xtraiter1249
  br i1 %prol.iter1251.cmp.not, label %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i316.1.prol, !llvm.loop !1629

.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i316.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i315.1
  %.010.i.i.i.i.i.i.i317.1.unr = phi i64 [ %i.aol, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ], [ %i.aou, %.lr.ph.i.i.i.i.i.i.i316.1.prol ]
  %.069.i.i.i.i.i.i.i318.1.unr = phi ptr [ %i.aon, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ], [ %i.aop, %.lr.ph.i.i.i.i.i.i.i316.1.prol ]
  %.078.i.i.i.i.i.i.i319.1.unr = phi ptr [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i315.1 ], [ %i.aoo, %.lr.ph.i.i.i.i.i.i.i316.1.prol ]
  %i.aov = icmp ult i64 %i.aol, 4
  br i1 %i.aov, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, label %.lr.ph.i.i.i.i.i.i.i316.1

.lr.ph.i.i.i.i.i.i.i316.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i316.1
  %.010.i.i.i.i.i.i.i317.1 = phi i64 [ %i.apu, %.lr.ph.i.i.i.i.i.i.i316.1 ], [ %.010.i.i.i.i.i.i.i317.1.unr, %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i318.1 = phi ptr [ %i.app, %.lr.ph.i.i.i.i.i.i.i316.1 ], [ %.069.i.i.i.i.i.i.i318.1.unr, %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i319.1 = phi ptr [ %i.apo, %.lr.ph.i.i.i.i.i.i.i316.1 ], [ %.078.i.i.i.i.i.i.i319.1.unr, %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit ] ; 8 uses
  %i.aow = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -16
  %i.aox = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -16
  %i.aoy = load i64, ptr %i.aow, align 8, !tbaa !460
  store i64 %i.aoy, ptr %i.aox, align 8, !tbaa !619
  %i.aoz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -8
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !409
  %i.apb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -8
  store ptr %i.apa, ptr %i.apb, align 8, !tbaa !620
  %i.apc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -32
  %i.apd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -32
  %i.ape = load i64, ptr %i.apc, align 8, !tbaa !460
  store i64 %i.ape, ptr %i.apd, align 8, !tbaa !619
  %i.apf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -24
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !409
  %i.aph = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -24
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !620
  %i.api = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -48
  %i.apj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -48
  %i.apk = load i64, ptr %i.api, align 8, !tbaa !460
  store i64 %i.apk, ptr %i.apj, align 8, !tbaa !619
  %i.apl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -40
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !409
  %i.apn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -40
  store ptr %i.apm, ptr %i.apn, align 8, !tbaa !620
  %i.apo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -64 ; 2 uses
  %i.app = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -64 ; 2 uses
  %i.apq = load i64, ptr %i.apo, align 8, !tbaa !460
  store i64 %i.apq, ptr %i.app, align 8, !tbaa !619
  %i.apr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.1, i64 -56
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !409
  %i.apt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.1, i64 -56
  store ptr %i.aps, ptr %i.apt, align 8, !tbaa !620
  %i.apu = add nsw i64 %.010.i.i.i.i.i.i.i317.1, -4
  %i.apv = icmp sgt i64 %.010.i.i.i.i.i.i.i317.1, 4
  br i1 %i.apv, label %.lr.ph.i.i.i.i.i.i.i316.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, !llvm.loop !12

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i316.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i316.1, %bb.az
  store i64 %i.any, ptr %.sroa.035.039.i, align 8, !tbaa !619
  store ptr %.sroa.4.0.copyload.i.i303.1, ptr %i.amh, align 8, !tbaa !620
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1
  %i.apw = phi i64 [ %i.any, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1 ], [ %.pre.i.i305.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1 ]
  %.sroa.08.020.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 8 uses
  %i.apx = load i64, ptr %.sroa.08.020.i.i.ptr.2, align 8, !tbaa !460 ; 6 uses
  %i.apy = icmp ult i64 %i.apx, %i.apw
  %.sroa.4.0..sroa_idx.i.i302.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 56
  %.sroa.4.0.copyload.i.i303.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i302.2, align 8 ; 2 uses
  br i1 %i.apy, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.apz = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !460 ; 2 uses
  %i.aqa = icmp ult i64 %i.apx, %i.apz
  br i1 %i.aqa, label %.lr.ph.i.i.i311.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i311.2:                                ; preds = %bb.bb, %.lr.ph.i.i.i311.2
  %i.aqb = phi i64 [ %i.aqf, %.lr.ph.i.i.i311.2 ], [ %i.apz, %bb.bb ]
  %.sroa.0.010.i.i.i312.2 = phi ptr [ %.sroa.0.0.i.i.i314.2, %.lr.ph.i.i.i311.2 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bb ] ; 3 uses
  %.sroa.05.09.i.i.i313.2 = phi ptr [ %.sroa.0.010.i.i.i312.2, %.lr.ph.i.i.i311.2 ], [ %.sroa.08.020.i.i.ptr.2, %bb.bb ] ; 3 uses
  store i64 %i.aqb, ptr %.sroa.05.09.i.i.i313.2, align 8, !tbaa !619
  %i.aqc = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i313.2, i64 -8
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !409
  %i.aqe = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i313.2, i64 8
  store ptr %i.aqd, ptr %i.aqe, align 8, !tbaa !620
  %.sroa.0.0.i.i.i314.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i312.2, i64 -16 ; 2 uses
  %i.aqf = load i64, ptr %.sroa.0.0.i.i.i314.2, align 8, !tbaa !460 ; 2 uses
  %i.aqg = icmp ult i64 %i.apx, %i.aqf
  br i1 %i.aqg, label %.lr.ph.i.i.i311.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i311.2, %bb.bb
  %.sroa.05.0.lcssa.i.i.i304.2 = phi ptr [ %.sroa.08.020.i.i.ptr.2, %bb.bb ], [ %.sroa.0.010.i.i.i312.2, %.lr.ph.i.i.i311.2 ] ; 2 uses
  store i64 %i.apx, ptr %.sroa.05.0.lcssa.i.i.i304.2, align 8, !tbaa !619
  %i.aqh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i304.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i303.2, ptr %i.aqh, align 8, !tbaa !620
  %.pre.i.i305.2 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !460
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.aqi = ptrtoint ptr %.sroa.08.020.i.i.ptr.2 to i64
  %i.aqj = sub i64 %i.aqi, %i.amg
  %i.aqk = ashr exact i64 %i.aqj, 4               ; 5 uses
  %i.aql = icmp sgt i64 %i.aqk, 0
  br i1 %i.aql, label %.lr.ph.i.i.i.i.i.preheader.i.i315.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i315.2:              ; preds = %bb.bc
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 64 ; 2 uses
  %xtraiter1252 = and i64 %i.aqk, 3               ; 2 uses
  %lcmp.mod1253.not = icmp eq i64 %xtraiter1252, 0
  br i1 %lcmp.mod1253.not, label %.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i316.2.prol

.lr.ph.i.i.i.i.i.i.i316.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i315.2, %.lr.ph.i.i.i.i.i.i.i316.2.prol
  %.010.i.i.i.i.i.i.i317.2.prol = phi i64 [ %i.aqt, %.lr.ph.i.i.i.i.i.i.i316.2.prol ], [ %i.aqk, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ]
  %.069.i.i.i.i.i.i.i318.2.prol = phi ptr [ %i.aqo, %.lr.ph.i.i.i.i.i.i.i316.2.prol ], [ %i.aqm, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i319.2.prol = phi ptr [ %i.aqn, %.lr.ph.i.i.i.i.i.i.i316.2.prol ], [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ] ; 2 uses
  %prol.iter1254 = phi i64 [ %prol.iter1254.next, %.lr.ph.i.i.i.i.i.i.i316.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ]
  %i.aqn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.2.prol, i64 -16 ; 3 uses
  %i.aqo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.2.prol, i64 -16 ; 3 uses
  %i.aqp = load i64, ptr %i.aqn, align 8, !tbaa !460
  store i64 %i.aqp, ptr %i.aqo, align 8, !tbaa !619
  %i.aqq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.2.prol, i64 -8
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !409
  %i.aqs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.2.prol, i64 -8
  store ptr %i.aqr, ptr %i.aqs, align 8, !tbaa !620
  %i.aqt = add nsw i64 %.010.i.i.i.i.i.i.i317.2.prol, -1 ; 2 uses
  %prol.iter1254.next = add i64 %prol.iter1254, 1 ; 2 uses
  %prol.iter1254.cmp.not = icmp eq i64 %prol.iter1254.next, %xtraiter1252
  br i1 %prol.iter1254.cmp.not, label %.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i316.2.prol, !llvm.loop !1630

.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i316.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i315.2
  %.010.i.i.i.i.i.i.i317.2.unr = phi i64 [ %i.aqk, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ], [ %i.aqt, %.lr.ph.i.i.i.i.i.i.i316.2.prol ]
  %.069.i.i.i.i.i.i.i318.2.unr = phi ptr [ %i.aqm, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ], [ %i.aqo, %.lr.ph.i.i.i.i.i.i.i316.2.prol ]
  %.078.i.i.i.i.i.i.i319.2.unr = phi ptr [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i315.2 ], [ %i.aqn, %.lr.ph.i.i.i.i.i.i.i316.2.prol ]
  %i.aqu = icmp ult i64 %i.aqk, 4
  br i1 %i.aqu, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2, label %.lr.ph.i.i.i.i.i.i.i316.2

.lr.ph.i.i.i.i.i.i.i316.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i316.2
  %.010.i.i.i.i.i.i.i317.2 = phi i64 [ %i.art, %.lr.ph.i.i.i.i.i.i.i316.2 ], [ %.010.i.i.i.i.i.i.i317.2.unr, %.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i318.2 = phi ptr [ %i.aro, %.lr.ph.i.i.i.i.i.i.i316.2 ], [ %.069.i.i.i.i.i.i.i318.2.unr, %.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i319.2 = phi ptr [ %i.arn, %.lr.ph.i.i.i.i.i.i.i316.2 ], [ %.078.i.i.i.i.i.i.i319.2.unr, %.lr.ph.i.i.i.i.i.i.i316.2.prol.loopexit ] ; 8 uses
  %i.aqv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.2, i64 -16
  %i.aqw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i318.2, i64 -16
  %i.aqx = load i64, ptr %i.aqv, align 8, !tbaa !460
  store i64 %i.aqx, ptr %i.aqw, align 8, !tbaa !619
  %i.aqy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i319.2, i64 -8
end_hunk_1
