Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-profdata?download=true
inline.NumInlined: 16600
inline.NumDeleted: 7559
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZL21traverseAllValueSitesRKN4llvm15InstrProfRecordEjRN12_GLOBAL__N_115ValueSitesStatsERNS_14raw_fd_ostreamEPNS_15InstrProfSymtabE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i, i64 16, i1 false), !tbaa.struct !515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i81, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.eu, %.pre487
  br i1 %.not.i16.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i13.i, !llvm.loop !32

.preheader.i23.i:                                 ; preds = %bb.m
  %.sroa.08.017.i24.i = getelementptr inbounds nuw i8, ptr %.pre485, i64 24 ; 2 uses
  %.not18.i25.i = icmp eq ptr %.sroa.08.017.i24.i, %.pre487
  br i1 %.not18.i25.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.preheader.i23.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre485, i64 8
  %.pre22.i27.i = load i64, ptr %.pre485, align 8, !tbaa !149
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i26.i
  %i.ew = phi i64 [ %.pre22.i27.i, %.lr.ph.i26.i ], [ %i.ft, %bb.t ]
  %.sroa.08.020.i28.i = phi ptr [ %.sroa.08.017.i24.i, %.lr.ph.i26.i ], [ %.sroa.08.0.i34.i, %bb.t ] ; 7 uses
  %.pn19.i29.i = phi ptr [ %.pre485, %.lr.ph.i26.i ], [ %.sroa.08.020.i28.i, %bb.t ] ; 4 uses
  %i.ex = load i64, ptr %.sroa.08.020.i28.i, align 8, !tbaa !149 ; 6 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 32 ; 2 uses
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i22.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.ez = ptrtoint ptr %.sroa.08.020.i28.i to i64
  %i.fa = sub i64 %i.ez, %i.cw                    ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.preheader.i.i.i.i.i.i41.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i

.lr.ph.preheader.i.i.i.i.i.i41.i:                 ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 48
  %i.fd = udiv exact i64 %i.fa, 24
  br label %.lr.ph.i.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i.i42.i:                           ; preds = %.lr.ph.i.i.i.i.i.i42.i, %.lr.ph.preheader.i.i.i.i.i.i41.i
  %.010.i.i.i.i.i.i43.i = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.fd, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.069.i.i.i.i.i.i44.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.fc, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.078.i.i.i.i.i.i45.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i42.i ], [ %.sroa.08.020.i28.i, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -24 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -24 ; 2 uses
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !149
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !396
  %i.fh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -16
  %i.fi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false), !tbaa.struct !515
  %i.fj = add nsw i64 %.010.i.i.i.i.i.i43.i, -1
  %i.fk = icmp samesign ugt i64 %.010.i.i.i.i.i.i43.i, 1
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.i42.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i, !llvm.loop !29

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i: ; preds = %.lr.ph.i.i.i.i.i.i42.i, %bb.r
  store i64 %i.ex, ptr %.pre485, align 8, !tbaa !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, i64 16, i1 false), !tbaa.struct !515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i22.i)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.fl = load i64, ptr %.pn19.i29.i, align 8, !tbaa !149 ; 2 uses
  %i.fm = icmp ult i64 %i.ex, %i.fl
  br i1 %i.fm, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i

.lr.ph.i.i36.i:                                   ; preds = %bb.s, %.lr.ph.i.i36.i
  %i.fn = phi i64 [ %i.fq, %.lr.ph.i.i36.i ], [ %i.fl, %bb.s ]
  %.sroa.0.010.i.i37.i = phi ptr [ %.sroa.0.0.i.i39.i, %.lr.ph.i.i36.i ], [ %.pn19.i29.i, %bb.s ] ; 3 uses
  %.sroa.05.09.i.i38.i = phi ptr [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ], [ %.sroa.08.020.i28.i, %bb.s ] ; 3 uses
  store i64 %i.fn, ptr %.sroa.05.09.i.i38.i, align 8, !tbaa !396
  %i.fo = getelementptr inbounds i8, ptr %.sroa.05.09.i.i38.i, i64 -16
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i38.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !515
  %.sroa.0.0.i.i39.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i37.i, i64 -24 ; 2 uses
  %i.fq = load i64, ptr %.sroa.0.0.i.i39.i, align 8, !tbaa !149 ; 2 uses
  %i.fr = icmp ult i64 %i.ex, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, !llvm.loop !30

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i: ; preds = %.lr.ph.i.i36.i, %bb.s
  %.sroa.05.0.lcssa.i.i32.i = phi ptr [ %.sroa.08.020.i28.i, %bb.s ], [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ] ; 2 uses
  store i64 %i.ex, ptr %.sroa.05.0.lcssa.i.i32.i, align 8, !tbaa !396
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i32.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, i64 16, i1 false), !tbaa.struct !515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i21.i)
  %.pre.i33.i = load i64, ptr %.pre485, align 8, !tbaa !149
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i
  %i.ft = phi i64 [ %i.ex, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i ], [ %.pre.i33.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i ]
  %.sroa.08.0.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i, i64 24 ; 2 uses
  %.not.i35.i = icmp eq ptr %.sroa.08.0.i34.i, %.pre487
  br i1 %.not.i35.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %bb.q, !llvm.loop !31

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i: ; preds = %bb.t, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i14.i, %.preheader.i23.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_.exit.i, %bb.l
  %i.fu = load ptr, ptr %i.ab, align 8, !tbaa !530 ; 17 uses
  %i.fv = load ptr, ptr %i.ac, align 8, !tbaa !530 ; 13 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i
  %i.fx = ptrtoint ptr %i.fv to i64               ; 5 uses
  %i.fy = ptrtoint ptr %i.fu to i64               ; 3 uses
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 4                 ; 5 uses
  %i.gb = add nsw i64 %i.ga, 1
  %i.gc = sdiv i64 %i.gb, 2                       ; 10 uses
  %i.gd = icmp sgt i64 %i.ga, 0                   ; 2 uses
  br i1 %i.gd, label %.lr.ph.i.i.i66, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

.lr.ph.i.i.i66:                                   ; preds = %bb.u, %select.unfold.i.i.i
  %.010.i.i.i = phi i64 [ %i.gi, %select.unfold.i.i.i ], [ %i.gc, %bb.u ] ; 5 uses
  %i.ge = shl nuw nsw i64 %.010.i.i.i, 4          ; 3 uses
  %i.gf = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ge, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #41 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i, label %select.unfold.i.i.i, label %bb.v

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i66
  %i.gg = icmp eq i64 %.010.i.i.i, 1
  %i.gh = add nuw nsw i64 %.010.i.i.i, 1
  %i.gi = lshr i64 %i.gh, 1
  br i1 %i.gg, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i, label %.lr.ph.i.i.i66, !llvm.loop !5

bb.v:                                             ; preds = %.lr.ph.i.i.i66
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false)
  %.not18.i.i.i.i67 = icmp eq i64 %.010.i.i.i, 1
  br i1 %.not18.i.i.i.i67, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.v
  %.01317.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gk = add nsw i64 %i.ge, -32                  ; 2 uses
  %i.gl = lshr exact i64 %i.gk, 4
  %i.gm = add nuw nsw i64 %i.gl, 1
  %xtraiter816 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod817.not = icmp eq i64 %xtraiter816, 0
  br i1 %lcmp.mod817.not, label %.lr.ph.i.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i.i68.prol

.lr.ph.i.i.i.i68.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i68.prol
  %.01320.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i68.prol ], [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.019.i.i.i.i.prol = phi ptr [ %i.gn, %.lr.ph.i.i.i.i68.prol ], [ %i.gf, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i68.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.prol, i64 16, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter816
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i.i68.prol, !llvm.loop !2138

.lr.ph.i.i.i.i68.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i68.prol, %.lr.ph.i.i.preheader.i.i
  %.lcssa766.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %i.gn, %.lr.ph.i.i.i.i68.prol ]
  %.01320.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i68.prol ]
  %.019.i.i.i.i.unr = phi ptr [ %i.gf, %.lr.ph.i.i.preheader.i.i ], [ %i.gn, %.lr.ph.i.i.i.i68.prol ]
  %i.go = icmp ult i64 %i.gk, 48
  br i1 %i.go, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph.i.i.i.i68.prol.loopexit, %.lr.ph.i.i.i.i68
  %.01320.i.i.i.i = phi ptr [ %.013.i.i.i.i.3, %.lr.ph.i.i.i.i68 ], [ %.01320.i.i.i.i.unr, %.lr.ph.i.i.i.i68.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i68 ], [ %.019.i.i.i.i.unr, %.lr.ph.i.i.i.i68.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i, i64 16, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %.013.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 32
  %.013.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 48
  %.013.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i69.3 = icmp eq ptr %.013.i.i.i.i.3, %i.gj
  br i1 %.not.i.i.i.i69.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i68, !llvm.loop !6

_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i68.prol.loopexit, %.lr.ph.i.i.i.i68, %bb.v
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gf, %bb.v ], [ %.lcssa766.unr, %.lr.ph.i.i.i.i68.prol.loopexit ], [ %i.gs, %.lr.ph.i.i.i.i68 ] ; 2 uses
  %i.gt = load i64, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !149
  store i64 %i.gt, ptr %i.fu, align 8, !tbaa !534
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !535
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !536
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i: ; preds = %select.unfold.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, %bb.u
  %.sroa.4.0.i65 = phi i64 [ 0, %bb.u ], [ %.010.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ 0, %select.unfold.i.i.i ] ; 3 uses
  %.sroa.10.0.i = phi ptr [ null, %bb.u ], [ %i.gf, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ null, %select.unfold.i.i.i ] ; 22 uses
  %i.gx = icmp eq i64 %i.gc, %.sroa.4.0.i65
  br i1 %i.gx, label %bb.w, label %bb.db, !prof !295

bb.w:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i
  %.idx356 = shl nsw i64 %i.gc, 4                 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.fu, i64 %.idx356 ; 16 uses
  %i.gz = ptrtoint ptr %i.gy to i64               ; 6 uses
  %i.ha = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %.idx356 ; 3 uses
  %.not38.i285 = icmp slt i64 %i.ga, 13
  br i1 %.not38.i285, label %._crit_edge.i302, label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %bb.w, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i300
  %i.hb = phi i64 [ %i.so, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i300 ], [ %i.fy, %bb.w ] ; 6 uses
  %.sroa.035.039.i288 = phi ptr [ %i.sn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i300 ], [ %i.fu, %bb.w ] ; 31 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 8 ; 6 uses
  %.pre22.i.i290 = load i64, ptr %.sroa.035.039.i288, align 8, !tbaa !149 ; 2 uses
  %.sroa.08.020.i.i291.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 16 ; 6 uses
  %i.hd = load i64, ptr %.sroa.08.020.i.i291.ptr, align 8, !tbaa !149 ; 3 uses
  %i.he = icmp ult i64 %i.hd, %.pre22.i.i290
  %.sroa.4.0..sroa_idx.i.i293 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 24
  %.sroa.4.0.copyload.i.i294 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i293, align 8
  br i1 %i.he, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i287
  %i.hf = ptrtoint ptr %.sroa.08.020.i.i291.ptr to i64
  %i.hg = sub i64 %i.hf, %i.hb
  %i.hh = ashr exact i64 %i.hg, 4                 ; 5 uses
  %i.hi = icmp sgt i64 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i.preheader.i.i334, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333

.lr.ph.i.i.i.i.i.preheader.i.i334:                ; preds = %bb.x
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 32 ; 2 uses
  %xtraiter818 = and i64 %i.hh, 3                 ; 2 uses
  %lcmp.mod819.not = icmp eq i64 %xtraiter818, 0
  br i1 %lcmp.mod819.not, label %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i335.prol

.lr.ph.i.i.i.i.i.i.i335.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i334, %.lr.ph.i.i.i.i.i.i.i335.prol
  %.010.i.i.i.i.i.i.i336.prol = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i.i.i335.prol ], [ %i.hh, %.lr.ph.i.i.i.i.i.preheader.i.i334 ]
  %.069.i.i.i.i.i.i.i337.prol = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i335.prol ], [ %i.hj, %.lr.ph.i.i.i.i.i.preheader.i.i334 ] ; 2 uses
  %.078.i.i.i.i.i.i.i338.prol = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i335.prol ], [ %.sroa.08.020.i.i291.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i334 ] ; 2 uses
  %prol.iter820 = phi i64 [ %prol.iter820.next, %.lr.ph.i.i.i.i.i.i.i335.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i334 ]
  %i.hk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.prol, i64 -16 ; 3 uses
  %i.hl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.prol, i64 -16 ; 3 uses
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !149
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !534
  %i.hn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.prol, i64 -8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !535
  %i.hp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.prol, i64 -8
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !536
  %i.hq = add nsw i64 %.010.i.i.i.i.i.i.i336.prol, -1 ; 2 uses
  %prol.iter820.next = add i64 %prol.iter820, 1   ; 2 uses
  %prol.iter820.cmp.not = icmp eq i64 %prol.iter820.next, %xtraiter818
  br i1 %prol.iter820.cmp.not, label %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i335.prol, !llvm.loop !2139

.lr.ph.i.i.i.i.i.i.i335.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i335.prol, %.lr.ph.i.i.i.i.i.preheader.i.i334
  %.010.i.i.i.i.i.i.i336.unr = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.preheader.i.i334 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i335.prol ]
  %.069.i.i.i.i.i.i.i337.unr = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.preheader.i.i334 ], [ %i.hl, %.lr.ph.i.i.i.i.i.i.i335.prol ]
  %.078.i.i.i.i.i.i.i338.unr = phi ptr [ %.sroa.08.020.i.i291.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i334 ], [ %i.hk, %.lr.ph.i.i.i.i.i.i.i335.prol ]
  %i.hr = icmp ult i64 %i.hh, 4
  br i1 %i.hr, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333, label %.lr.ph.i.i.i.i.i.i.i335

.lr.ph.i.i.i.i.i.i.i335:                          ; preds = %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i335
  %.010.i.i.i.i.i.i.i336 = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i335 ], [ %.010.i.i.i.i.i.i.i336.unr, %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i337 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i.i335 ], [ %.069.i.i.i.i.i.i.i337.unr, %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i338 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i.i335 ], [ %.078.i.i.i.i.i.i.i338.unr, %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit ] ; 8 uses
  %i.hs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -16
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !149
  store i64 %i.hu, ptr %i.ht, align 8, !tbaa !534
  %i.hv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !535
  %i.hx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -8
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !536
  %i.hy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -32
  %i.hz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -32
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !149
  store i64 %i.ia, ptr %i.hz, align 8, !tbaa !534
  %i.ib = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !535
  %i.id = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -24
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !536
  %i.ie = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -48
  %i.if = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -48
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !149
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !534
  %i.ih = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !535
  %i.ij = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -40
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !536
  %i.ik = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -64 ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -64 ; 2 uses
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !149
  store i64 %i.im, ptr %i.il, align 8, !tbaa !534
  %i.in = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338, i64 -56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !535
  %i.ip = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337, i64 -56
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !536
  %i.iq = add nsw i64 %.010.i.i.i.i.i.i.i336, -4
  %i.ir = icmp sgt i64 %.010.i.i.i.i.i.i.i336, 4
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i.i335, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333, !llvm.loop !33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333: ; preds = %.lr.ph.i.i.i.i.i.i.i335.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i335, %bb.x
  store i64 %i.hd, ptr %.sroa.035.039.i288, align 8, !tbaa !534
  store ptr %.sroa.4.0.copyload.i.i294, ptr %i.hc, align 8, !tbaa !536
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i287, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333
  %i.is = phi i64 [ %i.hd, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333 ], [ %.pre22.i.i290, %.lr.ph.i.i287 ]
  %.sroa.08.020.i.i291.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 32 ; 8 uses
  %i.it = load i64, ptr %.sroa.08.020.i.i291.ptr.1, align 8, !tbaa !149 ; 6 uses
  %i.iu = icmp ult i64 %i.it, %i.is
  %.sroa.4.0..sroa_idx.i.i293.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 40
  %.sroa.4.0.copyload.i.i294.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i293.1, align 8 ; 2 uses
  br i1 %i.iu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iv = load i64, ptr %.sroa.08.020.i.i291.ptr, align 8, !tbaa !149 ; 2 uses
  %i.iw = icmp ult i64 %i.it, %i.iv
  br i1 %i.iw, label %.lr.ph.i.i.i329.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.1

.lr.ph.i.i.i329.1:                                ; preds = %bb.z, %.lr.ph.i.i.i329.1
  %i.ix = phi i64 [ %i.jb, %.lr.ph.i.i.i329.1 ], [ %i.iv, %bb.z ]
  %.sroa.0.010.i.i.i330.1 = phi ptr [ %.sroa.0.0.i.i.i332.1, %.lr.ph.i.i.i329.1 ], [ %.sroa.08.020.i.i291.ptr, %bb.z ] ; 3 uses
  %.sroa.05.09.i.i.i331.1 = phi ptr [ %.sroa.0.010.i.i.i330.1, %.lr.ph.i.i.i329.1 ], [ %.sroa.08.020.i.i291.ptr.1, %bb.z ] ; 3 uses
  store i64 %i.ix, ptr %.sroa.05.09.i.i.i331.1, align 8, !tbaa !534
  %i.iy = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i331.1, i64 -8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !535
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i331.1, i64 8
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !536
  %.sroa.0.0.i.i.i332.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i330.1, i64 -16 ; 2 uses
  %i.jb = load i64, ptr %.sroa.0.0.i.i.i332.1, align 8, !tbaa !149 ; 2 uses
  %i.jc = icmp ult i64 %i.it, %i.jb
  br i1 %i.jc, label %.lr.ph.i.i.i329.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.1, !llvm.loop !34

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.1: ; preds = %.lr.ph.i.i.i329.1, %bb.z
  %.sroa.05.0.lcssa.i.i.i296.1 = phi ptr [ %.sroa.08.020.i.i291.ptr.1, %bb.z ], [ %.sroa.0.010.i.i.i330.1, %.lr.ph.i.i.i329.1 ] ; 2 uses
  store i64 %i.it, ptr %.sroa.05.0.lcssa.i.i.i296.1, align 8, !tbaa !534
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i296.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i294.1, ptr %i.jd, align 8, !tbaa !536
  %.pre.i.i297.1 = load i64, ptr %.sroa.035.039.i288, align 8, !tbaa !149
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.je = ptrtoint ptr %.sroa.08.020.i.i291.ptr.1 to i64
  %i.jf = sub i64 %i.je, %i.hb
  %i.jg = ashr exact i64 %i.jf, 4                 ; 5 uses
  %i.jh = icmp sgt i64 %i.jg, 0
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i.preheader.i.i334.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.1

.lr.ph.i.i.i.i.i.preheader.i.i334.1:              ; preds = %bb.aa
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 48 ; 2 uses
  %xtraiter833 = and i64 %i.jg, 3                 ; 2 uses
  %lcmp.mod834.not = icmp eq i64 %xtraiter833, 0
  br i1 %lcmp.mod834.not, label %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i335.1.prol

.lr.ph.i.i.i.i.i.i.i335.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i334.1, %.lr.ph.i.i.i.i.i.i.i335.1.prol
  %.010.i.i.i.i.i.i.i336.1.prol = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i.i.i335.1.prol ], [ %i.jg, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ]
  %.069.i.i.i.i.i.i.i337.1.prol = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i.i335.1.prol ], [ %i.ji, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i338.1.prol = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.i335.1.prol ], [ %.sroa.08.020.i.i291.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ] ; 2 uses
  %prol.iter835 = phi i64 [ %prol.iter835.next, %.lr.ph.i.i.i.i.i.i.i335.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ]
  %i.jj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1.prol, i64 -16 ; 3 uses
  %i.jk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1.prol, i64 -16 ; 3 uses
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !149
  store i64 %i.jl, ptr %i.jk, align 8, !tbaa !534
  %i.jm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1.prol, i64 -8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !535
  %i.jo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1.prol, i64 -8
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !536
  %i.jp = add nsw i64 %.010.i.i.i.i.i.i.i336.1.prol, -1 ; 2 uses
  %prol.iter835.next = add i64 %prol.iter835, 1   ; 2 uses
  %prol.iter835.cmp.not = icmp eq i64 %prol.iter835.next, %xtraiter833
  br i1 %prol.iter835.cmp.not, label %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i335.1.prol, !llvm.loop !2140

.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i335.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i334.1
  %.010.i.i.i.i.i.i.i336.1.unr = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ], [ %i.jp, %.lr.ph.i.i.i.i.i.i.i335.1.prol ]
  %.069.i.i.i.i.i.i.i337.1.unr = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i335.1.prol ]
  %.078.i.i.i.i.i.i.i338.1.unr = phi ptr [ %.sroa.08.020.i.i291.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i334.1 ], [ %i.jj, %.lr.ph.i.i.i.i.i.i.i335.1.prol ]
  %i.jq = icmp ult i64 %i.jg, 4
  br i1 %i.jq, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.1, label %.lr.ph.i.i.i.i.i.i.i335.1

.lr.ph.i.i.i.i.i.i.i335.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i335.1
  %.010.i.i.i.i.i.i.i336.1 = phi i64 [ %i.kp, %.lr.ph.i.i.i.i.i.i.i335.1 ], [ %.010.i.i.i.i.i.i.i336.1.unr, %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i337.1 = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i.i335.1 ], [ %.069.i.i.i.i.i.i.i337.1.unr, %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i338.1 = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i.i335.1 ], [ %.078.i.i.i.i.i.i.i338.1.unr, %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit ] ; 8 uses
  %i.jr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -16
  %i.js = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -16
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !149
  store i64 %i.jt, ptr %i.js, align 8, !tbaa !534
  %i.ju = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !535
  %i.jw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -8
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !536
  %i.jx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -32
  %i.jy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -32
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !149
  store i64 %i.jz, ptr %i.jy, align 8, !tbaa !534
  %i.ka = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !535
  %i.kc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -24
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !536
  %i.kd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -48
  %i.ke = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -48
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !149
  store i64 %i.kf, ptr %i.ke, align 8, !tbaa !534
  %i.kg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -40
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !535
  %i.ki = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -40
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !536
  %i.kj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -64 ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -64 ; 2 uses
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !149
  store i64 %i.kl, ptr %i.kk, align 8, !tbaa !534
  %i.km = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.1, i64 -56
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !535
  %i.ko = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.1, i64 -56
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !536
  %i.kp = add nsw i64 %.010.i.i.i.i.i.i.i336.1, -4
  %i.kq = icmp sgt i64 %.010.i.i.i.i.i.i.i336.1, 4
  br i1 %i.kq, label %.lr.ph.i.i.i.i.i.i.i335.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.1, !llvm.loop !33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.1: ; preds = %.lr.ph.i.i.i.i.i.i.i335.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i335.1, %bb.aa
  store i64 %i.it, ptr %.sroa.035.039.i288, align 8, !tbaa !534
  store ptr %.sroa.4.0.copyload.i.i294.1, ptr %i.hc, align 8, !tbaa !536
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.1
  %i.kr = phi i64 [ %i.it, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.1 ], [ %.pre.i.i297.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.1 ]
  %.sroa.08.020.i.i291.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 48 ; 8 uses
  %i.ks = load i64, ptr %.sroa.08.020.i.i291.ptr.2, align 8, !tbaa !149 ; 6 uses
  %i.kt = icmp ult i64 %i.ks, %i.kr
  %.sroa.4.0..sroa_idx.i.i293.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 56
  %.sroa.4.0.copyload.i.i294.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i293.2, align 8 ; 2 uses
  br i1 %i.kt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ku = load i64, ptr %.sroa.08.020.i.i291.ptr.1, align 8, !tbaa !149 ; 2 uses
  %i.kv = icmp ult i64 %i.ks, %i.ku
  br i1 %i.kv, label %.lr.ph.i.i.i329.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.2

.lr.ph.i.i.i329.2:                                ; preds = %bb.ac, %.lr.ph.i.i.i329.2
  %i.kw = phi i64 [ %i.la, %.lr.ph.i.i.i329.2 ], [ %i.ku, %bb.ac ]
  %.sroa.0.010.i.i.i330.2 = phi ptr [ %.sroa.0.0.i.i.i332.2, %.lr.ph.i.i.i329.2 ], [ %.sroa.08.020.i.i291.ptr.1, %bb.ac ] ; 3 uses
  %.sroa.05.09.i.i.i331.2 = phi ptr [ %.sroa.0.010.i.i.i330.2, %.lr.ph.i.i.i329.2 ], [ %.sroa.08.020.i.i291.ptr.2, %bb.ac ] ; 3 uses
  store i64 %i.kw, ptr %.sroa.05.09.i.i.i331.2, align 8, !tbaa !534
  %i.kx = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i331.2, i64 -8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !535
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i331.2, i64 8
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !536
  %.sroa.0.0.i.i.i332.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i330.2, i64 -16 ; 2 uses
  %i.la = load i64, ptr %.sroa.0.0.i.i.i332.2, align 8, !tbaa !149 ; 2 uses
  %i.lb = icmp ult i64 %i.ks, %i.la
  br i1 %i.lb, label %.lr.ph.i.i.i329.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.2, !llvm.loop !34

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i295.2: ; preds = %.lr.ph.i.i.i329.2, %bb.ac
  %.sroa.05.0.lcssa.i.i.i296.2 = phi ptr [ %.sroa.08.020.i.i291.ptr.2, %bb.ac ], [ %.sroa.0.010.i.i.i330.2, %.lr.ph.i.i.i329.2 ] ; 2 uses
  store i64 %i.ks, ptr %.sroa.05.0.lcssa.i.i.i296.2, align 8, !tbaa !534
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i296.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i294.2, ptr %i.lc, align 8, !tbaa !536
  %.pre.i.i297.2 = load i64, ptr %.sroa.035.039.i288, align 8, !tbaa !149
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ld = ptrtoint ptr %.sroa.08.020.i.i291.ptr.2 to i64
  %i.le = sub i64 %i.ld, %i.hb
  %i.lf = ashr exact i64 %i.le, 4                 ; 5 uses
  %i.lg = icmp sgt i64 %i.lf, 0
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i.preheader.i.i334.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.2

.lr.ph.i.i.i.i.i.preheader.i.i334.2:              ; preds = %bb.ad
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i288, i64 64 ; 2 uses
  %xtraiter836 = and i64 %i.lf, 3                 ; 2 uses
  %lcmp.mod837.not = icmp eq i64 %xtraiter836, 0
  br i1 %lcmp.mod837.not, label %.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i335.2.prol

.lr.ph.i.i.i.i.i.i.i335.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i334.2, %.lr.ph.i.i.i.i.i.i.i335.2.prol
  %.010.i.i.i.i.i.i.i336.2.prol = phi i64 [ %i.lo, %.lr.ph.i.i.i.i.i.i.i335.2.prol ], [ %i.lf, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ]
  %.069.i.i.i.i.i.i.i337.2.prol = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i.i335.2.prol ], [ %i.lh, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i338.2.prol = phi ptr [ %i.li, %.lr.ph.i.i.i.i.i.i.i335.2.prol ], [ %.sroa.08.020.i.i291.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ] ; 2 uses
  %prol.iter838 = phi i64 [ %prol.iter838.next, %.lr.ph.i.i.i.i.i.i.i335.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ]
  %i.li = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.2.prol, i64 -16 ; 3 uses
  %i.lj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.2.prol, i64 -16 ; 3 uses
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !149
  store i64 %i.lk, ptr %i.lj, align 8, !tbaa !534
  %i.ll = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.2.prol, i64 -8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !535
  %i.ln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.2.prol, i64 -8
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !536
  %i.lo = add nsw i64 %.010.i.i.i.i.i.i.i336.2.prol, -1 ; 2 uses
  %prol.iter838.next = add i64 %prol.iter838, 1   ; 2 uses
  %prol.iter838.cmp.not = icmp eq i64 %prol.iter838.next, %xtraiter836
  br i1 %prol.iter838.cmp.not, label %.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i335.2.prol, !llvm.loop !2141

.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i335.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i334.2
  %.010.i.i.i.i.i.i.i336.2.unr = phi i64 [ %i.lf, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ], [ %i.lo, %.lr.ph.i.i.i.i.i.i.i335.2.prol ]
  %.069.i.i.i.i.i.i.i337.2.unr = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ], [ %i.lj, %.lr.ph.i.i.i.i.i.i.i335.2.prol ]
  %.078.i.i.i.i.i.i.i338.2.unr = phi ptr [ %.sroa.08.020.i.i291.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i334.2 ], [ %i.li, %.lr.ph.i.i.i.i.i.i.i335.2.prol ]
  %i.lp = icmp ult i64 %i.lf, 4
  br i1 %i.lp, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i333.2, label %.lr.ph.i.i.i.i.i.i.i335.2

.lr.ph.i.i.i.i.i.i.i335.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i335.2
  %.010.i.i.i.i.i.i.i336.2 = phi i64 [ %i.mo, %.lr.ph.i.i.i.i.i.i.i335.2 ], [ %.010.i.i.i.i.i.i.i336.2.unr, %.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i337.2 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i.i335.2 ], [ %.069.i.i.i.i.i.i.i337.2.unr, %.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i338.2 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i.i.i335.2 ], [ %.078.i.i.i.i.i.i.i338.2.unr, %.lr.ph.i.i.i.i.i.i.i335.2.prol.loopexit ] ; 8 uses
  %i.lq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.2, i64 -16
  %i.lr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i337.2, i64 -16
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !149
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !534
  %i.lt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i338.2, i64 -8
end_hunk_0
begin_hunk_1_@_ZL21traverseAllValueSitesRKN4llvm15InstrProfRecordEjRN12_GLOBAL__N_115ValueSitesStatsERNS_14raw_fd_ostreamEPNS_15InstrProfSymtabE:bb.a
  %i.afw = getelementptr inbounds nuw i8, ptr %.01628.i42.i200, i64 16
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i40.i198
  %i.afx = getelementptr inbounds nuw i8, ptr %.029.i41.i199, i64 16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink34.i44.i202 = phi i64 [ %i.aft, %bb.bc ], [ %i.afu, %bb.bd ]
  %.01628.pn.i45.i203 = phi ptr [ %.01628.i42.i200, %bb.bc ], [ %.029.i41.i199, %bb.bd ]
  %.117.i46.i204 = phi ptr [ %i.afw, %bb.bc ], [ %.01628.i42.i200, %bb.bd ] ; 3 uses
  %.1.i47.i205 = phi ptr [ %.029.i41.i199, %bb.bc ], [ %i.afx, %bb.bd ] ; 3 uses
  %.sink.in.i48.i206 = getelementptr inbounds nuw i8, ptr %.01628.pn.i45.i203, i64 8
  %.sink.i49.i207 = load ptr, ptr %.sink.in.i48.i206, align 8, !tbaa !535
  store i64 %.sink34.i44.i202, ptr %.sroa.0.027.i43.i201, align 8, !tbaa !534
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i201, i64 8
  store ptr %.sink.i49.i207, ptr %i.afy, align 8, !tbaa !536
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i201, i64 16 ; 2 uses
  %i.aga = icmp ne ptr %.1.i47.i205, %i.afp
  %i.agb = icmp ne ptr %.117.i46.i204, %i.ha
  %i.agc = select i1 %i.aga, i1 %i.agb, i1 false
  br i1 %i.agc, label %.lr.ph.i40.i198, label %._crit_edge.i25.i183, !llvm.loop !40

._crit_edge.i25.i183:                             ; preds = %bb.be, %._crit_edge.i177
  %.sroa.0.0.lcssa.i26.i184 = phi ptr [ %.sroa.022.0.lcssa.i179, %._crit_edge.i177 ], [ %i.afz, %bb.be ] ; 5 uses
  %.016.lcssa.i27.i185 = phi ptr [ %i.afp, %._crit_edge.i177 ], [ %.117.i46.i204, %bb.be ] ; 3 uses
  %.0.lcssa.i28.i186 = phi ptr [ %.0.lcssa.i178, %._crit_edge.i177 ], [ %.1.i47.i205, %bb.be ] ; 3 uses
  %i.agd = ptrtoint ptr %i.afp to i64
  %i.age = ptrtoint ptr %.0.lcssa.i28.i186 to i64
  %i.agf = sub i64 %i.agd, %i.age
  %i.agg = ashr exact i64 %i.agf, 4               ; 5 uses
  %i.agh = icmp sgt i64 %i.agg, 0
  br i1 %i.agh, label %.lr.ph.i.i.i.i.i.i36.i194.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i187

.lr.ph.i.i.i.i.i.i36.i194.preheader:              ; preds = %._crit_edge.i25.i183
  %xtraiter869 = and i64 %i.agg, 3                ; 2 uses
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod870.not, label %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i194.prol

.lr.ph.i.i.i.i.i.i36.i194.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i36.i194.preheader, %.lr.ph.i.i.i.i.i.i36.i194.prol
  %.012.i.i.i.i.i.i37.i195.prol = phi i64 [ %i.ago, %.lr.ph.i.i.i.i.i.i36.i194.prol ], [ %i.agg, %.lr.ph.i.i.i.i.i.i36.i194.preheader ]
  %.0811.i.i.i.i.i.i38.i196.prol = phi ptr [ %i.agn, %.lr.ph.i.i.i.i.i.i36.i194.prol ], [ %.sroa.0.0.lcssa.i26.i184, %.lr.ph.i.i.i.i.i.i36.i194.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i39.i197.prol = phi ptr [ %i.agm, %.lr.ph.i.i.i.i.i.i36.i194.prol ], [ %.0.lcssa.i28.i186, %.lr.ph.i.i.i.i.i.i36.i194.preheader ] ; 3 uses
  %prol.iter871 = phi i64 [ %prol.iter871.next, %.lr.ph.i.i.i.i.i.i36.i194.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.i194.preheader ]
  %i.agi = load i64, ptr %.0910.i.i.i.i.i.i39.i197.prol, align 8, !tbaa !149
  store i64 %i.agi, ptr %.0811.i.i.i.i.i.i38.i196.prol, align 8, !tbaa !534
  %i.agj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197.prol, i64 8
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !535
  %i.agl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196.prol, i64 8
  store ptr %i.agk, ptr %i.agl, align 8, !tbaa !536
  %i.agm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197.prol, i64 16 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196.prol, i64 16 ; 3 uses
  %i.ago = add nsw i64 %.012.i.i.i.i.i.i37.i195.prol, -1 ; 2 uses
  %prol.iter871.next = add i64 %prol.iter871, 1   ; 2 uses
  %prol.iter871.cmp.not = icmp eq i64 %prol.iter871.next, %xtraiter869
  br i1 %prol.iter871.cmp.not, label %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i194.prol, !llvm.loop !2152

.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i36.i194.prol, %.lr.ph.i.i.i.i.i.i36.i194.preheader
  %.012.i.i.i.i.i.i37.i195.unr = phi i64 [ %i.agg, %.lr.ph.i.i.i.i.i.i36.i194.preheader ], [ %i.ago, %.lr.ph.i.i.i.i.i.i36.i194.prol ]
  %.0811.i.i.i.i.i.i38.i196.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i184, %.lr.ph.i.i.i.i.i.i36.i194.preheader ], [ %i.agn, %.lr.ph.i.i.i.i.i.i36.i194.prol ]
  %.0910.i.i.i.i.i.i39.i197.unr = phi ptr [ %.0.lcssa.i28.i186, %.lr.ph.i.i.i.i.i.i36.i194.preheader ], [ %i.agm, %.lr.ph.i.i.i.i.i.i36.i194.prol ]
  %.lcssa783.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.i194.preheader ], [ %i.agn, %.lr.ph.i.i.i.i.i.i36.i194.prol ]
  %i.agp = icmp ult i64 %i.agg, 4
  br i1 %i.agp, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i187, label %.lr.ph.i.i.i.i.i.i36.i194

.lr.ph.i.i.i.i.i.i36.i194:                        ; preds = %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i194
  %.012.i.i.i.i.i.i37.i195 = phi i64 [ %i.aho, %.lr.ph.i.i.i.i.i.i36.i194 ], [ %.012.i.i.i.i.i.i37.i195.unr, %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38.i196 = phi ptr [ %i.ahn, %.lr.ph.i.i.i.i.i.i36.i194 ], [ %.0811.i.i.i.i.i.i38.i196.unr, %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i39.i197 = phi ptr [ %i.ahm, %.lr.ph.i.i.i.i.i.i36.i194 ], [ %.0910.i.i.i.i.i.i39.i197.unr, %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit ] ; 9 uses
  %i.agq = load i64, ptr %.0910.i.i.i.i.i.i39.i197, align 8, !tbaa !149
  store i64 %i.agq, ptr %.0811.i.i.i.i.i.i38.i196, align 8, !tbaa !534
  %i.agr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 8
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !535
  %i.agt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 8
  store ptr %i.ags, ptr %i.agt, align 8, !tbaa !536
  %i.agu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 16
  %i.agv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 16
  %i.agw = load i64, ptr %i.agu, align 8, !tbaa !149
  store i64 %i.agw, ptr %i.agv, align 8, !tbaa !534
  %i.agx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 24
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !535
  %i.agz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 24
  store ptr %i.agy, ptr %i.agz, align 8, !tbaa !536
  %i.aha = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 32
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 32
  %i.ahc = load i64, ptr %i.aha, align 8, !tbaa !149
  store i64 %i.ahc, ptr %i.ahb, align 8, !tbaa !534
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 40
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !535
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 40
  store ptr %i.ahe, ptr %i.ahf, align 8, !tbaa !536
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 48
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 48
  %i.ahi = load i64, ptr %i.ahg, align 8, !tbaa !149
  store i64 %i.ahi, ptr %i.ahh, align 8, !tbaa !534
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 56
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !535
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 56
  store ptr %i.ahk, ptr %i.ahl, align 8, !tbaa !536
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i197, i64 64
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i196, i64 64 ; 2 uses
  %i.aho = add nsw i64 %.012.i.i.i.i.i.i37.i195, -4
  %i.ahp = icmp sgt i64 %.012.i.i.i.i.i.i37.i195, 4
  br i1 %i.ahp, label %.lr.ph.i.i.i.i.i.i36.i194, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i187, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i187: ; preds = %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i194, %._crit_edge.i25.i183
  %.08.lcssa.i.i.i.i.i.i30.i188 = phi ptr [ %.sroa.0.0.lcssa.i26.i184, %._crit_edge.i25.i183 ], [ %.lcssa783.unr, %.lr.ph.i.i.i.i.i.i36.i194.prol.loopexit ], [ %i.ahn, %.lr.ph.i.i.i.i.i.i36.i194 ]
  %i.ahq = ptrtoint ptr %.016.lcssa.i27.i185 to i64
  %i.ahr = sub i64 %i.ut, %i.ahq
  %i.ahs = ashr exact i64 %i.ahr, 4               ; 5 uses
  %i.aht = icmp sgt i64 %i.ahs, 0
  br i1 %i.aht, label %.lr.ph.i.i.i.i.i19.i32.preheader.i189, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit216

.lr.ph.i.i.i.i.i19.i32.preheader.i189:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i187
  %i.ahu = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i188 to i64
  %i.ahv = ptrtoint ptr %.sroa.0.0.lcssa.i26.i184 to i64
  %i.ahw = sub i64 %i.ahu, %i.ahv
  %i.ahx = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i184, i64 %i.ahw ; 2 uses
  %xtraiter872 = and i64 %i.ahs, 3                ; 2 uses
  %lcmp.mod873.not = icmp eq i64 %xtraiter872, 0
  br i1 %lcmp.mod873.not, label %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i190.prol

.lr.ph.i.i.i.i.i19.i32.i190.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i189, %.lr.ph.i.i.i.i.i19.i32.i190.prol
  %.012.i.i.i.i.i20.i33.i191.prol = phi i64 [ %i.aie, %.lr.ph.i.i.i.i.i19.i32.i190.prol ], [ %i.ahs, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ]
  %.0811.i.i.i.i.i21.i34.i192.prol = phi ptr [ %i.aid, %.lr.ph.i.i.i.i.i19.i32.i190.prol ], [ %i.ahx, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i193.prol = phi ptr [ %i.aic, %.lr.ph.i.i.i.i.i19.i32.i190.prol ], [ %.016.lcssa.i27.i185, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ] ; 3 uses
  %prol.iter874 = phi i64 [ %prol.iter874.next, %.lr.ph.i.i.i.i.i19.i32.i190.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ]
  %i.ahy = load i64, ptr %.0910.i.i.i.i.i22.i35.i193.prol, align 8, !tbaa !149
  store i64 %i.ahy, ptr %.0811.i.i.i.i.i21.i34.i192.prol, align 8, !tbaa !534
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193.prol, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !535
  %i.aib = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192.prol, i64 8
  store ptr %i.aia, ptr %i.aib, align 8, !tbaa !536
  %i.aic = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193.prol, i64 16 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192.prol, i64 16 ; 2 uses
  %i.aie = add nsw i64 %.012.i.i.i.i.i20.i33.i191.prol, -1 ; 2 uses
  %prol.iter874.next = add i64 %prol.iter874, 1   ; 2 uses
  %prol.iter874.cmp.not = icmp eq i64 %prol.iter874.next, %xtraiter872
  br i1 %prol.iter874.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i190.prol, !llvm.loop !2153

.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i190.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i189
  %.012.i.i.i.i.i20.i33.i191.unr = phi i64 [ %i.ahs, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ], [ %i.aie, %.lr.ph.i.i.i.i.i19.i32.i190.prol ]
  %.0811.i.i.i.i.i21.i34.i192.unr = phi ptr [ %i.ahx, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ], [ %i.aid, %.lr.ph.i.i.i.i.i19.i32.i190.prol ]
  %.0910.i.i.i.i.i22.i35.i193.unr = phi ptr [ %.016.lcssa.i27.i185, %.lr.ph.i.i.i.i.i19.i32.preheader.i189 ], [ %i.aic, %.lr.ph.i.i.i.i.i19.i32.i190.prol ]
  %i.aif = icmp ult i64 %i.ahs, 4
  br i1 %i.aif, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit216, label %.lr.ph.i.i.i.i.i19.i32.i190

.lr.ph.i.i.i.i.i19.i32.i190:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i190
  %.012.i.i.i.i.i20.i33.i191 = phi i64 [ %i.aje, %.lr.ph.i.i.i.i.i19.i32.i190 ], [ %.012.i.i.i.i.i20.i33.i191.unr, %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i192 = phi ptr [ %i.ajd, %.lr.ph.i.i.i.i.i19.i32.i190 ], [ %.0811.i.i.i.i.i21.i34.i192.unr, %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i193 = phi ptr [ %i.ajc, %.lr.ph.i.i.i.i.i19.i32.i190 ], [ %.0910.i.i.i.i.i22.i35.i193.unr, %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit ] ; 9 uses
  %i.aig = load i64, ptr %.0910.i.i.i.i.i22.i35.i193, align 8, !tbaa !149
  store i64 %i.aig, ptr %.0811.i.i.i.i.i21.i34.i192, align 8, !tbaa !534
  %i.aih = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !535
  %i.aij = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 8
  store ptr %i.aii, ptr %i.aij, align 8, !tbaa !536
  %i.aik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 16
  %i.ail = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 16
  %i.aim = load i64, ptr %i.aik, align 8, !tbaa !149
  store i64 %i.aim, ptr %i.ail, align 8, !tbaa !534
  %i.ain = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 24
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !535
  %i.aip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 24
  store ptr %i.aio, ptr %i.aip, align 8, !tbaa !536
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 32
  %i.air = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 32
  %i.ais = load i64, ptr %i.aiq, align 8, !tbaa !149
  store i64 %i.ais, ptr %i.air, align 8, !tbaa !534
  %i.ait = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 40
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !535
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 40
  store ptr %i.aiu, ptr %i.aiv, align 8, !tbaa !536
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 48
  %i.aix = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 48
  %i.aiy = load i64, ptr %i.aiw, align 8, !tbaa !149
  store i64 %i.aiy, ptr %i.aix, align 8, !tbaa !534
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 56
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !535
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 56
  store ptr %i.aja, ptr %i.ajb, align 8, !tbaa !536
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i193, i64 64
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i192, i64 64
  %i.aje = add nsw i64 %.012.i.i.i.i.i20.i33.i191, -4
  %i.ajf = icmp sgt i64 %.012.i.i.i.i.i20.i33.i191, 4
  br i1 %i.ajf, label %.lr.ph.i.i.i.i.i19.i32.i190, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit216, !llvm.loop !38

_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit216: ; preds = %.lr.ph.i.i.i.i.i19.i32.i190.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i190, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i187
  %i.ajg = icmp slt i64 %i.abt, %i.gc
  br i1 %i.ajg, label %.lr.ph.i.i93, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, !llvm.loop !42

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit216, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit339
  %i.ajh = sub i64 %i.fx, %i.gz                   ; 2 uses
  %i.aji = ashr exact i64 %i.ajh, 4               ; 13 uses
  %i.ajj = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %i.ajh ; 3 uses
  %.not38.i = icmp slt i64 %i.aji, 7
  br i1 %.not38.i, label %._crit_edge.i139, label %.lr.ph.i.i130

.lr.ph.i.i130:                                    ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i
  %i.ajk = phi i64 [ %i.aux, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.gz, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.sroa.035.039.i = phi ptr [ %i.auw, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.gy, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 31 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 8 ; 6 uses
  %.pre22.i.i131 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !149 ; 2 uses
  %.sroa.08.020.i.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 16 ; 6 uses
  %i.ajm = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !149 ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, %.pre22.i.i131
  %.sroa.4.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  %.sroa.4.0.copyload.i.i134 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i133, align 8
  br i1 %i.ajn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i.i130
  %i.ajo = ptrtoint ptr %.sroa.08.020.i.i.ptr to i64
  %i.ajp = sub i64 %i.ajo, %i.ajk
  %i.ajq = ashr exact i64 %i.ajp, 4               ; 5 uses
  %i.ajr = icmp sgt i64 %i.ajq, 0
  br i1 %i.ajr, label %.lr.ph.i.i.i.i.i.preheader.i.i146, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i146:                ; preds = %bb.bf
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 2 uses
  %xtraiter875 = and i64 %i.ajq, 3                ; 2 uses
  %lcmp.mod876.not = icmp eq i64 %xtraiter875, 0
  br i1 %lcmp.mod876.not, label %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i147.prol

.lr.ph.i.i.i.i.i.i.i147.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i146, %.lr.ph.i.i.i.i.i.i.i147.prol
  %.010.i.i.i.i.i.i.i148.prol = phi i64 [ %i.ajz, %.lr.ph.i.i.i.i.i.i.i147.prol ], [ %i.ajq, %.lr.ph.i.i.i.i.i.preheader.i.i146 ]
  %.069.i.i.i.i.i.i.i149.prol = phi ptr [ %i.aju, %.lr.ph.i.i.i.i.i.i.i147.prol ], [ %i.ajs, %.lr.ph.i.i.i.i.i.preheader.i.i146 ] ; 2 uses
  %.078.i.i.i.i.i.i.i150.prol = phi ptr [ %i.ajt, %.lr.ph.i.i.i.i.i.i.i147.prol ], [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i146 ] ; 2 uses
  %prol.iter877 = phi i64 [ %prol.iter877.next, %.lr.ph.i.i.i.i.i.i.i147.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i146 ]
  %i.ajt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.prol, i64 -16 ; 3 uses
  %i.aju = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.prol, i64 -16 ; 3 uses
  %i.ajv = load i64, ptr %i.ajt, align 8, !tbaa !149
  store i64 %i.ajv, ptr %i.aju, align 8, !tbaa !534
  %i.ajw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.prol, i64 -8
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !535
  %i.ajy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.prol, i64 -8
  store ptr %i.ajx, ptr %i.ajy, align 8, !tbaa !536
  %i.ajz = add nsw i64 %.010.i.i.i.i.i.i.i148.prol, -1 ; 2 uses
  %prol.iter877.next = add i64 %prol.iter877, 1   ; 2 uses
  %prol.iter877.cmp.not = icmp eq i64 %prol.iter877.next, %xtraiter875
  br i1 %prol.iter877.cmp.not, label %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i147.prol, !llvm.loop !2154

.lr.ph.i.i.i.i.i.i.i147.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i147.prol, %.lr.ph.i.i.i.i.i.preheader.i.i146
  %.010.i.i.i.i.i.i.i148.unr = phi i64 [ %i.ajq, %.lr.ph.i.i.i.i.i.preheader.i.i146 ], [ %i.ajz, %.lr.ph.i.i.i.i.i.i.i147.prol ]
  %.069.i.i.i.i.i.i.i149.unr = phi ptr [ %i.ajs, %.lr.ph.i.i.i.i.i.preheader.i.i146 ], [ %i.aju, %.lr.ph.i.i.i.i.i.i.i147.prol ]
  %.078.i.i.i.i.i.i.i150.unr = phi ptr [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i146 ], [ %i.ajt, %.lr.ph.i.i.i.i.i.i.i147.prol ]
  %i.aka = icmp ult i64 %i.ajq, 4
  br i1 %i.aka, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i.i147:                          ; preds = %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i147
  %.010.i.i.i.i.i.i.i148 = phi i64 [ %i.akz, %.lr.ph.i.i.i.i.i.i.i147 ], [ %.010.i.i.i.i.i.i.i148.unr, %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i149 = phi ptr [ %i.aku, %.lr.ph.i.i.i.i.i.i.i147 ], [ %.069.i.i.i.i.i.i.i149.unr, %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i150 = phi ptr [ %i.akt, %.lr.ph.i.i.i.i.i.i.i147 ], [ %.078.i.i.i.i.i.i.i150.unr, %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit ] ; 8 uses
  %i.akb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -16
  %i.akc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -16
  %i.akd = load i64, ptr %i.akb, align 8, !tbaa !149
  store i64 %i.akd, ptr %i.akc, align 8, !tbaa !534
  %i.ake = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -8
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !535
  %i.akg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -8
  store ptr %i.akf, ptr %i.akg, align 8, !tbaa !536
  %i.akh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -32
  %i.aki = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -32
  %i.akj = load i64, ptr %i.akh, align 8, !tbaa !149
  store i64 %i.akj, ptr %i.aki, align 8, !tbaa !534
  %i.akk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -24
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !535
  %i.akm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -24
  store ptr %i.akl, ptr %i.akm, align 8, !tbaa !536
  %i.akn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -48
  %i.ako = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -48
  %i.akp = load i64, ptr %i.akn, align 8, !tbaa !149
  store i64 %i.akp, ptr %i.ako, align 8, !tbaa !534
  %i.akq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -40
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !535
  %i.aks = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -40
  store ptr %i.akr, ptr %i.aks, align 8, !tbaa !536
  %i.akt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -64 ; 2 uses
  %i.aku = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -64 ; 2 uses
  %i.akv = load i64, ptr %i.akt, align 8, !tbaa !149
  store i64 %i.akv, ptr %i.aku, align 8, !tbaa !534
  %i.akw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150, i64 -56
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !535
  %i.aky = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149, i64 -56
  store ptr %i.akx, ptr %i.aky, align 8, !tbaa !536
  %i.akz = add nsw i64 %.010.i.i.i.i.i.i.i148, -4
  %i.ala = icmp sgt i64 %.010.i.i.i.i.i.i.i148, 4
  br i1 %i.ala, label %.lr.ph.i.i.i.i.i.i.i147, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, !llvm.loop !33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i147.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i147, %bb.bf
  store i64 %i.ajm, ptr %.sroa.035.039.i, align 8, !tbaa !534
  store ptr %.sroa.4.0.copyload.i.i134, ptr %i.ajl, align 8, !tbaa !536
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i130, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.alb = phi i64 [ %i.ajm, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i ], [ %.pre22.i.i131, %.lr.ph.i.i130 ]
  %.sroa.08.020.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 8 uses
  %i.alc = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !149 ; 6 uses
  %i.ald = icmp ult i64 %i.alc, %i.alb
  %.sroa.4.0..sroa_idx.i.i133.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 40
  %.sroa.4.0.copyload.i.i134.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i133.1, align 8 ; 2 uses
  br i1 %i.ald, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ale = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !149 ; 2 uses
  %i.alf = icmp ult i64 %i.alc, %i.ale
  br i1 %i.alf, label %.lr.ph.i.i.i142.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i142.1:                                ; preds = %bb.bh, %.lr.ph.i.i.i142.1
  %i.alg = phi i64 [ %i.alk, %.lr.ph.i.i.i142.1 ], [ %i.ale, %bb.bh ]
  %.sroa.0.010.i.i.i143.1 = phi ptr [ %.sroa.0.0.i.i.i145.1, %.lr.ph.i.i.i142.1 ], [ %.sroa.08.020.i.i.ptr, %bb.bh ] ; 3 uses
  %.sroa.05.09.i.i.i144.1 = phi ptr [ %.sroa.0.010.i.i.i143.1, %.lr.ph.i.i.i142.1 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bh ] ; 3 uses
  store i64 %i.alg, ptr %.sroa.05.09.i.i.i144.1, align 8, !tbaa !534
  %i.alh = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i144.1, i64 -8
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !535
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i144.1, i64 8
  store ptr %i.ali, ptr %i.alj, align 8, !tbaa !536
  %.sroa.0.0.i.i.i145.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i143.1, i64 -16 ; 2 uses
  %i.alk = load i64, ptr %.sroa.0.0.i.i.i145.1, align 8, !tbaa !149 ; 2 uses
  %i.all = icmp ult i64 %i.alc, %i.alk
  br i1 %i.all, label %.lr.ph.i.i.i142.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1, !llvm.loop !34

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i142.1, %bb.bh
  %.sroa.05.0.lcssa.i.i.i135.1 = phi ptr [ %.sroa.08.020.i.i.ptr.1, %bb.bh ], [ %.sroa.0.010.i.i.i143.1, %.lr.ph.i.i.i142.1 ] ; 2 uses
  store i64 %i.alc, ptr %.sroa.05.0.lcssa.i.i.i135.1, align 8, !tbaa !534
  %i.alm = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i135.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i134.1, ptr %i.alm, align 8, !tbaa !536
  %.pre.i.i136.1 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !149
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.aln = ptrtoint ptr %.sroa.08.020.i.i.ptr.1 to i64
  %i.alo = sub i64 %i.aln, %i.ajk
  %i.alp = ashr exact i64 %i.alo, 4               ; 5 uses
  %i.alq = icmp sgt i64 %i.alp, 0
  br i1 %i.alq, label %.lr.ph.i.i.i.i.i.preheader.i.i146.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i146.1:              ; preds = %bb.bi
  %i.alr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 2 uses
  %xtraiter890 = and i64 %i.alp, 3                ; 2 uses
  %lcmp.mod891.not = icmp eq i64 %xtraiter890, 0
  br i1 %lcmp.mod891.not, label %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i147.1.prol

.lr.ph.i.i.i.i.i.i.i147.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i146.1, %.lr.ph.i.i.i.i.i.i.i147.1.prol
  %.010.i.i.i.i.i.i.i148.1.prol = phi i64 [ %i.aly, %.lr.ph.i.i.i.i.i.i.i147.1.prol ], [ %i.alp, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ]
  %.069.i.i.i.i.i.i.i149.1.prol = phi ptr [ %i.alt, %.lr.ph.i.i.i.i.i.i.i147.1.prol ], [ %i.alr, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i150.1.prol = phi ptr [ %i.als, %.lr.ph.i.i.i.i.i.i.i147.1.prol ], [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ] ; 2 uses
  %prol.iter892 = phi i64 [ %prol.iter892.next, %.lr.ph.i.i.i.i.i.i.i147.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ]
  %i.als = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1.prol, i64 -16 ; 3 uses
  %i.alt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1.prol, i64 -16 ; 3 uses
  %i.alu = load i64, ptr %i.als, align 8, !tbaa !149
  store i64 %i.alu, ptr %i.alt, align 8, !tbaa !534
  %i.alv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1.prol, i64 -8
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !535
  %i.alx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1.prol, i64 -8
  store ptr %i.alw, ptr %i.alx, align 8, !tbaa !536
  %i.aly = add nsw i64 %.010.i.i.i.i.i.i.i148.1.prol, -1 ; 2 uses
  %prol.iter892.next = add i64 %prol.iter892, 1   ; 2 uses
  %prol.iter892.cmp.not = icmp eq i64 %prol.iter892.next, %xtraiter890
  br i1 %prol.iter892.cmp.not, label %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i147.1.prol, !llvm.loop !2155

.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i147.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i146.1
  %.010.i.i.i.i.i.i.i148.1.unr = phi i64 [ %i.alp, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ], [ %i.aly, %.lr.ph.i.i.i.i.i.i.i147.1.prol ]
  %.069.i.i.i.i.i.i.i149.1.unr = phi ptr [ %i.alr, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ], [ %i.alt, %.lr.ph.i.i.i.i.i.i.i147.1.prol ]
  %.078.i.i.i.i.i.i.i150.1.unr = phi ptr [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i146.1 ], [ %i.als, %.lr.ph.i.i.i.i.i.i.i147.1.prol ]
  %i.alz = icmp ult i64 %i.alp, 4
  br i1 %i.alz, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, label %.lr.ph.i.i.i.i.i.i.i147.1

.lr.ph.i.i.i.i.i.i.i147.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i147.1
  %.010.i.i.i.i.i.i.i148.1 = phi i64 [ %i.amy, %.lr.ph.i.i.i.i.i.i.i147.1 ], [ %.010.i.i.i.i.i.i.i148.1.unr, %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i149.1 = phi ptr [ %i.amt, %.lr.ph.i.i.i.i.i.i.i147.1 ], [ %.069.i.i.i.i.i.i.i149.1.unr, %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i150.1 = phi ptr [ %i.ams, %.lr.ph.i.i.i.i.i.i.i147.1 ], [ %.078.i.i.i.i.i.i.i150.1.unr, %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit ] ; 8 uses
  %i.ama = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -16
  %i.amb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -16
  %i.amc = load i64, ptr %i.ama, align 8, !tbaa !149
  store i64 %i.amc, ptr %i.amb, align 8, !tbaa !534
  %i.amd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -8
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !535
  %i.amf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -8
  store ptr %i.ame, ptr %i.amf, align 8, !tbaa !536
  %i.amg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -32
  %i.amh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -32
  %i.ami = load i64, ptr %i.amg, align 8, !tbaa !149
  store i64 %i.ami, ptr %i.amh, align 8, !tbaa !534
  %i.amj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -24
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !535
  %i.aml = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -24
  store ptr %i.amk, ptr %i.aml, align 8, !tbaa !536
  %i.amm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -48
  %i.amn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -48
  %i.amo = load i64, ptr %i.amm, align 8, !tbaa !149
  store i64 %i.amo, ptr %i.amn, align 8, !tbaa !534
  %i.amp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -40
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !535
  %i.amr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -40
  store ptr %i.amq, ptr %i.amr, align 8, !tbaa !536
  %i.ams = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -64 ; 2 uses
  %i.amt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -64 ; 2 uses
  %i.amu = load i64, ptr %i.ams, align 8, !tbaa !149
  store i64 %i.amu, ptr %i.amt, align 8, !tbaa !534
  %i.amv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.1, i64 -56
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !535
  %i.amx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.1, i64 -56
  store ptr %i.amw, ptr %i.amx, align 8, !tbaa !536
  %i.amy = add nsw i64 %.010.i.i.i.i.i.i.i148.1, -4
  %i.amz = icmp sgt i64 %.010.i.i.i.i.i.i.i148.1, 4
  br i1 %i.amz, label %.lr.ph.i.i.i.i.i.i.i147.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, !llvm.loop !33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i147.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i147.1, %bb.bi
  store i64 %i.alc, ptr %.sroa.035.039.i, align 8, !tbaa !534
  store ptr %.sroa.4.0.copyload.i.i134.1, ptr %i.ajl, align 8, !tbaa !536
  br label %bb.bj

bb.bj:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1
  %i.ana = phi i64 [ %i.alc, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1 ], [ %.pre.i.i136.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1 ]
  %.sroa.08.020.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 8 uses
  %i.anb = load i64, ptr %.sroa.08.020.i.i.ptr.2, align 8, !tbaa !149 ; 6 uses
  %i.anc = icmp ult i64 %i.anb, %i.ana
  %.sroa.4.0..sroa_idx.i.i133.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 56
  %.sroa.4.0.copyload.i.i134.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i133.2, align 8 ; 2 uses
  br i1 %i.anc, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.and = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !149 ; 2 uses
  %i.ane = icmp ult i64 %i.anb, %i.and
  br i1 %i.ane, label %.lr.ph.i.i.i142.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i142.2:                                ; preds = %bb.bk, %.lr.ph.i.i.i142.2
  %i.anf = phi i64 [ %i.anj, %.lr.ph.i.i.i142.2 ], [ %i.and, %bb.bk ]
  %.sroa.0.010.i.i.i143.2 = phi ptr [ %.sroa.0.0.i.i.i145.2, %.lr.ph.i.i.i142.2 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bk ] ; 3 uses
  %.sroa.05.09.i.i.i144.2 = phi ptr [ %.sroa.0.010.i.i.i143.2, %.lr.ph.i.i.i142.2 ], [ %.sroa.08.020.i.i.ptr.2, %bb.bk ] ; 3 uses
  store i64 %i.anf, ptr %.sroa.05.09.i.i.i144.2, align 8, !tbaa !534
  %i.ang = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i144.2, i64 -8
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !535
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i144.2, i64 8
  store ptr %i.anh, ptr %i.ani, align 8, !tbaa !536
  %.sroa.0.0.i.i.i145.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i143.2, i64 -16 ; 2 uses
  %i.anj = load i64, ptr %.sroa.0.0.i.i.i145.2, align 8, !tbaa !149 ; 2 uses
  %i.ank = icmp ult i64 %i.anb, %i.anj
  br i1 %i.ank, label %.lr.ph.i.i.i142.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2, !llvm.loop !34

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i142.2, %bb.bk
  %.sroa.05.0.lcssa.i.i.i135.2 = phi ptr [ %.sroa.08.020.i.i.ptr.2, %bb.bk ], [ %.sroa.0.010.i.i.i143.2, %.lr.ph.i.i.i142.2 ] ; 2 uses
  store i64 %i.anb, ptr %.sroa.05.0.lcssa.i.i.i135.2, align 8, !tbaa !534
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i135.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i134.2, ptr %i.anl, align 8, !tbaa !536
  %.pre.i.i136.2 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !149
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.anm = ptrtoint ptr %.sroa.08.020.i.i.ptr.2 to i64
  %i.ann = sub i64 %i.anm, %i.ajk
  %i.ano = ashr exact i64 %i.ann, 4               ; 5 uses
  %i.anp = icmp sgt i64 %i.ano, 0
  br i1 %i.anp, label %.lr.ph.i.i.i.i.i.preheader.i.i146.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i146.2:              ; preds = %bb.bl
  %i.anq = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 64 ; 2 uses
  %xtraiter893 = and i64 %i.ano, 3                ; 2 uses
  %lcmp.mod894.not = icmp eq i64 %xtraiter893, 0
  br i1 %lcmp.mod894.not, label %.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i147.2.prol

.lr.ph.i.i.i.i.i.i.i147.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i146.2, %.lr.ph.i.i.i.i.i.i.i147.2.prol
  %.010.i.i.i.i.i.i.i148.2.prol = phi i64 [ %i.anx, %.lr.ph.i.i.i.i.i.i.i147.2.prol ], [ %i.ano, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ]
  %.069.i.i.i.i.i.i.i149.2.prol = phi ptr [ %i.ans, %.lr.ph.i.i.i.i.i.i.i147.2.prol ], [ %i.anq, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i150.2.prol = phi ptr [ %i.anr, %.lr.ph.i.i.i.i.i.i.i147.2.prol ], [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ] ; 2 uses
  %prol.iter895 = phi i64 [ %prol.iter895.next, %.lr.ph.i.i.i.i.i.i.i147.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ]
  %i.anr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.2.prol, i64 -16 ; 3 uses
  %i.ans = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.2.prol, i64 -16 ; 3 uses
  %i.ant = load i64, ptr %i.anr, align 8, !tbaa !149
  store i64 %i.ant, ptr %i.ans, align 8, !tbaa !534
  %i.anu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.2.prol, i64 -8
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !535
  %i.anw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.2.prol, i64 -8
  store ptr %i.anv, ptr %i.anw, align 8, !tbaa !536
  %i.anx = add nsw i64 %.010.i.i.i.i.i.i.i148.2.prol, -1 ; 2 uses
  %prol.iter895.next = add i64 %prol.iter895, 1   ; 2 uses
  %prol.iter895.cmp.not = icmp eq i64 %prol.iter895.next, %xtraiter893
  br i1 %prol.iter895.cmp.not, label %.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i147.2.prol, !llvm.loop !2156

.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i147.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i146.2
  %.010.i.i.i.i.i.i.i148.2.unr = phi i64 [ %i.ano, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ], [ %i.anx, %.lr.ph.i.i.i.i.i.i.i147.2.prol ]
  %.069.i.i.i.i.i.i.i149.2.unr = phi ptr [ %i.anq, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ], [ %i.ans, %.lr.ph.i.i.i.i.i.i.i147.2.prol ]
  %.078.i.i.i.i.i.i.i150.2.unr = phi ptr [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i146.2 ], [ %i.anr, %.lr.ph.i.i.i.i.i.i.i147.2.prol ]
  %i.any = icmp ult i64 %i.ano, 4
  br i1 %i.any, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2, label %.lr.ph.i.i.i.i.i.i.i147.2

.lr.ph.i.i.i.i.i.i.i147.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i147.2
  %.010.i.i.i.i.i.i.i148.2 = phi i64 [ %i.aox, %.lr.ph.i.i.i.i.i.i.i147.2 ], [ %.010.i.i.i.i.i.i.i148.2.unr, %.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i149.2 = phi ptr [ %i.aos, %.lr.ph.i.i.i.i.i.i.i147.2 ], [ %.069.i.i.i.i.i.i.i149.2.unr, %.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i150.2 = phi ptr [ %i.aor, %.lr.ph.i.i.i.i.i.i.i147.2 ], [ %.078.i.i.i.i.i.i.i150.2.unr, %.lr.ph.i.i.i.i.i.i.i147.2.prol.loopexit ] ; 8 uses
  %i.anz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.2, i64 -16
  %i.aoa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i149.2, i64 -16
  %i.aob = load i64, ptr %i.anz, align 8, !tbaa !149
  store i64 %i.aob, ptr %i.aoa, align 8, !tbaa !534
  %i.aoc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i150.2, i64 -8
end_hunk_1
