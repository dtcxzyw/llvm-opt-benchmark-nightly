Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_holistic?download=true
inline.NumInlined: 37468
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorIfffEENS1_16QuantileIndirectIfEEEEEEEvT_SB_SB_T0_:bb.a
  %i.ff = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 %.0.val.i22.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.017.lcssa.i)
  br i1 %i.ff, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %.lr.ph.i21.i
  %i.fg = load i64, ptr %.021.i.i, align 8, !tbaa !223
  %i.fh = ptrtoint ptr %.021.i.i to i64
  %i.fi = sub i64 %i.fh, %.lcssa31.i              ; 3 uses
  %i.fj = ashr exact i64 %i.fi, 3                 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, 1
  br i1 %i.fk, label %bb.ac, label %bb.ad, !prof !373

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 16
  %i.fm = sub nsw i64 0, %i.fj
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fn, ptr noundef nonnull align 8 dereferenceable(1) %.017.lcssa.i, i64 %i.fi, i1 false)
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fo = icmp eq i64 %i.fi, 8
  br i1 %i.fo, label %bb.ae, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fp = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  %i.fq = load i64, ptr %.017.lcssa.i, align 8, !tbaa !223
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !223
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.ae, %bb.ad, %bb.ac
  store i64 %i.fg, ptr %.017.lcssa.i, align 8, !tbaa !223
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.fr = load i64, ptr %.021.i.i, align 8, !tbaa !223 ; 3 uses
  %i.fs = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 %i.fr, ptr noundef nonnull readonly align 8 dereferenceable(8) %.pn20.i.i)
  br i1 %i.fs, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.013.i.i23.i = phi ptr [ %.0.i.i24.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.af ] ; 4 uses
  %.0912.i.i.i = phi ptr [ %.013.i.i23.i, %.lr.ph.i.i.i ], [ %.021.i.i, %bb.af ]
  %i.ft = load i64, ptr %.013.i.i23.i, align 8, !tbaa !223
  store i64 %i.ft, ptr %.0912.i.i.i, align 8, !tbaa !223
  %.0.i.i24.i = getelementptr inbounds i8, ptr %.013.i.i23.i, i64 -8 ; 2 uses
  %i.fu = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 %i.fr, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0.i.i24.i)
  br i1 %i.fu, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i, !llvm.loop !3468

_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.af
  %.09.lcssa.i.i.i = phi ptr [ %.021.i.i, %bb.af ], [ %.013.i.i23.i, %.lr.ph.i.i.i ]
  store i64 %i.fr, ptr %.09.lcssa.i.i.i, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.016.lcssa.i
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_T0_.exit.i, label %.lr.ph.i21.i, !llvm.loop !3469

_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_T0_.exit.i: ; preds = %bb.ag, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit

_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit: ; preds = %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i, %_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = load ptr, ptr %0, align 8, !tbaa !3471, !nonnull !375, !align !412 ; 2 uses
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !575
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val6 = load ptr, ptr %i.d, align 8, !tbaa !576
  %.val6.val = load ptr, ptr %.val6, align 8, !tbaa !578 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val6.val, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !601
  %i.g = icmp ult i64 %.0.val, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val6.val, i64 104 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ule i64 %i.i, %.0.val
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %.val6.val, align 8, !tbaa !602, !nonnull !375, !align !412
  %i.m = getelementptr inbounds nuw i8, ptr %.val6.val, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.val, i64 152 ; 3 uses
  %i.o = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 noundef %.0.val, ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %.val6.val, i64 224
  store ptr %i.r, ptr %i.s, align 8, !tbaa !603
  %i.t = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.val, i64 232
  store ptr %i.u, ptr %i.v, align 8, !tbaa !604
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !605
  br label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit

_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.x = sub i64 %.0.val, %i.w
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.val, i64 224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !603
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !527
  %.val.i = load ptr, ptr %.val5, align 8, !tbaa !607
  %.val.val.i = load float, ptr %.val.i, align 4, !tbaa !527
  %i.ad = fsub float %i.ac, %.val.val.i
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ad)
  store float %i.ae, ptr %i.a, align 4, !tbaa !527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3472, !nonnull !375, !align !412 ; 2 uses
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !575
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val3 = load ptr, ptr %i.ah, align 8, !tbaa !576
  %.val4 = load i64, ptr %1, align 8, !tbaa !223  ; 4 uses
  %.val3.val = load ptr, ptr %.val3, align 8, !tbaa !578 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3.val, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !601
  %i.ak = icmp ult i64 %.val4, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.val3.val, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ule i64 %i.am, %.val4
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit
  %i.ap = load ptr, ptr %.val3.val, align 8, !tbaa !602, !nonnull !375, !align !412
  %i.aq = getelementptr inbounds nuw i8, ptr %.val3.val, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3.val, i64 152 ; 3 uses
  %i.as = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ap, i64 noundef %.val4, ptr noundef nonnull align 8 dereferenceable(144) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ar) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !239
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3.val, i64 224
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !603
  %i.ax = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.val3.val, i64 232
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !604
  %.pre.i.i.i.i8 = load i64, ptr %i.al, align 8, !tbaa !605
  br label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11

_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11: ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit, %bb.c
  %i.ba = phi i64 [ %.pre.i.i.i.i8, %bb.c ], [ %i.am, %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit ]
  %i.bb = sub i64 %.val4, %i.ba
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3.val, i64 224
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !603
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !527
  %.val.i9 = load ptr, ptr %.val, align 8, !tbaa !607
  %.val.val.i10 = load float, ptr %.val.i9, align 4, !tbaa !527
  %i.bh = fsub float %i.bg, %.val.val.i10
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  store float %i.bi, ptr %i.b, align 4, !tbaa !527
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !3473, !range !374, !noundef !375
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11
  %i.bm = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11
  %i.bn = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bo = phi i1 [ %i.bm, %bb.d ], [ %i.bn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %i.bo
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !661
  %i.c = load ptr, ptr %1, align 8, !tbaa !634    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !683
  %i.i = load ptr, ptr %0, align 8, !tbaa !634    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !219

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 3 uses
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !634      ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPv(ptr noundef nonnull %3) #34
  br label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !634
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !683
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !661
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 16
  br i1 %i.x, label %bb.h, label %bb.i, !prof !373

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 16
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !349
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.w, 16
  br i1 %i.z, label %bb.l, label %bb.m, !prof !373

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.w, 16
  br i1 %i.aa, label %bb.n, label %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !349
  br label %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = load ptr, ptr %1, align 8, !tbaa !634
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !661 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !634
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !661 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !349
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3474

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !634
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !661
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16QuantileSortTreeC2ERNS_18AggregateInputDataERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %4 = alloca %"struct.duckdb::ColumnDataScanState", align 8 ; 17 uses
  %5 = alloca %"class.duckdb::DataChunk", align 8 ; 13 uses
  %6 = alloca %"class.duckdb::vector.15", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %10 = alloca %"class.duckdb::BoundOrderModifier", align 8 ; 12 uses
  %11 = alloca %"struct.duckdb::BoundOrderByNode", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::unique_ptr.106", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::vector.15", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::unique_ptr.596", align 8 ; 7 uses
  %15 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  store ptr null, ptr %0, align 8, !tbaa !3490
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !662  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3491, !nonnull !375, !align !412 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !630
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 1, ptr %i.g, align 8, !tbaa !631
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !249
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !288  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !289  ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %.noexc88, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !219

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31
          to label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge unwind label %bb.ah

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !370 ; 2 uses
  %.pre163 = load ptr, ptr %i.m, align 8, !tbaa !370
  %.pre165 = ptrtoint ptr %.pre163 to i64
  %.pre166 = ptrtoint ptr %.pre to i64
  br label %.noexc88

.noexc88:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge, %bb.b
  %.pre-phi167 = phi i64 [ %.pre166, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge ], [ %i.q, %bb.b ]
  %.pre-phi = phi i64 [ %.pre165, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge ], [ %i.p, %bb.b ]
  %i.u = phi ptr [ %.pre, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge ], [ %i.o, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.t, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i..noexc88_crit_edge ], [ null, %bb.b ] ; 6 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !289
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !288
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !350
  %i.z = sub i64 %.pre-phi, %.pre-phi167          ; 4 uses
  %i.aa = icmp sgt i64 %i.z, 8
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !373

bb.d:                                             ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.u, i64 %i.z, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc88
  %i.ab = icmp eq i64 %i.z, 8
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !223
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !223
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !288
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_6vectorImLb1ESaImEEENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %6, i8 noundef zeroext 1)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %6, align 8, !tbaa !289   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.j unwind label %bb.ah

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
end_hunk_0
