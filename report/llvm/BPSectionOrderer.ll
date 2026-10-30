Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPSectionOrderer?download=true
inline.NumInlined: 5220
inline.NumDeleted: 2419
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN3lld9BPOrdererIN12_GLOBAL__N_114BPOrdererMachOEE12computeOrderEN4llvm9StringRefENS4_8ArrayRefINS_21BPCompressionSortSpecEEEbbbbNS6_IPNS_5macho12InputSectionEEERKNS4_8DenseMapINS4_19CachedHashStringRefESt3setIjSt4lessIjESaIjEENS4_12DenseMapInfoISE_vEENS4_6detail12DenseMapPairISE_SJ_EEEE:bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i833, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.gd, %i.ed
  br i1 %.not.i16.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i13.i, !llvm.loop !6

.preheader.i23.i:                                 ; preds = %bb.m
  %.sroa.08.017.i24.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  %.not18.i25.i = icmp eq ptr %.sroa.08.017.i24.i, %i.ed
  br i1 %.not18.i25.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.preheader.i23.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.pre22.i27.i = load i64, ptr %i.eb, align 8, !tbaa !77
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i26.i
  %i.gf = phi i64 [ %.pre22.i27.i, %.lr.ph.i26.i ], [ %i.hc, %bb.t ]
  %.sroa.08.020.i28.i = phi ptr [ %.sroa.08.017.i24.i, %.lr.ph.i26.i ], [ %.sroa.08.0.i34.i, %bb.t ] ; 7 uses
  %.pn19.i29.i = phi ptr [ %i.eb, %.lr.ph.i26.i ], [ %.sroa.08.020.i28.i, %bb.t ] ; 4 uses
  %i.gg = load i64, ptr %.sroa.08.020.i28.i, align 8, !tbaa !77 ; 6 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 32 ; 2 uses
  br i1 %i.gh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i22.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.gi = ptrtoint ptr %.sroa.08.020.i28.i to i64
  %i.gj = sub i64 %i.gi, %i.ef                    ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %.lr.ph.preheader.i.i.i.i.i.i41.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i

.lr.ph.preheader.i.i.i.i.i.i41.i:                 ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 48
  %i.gm = udiv exact i64 %i.gj, 24
  br label %.lr.ph.i.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i.i42.i:                           ; preds = %.lr.ph.i.i.i.i.i.i42.i, %.lr.ph.preheader.i.i.i.i.i.i41.i
  %.010.i.i.i.i.i.i43.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.gm, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.069.i.i.i.i.i.i44.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.gl, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.078.i.i.i.i.i.i45.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i42.i ], [ %.sroa.08.020.i28.i, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -24 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -24 ; 2 uses
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !77
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !179
  %i.gq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -16
  %i.gr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !180
  %i.gs = add nsw i64 %.010.i.i.i.i.i.i43.i, -1
  %i.gt = icmp samesign ugt i64 %.010.i.i.i.i.i.i43.i, 1
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i.i42.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i: ; preds = %.lr.ph.i.i.i.i.i.i42.i, %bb.r
  store i64 %i.gg, ptr %i.eb, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, i64 16, i1 false), !tbaa.struct !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i22.i)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.gu = load i64, ptr %.pn19.i29.i, align 8, !tbaa !77 ; 2 uses
  %i.gv = icmp ult i64 %i.gg, %i.gu
  br i1 %i.gv, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i

.lr.ph.i.i36.i:                                   ; preds = %bb.s, %.lr.ph.i.i36.i
  %i.gw = phi i64 [ %i.gz, %.lr.ph.i.i36.i ], [ %i.gu, %bb.s ]
  %.sroa.0.010.i.i37.i = phi ptr [ %.sroa.0.0.i.i39.i, %.lr.ph.i.i36.i ], [ %.pn19.i29.i, %bb.s ] ; 3 uses
  %.sroa.05.09.i.i38.i = phi ptr [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ], [ %.sroa.08.020.i28.i, %bb.s ] ; 3 uses
  store i64 %i.gw, ptr %.sroa.05.09.i.i38.i, align 8, !tbaa !179
  %i.gx = getelementptr inbounds i8, ptr %.sroa.05.09.i.i38.i, i64 -16
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i38.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !tbaa.struct !180
  %.sroa.0.0.i.i39.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i37.i, i64 -24 ; 2 uses
  %i.gz = load i64, ptr %.sroa.0.0.i.i39.i, align 8, !tbaa !77 ; 2 uses
  %i.ha = icmp ult i64 %i.gg, %i.gz
  br i1 %i.ha, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i: ; preds = %.lr.ph.i.i36.i, %bb.s
  %.sroa.05.0.lcssa.i.i32.i = phi ptr [ %.sroa.08.020.i28.i, %bb.s ], [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ] ; 2 uses
  store i64 %i.gg, ptr %.sroa.05.0.lcssa.i.i32.i, align 8, !tbaa !179
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i32.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, i64 16, i1 false), !tbaa.struct !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i21.i)
  %.pre.i33.i = load i64, ptr %i.eb, align 8, !tbaa !77
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i
  %i.hc = phi i64 [ %i.gg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i ], [ %.pre.i33.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i ]
  %.sroa.08.0.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i, i64 24 ; 2 uses
  %.not.i35.i = icmp eq ptr %.sroa.08.0.i34.i, %i.ed
  br i1 %.not.i35.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %bb.q, !llvm.loop !5

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i: ; preds = %bb.t, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i14.i, %.preheader.i23.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_.exit.i, %bb.l
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !588 ; 17 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !588 ; 13 uses
  %i.hh = icmp eq ptr %i.he, %i.hg
  br i1 %i.hh, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i
  %i.hi = ptrtoint ptr %i.hg to i64               ; 5 uses
  %i.hj = ptrtoint ptr %i.he to i64               ; 3 uses
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = ashr exact i64 %i.hk, 4                 ; 5 uses
  %i.hm = add nsw i64 %i.hl, 1
  %i.hn = sdiv i64 %i.hm, 2                       ; 10 uses
  %i.ho = icmp sgt i64 %i.hl, 0                   ; 2 uses
  br i1 %i.ho, label %.lr.ph.i.i.i817, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

.lr.ph.i.i.i817:                                  ; preds = %bb.u, %select.unfold.i.i.i
  %.010.i.i.i = phi i64 [ %i.ht, %select.unfold.i.i.i ], [ %i.hn, %bb.u ] ; 5 uses
  %i.hp = shl nuw nsw i64 %.010.i.i.i, 4          ; 3 uses
  %i.hq = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.hp, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #24 ; 8 uses
  %.not.i.i.i818 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i818, label %select.unfold.i.i.i, label %bb.v

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i817
  %i.hr = icmp eq i64 %.010.i.i.i, 1
  %i.hs = add nuw nsw i64 %.010.i.i.i, 1
  %i.ht = lshr i64 %i.hs, 1
  br i1 %i.hr, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i, label %.lr.ph.i.i.i817, !llvm.loop !353

bb.v:                                             ; preds = %.lr.ph.i.i.i817
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false)
  %.not18.i.i.i.i819 = icmp eq i64 %.010.i.i.i, 1
  br i1 %.not18.i.i.i.i819, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.v
  %.01317.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.hv = add nsw i64 %i.hp, -32                  ; 2 uses
  %i.hw = lshr exact i64 %i.hv, 4
  %i.hx = add nuw nsw i64 %i.hw, 1
  %xtraiter1288 = and i64 %i.hx, 3                ; 2 uses
  %lcmp.mod1289.not = icmp eq i64 %xtraiter1288, 0
  br i1 %lcmp.mod1289.not, label %.lr.ph.i.i.i.i820.prol.loopexit, label %.lr.ph.i.i.i.i820.prol

.lr.ph.i.i.i.i820.prol:                           ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i820.prol
  %.01320.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i820.prol ], [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.019.i.i.i.i.prol = phi ptr [ %i.hy, %.lr.ph.i.i.i.i820.prol ], [ %i.hq, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i820.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.prol, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1288
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i820.prol.loopexit, label %.lr.ph.i.i.i.i820.prol, !llvm.loop !354

.lr.ph.i.i.i.i820.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i820.prol, %.lr.ph.i.i.preheader.i.i
  %.lcssa1228.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %i.hy, %.lr.ph.i.i.i.i820.prol ]
  %.01320.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i820.prol ]
  %.019.i.i.i.i.unr = phi ptr [ %i.hq, %.lr.ph.i.i.preheader.i.i ], [ %i.hy, %.lr.ph.i.i.i.i820.prol ]
  %i.hz = icmp ult i64 %i.hv, 48
  br i1 %i.hz, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i820

.lr.ph.i.i.i.i820:                                ; preds = %.lr.ph.i.i.i.i820.prol.loopexit, %.lr.ph.i.i.i.i820
  %.01320.i.i.i.i = phi ptr [ %.013.i.i.i.i.3, %.lr.ph.i.i.i.i820 ], [ %.01320.i.i.i.i.unr, %.lr.ph.i.i.i.i820.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i820 ], [ %.019.i.i.i.i.unr, %.lr.ph.i.i.i.i820.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i, i64 16, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %.013.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i64 16, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 32
  %.013.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 48
  %.013.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i821.3 = icmp eq ptr %.013.i.i.i.i.3, %i.hu
  br i1 %.not.i.i.i.i821.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i820, !llvm.loop !355

_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i820.prol.loopexit, %.lr.ph.i.i.i.i820, %bb.v
  %.0.lcssa.i.i.i.i = phi ptr [ %i.hq, %bb.v ], [ %.lcssa1228.unr, %.lr.ph.i.i.i.i820.prol.loopexit ], [ %i.id, %.lr.ph.i.i.i.i820 ] ; 2 uses
  %i.ie = load i64, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !77
  store i64 %i.ie, ptr %i.he, align 8, !tbaa !184
  %i.if = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !185
  %i.ih = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !186
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i: ; preds = %select.unfold.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, %bb.u
  %.sroa.4.0.i816 = phi i64 [ 0, %bb.u ], [ %.010.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ 0, %select.unfold.i.i.i ] ; 3 uses
  %.sroa.10.0.i = phi ptr [ null, %bb.u ], [ %i.hq, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ null, %select.unfold.i.i.i ] ; 22 uses
  %i.ii = icmp eq i64 %i.hn, %.sroa.4.0.i816
  br i1 %i.ii, label %bb.w, label %bb.db, !prof !102

bb.w:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i
  %.idx186 = shl nsw i64 %i.hn, 4                 ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.he, i64 %.idx186 ; 16 uses
  %i.ik = ptrtoint ptr %i.ij to i64               ; 6 uses
  %i.il = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %.idx186 ; 3 uses
  %.not38.i1085 = icmp slt i64 %i.hl, 13
  br i1 %.not38.i1085, label %._crit_edge.i1102, label %.lr.ph.i.i1087

.lr.ph.i.i1087:                                   ; preds = %bb.w, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i1100
  %i.im = phi i64 [ %i.tz, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i1100 ], [ %i.hj, %bb.w ] ; 6 uses
  %.sroa.035.039.i1088 = phi ptr [ %i.ty, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i1100 ], [ %i.he, %bb.w ] ; 32 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 8 ; 6 uses
  %.pre22.i.i1090 = load i64, ptr %.sroa.035.039.i1088, align 8, !tbaa !77 ; 2 uses
  %.sroa.08.020.i.i1091.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 16 ; 6 uses
  %i.io = load i64, ptr %.sroa.08.020.i.i1091.ptr, align 8, !tbaa !77 ; 3 uses
  %i.ip = icmp ult i64 %i.io, %.pre22.i.i1090
  %.sroa.4.0..sroa_idx.i.i1093 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 24
  %.sroa.4.0.copyload.i.i1094 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i1093, align 8 ; 2 uses
  br i1 %i.ip, label %bb.x, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095

bb.x:                                             ; preds = %.lr.ph.i.i1087
  %i.iq = ptrtoint ptr %.sroa.08.020.i.i1091.ptr to i64
  %i.ir = sub i64 %i.iq, %i.im
  %i.is = ashr exact i64 %i.ir, 4                 ; 5 uses
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %.lr.ph.i.i.i.i.i.preheader.i.i1134, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133

.lr.ph.i.i.i.i.i.preheader.i.i1134:               ; preds = %bb.x
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 32 ; 2 uses
  %xtraiter1290 = and i64 %i.is, 3                ; 2 uses
  %lcmp.mod1291.not = icmp eq i64 %xtraiter1290, 0
  br i1 %lcmp.mod1291.not, label %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1135.prol

.lr.ph.i.i.i.i.i.i.i1135.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i1134, %.lr.ph.i.i.i.i.i.i.i1135.prol
  %.010.i.i.i.i.i.i.i1136.prol = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i.i.i1135.prol ], [ %i.is, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ]
  %.069.i.i.i.i.i.i.i1137.prol = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i.i1135.prol ], [ %i.iu, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ] ; 2 uses
  %.078.i.i.i.i.i.i.i1138.prol = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i1135.prol ], [ %.sroa.08.020.i.i1091.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ] ; 2 uses
  %prol.iter1292 = phi i64 [ %prol.iter1292.next, %.lr.ph.i.i.i.i.i.i.i1135.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ]
  %i.iv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.prol, i64 -16 ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.prol, i64 -16 ; 3 uses
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !77
  store i64 %i.ix, ptr %i.iw, align 8, !tbaa !184
  %i.iy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.prol, i64 -8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !185
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.prol, i64 -8
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !186
  %i.jb = add nsw i64 %.010.i.i.i.i.i.i.i1136.prol, -1 ; 2 uses
  %prol.iter1292.next = add i64 %prol.iter1292, 1 ; 2 uses
  %prol.iter1292.cmp.not = icmp eq i64 %prol.iter1292.next, %xtraiter1290
  br i1 %prol.iter1292.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1135.prol, !llvm.loop !356

.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1135.prol, %.lr.ph.i.i.i.i.i.preheader.i.i1134
  %.010.i.i.i.i.i.i.i1136.unr = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ], [ %i.jb, %.lr.ph.i.i.i.i.i.i.i1135.prol ]
  %.069.i.i.i.i.i.i.i1137.unr = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i1135.prol ]
  %.078.i.i.i.i.i.i.i1138.unr = phi ptr [ %.sroa.08.020.i.i1091.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i1134 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i1135.prol ]
  %i.jc = icmp ult i64 %i.is, 4
  br i1 %i.jc, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133, label %.lr.ph.i.i.i.i.i.i.i1135

.lr.ph.i.i.i.i.i.i.i1135:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1135
  %.010.i.i.i.i.i.i.i1136 = phi i64 [ %i.kb, %.lr.ph.i.i.i.i.i.i.i1135 ], [ %.010.i.i.i.i.i.i.i1136.unr, %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1137 = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i.i.i1135 ], [ %.069.i.i.i.i.i.i.i1137.unr, %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1138 = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i.i.i1135 ], [ %.078.i.i.i.i.i.i.i1138.unr, %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit ] ; 8 uses
  %i.jd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -16
  %i.je = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -16
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !77
  store i64 %i.jf, ptr %i.je, align 8, !tbaa !184
  %i.jg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !185
  %i.ji = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -8
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !186
  %i.jj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -32
  %i.jk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -32
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !77
  store i64 %i.jl, ptr %i.jk, align 8, !tbaa !184
  %i.jm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !185
  %i.jo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -24
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !186
  %i.jp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -48
  %i.jq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -48
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !77
  store i64 %i.jr, ptr %i.jq, align 8, !tbaa !184
  %i.js = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -40
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !185
  %i.ju = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -40
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !186
  %i.jv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -64 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -64 ; 2 uses
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !77
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !184
  %i.jy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138, i64 -56
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !185
  %i.ka = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137, i64 -56
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !186
  %i.kb = add nsw i64 %.010.i.i.i.i.i.i.i1136, -4
  %i.kc = icmp sgt i64 %.010.i.i.i.i.i.i.i1136, 4
  br i1 %i.kc, label %.lr.ph.i.i.i.i.i.i.i1135, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133: ; preds = %.lr.ph.i.i.i.i.i.i.i1135.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1135, %bb.x
  store i64 %i.io, ptr %.sroa.035.039.i1088, align 8, !tbaa !184
  store ptr %.sroa.4.0.copyload.i.i1094, ptr %i.in, align 8, !tbaa !186
  br label %bb.y

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095: ; preds = %.lr.ph.i.i1087
  %57 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 24
  store ptr %.sroa.4.0.copyload.i.i1094, ptr %57, align 8, !tbaa !186
  br label %bb.y

bb.y:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133
  %i.kd = phi i64 [ %i.io, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133 ], [ %.pre22.i.i1090, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095 ]
  %.sroa.08.020.i.i1091.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 32 ; 8 uses
  %i.ke = load i64, ptr %.sroa.08.020.i.i1091.ptr.1, align 8, !tbaa !77 ; 6 uses
  %i.kf = icmp ult i64 %i.ke, %i.kd
  %.sroa.4.0..sroa_idx.i.i1093.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 40
  %.sroa.4.0.copyload.i.i1094.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i1093.1, align 8 ; 2 uses
  br i1 %i.kf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kg = load i64, ptr %.sroa.08.020.i.i1091.ptr, align 8, !tbaa !77 ; 2 uses
  %i.kh = icmp ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph.i.i.i1129.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.1

.lr.ph.i.i.i1129.1:                               ; preds = %bb.z, %.lr.ph.i.i.i1129.1
  %i.ki = phi i64 [ %i.km, %.lr.ph.i.i.i1129.1 ], [ %i.kg, %bb.z ]
  %.sroa.0.010.i.i.i1130.1 = phi ptr [ %.sroa.0.0.i.i.i1132.1, %.lr.ph.i.i.i1129.1 ], [ %.sroa.08.020.i.i1091.ptr, %bb.z ] ; 3 uses
  %.sroa.05.09.i.i.i1131.1 = phi ptr [ %.sroa.0.010.i.i.i1130.1, %.lr.ph.i.i.i1129.1 ], [ %.sroa.08.020.i.i1091.ptr.1, %bb.z ] ; 3 uses
  store i64 %i.ki, ptr %.sroa.05.09.i.i.i1131.1, align 8, !tbaa !184
  %i.kj = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i1131.1, i64 -8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !185
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i1131.1, i64 8
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !186
  %.sroa.0.0.i.i.i1132.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i1130.1, i64 -16 ; 2 uses
  %i.km = load i64, ptr %.sroa.0.0.i.i.i1132.1, align 8, !tbaa !77 ; 2 uses
  %i.kn = icmp ult i64 %i.ke, %i.km
  br i1 %i.kn, label %.lr.ph.i.i.i1129.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.1, !llvm.loop !8

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.1: ; preds = %.lr.ph.i.i.i1129.1, %bb.z
  %.sroa.05.0.lcssa.i.i.i1096.1 = phi ptr [ %.sroa.08.020.i.i1091.ptr.1, %bb.z ], [ %.sroa.0.010.i.i.i1130.1, %.lr.ph.i.i.i1129.1 ] ; 2 uses
  store i64 %i.ke, ptr %.sroa.05.0.lcssa.i.i.i1096.1, align 8, !tbaa !184
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i1096.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i1094.1, ptr %i.ko, align 8, !tbaa !186
  %.pre.i.i1097.1 = load i64, ptr %.sroa.035.039.i1088, align 8, !tbaa !77
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.kp = ptrtoint ptr %.sroa.08.020.i.i1091.ptr.1 to i64
  %i.kq = sub i64 %i.kp, %i.im
  %i.kr = ashr exact i64 %i.kq, 4                 ; 5 uses
  %i.ks = icmp sgt i64 %i.kr, 0
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i.preheader.i.i1134.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.1

.lr.ph.i.i.i.i.i.preheader.i.i1134.1:             ; preds = %bb.aa
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 48 ; 2 uses
  %xtraiter1305 = and i64 %i.kr, 3                ; 2 uses
  %lcmp.mod1306.not = icmp eq i64 %xtraiter1305, 0
  br i1 %lcmp.mod1306.not, label %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1135.1.prol

.lr.ph.i.i.i.i.i.i.i1135.1.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i1134.1, %.lr.ph.i.i.i.i.i.i.i1135.1.prol
  %.010.i.i.i.i.i.i.i1136.1.prol = phi i64 [ %i.la, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ], [ %i.kr, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ]
  %.069.i.i.i.i.i.i.i1137.1.prol = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ], [ %i.kt, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i1138.1.prol = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ], [ %.sroa.08.020.i.i1091.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ] ; 2 uses
  %prol.iter1307 = phi i64 [ %prol.iter1307.next, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ]
  %i.ku = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1.prol, i64 -16 ; 3 uses
  %i.kv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1.prol, i64 -16 ; 3 uses
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !77
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !184
  %i.kx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1.prol, i64 -8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !185
  %i.kz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1.prol, i64 -8
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !186
  %i.la = add nsw i64 %.010.i.i.i.i.i.i.i1136.1.prol, -1 ; 2 uses
  %prol.iter1307.next = add i64 %prol.iter1307, 1 ; 2 uses
  %prol.iter1307.cmp.not = icmp eq i64 %prol.iter1307.next, %xtraiter1305
  br i1 %prol.iter1307.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1135.1.prol, !llvm.loop !357

.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i1135.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1
  %.010.i.i.i.i.i.i.i1136.1.unr = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ]
  %.069.i.i.i.i.i.i.i1137.1.unr = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ], [ %i.kv, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ]
  %.078.i.i.i.i.i.i.i1138.1.unr = phi ptr [ %.sroa.08.020.i.i1091.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i1134.1 ], [ %i.ku, %.lr.ph.i.i.i.i.i.i.i1135.1.prol ]
  %i.lb = icmp ult i64 %i.kr, 4
  br i1 %i.lb, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.1, label %.lr.ph.i.i.i.i.i.i.i1135.1

.lr.ph.i.i.i.i.i.i.i1135.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1135.1
  %.010.i.i.i.i.i.i.i1136.1 = phi i64 [ %i.ma, %.lr.ph.i.i.i.i.i.i.i1135.1 ], [ %.010.i.i.i.i.i.i.i1136.1.unr, %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1137.1 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i1135.1 ], [ %.069.i.i.i.i.i.i.i1137.1.unr, %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1138.1 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i1135.1 ], [ %.078.i.i.i.i.i.i.i1138.1.unr, %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit ] ; 8 uses
  %i.lc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -16
  %i.ld = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -16
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !77
  store i64 %i.le, ptr %i.ld, align 8, !tbaa !184
  %i.lf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !185
  %i.lh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -8
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !186
  %i.li = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -32
  %i.lj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -32
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !77
  store i64 %i.lk, ptr %i.lj, align 8, !tbaa !184
  %i.ll = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -24
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !185
  %i.ln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -24
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !186
  %i.lo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -48
  %i.lp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -48
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !77
  store i64 %i.lq, ptr %i.lp, align 8, !tbaa !184
  %i.lr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -40
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !185
  %i.lt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -40
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !186
  %i.lu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -64 ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -64 ; 2 uses
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !77
  store i64 %i.lw, ptr %i.lv, align 8, !tbaa !184
  %i.lx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.1, i64 -56
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !185
  %i.lz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.1, i64 -56
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !186
  %i.ma = add nsw i64 %.010.i.i.i.i.i.i.i1136.1, -4
  %i.mb = icmp sgt i64 %.010.i.i.i.i.i.i.i1136.1, 4
  br i1 %i.mb, label %.lr.ph.i.i.i.i.i.i.i1135.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.1, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.1: ; preds = %.lr.ph.i.i.i.i.i.i.i1135.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1135.1, %bb.aa
  store i64 %i.ke, ptr %.sroa.035.039.i1088, align 8, !tbaa !184
  store ptr %.sroa.4.0.copyload.i.i1094.1, ptr %i.in, align 8, !tbaa !186
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.1
  %i.mc = phi i64 [ %i.ke, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.1 ], [ %.pre.i.i1097.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.1 ]
  %.sroa.08.020.i.i1091.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 48 ; 8 uses
  %i.md = load i64, ptr %.sroa.08.020.i.i1091.ptr.2, align 8, !tbaa !77 ; 6 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %.sroa.4.0..sroa_idx.i.i1093.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 56
  %.sroa.4.0.copyload.i.i1094.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i1093.2, align 8 ; 2 uses
  br i1 %i.me, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mf = load i64, ptr %.sroa.08.020.i.i1091.ptr.1, align 8, !tbaa !77 ; 2 uses
  %i.mg = icmp ult i64 %i.md, %i.mf
  br i1 %i.mg, label %.lr.ph.i.i.i1129.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.2

.lr.ph.i.i.i1129.2:                               ; preds = %bb.ac, %.lr.ph.i.i.i1129.2
  %i.mh = phi i64 [ %i.ml, %.lr.ph.i.i.i1129.2 ], [ %i.mf, %bb.ac ]
  %.sroa.0.010.i.i.i1130.2 = phi ptr [ %.sroa.0.0.i.i.i1132.2, %.lr.ph.i.i.i1129.2 ], [ %.sroa.08.020.i.i1091.ptr.1, %bb.ac ] ; 3 uses
  %.sroa.05.09.i.i.i1131.2 = phi ptr [ %.sroa.0.010.i.i.i1130.2, %.lr.ph.i.i.i1129.2 ], [ %.sroa.08.020.i.i1091.ptr.2, %bb.ac ] ; 3 uses
  store i64 %i.mh, ptr %.sroa.05.09.i.i.i1131.2, align 8, !tbaa !184
  %i.mi = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i1131.2, i64 -8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !185
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i1131.2, i64 8
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !186
  %.sroa.0.0.i.i.i1132.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i1130.2, i64 -16 ; 2 uses
  %i.ml = load i64, ptr %.sroa.0.0.i.i.i1132.2, align 8, !tbaa !77 ; 2 uses
  %i.mm = icmp ult i64 %i.md, %i.ml
  br i1 %i.mm, label %.lr.ph.i.i.i1129.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.2, !llvm.loop !8

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i1095.2: ; preds = %.lr.ph.i.i.i1129.2, %bb.ac
  %.sroa.05.0.lcssa.i.i.i1096.2 = phi ptr [ %.sroa.08.020.i.i1091.ptr.2, %bb.ac ], [ %.sroa.0.010.i.i.i1130.2, %.lr.ph.i.i.i1129.2 ] ; 2 uses
  store i64 %i.md, ptr %.sroa.05.0.lcssa.i.i.i1096.2, align 8, !tbaa !184
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i1096.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i1094.2, ptr %i.mn, align 8, !tbaa !186
  %.pre.i.i1097.2 = load i64, ptr %.sroa.035.039.i1088, align 8, !tbaa !77
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.mo = ptrtoint ptr %.sroa.08.020.i.i1091.ptr.2 to i64
  %i.mp = sub i64 %i.mo, %i.im
  %i.mq = ashr exact i64 %i.mp, 4                 ; 5 uses
  %i.mr = icmp sgt i64 %i.mq, 0
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i.preheader.i.i1134.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.2

.lr.ph.i.i.i.i.i.preheader.i.i1134.2:             ; preds = %bb.ad
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i1088, i64 64 ; 2 uses
  %xtraiter1308 = and i64 %i.mq, 3                ; 2 uses
  %lcmp.mod1309.not = icmp eq i64 %xtraiter1308, 0
  br i1 %lcmp.mod1309.not, label %.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1135.2.prol

.lr.ph.i.i.i.i.i.i.i1135.2.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i1134.2, %.lr.ph.i.i.i.i.i.i.i1135.2.prol
  %.010.i.i.i.i.i.i.i1136.2.prol = phi i64 [ %i.mz, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ], [ %i.mq, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ]
  %.069.i.i.i.i.i.i.i1137.2.prol = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ], [ %i.ms, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i1138.2.prol = phi ptr [ %i.mt, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ], [ %.sroa.08.020.i.i1091.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ] ; 2 uses
  %prol.iter1310 = phi i64 [ %prol.iter1310.next, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ]
  %i.mt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.2.prol, i64 -16 ; 3 uses
  %i.mu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.2.prol, i64 -16 ; 3 uses
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !77
  store i64 %i.mv, ptr %i.mu, align 8, !tbaa !184
  %i.mw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.2.prol, i64 -8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !185
  %i.my = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.2.prol, i64 -8
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !186
  %i.mz = add nsw i64 %.010.i.i.i.i.i.i.i1136.2.prol, -1 ; 2 uses
  %prol.iter1310.next = add i64 %prol.iter1310, 1 ; 2 uses
  %prol.iter1310.cmp.not = icmp eq i64 %prol.iter1310.next, %xtraiter1308
  br i1 %prol.iter1310.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1135.2.prol, !llvm.loop !358

.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i1135.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2
  %.010.i.i.i.i.i.i.i1136.2.unr = phi i64 [ %i.mq, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ]
  %.069.i.i.i.i.i.i.i1137.2.unr = phi ptr [ %i.ms, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ], [ %i.mu, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ]
  %.078.i.i.i.i.i.i.i1138.2.unr = phi ptr [ %.sroa.08.020.i.i1091.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i1134.2 ], [ %i.mt, %.lr.ph.i.i.i.i.i.i.i1135.2.prol ]
  %i.na = icmp ult i64 %i.mq, 4
  br i1 %i.na, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i1133.2, label %.lr.ph.i.i.i.i.i.i.i1135.2

.lr.ph.i.i.i.i.i.i.i1135.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1135.2
  %.010.i.i.i.i.i.i.i1136.2 = phi i64 [ %i.nz, %.lr.ph.i.i.i.i.i.i.i1135.2 ], [ %.010.i.i.i.i.i.i.i1136.2.unr, %.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1137.2 = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i.i.i1135.2 ], [ %.069.i.i.i.i.i.i.i1137.2.unr, %.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1138.2 = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i.i1135.2 ], [ %.078.i.i.i.i.i.i.i1138.2.unr, %.lr.ph.i.i.i.i.i.i.i1135.2.prol.loopexit ] ; 8 uses
  %i.nb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.2, i64 -16
  %i.nc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1137.2, i64 -16
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !77
  store i64 %i.nd, ptr %i.nc, align 8, !tbaa !184
  %i.ne = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1138.2, i64 -8
end_hunk_0
begin_hunk_1_@_ZN3lld9BPOrdererIN12_GLOBAL__N_114BPOrdererMachOEE12computeOrderEN4llvm9StringRefENS4_8ArrayRefINS_21BPCompressionSortSpecEEEbbbbNS6_IPNS_5macho12InputSectionEEERKNS4_8DenseMapINS4_19CachedHashStringRefESt3setIjSt4lessIjESaIjEENS4_12DenseMapInfoISE_vEENS4_6detail12DenseMapPairISE_SJ_EEEE:bb.a
  %i.ahh = getelementptr inbounds nuw i8, ptr %.01628.i42.i1000, i64 16
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i40.i998
  %i.ahi = getelementptr inbounds nuw i8, ptr %.029.i41.i999, i64 16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink34.i44.i1002 = phi i64 [ %i.ahe, %bb.bc ], [ %i.ahf, %bb.bd ]
  %.01628.pn.i45.i1003 = phi ptr [ %.01628.i42.i1000, %bb.bc ], [ %.029.i41.i999, %bb.bd ]
  %.117.i46.i1004 = phi ptr [ %i.ahh, %bb.bc ], [ %.01628.i42.i1000, %bb.bd ] ; 3 uses
  %.1.i47.i1005 = phi ptr [ %.029.i41.i999, %bb.bc ], [ %i.ahi, %bb.bd ] ; 3 uses
  %.sink.in.i48.i1006 = getelementptr inbounds nuw i8, ptr %.01628.pn.i45.i1003, i64 8
  %.sink.i49.i1007 = load ptr, ptr %.sink.in.i48.i1006, align 8, !tbaa !185
  store i64 %.sink34.i44.i1002, ptr %.sroa.0.027.i43.i1001, align 8, !tbaa !184
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i1001, i64 8
  store ptr %.sink.i49.i1007, ptr %i.ahj, align 8, !tbaa !186
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i1001, i64 16 ; 2 uses
  %i.ahl = icmp ne ptr %.1.i47.i1005, %i.aha
  %i.ahm = icmp ne ptr %.117.i46.i1004, %i.il
  %i.ahn = select i1 %i.ahl, i1 %i.ahm, i1 false
  br i1 %i.ahn, label %.lr.ph.i40.i998, label %._crit_edge.i25.i983, !llvm.loop !14

._crit_edge.i25.i983:                             ; preds = %bb.be, %._crit_edge.i977
  %.sroa.0.0.lcssa.i26.i984 = phi ptr [ %.sroa.022.0.lcssa.i979, %._crit_edge.i977 ], [ %i.ahk, %bb.be ] ; 5 uses
  %.016.lcssa.i27.i985 = phi ptr [ %i.aha, %._crit_edge.i977 ], [ %.117.i46.i1004, %bb.be ] ; 3 uses
  %.0.lcssa.i28.i986 = phi ptr [ %.0.lcssa.i978, %._crit_edge.i977 ], [ %.1.i47.i1005, %bb.be ] ; 3 uses
  %i.aho = ptrtoint ptr %i.aha to i64
  %i.ahp = ptrtoint ptr %.0.lcssa.i28.i986 to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  %i.ahr = ashr exact i64 %i.ahq, 4               ; 5 uses
  %i.ahs = icmp sgt i64 %i.ahr, 0
  br i1 %i.ahs, label %.lr.ph.i.i.i.i.i.i36.i994.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i987

.lr.ph.i.i.i.i.i.i36.i994.preheader:              ; preds = %._crit_edge.i25.i983
  %xtraiter1341 = and i64 %i.ahr, 3               ; 2 uses
  %lcmp.mod1342.not = icmp eq i64 %xtraiter1341, 0
  br i1 %lcmp.mod1342.not, label %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i994.prol

.lr.ph.i.i.i.i.i.i36.i994.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i36.i994.preheader, %.lr.ph.i.i.i.i.i.i36.i994.prol
  %.012.i.i.i.i.i.i37.i995.prol = phi i64 [ %i.ahz, %.lr.ph.i.i.i.i.i.i36.i994.prol ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i36.i994.preheader ]
  %.0811.i.i.i.i.i.i38.i996.prol = phi ptr [ %i.ahy, %.lr.ph.i.i.i.i.i.i36.i994.prol ], [ %.sroa.0.0.lcssa.i26.i984, %.lr.ph.i.i.i.i.i.i36.i994.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i39.i997.prol = phi ptr [ %i.ahx, %.lr.ph.i.i.i.i.i.i36.i994.prol ], [ %.0.lcssa.i28.i986, %.lr.ph.i.i.i.i.i.i36.i994.preheader ] ; 3 uses
  %prol.iter1343 = phi i64 [ %prol.iter1343.next, %.lr.ph.i.i.i.i.i.i36.i994.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.i994.preheader ]
  %i.aht = load i64, ptr %.0910.i.i.i.i.i.i39.i997.prol, align 8, !tbaa !77
  store i64 %i.aht, ptr %.0811.i.i.i.i.i.i38.i996.prol, align 8, !tbaa !184
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997.prol, i64 8
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !185
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996.prol, i64 8
  store ptr %i.ahv, ptr %i.ahw, align 8, !tbaa !186
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997.prol, i64 16 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996.prol, i64 16 ; 3 uses
  %i.ahz = add nsw i64 %.012.i.i.i.i.i.i37.i995.prol, -1 ; 2 uses
  %prol.iter1343.next = add i64 %prol.iter1343, 1 ; 2 uses
  %prol.iter1343.cmp.not = icmp eq i64 %prol.iter1343.next, %xtraiter1341
  br i1 %prol.iter1343.cmp.not, label %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i994.prol, !llvm.loop !369

.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i36.i994.prol, %.lr.ph.i.i.i.i.i.i36.i994.preheader
  %.012.i.i.i.i.i.i37.i995.unr = phi i64 [ %i.ahr, %.lr.ph.i.i.i.i.i.i36.i994.preheader ], [ %i.ahz, %.lr.ph.i.i.i.i.i.i36.i994.prol ]
  %.0811.i.i.i.i.i.i38.i996.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i984, %.lr.ph.i.i.i.i.i.i36.i994.preheader ], [ %i.ahy, %.lr.ph.i.i.i.i.i.i36.i994.prol ]
  %.0910.i.i.i.i.i.i39.i997.unr = phi ptr [ %.0.lcssa.i28.i986, %.lr.ph.i.i.i.i.i.i36.i994.preheader ], [ %i.ahx, %.lr.ph.i.i.i.i.i.i36.i994.prol ]
  %.lcssa1245.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.i994.preheader ], [ %i.ahy, %.lr.ph.i.i.i.i.i.i36.i994.prol ]
  %i.aia = icmp ult i64 %i.ahr, 4
  br i1 %i.aia, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i987, label %.lr.ph.i.i.i.i.i.i36.i994

.lr.ph.i.i.i.i.i.i36.i994:                        ; preds = %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i994
  %.012.i.i.i.i.i.i37.i995 = phi i64 [ %i.aiz, %.lr.ph.i.i.i.i.i.i36.i994 ], [ %.012.i.i.i.i.i.i37.i995.unr, %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38.i996 = phi ptr [ %i.aiy, %.lr.ph.i.i.i.i.i.i36.i994 ], [ %.0811.i.i.i.i.i.i38.i996.unr, %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i39.i997 = phi ptr [ %i.aix, %.lr.ph.i.i.i.i.i.i36.i994 ], [ %.0910.i.i.i.i.i.i39.i997.unr, %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit ] ; 9 uses
  %i.aib = load i64, ptr %.0910.i.i.i.i.i.i39.i997, align 8, !tbaa !77
  store i64 %i.aib, ptr %.0811.i.i.i.i.i.i38.i996, align 8, !tbaa !184
  %i.aic = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !185
  %i.aie = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 8
  store ptr %i.aid, ptr %i.aie, align 8, !tbaa !186
  %i.aif = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 16
  %i.aig = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 16
  %i.aih = load i64, ptr %i.aif, align 8, !tbaa !77
  store i64 %i.aih, ptr %i.aig, align 8, !tbaa !184
  %i.aii = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !185
  %i.aik = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 24
  store ptr %i.aij, ptr %i.aik, align 8, !tbaa !186
  %i.ail = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 32
  %i.aim = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 32
  %i.ain = load i64, ptr %i.ail, align 8, !tbaa !77
  store i64 %i.ain, ptr %i.aim, align 8, !tbaa !184
  %i.aio = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 40
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !185
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 40
  store ptr %i.aip, ptr %i.aiq, align 8, !tbaa !186
  %i.air = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 48
  %i.ais = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 48
  %i.ait = load i64, ptr %i.air, align 8, !tbaa !77
  store i64 %i.ait, ptr %i.ais, align 8, !tbaa !184
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 56
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !185
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 56
  store ptr %i.aiv, ptr %i.aiw, align 8, !tbaa !186
  %i.aix = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i997, i64 64
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i996, i64 64 ; 2 uses
  %i.aiz = add nsw i64 %.012.i.i.i.i.i.i37.i995, -4
  %i.aja = icmp sgt i64 %.012.i.i.i.i.i.i37.i995, 4
  br i1 %i.aja, label %.lr.ph.i.i.i.i.i.i36.i994, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i987, !llvm.loop !12

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i987: ; preds = %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i994, %._crit_edge.i25.i983
  %.08.lcssa.i.i.i.i.i.i30.i988 = phi ptr [ %.sroa.0.0.lcssa.i26.i984, %._crit_edge.i25.i983 ], [ %.lcssa1245.unr, %.lr.ph.i.i.i.i.i.i36.i994.prol.loopexit ], [ %i.aiy, %.lr.ph.i.i.i.i.i.i36.i994 ]
  %i.ajb = ptrtoint ptr %.016.lcssa.i27.i985 to i64
  %i.ajc = sub i64 %i.we, %i.ajb
  %i.ajd = ashr exact i64 %i.ajc, 4               ; 5 uses
  %i.aje = icmp sgt i64 %i.ajd, 0
  br i1 %i.aje, label %.lr.ph.i.i.i.i.i19.i32.preheader.i989, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1016

.lr.ph.i.i.i.i.i19.i32.preheader.i989:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i987
  %i.ajf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i988 to i64
  %i.ajg = ptrtoint ptr %.sroa.0.0.lcssa.i26.i984 to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  %i.aji = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i984, i64 %i.ajh ; 2 uses
  %xtraiter1344 = and i64 %i.ajd, 3               ; 2 uses
  %lcmp.mod1345.not = icmp eq i64 %xtraiter1344, 0
  br i1 %lcmp.mod1345.not, label %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i990.prol

.lr.ph.i.i.i.i.i19.i32.i990.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i989, %.lr.ph.i.i.i.i.i19.i32.i990.prol
  %.012.i.i.i.i.i20.i33.i991.prol = phi i64 [ %i.ajp, %.lr.ph.i.i.i.i.i19.i32.i990.prol ], [ %i.ajd, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ]
  %.0811.i.i.i.i.i21.i34.i992.prol = phi ptr [ %i.ajo, %.lr.ph.i.i.i.i.i19.i32.i990.prol ], [ %i.aji, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i993.prol = phi ptr [ %i.ajn, %.lr.ph.i.i.i.i.i19.i32.i990.prol ], [ %.016.lcssa.i27.i985, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ] ; 3 uses
  %prol.iter1346 = phi i64 [ %prol.iter1346.next, %.lr.ph.i.i.i.i.i19.i32.i990.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ]
  %i.ajj = load i64, ptr %.0910.i.i.i.i.i22.i35.i993.prol, align 8, !tbaa !77
  store i64 %i.ajj, ptr %.0811.i.i.i.i.i21.i34.i992.prol, align 8, !tbaa !184
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993.prol, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !185
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992.prol, i64 8
  store ptr %i.ajl, ptr %i.ajm, align 8, !tbaa !186
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993.prol, i64 16 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992.prol, i64 16 ; 2 uses
  %i.ajp = add nsw i64 %.012.i.i.i.i.i20.i33.i991.prol, -1 ; 2 uses
  %prol.iter1346.next = add i64 %prol.iter1346, 1 ; 2 uses
  %prol.iter1346.cmp.not = icmp eq i64 %prol.iter1346.next, %xtraiter1344
  br i1 %prol.iter1346.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i990.prol, !llvm.loop !370

.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i990.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i989
  %.012.i.i.i.i.i20.i33.i991.unr = phi i64 [ %i.ajd, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ], [ %i.ajp, %.lr.ph.i.i.i.i.i19.i32.i990.prol ]
  %.0811.i.i.i.i.i21.i34.i992.unr = phi ptr [ %i.aji, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ], [ %i.ajo, %.lr.ph.i.i.i.i.i19.i32.i990.prol ]
  %.0910.i.i.i.i.i22.i35.i993.unr = phi ptr [ %.016.lcssa.i27.i985, %.lr.ph.i.i.i.i.i19.i32.preheader.i989 ], [ %i.ajn, %.lr.ph.i.i.i.i.i19.i32.i990.prol ]
  %i.ajq = icmp ult i64 %i.ajd, 4
  br i1 %i.ajq, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1016, label %.lr.ph.i.i.i.i.i19.i32.i990

.lr.ph.i.i.i.i.i19.i32.i990:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i990
  %.012.i.i.i.i.i20.i33.i991 = phi i64 [ %i.akp, %.lr.ph.i.i.i.i.i19.i32.i990 ], [ %.012.i.i.i.i.i20.i33.i991.unr, %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i992 = phi ptr [ %i.ako, %.lr.ph.i.i.i.i.i19.i32.i990 ], [ %.0811.i.i.i.i.i21.i34.i992.unr, %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i993 = phi ptr [ %i.akn, %.lr.ph.i.i.i.i.i19.i32.i990 ], [ %.0910.i.i.i.i.i22.i35.i993.unr, %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit ] ; 9 uses
  %i.ajr = load i64, ptr %.0910.i.i.i.i.i22.i35.i993, align 8, !tbaa !77
  store i64 %i.ajr, ptr %.0811.i.i.i.i.i21.i34.i992, align 8, !tbaa !184
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !185
  %i.aju = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 8
  store ptr %i.ajt, ptr %i.aju, align 8, !tbaa !186
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 16
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 16
  %i.ajx = load i64, ptr %i.ajv, align 8, !tbaa !77
  store i64 %i.ajx, ptr %i.ajw, align 8, !tbaa !184
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 24
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !185
  %i.aka = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 24
  store ptr %i.ajz, ptr %i.aka, align 8, !tbaa !186
  %i.akb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 32
  %i.akc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 32
  %i.akd = load i64, ptr %i.akb, align 8, !tbaa !77
  store i64 %i.akd, ptr %i.akc, align 8, !tbaa !184
  %i.ake = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 40
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !185
  %i.akg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 40
  store ptr %i.akf, ptr %i.akg, align 8, !tbaa !186
  %i.akh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 48
  %i.aki = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 48
  %i.akj = load i64, ptr %i.akh, align 8, !tbaa !77
  store i64 %i.akj, ptr %i.aki, align 8, !tbaa !184
  %i.akk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 56
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !185
  %i.akm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 56
  store ptr %i.akl, ptr %i.akm, align 8, !tbaa !186
  %i.akn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i993, i64 64
  %i.ako = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i992, i64 64
  %i.akp = add nsw i64 %.012.i.i.i.i.i20.i33.i991, -4
  %i.akq = icmp sgt i64 %.012.i.i.i.i.i20.i33.i991, 4
  br i1 %i.akq, label %.lr.ph.i.i.i.i.i19.i32.i990, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1016, !llvm.loop !12

_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1016: ; preds = %.lr.ph.i.i.i.i.i19.i32.i990.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i990, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i987
  %i.akr = icmp slt i64 %i.ade, %i.hn
  br i1 %i.akr, label %.lr.ph.i.i886, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, !llvm.loop !16

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1016, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit1139
  %i.aks = sub i64 %i.hi, %i.ik                   ; 2 uses
  %i.akt = ashr exact i64 %i.aks, 4               ; 13 uses
  %i.aku = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %i.aks ; 3 uses
  %.not38.i = icmp slt i64 %i.akt, 7
  br i1 %.not38.i, label %._crit_edge.i939, label %.lr.ph.i.i930

.lr.ph.i.i930:                                    ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i
  %i.akv = phi i64 [ %i.awi, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.ik, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.sroa.035.039.i = phi ptr [ %i.awh, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.ij, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 32 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 8 ; 6 uses
  %.pre22.i.i931 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !77 ; 2 uses
  %.sroa.08.020.i.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 16 ; 6 uses
  %i.akx = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !77 ; 3 uses
  %i.aky = icmp ult i64 %i.akx, %.pre22.i.i931
  %.sroa.4.0..sroa_idx.i.i933 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  %.sroa.4.0.copyload.i.i934 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i933, align 8 ; 2 uses
  br i1 %i.aky, label %bb.bf, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i930
  %i.akz = ptrtoint ptr %.sroa.08.020.i.i.ptr to i64
  %i.ala = sub i64 %i.akz, %i.akv
  %i.alb = ashr exact i64 %i.ala, 4               ; 5 uses
  %i.alc = icmp sgt i64 %i.alb, 0
  br i1 %i.alc, label %.lr.ph.i.i.i.i.i.preheader.i.i946, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i946:                ; preds = %bb.bf
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 2 uses
  %xtraiter1347 = and i64 %i.alb, 3               ; 2 uses
  %lcmp.mod1348.not = icmp eq i64 %xtraiter1347, 0
  br i1 %lcmp.mod1348.not, label %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i947.prol

.lr.ph.i.i.i.i.i.i.i947.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i946, %.lr.ph.i.i.i.i.i.i.i947.prol
  %.010.i.i.i.i.i.i.i948.prol = phi i64 [ %i.alk, %.lr.ph.i.i.i.i.i.i.i947.prol ], [ %i.alb, %.lr.ph.i.i.i.i.i.preheader.i.i946 ]
  %.069.i.i.i.i.i.i.i949.prol = phi ptr [ %i.alf, %.lr.ph.i.i.i.i.i.i.i947.prol ], [ %i.ald, %.lr.ph.i.i.i.i.i.preheader.i.i946 ] ; 2 uses
  %.078.i.i.i.i.i.i.i950.prol = phi ptr [ %i.ale, %.lr.ph.i.i.i.i.i.i.i947.prol ], [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i946 ] ; 2 uses
  %prol.iter1349 = phi i64 [ %prol.iter1349.next, %.lr.ph.i.i.i.i.i.i.i947.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i946 ]
  %i.ale = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.prol, i64 -16 ; 3 uses
  %i.alf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.prol, i64 -16 ; 3 uses
  %i.alg = load i64, ptr %i.ale, align 8, !tbaa !77
  store i64 %i.alg, ptr %i.alf, align 8, !tbaa !184
  %i.alh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.prol, i64 -8
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !185
  %i.alj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.prol, i64 -8
  store ptr %i.ali, ptr %i.alj, align 8, !tbaa !186
  %i.alk = add nsw i64 %.010.i.i.i.i.i.i.i948.prol, -1 ; 2 uses
  %prol.iter1349.next = add i64 %prol.iter1349, 1 ; 2 uses
  %prol.iter1349.cmp.not = icmp eq i64 %prol.iter1349.next, %xtraiter1347
  br i1 %prol.iter1349.cmp.not, label %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i947.prol, !llvm.loop !371

.lr.ph.i.i.i.i.i.i.i947.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i947.prol, %.lr.ph.i.i.i.i.i.preheader.i.i946
  %.010.i.i.i.i.i.i.i948.unr = phi i64 [ %i.alb, %.lr.ph.i.i.i.i.i.preheader.i.i946 ], [ %i.alk, %.lr.ph.i.i.i.i.i.i.i947.prol ]
  %.069.i.i.i.i.i.i.i949.unr = phi ptr [ %i.ald, %.lr.ph.i.i.i.i.i.preheader.i.i946 ], [ %i.alf, %.lr.ph.i.i.i.i.i.i.i947.prol ]
  %.078.i.i.i.i.i.i.i950.unr = phi ptr [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i946 ], [ %i.ale, %.lr.ph.i.i.i.i.i.i.i947.prol ]
  %i.all = icmp ult i64 %i.alb, 4
  br i1 %i.all, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i947

.lr.ph.i.i.i.i.i.i.i947:                          ; preds = %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i947
  %.010.i.i.i.i.i.i.i948 = phi i64 [ %i.amk, %.lr.ph.i.i.i.i.i.i.i947 ], [ %.010.i.i.i.i.i.i.i948.unr, %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i949 = phi ptr [ %i.amf, %.lr.ph.i.i.i.i.i.i.i947 ], [ %.069.i.i.i.i.i.i.i949.unr, %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i950 = phi ptr [ %i.ame, %.lr.ph.i.i.i.i.i.i.i947 ], [ %.078.i.i.i.i.i.i.i950.unr, %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit ] ; 8 uses
  %i.alm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -16
  %i.aln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -16
  %i.alo = load i64, ptr %i.alm, align 8, !tbaa !77
  store i64 %i.alo, ptr %i.aln, align 8, !tbaa !184
  %i.alp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !185
  %i.alr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -8
  store ptr %i.alq, ptr %i.alr, align 8, !tbaa !186
  %i.als = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -32
  %i.alt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -32
  %i.alu = load i64, ptr %i.als, align 8, !tbaa !77
  store i64 %i.alu, ptr %i.alt, align 8, !tbaa !184
  %i.alv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -24
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !185
  %i.alx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -24
  store ptr %i.alw, ptr %i.alx, align 8, !tbaa !186
  %i.aly = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -48
  %i.alz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -48
  %i.ama = load i64, ptr %i.aly, align 8, !tbaa !77
  store i64 %i.ama, ptr %i.alz, align 8, !tbaa !184
  %i.amb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -40
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !185
  %i.amd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -40
  store ptr %i.amc, ptr %i.amd, align 8, !tbaa !186
  %i.ame = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -64 ; 2 uses
  %i.amf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -64 ; 2 uses
  %i.amg = load i64, ptr %i.ame, align 8, !tbaa !77
  store i64 %i.amg, ptr %i.amf, align 8, !tbaa !184
  %i.amh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950, i64 -56
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !185
  %i.amj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949, i64 -56
  store ptr %i.ami, ptr %i.amj, align 8, !tbaa !186
  %i.amk = add nsw i64 %.010.i.i.i.i.i.i.i948, -4
  %i.aml = icmp sgt i64 %.010.i.i.i.i.i.i.i948, 4
  br i1 %i.aml, label %.lr.ph.i.i.i.i.i.i.i947, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i947.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i947, %bb.bf
  store i64 %i.akx, ptr %.sroa.035.039.i, align 8, !tbaa !184
  store ptr %.sroa.4.0.copyload.i.i934, ptr %i.akw, align 8, !tbaa !186
  br label %bb.bg

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i930
  %58 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  store ptr %.sroa.4.0.copyload.i.i934, ptr %58, align 8, !tbaa !186
  br label %bb.bg

bb.bg:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.amm = phi i64 [ %i.akx, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i ], [ %.pre22.i.i931, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i ]
  %.sroa.08.020.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 8 uses
  %i.amn = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !77 ; 6 uses
  %i.amo = icmp ult i64 %i.amn, %i.amm
  %.sroa.4.0..sroa_idx.i.i933.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 40
  %.sroa.4.0.copyload.i.i934.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i933.1, align 8 ; 2 uses
  br i1 %i.amo, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.amp = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !77 ; 2 uses
  %i.amq = icmp ult i64 %i.amn, %i.amp
  br i1 %i.amq, label %.lr.ph.i.i.i942.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i942.1:                                ; preds = %bb.bh, %.lr.ph.i.i.i942.1
  %i.amr = phi i64 [ %i.amv, %.lr.ph.i.i.i942.1 ], [ %i.amp, %bb.bh ]
  %.sroa.0.010.i.i.i943.1 = phi ptr [ %.sroa.0.0.i.i.i945.1, %.lr.ph.i.i.i942.1 ], [ %.sroa.08.020.i.i.ptr, %bb.bh ] ; 3 uses
  %.sroa.05.09.i.i.i944.1 = phi ptr [ %.sroa.0.010.i.i.i943.1, %.lr.ph.i.i.i942.1 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bh ] ; 3 uses
  store i64 %i.amr, ptr %.sroa.05.09.i.i.i944.1, align 8, !tbaa !184
  %i.ams = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i944.1, i64 -8
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !185
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i944.1, i64 8
  store ptr %i.amt, ptr %i.amu, align 8, !tbaa !186
  %.sroa.0.0.i.i.i945.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i943.1, i64 -16 ; 2 uses
  %i.amv = load i64, ptr %.sroa.0.0.i.i.i945.1, align 8, !tbaa !77 ; 2 uses
  %i.amw = icmp ult i64 %i.amn, %i.amv
  br i1 %i.amw, label %.lr.ph.i.i.i942.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1, !llvm.loop !8

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i942.1, %bb.bh
  %.sroa.05.0.lcssa.i.i.i935.1 = phi ptr [ %.sroa.08.020.i.i.ptr.1, %bb.bh ], [ %.sroa.0.010.i.i.i943.1, %.lr.ph.i.i.i942.1 ] ; 2 uses
  store i64 %i.amn, ptr %.sroa.05.0.lcssa.i.i.i935.1, align 8, !tbaa !184
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i935.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i934.1, ptr %i.amx, align 8, !tbaa !186
  %.pre.i.i936.1 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !77
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.amy = ptrtoint ptr %.sroa.08.020.i.i.ptr.1 to i64
  %i.amz = sub i64 %i.amy, %i.akv
  %i.ana = ashr exact i64 %i.amz, 4               ; 5 uses
  %i.anb = icmp sgt i64 %i.ana, 0
  br i1 %i.anb, label %.lr.ph.i.i.i.i.i.preheader.i.i946.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i946.1:              ; preds = %bb.bi
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 2 uses
  %xtraiter1362 = and i64 %i.ana, 3               ; 2 uses
  %lcmp.mod1363.not = icmp eq i64 %xtraiter1362, 0
  br i1 %lcmp.mod1363.not, label %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i947.1.prol

.lr.ph.i.i.i.i.i.i.i947.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i946.1, %.lr.ph.i.i.i.i.i.i.i947.1.prol
  %.010.i.i.i.i.i.i.i948.1.prol = phi i64 [ %i.anj, %.lr.ph.i.i.i.i.i.i.i947.1.prol ], [ %i.ana, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ]
  %.069.i.i.i.i.i.i.i949.1.prol = phi ptr [ %i.ane, %.lr.ph.i.i.i.i.i.i.i947.1.prol ], [ %i.anc, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i950.1.prol = phi ptr [ %i.and, %.lr.ph.i.i.i.i.i.i.i947.1.prol ], [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ] ; 2 uses
  %prol.iter1364 = phi i64 [ %prol.iter1364.next, %.lr.ph.i.i.i.i.i.i.i947.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ]
  %i.and = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1.prol, i64 -16 ; 3 uses
  %i.ane = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1.prol, i64 -16 ; 3 uses
  %i.anf = load i64, ptr %i.and, align 8, !tbaa !77
  store i64 %i.anf, ptr %i.ane, align 8, !tbaa !184
  %i.ang = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1.prol, i64 -8
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !185
  %i.ani = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1.prol, i64 -8
  store ptr %i.anh, ptr %i.ani, align 8, !tbaa !186
  %i.anj = add nsw i64 %.010.i.i.i.i.i.i.i948.1.prol, -1 ; 2 uses
  %prol.iter1364.next = add i64 %prol.iter1364, 1 ; 2 uses
  %prol.iter1364.cmp.not = icmp eq i64 %prol.iter1364.next, %xtraiter1362
  br i1 %prol.iter1364.cmp.not, label %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i947.1.prol, !llvm.loop !372

.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i947.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i946.1
  %.010.i.i.i.i.i.i.i948.1.unr = phi i64 [ %i.ana, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ], [ %i.anj, %.lr.ph.i.i.i.i.i.i.i947.1.prol ]
  %.069.i.i.i.i.i.i.i949.1.unr = phi ptr [ %i.anc, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ], [ %i.ane, %.lr.ph.i.i.i.i.i.i.i947.1.prol ]
  %.078.i.i.i.i.i.i.i950.1.unr = phi ptr [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i946.1 ], [ %i.and, %.lr.ph.i.i.i.i.i.i.i947.1.prol ]
  %i.ank = icmp ult i64 %i.ana, 4
  br i1 %i.ank, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, label %.lr.ph.i.i.i.i.i.i.i947.1

.lr.ph.i.i.i.i.i.i.i947.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i947.1
  %.010.i.i.i.i.i.i.i948.1 = phi i64 [ %i.aoj, %.lr.ph.i.i.i.i.i.i.i947.1 ], [ %.010.i.i.i.i.i.i.i948.1.unr, %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i949.1 = phi ptr [ %i.aoe, %.lr.ph.i.i.i.i.i.i.i947.1 ], [ %.069.i.i.i.i.i.i.i949.1.unr, %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i950.1 = phi ptr [ %i.aod, %.lr.ph.i.i.i.i.i.i.i947.1 ], [ %.078.i.i.i.i.i.i.i950.1.unr, %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit ] ; 8 uses
  %i.anl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -16
  %i.anm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -16
  %i.ann = load i64, ptr %i.anl, align 8, !tbaa !77
  store i64 %i.ann, ptr %i.anm, align 8, !tbaa !184
  %i.ano = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -8
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !185
  %i.anq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -8
  store ptr %i.anp, ptr %i.anq, align 8, !tbaa !186
  %i.anr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -32
  %i.ans = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -32
  %i.ant = load i64, ptr %i.anr, align 8, !tbaa !77
  store i64 %i.ant, ptr %i.ans, align 8, !tbaa !184
  %i.anu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -24
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !185
  %i.anw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -24
  store ptr %i.anv, ptr %i.anw, align 8, !tbaa !186
  %i.anx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -48
  %i.any = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -48
  %i.anz = load i64, ptr %i.anx, align 8, !tbaa !77
  store i64 %i.anz, ptr %i.any, align 8, !tbaa !184
  %i.aoa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -40
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !185
  %i.aoc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -40
  store ptr %i.aob, ptr %i.aoc, align 8, !tbaa !186
  %i.aod = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -64 ; 2 uses
  %i.aoe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -64 ; 2 uses
  %i.aof = load i64, ptr %i.aod, align 8, !tbaa !77
  store i64 %i.aof, ptr %i.aoe, align 8, !tbaa !184
  %i.aog = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.1, i64 -56
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !185
  %i.aoi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.1, i64 -56
  store ptr %i.aoh, ptr %i.aoi, align 8, !tbaa !186
  %i.aoj = add nsw i64 %.010.i.i.i.i.i.i.i948.1, -4
  %i.aok = icmp sgt i64 %.010.i.i.i.i.i.i.i948.1, 4
  br i1 %i.aok, label %.lr.ph.i.i.i.i.i.i.i947.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i947.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i947.1, %bb.bi
  store i64 %i.amn, ptr %.sroa.035.039.i, align 8, !tbaa !184
  store ptr %.sroa.4.0.copyload.i.i934.1, ptr %i.akw, align 8, !tbaa !186
  br label %bb.bj

bb.bj:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1
  %i.aol = phi i64 [ %i.amn, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1 ], [ %.pre.i.i936.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1 ]
  %.sroa.08.020.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 8 uses
  %i.aom = load i64, ptr %.sroa.08.020.i.i.ptr.2, align 8, !tbaa !77 ; 6 uses
  %i.aon = icmp ult i64 %i.aom, %i.aol
  %.sroa.4.0..sroa_idx.i.i933.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 56
  %.sroa.4.0.copyload.i.i934.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i933.2, align 8 ; 2 uses
  br i1 %i.aon, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aoo = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !77 ; 2 uses
  %i.aop = icmp ult i64 %i.aom, %i.aoo
  br i1 %i.aop, label %.lr.ph.i.i.i942.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i942.2:                                ; preds = %bb.bk, %.lr.ph.i.i.i942.2
  %i.aoq = phi i64 [ %i.aou, %.lr.ph.i.i.i942.2 ], [ %i.aoo, %bb.bk ]
  %.sroa.0.010.i.i.i943.2 = phi ptr [ %.sroa.0.0.i.i.i945.2, %.lr.ph.i.i.i942.2 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bk ] ; 3 uses
  %.sroa.05.09.i.i.i944.2 = phi ptr [ %.sroa.0.010.i.i.i943.2, %.lr.ph.i.i.i942.2 ], [ %.sroa.08.020.i.i.ptr.2, %bb.bk ] ; 3 uses
  store i64 %i.aoq, ptr %.sroa.05.09.i.i.i944.2, align 8, !tbaa !184
  %i.aor = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i944.2, i64 -8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !185
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i944.2, i64 8
  store ptr %i.aos, ptr %i.aot, align 8, !tbaa !186
  %.sroa.0.0.i.i.i945.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i943.2, i64 -16 ; 2 uses
  %i.aou = load i64, ptr %.sroa.0.0.i.i.i945.2, align 8, !tbaa !77 ; 2 uses
  %i.aov = icmp ult i64 %i.aom, %i.aou
  br i1 %i.aov, label %.lr.ph.i.i.i942.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2, !llvm.loop !8

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i942.2, %bb.bk
  %.sroa.05.0.lcssa.i.i.i935.2 = phi ptr [ %.sroa.08.020.i.i.ptr.2, %bb.bk ], [ %.sroa.0.010.i.i.i943.2, %.lr.ph.i.i.i942.2 ] ; 2 uses
  store i64 %i.aom, ptr %.sroa.05.0.lcssa.i.i.i935.2, align 8, !tbaa !184
  %i.aow = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i935.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i934.2, ptr %i.aow, align 8, !tbaa !186
  %.pre.i.i936.2 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !77
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.aox = ptrtoint ptr %.sroa.08.020.i.i.ptr.2 to i64
  %i.aoy = sub i64 %i.aox, %i.akv
  %i.aoz = ashr exact i64 %i.aoy, 4               ; 5 uses
  %i.apa = icmp sgt i64 %i.aoz, 0
  br i1 %i.apa, label %.lr.ph.i.i.i.i.i.preheader.i.i946.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i946.2:              ; preds = %bb.bl
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 64 ; 2 uses
  %xtraiter1365 = and i64 %i.aoz, 3               ; 2 uses
  %lcmp.mod1366.not = icmp eq i64 %xtraiter1365, 0
  br i1 %lcmp.mod1366.not, label %.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i947.2.prol

.lr.ph.i.i.i.i.i.i.i947.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i946.2, %.lr.ph.i.i.i.i.i.i.i947.2.prol
  %.010.i.i.i.i.i.i.i948.2.prol = phi i64 [ %i.api, %.lr.ph.i.i.i.i.i.i.i947.2.prol ], [ %i.aoz, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ]
  %.069.i.i.i.i.i.i.i949.2.prol = phi ptr [ %i.apd, %.lr.ph.i.i.i.i.i.i.i947.2.prol ], [ %i.apb, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i950.2.prol = phi ptr [ %i.apc, %.lr.ph.i.i.i.i.i.i.i947.2.prol ], [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ] ; 2 uses
  %prol.iter1367 = phi i64 [ %prol.iter1367.next, %.lr.ph.i.i.i.i.i.i.i947.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ]
  %i.apc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.2.prol, i64 -16 ; 3 uses
  %i.apd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.2.prol, i64 -16 ; 3 uses
  %i.ape = load i64, ptr %i.apc, align 8, !tbaa !77
  store i64 %i.ape, ptr %i.apd, align 8, !tbaa !184
  %i.apf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.2.prol, i64 -8
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !185
  %i.aph = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.2.prol, i64 -8
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !186
  %i.api = add nsw i64 %.010.i.i.i.i.i.i.i948.2.prol, -1 ; 2 uses
  %prol.iter1367.next = add i64 %prol.iter1367, 1 ; 2 uses
  %prol.iter1367.cmp.not = icmp eq i64 %prol.iter1367.next, %xtraiter1365
  br i1 %prol.iter1367.cmp.not, label %.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i947.2.prol, !llvm.loop !373

.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i947.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i946.2
  %.010.i.i.i.i.i.i.i948.2.unr = phi i64 [ %i.aoz, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ], [ %i.api, %.lr.ph.i.i.i.i.i.i.i947.2.prol ]
  %.069.i.i.i.i.i.i.i949.2.unr = phi ptr [ %i.apb, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ], [ %i.apd, %.lr.ph.i.i.i.i.i.i.i947.2.prol ]
  %.078.i.i.i.i.i.i.i950.2.unr = phi ptr [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i946.2 ], [ %i.apc, %.lr.ph.i.i.i.i.i.i.i947.2.prol ]
  %i.apj = icmp ult i64 %i.aoz, 4
  br i1 %i.apj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2, label %.lr.ph.i.i.i.i.i.i.i947.2

.lr.ph.i.i.i.i.i.i.i947.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i947.2
  %.010.i.i.i.i.i.i.i948.2 = phi i64 [ %i.aqi, %.lr.ph.i.i.i.i.i.i.i947.2 ], [ %.010.i.i.i.i.i.i.i948.2.unr, %.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i949.2 = phi ptr [ %i.aqd, %.lr.ph.i.i.i.i.i.i.i947.2 ], [ %.069.i.i.i.i.i.i.i949.2.unr, %.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i950.2 = phi ptr [ %i.aqc, %.lr.ph.i.i.i.i.i.i.i947.2 ], [ %.078.i.i.i.i.i.i.i950.2.unr, %.lr.ph.i.i.i.i.i.i.i947.2.prol.loopexit ] ; 8 uses
  %i.apk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.2, i64 -16
  %i.apl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i949.2, i64 -16
  %i.apm = load i64, ptr %i.apk, align 8, !tbaa !77
  store i64 %i.apm, ptr %i.apl, align 8, !tbaa !184
  %i.apn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i950.2, i64 -8
end_hunk_1
