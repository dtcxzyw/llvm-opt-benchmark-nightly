Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Profile?download=true
inline.NumInlined: 1974
inline.NumDeleted: 990
begin_hunk_0_@_ZN4llvm4xray16profileFromTraceERKNS0_5TraceE:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = add nuw nsw i64 %i.ae, 31
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  br label %bb.aa

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit
  %.sroa.0123.0145 = phi ptr [ %i.n, %.lr.ph ], [ %i.lv, %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !588
  %i.bd = zext i32 %i.bc to i64                   ; 4 uses
  %i.be = load ptr, ptr %6, align 8, !tbaa !115, !noalias !589 ; 3 uses
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !116, !noalias !589 ; 3 uses
  %i.bg = load i32, ptr %i.t, align 4, !tbaa !117, !noalias !589 ; 4 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = add i32 %i.bg, -1                       ; 2 uses
  %i.bj = mul i64 %i.bd, -4658895280553007687     ; 2 uses
  %i.bk = lshr i64 %i.bj, 31
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bi, %i.bm                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bo ; 2 uses
  %i.bq = lshr i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !62
  %i.bt = and i32 %i.bn, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i.i.i45, label %.loopexit.i.i, !prof !63

.lr.ph.i.i.i45:                                   ; preds = %bb.d, %bb.e
  %i.bw = phi ptr [ %i.cc, %bb.e ], [ %i.bp, %bb.d ] ; 2 uses
  %.05.i.i.i = phi i32 [ %i.ca, %bb.e ], [ %i.bn, %bb.d ]
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !73
  %i.by = icmp eq i64 %i.bx, %i.bd
  br i1 %i.by, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit, label %bb.e, !prof !65

bb.e:                                             ; preds = %.lr.ph.i.i.i45
  %i.bz = add nuw i32 %.05.i.i.i, 1
  %i.ca = and i32 %i.bz, %i.bi                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.cb ; 2 uses
  %i.cd = lshr i64 %i.cb, 5
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !62
  %i.cg = and i32 %i.ca, 31
  %i.ch = lshr i32 %i.cf, %i.cg
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %.lr.ph.i.i.i45, label %.loopexit.i.i, !prof !64, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.bp, %bb.d ], [ null, %bb.c ], [ %i.cc, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !118
  %.val6.i.i.i = load i32, ptr %i.u, align 8, !tbaa !119 ; 2 uses
  %i.cj = shl i32 %.val6.i.i.i, 2
  %i.ck = add i32 %i.cj, 4
  %i.cl = mul i32 %i.bg, 3
  %.not.i.i.i = icmp ult i32 %i.ck, %i.cl
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit.i.i, label %bb.f, !prof !65

bb.f:                                             ; preds = %.loopexit.i.i
  %i.cm = shl i32 %i.bg, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %i.cm)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E15LookupBucketForImEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %6, i64 %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  %.val4.i.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !116
  %.val7.i.pre.i.i = load ptr, ptr %6, align 8, !tbaa !115
  %.val.i.i.i.i.pre = load i32, ptr %i.u, align 8, !tbaa !119
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit.i.i: ; preds = %bb.f, %.loopexit.i.i
  %.val.i.i.i.i = phi i32 [ %.val.i.i.i.i.pre, %bb.f ], [ %.val6.i.i.i, %.loopexit.i.i ]
  %.val7.i.i.i = phi ptr [ %.val7.i.pre.i.i, %bb.f ], [ %i.be, %.loopexit.i.i ]
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.f ], [ %i.bf, %.loopexit.i.i ]
  %i.cn = phi ptr [ %.pre.i.i.i, %bb.f ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 4 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %.val7.i.i.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 5                 ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 31
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = lshr i64 %i.cr, 5
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.cy = or i32 %i.cu, %i.cx
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !62
  %i.cz = add i32 %.val.i.i.i.i, 1
  store i32 %i.cz, ptr %i.u, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bd, ptr %i.cn, align 8, !tbaa !73
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit: ; preds = %.lr.ph.i.i.i45, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.cn, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit.i.i ], [ %i.bw, %.lr.ph.i.i.i45 ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !590
  switch i32 %i.dd, label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit [
    i32 0, label %bb.g
    i32 3, label %bb.g
    i32 1, label %bb.m
    i32 2, label %bb.m
  ]

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !591 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !592 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !593 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.df, ptr %i.dj, align 8, !tbaa !73
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %i.dh, ptr %.sroa.5115.0..sroa_idx, align 8, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !593
  br label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit

bb.i:                                             ; preds = %bb.g
  %.val.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !123 ; 5 uses
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 5 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775792
  br i1 %i.dq, label %bb.j, label %_ZNKSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.dr = ashr exact i64 %i.dp, 4                 ; 3 uses
  %i.ds = icmp eq ptr %i.dj, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.ds, i64 1, i64 %i.dr
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dr ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dr
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 576460752303423487)
  %i.dw = select i1 %i.du, i64 576460752303423487, i64 %i.dv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dx = shl nuw nsw i64 %i.dw, 4
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #15 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dp ; 3 uses
  store i64 %i.df, ptr %i.dz, align 8, !tbaa !73
  %.sroa.5115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %i.dh, ptr %.sroa.5115.0..sroa_idx116, align 8, !tbaa !62
  %i.ea = icmp sgt i64 %i.dp, 0
  br i1 %i.ea, label %bb.k, label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr align 8 %.val.i.i.i, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i
  %i.ec = load ptr, ptr %i.dk, align 8, !tbaa !122
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ee) #19
  br label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i
  store ptr %i.dy, ptr %i.db, align 8, !tbaa !123
  store ptr %i.eb, ptr %i.di, align 8, !tbaa !593
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ef, ptr %i.dk, align 8, !tbaa !122
  br label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit
  %i.eg = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.m
  %.val39 = load ptr, ptr %i.db, align 8, !tbaa !124
  %.val40 = load ptr, ptr %i.eg, align 8, !tbaa !124 ; 3 uses
  %i.ej = icmp eq ptr %.val39, %.val40
  br i1 %i.ej, label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds i8, ptr %.val40, i64 -16
  %.sroa.015.0.copyload = load i64, ptr %i.ek, align 8, !tbaa !73
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.val40, i64 -8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !62
  %i.el = load i64, ptr %i.eh, align 8, !tbaa !591
  %i.em = sub nsw i64 %.sroa.015.0.copyload, %i.el
  %10 = call noundef i64 @llvm.abs.i64(i64 %i.em, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.v, ptr %8, align 8, !tbaa !30
  store i32 0, ptr %i.w, align 8, !tbaa !31
  store i32 16, ptr %i.x, align 4, !tbaa !32
  %.val41 = load ptr, ptr %i.db, align 8, !tbaa !124 ; 2 uses
  %.val42 = load ptr, ptr %i.eg, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val42, %.val41
  br i1 %.not4.i.i, label %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIiLj16EEEEaSERKi.exit.i.i
  %.sroa.01.0.i = phi ptr [ %i.en, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIiLj16EEEEaSERKi.exit.i.i ], [ %.val42, %bb.o ] ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !62 ; 2 uses
  %i.eq = load i32, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  %i.er = load i32, ptr %i.x, align 4, !tbaa !32
  %.not.i.i.i.i46 = icmp ult i32 %i.eq, %i.er
  br i1 %.not.i.i.i.i46, label %bb.q, label %bb.p, !prof !65

bb.p:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.ep)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIiLj16EEEEaSERKi.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.es = zext i32 %i.eq to i64
  %i.et = load ptr, ptr %8, align 8, !tbaa !30
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.es
  store i32 %i.ep, ptr %i.eu, align 1
  %i.ev = load i32, ptr %i.w, align 8, !tbaa !31
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.w, align 8, !tbaa !31
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIiLj16EEEEaSERKi.exit.i.i

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIiLj16EEEEaSERKi.exit.i.i: ; preds = %bb.q, %bb.p
  %.not.i.i47 = icmp eq ptr %i.en, %.val41
  br i1 %.not.i.i47, label %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !544

_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIiLj16EEEEaSERKi.exit.i.i
  %.pre = load ptr, ptr %8, align 8, !tbaa !30
  %.pre166 = load i32, ptr %i.w, align 8, !tbaa !31
  %i.ex = zext i32 %.pre166 to i64
  br label %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit

_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit: ; preds = %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit.loopexit, %bb.o
  %i.ey = phi i64 [ %i.ex, %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit.loopexit ], [ 0, %bb.o ]
  %i.ez = phi ptr [ %.pre, %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit.loopexit ], [ %i.v, %bb.o ]
  %i.fa = call noundef i32 @_ZN4llvm4xray7Profile10internPathENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr %i.ez, i64 %i.ey) ; 5 uses
  %i.fb = load i32, ptr %i.bb, align 8, !tbaa !588
  %i.fc = zext i32 %i.fb to i64                   ; 5 uses
  %i.fd = load ptr, ptr %7, align 8, !tbaa !109, !noalias !594 ; 3 uses
  %i.fe = load ptr, ptr %i.y, align 8, !tbaa !110, !noalias !594 ; 3 uses
  %i.ff = load i32, ptr %i.z, align 4, !tbaa !111, !noalias !594 ; 4 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit
  %i.fh = add i32 %i.ff, -1                       ; 2 uses
  %i.fi = mul i64 %i.fc, -4658895280553007687     ; 2 uses
  %i.fj = lshr i64 %i.fi, 31
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = and i32 %i.fh, %i.fl                    ; 3 uses
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fp = lshr i64 %i.fn, 5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !62
  %i.fs = and i32 %i.fm, 31
  %i.ft = lshr i32 %i.fr, %i.fs
  %i.fu = trunc i32 %i.ft to i1
  br i1 %i.fu, label %.lr.ph.i.i74, label %.loopexit.i, !prof !63

.lr.ph.i.i74:                                     ; preds = %bb.r, %bb.s
  %i.fv = phi ptr [ %i.gb, %bb.s ], [ %i.fo, %bb.r ] ; 3 uses
  %.024.i.i = phi i32 [ %i.fz, %bb.s ], [ %i.fm, %bb.r ]
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !73
  %i.fx = icmp eq i64 %i.fw, %i.fc
  br i1 %i.fx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit.loopexit, label %bb.s, !prof !65

bb.s:                                             ; preds = %.lr.ph.i.i74
  %i.fy = add nuw i32 %.024.i.i, 1
  %i.fz = and i32 %i.fy, %i.fh                    ; 3 uses
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fd, i64 %i.ga ; 2 uses
  %i.gc = lshr i64 %i.ga, 5
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !62
  %i.gf = and i32 %i.fz, 31
  %i.gg = lshr i32 %i.ge, %i.gf
  %i.gh = trunc i32 %i.gg to i1
  br i1 %i.gh, label %.lr.ph.i.i74, label %.loopexit.i, !prof !64, !llvm.loop !549

.loopexit.i:                                      ; preds = %bb.s, %bb.r, %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.fo, %bb.r ], [ null, %_ZN4llvm9transformINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110StackEntryESt6vectorIS6_SaIS6_EEEEEEESt20back_insert_iteratorINS_11SmallVectorIiLj16EEEESt7_Mem_fnIMS6_iEEET0_OT_SL_T1_.exit ], [ %i.gb, %bb.s ]
  %i.gi = load i32, ptr %i.aa, align 8, !tbaa !112
  %i.gj = shl i32 %i.gi, 2
  %i.gk = add i32 %i.gj, 4
  %i.gl = mul i32 %i.ff, 3
  %.not.i.i73 = icmp ult i32 %i.gk, %i.gl
  br i1 %.not.i.i73, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i, label %bb.t, !prof !65

bb.t:                                             ; preds = %.loopexit.i
  %i.gm = shl i32 %i.ff, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef %i.gm)
  %i.gn = load ptr, ptr %7, align 8, !tbaa !109, !noalias !595 ; 5 uses
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !110, !noalias !595 ; 5 uses
  %i.gp = load i32, ptr %i.z, align 4, !tbaa !111, !noalias !595 ; 2 uses
  %i.gq = icmp ne i32 %i.gp, 0
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add i32 %i.gp, -1                       ; 2 uses
  %i.gs = mul i64 %i.fc, -4658895280553007687     ; 2 uses
  %i.gt = lshr i64 %i.gs, 31
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = and i32 %i.gr, %i.gv                    ; 3 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.gx ; 2 uses
  %i.gz = lshr i64 %i.gx, 5
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !62
  %i.hc = and i32 %i.gw, 31
  %i.hd = lshr i32 %i.hb, %i.hc
  %i.he = trunc i32 %i.hd to i1
  br i1 %i.he, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i, !prof !63

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %i.hf = phi ptr [ %i.hl, %bb.u ], [ %i.gy, %bb.t ] ; 2 uses
  %.024.i = phi i32 [ %i.hj, %bb.u ], [ %i.gw, %bb.t ]
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !73
  %i.hh = icmp eq i64 %i.hg, %i.fc
  br i1 %i.hh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i, label %bb.u, !prof !65

bb.u:                                             ; preds = %.lr.ph.i
  %i.hi = add nuw i32 %.024.i, 1
  %i.hj = and i32 %i.hi, %i.gr                    ; 3 uses
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.hk ; 2 uses
  %i.hm = lshr i64 %i.hk, 5
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !62
  %i.hp = and i32 %i.hj, 31
  %i.hq = lshr i32 %i.ho, %i.hp
  %i.hr = trunc i32 %i.hq to i1
  br i1 %i.hr, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i, !prof !64, !llvm.loop !549

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i: ; preds = %bb.u, %.lr.ph.i, %bb.t, %.loopexit.i
  %i.hs = phi ptr [ %i.fd, %.loopexit.i ], [ %i.gn, %bb.t ], [ %i.gn, %.lr.ph.i ], [ %i.gn, %bb.u ]
  %i.ht = phi ptr [ %i.fe, %.loopexit.i ], [ %i.go, %bb.t ], [ %i.go, %.lr.ph.i ], [ %i.go, %bb.u ]
  %i.hu = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.gy, %bb.t ], [ %i.hl, %bb.u ], [ %i.hf, %.lr.ph.i ] ; 4 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 5                 ; 2 uses
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = and i32 %i.hz, 31
  %i.ib = shl nuw i32 1, %i.ia
  %i.ic = lshr i64 %i.hy, 5
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !62
  %i.if = or i32 %i.ib, %i.ie
  store i32 %i.if, ptr %i.id, align 4, !tbaa !62
  %i.ig = load i32, ptr %i.aa, align 8, !tbaa !112
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.aa, align 8, !tbaa !112
  store i64 %i.fc, ptr %i.hu, align 8, !tbaa !73
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.pre167 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !102, !noalias !596
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i
  %i.ij = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i ], [ %.pre167, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit.loopexit ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.hu, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit.i ], [ %i.fv, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit.loopexit ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !103, !noalias !596 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 28 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !104, !noalias !596 ; 4 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %.loopexit.i76, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit
  %i.iq = add i32 %i.io, -1                       ; 2 uses
  %i.ir = mul i32 %i.fa, 37
  %.024.i.i75 = and i32 %i.iq, %i.ir              ; 3 uses
  %i.is = zext i32 %.024.i.i75 to i64             ; 2 uses
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.is ; 2 uses
  %i.iu = lshr i64 %i.is, 5
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !62
  %i.ix = and i32 %.024.i.i75, 31
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = trunc i32 %i.iy to i1
  br i1 %i.iz, label %.lr.ph.i.i85, label %.loopexit.i76, !prof !63

bb.w:                                             ; preds = %.lr.ph.i.i85
  %i.ja = add nuw i32 %.025.i.i, 1
  %.0.i.i = and i32 %i.ja, %i.iq                  ; 3 uses
  %i.jb = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.jb ; 2 uses
  %i.jd = lshr i64 %i.jb, 5
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !62
  %i.jg = and i32 %.0.i.i, 31
  %i.jh = lshr i32 %i.jf, %i.jg
  %i.ji = trunc i32 %i.jh to i1
  br i1 %i.ji, label %.lr.ph.i.i85, label %.loopexit.i76, !prof !64, !llvm.loop !4

.lr.ph.i.i85:                                     ; preds = %bb.v, %bb.w
  %i.jj = phi ptr [ %i.jc, %bb.w ], [ %i.it, %bb.v ] ; 3 uses
  %.025.i.i = phi i32 [ %.0.i.i, %bb.w ], [ %.024.i.i75, %bb.v ]
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !62
  %i.jl = icmp eq i32 %i.fa, %i.jk
  br i1 %i.jl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, label %bb.w, !prof !65

.loopexit.i76:                                    ; preds = %bb.w, %bb.v, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit
  %.lcssa30.sink.i.ph.i = phi ptr [ %i.it, %bb.v ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketImJEEESt4pairIPSC_bEOT_DpOT0_.exit ], [ %i.jc, %bb.w ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !105
  %i.jo = shl i32 %i.jn, 2
  %i.jp = add i32 %i.jo, 4
  %i.jq = mul i32 %i.io, 3
  %.not.i.i77 = icmp ult i32 %i.jp, %i.jq
  br i1 %.not.i.i77, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, label %bb.x, !prof !65

bb.x:                                             ; preds = %.loopexit.i76
  %i.jr = shl i32 %i.io, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ik, i32 noundef %i.jr)
  %i.js = load ptr, ptr %i.ik, align 8, !tbaa !102, !noalias !597 ; 5 uses
  %i.jt = load ptr, ptr %i.il, align 8, !tbaa !103, !noalias !597 ; 5 uses
  %i.ju = load i32, ptr %i.in, align 4, !tbaa !104, !noalias !597 ; 2 uses
  %i.jv = icmp ne i32 %i.ju, 0
  call void @llvm.assume(i1 %i.jv)
  %i.jw = add i32 %i.ju, -1                       ; 2 uses
  %i.jx = mul i32 %i.fa, 37
  %.024.i86 = and i32 %i.jw, %i.jx                ; 3 uses
  %i.jy = zext i32 %.024.i86 to i64               ; 2 uses
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %i.jy ; 2 uses
  %i.ka = lshr i64 %i.jy, 5
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !62
  %i.kd = and i32 %.024.i86, 31
  %i.ke = lshr i32 %i.kc, %i.kd
  %i.kf = trunc i32 %i.ke to i1
  br i1 %i.kf, label %.lr.ph.i88, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, !prof !63

bb.y:                                             ; preds = %.lr.ph.i88
  %i.kg = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.kg, %i.jw                    ; 3 uses
  %i.kh = zext i32 %.0.i to i64                   ; 2 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %i.kh ; 2 uses
  %i.kj = lshr i64 %i.kh, 5
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !62
  %i.km = and i32 %.0.i, 31
  %i.kn = lshr i32 %i.kl, %i.km
  %i.ko = trunc i32 %i.kn to i1
  br i1 %i.ko, label %.lr.ph.i88, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, !prof !64, !llvm.loop !4

.lr.ph.i88:                                       ; preds = %bb.x, %bb.y
  %i.kp = phi ptr [ %i.ki, %bb.y ], [ %i.jz, %bb.x ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.y ], [ %.024.i86, %bb.x ]
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !62
  %i.kr = icmp eq i32 %i.fa, %i.kq
  br i1 %i.kr, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, label %bb.y, !prof !65

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i: ; preds = %.lr.ph.i88, %bb.y, %bb.x, %.loopexit.i76
  %i.ks = phi ptr [ %i.ij, %.loopexit.i76 ], [ %i.js, %bb.x ], [ %i.js, %bb.y ], [ %i.js, %.lr.ph.i88 ]
  %i.kt = phi ptr [ %i.im, %.loopexit.i76 ], [ %i.jt, %bb.x ], [ %i.jt, %bb.y ], [ %i.jt, %.lr.ph.i88 ]
  %i.ku = phi ptr [ %.lcssa30.sink.i.ph.i, %.loopexit.i76 ], [ %i.jz, %bb.x ], [ %i.kp, %.lr.ph.i88 ], [ %i.ki, %bb.y ] ; 4 uses
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 24                ; 2 uses
  %i.kz = trunc i64 %i.ky to i32
  %i.la = and i32 %i.kz, 31
  %i.lb = shl nuw i32 1, %i.la
  %i.lc = lshr i64 %i.ky, 5
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.lc ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !62
  %i.lf = or i32 %i.lb, %i.le
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !62
  %i.lg = load i32, ptr %i.jm, align 8, !tbaa !105
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.jm, align 8, !tbaa !105
  store i32 %i.fa, ptr %i.ku, align 4, !tbaa !62
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.li, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i85
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %.pre169 = load i64, ptr %.phi.trans.insert168, align 8, !tbaa !598
  %i.lj = add i64 %.pre169, 1
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i
  %i.lk = phi i64 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i ], [ %i.lj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit ]
  %.sroa.0.0.i81 = phi ptr [ %i.ku, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i ], [ %i.jj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 8
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !598
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 16 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !599
  %i.lo = add i64 %i.ln, %10
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !599
  %i.lp = load ptr, ptr %i.eg, align 8, !tbaa !593
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 -16
  store ptr %i.lq, ptr %i.eg, align 8, !tbaa !593
  %i.lr = load i32, ptr %i.ei, align 8, !tbaa !592
  %i.ls = icmp eq i32 %.sroa.4.0.copyload, %i.lr
  %i.lt = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.v
  br i1 %i.lu, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit
  call void @free(ptr noundef %i.lt) #16
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br i1 %i.ls, label %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit, label %bb.n

_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.n, %_ZNSt6vectorIN12_GLOBAL__N_110StackEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.h, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_EixEOm.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0123.0145, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.lv, %i.p
  br i1 %.not, label %._crit_edge, label %bb.c

bb.aa:                                            ; preds = %.lr.ph148, %_ZN4llvm16DenseMapIteratorImNS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.at, %.lr.ph148 ], [ %i.oo, %_ZN4llvm16DenseMapIteratorImNS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0101.0147 = getelementptr i8, ptr %.pre170, i64 %.pn ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0101.0147, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.lx = load i64, ptr %.sroa.0101.0147, align 8, !tbaa !73
  store i64 %i.lx, ptr %9, align 8, !tbaa !55
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !102, !noalias !600 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0101.0147, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !103, !noalias !600 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0101.0147, i64 28
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !104, !noalias !600 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0101.0147, i64 24
  %i.me = load i32, ptr %i.md, align 8, !tbaa !105, !noalias !600
  %i.mf = icmp eq i32 %i.me, 0
  %i.mg = zext i32 %i.mc to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %i.mg ; 6 uses
  %.not.i.not.i.i49 = icmp eq i32 %i.mc, 0
  %or.cond126 = select i1 %i.mf, i1 true, i1 %.not.i.not.i.i49
  br i1 %or.cond126, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mi = add nuw nsw i64 %i.mg, 31
  %i.mj = lshr i64 %i.mi, 5                       ; 2 uses
  %i.mk = load i32, ptr %i.ma, align 4, !tbaa !62, !noalias !601 ; 2 uses
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %.lr.ph.i.i.i54.preheader, label %._crit_edge.i.i.i50

.lr.ph.i.i.i54.preheader:                         ; preds = %bb.ab
  %i.mm = icmp eq i64 %i.mj, 1
  br i1 %i.mm, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit, label %.lr.ph258

.lr.ph.i.i.i54:                                   ; preds = %.lr.ph258
  %i.mn = add nuw nsw i64 %i.mp, 1                ; 2 uses
  %i.mo = icmp eq i64 %i.mn, %i.mj
  br i1 %i.mo, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit, label %.lr.ph258, !llvm.loop !7

.lr.ph258:                                        ; preds = %.lr.ph.i.i.i54.preheader, %.lr.ph.i.i.i54
  %i.mp = phi i64 [ %i.mn, %.lr.ph.i.i.i54 ], [ 1, %.lr.ph.i.i.i54.preheader ] ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !62, !noalias !601 ; 2 uses
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %.lr.ph.i.i.i54, label %._crit_edge.i.loopexit.i.i56, !llvm.loop !7

._crit_edge.i.loopexit.i.i56:                     ; preds = %.lr.ph258
  %i.mt = mul i64 %i.mp, 768
  br label %._crit_edge.i.i.i50

._crit_edge.i.i.i50:                              ; preds = %._crit_edge.i.loopexit.i.i56, %bb.ab
  %.012.lcssa.i.i.i51 = phi i64 [ 0, %bb.ab ], [ %i.mt, %._crit_edge.i.loopexit.i.i56 ]
  %.0.lcssa.i.i.i52 = phi i32 [ %i.mk, %bb.ab ], [ %i.mr, %._crit_edge.i.loopexit.i.i56 ]
  %i.mu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i52, i1 true)
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr i8, ptr %i.ly, i64 %.012.lcssa.i.i.i51
  %i.mx = getelementptr [24 x i8], ptr %i.mw, i64 %i.mv
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit: ; preds = %.lr.ph.i.i.i54, %.lr.ph.i.i.i54.preheader, %._crit_edge.i.i.i50, %bb.aa
  %.sroa.092.0 = phi ptr [ %i.mh, %bb.aa ], [ %i.mx, %._crit_edge.i.i.i50 ], [ %i.mh, %.lr.ph.i.i.i54.preheader ], [ %i.mh, %.lr.ph.i.i.i54 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.mh, ptr %3, align 8
  store ptr %i.mh, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.ly, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %i.ma, ptr %.sroa.4.0..sroa_idx90, align 8
  store ptr %.sroa.092.0, ptr %4, align 8
  store ptr %i.mh, ptr %.sroa.393.0..sroa_idx, align 8
  store ptr %i.ly, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.ma, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE19_M_range_initializeINS1_16DenseMapIteratorIjS4_NS1_12DenseMapInfoIjvEENS1_6detail12DenseMapPairIjS4_EELb1EEEEEvT_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull byval(%"class.llvm::DenseMapIterator.113") align 8 %4, ptr noundef nonnull byval(%"class.llvm::DenseMapIterator.113") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.my = load ptr, ptr %i.au, align 8, !tbaa !57, !noalias !602
  %i.mz = load ptr, ptr %i.av, align 8, !tbaa !57, !noalias !602
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %bb.ac, label %_ZN4llvm5ErrorD2Ev.exit.i

bb.ac:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit
  %i.nb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #17
  %i.nc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15, !noalias !603 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !603
  store i8 1, ptr %i.ax, align 1, !tbaa !69, !noalias !603
  store ptr @.str, ptr %2, align 8, !tbaa !88, !noalias !603
  store i8 3, ptr %i.ay, align 8, !tbaa !68, !noalias !603
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.nc, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 22, ptr nonnull %i.nb) #16, !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !603
  br label %_ZN4llvm4xray7Profile8addBlockEONS1_5BlockE.exit

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5beginEv.exit
  %i.nd = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15, !noalias !602 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load i64, ptr %9, align 8, !tbaa !55, !noalias !602
  store i64 %i.nf, ptr %i.ne, align 8, !tbaa !55, !noalias !602
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nh = load <2 x ptr>, ptr %i.au, align 8, !tbaa !57, !noalias !602
  store <2 x ptr> %i.nh, ptr %i.ng, align 8, !tbaa !57, !noalias !602
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  %i.nj = load ptr, ptr %i.aw, align 8, !tbaa !76, !noalias !602
  store ptr %i.nj, ptr %i.ni, align 8, !tbaa !76, !noalias !602
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !noalias !602
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, ptr noundef nonnull align 8 dereferenceable(124) %5) #16, !noalias !602
  %i.nk = load i64, ptr %i.c, align 8, !tbaa !56, !noalias !602
  %i.nl = add i64 %i.nk, 1
  store i64 %i.nl, ptr %i.c, align 8, !tbaa !56, !noalias !602
  br label %_ZN4llvm4xray7Profile8addBlockEONS1_5BlockE.exit

_ZN4llvm4xray7Profile8addBlockEONS1_5BlockE.exit: ; preds = %bb.ac, %_ZN4llvm5ErrorD2Ev.exit.i
  %storemerge.i = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit.i ], [ %i.nc, %bb.ac ] ; 2 uses
  %i.nm = load ptr, ptr %i.au, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i57, label %_ZN4llvm4xray7Profile5BlockD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm4xray7Profile8addBlockEONS1_5BlockE.exit
  %i.nn = load ptr, ptr %i.aw, align 8, !tbaa !76
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nq) #19
  br label %_ZN4llvm4xray7Profile5BlockD2Ev.exit

_ZN4llvm4xray7Profile5BlockD2Ev.exit:             ; preds = %_ZN4llvm4xray7Profile8addBlockEONS1_5BlockE.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %.not128 = icmp eq ptr %storemerge.i, null
  br i1 %.not128, label %_ZN4llvm5ErrorD2Ev.exit58, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm4xray7Profile5BlockD2Ev.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 8
  %i.nt = or i8 %i.ns, 1
  store i8 %i.nt, ptr %i.nr, align 8
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !84, !alias.scope !604
  br label %bb.af

_ZN4llvm5ErrorD2Ev.exit58:                        ; preds = %_ZN4llvm4xray7Profile5BlockD2Ev.exit
  %i.nu = add i64 %.pn, 32
  %i.nv = ashr exact i64 %i.nu, 5                 ; 3 uses
  %.not.i.i59 = icmp ult i64 %i.nv, %i.ae
  br i1 %.not.i.i59, label %bb.ae, label %.critedge37

bb.ae:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit58
  %i.nw = lshr i64 %i.nv, 5                       ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.pre172, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !62
  %i.nz = trunc nuw i64 %i.nv to i32
  %i.oa = and i32 %i.nz, 31
  %i.ob = shl nsw i32 -1, %i.oa
  %i.oc = and i32 %i.ny, %i.ob                    ; 2 uses
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %.lr.ph.i.i60.preheader, label %_ZN4llvm16DenseMapIteratorImNS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EELb0EEppEv.exit

.lr.ph.i.i60.preheader:                           ; preds = %bb.ae
  %i.oe = add nuw nsw i64 %i.nw, 1                ; 2 uses
  %i.of = icmp eq i64 %i.oe, %i.ba
  br i1 %i.of, label %.critedge37, label %.lr.ph259

.lr.ph.i.i60:                                     ; preds = %.lr.ph259
  %i.og = add i64 %i.oi, 1                        ; 2 uses
  %i.oh = icmp eq i64 %i.og, %i.ba
  br i1 %i.oh, label %.critedge37, label %.lr.ph259, !llvm.loop !539

.lr.ph259:                                        ; preds = %.lr.ph.i.i60.preheader, %.lr.ph.i.i60
  %i.oi = phi i64 [ %i.og, %.lr.ph.i.i60 ], [ %i.oe, %.lr.ph.i.i60.preheader ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.pre172, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !62 ; 2 uses
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.i.i60, label %_ZN4llvm16DenseMapIteratorImNS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EELb0EEppEv.exit, !llvm.loop !539

_ZN4llvm16DenseMapIteratorImNS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EELb0EEppEv.exit: ; preds = %.lr.ph259, %bb.ae
  %.012.lcssa.i.i = phi i64 [ %i.nw, %bb.ae ], [ %i.oi, %.lr.ph259 ]
  %.0.lcssa.i.i = phi i32 [ %i.oc, %bb.ae ], [ %i.ok, %.lr.ph259 ]
  %i.om = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 10
  %i.on = shl nuw nsw i32 %i.om, 5
  %.idx237 = zext nneg i32 %i.on to i64
  %i.oo = or disjoint i64 %.idx.i.i, %.idx237     ; 2 uses
  %.not127 = icmp eq i64 %i.oo, %.idx236
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_:bb.a
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapImNS0_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEENS4_ImvEENS7_ImS9_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !109
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 5
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS0_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEENS4_ImvEENS7_ImS9_EEE4killEv.exit

_ZN4llvm8DenseMapImNS0_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEENS4_ImvEENS7_ImS9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE19_M_range_initializeINS1_16DenseMapIteratorIjS4_NS1_12DenseMapInfoIjvEENS1_6detail12DenseMapPairIjS4_EELb1EEEEEvT_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef byval(%"class.llvm::DenseMapIterator.113") align 8 %1, ptr noundef byval(%"class.llvm::DenseMapIterator.113") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.011.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8 ; 4 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.not5.i = icmp eq ptr %.sroa.011.0.copyload, %.sroa.019.0.copyload
  br i1 %.not5.i, label %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit.thread, label %.lr.ph.i

_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit.thread: ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !76
  br label %_ZSt22__uninitialized_copy_aIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEPSt4pairIjS4_ESC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.3.0.copyload to i64  ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 24                  ; 2 uses
  %i.f = add nsw i64 %i.e, 31
  %i.g = lshr i64 %i.f, 5                         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i ] ; 2 uses
  %storemerge16.i.i46.i = phi ptr [ %.sroa.011.0.copyload, %.lr.ph.i ], [ %storemerge16.i.i.i, %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge16.i.i46.i, i64 24
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.c
  %i.k = sdiv exact i64 %i.j, 24                  ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.e
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.k, 5                         ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.412.0.copyload, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !62
  %i.o = trunc i64 %i.k to i32
  %i.p = and i32 %i.o, 31
  %i.q = shl nsw i32 -1, %i.p
  %i.r = and i32 %i.n, %i.q                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.t = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.g
  br i1 %i.u, label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.v = add i64 %i.x, 1                          ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.g
  br i1 %i.w, label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.x = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.412.0.copyload, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph, %bb.c
  %.012.lcssa.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.x, %.lr.ph ]
  %.0.lcssa.i.i.i = phi i32 [ %i.r, %bb.c ], [ %i.z, %.lr.ph ]
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %.idx.i.i.i = mul i64 %.012.lcssa.i.i.i, 768
  %i.ad = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i
  %i.ae = getelementptr [24 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i

_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %._crit_edge.i.i.i, %bb.b
  %storemerge16.i.i.i = phi ptr [ %.sroa.2.0.copyload, %bb.b ], [ %i.ae, %._crit_edge.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = add nuw nsw i64 %.07.i, 1               ; 3 uses
  %.not.i = icmp eq ptr %storemerge16.i.i.i, %.sroa.019.0.copyload
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESC_SC_St18input_iterator_tag.exit, label %bb.b, !llvm.loop !645

_ZSt10__distanceIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESC_SC_St18input_iterator_tag.exit: ; preds = %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i
  %i.ag = icmp samesign ugt i64 %.07.i, 384307168202282324
  br i1 %i.ag, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit

bb.d:                                             ; preds = %_ZSt10__distanceIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESC_SC_St18input_iterator_tag.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZSt10__distanceIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESC_SC_St18input_iterator_tag.exit
  %i.ah = mul nuw nsw i64 %i.af, 24
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #15 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !76
  %i.al = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.am = ptrtoint ptr %.sroa.3.0.copyload to i64 ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 24                ; 2 uses
  %i.ap = add nsw i64 %i.ao, 31
  %i.aq = lshr i64 %i.ap, 5                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit
  %.09.i.i.i.i = phi ptr [ %i.ai, %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit ], [ %i.bp, %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i ] ; 2 uses
  %storemerge16.i.i68.i.i.i.i = phi ptr [ %.sroa.011.0.copyload, %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit ], [ %storemerge16.i.i.i.i.i.i, %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %storemerge16.i.i68.i.i.i.i, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge16.i.i68.i.i.i.i, i64 24
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.am
  %i.au = sdiv exact i64 %i.at, 24                ; 3 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.au, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.av = lshr i64 %i.au, 5                       ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.412.0.copyload, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !62
  %i.ay = trunc i64 %i.au to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nsw i32 -1, %i.az
  %i.bb = and i32 %i.ax, %i.ba                    ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %i.bd = add nuw nsw i64 %i.av, 1                ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.aq
  br i1 %i.be, label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i, label %.lr.ph70

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph70
  %i.bf = add i64 %i.bh, 1                        ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %i.aq
  br i1 %i.bg, label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i, label %.lr.ph70, !llvm.loop !7

.lr.ph70:                                         ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.bh = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.412.0.copyload, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !62 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph70, %bb.f
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.bh, %.lr.ph70 ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.f ], [ %i.bj, %.lr.ph70 ]
  %i.bl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i32 %i.bl to i64
  %.idx.i.i.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i.i.i, 768
  %i.bn = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i
  %i.bo = getelementptr [24 x i8], ptr %i.bn, i64 %i.bm
  br label %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i

_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i, %bb.e
  %storemerge16.i.i.i.i.i.i = phi ptr [ %.sroa.2.0.copyload, %bb.e ], [ %i.bo, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge16.i.i.i.i.i.i, %.sroa.019.0.copyload
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEPSt4pairIjS4_ESC_ET0_T_SF_SE_RSaIT1_E.exit, label %bb.e, !llvm.loop !646

_ZSt22__uninitialized_copy_aIN4llvm16DenseMapIteratorIjNS0_4xray7Profile4DataENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EELb1EEEPSt4pairIjS4_ESC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE11_M_allocateEm.exit.thread ], [ %i.bp, %_ZN4llvm16DenseMapIteratorIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb1EEppEv.exit.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.bq, align 8, !tbaa !75
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !72}
!1 = distinct !{!1, !72}
!2 = distinct !{!2, !72}
!3 = distinct !{!3, !72}
!4 = distinct !{!4, !72}
!5 = distinct !{!5, !72}
!6 = distinct !{!6, !72}
!7 = distinct !{!7, !72}
!8 = distinct !{!8, !72}
!9 = distinct !{!9, !72}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !72}
!12 = distinct !{!12, !72}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !21, i64 0}
!23 = !{!"_ZTSNSt8__detail15_List_node_baseE", !22, i64 0, !22, i64 8}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !22, i64 0}
!26 = !{!"long", !17, i64 0}
!27 = !{!"_ZTSNSt8__detail17_List_node_headerE", !23, i64 0, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !21, i64 0, !18, i64 8, !18, i64 12}
!30 = !{!29, !21, i64 0}
!31 = !{!29, !18, i64 8}
!32 = !{!29, !18, i64 12}
!33 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm4xray7Profile5BlockESaIS4_EE10_List_implE", !27, i64 0}
!34 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm4xray7Profile5BlockESaIS4_EEE", !33, i64 0}
!35 = !{!"_ZTSNSt7__cxx114listIN4llvm4xray7Profile5BlockESaIS4_EEE", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm4xray7Profile8TrieNodeESaIS4_EE10_List_implE", !27, i64 0}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm4xray7Profile8TrieNodeESaIS4_EEE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx114listIN4llvm4xray7Profile8TrieNodeESaIS4_EEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_4xray7Profile8TrieNodeEvEE", !29, i64 0}
!40 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_4xray7Profile8TrieNodeELb1EEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_4xray7Profile8TrieNodeEEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_4xray7Profile8TrieNodeELj4EEE", !17, i64 0}
!43 = !{!"_ZTSN4llvm11SmallVectorIPNS_4xray7Profile8TrieNodeELj4EEE", !41, i64 0, !42, i64 16}
!44 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjPNS_4xray7Profile8TrieNodeEEE", !21, i64 0}
!45 = !{!"p1 int", !21, i64 0}
!46 = !{!"_ZTSN4llvm8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEE", !44, i64 0, !45, i64 8, !18, i64 16, !18, i64 20}
!47 = !{!"_ZTSN4llvm4xray7ProfileE", !35, i64 0, !38, i64 24, !43, i64 48, !46, i64 96, !18, i64 120}
!48 = !{!47, !18, i64 120}
!49 = !{!"p1 _ZTSSt4pairIjN4llvm4xray7Profile4DataEE", !21, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorISt4pairIjN4llvm4xray7Profile4DataEESaIS5_EE", !52, i64 0}
!54 = !{!"_ZTSN4llvm4xray7Profile5BlockE", !26, i64 0, !53, i64 8}
!55 = !{!54, !26, i64 0}
!56 = !{!34, !26, i64 16}
!57 = !{!49, !49, i64 0}
!58 = !{!"_ZTSN4llvm4xray7Profile4DataE", !26, i64 0, !26, i64 8}
!59 = !{!46, !44, i64 0}
!60 = !{!46, !45, i64 8}
!61 = !{!46, !18, i64 20}
!62 = !{!18, !18, i64 0}
!63 = !{!"branch_weights", i32 1, i32 1999}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!"_ZTSN4llvm5Twine8NodeKindE", !17, i64 0}
!67 = !{!"_ZTSN4llvm5TwineE", !17, i64 0, !17, i64 16, !66, i64 32, !66, i64 33}
!68 = !{!67, !66, i64 32}
!69 = !{!67, !66, i64 33}
!70 = !{!"p1 _ZTSN4llvm4xray7Profile8TrieNodeE", !21, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!26, !26, i64 0}
!74 = !{i64 0, i64 8, !73, i64 8, i64 8, !73}
!75 = !{!50, !49, i64 8}
!76 = !{!50, !49, i64 16}
!77 = !{!50, !49, i64 0}
!78 = !{!"any p2 pointer", !21, i64 0}
!79 = !{!"p2 _ZTSN4llvm4xray7Profile8TrieNodeE", !78, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIPN4llvm4xray7Profile8TrieNodeESaIS4_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 16}
!82 = !{!80, !79, i64 0}
!83 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !21, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!21, !21, i64 0}
!86 = !{!44, !44, i64 0}
!87 = !{!45, !45, i64 0}
!88 = !{!17, !17, i64 0}
!89 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImSt10unique_ptrINS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS1_IjS6_EEEESt14default_deleteISA_EEEE", !21, i64 0}
!90 = !{!"_ZTSN4llvm8DenseMapImSt10unique_ptrINS0_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEESt14default_deleteISA_EENS5_ImvEENS8_ImSD_EEEE", !89, i64 0, !45, i64 8, !18, i64 16, !18, i64 20}
!91 = !{!90, !89, i64 0}
!92 = !{!90, !45, i64 8}
!93 = !{!90, !18, i64 20}
!94 = !{!90, !18, i64 16}
!95 = !{!"p1 _ZTSN4llvm4xray7ProfileE", !21, i64 0}
!96 = !{!"_ZTSSt17reference_wrapperIKN4llvm4xray7ProfileEE", !95, i64 0}
!97 = !{!96, !95, i64 0}
!98 = !{!"p1 _ZTSN4llvm8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEE", !21, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjNS_4xray7Profile4DataEEE", !21, i64 0}
!101 = !{!"_ZTSN4llvm8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEE", !100, i64 0, !45, i64 8, !18, i64 16, !18, i64 20}
!102 = !{!101, !100, i64 0}
!103 = !{!101, !45, i64 8}
!104 = !{!101, !18, i64 20}
!105 = !{!101, !18, i64 16}
!106 = !{!"p1 omnipotent char", !21, i64 0}
!107 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImNS_8DenseMapIjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS1_IjS5_EEEEEE", !21, i64 0}
!108 = !{!"_ZTSN4llvm8DenseMapImNS0_IjNS_4xray7Profile4DataENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEENS4_ImvEENS7_ImS9_EEEE", !107, i64 0, !45, i64 8, !18, i64 16, !18, i64 20}
!109 = !{!108, !107, i64 0}
!110 = !{!108, !45, i64 8}
!111 = !{!108, !18, i64 20}
!112 = !{!108, !18, i64 16}
!113 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS4_EEEE", !21, i64 0}
!114 = !{!"_ZTSN4llvm8DenseMapImSt6vectorIN12_GLOBAL__N_110StackEntryESaIS3_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEE", !113, i64 0, !45, i64 8, !18, i64 16, !18, i64 20}
!115 = !{!114, !113, i64 0}
!116 = !{!114, !45, i64 8}
!117 = !{!114, !18, i64 20}
!118 = !{!113, !113, i64 0}
!119 = !{!114, !18, i64 16}
!120 = !{!"p1 _ZTSN12_GLOBAL__N_110StackEntryE", !21, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_110StackEntryESaIS1_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!121, !120, i64 16}
!123 = !{!121, !120, i64 0}
!124 = !{!120, !120, i64 0}
!125 = !{!46, !18, i64 16}
!126 = !{!100, !100, i64 0}
!127 = distinct !{!127, i1 true, !"_ZNK4llvm4xray7Profile10expandPathEj"}
!128 = distinct !{!128, !127, !"_ZNK4llvm4xray7Profile10expandPathEj: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj"}
!130 = distinct !{!130, !129, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb1EEERKT_"}
!132 = distinct !{!132, !131, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb1EEERKT_: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!134 = distinct !{!134, !133, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNK4llvm8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!136 = distinct !{!136, !135, !"_ZNK4llvm8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!138 = distinct !{!138, !137, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!140 = distinct !{!140, !139, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZN4llvm10make_errorINS_11StringErrorEJNS_5TwineESt10error_codeEEENS_5ErrorEDpOT0_"}
!142 = distinct !{!142, !141, !"_ZN4llvm10make_errorINS_11StringErrorEJNS_5TwineESt10error_codeEEENS_5ErrorEDpOT0_: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNS0_5TwineESt10error_codeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!144 = distinct !{!144, !143, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNS0_5TwineESt10error_codeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZSt19__relocate_object_aISt4pairIjN4llvm4xray7Profile4DataEES5_SaIS5_EEvPT_PT0_RT1_"}
!146 = distinct !{!146, !145, !"_ZSt19__relocate_object_aISt4pairIjN4llvm4xray7Profile4DataEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!147 = distinct !{!147, !145, !"_ZSt19__relocate_object_aISt4pairIjN4llvm4xray7Profile4DataEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!148 = !{!"_ZTSSt4pairIjN4llvm4xray7Profile4DataEE", !18, i64 0, !58, i64 8}
!149 = !{!148, !18, i64 0}
!150 = !{!136, !134, !132, !130, !128}
!151 = !{!132, !130, !128}
!152 = !{!128}
!153 = !{!140, !138}
!154 = !{!144, !142, !128}
!155 = !{!147, !146}
!156 = distinct !{!156, !72}
!157 = distinct !{!157, !72}
!158 = distinct !{!158, !72}
!159 = distinct !{!159, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6insertEOSt4pairIjS5_E"}
!160 = distinct !{!160, !159, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6insertEOSt4pairIjS5_E: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16try_emplace_implIjJS5_EEESt4pairINS_16DenseMapIteratorIjS5_S7_SA_Lb0EEEbEOT_DpOT0_"}
!162 = distinct !{!162, !161, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_4xray7Profile8TrieNodeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16try_emplace_implIjJS5_EEESt4pairINS_16DenseMapIteratorIjS5_S7_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!163 = !{!"_ZTSNSt12_Vector_baseIPN4llvm4xray7Profile8TrieNodeESaIS4_EE12_Vector_implE", !80, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseIPN4llvm4xray7Profile8TrieNodeESaIS4_EE", !163, i64 0}
!165 = !{!"_ZTSSt6vectorIPN4llvm4xray7Profile8TrieNodeESaIS4_EE", !164, i64 0}
!166 = !{!"_ZTSN4llvm4xray7Profile8TrieNodeE", !18, i64 0, !165, i64 8, !70, i64 32, !18, i64 40}
!167 = !{!166, !18, i64 0}
!168 = !{!37, !26, i64 16}
!169 = !{!79, !79, i64 0}
!170 = !{!166, !70, i64 32}
!171 = !{!80, !79, i64 8}
!172 = !{!166, !18, i64 40}
!173 = !{!"_ZTSSt4pairIjPN4llvm4xray7Profile8TrieNodeEE", !18, i64 0, !70, i64 8}
!174 = !{!173, !18, i64 0}
end_hunk_1
