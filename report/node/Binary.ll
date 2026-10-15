Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Binary?download=true
inline.NumInlined: 6710
inline.NumDeleted: 2795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK4LIEF2PE6Binary13rva_to_offsetEm:bb.a
"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit24.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit24.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i"
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.049.059.i.i.i, i64 16 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.at) #25
  %i.ax = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #25, !inline_history !120
  %.not.i.i25.i.i.i = icmp ugt i64 %i.bb, %1
  br i1 %.not.i.i25.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit24.thread.i.i.i"
  %i.bc = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.aw)
  %.sroa.speculated.i.i26.i.i.i = zext i32 %i.bc to i64
  %i.bd = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.bd) #25, !inline_history !120
  %i.bi = add i64 %i.bh, %.sroa.speculated.i.i26.i.i.i
  %i.bj = icmp ult i64 %1, %i.bi
  br i1 %i.bj, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit24.thread.i.i.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.049.059.i.i.i, i64 24 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bl) #25
  %i.bp = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %i.bp) #25, !inline_history !120
  %.not.i.i28.i.i.i = icmp ugt i64 %i.bt, %1
  br i1 %.not.i.i28.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i"
  %i.bu = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bo)
  %.sroa.speculated.i.i29.i.i.i = zext i32 %i.bu to i64
  %i.bv = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(64) %i.bv) #25, !inline_history !120
  %i.ca = add i64 %i.bz, %.sroa.speculated.i.i29.i.i.i
  %i.cb = icmp ult i64 %1, %i.ca
  br i1 %i.cb, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.049.059.i.i.i, i64 32 ; 3 uses
  %i.cd = add nsw i64 %.060.i.i.i, -1
  %i.ce = icmp sgt i64 %.060.i.i.i, 1
  br i1 %i.ce, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !121

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.thread.i.i.i"
  %.pre.i.i.i = ptrtoint ptr %i.cc to i64
  %.pre61.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi62.i.i.i = phi i64 [ %.pre61.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.049.0.lcssa.i.i.i = phi ptr [ %i.cc, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %i.cf = ashr exact i64 %.pre-phi62.i.i.i, 3
  switch i64 %i.cf, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit" [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = load ptr, ptr %.sroa.049.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cg) #25
  %i.ck = load ptr, ptr %.sroa.049.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(64) %i.ck) #25, !inline_history !120
  %.not.i.i31.i.i.i = icmp ugt i64 %i.co, %1
  br i1 %.not.i.i31.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i": ; preds = %bb.b
  %i.cp = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cj)
  %.sroa.speculated.i.i32.i.i.i = zext i32 %i.cp to i64
  %i.cq = load ptr, ptr %.sroa.049.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(64) %i.cq) #25, !inline_history !120
  %i.cv = add i64 %i.cu, %.sroa.speculated.i.i32.i.i.i
  %i.cw = icmp ult i64 %1, %i.cv
  br i1 %i.cw, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i", %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i", %._crit_edge.i.i.i
  %.sroa.049.1.i.i.i = phi ptr [ %i.cx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i" ], [ %.sroa.049.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 5 uses
  %i.cy = load ptr, ptr %.sroa.049.1.i.i.i, align 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cy) #25
  %i.dc = load ptr, ptr %.sroa.049.1.i.i.i, align 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef i64 %i.df(ptr noundef nonnull align 8 dereferenceable(64) %i.dc) #25, !inline_history !120
  %.not.i.i34.i.i.i = icmp ugt i64 %i.dg, %1
  br i1 %.not.i.i34.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.i.i.i": ; preds = %bb.c
  %i.dh = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.db)
  %.sroa.speculated.i.i35.i.i.i = zext i32 %i.dh to i64
  %i.di = load ptr, ptr %.sroa.049.1.i.i.i, align 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(64) %i.di) #25, !inline_history !120
  %i.dn = add i64 %i.dm, %.sroa.speculated.i.i35.i.i.i
  %i.do = icmp ult i64 %1, %i.dn
  br i1 %i.do, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.i.i.i", %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.049.1.i.i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.thread.i.i.i", %._crit_edge.i.i.i
  %.sroa.049.2.i.i.i = phi ptr [ %i.dp, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.thread.i.i.i" ], [ %.sroa.049.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.dq = load ptr, ptr %.sroa.049.2.i.i.i, align 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.dq) #25
  %i.du = load ptr, ptr %.sroa.049.2.i.i.i, align 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.du) #25, !inline_history !120
  %.not.i.i37.i.i.i = icmp ugt i64 %i.dy, %1
  br i1 %.not.i.i37.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.i.i.i": ; preds = %bb.d
  %i.dz = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dt)
  %.sroa.speculated.i.i38.i.i.i = zext i32 %i.dz to i64
  %i.ea = load ptr, ptr %.sroa.049.2.i.i.i, align 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef i64 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %i.ea) #25, !inline_history !120
  %i.ef = add i64 %i.ee, %.sroa.speculated.i.i38.i.i.i
  %i.eg = icmp ult i64 %1, %i.ef
  br i1 %i.eg, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.i.i.i", %bb.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit24.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.i.i.i", %._crit_edge.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.thread.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.049.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit36.i.i.i" ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.049.0.lcssa.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i" ], [ %i.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.thread.i.i.i" ], [ %.sroa.049.2.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit39.i.i.i" ], [ %.sroa.049.059.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i" ], [ %i.aa, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit24.i.i.i" ], [ %i.as, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i" ], [ %i.bk, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary13rva_to_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit30.i.i.i" ] ; 3 uses
  %i.eh = load ptr, ptr %i.c, align 8
  %i.ei = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.eh
  br i1 %i.ei, label %bb.h, label %bb.e

bb.e:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit"
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ek = load i32, ptr %i.ej, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.em = load i32, ptr %i.el, align 4            ; 4 uses
  %i.en = icmp ult i32 %i.ek, 4096
  %spec.select = select i1 %i.en, i32 %i.em, i32 %i.ek ; 2 uses
  %i.eo = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 88
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef i64 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %i.eo) #25 ; 3 uses
  %i.et = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  %i.eu = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.et) #25 ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = icmp eq i32 %spec.select, 0
  br i1 %i.ew, label %_ZN4LIEF5alignEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ex = zext i32 %spec.select to i64            ; 2 uses
  %i.ey = urem i64 %i.es, %i.ex                   ; 2 uses
  %.not.i = icmp eq i64 %i.ey, 0
  %i.ez = sub nuw nsw i64 %i.ex, %i.ey
  %i.fa = select i1 %.not.i, i64 0, i64 %i.ez
  %.0.i = add i64 %i.fa, %i.es
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %bb.e, %bb.f
  %.1.i = phi i64 [ %.0.i, %bb.f ], [ %i.es, %bb.e ]
  %i.fb = icmp eq i32 %i.em, 0
  br i1 %i.fb, label %_ZN4LIEF5alignEmm.exit21, label %bb.g

bb.g:                                             ; preds = %_ZN4LIEF5alignEmm.exit
  %i.fc = urem i32 %i.eu, %i.em                   ; 2 uses
  %.not.i18 = icmp eq i32 %i.fc, 0
  %2 = sub nuw i32 %i.em, %i.fc
  %narrow = select i1 %.not.i18, i32 0, i32 %2
  %3 = zext i32 %narrow to i64
  %.0.i19 = add nuw nsw i64 %3, %i.ev
  br label %_ZN4LIEF5alignEmm.exit21

_ZN4LIEF5alignEmm.exit21:                         ; preds = %_ZN4LIEF5alignEmm.exit, %bb.g
  %.1.i20 = phi i64 [ %.0.i19, %bb.g ], [ %i.ev, %_ZN4LIEF5alignEmm.exit ]
  %i.fd = sub i64 %1, %.1.i
  %i.fe = add i64 %i.fd, %.1.i20
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit", %_ZN4LIEF5alignEmm.exit21
  %.0 = phi i64 [ %i.fe, %_ZN4LIEF5alignEmm.exit21 ], [ %1, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary13rva_to_offsetEmE3$_0ET_SH_SH_T0_.exit" ]
  ret i64 %.0
}

declare noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK4LIEF2PE6Binary19section_from_offsetEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i"
  %.048.i.i.i = phi i64 [ %i.bb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i" ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.037.047.i.i.i = phi ptr [ %i.ba, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i" ], [ %i.b, %bb.a ] ; 8 uses
  %i.j = load ptr, ptr %.sroa.037.047.i.i.i, align 8
  %i.k = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.j) #25
  %i.l = zext i32 %i.k to i64
  %.not.i.i.i.i.i = icmp ult i64 %1, %i.l
  br i1 %.not.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %.sroa.037.047.i.i.i, align 8
  %i.n = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.m) #25
  %i.o = load ptr, ptr %.sroa.037.047.i.i.i, align 8
  %i.p = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.o) #25
  %i.q = add i32 %i.p, %i.n
  %i.r = zext i32 %i.q to i64
  %i.s = icmp ult i64 %1, %i.r
  br i1 %i.s, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i", %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.047.i.i.i, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.u) #25
  %i.w = zext i32 %i.v to i64
  %.not.i.i22.i.i.i = icmp ult i64 %1, %i.w
  br i1 %.not.i.i22.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i"
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.x) #25
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.z) #25
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.037.047.i.i.i, i64 16 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.af) #25
  %i.ah = zext i32 %i.ag to i64
  %.not.i.i24.i.i.i = icmp ult i64 %1, %i.ah
  br i1 %.not.i.i24.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.thread.i.i.i"
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ai) #25
  %i.ak = load ptr, ptr %i.ae, align 8
  %i.al = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ak) #25
  %i.am = add i32 %i.al, %i.aj
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp ult i64 %1, %i.an
  br i1 %i.ao, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.thread.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.037.047.i.i.i, i64 24 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.aq) #25
  %i.as = zext i32 %i.ar to i64
  %.not.i.i26.i.i.i = icmp ult i64 %1, %i.as
  br i1 %.not.i.i26.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.thread.i.i.i"
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.at) #25
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.av) #25
  %i.ax = add i32 %i.aw, %i.au
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp ult i64 %1, %i.ay
  br i1 %i.az, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.thread.i.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.047.i.i.i, i64 32 ; 3 uses
  %i.bb = add nsw i64 %.048.i.i.i, -1
  %i.bc = icmp sgt i64 %.048.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !122

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.thread.i.i.i"
  %.pre.i.i.i = ptrtoint ptr %i.ba to i64
  %.pre49.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi50.i.i.i = phi i64 [ %.pre49.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.ba, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %i.bd = ashr exact i64 %.pre-phi50.i.i.i, 3
  switch i64 %i.bd, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit" [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.be = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8
  %i.bf = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.be) #25
  %i.bg = zext i32 %i.bf to i64
  %.not.i.i28.i.i.i = icmp ult i64 %1, %i.bg
  br i1 %.not.i.i28.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.i.i.i": ; preds = %bb.b
  %i.bh = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8
  %i.bi = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bh) #25
  %i.bj = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8
  %i.bk = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bj) #25
  %i.bl = add i32 %i.bk, %i.bi
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp ult i64 %1, %i.bm
  br i1 %i.bn, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.i.i.i", %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.thread.i.i.i", %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.bo, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.thread.i.i.i" ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 5 uses
  %i.bp = load ptr, ptr %.sroa.037.1.i.i.i, align 8
  %i.bq = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bp) #25
  %i.br = zext i32 %i.bq to i64
  %.not.i.i30.i.i.i = icmp ult i64 %1, %i.br
  br i1 %.not.i.i30.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.i.i.i": ; preds = %bb.c
  %i.bs = load ptr, ptr %.sroa.037.1.i.i.i, align 8
  %i.bt = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bs) #25
  %i.bu = load ptr, ptr %.sroa.037.1.i.i.i, align 8
  %i.bv = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bu) #25
  %i.bw = add i32 %i.bv, %i.bt
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ult i64 %1, %i.bx
  br i1 %i.by, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.i.i.i", %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.thread.i.i.i", %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.bz, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.thread.i.i.i" ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.ca = load ptr, ptr %.sroa.037.2.i.i.i, align 8
  %i.cb = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ca) #25
  %i.cc = zext i32 %i.cb to i64
  %.not.i.i32.i.i.i = icmp ult i64 %1, %i.cc
  br i1 %.not.i.i32.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i": ; preds = %bb.d
  %i.cd = load ptr, ptr %.sroa.037.2.i.i.i, align 8
  %i.ce = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cd) #25
  %i.cf = load ptr, ptr %.sroa.037.2.i.i.i, align 8
  %i.cg = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cf) #25
  %i.ch = add i32 %i.cg, %i.ce
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp ult i64 %1, %i.ci
  br i1 %i.cj, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i", %bb.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i", %._crit_edge.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit31.i.i.i" ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit29.i.i.i" ], [ %i.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.thread.i.i.i" ], [ %.sroa.037.2.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit33.i.i.i" ], [ %.sroa.037.047.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i" ], [ %i.t, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit23.i.i.i" ], [ %i.ae, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit25.i.i.i" ], [ %i.ap, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary19section_from_offsetEmE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISA_EESt6vectorISD_SaISD_EEEEEEbT_.exit27.i.i.i" ] ; 2 uses
  %i.ck = load ptr, ptr %i.c, align 8
  %i.cl = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ck
  br i1 %i.cl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit"
  %i.cm = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit", %bb.e
  %.0 = phi ptr [ %i.cm, %bb.e ], [ null, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary19section_from_offsetEmE3$_0ET_SH_SH_T0_.exit" ]
  ret ptr %.0
end_hunk_0
begin_hunk_1_@_ZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i68.i.i.i: ; preds = %bb.w
  %.pre.i.i69.i.i.i = load ptr, ptr %2, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i70.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.eb = icmp eq i64 %i.dx, 0
  %.pre1.i.i73.i.i.i = load ptr, ptr %2, align 8  ; 3 uses
  br i1 %i.eb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i70.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %1, align 8
  %bcmp.i.i.i74.i.i.i = call i32 @bcmp(ptr %.pre1.i.i73.i.i.i, ptr %i.ec, i64 %i.dx)
  %i.ed = icmp eq i32 %bcmp.i.i.i74.i.i.i, 0
  %i.ee = select i1 %i.ed, ptr %.sroa.079.2.i.i.i, ptr %i.d
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i70.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i70.i.i.i: ; preds = %bb.y, %bb.x, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i68.i.i.i
  %i.ef = phi ptr [ %.pre.i.i69.i.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i68.i.i.i ], [ %.pre1.i.i73.i.i.i, %bb.y ], [ %.pre1.i.i73.i.i.i, %bb.x ] ; 2 uses
  %spec.select.i.i.i = phi ptr [ %i.d, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i68.i.i.i ], [ %i.ee, %bb.y ], [ %.sroa.079.2.i.i.i, %bb.x ]
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i72.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i72.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i70.i.i.i
  %i.ei = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.ei)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit75.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i70.i.i.i
  %i.ej = load i64, ptr %i.eg, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ek) #26
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit75.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit75.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i72.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i"
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.079.098.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit41": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i"
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.079.098.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit43": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit48.i.i.i"
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.079.098.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit41", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit43", %._crit_edge.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit57.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit66.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit75.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.079.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit66.i.i.i" ], [ %spec.select.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit75.i.i.i" ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.079.0.lcssa.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit57.i.i.i" ], [ %i.en, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit43" ], [ %i.em, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit41" ], [ %i.el, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.079.098.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_7SectionESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i" ] ; 2 uses
  %i.eo = load ptr, ptr %i.c, align 8
  %i.ep = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.eo
  br i1 %i.ep, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"
  %i.eq = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", %bb.z
  %.0 = phi ptr [ %i.eq, %bb.z ], [ null, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit" ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK4LIEF2PE6Binary14import_sectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load ptr, ptr %i.c, align 8
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %_ZNK4LIEF2PE6Binary10import_dirEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.k, 8
  br i1 %i.l, label %_ZNK4LIEF2PE6Binary10import_dirEv.exit, label %_ZNK4LIEF2PE6Binary10import_dirEv.exit.thread

_ZNK4LIEF2PE6Binary10import_dirEv.exit:           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.not = icmp eq ptr %i.n, null
  br i1 %.not.not, label %_ZNK4LIEF2PE6Binary10import_dirEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4LIEF2PE6Binary10import_dirEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  br label %_ZNK4LIEF2PE6Binary10import_dirEv.exit.thread

_ZNK4LIEF2PE6Binary10import_dirEv.exit.thread:    ; preds = %bb.b, %bb.c, %_ZNK4LIEF2PE6Binary10import_dirEv.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ null, %_ZNK4LIEF2PE6Binary10import_dirEv.exit ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4LIEF2PE6Binary12virtual_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i16, ptr %i.e, align 8
  %i.g = icmp eq i16 %i.f, 267
  %i.h = select i1 %i.g, i64 96, i64 112
  %i.i = add nuw nsw i64 %i.d, %i.h               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.k, %i.m
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.i, %bb.a ], [ %.sroa.speculated, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4LIEF5alignEmm.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = zext i32 %i.o to i64                     ; 2 uses
  %i.r = urem i64 %.0.lcssa, %i.q                 ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = sub nuw nsw i64 %i.q, %i.r
  %i.t = select i1 %.not.i, i64 0, i64 %i.s
  %.0.i = add i64 %i.t, %.0.lcssa
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %._crit_edge, %bb.b
  %.1.i = phi i64 [ %.0.i, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  ret i64 %.1.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.i, %bb.a ]
  %.sroa.06.014 = phi ptr [ %i.ae, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %i.u = load ptr, ptr %.sroa.06.014, align 8     ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.u) #25
  %i.z = load ptr, ptr %.sroa.06.014, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.015, i64 %i.ad) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK4LIEF2PE6Binary14sizeof_headersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp eq i16 %i.e, 267
  %i.g = select i1 %i.f, i32 96, i32 112
  %i.h = add i32 %i.c, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, -8
  %i.r = add i32 %i.h, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = trunc i64 %i.z to i32
  %i.ab = mul i32 %i.aa, 40
  %i.ac = add i32 %i.r, %i.ab                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4LIEF5alignEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = urem i32 %i.ac, %i.ae                   ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  %i.ah = sub nuw i32 %i.ae, %i.ag
  %i.ai = select i1 %.not.i, i32 0, i32 %i.ah
  %.0.i = add i32 %i.ai, %i.ac
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.b ], [ %i.ac, %bb.a ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4LIEF2PE6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4LIEF2PE6Binary6removeERKNS0_7SectionEb(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i1 noundef zeroext %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Binary6removeERKNS0_7SectionEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.058.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.b, %bb.a ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8 ; 2 uses
  %i.j = load ptr, ptr %.val1.i.i.i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  br i1 %i.l, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.m, align 8  ; 2 uses
  %i.n = load ptr, ptr %.val1.i22.i.i.i, align 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  br i1 %i.p, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.q, align 8  ; 2 uses
  %i.r = load ptr, ptr %.val1.i23.i.i.i, align 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  br i1 %i.t, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit68", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.u, align 8  ; 2 uses
  %i.v = load ptr, ptr %.val1.i24.i.i.i, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i24.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  br i1 %i.x, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit70", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32 ; 3 uses
  %i.z = add nsw i64 %.058.i.i.i, -1
  %i.aa = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !158

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %i.y to i64
  %.pre63.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi64.i.i.i = phi i64 [ %.pre63.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %i.y, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.ab = ashr exact i64 %.pre-phi64.i.i.i, 3
  switch i64 %i.ab, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.ac = load ptr, ptr %.val1.i25.i.i.i, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i25.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  br i1 %i.ae, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.af, %bb.g ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8 ; 2 uses
  %i.ag = load ptr, ptr %.val1.i26.i.i.i, align 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i26.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  br i1 %i.ai, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i, align 8 ; 2 uses
  %i.ak = load ptr, ptr %.val1.i27.i.i.i, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i27.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !157
  %spec.select.i.i.i = select i1 %i.am, ptr %.sroa.038.2.i.i.i, ptr %i.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit68": ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit70": ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit68", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit70", %._crit_edge.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.f ], [ %i.ap, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit70" ], [ %i.ao, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit68" ], [ %i.an, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i, %.lr.ph.i.i.i ] ; 8 uses
  %i.aq = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ar = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit"
  %i.as = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.at = load ptr, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.aw = load ptr, ptr %3, align 8               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.az = load i64, ptr %i.ax, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.t

bb.l:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_bE3$_0ET_SI_SI_T0_.exit"
  %i.bb = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bc = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = ptrtoint ptr %i.aq to i64
  %i.bh = sub i64 %i.bg, %i.bd
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = icmp ult i64 %i.bf, %i.bj
  %i.bl = icmp ne ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bb
  %or.cond = and i1 %i.bl, %i.bk
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.be
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8     ; 5 uses
  %i.bo = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(64) %i.bo) #25
  %i.bt = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(64) %i.bt) #25
  %i.by = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %i.by) #25
  %i.cd = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef i64 %i.cg(ptr noundef nonnull align 8 dereferenceable(64) %i.cd) #25
  %i.ci = load ptr, ptr %i.bn, align 8            ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %i.ci) #25
  %.neg39 = add i64 %i.bx, %i.bs
  %i.cn = add i64 %i.cc, %i.ch
  %i.co = sub i64 %.neg39, %i.cn
  %i.cp = add i64 %i.co, %i.cm
  %i.cq = load ptr, ptr %i.ci, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(64) %i.ci, i64 noundef %i.cp) #25
  %i.ct = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(64) %i.ct) #25
  %i.cy = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef i64 %i.df(ptr noundef nonnull align 8 dereferenceable(64) %i.dc) #25
  %i.dh = load ptr, ptr %i.bn, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 112 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %.neg42 = add i64 %i.cx, %i.db
  %i.dl = add i64 %i.dg, %i.dk
  %i.dm = sub i64 %.neg42, %i.dl
  %i.dn = trunc i64 %i.dm to i32
  %i.do = add i32 %i.dj, %i.dn
  store i32 %i.do, ptr %i.di, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  tail call void @_ZN4LIEF2PE7Section5clearEh(ptr noundef nonnull align 8 dereferenceable(144) %i.dp, i8 noundef zeroext 0) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.bc, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.c, align 8             ; 4 uses
  %.not.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.q, %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ei, %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.dz, %bb.q ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.eh, %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.dt, %bb.q ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.eg, %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.du, %bb.q ] ; 3 uses
  %i.eb = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8
  %i.ec = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 3 uses
  store ptr %i.eb, ptr %.0811.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(144) %i.ec) #25, !inline_history !159
  br label %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.ei = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ej = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !160

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.q, %bb.p
  %i.ek = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.dv, %bb.q ], [ %i.dv, %bb.p ]
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 3 uses
  store ptr %i.el, ptr %i.c, align 8
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(144) %i.em) #25, !inline_history !161
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i
  %i.eq = phi ptr [ %i.el, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ], [ %.pre, %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i.i.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.es = load i16, ptr %i.er, align 8
  %i.et = add i16 %i.es, -1
  store i16 %i.et, ptr %i.er, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ev = load i32, ptr %i.eu, align 4            ; 2 uses
  %i.ew = add i32 %i.ev, 24
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ey = load i16, ptr %i.ex, align 8
  %i.ez = icmp eq i16 %i.ey, 267                  ; 2 uses
  %i.fa = select i1 %i.ez, i32 96, i32 112
  %i.fb = add i32 %i.ew, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load ptr, ptr %i.fc, align 8
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = and i32 %i.fj, -8
  %i.fl = add i32 %i.fb, %i.fk
  %i.fm = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.fn = ptrtoint ptr %i.eq to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = lshr exact i64 %i.fp, 3
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = mul i32 %i.fr, 40
  %i.ft = add i32 %i.fl, %i.fs                    ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fv = load i32, ptr %i.fu, align 4            ; 3 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  %i.fx = urem i32 %i.ft, %i.fv                   ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.fx, 0
  %i.fy = sub nuw i32 %i.fv, %i.fx
  %i.fz = select i1 %.not.i.i27, i32 0, i32 %i.fy
  %.0.i.i = add i32 %i.fz, %i.ft
  br label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit

_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit:       ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, %bb.r
  %.1.i.i = phi i32 [ %.0.i.i, %bb.r ], [ %i.ft, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %.1.i.i, ptr %i.ga, align 4
  %i.gb = zext i32 %i.ev to i64
  %i.gc = add nuw nsw i64 %i.gb, 24
  %i.gd = select i1 %i.ez, i64 96, i64 112
  %i.ge = add nuw nsw i64 %i.gc, %i.gd            ; 2 uses
  %.not13.i = icmp eq ptr %i.fm, %i.eq
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit
  %.0.lcssa.i = phi i64 [ %i.ge, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit ], [ %.sroa.speculated.i, %.lr.ph.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.gi = zext i32 %i.gg to i64                   ; 2 uses
  %i.gj = urem i64 %.0.lcssa.i, %i.gi             ; 2 uses
  %.not.i.i28 = icmp eq i64 %i.gj, 0
  %i.gk = sub nuw nsw i64 %i.gi, %i.gj
  %i.gl = select i1 %.not.i.i28, i64 0, i64 %i.gk
  %.0.i.i29 = add i64 %i.gl, %.0.lcssa.i
  br label %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit

.lr.ph.i:                                         ; preds = %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit, %.lr.ph.i
  %.015.i = phi i64 [ %.sroa.speculated.i, %.lr.ph.i ], [ %i.ge, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit ]
  %.sroa.06.014.i = phi ptr [ %i.gw, %.lr.ph.i ], [ %i.fm, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit ] ; 3 uses
  %i.gm = load ptr, ptr %.sroa.06.014.i, align 8  ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = tail call noundef i64 %i.gp(ptr noundef nonnull align 8 dereferenceable(64) %i.gm) #25, !inline_history !51
  %i.gr = load ptr, ptr %.sroa.06.014.i, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = zext i32 %i.gt to i64
  %i.gv = add i64 %i.gq, %i.gu
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.015.i, i64 %i.gv) ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.gw, %i.eq
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit:         ; preds = %._crit_edge.i, %bb.s
  %.1.i.i30 = phi i64 [ %.0.i.i29, %bb.s ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.gx = trunc i64 %.1.i.i30 to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.gx, ptr %i.gy, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4LIEF2PE7Section5clearEh(ptr noundef nonnull align 8 dereferenceable(144), i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4LIEF5alignEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = urem i32 40, %i.b                        ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = add i32 %i.b, 40
  %i.f = sub i32 %i.e, %i.d
  %i.g = select i1 %.not.i, i32 40, i32 %i.f
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.b ], [ 40, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.i, %i.k
  br i1 %.not8.i, label %_ZN4LIEF2PE6Binary5shiftEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4LIEF5alignEmm.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.i, %_ZN4LIEF5alignEmm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.05.09.i, align 8    ; 3 uses
  %i.m = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.l) #25
  %i.n = add i32 %i.m, %.1.i
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 noundef %i.o) #25, !inline_history !162
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, %i.k
  br i1 %.not.i2, label %_ZN4LIEF2PE6Binary5shiftEmm.exit, label %.lr.ph.i

_ZN4LIEF2PE6Binary5shiftEmm.exit:                 ; preds = %.lr.ph.i, %_ZN4LIEF5alignEmm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.t, align 8
  %i.w = sext i32 %i.v to i64
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %i.w, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Binary5shiftEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %2 to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.05.09 = phi ptr [ %i.b, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.05.09, align 8      ; 3 uses
  %i.g = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.f) #25
  %i.h = add i32 %i.g, %i.e
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 noundef %i.i) #25, !inline_history !3
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZNK4LIEF2PE6Binary19last_section_offsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i16, ptr %i.h, align 8
  %i.j = icmp eq i16 %i.i, 267
  %i.k = select i1 %i.j, i32 96, i32 112
  %i.l = add i32 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, -8
  %i.v = add i32 %i.l, %i.u
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = ptrtoint ptr %i.b to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = trunc i64 %i.z to i32
  %i.ab = mul i32 %i.aa, 40
  %i.ac = add i32 %i.v, %i.ab                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = urem i32 %i.ac, %i.ae                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ag, 0
  %i.ah = sub nuw i32 %i.ae, %i.ag
  %i.ai = select i1 %.not.i.i, i32 0, i32 %i.ah
  %.0.i.i = add i32 %i.ai, %i.ac
  br label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit

_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit:       ; preds = %bb.a, %bb.b
  %.1.i.i = phi i32 [ %.0.i.i, %bb.b ], [ %i.ac, %bb.a ]
  %i.aj = zext i32 %.1.i.i to i64                 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNKS4_6Binary19last_section_offsetEvE3$_0ET0_T_SI_SH_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit, %.lr.ph.i
  %.07.i = phi i64 [ %.sroa.speculated.i.i, %.lr.ph.i ], [ %i.aj, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit ]
  %.sroa.02.06.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.b, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.sroa.02.06.i, align 8
  %i.al = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ak) #25
  %i.am = load ptr, ptr %.sroa.02.06.i, align 8
  %i.an = tail call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.am) #25
  %i.ao = add i32 %i.an, %i.al
  %i.ap = zext i32 %i.ao to i64
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.07.i, i64 %i.ap) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNKS4_6Binary19last_section_offsetEvE3$_0ET0_T_SI_SH_T1_.exit", label %.lr.ph.i, !llvm.loop !4

"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNKS4_6Binary19last_section_offsetEvE3$_0ET0_T_SI_SH_T1_.exit": ; preds = %.lr.ph.i, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit
  %.0.lcssa.i = phi i64 [ %i.aj, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit ], [ %.sroa.speculated.i.i, %.lr.ph.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF2PE6Binary11add_sectionERKNS0_7SectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.118", align 8   ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.z, %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit ]
  %i.i = load i32, ptr %i.e, align 4              ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4LIEF5alignEmm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = urem i32 40, %i.i                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = add i32 %i.i, 40
  %i.m = sub i32 %i.l, %i.k
  %i.n = select i1 %.not.i.i, i32 40, i32 %i.m
  br label %_ZN4LIEF5alignEmm.exit.i

_ZN4LIEF5alignEmm.exit.i:                         ; preds = %bb.c, %bb.b
  %.1.i.i = phi i32 [ %i.n, %bb.c ], [ 40, %bb.b ]
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not8.i.i, label %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4LIEF5alignEmm.exit.i, %.lr.ph.i.i
  %.sroa.05.09.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.o, %_ZN4LIEF5alignEmm.exit.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.05.09.i.i, align 8  ; 3 uses
  %i.r = tail call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.q) #25
  %i.s = add i32 %i.r, %.1.i.i
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 noundef %i.t) #25, !inline_history !163
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i2.i, label %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit.loopexit, label %.lr.ph.i.i

_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i32, ptr %i.b, align 8
  br label %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit

_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit: ; preds = %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit.loopexit, %_ZN4LIEF5alignEmm.exit.i
  %i.y = phi i32 [ %.pre, %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit.loopexit ], [ %i.h, %_ZN4LIEF5alignEmm.exit.i ] ; 2 uses
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  store i32 %i.z, ptr %i.b, align 8
  %i.aa = icmp slt i32 %i.y, -1
  br i1 %i.aa, label %bb.b, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %_ZN4LIEF2PE6Binary26make_space_for_new_sectionEv.exit, %bb.a
  %i.ab = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27, !noalias !177 ; 19 uses
  tail call void @_ZN4LIEF2PE7SectionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call { ptr, i64 } %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %i.ab) #25 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.af, 1      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !178
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.d:                                             ; preds = %tailrecurse._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.152) #28, !noalias !178
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %tailrecurse._crit_edge
  %.not.i.i.i.i = icmp samesign eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i, label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27, !noalias !178 ; 6 uses
  store ptr %i.aj, ptr %2, align 8, !alias.scope !178
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !178
  %.not.i = icmp eq i64 %i.ah, 1
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !179

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ag, i64 %i.ah, i1 false), !noalias !178
  br label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.am = load i8, ptr %i.ag, align 1, !noalias !178
  store i8 %i.am, ptr %i.aj, align 1, !noalias !178
  br label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit

_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i, %bb.e, %bb.f
  %i.an = phi ptr [ %i.aj, %bb.e ], [ %i.aj, %bb.f ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ %i.ak, %bb.e ], [ %i.ak, %bb.f ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !178
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4LIEF5alignEmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit
  %i.ax = urem i32 %i.at, %i.av                   ; 2 uses
  %.not.i15 = icmp eq i32 %i.ax, 0
  %3 = sub nuw i32 %i.av, %i.ax
  %narrow = select i1 %.not.i15, i32 0, i32 %3
  %4 = zext i32 %narrow to i64
  %.0.i = add i64 %i.as, %4
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit, %bb.g
  %.1.i = phi i64 [ %.0.i, %bb.g ], [ %i.as, %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit ] ; 2 uses
  %i.ay = sub i64 %.1.i, %i.as
  %i.az = and i64 %i.ay, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 %i.as
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ba, i64 noundef %i.az, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bb = load ptr, ptr %i.ab, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2) #25
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 7 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = add i32 %i.bj, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = icmp eq i16 %i.bm, 267
  %i.bo = select i1 %i.bn, i32 96, i32 112
  %i.bp = add i32 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bq, align 8
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, -8
  %i.bz = ptrtoint ptr %i.bh to i64
  %i.ca = ptrtoint ptr %i.bf to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = mul i32 %i.cd, 40
  %i.cf = add i32 %i.bp, %i.ce
  %i.cg = add i32 %i.cf, %i.by                    ; 3 uses
  %i.ch = load i32, ptr %i.au, align 4            ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5alignEmm.exit
  %i.cj = urem i32 %i.cg, %i.ch                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cj, 0
  %i.ck = sub nuw i32 %i.ch, %i.cj
  %i.cl = select i1 %.not.i.i.i, i32 0, i32 %i.ck
  %.0.i.i.i = add i32 %i.cl, %i.cg
  br label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i

_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i:     ; preds = %bb.h, %_ZN4LIEF5alignEmm.exit
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %bb.h ], [ %i.cg, %_ZN4LIEF5alignEmm.exit ]
  %i.cm = zext i32 %.1.i.i.i to i64               ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not5.i.i, label %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i, %.lr.ph.i.i16
  %.07.i.i = phi i64 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i16 ], [ %i.cm, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i ]
  %.sroa.02.06.i.i = phi ptr [ %i.ct, %.lr.ph.i.i16 ], [ %i.bf, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i ] ; 3 uses
  %i.cn = load ptr, ptr %.sroa.02.06.i.i, align 8
  %i.co = call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cn) #25
  %i.cp = load ptr, ptr %.sroa.02.06.i.i, align 8
  %i.cq = call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cp) #25
  %i.cr = add i32 %i.cq, %i.co
  %i.cs = zext i32 %i.cr to i64
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.07.i.i, i64 %i.cs) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ct, %i.bh
  br i1 %.not.i.i17, label %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit.loopexit, label %.lr.ph.i.i16, !llvm.loop !4

_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit.loopexit: ; preds = %.lr.ph.i.i16
  %.pre59 = load i32, ptr %i.au, align 4
  br label %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit

_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit:  ; preds = %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit.loopexit, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i
  %i.cu = phi i32 [ %i.ch, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i ], [ %.pre59, %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit.loopexit ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.cm, %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit.i ], [ %.sroa.speculated.i.i.i, %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit.loopexit ] ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZN4LIEF5alignEmm.exit21, label %bb.i

bb.i:                                             ; preds = %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit
  %i.cw = zext i32 %i.cu to i64                   ; 2 uses
  %i.cx = urem i64 %.0.lcssa.i.i, %i.cw           ; 2 uses
  %.not.i18 = icmp eq i64 %i.cx, 0
  %i.cy = sub nuw nsw i64 %i.cw, %i.cx
  %i.cz = select i1 %.not.i18, i64 0, i64 %i.cy
  %.0.i19 = add nuw nsw i64 %i.cz, %.0.lcssa.i.i
  br label %_ZN4LIEF5alignEmm.exit21

_ZN4LIEF5alignEmm.exit21:                         ; preds = %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit, %bb.i
  %.1.i20 = phi i64 [ %.0.i19, %bb.i ], [ %.0.lcssa.i.i, %_ZNK4LIEF2PE6Binary19last_section_offsetEv.exit ]
  %i.da = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8            ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 4 uses
  %i.de = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.df = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.de, %i.df
  br i1 %.not5.i, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNS4_6Binary11add_sectionERKS5_E3$_0ET0_T_SJ_SI_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4LIEF5alignEmm.exit21, %.lr.ph.i
  %.07.i = phi i64 [ %.sroa.speculated.i.i, %.lr.ph.i ], [ %i.dd, %_ZN4LIEF5alignEmm.exit21 ]
  %.sroa.02.06.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.de, %_ZN4LIEF5alignEmm.exit21 ] ; 3 uses
  %i.dg = load ptr, ptr %.sroa.02.06.i, align 8   ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef i64 %i.dj(ptr noundef nonnull align 8 dereferenceable(64) %i.dg) #25, !inline_history !168
  %i.dl = load ptr, ptr %.sroa.02.06.i, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 112
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dk, %i.do
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.dp, i64 %.07.i) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i22 = icmp eq ptr %i.dq, %i.df
  br i1 %.not.i22, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNS4_6Binary11add_sectionERKS5_E3$_0ET0_T_SJ_SI_T1_.exit", label %.lr.ph.i, !llvm.loop !169

"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNS4_6Binary11add_sectionERKS5_E3$_0ET0_T_SJ_SI_T1_.exit": ; preds = %.lr.ph.i, %_ZN4LIEF5alignEmm.exit21
  %.0.lcssa.i = phi i64 [ %i.dd, %_ZN4LIEF5alignEmm.exit21 ], [ %.sroa.speculated.i.i, %.lr.ph.i ] ; 3 uses
  %i.dr = icmp eq i32 %i.dc, 0
  br i1 %i.dr, label %_ZN4LIEF5alignEmm.exit26, label %bb.j

bb.j:                                             ; preds = %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNS4_6Binary11add_sectionERKS5_E3$_0ET0_T_SJ_SI_T1_.exit"
  %i.ds = urem i64 %.0.lcssa.i, %i.dd             ; 2 uses
  %.not.i23 = icmp eq i64 %i.ds, 0
  %i.dt = sub nuw nsw i64 %i.dd, %i.ds
  %i.du = select i1 %.not.i23, i64 0, i64 %i.dt
  %.0.i24 = add i64 %i.du, %.0.lcssa.i
  br label %_ZN4LIEF5alignEmm.exit26

_ZN4LIEF5alignEmm.exit26:                         ; preds = %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNS4_6Binary11add_sectionERKS5_E3$_0ET0_T_SJ_SI_T1_.exit", %bb.j
  %.1.i25 = phi i64 [ %.0.i24, %bb.j ], [ %.0.lcssa.i, %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEmZNS4_6Binary11add_sectionERKS5_E3$_0ET0_T_SJ_SI_T1_.exit" ]
  %i.dv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  %i.dw = call noundef i32 @_ZNK4LIEF2PE7Section18pointerto_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ab) #25
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4LIEF5alignEmm.exit26
  %i.dy = and i64 %.1.i20, 4294967295
  %i.dz = load ptr, ptr %i.ab, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 noundef %i.dy) #25, !inline_history !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4LIEF5alignEmm.exit26
  %i.ec = call noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ab) #25
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ee = and i64 %.1.i, 4294967295
  %i.ef = load ptr, ptr %i.ab, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 noundef %i.ee) #25, !inline_history !170
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ei = load ptr, ptr %i.ab, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call noundef i64 %i.ek(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #25
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %i.ab, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 noundef %.1.i25) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ab, i64 112 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.at, ptr %i.eq, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.et = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.eu = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3                 ; 2 uses
  %.not = icmp ult i64 %i.ey, 65535
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.fa = load i32, ptr %i.b, align 8
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.b, align 8
  %i.fc = trunc nuw i64 %i.ey to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.fc, ptr %i.fd, align 8
  %i.fe = load i32, ptr %i.bi, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.ff, 24
  %i.fh = load i16, ptr %i.bl, align 8
  %i.fi = icmp eq i16 %i.fh, 267
  %i.fj = select i1 %i.fi, i64 96, i64 112
  %i.fk = add nuw nsw i64 %i.fg, %i.fj            ; 2 uses
  %.not13.i = icmp eq ptr %i.eu, %i.et
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i27

._crit_edge.i:                                    ; preds = %.lr.ph.i27, %bb.t
  %.0.lcssa.i29 = phi i64 [ %i.fk, %bb.t ], [ %.sroa.speculated.i, %.lr.ph.i27 ] ; 3 uses
  %i.fl = load i32, ptr %i.db, align 8            ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.fn = zext i32 %i.fl to i64                   ; 2 uses
  %i.fo = urem i64 %.0.lcssa.i29, %i.fn           ; 2 uses
  %.not.i.i30 = icmp eq i64 %i.fo, 0
  %i.fp = sub nuw nsw i64 %i.fn, %i.fo
  %i.fq = select i1 %.not.i.i30, i64 0, i64 %i.fp
  %.0.i.i = add i64 %i.fq, %.0.lcssa.i29
  br label %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit

.lr.ph.i27:                                       ; preds = %bb.t, %.lr.ph.i27
  %.015.i = phi i64 [ %.sroa.speculated.i, %.lr.ph.i27 ], [ %i.fk, %bb.t ]
  %.sroa.06.014.i = phi ptr [ %i.gb, %.lr.ph.i27 ], [ %i.eu, %bb.t ] ; 3 uses
  %i.fr = load ptr, ptr %.sroa.06.014.i, align 8  ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call noundef i64 %i.fu(ptr noundef nonnull align 8 dereferenceable(64) %i.fr) #25, !inline_history !51
  %i.fw = load ptr, ptr %.sroa.06.014.i, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = zext i32 %i.fy to i64
  %i.ga = add i64 %i.fv, %i.fz
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %.015.i, i64 %i.ga) ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 8 ; 2 uses
  %.not.i28 = icmp eq ptr %i.gb, %i.et
  br i1 %.not.i28, label %._crit_edge.i, label %.lr.ph.i27

_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit:         ; preds = %._crit_edge.i, %bb.u
  %.1.i.i32 = phi i64 [ %.0.i.i, %bb.u ], [ %.0.lcssa.i29, %._crit_edge.i ]
  %i.gc = trunc i64 %.1.i.i32 to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.gc, ptr %i.gd, align 8
  %i.ge = load i32, ptr %i.bi, align 4
  %i.gf = add i32 %i.ge, 24
  %i.gg = load i16, ptr %i.bl, align 8
  %i.gh = icmp eq i16 %i.gg, 267
  %i.gi = select i1 %i.gh, i32 96, i32 112
  %i.gj = add i32 %i.gf, %i.gi
  %i.gk = load ptr, ptr %i.br, align 8
  %i.gl = load ptr, ptr %i.bq, align 8
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = and i32 %i.gp, -8
  %i.gr = add i32 %i.gj, %i.gq
  %i.gs = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.gt = load ptr, ptr %i.be, align 8            ; 7 uses
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64               ; 3 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 4 uses
  %i.gx = lshr exact i64 %i.gw, 3
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = mul i32 %i.gy, 40
  %i.ha = add i32 %i.gr, %i.gz                    ; 3 uses
  %i.hb = load i32, ptr %i.au, align 4            ; 3 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit
  %i.hd = urem i32 %i.ha, %i.hb                   ; 2 uses
  %.not.i.i33 = icmp eq i32 %i.hd, 0
  %i.he = sub nuw i32 %i.hb, %i.hd
  %i.hf = select i1 %.not.i.i33, i32 0, i32 %i.he
  %.0.i.i34 = add i32 %i.hf, %i.ha
  br label %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit

_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit:       ; preds = %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit, %bb.v
  %.1.i.i36 = phi i32 [ %.0.i.i34, %bb.v ], [ %i.ha, %_ZNK4LIEF2PE6Binary12virtual_sizeEv.exit ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %.1.i.i36, ptr %i.hg, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8
  %.not.i.i37 = icmp eq ptr %i.gs, %i.hi
  br i1 %.not.i.i37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit
  %i.hj = ptrtoint ptr %i.ab to i64
  store i64 %i.hj, ptr %i.gs, align 8
  %i.hk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.hl, ptr %i.bg, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.x:                                             ; preds = %_ZNK4LIEF2PE6Binary14sizeof_headersEv.exit
  %i.hm = icmp eq i64 %i.gw, 9223372036854775800
  br i1 %i.hm, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.hn = ashr exact i64 %i.gw, 3                 ; 3 uses
  %.sroa.speculated.i.i40 = call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i40, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = call i64 @llvm.umin.i64(i64 %i.ho, i64 1152921504606846975)
  %i.hr = select i1 %i.hp, i64 1152921504606846975, i64 %i.hq ; 3 uses
  %.not.i.i41 = icmp ne i64 %i.hr, 0
  call void @llvm.assume(i1 %.not.i.i41)
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #27 ; 7 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.gw
  %i.hv = ptrtoint ptr %i.ab to i64
  store i64 %i.hv, ptr %i.hu, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.gt, %i.gs
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.hw = add i64 %i.gu, -8
  %i.hx = sub i64 %i.hw, %i.gv                    ; 2 uses
  %i.hy = lshr i64 %i.hx, 3
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hx, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader84, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.hz, 4611686018427387900     ; 3 uses
  %i.ia = shl i64 %n.vec, 3                       ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ht, i64 %i.ia  ; 2 uses
  %i.ic = getelementptr i8, ptr %i.gt, i64 %i.ia
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.id = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ht, i64 %i.id ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.gt, i64 %i.id ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ie = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep81, align 8, !alias.scope !181, !noalias !180
  %wide.load82 = load <2 x i64>, ptr %i.ie, align 8, !alias.scope !181, !noalias !180
  %i.if = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !180, !noalias !181
  store <2 x i64> %wide.load82, ptr %i.if, align 8, !alias.scope !180, !noalias !181
  %i.ig = getelementptr i8, ptr %next.gep81, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep81, align 8, !alias.scope !181, !noalias !180
  store <2 x ptr> splat (ptr null), ptr %i.ig, align 8, !alias.scope !181, !noalias !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader84

.lr.ph.i.i.i.i.preheader84:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.preheader ], [ %i.ib, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.preheader ], [ %i.ic, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader84, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ik, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader84 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader84 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ii = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !181, !noalias !180
  store i64 %i.ii, ptr %.012.i.i.i.i, align 8, !alias.scope !180, !noalias !181
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !181, !noalias !180
  %i.ij = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.ij, %i.gs
  br i1 %.not.i.i.i.i42, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !175

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ht, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ib, %middle.block ], [ %i.ik, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.gt, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.im = load ptr, ptr %i.hh, align 8
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.in, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.io) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.z
  store ptr %i.ht, ptr %i.be, align 8
  store ptr %i.il, ptr %i.bg, align 8
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.ip, ptr %i.hh, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.w, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.iq = phi ptr [ %i.hk, %bb.w ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.ir = load ptr, ptr %i.iq, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %bb.s
  %.sroa.045.0 = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ], [ %i.ab, %bb.s ] ; 3 uses
  %.0 = phi ptr [ %i.ir, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ], [ null, %bb.s ]
  %i.is = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i39 = icmp eq ptr %.sroa.045.0, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.iy = load ptr, ptr %.sroa.045.0, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.045.0) #25, !inline_history !176
  br label %_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE7SectionEEclEPS2_.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  ret ptr %.0
}

declare noundef i32 @_ZNK4LIEF2PE7Section15sizeof_raw_dataEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4LIEF2PE6Binary14add_relocationERKNS0_10RelocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !194 ; 14 uses
  tail call void @_ZN4LIEF2PE10RelocationC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1) #25, !noalias !194
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noalias !195 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !196 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %.not16 = icmp eq ptr %i.e, %i.c
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.47.018.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.47.018.epil = phi ptr [ %i.m, %.lr.ph.epil ], [ %.sroa.47.018.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
end_hunk_1
