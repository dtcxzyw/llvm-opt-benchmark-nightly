Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExecutionUtils?download=true
inline.NumInlined: 4246
inline.NumDeleted: 2276
begin_hunk_0_@_ZN4llvm3orc14CtorDtorRunner3runEv:bb.a
  %.011.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %.sroa.058.189, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %i.bo = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127 ; 3 uses
  store ptr %i.bo, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.bp = ptrtoint ptr %i.bo to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.bp, -1
  %i.bq = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.bq, label %bb.k, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = atomicrmw add ptr %i.br, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !150
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !150
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, %.sroa.15.191
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i33, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !154

.lr.ph.i.i.i33:                                   ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i ], [ %.sroa.058.189, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.by = load ptr, ptr %.05.i.i.i, align 8, !tbaa !127 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.bz, -1
  %i.ca = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.ca, label %bb.l, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i33
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.cd, %.sroa.15.191
  br i1 %.not.i.i.i34, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.loopexit, label %.lr.ph.i.i.i33, !llvm.loop !146

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.loopexit: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26.i.thread
  %i.cf = phi ptr [ %i.bn, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26.i.thread ], [ %i.ce, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.loopexit ]
  %.not.i27.i = icmp eq ptr %.sroa.058.189, null
  br i1 %.not.i27.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.189, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i, %bb.m
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.h
  %.sroa.058.2 = phi ptr [ %i.bk, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %.sroa.058.189, %bb.h ] ; 2 uses
  %.sroa.9.2 = phi ptr [ %i.cf, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.15.2 = phi ptr [ %i.cg, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %.sroa.15.191, %bb.h ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.051.092, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.ch, %i.ar
  br i1 %.not72, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !131 ; 2 uses
  %.not70111 = icmp eq ptr %i.ci, %i.d
  br i1 %.not70111, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.o

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge110, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !118
  call void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.cm)
  store ptr null, ptr %i.cl, align 8, !tbaa !118
  store ptr %i.d, ptr %i.b, align 8, !tbaa !131
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.d, ptr %i.cn, align 8, !tbaa !155
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.co, align 8, !tbaa !156
  %.pre126 = load i8, ptr %i.al, align 8
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph114, %._crit_edge110
  %.sroa.044.0112 = phi ptr [ %i.ci, %.lr.ph114 ], [ %i.ct, %._crit_edge110 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.044.0112, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !149 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.044.0112, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !149 ; 2 uses
  %.not71106 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not71106, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, %bb.o
  %i.ct = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.044.0112) #24 ; 2 uses
  %.not70 = icmp eq ptr %i.ct, %i.d
  br i1 %.not70, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.o

.lr.ph109:                                        ; preds = %bb.o, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit
  %.sroa.040.0107 = phi ptr [ %i.eb, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit ], [ %i.cq, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !157, !noalias !160
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !165, !noalias !160 ; 2 uses
  %i.cw = load i32, ptr %i.ck, align 4, !tbaa !166, !noalias !160 ; 3 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph109
  %i.cy = add i32 %i.cw, -1                       ; 2 uses
  %i.cz = load ptr, ptr %.sroa.040.0107, align 8, !tbaa !127 ; 2 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = mul i64 %i.da, -4658895280553007687     ; 2 uses
  %i.dc = lshr i64 %i.db, 31
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = trunc i64 %i.dd to i32
  %i.df = and i32 %i.cy, %i.de                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i, label %.loopexit.i, !prof !167

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.pn = phi i64 [ %i.ds, %bb.q ], [ %i.dg, %bb.p ]
  %.024.i.i = phi i32 [ %i.dr, %bb.q ], [ %i.df, %bb.p ]
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.pn ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !127
  %i.dp = icmp eq ptr %i.cz, %i.do
  br i1 %i.dp, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, label %bb.q, !prof !168

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.dq = add nuw i32 %.024.i.i, 1
  %i.dr = and i32 %i.dq, %i.cy                    ; 3 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = lshr i64 %i.ds, 5
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !25
  %i.dw = and i32 %i.dr, 31
  %i.dx = lshr i32 %i.dv, %i.dw
  %i.dy = trunc i32 %i.dx to i1
  br i1 %i.dy, label %.lr.ph.i.i, label %.loopexit.i, !prof !169, !llvm.loop !170

.loopexit.i:                                      ; preds = %bb.p, %.lr.ph109, %bb.q
  %i.dz = shl i32 %i.cw, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.dz)
  unreachable

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.pre125 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !171
  %i.ea = inttoptr i64 %.pre125 to ptr
  call void %i.ea() #21
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.040.0107, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.eb, %i.cs
  br i1 %.not71, label %._crit_edge110, label %.lr.ph109

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  %i.ec = load i64, ptr %2, align 8, !tbaa !173, !noalias !175
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr null, ptr %2, align 8, !tbaa !173, !noalias !175
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %_ZN4llvm5ErrorD2Ev.exit
  %i.ee = phi i8 [ %i.am, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ %.pre126, %_ZN4llvm5ErrorD2Ev.exit ]
  %storemerge = phi ptr [ %i.ed, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !178
  %i.ef = trunc i8 %i.ee to i1
  br i1 %i.ef, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !166 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit31, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.s
  %i.ej = load ptr, ptr %2, align 8, !tbaa !157
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !165
  %i.em = zext i32 %i.eh to i64
  %i.en = add nuw nsw i64 %i.em, 31
  %i.eo = lshr i64 %i.en, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.er = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.t

bb.t:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.eq, %.lr.ph.i.i.i ], [ %i.fc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.es = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.et = or disjoint i32 %i.es, %i.er
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !127 ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.ex, -1
  %i.ey = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ey, label %bb.u, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.fb = add i32 %.0.i3.i.i.i, -1
  %i.fc = and i32 %i.fb, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.t, !llvm.loop !180

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i19 = icmp eq i64 %indvars.iv.next.i.i.i, %i.eo
  br i1 %.not.i.i.i.i19, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i20 = load i32, ptr %i.eg, align 4, !tbaa !166 ; 2 uses
  %i.fd = icmp eq i32 %.pr.i.i20, 0
  br i1 %i.fd, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit31, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.fe = load ptr, ptr %2, align 8, !tbaa !157
  %i.ff = zext i32 %.pr.i.i20 to i64              ; 2 uses
  %i.fg = mul nuw nsw i64 %i.ff, 24
  %i.fh = add nuw nsw i64 %i.ff, 31
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = and i64 %i.fi, 1073741820
  %i.fk = add nuw nsw i64 %i.fj, %i.fg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fe, i64 noundef %i.fk, i64 noundef 8) #21
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit31

bb.w:                                             ; preds = %bb.r
  %i.fl = load ptr, ptr %2, align 8, !tbaa !173   ; 3 uses
  %.not.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit31, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.w
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !182
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl) #21, !inline_history !184
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit31

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit31:         ; preds = %bb.s, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.v, %bb.w, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare void @_ZN4llvm3orc16ExecutionSession6lookupERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS7_EENS0_15SymbolLookupSetENS0_10LookupKindENS0_11SymbolStateESt8functionIFvRKNS_8DenseMapIS5_NS_8DenseSetINS0_15SymbolStringPtrENS_12DenseMapInfoISI_vEEEENSJ_IS5_vEENS_6detail12DenseMapPairIS5_SL_EEEEEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), i32 noundef, i8 noundef zeroext, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc28LocalCXXRuntimeOverridesBase14runDestructorsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !187   ; 2 uses
  %.pre12 = load ptr, ptr %i.b, align 8, !tbaa !189
  %i.d = icmp eq ptr %.pre12, %.pre
  br i1 %i.d, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.pre, ptr %i.b, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.07.011 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.sroa.07.011, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192
  tail call void %i.e(ptr noundef %i.g) #21
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm3orc28LocalCXXRuntimeOverridesBase17CXAAtExitOverrideEPFvPvES2_S2_(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !187    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %0, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx3, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !194
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !198

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !193
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #23
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.r, ptr %2, align 8, !tbaa !187
  store ptr %i.v, ptr %i.a, align 8, !tbaa !189
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !193
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc24LocalCXXRuntimeOverrides6enableERNS0_8JITDylibERNS0_17MangleAndInternerE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::DenseMap.180", align 16 ; 9 uses
  %5 = alloca %class.anon.595, align 8            ; 6 uses
  %6 = alloca %"class.llvm::DenseMap.180", align 16 ; 12 uses
  %7 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %8 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.198", align 8 ; 6 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN4llvm3orc17MangleAndInternerclENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.4, i64 12) #21
  %i.b = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.b, 0 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i64 %i.a, ptr %i.c, align 8, !tbaa !199
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i16 4096, ptr %.sroa.443.0..sroa_idx, align 8
  %i.d = load ptr, ptr %7, align 8, !tbaa !127    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %notsub.i.i.i = add i64 %i.e, -1
  %i.f = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.f, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = atomicrmw sub ptr %i.g, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN4llvm3orc17MangleAndInternerclENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.5, i64 12) #21
  %i.i = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %.fca.0.extract.i5 = extractvalue { ptr, i8 } %i.i, 0 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i5, i64 8
  store i64 ptrtoint (ptr @_ZN4llvm3orc28LocalCXXRuntimeOverridesBase17CXAAtExitOverrideEPFvPvES2_S2_ to i64), ptr %i.j, align 8, !tbaa !199
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i5, i64 16
  store i16 4096, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = load ptr, ptr %8, align 8, !tbaa !127    ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %notsub.i.i.i6 = add i64 %i.l, -1
  %i.m = icmp ult i64 %notsub.i.i.i6, -32
  br i1 %i.m, label %bb.c, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit7

bb.c:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit7

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit7:          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.q, align 16, !tbaa !25
  store i32 0, ptr %i.q, align 16, !tbaa !25
  store i32 0, ptr %i.r, align 4, !tbaa !25
  %i.v = load <2 x ptr>, ptr %6, align 16, !tbaa !144
  store ptr null, ptr %6, align 16, !tbaa !203
  store ptr null, ptr %i.p, align 8, !tbaa !122
  %i.w = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !200 ; 2 uses
  store <2 x ptr> %i.v, ptr %4, align 16, !tbaa !144, !noalias !200
  store <2 x i32> %i.u, ptr %i.s, align 16, !tbaa !25, !noalias !200
  call void @_ZN4llvm3orc34AbsoluteSymbolsMaterializationUnitC1ENS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr nofree noundef nonnull align 8 dereferenceable(24) %4) #21, !noalias !200
  store ptr %i.w, ptr %9, align 8, !tbaa !204, !alias.scope !200
  %i.x = load i32, ptr %i.t, align 4, !tbaa !166, !noalias !200 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit7
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load ptr, ptr %4, align 16, !tbaa !157, !noalias !200
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !165, !noalias !200
  %i.ac = zext i32 %i.x to i64
  %i.ad = add nuw nsw i64 %i.ac, 31
  %i.ae = lshr i64 %i.ad, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25, !noalias !200 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ah = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i ], [ %i.as, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ai = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !127, !noalias !200 ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.an, -1
  %i.ao = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ao, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 seq_cst, align 8, !noalias !200 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ar = add i32 %.0.i3.i.i.i, -1
  %i.as = and i32 %i.ar, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !180

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i25 = icmp eq i64 %indvars.iv.next.i.i.i, %i.ae
  br i1 %.not.i.i.i.i25, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.t, align 4, !tbaa !166, !noalias !200 ; 2 uses
  %i.at = icmp eq i32 %.pr.i.i, 0
  br i1 %i.at, label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.au = load ptr, ptr %4, align 16, !tbaa !157, !noalias !200
  %i.av = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 24
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #21, !noalias !200
  br label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit7, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr null, ptr %10, align 8, !tbaa !206
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.bb = load ptr, ptr %9, align 8, !tbaa !204, !noalias !207
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !210, !noalias !207
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, label %bb.g

_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread: ; preds = %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %0, align 8, !tbaa !178, !alias.scope !207
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.g:                                             ; preds = %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !76, !noalias !207, !nonnull !74, !align !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !207
  store ptr %2, ptr %5, align 8, !tbaa !213, !noalias !207
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %9, ptr %i.bh, align 8, !tbaa !217, !noalias !207
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %10, ptr %i.bi, align 8, !tbaa !218, !noalias !207
  %i.bj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.bg) #21, !noalias !219 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bj) #25, !noalias !219
  unreachable

_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit: ; preds = %bb.g
  call void @_ZZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.bk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.bg) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !207
  %.pre = load ptr, ptr %10, align 8, !tbaa !206  ; 4 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit
  %i.bl = atomicrmw sub ptr %.pre, i32 1 acq_rel, align 4
  %.not.i.i.i.i8 = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i.i.i8, label %bb.j, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pre) #21
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.pre, i64 noundef 16) #23
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, %bb.i, %bb.j
  %i.bm = load ptr, ptr %9, align 8, !tbaa !204   ; 3 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !182
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.bm) #21, !inline_history !222
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bq = load i32, ptr %i.r, align 4, !tbaa !166 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit24, label %.lr.ph7.preheader.i.i9

.lr.ph7.preheader.i.i9:                           ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.bs = load ptr, ptr %6, align 16, !tbaa !157
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !165
  %i.bu = zext i32 %i.bq to i64
  %i.bv = add nuw nsw i64 %i.bu, 31
  %i.bw = lshr i64 %i.bv, 5
  br label %.lr.ph7.i.i10

.lr.ph7.i.i10:                                    ; preds = %._crit_edge.i.i19, %.lr.ph7.preheader.i.i9
  %indvars.iv.i.i11 = phi i64 [ 0, %.lr.ph7.preheader.i.i9 ], [ %indvars.iv.next.i.i20, %._crit_edge.i.i19 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i.i11
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i12 = icmp eq i32 %i.by, 0
  br i1 %.not11.i2.i.i12, label %._crit_edge.i.i19, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph7.i.i10
  %indvars.iv.tr.i.i14 = trunc nuw i64 %indvars.iv.i.i11 to i32
  %i.bz = shl nuw i32 %indvars.iv.tr.i.i14, 5
  br label %bb.k

bb.k:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i17, %.lr.ph.i.i13
  %.0.i3.i.i15 = phi i32 [ %i.by, %.lr.ph.i.i13 ], [ %i.ck, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i17 ] ; 3 uses
  %i.ca = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i15, i1 true)
  %i.cb = or disjoint i32 %i.ca, %i.bz
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !127 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %notsub.i.i.i.i.i.i16 = add i64 %i.cf, -1
  %i.cg = icmp ult i64 %notsub.i.i.i.i.i.i16, -32
  br i1 %i.cg, label %bb.l, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i17

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i17

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i17: ; preds = %bb.l, %bb.k
  %i.cj = add i32 %.0.i3.i.i15, -1
  %i.ck = and i32 %i.cj, %.0.i3.i.i15             ; 2 uses
  %.not11.i.i.i18 = icmp eq i32 %i.ck, 0
  br i1 %.not11.i.i.i18, label %._crit_edge.i.i19, label %bb.k, !llvm.loop !180

._crit_edge.i.i19:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i17, %.lr.ph7.i.i10
  %indvars.iv.next.i.i20 = add nuw nsw i64 %indvars.iv.i.i11, 1 ; 2 uses
  %.not.i.i.i21 = icmp eq i64 %indvars.iv.next.i.i20, %i.bw
  br i1 %.not.i.i.i21, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i22, label %.lr.ph7.i.i10, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i22: ; preds = %._crit_edge.i.i19
  %.pr.i23 = load i32, ptr %i.r, align 4, !tbaa !166 ; 2 uses
  %i.cl = icmp eq i32 %.pr.i23, 0
  br i1 %i.cl, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit24, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i22
  %i.cm = load ptr, ptr %6, align 16, !tbaa !157
  %i.cn = zext i32 %.pr.i23 to i64                ; 2 uses
  %i.co = mul nuw nsw i64 %i.cn, 24
  %i.cp = add nuw nsw i64 %i.cn, 31
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = and i64 %i.cq, 1073741820
  %i.cs = add nuw nsw i64 %i.cr, %i.co
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cm, i64 noundef %i.cs, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit24

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit24: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i22, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc23ItaniumCXAAtExitSupport14registerAtExitEPFvPvES2_S2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !144
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.d, 0 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !223  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226
  %.not.i.i3 = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr %1, ptr %i.g, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !144
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !223
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.f, align 8, !tbaa !223
  br label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !227  ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775792
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487)
  %i.u = select i1 %i.s, i64 576460752303423487, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 3 uses
  store ptr %1, ptr %i.x, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx5, align 8, !tbaa !144
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !226
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ac) #23
  br label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !227
  store ptr %i.z, ptr %i.f, align 8, !tbaa !223
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !226
  br label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #21 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc23ItaniumCXAAtExitSupport10runAtExitsEPv(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.anon.626, align 1            ; 3 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228, !noalias !231 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240, !noalias !231 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !241, !noalias !231 ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25, !noalias !242
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !167

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.o, %bb.c ]
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144, !noalias !242
  %i.z = icmp eq ptr %1, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E4findEPKv.exit.loopexit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25, !noalias !242
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
end_hunk_0
begin_hunk_1_@_ZN4llvm3sys14DynamicLibrary19getPermanentLibraryEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
declare ptr @_ZN4llvm3sys14DynamicLibrary19getPermanentLibraryEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc29DynamicLibrarySearchGenerator13tryToGenerateERNS0_11LookupStateENS0_10LookupKindERNS0_8JITDylibENS0_19JITDylibLookupFlagsERKNS0_15SymbolLookupSetE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(217) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(272) %4, i32 %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %"class.llvm::DenseMap.180", align 16 ; 9 uses
  %8 = alloca %class.anon.595, align 8            ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.llvm::DenseMap.180", align 16 ; 18 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.llvm::DenseMap.180", align 16 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.198", align 8 ; 6 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !265
  %i.d = icmp ne i8 %i.c, 0                       ; 3 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !292    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !292  ; 2 uses
  %.not8688 = icmp eq ptr %i.e, %i.g
  br i1 %.not8688, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = zext i1 %i.d to i64
  %.neg = sext i1 %i.d to i64
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre90 = load i32, ptr %.phi.trans.insert, align 16, !tbaa !293 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.p = icmp eq i32 %.pre90, 0
  br i1 %i.p, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.083.089 = phi ptr [ %i.e, %.lr.ph ], [ %i.au, %bb.l ] ; 5 uses
  %i.q = load ptr, ptr %.sroa.083.089, align 8, !tbaa !127 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !294
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !136
  %.not.i.i.not = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not, label %bb.d, label %_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit

_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !259
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.083.089) #21, !inline_history !296
  br i1 %i.v, label %_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit._crit_edge, label %bb.l

_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit._crit_edge: ; preds = %_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit
  %.pre.pre = load ptr, ptr %.sroa.083.089, align 8, !tbaa !127
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit._crit_edge, %bb.c
  %.pre = phi ptr [ %.pre.pre, %_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit._crit_edge ], [ %i.q, %bb.c ] ; 3 uses
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = load i8, ptr %i.b, align 8, !tbaa !265
  %.not = icmp eq i8 %i.x, %i.y
  br i1 %.not, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aa = load i64, ptr %.pre, align 8, !tbaa !294
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.k ; 2 uses
  %i.ac = add i64 %i.aa, %.neg                    ; 4 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !199
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.ae, ptr %10, align 8, !tbaa !291
  %i.af = load i64, ptr %i.a, align 8, !tbaa !199
  store i64 %i.af, ptr %i.l, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %i.ae, %bb.g ], [ %i.l, %bb.f ] ; 2 uses
  switch i64 %i.ac, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !28
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !199 ; 2 uses
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !275
  %i.aj = load ptr, ptr %10, align 8, !tbaa !291
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.al = load ptr, ptr %10, align 8, !tbaa !291
  %i.am = call noundef ptr @_ZN4llvm3sys14DynamicLibrary18getAddressOfSymbolEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.al) #21 ; 2 uses
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.083.089)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ao, 0 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !199
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i16 4096, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.aq = load ptr, ptr %10, align 8, !tbaa !291  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.l
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.l, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZNKSt8functionIFbRKN4llvm3orc15SymbolStringPtrEEEclES4_.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.083.089, i64 16 ; 2 uses
  %.not86 = icmp eq ptr %i.au, %i.g
  br i1 %.not86, label %._crit_edge, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

bb.m:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !297 ; 2 uses
  %.not87 = icmp eq ptr %i.aw, null
  br i1 %.not87, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = load <2 x ptr>, ptr %9, align 16, !tbaa !144
  store ptr null, ptr %9, align 16, !tbaa !203
  store <2 x ptr> %i.az, ptr %11, align 16, !tbaa !144
  store ptr null, ptr %i.ay, align 8, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.pre90, ptr %i.ba, align 16, !tbaa !25
  store i32 0, ptr %i.o, align 16, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !25
  store i32 0, ptr %i.bc, align 4, !tbaa !25
  call void %i.aw(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(24) %11) #21, !inline_history !298
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !166 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bh = load ptr, ptr %11, align 16, !tbaa !157
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !165
  %i.bj = zext i32 %i.be to i64
  %i.bk = add nuw nsw i64 %i.bj, 31
  %i.bl = lshr i64 %i.bk, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i27, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i27 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i27, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bo = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.o

bb.o:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.bn, %.lr.ph.i.i ], [ %i.bz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bq = or disjoint i32 %i.bp, %i.bo
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !127 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %notsub.i.i.i.i.i.i = add i64 %i.bu, -1
  %i.bv = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.bv, label %bb.p, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.p, %bb.o
  %i.by = add i32 %.0.i3.i.i, -1
  %i.bz = and i32 %i.by, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i27, label %bb.o, !llvm.loop !180

._crit_edge.i.i27:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bl
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i27
  %.pr.i = load i32, ptr %i.bb, align 4, !tbaa !166 ; 2 uses
  %i.ca = icmp eq i32 %.pr.i, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.cb = load ptr, ptr %11, align 16, !tbaa !157
  %i.cc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 24
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.o, align 16, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  store i32 0, ptr %i.cj, align 4, !tbaa !25
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.cl = load <2 x ptr>, ptr %9, align 16, !tbaa !144
  store ptr null, ptr %9, align 16, !tbaa !203
  store ptr null, ptr %i.ci, align 8, !tbaa !122
  %i.cm = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !299 ; 2 uses
  store <2 x ptr> %i.cl, ptr %7, align 16, !tbaa !144, !noalias !299
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.pre90, ptr %i.cn, align 16, !tbaa !25, !noalias !299
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  store i32 %i.ck, ptr %i.co, align 4, !tbaa !25, !noalias !299
  call void @_ZN4llvm3orc34AbsoluteSymbolsMaterializationUnitC1ENS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr nofree noundef nonnull align 8 dereferenceable(24) %7) #21, !noalias !299
  store ptr %i.cm, ptr %12, align 8, !tbaa !204, !alias.scope !299
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !166, !noalias !299 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cs = load ptr, ptr %7, align 16, !tbaa !157, !noalias !299
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !165, !noalias !299
  %i.cu = zext i32 %i.cp to i64
  %i.cv = add nuw nsw i64 %i.cu, 31
  %i.cw = lshr i64 %i.cv, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !25, !noalias !299 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.cz = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.s

bb.s:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.cy, %.lr.ph.i.i.i ], [ %i.dk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.da = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.db = or disjoint i32 %i.da, %i.cz
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !127, !noalias !299 ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.df, -1
  %i.dg = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.dg, label %bb.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = atomicrmw sub ptr %i.dh, i64 1 seq_cst, align 8, !noalias !299 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.dj = add i32 %.0.i3.i.i.i, -1
  %i.dk = and i32 %i.dj, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.s, !llvm.loop !180

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i62 = icmp eq i64 %indvars.iv.next.i.i.i, %i.cw
  br i1 %.not.i.i.i.i62, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.co, align 4, !tbaa !166, !noalias !299 ; 2 uses
  %i.dl = icmp eq i32 %.pr.i.i, 0
  br i1 %i.dl, label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.dm = load ptr, ptr %7, align 16, !tbaa !157, !noalias !299
  %i.dn = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.do = mul nuw nsw i64 %i.dn, 24
  %i.dp = add nuw nsw i64 %i.dn, 31
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = and i64 %i.dq, 1073741820
  %i.ds = add nuw nsw i64 %i.dr, %i.do
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dm, i64 noundef %i.ds, i64 noundef 8) #21, !noalias !299
  br label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.r, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr null, ptr %13, align 8, !tbaa !206
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.dt = load ptr, ptr %12, align 8, !tbaa !204, !noalias !302
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !210, !noalias !302
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, label %bb.v

_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread: ; preds = %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %0, align 8, !tbaa !178, !alias.scope !302
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.v:                                             ; preds = %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !76, !noalias !302, !nonnull !74, !align !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !302
  store ptr %4, ptr %8, align 8, !tbaa !213, !noalias !302
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %12, ptr %i.dz, align 8, !tbaa !217, !noalias !302
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %13, ptr %i.ea, align 8, !tbaa !218, !noalias !302
  %i.eb = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.dy) #21, !noalias !305 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_system_errori(i32 noundef %i.eb) #25, !noalias !305
  unreachable

_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit: ; preds = %bb.v
  call void @_ZZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %i.ec = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.dy) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !302
  %.pre91 = load ptr, ptr %13, align 8, !tbaa !206 ; 4 uses
  %.not.i.i28 = icmp eq ptr %.pre91, null
  br i1 %.not.i.i28, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit
  %i.ed = atomicrmw sub ptr %.pre91, i32 1 acq_rel, align 4
  %.not.i.i.i.i29 = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i.i.i29, label %bb.y, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pre91) #21
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.pre91, i64 noundef 16) #23
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, %bb.x, %bb.y
  %i.ee = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i = icmp eq ptr %i.ee, null
  br i1 %.not.i, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit45, label %_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !182
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(64) %i.ee) #21, !inline_history !222
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit45

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.n, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit45, %_ZN4llvm5ErrorD2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !166 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit61, label %.lr.ph7.preheader.i.i46

.lr.ph7.preheader.i.i46:                          ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.el = load ptr, ptr %9, align 16, !tbaa !157
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !165
  %i.eo = zext i32 %i.ej to i64
  %i.ep = add nuw nsw i64 %i.eo, 31
  %i.eq = lshr i64 %i.ep, 5
  br label %.lr.ph7.i.i47

.lr.ph7.i.i47:                                    ; preds = %._crit_edge.i.i56, %.lr.ph7.preheader.i.i46
  %indvars.iv.i.i48 = phi i64 [ 0, %.lr.ph7.preheader.i.i46 ], [ %indvars.iv.next.i.i57, %._crit_edge.i.i56 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i.i48
  %i.es = load i32, ptr %i.er, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i49 = icmp eq i32 %i.es, 0
  br i1 %.not11.i2.i.i49, label %._crit_edge.i.i56, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %.lr.ph7.i.i47
  %indvars.iv.tr.i.i51 = trunc nuw i64 %indvars.iv.i.i48 to i32
  %i.et = shl nuw i32 %indvars.iv.tr.i.i51, 5
  br label %bb.z

bb.z:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i54, %.lr.ph.i.i50
  %.0.i3.i.i52 = phi i32 [ %i.es, %.lr.ph.i.i50 ], [ %i.fe, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i54 ] ; 3 uses
  %i.eu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i52, i1 true)
  %i.ev = or disjoint i32 %i.eu, %i.et
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !127 ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %notsub.i.i.i.i.i.i53 = add i64 %i.ez, -1
  %i.fa = icmp ult i64 %notsub.i.i.i.i.i.i53, -32
  br i1 %i.fa, label %bb.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i54

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = atomicrmw sub ptr %i.fb, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i54

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i54: ; preds = %bb.aa, %bb.z
  %i.fd = add i32 %.0.i3.i.i52, -1
  %i.fe = and i32 %i.fd, %.0.i3.i.i52             ; 2 uses
  %.not11.i.i.i55 = icmp eq i32 %i.fe, 0
  br i1 %.not11.i.i.i55, label %._crit_edge.i.i56, label %bb.z, !llvm.loop !180

._crit_edge.i.i56:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i54, %.lr.ph7.i.i47
  %indvars.iv.next.i.i57 = add nuw nsw i64 %indvars.iv.i.i48, 1 ; 2 uses
  %.not.i.i.i58 = icmp eq i64 %indvars.iv.next.i.i57, %i.eq
  br i1 %.not.i.i.i58, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i59, label %.lr.ph7.i.i47, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i59: ; preds = %._crit_edge.i.i56
  %.pr.i60 = load i32, ptr %i.ei, align 4, !tbaa !166 ; 2 uses
  %i.ff = icmp eq i32 %.pr.i60, 0
  br i1 %i.ff, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit61, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i59
  %i.fg = load ptr, ptr %9, align 16, !tbaa !157
  %i.fh = zext i32 %.pr.i60 to i64                ; 2 uses
  %i.fi = mul nuw nsw i64 %i.fh, 24
  %i.fj = add nuw nsw i64 %i.fh, 31
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = and i64 %i.fk, 1073741820
  %i.fm = add nuw nsw i64 %i.fl, %i.fi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fg, i64 noundef %i.fm, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit61

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit61: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i59, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret void
}

declare noundef ptr @_ZN4llvm3sys14DynamicLibrary18getAddressOfSymbolEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator24loadAllObjectFileMembersERNS0_11ObjectLayerERNS0_8JITDylibE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::unique_function.237") align 8 captures(none) initializes((0, 16), (24, 40)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr %1, ptr %0, align 8, !tbaa !308
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !310
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEEC1IZNS_3orc32StaticLibraryDefinitionGenerator24loadAllObjectFileMembersERNSA_11ObjectLayerERNSA_8JITDylibEE3$_0SG_EET_NS8_8CalledAsIT0_EEENUlPKS8_S6_RS7_mE_8__invokeESM_S6_SN_m", ptr %i.a, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator4LoadERNS0_11ObjectLayerEPKcNS_15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEENS6_IFNS7_INS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionESC_EEE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.239") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(40) %3, ptr nofree noundef align 8 dereferenceable(40) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Expected.252", align 8 ; 8 uses
  %6 = alloca %"class.std::optional.258", align 8 ; 2 uses
  %7 = alloca %"class.std::unique_ptr.36", align 8 ; 3 uses
  %8 = alloca %"class.llvm::unique_function.237", align 8 ; 6 uses
  %9 = alloca %"class.llvm::unique_function.250", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313, !nonnull !74, !align !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !317
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !319
  call void @_ZN4llvm3orc16loadLinkableFileENS_9StringRefERKNS_6TripleENS0_12LoadArchivesESt8optionalIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.252") align 8 %5, ptr %2, i64 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef 2, ptr noundef nonnull byval(%"class.std::optional.258") align 8 %6) #21
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  %i.k = load i64, ptr %5, align 8, !tbaa !144    ; 2 uses
  br i1 %i.j, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.l = inttoptr i64 %i.k to ptr
  store ptr null, ptr %5, align 8, !tbaa !173, !noalias !321
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.m, align 8
  store ptr %i.l, ptr %0, align 8, !tbaa !173, !alias.scope !324
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  store i64 %i.k, ptr %7, align 8, !tbaa !327
  store ptr null, ptr %5, align 8, !tbaa !327
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !329  ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !144
  store <2 x ptr> %i.u, ptr %i.p, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %3) #21, !inline_history !330
  br label %_ZN4llvm15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEC2EOS8_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEC2EOS8_.exit

_ZN4llvm15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEC2EOS8_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !331  ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !144
  store <2 x ptr> %i.aa, ptr %i.v, align 8, !tbaa !144
  %.not.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEC2EOS8_.exit
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %4) #21, !inline_history !333
  br label %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit

bb.g:                                             ; preds = %_ZN4llvm15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEC2EOS8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit

_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  call void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator6CreateERNS0_11ObjectLayerESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EENS_15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEENS9_IFNSA_INS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionESF_EEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.239") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr nofree noundef nonnull align 8 dereferenceable(40) %8, ptr nofree noundef nonnull align 8 dereferenceable(40) %9)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !331 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i5, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit
  call void %i.ab(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %9) #21, !inline_history !334
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit: ; preds = %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit, %bb.h
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !329 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i6, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit
  call void %i.ac(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %8) #21, !inline_history !335
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, %bb.i
  %i.ad = load ptr, ptr %7, align 8, !tbaa !327   ; 3 uses
  %.not.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !182
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i, %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %5, align 8, !tbaa !144   ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i8, label %_ZN4llvm8ExpectedISt4pairISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS3_EENS_3orc16LinkableFileKindEEED2Ev.exit, label %_ZNSt4pairISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EENS1_3orc16LinkableFileKindEED2Ev.exit.sink.split.i

_ZNSt4pairISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EENS1_3orc16LinkableFileKindEED2Ev.exit.sink.split.i: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !182
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #21, !inline_history !337
  br label %_ZN4llvm8ExpectedISt4pairISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS3_EENS_3orc16LinkableFileKindEEED2Ev.exit

_ZN4llvm8ExpectedISt4pairISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS3_EENS_3orc16LinkableFileKindEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %_ZNSt4pairISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EENS1_3orc16LinkableFileKindEED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

declare void @_ZN4llvm3orc16loadLinkableFileENS_9StringRefERKNS_6TripleENS0_12LoadArchivesESt8optionalIS1_E(ptr dead_on_unwind writable sret(%"class.llvm::Expected.252") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef byval(%"class.std::optional.258") align 8) local_unnamed_addr #5

end_hunk_1
begin_hunk_2_@_ZN4llvm3orc32StaticLibraryDefinitionGenerator6CreateERNS0_11ObjectLayerESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EES4_INS_6object7ArchiveES6_ISA_EENS_15unique_functionIFNS_8ExpectedIbEERSA_NS_15MemoryBufferRefEmEEENSD_IFNSE_INS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionESH_EEE:bb.a
  %i.mq = extractvalue { ptr, i64 } %i.mo, 1
  %i.mr = load ptr, ptr %i.kv, align 8, !tbaa !317, !noalias !502
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !505, !noalias !510
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %33, ptr noundef nonnull align 8 dereferenceable(64) %i.mt, ptr %i.mp, i64 %i.mq)
  %i.mu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %.fca.0.extract.i138 = extractvalue { ptr, i8 } %i.mu, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i138, i64 8
  store i64 %i.mn, ptr %i.mv, align 8, !tbaa !199
  %i.mw = load ptr, ptr %33, align 8, !tbaa !127  ; 2 uses
  %i.mx = ptrtoint ptr %i.mw to i64
  %notsub.i.i.i = add i64 %i.mx, -1
  %i.my = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.my, label %bb.ah, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.na = atomicrmw sub ptr %i.mz, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.nb = load i8, ptr %i.kr, align 8
  %i.nc = trunc i8 %i.nb to i1
  br i1 %i.nc, label %bb.am, label %bb.ak

bb.aj:                                            ; preds = %bb.ac
  %i.nd = load i64, ptr %32, align 8, !tbaa !173, !noalias !513
  %i.ne = inttoptr i64 %i.nd to ptr
  store ptr null, ptr %32, align 8, !tbaa !173, !noalias !513
  %i.nf = or i8 %.promoted257, 1
  store i8 %i.nf, ptr %i.kw, align 8
  store ptr %i.ne, ptr %0, align 8, !tbaa !173, !alias.scope !516
  %i.ng = load i8, ptr %i.kr, align 8
  %i.nh = trunc i8 %i.ng to i1
  br i1 %i.nh, label %bb.an, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ni = load ptr, ptr %i.kx, align 8, !tbaa !393 ; 2 uses
  %.not.i.i.i139.jt0 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i139.jt0, label %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt0, label %_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt0

bb.al:                                            ; preds = %bb.aj
  %i.nj = load ptr, ptr %i.kx, align 8, !tbaa !393 ; 2 uses
  %.not.i.i.i139.jt1 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i139.jt1, label %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt1, label %_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt1

bb.am:                                            ; preds = %bb.ai
  %i.nk = load ptr, ptr %32, align 8, !tbaa !173  ; 2 uses
  %.not.i.i140.jt0 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i140.jt0, label %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt0, label %_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt0

bb.an:                                            ; preds = %bb.aj
  %i.nl = load ptr, ptr %32, align 8, !tbaa !173  ; 2 uses
  %.not.i.i140.jt1 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i140.jt1, label %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt1, label %_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt1

_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt0: ; preds = %bb.ak, %bb.am
  %.sink6.i.jt0 = phi ptr [ %i.nk, %bb.am ], [ %i.ni, %bb.ak ] ; 2 uses
  %.sink5.i.jt0 = phi i64 [ 8, %bb.am ], [ 16, %bb.ak ]
  %i.nm = load ptr, ptr %.sink6.i.jt0, align 8, !tbaa !182
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.sink5.i.jt0
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %.sink6.i.jt0) #21, !inline_history !519
  br label %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt0

_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt1: ; preds = %bb.al, %bb.an
  %.sink6.i.jt1 = phi ptr [ %i.nl, %bb.an ], [ %i.nj, %bb.al ] ; 2 uses
  %.sink5.i.jt1 = phi i64 [ 8, %bb.an ], [ 16, %bb.al ]
  %i.np = load ptr, ptr %.sink6.i.jt1, align 8, !tbaa !182
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sink5.i.jt1
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %.sink6.i.jt1) #21, !inline_history !519
  br label %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt1

_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt0: ; preds = %bb.ak, %_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt0, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.ns = call { ptr, i64 } @_ZNK4llvm6object7Archive6Symbol7getNextEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #21 ; 2 uses
  %i.nt = extractvalue { ptr, i64 } %i.ns, 0      ; 2 uses
  store ptr %i.nt, ptr %31, align 8, !tbaa !350
  %storemerge = extractvalue { ptr, i64 } %i.ns, 1 ; 2 uses
  store i64 %storemerge, ptr %i.kn, align 8
  %i.nu = icmp ne ptr %i.nt, %i.kl
  %i.nv = trunc i64 %storemerge to i32
  %i.nw = icmp ne i32 %i.nv, %.sroa.4176.8.extract.trunc
  %.not3.i = select i1 %i.nu, i1 true, i1 %i.nw
  br i1 %.not3.i, label %bb.ac, label %._crit_edge254

_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt1: ; preds = %bb.al, %_ZN4llvm6object7Archive5ChildD2Ev.exit.sink.split.i.jt1, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %._crit_edge254

._crit_edge254:                                   ; preds = %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt0, %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt1, %bb.ab
  %cond = phi i1 [ true, %bb.ab ], [ false, %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt1 ], [ true, %_ZN4llvm8ExpectedINS_6object7Archive5ChildEED2Ev.exit.jt0 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.nx = load ptr, ptr %29, align 8, !tbaa !178  ; 3 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %_ZN4llvm5ErrorD2Ev.exit142, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge254
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !182
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.nx) #21, !inline_history !520
  br label %_ZN4llvm5ErrorD2Ev.exit142

_ZN4llvm5ErrorD2Ev.exit142:                       ; preds = %._crit_edge254, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.oc = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !484 ; 2 uses
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit143, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit142
  %i.of = load ptr, ptr %28, align 8, !tbaa !487
  %i.og = zext i32 %i.od to i64                   ; 2 uses
  %i.oh = shl nuw nsw i64 %i.og, 4
  %i.oi = add nuw nsw i64 %i.og, 31
  %i.oj = lshr i64 %i.oi, 3
  %i.ok = and i64 %i.oj, 1073741820
  %i.ol = add nuw nsw i64 %i.ok, %i.oh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.of, i64 noundef %i.ol, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit143

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit143: ; preds = %_ZN4llvm5ErrorD2Ev.exit142, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br i1 %cond, label %bb.aq, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.aq:                                            ; preds = %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit143
  %i.om = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #22 ; 2 uses
  %i.on = load i64, ptr %2, align 8, !tbaa !327
  store i64 %i.on, ptr %34, align 8, !tbaa !327
  store ptr null, ptr %2, align 8, !tbaa !327
  %i.oo = load i64, ptr %3, align 8, !tbaa !350
  store i64 %i.oo, ptr %35, align 8, !tbaa !350
  store ptr null, ptr %3, align 8, !tbaa !350
  %i.op = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !331 ; 2 uses
  %i.ou = load <2 x ptr>, ptr %i.or, align 8, !tbaa !144
  store <2 x ptr> %i.ou, ptr %i.op, align 8, !tbaa !144
  %.not.i.i144 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i144, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 8 dereferenceable(40) %5) #21, !inline_history !333
  br label %_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 24, i1 false)
  br label %_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.as, %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.or, i8 0, i64 16, i1 false)
  %i.ov = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ow = load <2 x ptr>, ptr %27, align 16, !tbaa !144
  store ptr null, ptr %27, align 16, !tbaa !521
  store <2 x ptr> %i.ow, ptr %37, align 16, !tbaa !144
  store ptr null, ptr %i.ov, align 8, !tbaa !122
  %i.ox = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %37, i64 20 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.pb = load <2 x i32>, ptr %i.oy, align 16, !tbaa !25
  store i32 0, ptr %i.oy, align 16, !tbaa !25
  store <2 x i32> %i.pb, ptr %i.ox, align 16, !tbaa !25
  store i32 0, ptr %i.pa, align 4, !tbaa !25
  call void @_ZN4llvm3orc32StaticLibraryDefinitionGeneratorC1ERNS0_11ObjectLayerESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EES4_INS_6object7ArchiveES6_ISA_EENS_15unique_functionIFNS_8ExpectedINS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionENS_15MemoryBufferRefEEEENS_8DenseMapINS0_15SymbolStringPtrEmNS_12DenseMapInfoISO_vEENS_6detail12DenseMapPairISO_mEEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.om, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %34, ptr nofree noundef nonnull align 8 dereferenceable(8) %35, ptr nofree noundef nonnull align 8 dereferenceable(40) %36, ptr nofree noundef nonnull align 8 dereferenceable(24) %37) #21
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pd = load i8, ptr %i.pc, align 8
  %i.pe = and i8 %i.pd, -2
  store i8 %i.pe, ptr %i.pc, align 8
  %i.pf = ptrtoint ptr %i.om to i64
  store i64 %i.pf, ptr %0, align 8, !tbaa !523
  %i.pg = load i32, ptr %i.oz, align 4, !tbaa !525 ; 2 uses
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit
  %i.pi = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.pj = load ptr, ptr %37, align 16, !tbaa !527
  %i.pk = load ptr, ptr %i.pi, align 8, !tbaa !528
  %i.pl = zext i32 %i.pg to i64
  %i.pm = add nuw nsw i64 %i.pl, 31
  %i.pn = lshr i64 %i.pm, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.i.i
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.pp, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.pq = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.at

bb.at:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.pp, %.lr.ph.i.i ], [ %i.qb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.pr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ps = or disjoint i32 %i.pr, %i.pq
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %i.pt
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !127 ; 2 uses
  %i.pw = ptrtoint ptr %i.pv to i64
  %notsub.i.i.i.i.i.i = add i64 %i.pw, -1
  %i.px = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.px, label %bb.au, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.pz = atomicrmw sub ptr %i.py, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.au, %bb.at
  %i.qa = add i32 %.0.i3.i.i, -1
  %i.qb = and i32 %i.qa, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.qb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.at, !llvm.loop !529

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i146 = icmp eq i64 %indvars.iv.next.i.i, %i.pn
  br i1 %.not.i.i.i146, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !530

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i147 = load i32, ptr %i.oz, align 4, !tbaa !525 ; 2 uses
  %i.qc = icmp eq i32 %.pr.i147, 0
  br i1 %i.qc, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i
  %i.qd = load ptr, ptr %37, align 16, !tbaa !527
  %i.qe = zext i32 %.pr.i147 to i64               ; 2 uses
  %i.qf = shl nuw nsw i64 %i.qe, 4
  %i.qg = add nuw nsw i64 %i.qe, 31
  %i.qh = lshr i64 %i.qg, 3
  %i.qi = and i64 %i.qh, 1073741820
  %i.qj = add nuw nsw i64 %i.qi, %i.qf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qd, i64 noundef %i.qj, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i, %bb.av
  %i.qk = load ptr, ptr %i.oq, align 8, !tbaa !331 ; 2 uses
  %.not.i148 = icmp eq ptr %i.qk, null
  br i1 %.not.i148, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit
  call void %i.qk(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %36) #21, !inline_history !334
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, %bb.aw
  %i.ql = load ptr, ptr %35, align 8, !tbaa !350  ; 3 uses
  %.not.i149 = icmp eq ptr %i.ql, null
  br i1 %.not.i149, label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !182
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(144) %i.ql) #21, !inline_history !352
  br label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i
  %i.qp = load ptr, ptr %34, align 8, !tbaa !327  ; 3 uses
  %.not.i150 = icmp eq ptr %i.qp, null
  br i1 %.not.i150, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !182
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(24) %i.qp) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit143, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit, %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit
  %i.qt = getelementptr inbounds nuw i8, ptr %27, i64 20 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !525 ; 2 uses
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit166, label %.lr.ph7.preheader.i.i151

.lr.ph7.preheader.i.i151:                         ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.qw = load ptr, ptr %27, align 16, !tbaa !527
  %i.qx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !528
  %i.qz = zext i32 %i.qu to i64
  %i.ra = add nuw nsw i64 %i.qz, 31
  %i.rb = lshr i64 %i.ra, 5
  br label %.lr.ph7.i.i152

.lr.ph7.i.i152:                                   ; preds = %._crit_edge.i.i161, %.lr.ph7.preheader.i.i151
  %indvars.iv.i.i153 = phi i64 [ 0, %.lr.ph7.preheader.i.i151 ], [ %indvars.iv.next.i.i162, %._crit_edge.i.i161 ] ; 3 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.i.i153
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i154 = icmp eq i32 %i.rd, 0
  br i1 %.not11.i2.i.i154, label %._crit_edge.i.i161, label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph7.i.i152
  %indvars.iv.tr.i.i156 = trunc nuw i64 %indvars.iv.i.i153 to i32
  %i.re = shl nuw i32 %indvars.iv.tr.i.i156, 5
  br label %bb.ax

bb.ax:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i159, %.lr.ph.i.i155
  %.0.i3.i.i157 = phi i32 [ %i.rd, %.lr.ph.i.i155 ], [ %i.rp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i159 ] ; 3 uses
  %i.rf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i157, i1 true)
  %i.rg = or disjoint i32 %i.rf, %i.re
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !127 ; 2 uses
  %i.rk = ptrtoint ptr %i.rj to i64
  %notsub.i.i.i.i.i.i158 = add i64 %i.rk, -1
  %i.rl = icmp ult i64 %notsub.i.i.i.i.i.i158, -32
  br i1 %i.rl, label %bb.ay, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i159

bb.ay:                                            ; preds = %bb.ax
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rn = atomicrmw sub ptr %i.rm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i159

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i159: ; preds = %bb.ay, %bb.ax
  %i.ro = add i32 %.0.i3.i.i157, -1
  %i.rp = and i32 %i.ro, %.0.i3.i.i157            ; 2 uses
  %.not11.i.i.i160 = icmp eq i32 %i.rp, 0
  br i1 %.not11.i.i.i160, label %._crit_edge.i.i161, label %bb.ax, !llvm.loop !529

._crit_edge.i.i161:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i159, %.lr.ph7.i.i152
  %indvars.iv.next.i.i162 = add nuw nsw i64 %indvars.iv.i.i153, 1 ; 2 uses
  %.not.i.i.i163 = icmp eq i64 %indvars.iv.next.i.i162, %i.rb
  br i1 %.not.i.i.i163, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i164, label %.lr.ph7.i.i152, !llvm.loop !530

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i164: ; preds = %._crit_edge.i.i161
  %.pr.i165 = load i32, ptr %i.qt, align 4, !tbaa !525 ; 2 uses
  %i.rq = icmp eq i32 %.pr.i165, 0
  br i1 %i.rq, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit166, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i164
  %i.rr = load ptr, ptr %27, align 16, !tbaa !527
  %i.rs = zext i32 %.pr.i165 to i64               ; 2 uses
  %i.rt = shl nuw nsw i64 %i.rs, 4
  %i.ru = add nuw nsw i64 %i.rs, 31
  %i.rv = lshr i64 %i.ru, 3
  %i.rw = and i64 %i.rv, 1073741820
  %i.rx = add nuw nsw i64 %i.rw, %i.rt
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.rr, i64 noundef %i.rx, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit166

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit166: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i164, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.bb

.critedge40:                                      ; preds = %_ZNKSt14default_deleteIN4llvm6object27AbstractArchiveMemberHeaderEEclEPS2_.exit.i.i.i.i2.i, %_ZN4llvm17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEED2Ev.exit.i
  %.pr = load ptr, ptr %22, align 8, !tbaa !178   ; 3 uses
  %i.ry = icmp eq ptr %.pr, null
  br i1 %i.ry, label %_ZN4llvm5ErrorD2Ev.exit167, label %bb.ba

bb.ba:                                            ; preds = %.critedge40
  %i.rz = load ptr, ptr %.pr, align 8, !tbaa !182
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #21, !inline_history !520
  br label %_ZN4llvm5ErrorD2Ev.exit167

_ZN4llvm5ErrorD2Ev.exit167:                       ; preds = %.critedge40.thread, %.critedge40, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit167, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit166
  %i.sc = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !474 ; 2 uses
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sf = load ptr, ptr %21, align 8, !tbaa !465
  %i.sg = zext i32 %i.sd to i64                   ; 2 uses
  %i.sh = shl nuw nsw i64 %i.sg, 3
  %i.si = add nuw nsw i64 %i.sg, 31
  %i.sj = lshr i64 %i.si, 3
  %i.sk = and i64 %i.sj, 1073741820
  %i.sl = add nuw nsw i64 %i.sk, %i.sh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.sf, i64 noundef %i.sl, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  ret void
}

declare void @_ZNK4llvm6object7Archive5Child18getMemoryBufferRefEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.288") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

declare void @_ZNK4llvm6object7Archive6Symbol9getMemberEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.303") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm6object7Archive6Symbol7getNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm6object12createBinaryENS_15MemoryBufferRefEPNS_11LLVMContextEb(ptr dead_on_unwind writable sret(%"class.llvm::Expected.310") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind writable sret(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN4llvm3orc27getMachOSliceRangeForTripleERNS_6object20MachOUniversalBinaryERKNS_6TripleE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.321") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare void @_ZN4llvm6object7Archive6createENS_15MemoryBufferRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.324") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator13tryToGenerateERNS0_11LookupStateENS0_10LookupKindERNS0_8JITDylibENS0_19JITDylibLookupFlagsERKNS0_15SymbolLookupSetE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(272) %4, i32 %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %8 = alloca %class.anon.663, align 1            ; 3 uses
  %9 = alloca %"class.llvm::DenseMap.327", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.llvm::Expected.333", align 8 ; 12 uses
  %11 = alloca %"class.llvm::Expected.288", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.169", align 8  ; 11 uses
  %13 = alloca %"class.std::unique_ptr.36", align 8 ; 9 uses
  %14 = alloca %"class.llvm::Expected.350", align 16 ; 15 uses
  %15 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 2 uses
  %16 = alloca %"class.std::unique_ptr.36", align 8 ; 3 uses
  %17 = alloca %"struct.llvm::orc::MaterializationUnit::Interface", align 16 ; 8 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %bb.ax

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !350
  %.not151 = icmp eq ptr %i.c, null
  br i1 %.not151, label %_ZN4llvm5ErrorD2Ev.exit42, label %bb.c

_ZN4llvm5ErrorD2Ev.exit42:                        ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %bb.ax

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %6, align 8, !tbaa !292    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292  ; 2 uses
  %.not152172 = icmp eq ptr %i.d, %i.f
  br i1 %.not152172, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread
  %.sroa.0135.0173 = phi ptr [ %i.d, %.lr.ph ], [ %i.ds, %.thread ] ; 3 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !527, !noalias !531 ; 3 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !528, !noalias !531 ; 2 uses
  %i.r = load i32, ptr %i.i, align 4, !tbaa !525, !noalias !531 ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = load ptr, ptr %.sroa.0135.0173, align 8, !tbaa !127, !noalias !540 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.t, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25, !noalias !540
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !167

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.ai = phi i64 [ %i.ao, %bb.f ], [ %i.ab, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.an, %bb.f ], [ %i.aa, %bb.e ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !127, !noalias !540
  %i.al = icmp eq ptr %i.u, %i.ak
  br i1 %i.al, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4findERKS3_.exit.loopexit, label %bb.f, !prof !168

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.am = add nuw i32 %.017.i.i.i.i, 1
  %i.an = and i32 %i.am, %i.t                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !25, !noalias !540
  %i.as = and i32 %i.an, 31
end_hunk_2
begin_hunk_3_@_ZN4llvm3orc32StaticLibraryDefinitionGenerator13tryToGenerateERNS0_11LookupStateENS0_10LookupKindERNS0_8JITDylibENS0_19JITDylibLookupFlagsERKNS0_15SymbolLookupSetE:bb.a
  %i.im = icmp eq i64 %i.ij, 1
  br i1 %i.im, label %_ZN4llvm5ErrorD2Ev.exit109, label %.lr.ph311

.lr.ph.i.i.i59:                                   ; preds = %.lr.ph311
  %i.in = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %i.io = icmp eq i64 %i.in, %i.ij
  br i1 %i.io, label %_ZN4llvm5ErrorD2Ev.exit109, label %.lr.ph311, !llvm.loop !590

.lr.ph311:                                        ; preds = %.lr.ph.i.i.i59.preheader, %.lr.ph.i.i.i59
  %i.ip = phi i64 [ %i.in, %.lr.ph.i.i.i59 ], [ 1, %.lr.ph.i.i.i59.preheader ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !25, !noalias !587 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i.i.i59, label %._crit_edge.i.loopexit.i.i61, !llvm.loop !590

._crit_edge.i.loopexit.i.i61:                     ; preds = %.lr.ph311
  %i.it = mul i64 %i.ip, 1280
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit: ; preds = %bb.af, %._crit_edge.i.loopexit.i.i61
  %.012.lcssa.i.i.i56 = phi i64 [ 0, %bb.af ], [ %i.it, %._crit_edge.i.loopexit.i.i61 ]
  %.0.lcssa.i.i.i57 = phi i32 [ %i.ik, %bb.af ], [ %i.ir, %._crit_edge.i.loopexit.i.i61 ]
  %i.iu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i57, i1 true)
  %narrow = mul nuw nsw i32 %i.iu, 40
  %.idx286 = zext nneg i32 %narrow to i64
  %i.iv = add i64 %.012.lcssa.i.i.i56, %.idx286   ; 2 uses
  %.not155182 = icmp eq i64 %i.iv, %.idx287
  br i1 %.not155182, label %_ZN4llvm5ErrorD2Ev.exit109, label %.lr.ph184

.lr.ph184:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.iz = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %i.ji = add nuw nsw i64 %i.ih, 31
  %i.jj = lshr i64 %i.ji, 5                       ; 2 uses
  br label %bb.ai

.lr.ph180.splitthread-pre-split:                  ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5eraseERKS3_.exit
  %.pr = load i32, ptr %i.dx, align 4, !tbaa !525, !noalias !571
  br label %.lr.ph180.split

.lr.ph180.split:                                  ; preds = %.lr.ph180, %.lr.ph180.splitthread-pre-split
  %i.jk = phi i32 [ %.pr, %.lr.ph180.splitthread-pre-split ], [ %i.ez, %.lr.ph180 ] ; 2 uses
  %.sroa.0116.0178 = phi ptr [ %i.kq, %.lr.ph180.splitthread-pre-split ], [ %.pre201, %.lr.ph180 ] ; 2 uses
  %i.jl = load ptr, ptr %i.dt, align 8, !tbaa !527, !noalias !571
  %i.jm = load ptr, ptr %i.dv, align 8, !tbaa !528, !noalias !571 ; 2 uses
  %i.jn = icmp eq i32 %i.jk, 0
  br i1 %i.jn, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5eraseERKS3_.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph180.split
  %i.jo = add i32 %i.jk, -1                       ; 2 uses
  %i.jp = load ptr, ptr %.sroa.0116.0178, align 8, !tbaa !127 ; 2 uses
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = mul i64 %i.jq, -4658895280553007687     ; 2 uses
  %i.js = lshr i64 %i.jr, 31
  %i.jt = xor i64 %i.js, %i.jr
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = and i32 %i.jo, %i.ju                    ; 3 uses
  %i.jw = zext i32 %i.jv to i64                   ; 2 uses
  %i.jx = lshr i64 %i.jw, 5
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !25
  %i.ka = and i32 %i.jv, 31
  %i.kb = lshr i32 %i.jz, %i.ka
  %i.kc = trunc i32 %i.kb to i1
  br i1 %i.kc, label %.lr.ph.i.i.i62, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5eraseERKS3_.exit, !prof !167

.lr.ph.i.i.i62:                                   ; preds = %bb.ag, %bb.ah
  %i.kd = phi i64 [ %i.kj, %bb.ah ], [ %i.jw, %bb.ag ]
  %.017.i.i.i63 = phi i32 [ %i.ki, %bb.ah ], [ %i.jv, %bb.ag ]
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.kd ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !127
  %i.kg = icmp eq ptr %i.jp, %i.kf
  br i1 %i.kg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i, label %bb.ah, !prof !168

bb.ah:                                            ; preds = %.lr.ph.i.i.i62
  %i.kh = add nuw i32 %.017.i.i.i63, 1
  %i.ki = and i32 %i.kh, %i.jo                    ; 3 uses
  %i.kj = zext i32 %i.ki to i64                   ; 2 uses
  %i.kk = lshr i64 %i.kj, 5
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !25
  %i.kn = and i32 %i.ki, 31
  %i.ko = lshr i32 %i.km, %i.kn
  %i.kp = trunc i32 %i.ko to i1
  br i1 %i.kp, label %.lr.ph.i.i.i62, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5eraseERKS3_.exit, !prof !169

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i: ; preds = %.lr.ph.i.i.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.dt, ptr noundef nonnull %i.ke, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5eraseERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5eraseERKS3_.exit: ; preds = %bb.ah, %.lr.ph180.split, %bb.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0116.0178, i64 8 ; 2 uses
  %.not154 = icmp eq ptr %i.kq, %.pre202
  br i1 %.not154, label %._crit_edge181.loopexit185, label %.lr.ph180.splitthread-pre-split, !llvm.loop !591

bb.ai:                                            ; preds = %.lr.ph184, %_ZN4llvm16DenseMapIteratorImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit
  %.pn290 = phi i64 [ %i.iv, %.lr.ph184 ], [ %i.pk, %_ZN4llvm16DenseMapIteratorImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0112.0183 = getelementptr i8, ptr %i.hz, i64 %.pn290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.kr = load ptr, ptr %i.b, align 8, !tbaa !350
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0112.0183, i64 8
  %i.kt = load i64, ptr %.sroa.0112.0183, align 8, !tbaa !593
  call void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator18createMemberBufferERNS_6object7ArchiveENS_15MemoryBufferRefEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.36") align 8 %13, ptr noundef nonnull align 8 dereferenceable(144) %i.kr, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %i.ks, i64 noundef %i.kt)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ku = load ptr, ptr %i.ix, align 8, !tbaa !595, !nonnull !74, !align !75
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !313, !nonnull !74, !align !75
  %i.kx = load ptr, ptr %13, align 8, !tbaa !327
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %i.kx) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.ky = load ptr, ptr %i.iy, align 8, !tbaa !610, !noalias !611
  call void %i.ky(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.350") align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %i.iw, ptr noundef nonnull align 8 dereferenceable(392) %i.kw, ptr noundef nonnull align 8 dereferenceable(32) %7) #21, !inline_history !614
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.kz = load i8, ptr %i.iz, align 16
  %i.la = trunc i8 %i.kz to i1
  br i1 %i.la, label %.critedge39, label %bb.aj

.critedge39:                                      ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.lb = load i64, ptr %14, align 16, !tbaa !173, !noalias !615
  %i.lc = inttoptr i64 %i.lb to ptr
  store ptr %i.lc, ptr %0, align 8, !tbaa !178, !alias.scope !615
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ld = load ptr, ptr %13, align 8, !tbaa !327  ; 3 uses
  %.not.i69 = icmp eq ptr %i.ld, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %.critedge39
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !182
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(24) %i.ld) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.critedge39, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.lh = load ptr, ptr %i.ix, align 8, !tbaa !595, !nonnull !74, !align !75
  %i.li = load i64, ptr %13, align 8, !tbaa !327
  store i64 %i.li, ptr %16, align 8, !tbaa !327
  store ptr null, ptr %13, align 8, !tbaa !327
  %i.lj = load <2 x ptr>, ptr %14, align 16, !tbaa !144
  store ptr null, ptr %14, align 16, !tbaa !618
  store <2 x ptr> %i.lj, ptr %17, align 16, !tbaa !144
  store ptr null, ptr %i.jb, align 8, !tbaa !122
  %i.lk = load <2 x i32>, ptr %i.jd, align 16, !tbaa !25
  store i32 0, ptr %i.jd, align 16, !tbaa !25
  store <2 x i32> %i.lk, ptr %i.jc, align 16, !tbaa !25
  store i32 0, ptr %i.jf, align 4, !tbaa !25
  %i.ll = load ptr, ptr %i.jh, align 8, !tbaa !130
  store ptr %i.ll, ptr %i.jg, align 8, !tbaa !130
  store ptr null, ptr %i.jh, align 8, !tbaa !130
  call void @_ZN4llvm3orc11ObjectLayer3addERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EENS0_19MaterializationUnit9InterfaceE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef nonnull align 8 dereferenceable(272) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr nofree noundef nonnull align 8 dereferenceable(32) %17)
  %i.lm = load ptr, ptr %i.jg, align 8, !tbaa !127 ; 2 uses
  %i.ln = ptrtoint ptr %i.lm to i64
  %notsub.i.i.i.i70 = add i64 %i.ln, -1
  %i.lo = icmp ult i64 %notsub.i.i.i.i70, -32
  br i1 %i.lo, label %bb.ak, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lq = atomicrmw sub ptr %i.lp, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.ak, %bb.aj
  %i.lr = load i32, ptr %i.je, align 4, !tbaa !619 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.lt = load ptr, ptr %17, align 16, !tbaa !620
  %i.lu = load ptr, ptr %i.ja, align 8, !tbaa !621
  %i.lv = zext i32 %i.lr to i64
  %i.lw = add nuw nsw i64 %i.lv, 31
  %i.lx = lshr i64 %i.lw, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i73, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i73 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.i.i.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i73, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ma = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.al

bb.al:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i71
  %.0.i3.i.i.i = phi i32 [ %i.lz, %.lr.ph.i.i.i71 ], [ %i.ml, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.mb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.mc = or disjoint i32 %i.mb, %i.ma
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !127 ; 2 uses
  %i.mg = ptrtoint ptr %i.mf to i64
  %notsub.i.i.i.i.i.i.i72 = add i64 %i.mg, -1
  %i.mh = icmp ult i64 %notsub.i.i.i.i.i.i.i72, -32
  br i1 %i.mh, label %bb.am, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mj = atomicrmw sub ptr %i.mi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.am, %bb.al
  %i.mk = add i32 %.0.i3.i.i.i, -1
  %i.ml = and i32 %i.mk, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ml, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i73, label %bb.al, !llvm.loop !622

._crit_edge.i.i.i73:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.lx
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !623

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i73
  %.pr.i.i = load i32, ptr %i.je, align 4, !tbaa !619 ; 2 uses
  %i.mm = icmp eq i32 %.pr.i.i, 0
  br i1 %i.mm, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.mn = load ptr, ptr %17, align 16, !tbaa !620
  %i.mo = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.mp = shl nuw nsw i64 %i.mo, 4
  %i.mq = add nuw nsw i64 %i.mo, 31
  %i.mr = lshr i64 %i.mq, 3
  %i.ms = and i64 %i.mr, 1073741820
  %i.mt = add nuw nsw i64 %i.ms, %i.mp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mn, i64 noundef %i.mt, i64 noundef 8) #21
  br label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit

_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.an
  %i.mu = load ptr, ptr %16, align 8, !tbaa !327  ; 3 uses
  %.not.i74 = icmp eq ptr %i.mu, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i75

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i75: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !182
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(24) %i.mu) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i75
  %i.my = load ptr, ptr %0, align 8, !tbaa !178
  %.not156 = icmp eq ptr %i.my, null
  %i.mz = load i8, ptr %i.iz, align 16
  %i.na = trunc i8 %i.mz to i1
  br i1 %i.na, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76
  %i.nb = load ptr, ptr %i.jh, align 8, !tbaa !127 ; 2 uses
  %i.nc = ptrtoint ptr %i.nb to i64
  %notsub.i.i.i.i.i78 = add i64 %i.nc, -1
  %i.nd = icmp ult i64 %notsub.i.i.i.i.i78, -32
  br i1 %i.nd, label %bb.ap, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i79

bb.ap:                                            ; preds = %bb.ao
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nf = atomicrmw sub ptr %i.ne, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i79

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i79:     ; preds = %bb.ap, %bb.ao
  %i.ng = load i32, ptr %i.jf, align 4, !tbaa !619 ; 2 uses
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97, label %.lr.ph7.preheader.i.i.i.i80

.lr.ph7.preheader.i.i.i.i80:                      ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i79
  %i.ni = load ptr, ptr %14, align 16, !tbaa !620
  %i.nj = load ptr, ptr %i.jb, align 8, !tbaa !621
  %i.nk = zext i32 %i.ng to i64
  %i.nl = add nuw nsw i64 %i.nk, 31
  %i.nm = lshr i64 %i.nl, 5
  br label %.lr.ph7.i.i.i.i81

.lr.ph7.i.i.i.i81:                                ; preds = %._crit_edge.i.i.i.i90, %.lr.ph7.preheader.i.i.i.i80
  %indvars.iv.i.i.i.i82 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i80 ], [ %indvars.iv.next.i.i.i.i91, %._crit_edge.i.i.i.i90 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i.i.i.i82
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i.i83 = icmp eq i32 %i.no, 0
  br i1 %.not11.i2.i.i.i.i83, label %._crit_edge.i.i.i.i90, label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %.lr.ph7.i.i.i.i81
  %indvars.iv.tr.i.i.i.i85 = trunc nuw i64 %indvars.iv.i.i.i.i82 to i32
  %i.np = shl nuw i32 %indvars.iv.tr.i.i.i.i85, 5
  br label %bb.aq

bb.aq:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i88, %.lr.ph.i.i.i.i84
  %.0.i3.i.i.i.i86 = phi i32 [ %i.no, %.lr.ph.i.i.i.i84 ], [ %i.oa, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i88 ] ; 3 uses
  %i.nq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i86, i1 true)
  %i.nr = or disjoint i32 %i.nq, %i.np
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.ni, i64 %i.ns
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !127 ; 2 uses
  %i.nv = ptrtoint ptr %i.nu to i64
  %notsub.i.i.i.i.i.i.i.i87 = add i64 %i.nv, -1
  %i.nw = icmp ult i64 %notsub.i.i.i.i.i.i.i.i87, -32
  br i1 %i.nw, label %bb.ar, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i88

bb.ar:                                            ; preds = %bb.aq
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.ny = atomicrmw sub ptr %i.nx, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i88

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i88: ; preds = %bb.ar, %bb.aq
  %i.nz = add i32 %.0.i3.i.i.i.i86, -1
  %i.oa = and i32 %i.nz, %.0.i3.i.i.i.i86         ; 2 uses
  %.not11.i.i.i.i.i89 = icmp eq i32 %i.oa, 0
  br i1 %.not11.i.i.i.i.i89, label %._crit_edge.i.i.i.i90, label %bb.aq, !llvm.loop !622

._crit_edge.i.i.i.i90:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i88, %.lr.ph7.i.i.i.i81
  %indvars.iv.next.i.i.i.i91 = add nuw nsw i64 %indvars.iv.i.i.i.i82, 1 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq i64 %indvars.iv.next.i.i.i.i91, %i.nm
  br i1 %.not.i.i.i.i.i92, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i93, label %.lr.ph7.i.i.i.i81, !llvm.loop !623

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i93: ; preds = %._crit_edge.i.i.i.i90
  %.pr.i.i.i94 = load i32, ptr %i.jf, align 4, !tbaa !619 ; 2 uses
  %i.ob = icmp eq i32 %.pr.i.i.i94, 0
  br i1 %i.ob, label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i93
  %i.oc = load ptr, ptr %14, align 16, !tbaa !620
  %i.od = zext i32 %.pr.i.i.i94 to i64            ; 2 uses
  %i.oe = shl nuw nsw i64 %i.od, 4
  %i.of = add nuw nsw i64 %i.od, 31
  %i.og = lshr i64 %i.of, 3
  %i.oh = and i64 %i.og, 1073741820
  %i.oi = add nuw nsw i64 %i.oh, %i.oe
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.oc, i64 noundef %i.oi, i64 noundef 8) #21
  br label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76
  %i.oj = load ptr, ptr %14, align 16, !tbaa !173 ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i95, label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i96

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i96: ; preds = %bb.at
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !182
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(8) %i.oj) #21, !inline_history !624
  br label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97

_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i79, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i93, %bb.as, %bb.at, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.on = load ptr, ptr %13, align 8, !tbaa !327  ; 3 uses
  %.not.i98 = icmp eq ptr %i.on, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i99: ; preds = %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !182
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(24) %i.on) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit97, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %.not156, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit100
  %i.or = add i64 %.pn290, 40
  %i.os = sdiv exact i64 %i.or, 40                ; 3 uses
  %.not.i.i101 = icmp ult i64 %i.os, %i.ih
  br i1 %.not.i.i101, label %bb.av, label %_ZN4llvm5ErrorD2Ev.exit109

bb.av:                                            ; preds = %bb.au
  %i.ot = lshr i64 %i.os, 5                       ; 3 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !25
  %i.ow = trunc nuw i64 %i.os to i32
  %i.ox = and i32 %i.ow, 31
  %i.oy = shl nsw i32 -1, %i.ox
  %i.oz = and i32 %i.ov, %i.oy                    ; 2 uses
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %.lr.ph.i.i107.preheader, label %_ZN4llvm16DenseMapIteratorImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit

.lr.ph.i.i107.preheader:                          ; preds = %bb.av
  %i.pb = add nuw nsw i64 %i.ot, 1                ; 2 uses
  %i.pc = icmp eq i64 %i.pb, %i.jj
  br i1 %i.pc, label %_ZN4llvm5ErrorD2Ev.exit109, label %.lr.ph312

.lr.ph.i.i107:                                    ; preds = %.lr.ph312
  %i.pd = add i64 %i.pf, 1                        ; 2 uses
  %i.pe = icmp eq i64 %i.pd, %i.jj
  br i1 %i.pe, label %_ZN4llvm5ErrorD2Ev.exit109, label %.lr.ph312, !llvm.loop !590

.lr.ph312:                                        ; preds = %.lr.ph.i.i107.preheader, %.lr.ph.i.i107
  %i.pf = phi i64 [ %i.pd, %.lr.ph.i.i107 ], [ %i.pb, %.lr.ph.i.i107.preheader ] ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !25 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %.lr.ph.i.i107, label %_ZN4llvm16DenseMapIteratorImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit, !llvm.loop !590

_ZN4llvm16DenseMapIteratorImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit: ; preds = %.lr.ph312, %bb.av
  %.012.lcssa.i.i104 = phi i64 [ %i.ot, %bb.av ], [ %i.pf, %.lr.ph312 ]
  %.0.lcssa.i.i105 = phi i32 [ %i.oz, %bb.av ], [ %i.ph, %.lr.ph312 ]
  %i.pj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i105, i1 true)
  %.idx.i.i106 = mul i64 %.012.lcssa.i.i104, 1280
  %narrow289 = mul nuw nsw i32 %i.pj, 40
  %.idx288 = zext nneg i32 %narrow289 to i64
  %i.pk = add i64 %.idx.i.i106, %.idx288          ; 2 uses
  %.not155 = icmp eq i64 %i.pk, %.idx287
  br i1 %.not155, label %_ZN4llvm5ErrorD2Ev.exit109, label %bb.ai

_ZN4llvm5ErrorD2Ev.exit109:                       ; preds = %.lr.ph.i.i.i59, %bb.au, %_ZN4llvm16DenseMapIteratorImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit, %.lr.ph.i.i107.preheader, %.lr.ph.i.i107, %.lr.ph.i.i.i59.preheader, %_ZNSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit100, %bb.t, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit109
  %i.pl = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !552 ; 2 uses
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %.loopexit
  %i.po = load ptr, ptr %9, align 8, !tbaa !543
  %i.pp = zext i32 %i.pm to i64                   ; 2 uses
  %i.pq = mul nuw nsw i64 %i.pp, 40
  %i.pr = add nuw nsw i64 %i.pp, 31
  %i.ps = lshr i64 %i.pr, 3
  %i.pt = and i64 %i.ps, 1073741820
  %i.pu = add nuw nsw i64 %i.pt, %i.pq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.po, i64 noundef %i.pu, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit

_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit: ; preds = %.loopexit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit42, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

declare void @_ZNK4llvm6object7Archive7findSymENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.333") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator18createMemberBufferERNS_6object7ArchiveENS_15MemoryBufferRefEm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree noundef readonly byval(%"class.llvm::MemoryBufferRef") align 8 captures(none) %2, i64 noundef %3) local_unnamed_addr #4 align 2 {
_ZN4llvmplERKNS_5TwineES2_.exit54:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !364
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.a = tail call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #21 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.d, align 8, !tbaa !281, !alias.scope !625
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.e, align 1, !tbaa !284, !alias.scope !625
  store ptr %i.b, ptr %9, align 8, !tbaa !28, !alias.scope !625
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.c, ptr %i.f, align 8, !tbaa !28, !alias.scope !625
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.7, ptr %i.g, align 8, !tbaa !28, !alias.scope !625
  %.sroa.04.0.copyload.i.i.cast = inttoptr i64 %3 to ptr
  store ptr %9, ptr %8, align 8, !alias.scope !628
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.04.0.copyload.i.i.cast, ptr %i.h, align 8, !alias.scope !628
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.i, align 8, !tbaa !281, !alias.scope !628
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 11, ptr %i.j, align 1, !tbaa !284, !alias.scope !628
  store ptr %8, ptr %7, align 8, !alias.scope !633
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.8, ptr %i.k, align 8, !alias.scope !633
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.l, align 8, !tbaa !281, !alias.scope !633
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 3, ptr %i.m, align 1, !tbaa !284, !alias.scope !633
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i21, align 8, !tbaa !199
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i20 = load ptr, ptr %i.n, align 8, !tbaa !364
  store ptr %7, ptr %6, align 8, !alias.scope !638
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.0.0.copyload.i20, ptr %i.o, align 8, !alias.scope !638
  %.sroa.2.0..sroa_idx.i.i.i38 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.2.0.copyload.i22, ptr %.sroa.2.0..sroa_idx.i.i.i38, align 8, !tbaa !28, !alias.scope !638
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.p, align 8, !tbaa !281, !alias.scope !638
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 5, ptr %i.q, align 1, !tbaa !284, !alias.scope !638
  store ptr %6, ptr %5, align 8, !alias.scope !643
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.9, ptr %i.r, align 8, !alias.scope !643
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.s, align 8, !tbaa !281, !alias.scope !643
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.t, align 1, !tbaa !284, !alias.scope !643
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5) #21
  %i.u = load ptr, ptr %4, align 8, !tbaa !291
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !275
  call void @_ZN4llvm12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.36") align 8 %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr %i.u, i64 %i.w, i1 noundef zeroext false) #21
  %i.x = load ptr, ptr %4, align 8, !tbaa !291    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit54
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !28
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc11ObjectLayer3addERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EENS0_19MaterializationUnit9InterfaceE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef align 8 dereferenceable(8) %3, ptr nofree noundef align 8 dereferenceable(32) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.36", align 8 ; 3 uses
  %7 = alloca %"struct.llvm::orc::MaterializationUnit::Interface", align 16 ; 8 uses
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(272) %2) #21
  %i.a = load i64, ptr %3, align 8, !tbaa !327
  store i64 %i.a, ptr %6, align 8, !tbaa !327
  store ptr null, ptr %3, align 8, !tbaa !327
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !144
  store ptr null, ptr %4, align 8, !tbaa !618
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !144
  store ptr null, ptr %i.c, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = load <2 x i32>, ptr %i.f, align 8, !tbaa !25
  store i32 0, ptr %i.f, align 8, !tbaa !25
  store <2 x i32> %i.i, ptr %i.e, align 16, !tbaa !25
  store i32 0, ptr %i.h, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !130
  store ptr %i.l, ptr %i.j, align 8, !tbaa !130
  store ptr null, ptr %i.k, align 8, !tbaa !130
  %i.m = load ptr, ptr %1, align 8, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #21
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %notsub.i.i.i.i = add i64 %i.q, -1
  %i.r = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.r, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.b, %bb.a
  %i.u = load i32, ptr %i.g, align 4, !tbaa !619  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.w = load ptr, ptr %7, align 16, !tbaa !620
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !621
  %i.y = zext i32 %i.u to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ad = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ae = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !127 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.aj, -1
  %i.ak = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ak, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = atomicrmw sub ptr %i.al, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.an = add i32 %.0.i3.i.i.i, -1
  %i.ao = and i32 %i.an, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !622

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !623

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.g, align 4, !tbaa !619 ; 2 uses
  %i.ap = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ap, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.aq = load ptr, ptr %7, align 16, !tbaa !620
  %i.ar = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #21
  br label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit

_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  %i.ax = load ptr, ptr %6, align 8, !tbaa !327   ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !182
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !206   ; 4 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %.not.i.i.i.i2 = icmp eq i32 %i.bc, 1
  br i1 %.not.i.i.i.i2, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bb) #21
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.bb, i64 noundef 16) #23
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.f, %bb.g
  ret void
}

declare void @_ZN4llvm12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.36") align 8, ptr, i64, ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc32StaticLibraryDefinitionGeneratorC2ERNS0_11ObjectLayerESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EES4_INS_6object7ArchiveES6_ISA_EENS_15unique_functionIFNS_8ExpectedINS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionENS_15MemoryBufferRefEEEENS_8DenseMapINS0_15SymbolStringPtrEmNS_12DenseMapInfoISO_vEENS_6detail12DenseMapPairISO_mEEEE(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 49), (56, 144), (168, 184)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef align 8 dereferenceable(40) %4, ptr nofree noundef align 8 captures(none) dereferenceable(24) %5) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3orc19DefinitionGeneratorE, i64 16), ptr %0, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i8 0, i64 41, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !247
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !252
  %i.e = load i64, ptr %i.c, align 8, !tbaa !247
  %i.f = add i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !253
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.h, ptr %i.k, align 8, !tbaa !254
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.i, ptr %i.l, align 8, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 512 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.m, ptr %i.n, align 8, !tbaa !256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.h, ptr %i.p, align 8, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.i, ptr %i.q, align 8, !tbaa !255
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.m, ptr %i.r, align 8, !tbaa !256
  store ptr %i.i, ptr %i.j, align 8, !tbaa !257
  store ptr %i.i, ptr %i.o, align 8, !tbaa !258
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3orc32StaticLibraryDefinitionGeneratorE, i64 16), ptr %0, align 8, !tbaa !182
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.s, align 8, !tbaa !308
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331  ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %i.u, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %4) #21, !inline_history !333
  br label %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit

_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load i64, ptr %2, align 8, !tbaa !327
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !327
  store ptr null, ptr %2, align 8, !tbaa !327
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load i64, ptr %3, align 8, !tbaa !350
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !350
  store ptr null, ptr %3, align 8, !tbaa !350
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load <2 x ptr>, ptr %5, align 8, !tbaa !144
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !144
  store ptr null, ptr %5, align 8, !tbaa !521
  store ptr null, ptr %i.af, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !25
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !25
  store i32 0, ptr %i.ai, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.an = load i32, ptr %i.al, align 4, !tbaa !25
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !25
  store i32 %i.am, ptr %i.al, align 4, !tbaa !25
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !610
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !331 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.ap(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #21, !inline_history !648
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit: ; preds = %bb.e, %bb.d
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEEC1IPFS6_S8_S9_ESD_EET_NSA_8CalledAsIT0_EEENUlPKSA_S8_RS9_E_8__invokeESJ_S8_SK_, ptr %i.u, align 8, !tbaa !610
  store ptr null, ptr %i.v, align 8, !tbaa !331
  store ptr @_ZN4llvm3orc22getObjectFileInterfaceERNS0_16ExecutionSessionENS_15MemoryBufferRefE, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, %_ZN4llvm15unique_functionIFNS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEERNS2_16ExecutionSessionENS_15MemoryBufferRefEEEC2EOSA_.exit
  ret void
}

declare void @_ZN4llvm3orc22getObjectFileInterfaceERNS0_16ExecutionSessionENS_15MemoryBufferRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.350") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc28DLLImportDefinitionGenerator6CreateERNS0_16ExecutionSessionERNS0_18ObjectLinkingLayerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.355") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #22 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
end_hunk_3
begin_hunk_4_@_ZN4llvm3orc28DLLImportDefinitionGenerator13tryToGenerateERNS0_11LookupStateENS0_10LookupKindERNS0_8JITDylibENS0_19JITDylibLookupFlagsERKNS0_15SymbolLookupSetE:bb.a

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.ei = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ea, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i
  %i.ej = load ptr, ptr %i.di, align 8, !tbaa !142
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #23
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 8             ; 2 uses
  %i.ep = trunc i8 %i.eo to i1
  br i1 %i.ep, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.ac

bb.w:                                             ; preds = %.lr.ph75, %_ZN4llvm16DenseMapIteratorINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.bo, %.lr.ph75 ], [ %i.gf, %_ZN4llvm16DenseMapIteratorINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.044.074 = getelementptr i8, ptr %.pre, i64 %.pn ; 3 uses
  %i.eq = load ptr, ptr %i.bp, align 8, !tbaa !683, !nonnull !74, !align !75
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.044.074, align 8, !tbaa !364
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !199
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !317, !noalias !687
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !505, !noalias !690
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %i.eu, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !681 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.ex = load ptr, ptr %12, align 8, !tbaa !130, !noalias !693 ; 2 uses
  store ptr %i.ex, ptr %7, align 8, !tbaa !130, !alias.scope !693
  store ptr null, ptr %12, align 8, !tbaa !130, !noalias !693
  store i32 %i.ew, ptr %i.bq, align 8, !tbaa !150, !alias.scope !693
  %i.ey = load ptr, ptr %i.br, align 8, !tbaa !141 ; 5 uses
  %i.ez = load ptr, ptr %i.bs, align 8, !tbaa !142
  %.not.i.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !130
  store ptr null, ptr %7, align 8, !tbaa !130
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 %i.ew, ptr %i.fa, align 8, !tbaa !150
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.fb, ptr %i.br, align 8, !tbaa !141
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i

bb.y:                                             ; preds = %bb.w
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ey, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !127
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.y, %bb.x
  %i.fc = phi ptr [ null, %bb.x ], [ %.pre.i, %bb.y ] ; 2 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %notsub.i.i.i.i.i = add i64 %i.fd, -1
  %i.fe = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.fe, label %bb.z, label %_ZN4llvm3orc15SymbolLookupSet3addENS0_15SymbolStringPtrENS0_17SymbolLookupFlagsE.exit

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fg = atomicrmw sub ptr %i.ff, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolLookupSet3addENS0_15SymbolStringPtrENS0_17SymbolLookupFlagsE.exit

_ZN4llvm3orc15SymbolLookupSet3addENS0_15SymbolStringPtrENS0_17SymbolLookupFlagsE.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.fh = load ptr, ptr %12, align 8, !tbaa !127  ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %notsub.i.i.i = add i64 %i.fi, -1
  %i.fj = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.fj, label %bb.aa, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.aa:                                            ; preds = %_ZN4llvm3orc15SymbolLookupSet3addENS0_15SymbolStringPtrENS0_17SymbolLookupFlagsE.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = atomicrmw sub ptr %i.fk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZN4llvm3orc15SymbolLookupSet3addENS0_15SymbolStringPtrENS0_17SymbolLookupFlagsE.exit, %bb.aa
  %i.fm = add i64 %.pn, 24
  %i.fn = sdiv exact i64 %i.fm, 24                ; 3 uses
  %.not.i.i = icmp ult i64 %i.fn, %i.ba
  br i1 %.not.i.i, label %bb.ab, label %._crit_edge76

bb.ab:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.fo = lshr i64 %i.fn, 5                       ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.pre88, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !25
  %i.fr = trunc nuw i64 %i.fn to i32
  %i.fs = and i32 %i.fr, 31
  %i.ft = shl nsw i32 -1, %i.fs
  %i.fu = and i32 %i.fq, %i.ft                    ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.fw = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %i.fx = icmp eq i64 %i.fw, %i.bu
  br i1 %i.fx, label %._crit_edge76, label %.lr.ph176

.lr.ph.i.i:                                       ; preds = %.lr.ph176
  %i.fy = add i64 %i.ga, 1                        ; 2 uses
  %i.fz = icmp eq i64 %i.fy, %i.bu
  br i1 %i.fz, label %._crit_edge76, label %.lr.ph176, !llvm.loop !675

.lr.ph176:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ga = phi i64 [ %i.fy, %.lr.ph.i.i ], [ %i.fw, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.pre88, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !25 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit, !llvm.loop !675

_ZN4llvm16DenseMapIteratorINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit: ; preds = %.lr.ph176, %bb.ab
  %.012.lcssa.i.i = phi i64 [ %i.fo, %bb.ab ], [ %i.ga, %.lr.ph176 ]
  %.0.lcssa.i.i = phi i32 [ %i.fu, %bb.ab ], [ %i.gc, %.lr.ph176 ]
  %i.ge = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 768
  %narrow165 = mul nuw nsw i32 %i.ge, 24
  %.idx164 = zext nneg i32 %narrow165 to i64
  %i.gf = add i64 %.idx.i.i, %.idx164             ; 2 uses
  %.not61 = icmp eq i64 %i.gf, %.idx163
  br i1 %.not61, label %._crit_edge76, label %bb.w

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.gg = load i64, ptr %13, align 8, !tbaa !173, !noalias !696
  %i.gh = inttoptr i64 %i.gg to ptr
  store ptr null, ptr %13, align 8, !tbaa !173, !noalias !696
  store ptr %i.gh, ptr %0, align 8, !tbaa !178, !alias.scope !696
  br label %bb.af

bb.ac:                                            ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @_ZN4llvm3orc28DLLImportDefinitionGenerator16createStubsGraphERKNS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.395") align 8 %16, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %13)
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gj = load i8, ptr %i.gi, align 8
  %i.gk = trunc i8 %i.gj to i1
  br i1 %i.gk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !699, !nonnull !74, !align !75
  %i.gn = load i64, ptr %16, align 8, !tbaa !700
  store i64 %i.gn, ptr %17, align 8, !tbaa !700
  call void @_ZN4llvm3orc14LinkGraphLayer3addERNS0_8JITDylibESt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS6_EE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(272) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %17)
  %i.go = load ptr, ptr %17, align 8, !tbaa !700  ; 3 uses
  %.not.i25 = icmp eq ptr %i.go, null
  br i1 %.not.i25, label %_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS3_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i: ; preds = %bb.ad
  call void @_ZN4llvm7jitlink9LinkGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.go) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 312) #23
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS3_EEED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.gp = load i64, ptr %16, align 8, !tbaa !173, !noalias !702
  %i.gq = inttoptr i64 %i.gp to ptr
  store ptr %i.gq, ptr %0, align 8, !tbaa !178, !alias.scope !702
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS3_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS3_EEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %.pre95 = load i8, ptr %i.en, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS3_EEED2Ev.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.gr = phi i8 [ %.pre95, %_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS3_EEED2Ev.exit ], [ %i.eo, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.gs = trunc i8 %i.gr to i1
  br i1 %i.gs, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !166 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.ag
  %i.gw = load ptr, ptr %13, align 8, !tbaa !157
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !165
  %i.gz = zext i32 %i.gu to i64
  %i.ha = add nuw nsw i64 %i.gz, 31
  %i.hb = lshr i64 %i.ha, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i27, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i27 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i.i.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i27, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.he = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.ah

bb.ah:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i26
  %.0.i3.i.i.i = phi i32 [ %i.hd, %.lr.ph.i.i.i26 ], [ %i.hp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.hf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.hg = or disjoint i32 %i.hf, %i.he
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !127 ; 2 uses
  %i.hk = ptrtoint ptr %i.hj to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.hk, -1
  %i.hl = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.hl, label %bb.ai, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.ho = add i32 %.0.i3.i.i.i, -1
  %i.hp = and i32 %i.ho, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i27, label %bb.ah, !llvm.loop !180

._crit_edge.i.i.i27:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i28 = icmp eq i64 %indvars.iv.next.i.i.i, %i.hb
  br i1 %.not.i.i.i.i28, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i27
  %.pr.i.i29 = load i32, ptr %i.gt, align 4, !tbaa !166 ; 2 uses
  %i.hq = icmp eq i32 %.pr.i.i29, 0
  br i1 %i.hq, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.hr = load ptr, ptr %13, align 8, !tbaa !157
  %i.hs = zext i32 %.pr.i.i29 to i64              ; 2 uses
  %i.ht = mul nuw nsw i64 %i.hs, 24
  %i.hu = add nuw nsw i64 %i.hs, 31
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = and i64 %i.hv, 1073741820
  %i.hx = add nuw nsw i64 %i.hw, %i.ht
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hr, i64 noundef %i.hx, i64 noundef 8) #21
  br label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit

bb.ak:                                            ; preds = %bb.af
  %i.hy = load ptr, ptr %13, align 8, !tbaa !173  ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i30, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31: ; preds = %bb.ak
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !182
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy) #21, !inline_history !184
  br label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit: ; preds = %bb.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.aj, %bb.ak, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ic = load i32, ptr %i.cs, align 4, !tbaa !670 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit
  %i.ie = load ptr, ptr %10, align 8, !tbaa !663
  %i.if = zext i32 %i.ic to i64                   ; 2 uses
  %i.ig = mul nuw nsw i64 %i.if, 24
  %i.ih = add nuw nsw i64 %i.if, 31
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = and i64 %i.ii, 1073741820
  %i.ik = add nuw nsw i64 %i.ij, %i.ig
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ie, i64 noundef %i.ik, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.il = load ptr, ptr %9, align 8, !tbaa !138   ; 3 uses
  %i.im = load ptr, ptr %i.cv, align 8, !tbaa !141 ; 2 uses
  %.not4.i.i.i.i32 = icmp eq ptr %i.il, %i.im
  br i1 %.not4.i.i.i.i32, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i40, label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i36
  %.05.i.i.i.i34 = phi ptr [ %i.is, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i36 ], [ %i.il, %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit ] ; 2 uses
  %i.in = load ptr, ptr %.05.i.i.i.i34, align 8, !tbaa !127 ; 2 uses
  %i.io = ptrtoint ptr %i.in to i64
  %notsub.i.i.i.i.i.i.i.i.i35 = add i64 %i.io, -1
  %i.ip = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i35, -32
  br i1 %i.ip, label %bb.am, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i36

bb.am:                                            ; preds = %.lr.ph.i.i.i.i33
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ir = atomicrmw sub ptr %i.iq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i36

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i36: ; preds = %bb.am, %.lr.ph.i.i.i.i33
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i34, i64 16 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.is, %i.im
  br i1 %.not.i.i.i.i37, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i38, label %.lr.ph.i.i.i.i33, !llvm.loop !146

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i38: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i36
  %.pr.i.i39 = load ptr, ptr %9, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i40

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i40: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i38, %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit
  %i.it = phi ptr [ %.pr.i.i39, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i38 ], [ %i.il, %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i41 = icmp eq ptr %i.it, null
  br i1 %.not.i.i1.i.i41, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit42, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i40
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !142
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #23
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit42

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit42:         ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i40, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.iz = load ptr, ptr %8, align 8, !tbaa !147   ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit42
  %i.ja = load ptr, ptr %i.l, align 8, !tbaa !148
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jd) #23
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit42, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc28DLLImportDefinitionGenerator16createStubsGraphERKNS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.395") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.528", align 8    ; 6 uses
  %5 = alloca %"class.std::unique_ptr.397", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %7 = alloca %"class.llvm::SubtargetFeatures", align 8 ; 8 uses
  %8 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683, !nonnull !74, !align !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317, !noalias !705 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !711, !noalias !712 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !144, !noalias !712
  store <2 x ptr> %i.j, ptr %6, align 16, !tbaa !144, !alias.scope !712
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !712
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !25, !noalias !712
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !25, !noalias !712
  br label %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !712 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !683
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre49 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !317
  br label %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit

_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.p = phi ptr [ %i.e, %bb.a ], [ %i.e, %bb.c ], [ %.pre49, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN4llvm17SubtargetFeaturesC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr nonnull @.str.11, i64 0) #21
  call void @_ZSt11make_uniqueIN4llvm7jitlink9LinkGraphEJRA18_KcSt10shared_ptrINS0_3orc16SymbolStringPoolEERKNS0_6TripleENS0_17SubtargetFeaturesERFPS3_hEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.397") align 8 %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull @_ZN4llvm7jitlink22getGenericEdgeKindNameEh)
  %i.r = load ptr, ptr %7, align 8, !tbaa !713    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !716  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !291 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4llvm7jitlink6x86_6426createPointerJumpStubBlockERNS0_9LinkGraphERNS0_7SectionERNS0_6SymbolE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !797
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr @_ZN4llvm7jitlink6x86_6422PointerJumpStubContentE, ptr %i.l, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32
  store i64 6, ptr %i.m, align 8, !tbaa !772
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %.0.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !833
  %i.p = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !858 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !842  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !843
  %.not.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  store ptr %2, ptr %i.r, align 8, !tbaa !798
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !25
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.69.0..sroa_idx.i, align 8, !tbaa !199
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 16, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !842
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.q, align 8, !tbaa !842
  br label %_ZN4llvm7jitlink5Block7addEdgeEhjRNS0_6SymbolEl.exit

bb.e:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !844  ; 5 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775776
  br i1 %i.aa, label %bb.f, label %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = ashr exact i64 %i.z, 5                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711743)
  %i.af = select i1 %i.ad, i64 288230376151711743, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #22 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z ; 4 uses
  store ptr %2, ptr %i.ai, align 8, !tbaa !798
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !25
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.69.0..sroa_idx10.i, align 8, !tbaa !199
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 16, ptr %.sroa.7.0..sroa_idx12.i, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !845, !alias.scope !865
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !850

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !843
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ao) #23
  br label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !844
  store ptr %i.al, ptr %i.q, align 8, !tbaa !842
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !843
  br label %_ZN4llvm7jitlink5Block7addEdgeEhjRNS0_6SymbolEl.exit

_ZN4llvm7jitlink5Block7addEdgeEhjRNS0_6SymbolEl.exit: ; preds = %bb.d, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  ret ptr %.0.i.i.i.i.i.i
}

; Function Attrs: nounwind
declare void @_ZN4llvm3orc19DefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc28DLLImportDefinitionGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm3orc19DefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc29DynamicLibrarySearchGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3orc29DynamicLibrarySearchGeneratorE, i64 16), ptr %0, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void %i.b(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #21, !inline_history !869
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %.not.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3) #21, !inline_history !145 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit, %bb.c
  tail call void @_ZN4llvm3orc19DefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc29DynamicLibrarySearchGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(217) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3orc29DynamicLibrarySearchGeneratorE, i64 16), ptr %0, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void %i.b(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #21, !inline_history !870
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit.i

_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN4llvm3orc29DynamicLibrarySearchGeneratorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3) #21, !inline_history !871 ; 0 uses
  br label %_ZN4llvm3orc29DynamicLibrarySearchGeneratorD2Ev.exit

_ZN4llvm3orc29DynamicLibrarySearchGeneratorD2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_8DenseMapINS3_15SymbolStringPtrENS3_17ExecutorSymbolDefENS_12DenseMapInfoIS7_vEENS0_12DenseMapPairIS7_S8_EEEEEED2Ev.exit.i, %bb.c
  tail call void @_ZN4llvm3orc19DefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(217) %0) #21, !inline_history !872
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc32StaticLibraryDefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3orc32StaticLibraryDefinitionGeneratorE, i64 16), ptr %0, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !525  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !527
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.m = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %notsub.i.i.i.i.i.i = add i64 %i.s, -1
  %i.t = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.t, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = atomicrmw sub ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.w = add i32 %.0.i3.i.i, -1
  %i.x = and i32 %i.w, %.0.i3.i.i                 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !529

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !530

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !525 ; 2 uses
  %i.y = icmp eq i32 %.pr.i, 0
  br i1 %i.y, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !527
  %i.aa = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !350 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !182
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(144) %i.ah) #21, !inline_history !352
  br label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !327 ; 3 uses
  %.not.i1 = icmp eq ptr %i.am, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !182
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #21, !inline_history !336
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331 ; 2 uses
  %.not.i2 = icmp eq ptr %i.ar, null
  br i1 %.not.i2, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void %i.ar(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.as) #21, !inline_history !334
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.e
  tail call void @_ZN4llvm3orc19DefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc32StaticLibraryDefinitionGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm3orc32StaticLibraryDefinitionGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #23
  ret void
}

declare noundef ptr @_ZNK4llvm6Module17getGlobalVariableENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !138    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !130
  store ptr %i.r, ptr %i.q, align 8, !tbaa !130
  store ptr null, ptr %2, align 8, !tbaa !130
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !150
  store i32 %i.u, ptr %i.s, align 8, !tbaa !150
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.v = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !127 ; 3 uses
  store ptr %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !127
  %i.w = ptrtoint ptr %i.v to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.w, -1
  %i.x = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.x, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !150
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !154

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.ao, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %i.ag = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !127 ; 3 uses
  store ptr %i.ag, ptr %.011.i.i.i.i.i20, align 8, !tbaa !127
  %i.ah = ptrtoint ptr %i.ag to i64
  %notsub.i.i.i.i.i.i.i.i.i.i22 = add i64 %i.ah, -1
  %i.ai = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i22, -32
  br i1 %i.ai, label %bb.d, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.d, %.lr.ph.i.i.i.i.i19
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !150
  store i32 %i.an, ptr %i.al, align 8, !tbaa !150
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !154

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !173, !alias.scope !969, !noalias !966
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !173, !alias.scope !966, !noalias !969
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !173, !alias.scope !969, !noalias !966
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !977

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %middle.block56 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !906
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !910
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !904
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !906
  ret void
}

declare { ptr, i64 } @_ZNK4llvm6object7Archive12symbol_beginEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm6object7Archive10symbol_endEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %2, i64 %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.c = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %2, i64 %3) #21
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr %2, i64 %3, i32 noundef %i.c) #21 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !978
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !981  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.h, null
  br i1 %.not.i.i5, label %bb.c, label %_ZN4llvm9StringMapISt6atomicImENS_15MallocAllocatorEE11try_emplaceIJiEEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = add i64 %3, 17
  %i.j = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.i, i64 noundef 8) #21 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryISt6atomicImEE6createINS_15MallocAllocatorEJiEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZN4llvm14StringMapEntryISt6atomicImEE6createINS_15MallocAllocatorEJiEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i

_ZN4llvm14StringMapEntryISt6atomicImEE6createINS_15MallocAllocatorEJiEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  store i8 0, ptr %i.l, align 1, !tbaa !28
  store i64 %3, ptr %i.j, align 8, !tbaa !294
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !983
  store ptr %i.j, ptr %i.g, align 8, !tbaa !981
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !985
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !985
  %i.q = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef %i.d) #21
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !978
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !981
  br label %_ZN4llvm9StringMapISt6atomicImENS_15MallocAllocatorEE11try_emplaceIJiEEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit

_ZN4llvm9StringMapISt6atomicImENS_15MallocAllocatorEE11try_emplaceIJiEEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZN4llvm14StringMapEntryISt6atomicImEE6createINS_15MallocAllocatorEJiEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i
  %i.u = phi ptr [ %.pre, %_ZN4llvm14StringMapEntryISt6atomicImEE6createINS_15MallocAllocatorEJiEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i ], [ %i.h, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !127
  %i.v = ptrtoint ptr %i.u to i64
  %notsub.i.i.i = add i64 %i.v, -1
  %i.w = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.w, label %bb.e, label %_ZN4llvm3orc15SymbolStringPtrC2EPNS_14StringMapEntryISt6atomicImEEE.exit

bb.e:                                             ; preds = %_ZN4llvm9StringMapISt6atomicImENS_15MallocAllocatorEE11try_emplaceIJiEEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2EPNS_14StringMapEntryISt6atomicImEEE.exit

_ZN4llvm3orc15SymbolStringPtrC2EPNS_14StringMapEntryISt6atomicImEEE.exit: ; preds = %_ZN4llvm9StringMapISt6atomicImENS_15MallocAllocatorEE11try_emplaceIJiEEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit, %bb.e
  %i.z = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #21 ; 0 uses
  ret void
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm6object7Archive6Symbol7getNextEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc14LinkGraphLayer3addENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEESt10unique_ptrINS_7jitlink9LinkGraphESt14default_deleteIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(8) %2, ptr nofree noundef align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"struct.llvm::orc::MaterializationUnit::Interface", align 16 ; 11 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.397", align 8 ; 3 uses
  %7 = alloca %"struct.llvm::orc::MaterializationUnit::Interface", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %3, align 8, !tbaa !700
  call void @_ZN4llvm3orc14LinkGraphLayer12getInterfaceERNS_7jitlink9LinkGraphE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::orc::MaterializationUnit::Interface") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(312) %i.a) #21
  %i.b = load ptr, ptr %2, align 8, !tbaa !206
  store ptr %i.b, ptr %5, align 8, !tbaa !206
  store ptr null, ptr %2, align 8, !tbaa !206
  %i.c = load i64, ptr %3, align 8, !tbaa !700
  store i64 %i.c, ptr %6, align 8, !tbaa !700
  store ptr null, ptr %3, align 8, !tbaa !700
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %4, align 16, !tbaa !144
  store ptr null, ptr %4, align 16, !tbaa !618
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !144
  store ptr null, ptr %i.e, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.k = load <2 x i32>, ptr %i.h, align 16, !tbaa !25
  store i32 0, ptr %i.h, align 16, !tbaa !25
  store <2 x i32> %i.k, ptr %i.g, align 16, !tbaa !25
  store i32 0, ptr %i.j, align 4, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130
  store ptr %i.n, ptr %i.l, align 8, !tbaa !130
  store ptr null, ptr %i.m, align 8, !tbaa !130
  %i.o = load ptr, ptr %1, align 8, !tbaa !182
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #21
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !127  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %notsub.i.i.i.i = add i64 %i.s, -1
  %i.t = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.t, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = atomicrmw sub ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.b, %bb.a
  %i.w = load i32, ptr %i.i, align 4, !tbaa !619  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.y = load ptr, ptr %7, align 16, !tbaa !620
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !621
  %i.aa = zext i32 %i.w to i64
  %i.ab = add nuw nsw i64 %i.aa, 31
  %i.ac = lshr i64 %i.ab, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.af = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.aq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ag = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !127 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.al, -1
  %i.am = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.am, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ap = add i32 %.0.i3.i.i.i, -1
  %i.aq = and i32 %i.ap, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !622

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !623

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.i, align 4, !tbaa !619 ; 2 uses
  %i.ar = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ar, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.as = load ptr, ptr %7, align 16, !tbaa !620
  %i.at = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #21
  br label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit

_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  %i.az = load ptr, ptr %6, align 8, !tbaa !700   ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm7jitlink9LinkGraphESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit
  call void @_ZN4llvm7jitlink9LinkGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.az) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 312) #23
  br label %_ZNSt10unique_ptrIN4llvm7jitlink9LinkGraphESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm7jitlink9LinkGraphESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, %_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i
  %i.ba = load ptr, ptr %5, align 8, !tbaa !206   ; 4 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7jitlink9LinkGraphESt14default_deleteIS2_EED2Ev.exit
  %i.bb = atomicrmw sub ptr %i.ba, i32 1 acq_rel, align 4
  %.not.i.i.i.i1 = icmp eq i32 %i.bb, 1
  br i1 %.not.i.i.i.i1, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ba) #21
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.ba, i64 noundef 16) #23
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm7jitlink9LinkGraphESt14default_deleteIS2_EED2Ev.exit, %bb.f, %bb.g
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !127 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %notsub.i.i.i.i2 = add i64 %i.bd, -1
  %i.be = icmp ult i64 %notsub.i.i.i.i2, -32
  br i1 %i.be, label %bb.h, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i3

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i3

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i3:        ; preds = %bb.h, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.bh = load i32, ptr %i.j, align 4, !tbaa !619 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit19, label %.lr.ph7.preheader.i.i.i4

.lr.ph7.preheader.i.i.i4:                         ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i3
  %i.bj = load ptr, ptr %4, align 16, !tbaa !620
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !621
  %i.bl = zext i32 %i.bh to i64
  %i.bm = add nuw nsw i64 %i.bl, 31
  %i.bn = lshr i64 %i.bm, 5
  br label %.lr.ph7.i.i.i5

.lr.ph7.i.i.i5:                                   ; preds = %._crit_edge.i.i.i14, %.lr.ph7.preheader.i.i.i4
  %indvars.iv.i.i.i6 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i4 ], [ %indvars.iv.next.i.i.i15, %._crit_edge.i.i.i14 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i6
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i.i7 = icmp eq i32 %i.bp, 0
  br i1 %.not11.i2.i.i.i7, label %._crit_edge.i.i.i14, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph7.i.i.i5
  %indvars.iv.tr.i.i.i9 = trunc nuw i64 %indvars.iv.i.i.i6 to i32
  %i.bq = shl nuw i32 %indvars.iv.tr.i.i.i9, 5
  br label %bb.i

bb.i:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i12, %.lr.ph.i.i.i8
  %.0.i3.i.i.i10 = phi i32 [ %i.bp, %.lr.ph.i.i.i8 ], [ %i.cb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i12 ] ; 3 uses
  %i.br = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i10, i1 true)
  %i.bs = or disjoint i32 %i.br, %i.bq
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %notsub.i.i.i.i.i.i.i11 = add i64 %i.bw, -1
  %i.bx = icmp ult i64 %notsub.i.i.i.i.i.i.i11, -32
  br i1 %i.bx, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i12

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = atomicrmw sub ptr %i.by, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i12

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i12: ; preds = %bb.j, %bb.i
  %i.ca = add i32 %.0.i3.i.i.i10, -1
  %i.cb = and i32 %i.ca, %.0.i3.i.i.i10           ; 2 uses
  %.not11.i.i.i.i13 = icmp eq i32 %i.cb, 0
  br i1 %.not11.i.i.i.i13, label %._crit_edge.i.i.i14, label %bb.i, !llvm.loop !622

._crit_edge.i.i.i14:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i12, %.lr.ph7.i.i.i5
  %indvars.iv.next.i.i.i15 = add nuw nsw i64 %indvars.iv.i.i.i6, 1 ; 2 uses
  %.not.i.i.i.i16 = icmp eq i64 %indvars.iv.next.i.i.i15, %i.bn
  br i1 %.not.i.i.i.i16, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i17, label %.lr.ph7.i.i.i5, !llvm.loop !623

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i17: ; preds = %._crit_edge.i.i.i14
  %.pr.i.i18 = load i32, ptr %i.j, align 4, !tbaa !619 ; 2 uses
  %i.cc = icmp eq i32 %.pr.i.i18, 0
  br i1 %i.cc, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit19, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i17
  %i.cd = load ptr, ptr %4, align 16, !tbaa !620
  %i.ce = zext i32 %.pr.i.i18 to i64              ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 4
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #21
  br label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit19

_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit19: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i3, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i17, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare void @_ZN4llvm3orc14LinkGraphLayer12getInterfaceERNS_7jitlink9LinkGraphE(ptr dead_on_unwind writable sret(%"struct.llvm::orc::MaterializationUnit::Interface") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !986
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !182
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !986
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIS2_JS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !987
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !987  ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !987
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !723
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !988  ; 2 uses
  %i.i = shl i32 %i.f, 2
  %i.j = add i32 %i.i, 4
  %i.k = mul i32 %i.h, 3
  %.not.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit, label %bb.c, !prof !168

bb.c:                                             ; preds = %bb.b
  %i.l = shl i32 %i.h, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.l)
  %i.m = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !987
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !989
  %i.q = load ptr, ptr %0, align 8, !tbaa !990
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24                  ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = lshr i64 %i.u, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = or i32 %i.x, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !25
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !723
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !413
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load i64, ptr %2, align 8, !tbaa !740
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !740
  store ptr null, ptr %2, align 8, !tbaa !740
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !990, !noalias !991 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !989, !noalias !991 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !988, !noalias !991 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !364
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !199
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #21
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !364
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !199
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !199
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !996

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !169, !llvm.loop !997

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !199
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !996

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !364
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !998

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !169, !llvm.loop !997

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !987
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.422", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !988
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !990
  store ptr %i.y, ptr %i.q, align 8, !tbaa !989
  store i32 0, ptr %i.p, align 16, !tbaa !723
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !987    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store ptr %i.z, ptr %2, align 16, !tbaa !987
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !144
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !25
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !25
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !740 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.au) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 80) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !999

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1000

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !988 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !990
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 24
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !990
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !989
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !988  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !989  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !990
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !988
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !364
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !199
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1001

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.w ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !413
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !740
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !740
  store ptr null, ptr %i.ah, align 8, !tbaa !740
  %i.aj = shl nuw i32 1, %i.aa
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !25
  %i.am = add i32 %.0.i21, -1
  %i.an = and i32 %i.am, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1002

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1003

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !988
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !723
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !723
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !990
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !988
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !809  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !810
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !168

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !808
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !809
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !809
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !809
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #21 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !809 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !810
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !168

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !808
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !809
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !809
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !792
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !780
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !809
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !808
  %i.g = load i32, ptr %i.a, align 8, !tbaa !809
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !809
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !809
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1014
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1013
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1010
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1004
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1014
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !798
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !798
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1004, !noalias !1015 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010, !noalias !1015 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1011, !noalias !1015 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !798    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !798
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1012

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1013
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.428", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1011
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1004
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1010
  store i32 0, ptr %i.p, align 16, !tbaa !1014
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !144
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1013
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !25
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1004   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1011 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1010 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1004
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1011
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !798  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1020

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !798
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !25
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1021

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1022

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1011
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1014
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1014
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !1011
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef i32 @_ZN4llvm6Triple22getArchPointerBitWidthENS0_8ArchTypeE(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1023, !noalias !1024 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1029, !noalias !1024 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1030, !noalias !1024 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !833    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !167

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !833
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !169, !llvm.loop !1031

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1033
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1032
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1029
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1023
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1033
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !833
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !833
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1023, !noalias !1034 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1029, !noalias !1034 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1030, !noalias !1034 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !833    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !833
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1031

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1032
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.437", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1030
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1023
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1029
  store i32 0, ptr %i.p, align 16, !tbaa !1033
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !144
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1032
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !25
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1023   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1029
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1030 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1029 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1023
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1030
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !833  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1039

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !833
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !25
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1040

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1041

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1030
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1033
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1033
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !1030
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

declare void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(34), i32, ptr) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !581    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !127    ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !127
  %i.s = ptrtoint ptr %i.r to i64
  %notsub.i.i.i = add i64 %i.s, -1
  %i.t = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.t, label %bb.c, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !127 ; 3 uses
  store ptr %i.w, ptr %.011.i.i.i.i.i, align 8, !tbaa !127
  %i.x = ptrtoint ptr %i.w to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.x, -1
  %i.y = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.y, label %bb.d, label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = atomicrmw add ptr %i.z, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1042

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ %i.ac, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ak, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.aj, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !127 ; 3 uses
  store ptr %i.ae, ptr %.011.i.i.i.i.i20, align 8, !tbaa !127
  %i.af = ptrtoint ptr %i.ae to i64
  %notsub.i.i.i.i.i.i.i.i.i22 = add i64 %i.af, -1
  %i.ag = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i22, -32
  br i1 %i.ag, label %bb.e, label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !1042

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit26: ; preds = %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ak, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit26 ] ; 2 uses
  %i.al = load ptr, ptr %.05.i.i, align 8, !tbaa !127 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !169, !llvm.loop !170

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !203
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !293
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !203
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !165
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !157
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !293
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !127   ; 3 uses
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !127
  %i.bi = ptrtoint ptr %i.bh to i64
  %notsub.i.i.i = add i64 %i.bi, -1
  %i.bj = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.bj, label %bb.e, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !157, !noalias !1055 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165, !noalias !1055 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166, !noalias !1055 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !170

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !203
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.180", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !166
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !157
  store ptr %i.y, ptr %i.q, align 8, !tbaa !165
  store i32 0, ptr %i.p, align 16, !tbaa !293
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !203    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store ptr %i.z, ptr %2, align 16, !tbaa !203
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !144
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !25
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !25
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !127 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !180

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !166 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !157
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !166
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1060

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr null, ptr %i.as, align 8, !tbaa !127
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !130
  store ptr %i.at, ptr %i.as, align 8, !tbaa !130
  store ptr null, ptr %i.u, align 8, !tbaa !130
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !1061
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !25
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !25
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !127 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %notsub.i.i.i.i = add i64 %i.bb, -1
  %i.bc = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bc, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1064

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1065

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !166
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !293
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !293
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !157
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1049
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1066 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !581  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i.i.i.i.i ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !127 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.j, -1
  %i.k = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.k, label %bb.b, label %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !582

_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm3orc15SymbolStringPtrEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !581
  br label %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exit.i.i.i.i

_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.o = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZSt8_DestroyIPN4llvm3orc15SymbolStringPtrEEvT_S4_.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1067

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !157, !noalias !1068 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165, !noalias !1068 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !166, !noalias !1068 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_.exit, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !169, !llvm.loop !1095

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1096
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1097
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1096
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !240
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !228
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1097
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !144
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !144
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228, !noalias !1098 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240, !noalias !1098 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241, !noalias !1098 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !144    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !144
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1095

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1096
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.206", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !241
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !228
  store ptr %i.y, ptr %i.q, align 8, !tbaa !240
  store i32 0, ptr %i.p, align 16, !tbaa !1097
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1096   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store ptr %i.z, ptr %2, align 16, !tbaa !1096
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !144
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !25
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !25
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !226
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1103

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1104

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !241 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !228
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !228
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !241
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !144  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1105

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !144
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1106
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1106
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !226
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !25
  %i.bd = add i32 %.0.i19, -1
  %i.be = and i32 %i.bd, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1107

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1108

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !241
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1097
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !1097
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !228
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !241
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS9_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvSt6vectorINS_3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit

_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1097
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !1097
  %i.k = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !240  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !241
  %i.p = add i32 %i.o, -1                         ; 4 uses
  %i.q = ptrtoint ptr %1 to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 5
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = add i32 %i.u, 1
  %i.w = and i32 %i.v, %i.p                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = and i32 %i.w, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit, %bb.c
  %.pn = phi i64 [ %i.bb, %bb.c ], [ %i.x, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit ]
  %i.ae = phi i32 [ %i.ba, %bb.c ], [ %i.w, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit ] ; 3 uses
  %.03339 = phi i32 [ %.2, %bb.c ], [ %i.u, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.pn ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = mul i64 %i.ah, -4658895280553007687     ; 2 uses
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = sub i32 %.03339, %i.al
  %i.an = and i32 %i.am, %i.p
  %i.ao = sub i32 %i.ae, %i.al
  %i.ap = and i32 %i.ao, %i.p
  %i.aq = icmp ult i32 %i.an, %i.ap
  br i1 %i.aq, label %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit35, label %bb.c

_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit35: ; preds = %.lr.ph
  %i.ar = zext i32 %.03339 to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.ar ; 3 uses
  store ptr %i.ag, ptr %i.as, align 8, !tbaa !144
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1106
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1106
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !226
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit35
  %.2 = phi i32 [ %.03339, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit35 ] ; 2 uses
  %i.az = add i32 %i.ae, 1
  %i.ba = and i32 %i.az, %i.p                     ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = and i32 %i.ba, 31
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.u, %_ZNSt6vectorIN4llvm3orc23ItaniumCXAAtExitSupport12AtExitRecordESaIS3_EED2Ev.exit ], [ %.2, %bb.c ] ; 2 uses
  %i.bi = and i32 %.033.lcssa, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = xor i32 %i.bj, -1
  %i.bl = lshr i32 %.033.lcssa, 5
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !25
  %i.bp = and i32 %i.bo, %i.bk
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketImJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1130
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1129
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !473
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !465
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !25
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1130
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !199
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !199
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !465, !noalias !1131 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473, !noalias !1131 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !474, !noalias !1131 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !199
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1128

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1129
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.272", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !474
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !465
  store ptr %i.y, ptr %i.q, align 8, !tbaa !473
  store i32 0, ptr %i.p, align 16, !tbaa !1130
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !144
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1129
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !25
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit

_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !465    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !474  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !473  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !465
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !474
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1136

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.v, ptr %i.as, align 8, !tbaa !199
  %i.at = shl nuw i32 1, %.lcssa.i
  %i.au = or i32 %i.at, %.lcssa11.i
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !25
  %i.av = add i32 %.0.i15, -1
  %i.aw = and i32 %i.av, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1137

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1138

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !474
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ax = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1130
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !1130
  %i.bb = icmp eq i32 %i.ax, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bc = zext i32 %i.ax to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bh, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !474
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit

_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !487, !noalias !1139 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !500, !noalias !1139 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !484, !noalias !1139 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !167

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !199
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !169, !llvm.loop !1144

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1145
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1146
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1145
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !500
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !487
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !25
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1146
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !199
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !199
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !199
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !487, !noalias !1147 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !500, !noalias !1147 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !484, !noalias !1147 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !199
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1144

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1145
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.300", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !484
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !487
  store ptr %i.y, ptr %i.q, align 8, !tbaa !500
  store i32 0, ptr %i.p, align 16, !tbaa !1146
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !144
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1145
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !25
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !487    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !500
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !484  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !500  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !487
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !484
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !1152

_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !199
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !199
  store i64 %i.av, ptr %i.at, align 8, !tbaa !199
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !25
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1153

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1154

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !484
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1146
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1146
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !484
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !527, !noalias !1155 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !528, !noalias !1155 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !525, !noalias !1155 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !167

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !169, !llvm.loop !1160

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !521
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !566
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !521
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !528
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !527
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !566
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !127
  %i.bh = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !130
  store ptr null, ptr %1, align 8, !tbaa !130
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !199
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !527, !noalias !1161 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !528, !noalias !1161 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !525, !noalias !1161 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1160

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !521
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.298", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !525
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !527
  store ptr %i.y, ptr %i.q, align 8, !tbaa !528
  store i32 0, ptr %i.p, align 16, !tbaa !566
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !521    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store ptr %i.z, ptr %2, align 16, !tbaa !521
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !144
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !25
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !25
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !127 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !529

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !530

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !525 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !527
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !527    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !528
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !525  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !527
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !525
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1166

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 3 uses
  store ptr null, ptr %i.at, align 8, !tbaa !127
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !130
  store ptr %i.au, ptr %i.at, align 8, !tbaa !130
  store ptr null, ptr %i.u, align 8, !tbaa !130
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !199
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !199
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = or i32 %i.ay, %.lcssa11.i
  store i32 %i.az, ptr %i.as, align 4, !tbaa !25
  %i.ba = add i32 %.0.i15, -1
  %i.bb = and i32 %i.ba, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1167

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1168

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !525
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !566
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !566
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !525
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !543, !noalias !1169 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !551, !noalias !1169 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !552, !noalias !1169 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !167

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !199
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !169, !llvm.loop !1174

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1175
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !586
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !168

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1175
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !551
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !543
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !25
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !586
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !199
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !199
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i8 0, i64 32, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !543, !noalias !1176 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !551, !noalias !1176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !552, !noalias !1176 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !199
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !168

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !169, !llvm.loop !1174

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1175
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.327", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !552
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !543
  store ptr %i.y, ptr %i.q, align 8, !tbaa !551
  store i32 0, ptr %i.p, align 16, !tbaa !586
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !144
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1175
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !25
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 40
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit

_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !543
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !551
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !552  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !551  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !543
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !552
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1181

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !199
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !tbaa.struct !561
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !25
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !25
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1182

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1183

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !552
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !586
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !586
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !543
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 40
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit

_ZN4llvm8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_15MemoryBufferRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %notsub.i.i.i = add i64 %i.b, -1
  %i.c = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.c, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !566
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !566
  %i.i = load ptr, ptr %0, align 8, !tbaa !527    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !528  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !525
  %i.n = add i32 %i.m, -1                         ; 4 uses
  %i.o = ptrtoint ptr %1 to i64
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = and i32 %i.t, %i.n                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = and i32 %i.u, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.c
  %.pn = phi i64 [ %i.ax, %bb.c ], [ %i.v, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit ]
  %i.ac = phi i32 [ %i.aw, %bb.c ], [ %i.u, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit ] ; 3 uses
  %.03339 = phi i32 [ %.2, %bb.c ], [ %i.s, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pn ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !127
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = sub i32 %.03339, %i.aj
  %i.al = and i32 %i.ak, %i.n
  %i.am = sub i32 %i.ac, %i.aj
  %i.an = and i32 %i.am, %i.n
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit35, label %bb.c

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit35:         ; preds = %.lr.ph
  %i.ap = zext i32 %.03339 to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !127
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !130
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !130
  store ptr null, ptr %i.ad, align 8, !tbaa !130
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.au, ptr %i.as, align 8, !tbaa !199
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit35
  %.2 = phi i32 [ %.03339, %.lr.ph ], [ %i.ac, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit35 ] ; 2 uses
  %i.av = add i32 %i.ac, 1
  %i.aw = and i32 %i.av, %i.n                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !25
  %i.bb = and i32 %i.aw, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %.033.lcssa = phi i32 [ %i.s, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit ], [ %.2, %bb.c ] ; 2 uses
  %i.be = and i32 %.033.lcssa, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = xor i32 %i.bf, -1
  %i.bh = lshr i32 %.033.lcssa, 5
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !25
  %i.bl = and i32 %i.bk, %i.bg
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEEC1IPFS6_S8_S9_ESD_EET_NSA_8CalledAsIT0_EEENUlPKSA_S8_RS9_E_8__invokeESJ_S8_SK_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.350") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !144, !noalias !1184
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.llvm::Expected.350") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %3) #21, !inline_history !1187
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !413
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !1189
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !663, !noalias !1190 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !669, !noalias !1190 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !670, !noalias !1190 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !364
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !199
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #21
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !167

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !364
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !199
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !199
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !996

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !169, !llvm.loop !1195

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !199
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !996

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !364
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !998

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !169, !llvm.loop !1195

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !1188
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.385", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !670
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !663
  store ptr %i.y, ptr %i.q, align 8, !tbaa !669
  store i32 0, ptr %i.p, align 16, !tbaa !671
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !144
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1188
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !144
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !25
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !25
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !663
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !669
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !670  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !669  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !663
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !670
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !364
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !199
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1196

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.w ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !413
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1189
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !1189
  %i.aj = shl nuw i32 1, %i.aa
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !25
  %i.am = add i32 %.0.i21, -1
  %i.an = and i32 %i.am, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1197

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1198

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !670
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !671
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !671
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !663
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !670
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_3orc17SymbolLookupFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm3UseE", !10, i64 0, !12, i64 8, !13, i64 16, !15, i64 24}
!10 = !{!"p1 _ZTSN4llvm5ValueE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN4llvm3UseE", !11, i64 0}
!13 = !{!"p2 _ZTSN4llvm3UseE", !14, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"p1 _ZTSN4llvm4UserE", !11, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN4llvm3orc16CtorDtorIteratorE", !18, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTSN4llvm13ConstantArrayE", !11, i64 0}
!19 = !{!20, !6, i64 0}
!20 = !{!"_ZTSN4llvm5ValueE", !6, i64 0, !6, i64 1, !6, i64 1, !21, i64 2, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 7, !22, i64 8, !12, i64 16}
!21 = !{!"short", !6, i64 0}
!22 = !{!"p1 _ZTSN4llvm4TypeE", !11, i64 0}
!23 = !{!17, !5, i64 8}
!24 = !{!18, !18, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!27, !5, i64 8}
!27 = !{!"_ZTSN4llvm5APIntE", !6, i64 0, !5, i64 8}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !5, i64 0}
!30 = !{!"_ZTSN4llvm3orc16CtorDtorIterator7ElementE", !5, i64 0, !31, i64 8, !10, i64 16}
!31 = !{!"p1 _ZTSN4llvm8FunctionE", !11, i64 0}
!32 = !{!30, !31, i64 8}
!33 = !{!30, !10, i64 16}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4llvm10make_rangeINS_3orc16CtorDtorIteratorEEENS_14iterator_rangeIT_EES4_S4_: argument 0"}
!36 = distinct !{!36, !"_ZN4llvm10make_rangeINS_3orc16CtorDtorIteratorEEENS_14iterator_rangeIT_EES4_S4_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4llvm10make_rangeINS_3orc16CtorDtorIteratorEEENS_14iterator_rangeIT_EES4_S4_: argument 0"}
!39 = distinct !{!39, !"_ZN4llvm10make_rangeINS_3orc16CtorDtorIteratorEEENS_14iterator_rangeIT_EES4_S4_"}
!40 = !{!41, !60, i64 128}
!41 = !{!"_ZTSN4llvm3orc20StaticInitGVIteratorE", !42, i64 0, !42, i64 64, !60, i64 128}
!42 = !{!"_ZTSN4llvm15concat_iteratorINS_11GlobalValueEJNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEENS2_INS4_INS_14GlobalVariableELb0ELb0EvLb0EvEELb0ELb0EEENS2_INS4_INS_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEENS2_INS4_INS_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEEEEE", !43, i64 0, !43, i64 32}
!43 = !{!"_ZTSSt5tupleIJN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_14GlobalVariableELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEEEE", !44, i64 0}
!44 = !{!"_ZTSSt11_Tuple_implILm0EJN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_14GlobalVariableELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEEEE", !45, i64 0, !57, i64 24}
!45 = !{!"_ZTSSt11_Tuple_implILm1EJN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14GlobalVariableELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEEEE", !46, i64 0, !54, i64 16}
!46 = !{!"_ZTSSt11_Tuple_implILm2EJN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEENS1_INS3_INS0_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEEEE", !47, i64 0, !51, i64 8}
!47 = !{!"_ZTSSt11_Tuple_implILm3EJN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEEEE", !48, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm3EN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEELb0EE", !49, i64 0}
!49 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11GlobalIFuncELb0ELb0EvLb0EvEELb0ELb0EEE", !50, i64 0}
!50 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11GlobalIFuncELb0ELb0EvLb0EvEEEE", !11, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm2EN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEELb0EE", !52, i64 0}
!52 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11GlobalAliasELb0ELb0EvLb0EvEELb0ELb0EEE", !53, i64 0}
!53 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11GlobalAliasELb0ELb0EvLb0EvEEEE", !11, i64 0}
!54 = !{!"_ZTSSt10_Head_baseILm1EN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14GlobalVariableELb0ELb0EvLb0EvEELb0ELb0EEELb0EE", !55, i64 0}
!55 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_14GlobalVariableELb0ELb0EvLb0EvEELb0ELb0EEE", !56, i64 0}
!56 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_14GlobalVariableELb0ELb0EvLb0EvEEEE", !11, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEELb0EE", !58, i64 0}
!58 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEE", !59, i64 0}
!59 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEEEE", !11, i64 0}
!60 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !6, i64 0}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSN4llvm3orc14CtorDtorRunnerE", !63, i64 0, !64, i64 8}
!63 = !{!"p1 _ZTSN4llvm3orc8JITDylibE", !11, i64 0}
!64 = !{!"_ZTSSt3mapIjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE", !65, i64 0}
!65 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE", !66, i64 0}
!66 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4llvm3orc15SymbolStringPtrESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !67, i64 0, !69, i64 8}
!67 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !68, i64 0}
!68 = !{!"_ZTSSt4lessIjE"}
end_hunk_11
