inline.NumInlined: 1832
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i.i:      ; preds = %.noexc67.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %.sroa.10104.0.i.i.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.bb, %.noexc67.i.i.i ] ; 2 uses
  %.sroa.0100.0.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.az, %.noexc67.i.i.i ] ; 6 uses
  %i.bc = mul i64 %i.aw, %4                       ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 2305843009213693951
  %i.be = shl i64 %i.bc, 3
  %i.bf = select i1 %i.bd, i64 -1, i64 %i.be
  %i.bg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #28
          to label %bb.c unwind label %bb.e, !noalias !323 ; 3 uses

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4, !noalias !321
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !noalias !321
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %sext.i.i = shl i64 %5, 32
  %i.bi = ashr exact i64 %sext.i.i, 32
  %i.bj = trunc i64 %4 to i32                     ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i
  store ptr %i.co, ptr %i.bh, align 8, !noalias !321
  store ptr %i.cm, ptr %i.bk, align 8, !noalias !321
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i, %bb.c
  %.lcssa112.i.i.i = phi ptr [ %i.cn, %._crit_edge.i.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr %.lcssa112.i.i.i, ptr %15, align 8, !noalias !321
  %i.bl = load i64, ptr @_ZN5faiss18hamming_batch_sizeE, align 8, !tbaa !31, !noalias !321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #4, !noalias !321
  store i64 0, ptr %i.ao, align 8, !tbaa !31, !noalias !321
  %.not143.i.i.i = icmp eq i64 %3, 0
  br i1 %.not143.i.i.i, label %._crit_edge127.i.i.i, label %.lr.ph126.i.i.i

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i, %.lr.ph.i.i.i
  %i.bn = phi ptr [ null, %.lr.ph.i.i.i ], [ %i.cm, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 5 uses
  %i.bo = phi ptr [ null, %.lr.ph.i.i.i ], [ %i.co, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 9 uses
  %.058115.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.cp, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 3 uses
  %i.bp = phi ptr [ null, %.lr.ph.i.i.i ], [ %i.cn, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 8 uses
  %i.bq = mul i64 %.058115.i.i.i, %i.av           ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0.i.i.i, i64 %i.bq ; 2 uses
  %i.bs = mul i64 %i.bq, %4
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bs ; 2 uses
  %i.bu = mul i64 %.058115.i.i.i, %i.bi
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12, !alias.scope !314, !noalias !324 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !325, !noalias !323
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bt, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !326, !noalias !323
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 %i.bw, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !tbaa !12, !noalias !323
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i32 %i.au, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !323
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !tbaa !12, !noalias !323
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  store i32 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !323
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 %i.bj, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !tbaa !12, !noalias !323
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bx = ptrtoint ptr %i.bn to i64
  %i.by = ptrtoint ptr %i.bp to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.i, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !323

.noexc69.i.i.i:                                   ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.cb = sdiv exact i64 %i.bz, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 230584300921369395)
  %i.cf = select i1 %i.cd, i64 230584300921369395, i64 %i.ce ; 3 uses
  %.not.i.i.i.i68.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i.i)
  %i.cg = mul nuw nsw i64 %i.cf, 40
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #28
          to label %.noexc70.i.i.i unwind label %.loopexit.i.i.i, !noalias !323 ; 5 uses

.noexc70.i.i.i:                                   ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz ; 7 uses
  store ptr %i.br, ptr %i.ci, align 8, !tbaa !325, !noalias !323
  %.sroa.6.0..sroa_idx81.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bt, ptr %.sroa.6.0..sroa_idx81.i.i.i, align 8, !tbaa !326, !noalias !323
  %.sroa.7.0..sroa_idx83.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i32 %i.bw, ptr %.sroa.7.0..sroa_idx83.i.i.i, align 8, !tbaa !12, !noalias !323
  %.sroa.8.0..sroa_idx85.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  store i32 %i.au, ptr %.sroa.8.0..sroa_idx85.i.i.i, align 4, !tbaa !12, !noalias !323
  %.sroa.9.0..sroa_idx87.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 0, ptr %.sroa.9.0..sroa_idx87.i.i.i, align 8, !tbaa !12, !noalias !323
  %.sroa.10.0..sroa_idx89.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  store i32 0, ptr %.sroa.10.0..sroa_idx89.i.i.i, align 4, !tbaa !12, !noalias !323
  %.sroa.11.0..sroa_idx91.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i32 %i.bj, ptr %.sroa.11.0..sroa_idx91.i.i.i, align 8, !tbaa !12, !noalias !323
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bn
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc70.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ch, %.noexc70.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bp, %.noexc70.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !327, !alias.scope !328, !noalias !323
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !332

_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc70.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.noexc70.i.i.i ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bz) #27, !noalias !323
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cf
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE9push_backEOS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, %bb.g
  %i.cm = phi ptr [ %i.cl, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.bo, %bb.g ]
  %i.cn = phi ptr [ %i.ch, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.bp, %bb.g ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i.i, i64 40 ; 2 uses
  %i.cp = add nuw i64 %.058115.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.f, !llvm.loop !333

.loopexit.i.i.i:                                  ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer4EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i.i.i:                         ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bz) #27, !noalias !323
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #4, !noalias !321
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #27, !noalias !323
  br label %bb.o

._crit_edge127.loopexit.i.i.i:                    ; preds = %.lr.ph126.i.i.i
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !tbaa !31, !noalias !321
  %.pre170.pre.i.i.i = load ptr, ptr %15, align 8, !tbaa !334, !noalias !321
  br label %._crit_edge127.i.i.i

._crit_edge127.i.i.i:                             ; preds = %._crit_edge127.loopexit.i.i.i, %bb.d
  %.pre170.i.i.i = phi ptr [ %.pre170.pre.i.i.i, %._crit_edge127.loopexit.i.i.i ], [ %.lcssa112.i.i.i, %bb.d ] ; 4 uses
  %i.cq = phi i64 [ %.pre.i.i.i, %._crit_edge127.loopexit.i.i.i ], [ %2, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #4, !noalias !321
  %.not144.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not144.i.i.i, label %._crit_edge142.i.i.i, label %.lr.ph141.i.i.i

.lr.ph141.i.i.i:                                  ; preds = %._crit_edge127.i.i.i
  %i.cr = icmp sgt i32 %i.aq, -1
  %i.cs = icmp ne i64 %4, 0
  %i.ct = and i1 %i.cs, %i.cr
  br i1 %i.ct, label %.preheader.lr.ph.us.preheader.i.i.i, label %.lr.ph141.split.i.i.i

.preheader.lr.ph.us.preheader.i.i.i:              ; preds = %.lr.ph141.i.i.i
  %i.cu = zext nneg i32 %i.at to i64
  br label %.preheader.lr.ph.us.i.i.i

.preheader.lr.ph.us.i.i.i:                        ; preds = %._crit_edge138.us.i.i.i, %.preheader.lr.ph.us.preheader.i.i.i
  %.057139.us.i.i.i = phi i64 [ %i.dg, %._crit_edge138.us.i.i.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i.i ] ; 3 uses
  %16 = mul i64 %.057139.us.i.i.i, %4             ; 3 uses
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %.pre170.i.i.i, i64 %.057139.us.i.i.i ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !337, !noalias !323
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %invariant.gep198.i.i.i = getelementptr [4 x i8], ptr %6, i64 %16 ; 4 uses
  br label %.preheader.us.i.i.i

scalar.ph621:                                     ; preds = %scalar.ph621.preheader, %scalar.ph621
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph621 ], [ %indvars.iv.i.i.i.ph, %scalar.ph621.preheader ]
  %.1128.us.i.i.i = phi i64 [ %i.cy, %scalar.ph621 ], [ %.1128.us.i.i.i.ph, %scalar.ph621.preheader ] ; 2 uses
  %gep199.i.i.i = getelementptr [4 x i8], ptr %invariant.gep198.i.i.i, i64 %.1128.us.i.i.i
  store i32 %i.dy, ptr %gep199.i.i.i, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  %i.cy = add nuw i64 %.1128.us.i.i.i, 1          ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dx
  %i.da = icmp ult i64 %i.cy, %4
  %i.db = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %i.db, label %scalar.ph621, label %._crit_edge131.us.i.i.i, !llvm.loop !340

._crit_edge131.us.i.i.i:                          ; preds = %scalar.ph621, %middle.block630, %.preheader.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.056133.us.i.i.i, %.preheader.us.i.i.i ], [ %i.eb, %middle.block630 ], [ %i.cy, %scalar.ph621 ] ; 7 uses
  %indvars.iv.next164.i.i.i = add nuw nsw i64 %indvars.iv163.i.i.i, 1
  %i.dc = icmp samesign ult i64 %indvars.iv163.i.i.i, %i.cu
  %i.dd = icmp ult i64 %.1.lcssa.us.i.i.i, %4     ; 2 uses
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.preheader.us.i.i.i, label %..preheader109_crit_edge.us.i.i.i, !llvm.loop !343

scalar.ph610:                                     ; preds = %scalar.ph610.preheader, %scalar.ph610
  %.2136.us.i.i.i = phi i64 [ %i.df, %scalar.ph610 ], [ %.2136.us.i.i.i.ph, %scalar.ph610.preheader ] ; 2 uses
  %gep201.i.i.i = getelementptr [4 x i8], ptr %invariant.gep198.i.i.i, i64 %.2136.us.i.i.i
  store i32 2147483647, ptr %gep201.i.i.i, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  %i.df = add nuw i64 %.2136.us.i.i.i, 1          ; 2 uses
  %exitcond168.not.i.i.i = icmp eq i64 %i.df, %4
  br i1 %exitcond168.not.i.i.i, label %._crit_edge138.us.i.i.i, label %scalar.ph610, !llvm.loop !344

._crit_edge138.us.i.i.i:                          ; preds = %scalar.ph610, %middle.block617, %..preheader109_crit_edge.us.i.i.i
  %i.dg = add nuw i64 %.057139.us.i.i.i, 1        ; 2 uses
  %exitcond169.not.i.i.i = icmp eq i64 %i.dg, %i.cq
  br i1 %exitcond169.not.i.i.i, label %._crit_edge142.i.i.i, label %.preheader.lr.ph.us.i.i.i, !llvm.loop !345

.preheader.us.i.i.i:                              ; preds = %._crit_edge131.us.i.i.i, %.preheader.lr.ph.us.i.i.i
  %indvars.iv163.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i.i ], [ %indvars.iv.next164.i.i.i, %._crit_edge131.us.i.i.i ] ; 5 uses
  %.056133.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i.i ], [ %.1.lcssa.us.i.i.i, %._crit_edge131.us.i.i.i ] ; 7 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv163.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12, !noalias !323 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph130.us.i.i.i, label %._crit_edge131.us.i.i.i

.lr.ph130.us.i.i.i:                               ; preds = %.preheader.us.i.i.i
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !346, !noalias !323
  %i.dl = mul i64 %indvars.iv163.i.i.i, %4
  %i.dm = getelementptr [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = add i64 %.056133.us.i.i.i, %16
  %i.do = shl i64 %i.dn, 3
  %scevgep.i.i.i = getelementptr i8, ptr %7, i64 %i.do
  %i.dp = add i64 %.056133.us.i.i.i, 1
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.dp)
  %i.dq = xor i64 %.056133.us.i.i.i, -1
  %i.dr = add i64 %umax.i.i.i, %i.dq
  %i.ds = freeze i64 %i.dr                        ; 2 uses
  %i.dt = add nsw i32 %i.di, -1
  %i.du = zext nneg i32 %i.dt to i64
  %umin.i.i.i = call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.du)
  %i.dv = shl nuw nsw i64 %umin.i.i.i, 3
  %i.dw = add nuw nsw i64 %i.dv, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dw, i1 false), !tbaa !31, !noalias !347
  %i.dx = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv163.i.i.i to i32 ; 2 uses
  %i.dz = add nsw i64 %i.dx, -1
  %umin620 = call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.dz)
  %i.ea = add i64 %umin620, 1                     ; 3 uses
  %min.iters.check622 = icmp ult i64 %i.ea, 8
  br i1 %min.iters.check622, label %scalar.ph621.preheader, label %vector.ph623

vector.ph623:                                     ; preds = %.lr.ph130.us.i.i.i
  %n.vec624 = and i64 %i.ea, -8                   ; 4 uses
  %i.eb = add i64 %.056133.us.i.i.i, %n.vec624    ; 2 uses
  %broadcast.splatinsert625 = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %broadcast.splat626 = shufflevector <4 x i32> %broadcast.splatinsert625, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %invariant.gep198.i.i.i, i64 %.056133.us.i.i.i
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph623
  %index628 = phi i64 [ 0, %vector.ph623 ], [ %index.next629, %vector.body627 ] ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %index628 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  store <4 x i32> %broadcast.splat626, ptr %i.ed, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  store <4 x i32> %broadcast.splat626, ptr %i.ee, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  %index.next629 = add nuw i64 %index628, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next629, %n.vec624
  br i1 %i.ef, label %middle.block630, label %vector.body627, !llvm.loop !348

middle.block630:                                  ; preds = %vector.body627
  %cmp.n631 = icmp eq i64 %i.ea, %n.vec624
  br i1 %cmp.n631, label %._crit_edge131.us.i.i.i, label %scalar.ph621.preheader

scalar.ph621.preheader:                           ; preds = %.lr.ph130.us.i.i.i, %middle.block630
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph130.us.i.i.i ], [ %n.vec624, %middle.block630 ]
  %.1128.us.i.i.i.ph = phi i64 [ %.056133.us.i.i.i, %.lr.ph130.us.i.i.i ], [ %i.eb, %middle.block630 ]
  br label %scalar.ph621

..preheader109_crit_edge.us.i.i.i:                ; preds = %._crit_edge131.us.i.i.i
  br i1 %i.dd, label %.lr.ph137.us.i.i.i, label %._crit_edge138.us.i.i.i

.lr.ph137.us.i.i.i:                               ; preds = %..preheader109_crit_edge.us.i.i.i
  %i.eg = add i64 %.1.lcssa.us.i.i.i, %16
  %i.eh = shl i64 %i.eg, 3
  %scevgep167.i.i.i = getelementptr i8, ptr %7, i64 %i.eh
  %i.ei = sub nuw i64 %4, %.1.lcssa.us.i.i.i      ; 4 uses
  %i.ej = shl i64 %i.ei, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep167.i.i.i, i8 -1, i64 %i.ej, i1 false), !tbaa !31, !alias.scope !319, !noalias !349
  %min.iters.check611 = icmp ult i64 %i.ei, 8
  br i1 %min.iters.check611, label %scalar.ph610.preheader, label %vector.ph612

vector.ph612:                                     ; preds = %.lr.ph137.us.i.i.i
  %n.vec613 = and i64 %i.ei, -8                   ; 3 uses
  %i.ek = add i64 %.1.lcssa.us.i.i.i, %n.vec613
  %i.el = getelementptr [4 x i8], ptr %invariant.gep198.i.i.i, i64 %.1.lcssa.us.i.i.i
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph612
  %index615 = phi i64 [ 0, %vector.ph612 ], [ %index.next616, %vector.body614 ] ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %index615 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.em, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  store <4 x i32> splat (i32 2147483647), ptr %i.en, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  %index.next616 = add nuw i64 %index615, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next616, %n.vec613
  br i1 %i.eo, label %middle.block617, label %vector.body614, !llvm.loop !350

middle.block617:                                  ; preds = %vector.body614
  %cmp.n618 = icmp eq i64 %i.ei, %n.vec613
  br i1 %cmp.n618, label %._crit_edge138.us.i.i.i, label %scalar.ph610.preheader

scalar.ph610.preheader:                           ; preds = %.lr.ph137.us.i.i.i, %middle.block617
  %.2136.us.i.i.i.ph = phi i64 [ %.1.lcssa.us.i.i.i, %.lr.ph137.us.i.i.i ], [ %i.ek, %middle.block617 ]
  br label %scalar.ph610

.lr.ph141.split.i.i.i:                            ; preds = %.lr.ph141.i.i.i
  %.not145.i.i.i = icmp eq i64 %4, 0
  br i1 %.not145.i.i.i, label %._crit_edge142.i.i.i, label %.preheader109.preheader.i.i.i

.preheader109.preheader.i.i.i:                    ; preds = %.lr.ph141.split.i.i.i
  %i.ep = shl i64 %4, 3
  %i.eq = mul i64 %i.ep, %i.cq
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.eq, i1 false), !tbaa !31, !alias.scope !319, !noalias !349
  %min.iters.check601 = icmp ult i64 %4, 8
  %n.vec603 = and i64 %4, -8                      ; 3 uses
  %cmp.n608 = icmp eq i64 %4, %n.vec603
  br label %.preheader109.i.i.i

.lr.ph126.i.i.i:                                  ; preds = %bb.d, %.lr.ph126.i.i.i
  %storemerge124.i.i.i = phi i64 [ %i.et, %.lr.ph126.i.i.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #4, !noalias !321
  %i.er = add i64 %storemerge124.i.i.i, %i.bl
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.er)
  store i64 %.sroa.speculated.i.i.i, ptr %i.ap, align 8, !tbaa !31, !noalias !321
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_16HammingComputer4EEEviPKhS4_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.am, ptr nonnull %i.ao, ptr nonnull %i.ap, ptr nonnull %i.an, ptr nonnull %15, ptr nonnull %i.al, ptr nonnull %i.ak), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #4, !noalias !321
  %i.es = load i64, ptr %i.ao, align 8, !tbaa !31, !noalias !321
  %i.et = add i64 %i.es, %i.bl                    ; 3 uses
  store i64 %i.et, ptr %i.ao, align 8, !tbaa !31, !noalias !321
  %i.eu = icmp ult i64 %i.et, %3
  br i1 %i.eu, label %.lr.ph126.i.i.i, label %._crit_edge127.loopexit.i.i.i, !llvm.loop !351

._crit_edge142.i.i.i:                             ; preds = %._crit_edge138.i.i.i, %._crit_edge138.us.i.i.i, %.lr.ph141.split.i.i.i, %._crit_edge127.i.i.i
  %.not.i.i.i71.i.i.i = icmp eq ptr %.pre170.i.i.i, null
  br i1 %.not.i.i.i71.i.i.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge142.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !352, !noalias !321
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %.pre170.i.i.i to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %.pre170.i.i.i, i64 noundef %i.ez) #27, !noalias !323
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i.i: ; preds = %bb.m, %._crit_edge142.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #4, !noalias !321
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #27, !noalias !323
  %.not.i.i.i76.i.i.i = icmp eq ptr %.sroa.0100.0.i.i.i, null
  br i1 %.not.i.i.i76.i.i.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_16HammingComputer4EEEDav.exit.i", label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i.i
  %i.fa = ptrtoint ptr %.sroa.0100.0.i.i.i to i64
  %i.fb = sub i64 %.sroa.10104.0.i.i.i, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0.i.i.i, i64 noundef %i.fb) #27, !noalias !323
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_16HammingComputer4EEEDav.exit.i"

.preheader109.i.i.i:                              ; preds = %._crit_edge138.i.i.i, %.preheader109.preheader.i.i.i
  %.057139.i.i.i = phi i64 [ %i.fh, %._crit_edge138.i.i.i ], [ 0, %.preheader109.preheader.i.i.i ] ; 2 uses
  %i.fc = mul i64 %.057139.i.i.i, %4
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %6, i64 %i.fc ; 2 uses
  br i1 %min.iters.check601, label %scalar.ph600.preheader, label %vector.body604

vector.body604:                                   ; preds = %.preheader109.i.i.i, %vector.body604
  %index605 = phi i64 [ %index.next606, %vector.body604 ], [ 0, %.preheader109.i.i.i ] ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index605 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.fd, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  store <4 x i32> splat (i32 2147483647), ptr %i.fe, align 4, !tbaa !12, !alias.scope !317, !noalias !339
  %index.next606 = add nuw i64 %index605, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next606, %n.vec603
end_hunk_0
begin_hunk_1_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a
  %i.fs = ptrtoint ptr %i.fr to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i10.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i10.i:    ; preds = %.noexc67.i.i9.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i7.i
  %.sroa.10102.0.i.i.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i7.i ], [ %i.fs, %.noexc67.i.i9.i ] ; 2 uses
  %.sroa.098.0.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i7.i ], [ %i.fq, %.noexc67.i.i9.i ] ; 6 uses
  %i.ft = mul i64 %i.fn, %4                       ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 2305843009213693951
  %i.fv = shl i64 %i.ft, 3
  %i.fw = select i1 %i.fu, i64 -1, i64 %i.fv
  %i.fx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fw) #28
          to label %bb.q unwind label %bb.s, !noalias !365 ; 3 uses

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4, !noalias !363
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false), !noalias !363
  br i1 %.not.i.i.i.i.i.i8.i, label %bb.r, label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %bb.q
  %sext.i15.i = shl i64 %5, 32
  %i.fz = ashr exact i64 %sext.i15.i, 32
  %i.ga = trunc i64 %4 to i32                     ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.t

._crit_edge.i.i25.i:                              ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i
  store ptr %i.hf, ptr %i.fy, align 8, !noalias !363
  store ptr %i.hd, ptr %i.gb, align 8, !noalias !363
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i25.i, %bb.q
  %.lcssa110.i.i.i = phi ptr [ %i.he, %._crit_edge.i.i25.i ], [ null, %bb.q ] ; 2 uses
  store ptr %.lcssa110.i.i.i, ptr %14, align 8, !noalias !363
  %i.gc = load i64, ptr @_ZN5faiss18hamming_batch_sizeE, align 8, !tbaa !31, !noalias !363 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #4, !noalias !363
  store i64 0, ptr %i.ai, align 8, !tbaa !31, !noalias !363
  %.not141.i.i.i = icmp eq i64 %3, 0
  br i1 %.not141.i.i.i, label %._crit_edge125.i.i.i, label %.lr.ph124.i.i.i

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i10.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i, %.lr.ph.i.i14.i
  %i.ge = phi ptr [ null, %.lr.ph.i.i14.i ], [ %i.hd, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 5 uses
  %i.gf = phi ptr [ null, %.lr.ph.i.i14.i ], [ %i.hf, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 9 uses
  %.058113.i.i.i = phi i64 [ 0, %.lr.ph.i.i14.i ], [ %i.hg, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 3 uses
  %i.gg = phi ptr [ null, %.lr.ph.i.i14.i ], [ %i.he, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i ] ; 8 uses
  %i.gh = mul i64 %.058113.i.i.i, %i.fm           ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.098.0.i.i.i, i64 %i.gh ; 2 uses
  %i.gj = mul i64 %i.gh, %4
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gj ; 2 uses
  %i.gl = mul i64 %.058113.i.i.i, %i.fz
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !31, !alias.scope !356, !noalias !366 ; 2 uses
  %.not.i.i.i.i16.i = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i.i.i.i16.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.gi, ptr %i.gf, align 8, !tbaa !325, !noalias !365
  %.sroa.6.0..sroa_idx.i.i17.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gk, ptr %.sroa.6.0..sroa_idx.i.i17.i, align 8, !tbaa !326, !noalias !365
  %.sroa.7.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %i.gn, ptr %.sroa.7.0..sroa_idx.i.i18.i, align 8, !tbaa !31, !noalias !365
  %.sroa.8.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i32 %i.fl, ptr %.sroa.8.0..sroa_idx.i.i19.i, align 8, !tbaa !12, !noalias !365
  %.sroa.9.0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i20.i, align 4, !tbaa !12, !noalias !365
  %.sroa.10.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store i32 0, ptr %.sroa.10.0..sroa_idx.i.i21.i, align 8, !tbaa !12, !noalias !365
  %.sroa.11.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  store i32 %i.ga, ptr %.sroa.11.0..sroa_idx.i.i22.i, align 4, !tbaa !12, !noalias !365
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.go = ptrtoint ptr %i.ge to i64
  %i.gp = ptrtoint ptr %i.gg to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 5 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775800
  br i1 %i.gr, label %bb.w, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i67.i unwind label %.loopexit.split-lp.i.i65.i, !noalias !365

.noexc69.i.i67.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.gs = sdiv exact i64 %i.gq, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i44.i = tail call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i.i.i.i.i44.i, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = tail call i64 @llvm.umin.i64(i64 %i.gt, i64 230584300921369395)
  %i.gw = select i1 %i.gu, i64 230584300921369395, i64 %i.gv ; 3 uses
  %.not.i.i.i.i68.i.i45.i = icmp ne i64 %i.gw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i45.i)
  %i.gx = mul nuw nsw i64 %i.gw, 40
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #28
          to label %.noexc70.i.i51.i unwind label %.loopexit.i.i46.i, !noalias !365 ; 5 uses

.noexc70.i.i51.i:                                 ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gq ; 7 uses
  store ptr %i.gi, ptr %i.gz, align 8, !tbaa !325, !noalias !365
  %.sroa.6.0..sroa_idx81.i.i52.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gk, ptr %.sroa.6.0..sroa_idx81.i.i52.i, align 8, !tbaa !326, !noalias !365
  %.sroa.7.0..sroa_idx83.i.i53.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %i.gn, ptr %.sroa.7.0..sroa_idx83.i.i53.i, align 8, !tbaa !31, !noalias !365
  %.sroa.8.0..sroa_idx85.i.i54.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i32 %i.fl, ptr %.sroa.8.0..sroa_idx85.i.i54.i, align 8, !tbaa !12, !noalias !365
  %.sroa.9.0..sroa_idx87.i.i55.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx87.i.i55.i, align 4, !tbaa !12, !noalias !365
  %.sroa.10.0..sroa_idx89.i.i56.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store i32 0, ptr %.sroa.10.0..sroa_idx89.i.i56.i, align 8, !tbaa !12, !noalias !365
  %.sroa.11.0..sroa_idx91.i.i57.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 36
  store i32 %i.ga, ptr %.sroa.11.0..sroa_idx91.i.i57.i, align 4, !tbaa !12, !noalias !365
  %.not10.i.i.i.i.i.i.i.i58.i = icmp eq ptr %i.gg, %i.ge
  br i1 %.not10.i.i.i.i.i.i.i.i58.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i59.i

.lr.ph.i.i.i.i.i.i.i.i59.i:                       ; preds = %.noexc70.i.i51.i, %.lr.ph.i.i.i.i.i.i.i.i59.i
  %.012.i.i.i.i.i.i.i.i60.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i59.i ], [ %i.gy, %.noexc70.i.i51.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i61.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i.i.i59.i ], [ %i.gg, %.noexc70.i.i51.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i.i.i60.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i.i.i61.i, i64 40, i1 false), !tbaa.struct !367, !alias.scope !368, !noalias !365
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i61.i, i64 40 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i60.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i62.i = icmp eq ptr %i.ha, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i62.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i59.i, !llvm.loop !372

_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i59.i, %.noexc70.i.i51.i
  %.0.lcssa.i.i.i.i.i.i.i.i63.i = phi ptr [ %i.gy, %.noexc70.i.i51.i ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i59.i ]
  %.not.i23.i.i.i.i.i64.i = icmp eq ptr %i.gg, null
  br i1 %.not.i23.i.i.i.i.i64.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gq) #27, !noalias !365
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.gy, i64 %i.gw
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE9push_backEOS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, %bb.u
  %i.hd = phi ptr [ %i.hc, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.ge, %bb.u ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i23.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i63.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.gf, %bb.u ]
  %i.he = phi ptr [ %i.gy, %_ZNSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.gg, %bb.u ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i23.i, i64 40 ; 2 uses
  %i.hg = add nuw i64 %.058113.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i24.i = icmp eq i64 %i.hg, %2
  br i1 %exitcond.not.i.i24.i, label %._crit_edge.i.i25.i, label %bb.t, !llvm.loop !373

.loopexit.i.i46.i:                                ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_16HammingComputer8EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i47.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i.i65.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i66.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i.i65.i, %.loopexit.i.i46.i
  %lpad.phi.i.i48.i = phi { ptr, i32 } [ %lpad.loopexit.i.i47.i, %.loopexit.i.i46.i ], [ %lpad.loopexit.split-lp.i.i66.i, %.loopexit.split-lp.i.i65.i ]
  %.not.i.i.i.i.i49.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i49.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i50.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gq) #27, !noalias !365
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i50.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i50.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4, !noalias !363
  tail call void @_ZdaPv(ptr noundef nonnull %i.fx) #27, !noalias !365
  br label %bb.ac

._crit_edge125.loopexit.i.i.i:                    ; preds = %.lr.ph124.i.i.i
  %.pre.i.i27.i = load i64, ptr %i.ag, align 8, !tbaa !31, !noalias !363
  %.pre168.pre.i.i.i = load ptr, ptr %14, align 8, !tbaa !374, !noalias !363
  br label %._crit_edge125.i.i.i

._crit_edge125.i.i.i:                             ; preds = %._crit_edge125.loopexit.i.i.i, %bb.r
  %.pre168.i.i.i = phi ptr [ %.pre168.pre.i.i.i, %._crit_edge125.loopexit.i.i.i ], [ %.lcssa110.i.i.i, %bb.r ] ; 4 uses
  %i.hh = phi i64 [ %.pre.i.i27.i, %._crit_edge125.loopexit.i.i.i ], [ %2, %bb.r ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #4, !noalias !363
  %.not142.i.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not142.i.i.i, label %._crit_edge140.i.i.i, label %.lr.ph139.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %._crit_edge125.i.i.i
  %i.hi = icmp sgt i32 %i.aq, -1
  %i.hj = icmp ne i64 %4, 0
  %i.hk = and i1 %i.hj, %i.hi
  br i1 %i.hk, label %.preheader.lr.ph.us.preheader.i.i34.i, label %.lr.ph139.split.i.i.i

.preheader.lr.ph.us.preheader.i.i34.i:            ; preds = %.lr.ph139.i.i.i
  %i.hl = zext nneg i32 %i.fk to i64
  br label %.preheader.lr.ph.us.i.i35.i

.preheader.lr.ph.us.i.i35.i:                      ; preds = %._crit_edge136.us.i.i.i, %.preheader.lr.ph.us.preheader.i.i34.i
  %.057137.us.i.i.i = phi i64 [ %i.hx, %._crit_edge136.us.i.i.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i34.i ] ; 3 uses
  %17 = mul i64 %.057137.us.i.i.i, %4             ; 3 uses
  %i.hm = getelementptr inbounds nuw [40 x i8], ptr %.pre168.i.i.i, i64 %.057137.us.i.i.i ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !377, !noalias !365
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %invariant.gep196.i.i.i = getelementptr [4 x i8], ptr %6, i64 %17 ; 4 uses
  br label %.preheader.us.i.i36.i

scalar.ph587:                                     ; preds = %scalar.ph587.preheader, %scalar.ph587
  %indvars.iv.i.i42.i = phi i64 [ %indvars.iv.next.i.i43.i, %scalar.ph587 ], [ %indvars.iv.i.i42.i.ph, %scalar.ph587.preheader ]
  %.1126.us.i.i.i = phi i64 [ %i.hp, %scalar.ph587 ], [ %.1126.us.i.i.i.ph, %scalar.ph587.preheader ] ; 2 uses
  %gep197.i.i.i = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i, i64 %.1126.us.i.i.i
  store i32 %i.ip, ptr %gep197.i.i.i, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  %i.hp = add nuw i64 %.1126.us.i.i.i, 1          ; 3 uses
  %indvars.iv.next.i.i43.i = add nuw nsw i64 %indvars.iv.i.i42.i, 1 ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.next.i.i43.i, %i.io
  %i.hr = icmp ult i64 %i.hp, %4
  %i.hs = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %i.hs, label %scalar.ph587, label %._crit_edge129.us.i.i.i, !llvm.loop !380

._crit_edge129.us.i.i.i:                          ; preds = %scalar.ph587, %middle.block596, %.preheader.us.i.i36.i
  %.1.lcssa.us.i.i37.i = phi i64 [ %.056131.us.i.i.i, %.preheader.us.i.i36.i ], [ %i.is, %middle.block596 ], [ %i.hp, %scalar.ph587 ] ; 7 uses
  %indvars.iv.next162.i.i.i = add nuw nsw i64 %indvars.iv161.i.i.i, 1
  %i.ht = icmp samesign ult i64 %indvars.iv161.i.i.i, %i.hl
  %i.hu = icmp ult i64 %.1.lcssa.us.i.i37.i, %4   ; 2 uses
  %i.hv = select i1 %i.ht, i1 %i.hu, i1 false
  br i1 %i.hv, label %.preheader.us.i.i36.i, label %..preheader107_crit_edge.us.i.i.i, !llvm.loop !381

scalar.ph576:                                     ; preds = %scalar.ph576.preheader, %scalar.ph576
  %.2134.us.i.i.i = phi i64 [ %i.hw, %scalar.ph576 ], [ %.2134.us.i.i.i.ph, %scalar.ph576.preheader ] ; 2 uses
  %gep199.i.i38.i = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i, i64 %.2134.us.i.i.i
  store i32 2147483647, ptr %gep199.i.i38.i, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  %i.hw = add nuw i64 %.2134.us.i.i.i, 1          ; 2 uses
  %exitcond166.not.i.i.i = icmp eq i64 %i.hw, %4
  br i1 %exitcond166.not.i.i.i, label %._crit_edge136.us.i.i.i, label %scalar.ph576, !llvm.loop !382

._crit_edge136.us.i.i.i:                          ; preds = %scalar.ph576, %middle.block583, %..preheader107_crit_edge.us.i.i.i
  %i.hx = add nuw i64 %.057137.us.i.i.i, 1        ; 2 uses
  %exitcond167.not.i.i.i = icmp eq i64 %i.hx, %i.hh
  br i1 %exitcond167.not.i.i.i, label %._crit_edge140.i.i.i, label %.preheader.lr.ph.us.i.i35.i, !llvm.loop !383

.preheader.us.i.i36.i:                            ; preds = %._crit_edge129.us.i.i.i, %.preheader.lr.ph.us.i.i35.i
  %indvars.iv161.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i35.i ], [ %indvars.iv.next162.i.i.i, %._crit_edge129.us.i.i.i ] ; 5 uses
  %.056131.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i35.i ], [ %.1.lcssa.us.i.i37.i, %._crit_edge129.us.i.i.i ] ; 7 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv161.i.i.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !12, !noalias !365 ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph128.us.i.i.i, label %._crit_edge129.us.i.i.i

.lr.ph128.us.i.i.i:                               ; preds = %.preheader.us.i.i36.i
  %i.ib = load ptr, ptr %i.ho, align 8, !tbaa !384, !noalias !365
  %i.ic = mul i64 %indvars.iv161.i.i.i, %4
  %i.id = getelementptr [8 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = add i64 %.056131.us.i.i.i, %17
  %i.if = shl i64 %i.ie, 3
  %scevgep.i.i39.i = getelementptr i8, ptr %7, i64 %i.if
  %i.ig = add i64 %.056131.us.i.i.i, 1
  %umax.i.i40.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.ig)
  %i.ih = xor i64 %.056131.us.i.i.i, -1
  %i.ii = add i64 %umax.i.i40.i, %i.ih
  %i.ij = freeze i64 %i.ii                        ; 2 uses
  %i.ik = add nsw i32 %i.hz, -1
  %i.il = zext nneg i32 %i.ik to i64
  %umin.i.i41.i = call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.il)
  %i.im = shl nuw nsw i64 %umin.i.i41.i, 3
  %i.in = add nuw nsw i64 %i.im, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i39.i, ptr noundef nonnull align 8 dereferenceable(1) %i.id, i64 %i.in, i1 false), !tbaa !31, !noalias !385
  %i.io = zext nneg i32 %i.hz to i64              ; 2 uses
  %i.ip = trunc nuw nsw i64 %indvars.iv161.i.i.i to i32 ; 2 uses
  %i.iq = add nsw i64 %i.io, -1
  %umin586 = call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.iq)
  %i.ir = add i64 %umin586, 1                     ; 3 uses
  %min.iters.check588 = icmp ult i64 %i.ir, 8
  br i1 %min.iters.check588, label %scalar.ph587.preheader, label %vector.ph589

vector.ph589:                                     ; preds = %.lr.ph128.us.i.i.i
  %n.vec590 = and i64 %i.ir, -8                   ; 4 uses
  %i.is = add i64 %.056131.us.i.i.i, %n.vec590    ; 2 uses
  %broadcast.splatinsert591 = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %broadcast.splat592 = shufflevector <4 x i32> %broadcast.splatinsert591, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i, i64 %.056131.us.i.i.i
  br label %vector.body593

vector.body593:                                   ; preds = %vector.body593, %vector.ph589
  %index594 = phi i64 [ 0, %vector.ph589 ], [ %index.next595, %vector.body593 ] ; 2 uses
  %i.iu = getelementptr [4 x i8], ptr %i.it, i64 %index594 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  store <4 x i32> %broadcast.splat592, ptr %i.iu, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  store <4 x i32> %broadcast.splat592, ptr %i.iv, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  %index.next595 = add nuw i64 %index594, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next595, %n.vec590
  br i1 %i.iw, label %middle.block596, label %vector.body593, !llvm.loop !386

middle.block596:                                  ; preds = %vector.body593
  %cmp.n597 = icmp eq i64 %i.ir, %n.vec590
  br i1 %cmp.n597, label %._crit_edge129.us.i.i.i, label %scalar.ph587.preheader

scalar.ph587.preheader:                           ; preds = %.lr.ph128.us.i.i.i, %middle.block596
  %indvars.iv.i.i42.i.ph = phi i64 [ 0, %.lr.ph128.us.i.i.i ], [ %n.vec590, %middle.block596 ]
  %.1126.us.i.i.i.ph = phi i64 [ %.056131.us.i.i.i, %.lr.ph128.us.i.i.i ], [ %i.is, %middle.block596 ]
  br label %scalar.ph587

..preheader107_crit_edge.us.i.i.i:                ; preds = %._crit_edge129.us.i.i.i
  br i1 %i.hu, label %.lr.ph135.us.i.i.i, label %._crit_edge136.us.i.i.i

.lr.ph135.us.i.i.i:                               ; preds = %..preheader107_crit_edge.us.i.i.i
  %i.ix = add i64 %.1.lcssa.us.i.i37.i, %17
  %i.iy = shl i64 %i.ix, 3
  %scevgep165.i.i.i = getelementptr i8, ptr %7, i64 %i.iy
  %i.iz = sub nuw i64 %4, %.1.lcssa.us.i.i37.i    ; 4 uses
  %i.ja = shl i64 %i.iz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep165.i.i.i, i8 -1, i64 %i.ja, i1 false), !tbaa !31, !alias.scope !361, !noalias !387
  %min.iters.check577 = icmp ult i64 %i.iz, 8
  br i1 %min.iters.check577, label %scalar.ph576.preheader, label %vector.ph578

vector.ph578:                                     ; preds = %.lr.ph135.us.i.i.i
  %n.vec579 = and i64 %i.iz, -8                   ; 3 uses
  %i.jb = add i64 %.1.lcssa.us.i.i37.i, %n.vec579
  %i.jc = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i, i64 %.1.lcssa.us.i.i37.i
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph578
  %index581 = phi i64 [ 0, %vector.ph578 ], [ %index.next582, %vector.body580 ] ; 2 uses
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %index581 ; 2 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.jd, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  store <4 x i32> splat (i32 2147483647), ptr %i.je, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  %index.next582 = add nuw i64 %index581, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next582, %n.vec579
  br i1 %i.jf, label %middle.block583, label %vector.body580, !llvm.loop !388

middle.block583:                                  ; preds = %vector.body580
  %cmp.n584 = icmp eq i64 %i.iz, %n.vec579
  br i1 %cmp.n584, label %._crit_edge136.us.i.i.i, label %scalar.ph576.preheader

scalar.ph576.preheader:                           ; preds = %.lr.ph135.us.i.i.i, %middle.block583
  %.2134.us.i.i.i.ph = phi i64 [ %.1.lcssa.us.i.i37.i, %.lr.ph135.us.i.i.i ], [ %i.jb, %middle.block583 ]
  br label %scalar.ph576

.lr.ph139.split.i.i.i:                            ; preds = %.lr.ph139.i.i.i
  %.not143.i.i28.i = icmp eq i64 %4, 0
  br i1 %.not143.i.i28.i, label %._crit_edge140.i.i.i, label %.preheader107.preheader.i.i.i

.preheader107.preheader.i.i.i:                    ; preds = %.lr.ph139.split.i.i.i
  %i.jg = shl i64 %4, 3
  %i.jh = mul i64 %i.jg, %i.hh
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.jh, i1 false), !tbaa !31, !alias.scope !361, !noalias !387
  %min.iters.check567 = icmp ult i64 %4, 8
  %n.vec569 = and i64 %4, -8                      ; 3 uses
  %cmp.n574 = icmp eq i64 %4, %n.vec569
  br label %.preheader107.i.i.i

.lr.ph124.i.i.i:                                  ; preds = %bb.r, %.lr.ph124.i.i.i
  %storemerge122.i.i.i = phi i64 [ %i.jk, %.lr.ph124.i.i.i ], [ 0, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #4, !noalias !363
  %i.ji = add i64 %storemerge122.i.i.i, %i.gc
  %.sroa.speculated.i.i26.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.ji)
  store i64 %.sroa.speculated.i.i26.i, ptr %i.aj, align 8, !tbaa !31, !noalias !363
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_16HammingComputer8EEEviPKhS4_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.ag, ptr nonnull %i.ai, ptr nonnull %i.aj, ptr nonnull %i.ah, ptr nonnull %14, ptr nonnull %i.af, ptr nonnull %i.ae), !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #4, !noalias !363
  %i.jj = load i64, ptr %i.ai, align 8, !tbaa !31, !noalias !363
  %i.jk = add i64 %i.jj, %i.gc                    ; 3 uses
  store i64 %i.jk, ptr %i.ai, align 8, !tbaa !31, !noalias !363
  %i.jl = icmp ult i64 %i.jk, %3
  br i1 %i.jl, label %.lr.ph124.i.i.i, label %._crit_edge125.loopexit.i.i.i, !llvm.loop !389

._crit_edge140.i.i.i:                             ; preds = %._crit_edge136.i.i.i, %._crit_edge136.us.i.i.i, %.lr.ph139.split.i.i.i, %._crit_edge125.i.i.i
  %.not.i.i.i71.i.i31.i = icmp eq ptr %.pre168.i.i.i, null
  br i1 %.not.i.i.i71.i.i31.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i32.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge140.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !390, !noalias !363
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %.pre168.i.i.i to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %.pre168.i.i.i, i64 noundef %i.jq) #27, !noalias !365
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i32.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i32.i: ; preds = %bb.aa, %._crit_edge140.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4, !noalias !363
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #27, !noalias !365
  %.not.i.i.i76.i.i33.i = icmp eq ptr %.sroa.098.0.i.i.i, null
  br i1 %.not.i.i.i76.i.i33.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_16HammingComputer8EEEDav.exit.i", label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i32.i
  %i.jr = ptrtoint ptr %.sroa.098.0.i.i.i to i64
  %i.js = sub i64 %.sroa.10102.0.i.i.i, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0.i.i.i, i64 noundef %i.js) #27, !noalias !365
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_16HammingComputer8EEEDav.exit.i"

.preheader107.i.i.i:                              ; preds = %._crit_edge136.i.i.i, %.preheader107.preheader.i.i.i
  %.057137.i.i.i = phi i64 [ %i.jy, %._crit_edge136.i.i.i ], [ 0, %.preheader107.preheader.i.i.i ] ; 2 uses
  %i.jt = mul i64 %.057137.i.i.i, %4
  %invariant.gep.i.i29.i = getelementptr [4 x i8], ptr %6, i64 %i.jt ; 2 uses
  br i1 %min.iters.check567, label %scalar.ph566.preheader, label %vector.body570

vector.body570:                                   ; preds = %.preheader107.i.i.i, %vector.body570
  %index571 = phi i64 [ %index.next572, %vector.body570 ], [ 0, %.preheader107.i.i.i ] ; 2 uses
  %i.ju = getelementptr [4 x i8], ptr %invariant.gep.i.i29.i, i64 %index571 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ju, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  store <4 x i32> splat (i32 2147483647), ptr %i.jv, align 4, !tbaa !12, !alias.scope !359, !noalias !379
  %index.next572 = add nuw i64 %index571, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next572, %n.vec569
end_hunk_1
begin_hunk_2_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a
  %i.ki = mul i64 %i.kc, %4                       ; 2 uses
  %i.kj = icmp ugt i64 %i.ki, 2305843009213693951
  %i.kk = shl i64 %i.ki, 3
  %i.kl = select i1 %i.kj, i64 -1, i64 %i.kk
  %i.km = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kl) #28
          to label %bb.ae unwind label %bb.ag, !noalias !402 ; 3 uses

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i72.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4, !noalias !400
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i8 0, i64 16, i1 false), !noalias !400
  br i1 %.not.i.i.i.i.i.i70.i, label %bb.af, label %.lr.ph.i.i78.i

.lr.ph.i.i78.i:                                   ; preds = %bb.ae
  %sext.i79.i = shl i64 %5, 32
  %i.ko = ashr exact i64 %sext.i79.i, 32
  %i.kp = trunc i64 %4 to i32                     ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.ah

._crit_edge.i.i90.i:                              ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i
  store ptr %i.lw, ptr %i.kn, align 8, !noalias !400
  store ptr %i.lu, ptr %i.kq, align 8, !noalias !400
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i90.i, %bb.ae
  %.lcssa112.i.i91.i = phi ptr [ %i.lv, %._crit_edge.i.i90.i ], [ null, %bb.ae ] ; 2 uses
  store ptr %.lcssa112.i.i91.i, ptr %13, align 8, !noalias !400
  %i.kr = load i64, ptr @_ZN5faiss18hamming_batch_sizeE, align 8, !tbaa !31, !noalias !400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #4, !noalias !400
  store i64 0, ptr %i.ac, align 8, !tbaa !31, !noalias !400
  %.not143.i.i92.i = icmp eq i64 %3, 0
  br i1 %.not143.i.i92.i, label %._crit_edge127.i.i99.i, label %.lr.ph126.i.i93.i

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i72.i
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ah:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i, %.lr.ph.i.i78.i
  %i.kt = phi ptr [ null, %.lr.ph.i.i78.i ], [ %i.lu, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 5 uses
  %i.ku = phi ptr [ null, %.lr.ph.i.i78.i ], [ %i.lw, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 10 uses
  %.058115.i.i80.i = phi i64 [ 0, %.lr.ph.i.i78.i ], [ %i.lx, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 3 uses
  %i.kv = phi ptr [ null, %.lr.ph.i.i78.i ], [ %i.lv, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 8 uses
  %i.kw = mul i64 %.058115.i.i80.i, %i.kb         ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0.i.i74.i, i64 %i.kw ; 2 uses
  %i.ky = mul i64 %i.kw, %4
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ky ; 2 uses
  %i.la = mul i64 %.058115.i.i80.i, %i.ko
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 %i.la ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !31, !alias.scope !393, !noalias !403 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !31, !alias.scope !393, !noalias !403 ; 2 uses
  %.not.i.i.i.i81.i = icmp eq ptr %i.ku, %i.kt
  br i1 %.not.i.i.i.i81.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.kx, ptr %i.ku, align 8, !tbaa !325, !noalias !402
  %.sroa.6.0..sroa_idx.i.i82.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %i.kz, ptr %.sroa.6.0..sroa_idx.i.i82.i, align 8, !tbaa !326, !noalias !402
  %.sroa.7.0..sroa_idx.i.i83.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i64 %i.lc, ptr %.sroa.7.0..sroa_idx.i.i83.i, align 8, !tbaa !31, !noalias !402
  %.sroa.8.0..sroa_idx.i.i84.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  store i64 %i.le, ptr %.sroa.8.0..sroa_idx.i.i84.i, align 8, !tbaa !31, !noalias !402
  %.sroa.9.0..sroa_idx.i.i85.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  store i32 %i.ka, ptr %.sroa.9.0..sroa_idx.i.i85.i, align 8, !tbaa !12, !noalias !402
  %.sroa.10.0..sroa_idx.i.i86.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 36
  store i32 0, ptr %.sroa.10.0..sroa_idx.i.i86.i, align 4, !tbaa !12, !noalias !402
  %.sroa.11.0..sroa_idx.i.i87.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  store i32 0, ptr %.sroa.11.0..sroa_idx.i.i87.i, align 8, !tbaa !12, !noalias !402
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ku, i64 44
  store i32 %i.kp, ptr %.sroa.12.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !402
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.lf = ptrtoint ptr %i.kt to i64
  %i.lg = ptrtoint ptr %i.kv to i64
  %i.lh = sub i64 %i.lf, %i.lg                    ; 5 uses
  %i.li = icmp eq i64 %i.lh, 9223372036854775776
  br i1 %i.li, label %bb.ak, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i167.i unwind label %.loopexit.split-lp.i.i165.i, !noalias !402

.noexc69.i.i167.i:                                ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.lj = sdiv exact i64 %i.lh, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i144.i = tail call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i144.i, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = tail call i64 @llvm.umin.i64(i64 %i.lk, i64 192153584101141162)
  %i.ln = select i1 %i.ll, i64 192153584101141162, i64 %i.lm ; 3 uses
  %.not.i.i.i.i68.i.i145.i = icmp ne i64 %i.ln, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i145.i)
  %i.lo = mul nuw nsw i64 %i.ln, 48
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #28
          to label %.noexc70.i.i151.i unwind label %.loopexit.i.i146.i, !noalias !402 ; 5 uses

.noexc70.i.i151.i:                                ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh ; 8 uses
  store ptr %i.kx, ptr %i.lq, align 8, !tbaa !325, !noalias !402
  %.sroa.6.0..sroa_idx81.i.i152.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store ptr %i.kz, ptr %.sroa.6.0..sroa_idx81.i.i152.i, align 8, !tbaa !326, !noalias !402
  %.sroa.7.0..sroa_idx83.i.i153.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i64 %i.lc, ptr %.sroa.7.0..sroa_idx83.i.i153.i, align 8, !tbaa !31, !noalias !402
  %.sroa.8.0..sroa_idx85.i.i154.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store i64 %i.le, ptr %.sroa.8.0..sroa_idx85.i.i154.i, align 8, !tbaa !31, !noalias !402
  %.sroa.9.0..sroa_idx87.i.i155.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  store i32 %i.ka, ptr %.sroa.9.0..sroa_idx87.i.i155.i, align 8, !tbaa !12, !noalias !402
  %.sroa.10.0..sroa_idx89.i.i156.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 36
  store i32 0, ptr %.sroa.10.0..sroa_idx89.i.i156.i, align 4, !tbaa !12, !noalias !402
  %.sroa.11.0..sroa_idx91.i.i157.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  store i32 0, ptr %.sroa.11.0..sroa_idx91.i.i157.i, align 8, !tbaa !12, !noalias !402
  %.sroa.12.0..sroa_idx93.i.i.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 44
  store i32 %i.kp, ptr %.sroa.12.0..sroa_idx93.i.i.i, align 4, !tbaa !12, !noalias !402
  %.not10.i.i.i.i.i.i.i.i158.i = icmp eq ptr %i.kv, %i.kt
  br i1 %.not10.i.i.i.i.i.i.i.i158.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i159.i

.lr.ph.i.i.i.i.i.i.i.i159.i:                      ; preds = %.noexc70.i.i151.i, %.lr.ph.i.i.i.i.i.i.i.i159.i
  %.012.i.i.i.i.i.i.i.i160.i = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i159.i ], [ %i.lp, %.noexc70.i.i151.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i161.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i159.i ], [ %i.kv, %.noexc70.i.i151.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i.i.i160.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i.i.i161.i, i64 48, i1 false), !tbaa.struct !404, !alias.scope !405, !noalias !402
  %i.lr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i161.i, i64 48 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i160.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i162.i = icmp eq ptr %i.lr, %i.kt
  br i1 %.not.i.i.i.i.i.i.i.i162.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i159.i, !llvm.loop !409

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i159.i, %.noexc70.i.i151.i
  %.0.lcssa.i.i.i.i.i.i.i.i163.i = phi ptr [ %i.lp, %.noexc70.i.i151.i ], [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i159.i ]
  %.not.i23.i.i.i.i.i164.i = icmp eq ptr %i.kv, null
  br i1 %.not.i23.i.i.i.i.i164.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.lh) #27, !noalias !402
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.al, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  %i.lt = getelementptr inbounds nuw [48 x i8], ptr %i.lp, i64 %i.ln
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.ai
  %i.lu = phi ptr [ %i.lt, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.kt, %bb.ai ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i88.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i163.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.ku, %bb.ai ]
  %i.lv = phi ptr [ %i.lp, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.kv, %bb.ai ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i88.i, i64 48 ; 2 uses
  %i.lx = add nuw i64 %.058115.i.i80.i, 1         ; 2 uses
  %exitcond.not.i.i89.i = icmp eq i64 %i.lx, %2
  br i1 %exitcond.not.i.i89.i, label %._crit_edge.i.i90.i, label %bb.ah, !llvm.loop !410

.loopexit.i.i146.i:                               ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer16_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i147.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp.i.i165.i:                      ; preds = %bb.ak
  %lpad.loopexit.split-lp.i.i166.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp.i.i165.i, %.loopexit.i.i146.i
  %lpad.phi.i.i148.i = phi { ptr, i32 } [ %lpad.loopexit.i.i147.i, %.loopexit.i.i146.i ], [ %lpad.loopexit.split-lp.i.i166.i, %.loopexit.split-lp.i.i165.i ]
  %.not.i.i.i.i.i149.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i149.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i150.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.lh) #27, !noalias !402
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i150.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i150.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4, !noalias !400
  tail call void @_ZdaPv(ptr noundef nonnull %i.km) #27, !noalias !402
  br label %bb.aq

._crit_edge127.loopexit.i.i96.i:                  ; preds = %.lr.ph126.i.i93.i
  %.pre.i.i97.i = load i64, ptr %i.aa, align 8, !tbaa !31, !noalias !400
  %.pre170.pre.i.i98.i = load ptr, ptr %13, align 8, !tbaa !411, !noalias !400
  br label %._crit_edge127.i.i99.i

._crit_edge127.i.i99.i:                           ; preds = %._crit_edge127.loopexit.i.i96.i, %bb.af
  %.pre170.i.i100.i = phi ptr [ %.pre170.pre.i.i98.i, %._crit_edge127.loopexit.i.i96.i ], [ %.lcssa112.i.i91.i, %bb.af ] ; 4 uses
  %i.ly = phi i64 [ %.pre.i.i97.i, %._crit_edge127.loopexit.i.i96.i ], [ %2, %bb.af ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #4, !noalias !400
  %.not144.i.i101.i = icmp eq i64 %i.ly, 0
  br i1 %.not144.i.i101.i, label %._crit_edge142.i.i114.i, label %.lr.ph141.i.i102.i

.lr.ph141.i.i102.i:                               ; preds = %._crit_edge127.i.i99.i
  %i.lz = icmp sgt i32 %i.aq, -1
  %i.ma = icmp ne i64 %4, 0
  %i.mb = and i1 %i.ma, %i.lz
  br i1 %i.mb, label %.preheader.lr.ph.us.preheader.i.i118.i, label %.lr.ph141.split.i.i103.i

.preheader.lr.ph.us.preheader.i.i118.i:           ; preds = %.lr.ph141.i.i102.i
  %i.mc = zext nneg i32 %i.jz to i64
  br label %.preheader.lr.ph.us.i.i119.i

.preheader.lr.ph.us.i.i119.i:                     ; preds = %._crit_edge138.us.i.i129.i, %.preheader.lr.ph.us.preheader.i.i118.i
  %.057139.us.i.i120.i = phi i64 [ %i.mo, %._crit_edge138.us.i.i129.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i118.i ] ; 3 uses
  %18 = mul i64 %.057139.us.i.i120.i, %4          ; 3 uses
  %i.md = getelementptr inbounds nuw [48 x i8], ptr %.pre170.i.i100.i, i64 %.057139.us.i.i120.i ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !414, !noalias !402
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %invariant.gep198.i.i121.i = getelementptr [4 x i8], ptr %6, i64 %18 ; 4 uses
  br label %.preheader.us.i.i122.i

scalar.ph553:                                     ; preds = %scalar.ph553.preheader, %scalar.ph553
  %indvars.iv.i.i140.i = phi i64 [ %indvars.iv.next.i.i143.i, %scalar.ph553 ], [ %indvars.iv.i.i140.i.ph, %scalar.ph553.preheader ]
  %.1128.us.i.i141.i = phi i64 [ %i.mg, %scalar.ph553 ], [ %.1128.us.i.i141.i.ph, %scalar.ph553.preheader ] ; 2 uses
  %gep199.i.i142.i = getelementptr [4 x i8], ptr %invariant.gep198.i.i121.i, i64 %.1128.us.i.i141.i
  store i32 %i.ng, ptr %gep199.i.i142.i, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  %i.mg = add nuw i64 %.1128.us.i.i141.i, 1       ; 3 uses
  %indvars.iv.next.i.i143.i = add nuw nsw i64 %indvars.iv.i.i140.i, 1 ; 2 uses
  %i.mh = icmp samesign ult i64 %indvars.iv.next.i.i143.i, %i.nf
  %i.mi = icmp ult i64 %i.mg, %4
  %i.mj = select i1 %i.mh, i1 %i.mi, i1 false
  br i1 %i.mj, label %scalar.ph553, label %._crit_edge131.us.i.i125.i, !llvm.loop !417

._crit_edge131.us.i.i125.i:                       ; preds = %scalar.ph553, %middle.block562, %.preheader.us.i.i122.i
  %.1.lcssa.us.i.i126.i = phi i64 [ %.056133.us.i.i124.i, %.preheader.us.i.i122.i ], [ %i.nj, %middle.block562 ], [ %i.mg, %scalar.ph553 ] ; 7 uses
  %indvars.iv.next164.i.i127.i = add nuw nsw i64 %indvars.iv163.i.i123.i, 1
  %i.mk = icmp samesign ult i64 %indvars.iv163.i.i123.i, %i.mc
  %i.ml = icmp ult i64 %.1.lcssa.us.i.i126.i, %4  ; 2 uses
  %i.mm = select i1 %i.mk, i1 %i.ml, i1 false
  br i1 %i.mm, label %.preheader.us.i.i122.i, label %..preheader109_crit_edge.us.i.i128.i, !llvm.loop !418

scalar.ph542:                                     ; preds = %scalar.ph542.preheader, %scalar.ph542
  %.2136.us.i.i133.i = phi i64 [ %i.mn, %scalar.ph542 ], [ %.2136.us.i.i133.i.ph, %scalar.ph542.preheader ] ; 2 uses
  %gep201.i.i134.i = getelementptr [4 x i8], ptr %invariant.gep198.i.i121.i, i64 %.2136.us.i.i133.i
  store i32 2147483647, ptr %gep201.i.i134.i, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  %i.mn = add nuw i64 %.2136.us.i.i133.i, 1       ; 2 uses
  %exitcond168.not.i.i135.i = icmp eq i64 %i.mn, %4
  br i1 %exitcond168.not.i.i135.i, label %._crit_edge138.us.i.i129.i, label %scalar.ph542, !llvm.loop !419

._crit_edge138.us.i.i129.i:                       ; preds = %scalar.ph542, %middle.block549, %..preheader109_crit_edge.us.i.i128.i
  %i.mo = add nuw i64 %.057139.us.i.i120.i, 1     ; 2 uses
  %exitcond169.not.i.i130.i = icmp eq i64 %i.mo, %i.ly
  br i1 %exitcond169.not.i.i130.i, label %._crit_edge142.i.i114.i, label %.preheader.lr.ph.us.i.i119.i, !llvm.loop !420

.preheader.us.i.i122.i:                           ; preds = %._crit_edge131.us.i.i125.i, %.preheader.lr.ph.us.i.i119.i
  %indvars.iv163.i.i123.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i119.i ], [ %indvars.iv.next164.i.i127.i, %._crit_edge131.us.i.i125.i ] ; 5 uses
  %.056133.us.i.i124.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i119.i ], [ %.1.lcssa.us.i.i126.i, %._crit_edge131.us.i.i125.i ] ; 7 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv163.i.i123.i
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !12, !noalias !402 ; 3 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph130.us.i.i136.i, label %._crit_edge131.us.i.i125.i

.lr.ph130.us.i.i136.i:                            ; preds = %.preheader.us.i.i122.i
  %i.ms = load ptr, ptr %i.mf, align 8, !tbaa !421, !noalias !402
  %i.mt = mul i64 %indvars.iv163.i.i123.i, %4
  %i.mu = getelementptr [8 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = add i64 %.056133.us.i.i124.i, %18
  %i.mw = shl i64 %i.mv, 3
  %scevgep.i.i137.i = getelementptr i8, ptr %7, i64 %i.mw
  %i.mx = add i64 %.056133.us.i.i124.i, 1
  %umax.i.i138.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.mx)
  %i.my = xor i64 %.056133.us.i.i124.i, -1
  %i.mz = add i64 %umax.i.i138.i, %i.my
  %i.na = freeze i64 %i.mz                        ; 2 uses
  %i.nb = add nsw i32 %i.mq, -1
  %i.nc = zext nneg i32 %i.nb to i64
  %umin.i.i139.i = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.nc)
  %i.nd = shl nuw nsw i64 %umin.i.i139.i, 3
  %i.ne = add nuw nsw i64 %i.nd, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i137.i, ptr noundef nonnull align 8 dereferenceable(1) %i.mu, i64 %i.ne, i1 false), !tbaa !31, !noalias !422
  %i.nf = zext nneg i32 %i.mq to i64              ; 2 uses
  %i.ng = trunc nuw nsw i64 %indvars.iv163.i.i123.i to i32 ; 2 uses
  %i.nh = add nsw i64 %i.nf, -1
  %umin552 = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.nh)
  %i.ni = add i64 %umin552, 1                     ; 3 uses
  %min.iters.check554 = icmp ult i64 %i.ni, 8
  br i1 %min.iters.check554, label %scalar.ph553.preheader, label %vector.ph555

vector.ph555:                                     ; preds = %.lr.ph130.us.i.i136.i
  %n.vec556 = and i64 %i.ni, -8                   ; 4 uses
  %i.nj = add i64 %.056133.us.i.i124.i, %n.vec556 ; 2 uses
  %broadcast.splatinsert557 = insertelement <4 x i32> poison, i32 %i.ng, i64 0
  %broadcast.splat558 = shufflevector <4 x i32> %broadcast.splatinsert557, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nk = getelementptr [4 x i8], ptr %invariant.gep198.i.i121.i, i64 %.056133.us.i.i124.i
  br label %vector.body559

vector.body559:                                   ; preds = %vector.body559, %vector.ph555
  %index560 = phi i64 [ 0, %vector.ph555 ], [ %index.next561, %vector.body559 ] ; 2 uses
  %i.nl = getelementptr [4 x i8], ptr %i.nk, i64 %index560 ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 16
  store <4 x i32> %broadcast.splat558, ptr %i.nl, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  store <4 x i32> %broadcast.splat558, ptr %i.nm, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  %index.next561 = add nuw i64 %index560, 8       ; 2 uses
  %i.nn = icmp eq i64 %index.next561, %n.vec556
  br i1 %i.nn, label %middle.block562, label %vector.body559, !llvm.loop !423

middle.block562:                                  ; preds = %vector.body559
  %cmp.n563 = icmp eq i64 %i.ni, %n.vec556
  br i1 %cmp.n563, label %._crit_edge131.us.i.i125.i, label %scalar.ph553.preheader

scalar.ph553.preheader:                           ; preds = %.lr.ph130.us.i.i136.i, %middle.block562
  %indvars.iv.i.i140.i.ph = phi i64 [ 0, %.lr.ph130.us.i.i136.i ], [ %n.vec556, %middle.block562 ]
  %.1128.us.i.i141.i.ph = phi i64 [ %.056133.us.i.i124.i, %.lr.ph130.us.i.i136.i ], [ %i.nj, %middle.block562 ]
  br label %scalar.ph553

..preheader109_crit_edge.us.i.i128.i:             ; preds = %._crit_edge131.us.i.i125.i
  br i1 %i.ml, label %.lr.ph137.us.i.i131.i, label %._crit_edge138.us.i.i129.i

.lr.ph137.us.i.i131.i:                            ; preds = %..preheader109_crit_edge.us.i.i128.i
  %i.no = add i64 %.1.lcssa.us.i.i126.i, %18
  %i.np = shl i64 %i.no, 3
  %scevgep167.i.i132.i = getelementptr i8, ptr %7, i64 %i.np
  %i.nq = sub nuw i64 %4, %.1.lcssa.us.i.i126.i   ; 4 uses
  %i.nr = shl i64 %i.nq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep167.i.i132.i, i8 -1, i64 %i.nr, i1 false), !tbaa !31, !alias.scope !398, !noalias !424
  %min.iters.check543 = icmp ult i64 %i.nq, 8
  br i1 %min.iters.check543, label %scalar.ph542.preheader, label %vector.ph544

vector.ph544:                                     ; preds = %.lr.ph137.us.i.i131.i
  %n.vec545 = and i64 %i.nq, -8                   ; 3 uses
  %i.ns = add i64 %.1.lcssa.us.i.i126.i, %n.vec545
  %i.nt = getelementptr [4 x i8], ptr %invariant.gep198.i.i121.i, i64 %.1.lcssa.us.i.i126.i
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next548, %vector.body546 ] ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.nt, i64 %index547 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.nu, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  store <4 x i32> splat (i32 2147483647), ptr %i.nv, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  %index.next548 = add nuw i64 %index547, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next548, %n.vec545
  br i1 %i.nw, label %middle.block549, label %vector.body546, !llvm.loop !425

middle.block549:                                  ; preds = %vector.body546
  %cmp.n550 = icmp eq i64 %i.nq, %n.vec545
  br i1 %cmp.n550, label %._crit_edge138.us.i.i129.i, label %scalar.ph542.preheader

scalar.ph542.preheader:                           ; preds = %.lr.ph137.us.i.i131.i, %middle.block549
  %.2136.us.i.i133.i.ph = phi i64 [ %.1.lcssa.us.i.i126.i, %.lr.ph137.us.i.i131.i ], [ %i.ns, %middle.block549 ]
  br label %scalar.ph542

.lr.ph141.split.i.i103.i:                         ; preds = %.lr.ph141.i.i102.i
  %.not145.i.i104.i = icmp eq i64 %4, 0
  br i1 %.not145.i.i104.i, label %._crit_edge142.i.i114.i, label %.preheader109.preheader.i.i105.i

.preheader109.preheader.i.i105.i:                 ; preds = %.lr.ph141.split.i.i103.i
  %i.nx = shl i64 %4, 3
  %i.ny = mul i64 %i.nx, %i.ly
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.ny, i1 false), !tbaa !31, !alias.scope !398, !noalias !424
  %min.iters.check533 = icmp ult i64 %4, 8
  %n.vec535 = and i64 %4, -8                      ; 3 uses
  %cmp.n540 = icmp eq i64 %4, %n.vec535
  br label %.preheader109.i.i106.i

.lr.ph126.i.i93.i:                                ; preds = %bb.af, %.lr.ph126.i.i93.i
  %storemerge124.i.i94.i = phi i64 [ %i.ob, %.lr.ph126.i.i93.i ], [ 0, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #4, !noalias !400
  %i.nz = add i64 %storemerge124.i.i94.i, %i.kr
  %.sroa.speculated.i.i95.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.nz)
  store i64 %.sroa.speculated.i.i95.i, ptr %i.ad, align 8, !tbaa !31, !noalias !400
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_21HammingComputer16_tplILNS_9SIMDLevelE0EEEEEviPKhS6_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.aa, ptr nonnull %i.ac, ptr nonnull %i.ad, ptr nonnull %i.ab, ptr nonnull %13, ptr nonnull %i.z, ptr nonnull %i.y), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #4, !noalias !400
  %i.oa = load i64, ptr %i.ac, align 8, !tbaa !31, !noalias !400
  %i.ob = add i64 %i.oa, %i.kr                    ; 3 uses
  store i64 %i.ob, ptr %i.ac, align 8, !tbaa !31, !noalias !400
  %i.oc = icmp ult i64 %i.ob, %3
  br i1 %i.oc, label %.lr.ph126.i.i93.i, label %._crit_edge127.loopexit.i.i96.i, !llvm.loop !426

._crit_edge142.i.i114.i:                          ; preds = %._crit_edge138.i.i112.i, %._crit_edge138.us.i.i129.i, %.lr.ph141.split.i.i103.i, %._crit_edge127.i.i99.i
  %.not.i.i.i71.i.i115.i = icmp eq ptr %.pre170.i.i100.i, null
  br i1 %.not.i.i.i71.i.i115.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i116.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge142.i.i114.i
  %i.od = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !427, !noalias !400
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %.pre170.i.i100.i to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.pre170.i.i100.i, i64 noundef %i.oh) #27, !noalias !402
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i116.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i116.i: ; preds = %bb.ao, %._crit_edge142.i.i114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4, !noalias !400
  call void @_ZdaPv(ptr noundef nonnull %i.km) #27, !noalias !402
  %.not.i.i.i76.i.i117.i = icmp eq ptr %.sroa.0100.0.i.i74.i, null
  br i1 %.not.i.i.i76.i.i117.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer16_tplILS1_0EEEEEDav.exit.i", label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i116.i
  %i.oi = ptrtoint ptr %.sroa.0100.0.i.i74.i to i64
  %i.oj = sub i64 %.sroa.10104.0.i.i73.i, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0.i.i74.i, i64 noundef %i.oj) #27, !noalias !402
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer16_tplILS1_0EEEEEDav.exit.i"

.preheader109.i.i106.i:                           ; preds = %._crit_edge138.i.i112.i, %.preheader109.preheader.i.i105.i
  %.057139.i.i107.i = phi i64 [ %i.op, %._crit_edge138.i.i112.i ], [ 0, %.preheader109.preheader.i.i105.i ] ; 2 uses
  %i.ok = mul i64 %.057139.i.i107.i, %4
  %invariant.gep.i.i108.i = getelementptr [4 x i8], ptr %6, i64 %i.ok ; 2 uses
  br i1 %min.iters.check533, label %scalar.ph532.preheader, label %vector.body536

vector.body536:                                   ; preds = %.preheader109.i.i106.i, %vector.body536
  %index537 = phi i64 [ %index.next538, %vector.body536 ], [ 0, %.preheader109.i.i106.i ] ; 2 uses
  %i.ol = getelementptr [4 x i8], ptr %invariant.gep.i.i108.i, i64 %index537 ; 2 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ol, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  store <4 x i32> splat (i32 2147483647), ptr %i.om, align 4, !tbaa !12, !alias.scope !396, !noalias !416
  %index.next538 = add nuw i64 %index537, 8       ; 2 uses
  %i.on = icmp eq i64 %index.next538, %n.vec535
end_hunk_2
begin_hunk_3_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4, !noalias !437
  %i.pe = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i8 0, i64 16, i1 false), !noalias !437
  br i1 %.not.i.i.i.i.i.i170.i, label %bb.at, label %.lr.ph.i.i176.i

.lr.ph.i.i176.i:                                  ; preds = %bb.as
  %sext.i177.i = shl i64 %5, 32
  %i.pf = ashr exact i64 %sext.i177.i, 32
  %i.pg = trunc i64 %4 to i32                     ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.av

._crit_edge.i.i187.i:                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i
  store ptr %i.qp, ptr %i.pe, align 8, !noalias !437
  store ptr %i.qn, ptr %i.ph, align 8, !noalias !437
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i187.i, %bb.as
  %.lcssa117.i.i.i = phi ptr [ %i.qo, %._crit_edge.i.i187.i ], [ null, %bb.as ] ; 2 uses
  store ptr %.lcssa117.i.i.i, ptr %12, align 8, !noalias !437
  %i.pi = load i64, ptr @_ZN5faiss18hamming_batch_sizeE, align 8, !tbaa !31, !noalias !437 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #4, !noalias !437
  store i64 0, ptr %i.w, align 8, !tbaa !31, !noalias !437
  %.not148.i.i.i = icmp eq i64 %3, 0
  br i1 %.not148.i.i.i, label %._crit_edge132.i.i.i, label %.lr.ph131.i.i.i

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i172.i
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.av:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i, %.lr.ph.i.i176.i
  %i.pk = phi ptr [ null, %.lr.ph.i.i176.i ], [ %i.qn, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 5 uses
  %i.pl = phi ptr [ null, %.lr.ph.i.i176.i ], [ %i.qp, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 11 uses
  %.058120.i.i.i = phi i64 [ 0, %.lr.ph.i.i176.i ], [ %i.qq, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 3 uses
  %i.pm = phi ptr [ null, %.lr.ph.i.i176.i ], [ %i.qo, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 8 uses
  %i.pn = mul i64 %.058120.i.i.i, %i.os           ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0.i.i.i, i64 %i.pn ; 2 uses
  %i.pp = mul i64 %i.pn, %4
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pp ; 2 uses
  %i.pr = mul i64 %.058120.i.i.i, %i.pf
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 %i.pr ; 3 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !31, !alias.scope !430, !noalias !440 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !31, !alias.scope !430, !noalias !440 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !12, !alias.scope !430, !noalias !440 ; 2 uses
  %.not.i.i.i.i178.i = icmp eq ptr %i.pl, %i.pk
  br i1 %.not.i.i.i.i178.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.po, ptr %i.pl, align 8, !tbaa !325, !noalias !439
  %.sroa.6.0..sroa_idx.i.i179.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  store ptr %i.pq, ptr %.sroa.6.0..sroa_idx.i.i179.i, align 8, !tbaa !326, !noalias !439
  %.sroa.7.0..sroa_idx.i.i180.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store i64 %i.pt, ptr %.sroa.7.0..sroa_idx.i.i180.i, align 8, !tbaa !31, !noalias !439
  %.sroa.8.0..sroa_idx.i.i181.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  store i64 %i.pv, ptr %.sroa.8.0..sroa_idx.i.i181.i, align 8, !tbaa !31, !noalias !439
  %.sroa.9.0..sroa_idx.i.i182.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  store i32 %i.px, ptr %.sroa.9.0..sroa_idx.i.i182.i, align 8, !tbaa !12, !noalias !439
  %.sroa.1091.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 40
  store i32 %i.or, ptr %.sroa.1091.0..sroa_idx.i.i.i, align 8, !tbaa !12, !noalias !439
  %.sroa.11.0..sroa_idx.i.i183.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 44
  store i32 0, ptr %.sroa.11.0..sroa_idx.i.i183.i, align 4, !tbaa !12, !noalias !439
  %.sroa.12.0..sroa_idx.i.i184.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  store i32 0, ptr %.sroa.12.0..sroa_idx.i.i184.i, align 8, !tbaa !12, !noalias !439
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 52
  store i32 %i.pg, ptr %.sroa.13.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !439
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.py = ptrtoint ptr %i.pk to i64
  %i.pz = ptrtoint ptr %i.pm to i64
  %i.qa = sub i64 %i.py, %i.pz                    ; 5 uses
  %i.qb = icmp eq i64 %i.qa, 9223372036854775800
  br i1 %i.qb, label %bb.ay, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i228.i unwind label %.loopexit.split-lp.i.i226.i, !noalias !439

.noexc69.i.i228.i:                                ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.ax
  %i.qc = sdiv exact i64 %i.qa, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i207.i = tail call i64 @llvm.umax.i64(i64 %i.qc, i64 1)
  %i.qd = add nsw i64 %.sroa.speculated.i.i.i.i.i.i207.i, %i.qc ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %i.qc
  %i.qf = tail call i64 @llvm.umin.i64(i64 %i.qd, i64 164703072086692425)
  %i.qg = select i1 %i.qe, i64 164703072086692425, i64 %i.qf ; 3 uses
  %.not.i.i.i.i68.i.i208.i = icmp ne i64 %i.qg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i208.i)
  %i.qh = mul nuw nsw i64 %i.qg, 56
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qh) #28
          to label %.noexc70.i.i214.i unwind label %.loopexit.i.i209.i, !noalias !439 ; 5 uses

.noexc70.i.i214.i:                                ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qa ; 9 uses
  store ptr %i.po, ptr %i.qj, align 8, !tbaa !325, !noalias !439
  %.sroa.6.0..sroa_idx81.i.i215.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %i.pq, ptr %.sroa.6.0..sroa_idx81.i.i215.i, align 8, !tbaa !326, !noalias !439
  %.sroa.7.0..sroa_idx83.i.i216.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i64 %i.pt, ptr %.sroa.7.0..sroa_idx83.i.i216.i, align 8, !tbaa !31, !noalias !439
  %.sroa.8.0..sroa_idx85.i.i217.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i64 %i.pv, ptr %.sroa.8.0..sroa_idx85.i.i217.i, align 8, !tbaa !31, !noalias !439
  %.sroa.9.0..sroa_idx87.i.i218.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  store i32 %i.px, ptr %.sroa.9.0..sroa_idx87.i.i218.i, align 8, !tbaa !12, !noalias !439
  %.sroa.1091.0..sroa_idx92.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  store i32 %i.or, ptr %.sroa.1091.0..sroa_idx92.i.i.i, align 8, !tbaa !12, !noalias !439
  %.sroa.11.0..sroa_idx94.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 44
  store i32 0, ptr %.sroa.11.0..sroa_idx94.i.i.i, align 4, !tbaa !12, !noalias !439
  %.sroa.12.0..sroa_idx96.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  store i32 0, ptr %.sroa.12.0..sroa_idx96.i.i.i, align 8, !tbaa !12, !noalias !439
  %.sroa.13.0..sroa_idx98.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 52
  store i32 %i.pg, ptr %.sroa.13.0..sroa_idx98.i.i.i, align 4, !tbaa !12, !noalias !439
  %.not10.i.i.i.i.i.i.i.i219.i = icmp eq ptr %i.pm, %i.pk
  br i1 %.not10.i.i.i.i.i.i.i.i219.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i220.i

.lr.ph.i.i.i.i.i.i.i.i220.i:                      ; preds = %.noexc70.i.i214.i, %.lr.ph.i.i.i.i.i.i.i.i220.i
  %.012.i.i.i.i.i.i.i.i221.i = phi ptr [ %i.ql, %.lr.ph.i.i.i.i.i.i.i.i220.i ], [ %i.qi, %.noexc70.i.i214.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i222.i = phi ptr [ %i.qk, %.lr.ph.i.i.i.i.i.i.i.i220.i ], [ %i.pm, %.noexc70.i.i214.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i.i.i221.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i.i.i222.i, i64 56, i1 false), !tbaa.struct !441, !alias.scope !442, !noalias !439
  %i.qk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i222.i, i64 56 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i221.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i223.i = icmp eq ptr %i.qk, %i.pk
  br i1 %.not.i.i.i.i.i.i.i.i223.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i220.i, !llvm.loop !446

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i220.i, %.noexc70.i.i214.i
  %.0.lcssa.i.i.i.i.i.i.i.i224.i = phi ptr [ %i.qi, %.noexc70.i.i214.i ], [ %i.ql, %.lr.ph.i.i.i.i.i.i.i.i220.i ]
  %.not.i23.i.i.i.i.i225.i = icmp eq ptr %i.pm, null
  br i1 %.not.i23.i.i.i.i.i225.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.qa) #27, !noalias !439
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.az, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  %i.qm = getelementptr inbounds nuw [56 x i8], ptr %i.qi, i64 %i.qg
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.aw
  %i.qn = phi ptr [ %i.qm, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.pk, %bb.aw ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i185.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i224.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.pl, %bb.aw ]
  %i.qo = phi ptr [ %i.qi, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.pm, %bb.aw ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i185.i, i64 56 ; 2 uses
  %i.qq = add nuw i64 %.058120.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i186.i = icmp eq i64 %i.qq, %2
  br i1 %exitcond.not.i.i186.i, label %._crit_edge.i.i187.i, label %bb.av, !llvm.loop !447

.loopexit.i.i209.i:                               ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer20_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i210.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp.i.i226.i:                      ; preds = %bb.ay
  %lpad.loopexit.split-lp.i.i227.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.i.i226.i, %.loopexit.i.i209.i
  %lpad.phi.i.i211.i = phi { ptr, i32 } [ %lpad.loopexit.i.i210.i, %.loopexit.i.i209.i ], [ %lpad.loopexit.split-lp.i.i227.i, %.loopexit.split-lp.i.i226.i ]
  %.not.i.i.i.i.i212.i = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i.i212.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i213.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.qa) #27, !noalias !439
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i213.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i213.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4, !noalias !437
  tail call void @_ZdaPv(ptr noundef nonnull %i.pd) #27, !noalias !439
  br label %bb.be

._crit_edge132.loopexit.i.i.i:                    ; preds = %.lr.ph131.i.i.i
  %.pre.i.i189.i = load i64, ptr %i.u, align 8, !tbaa !31, !noalias !437
  %.pre175.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !448, !noalias !437
  br label %._crit_edge132.i.i.i

._crit_edge132.i.i.i:                             ; preds = %._crit_edge132.loopexit.i.i.i, %bb.at
  %.pre175.i.i.i = phi ptr [ %.pre175.pre.i.i.i, %._crit_edge132.loopexit.i.i.i ], [ %.lcssa117.i.i.i, %bb.at ] ; 4 uses
  %i.qr = phi i64 [ %.pre.i.i189.i, %._crit_edge132.loopexit.i.i.i ], [ %2, %bb.at ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #4, !noalias !437
  %.not149.i.i.i = icmp eq i64 %i.qr, 0
  br i1 %.not149.i.i.i, label %._crit_edge147.i.i.i, label %.lr.ph146.i.i.i

.lr.ph146.i.i.i:                                  ; preds = %._crit_edge132.i.i.i
  %i.qs = icmp sgt i32 %i.aq, -1
  %i.qt = icmp ne i64 %4, 0
  %i.qu = and i1 %i.qt, %i.qs
  br i1 %i.qu, label %.preheader.lr.ph.us.preheader.i.i196.i, label %.lr.ph146.split.i.i.i

.preheader.lr.ph.us.preheader.i.i196.i:           ; preds = %.lr.ph146.i.i.i
  %i.qv = zext nneg i32 %i.oq to i64
  br label %.preheader.lr.ph.us.i.i197.i

.preheader.lr.ph.us.i.i197.i:                     ; preds = %._crit_edge143.us.i.i.i, %.preheader.lr.ph.us.preheader.i.i196.i
  %.057144.us.i.i.i = phi i64 [ %i.rh, %._crit_edge143.us.i.i.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i196.i ] ; 3 uses
  %19 = mul i64 %.057144.us.i.i.i, %4             ; 3 uses
  %i.qw = getelementptr inbounds nuw [56 x i8], ptr %.pre175.i.i.i, i64 %.057144.us.i.i.i ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !451, !noalias !439
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %invariant.gep203.i.i.i = getelementptr [4 x i8], ptr %6, i64 %19 ; 4 uses
  br label %.preheader.us.i.i198.i

scalar.ph519:                                     ; preds = %scalar.ph519.preheader, %scalar.ph519
  %indvars.iv.i.i205.i = phi i64 [ %indvars.iv.next.i.i206.i, %scalar.ph519 ], [ %indvars.iv.i.i205.i.ph, %scalar.ph519.preheader ]
  %.1133.us.i.i.i = phi i64 [ %i.qz, %scalar.ph519 ], [ %.1133.us.i.i.i.ph, %scalar.ph519.preheader ] ; 2 uses
  %gep204.i.i.i = getelementptr [4 x i8], ptr %invariant.gep203.i.i.i, i64 %.1133.us.i.i.i
  store i32 %i.rz, ptr %gep204.i.i.i, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  %i.qz = add nuw i64 %.1133.us.i.i.i, 1          ; 3 uses
  %indvars.iv.next.i.i206.i = add nuw nsw i64 %indvars.iv.i.i205.i, 1 ; 2 uses
  %i.ra = icmp samesign ult i64 %indvars.iv.next.i.i206.i, %i.ry
  %i.rb = icmp ult i64 %i.qz, %4
  %i.rc = select i1 %i.ra, i1 %i.rb, i1 false
  br i1 %i.rc, label %scalar.ph519, label %._crit_edge136.us.i.i199.i, !llvm.loop !454

._crit_edge136.us.i.i199.i:                       ; preds = %scalar.ph519, %middle.block528, %.preheader.us.i.i198.i
  %.1.lcssa.us.i.i200.i = phi i64 [ %.056138.us.i.i.i, %.preheader.us.i.i198.i ], [ %i.sc, %middle.block528 ], [ %i.qz, %scalar.ph519 ] ; 7 uses
  %indvars.iv.next169.i.i.i = add nuw nsw i64 %indvars.iv168.i.i.i, 1
  %i.rd = icmp samesign ult i64 %indvars.iv168.i.i.i, %i.qv
  %i.re = icmp ult i64 %.1.lcssa.us.i.i200.i, %4  ; 2 uses
  %i.rf = select i1 %i.rd, i1 %i.re, i1 false
  br i1 %i.rf, label %.preheader.us.i.i198.i, label %..preheader114_crit_edge.us.i.i.i, !llvm.loop !455

scalar.ph508:                                     ; preds = %scalar.ph508.preheader, %scalar.ph508
  %.2141.us.i.i.i = phi i64 [ %i.rg, %scalar.ph508 ], [ %.2141.us.i.i.i.ph, %scalar.ph508.preheader ] ; 2 uses
  %gep206.i.i.i = getelementptr [4 x i8], ptr %invariant.gep203.i.i.i, i64 %.2141.us.i.i.i
  store i32 2147483647, ptr %gep206.i.i.i, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  %i.rg = add nuw i64 %.2141.us.i.i.i, 1          ; 2 uses
  %exitcond173.not.i.i.i = icmp eq i64 %i.rg, %4
  br i1 %exitcond173.not.i.i.i, label %._crit_edge143.us.i.i.i, label %scalar.ph508, !llvm.loop !456

._crit_edge143.us.i.i.i:                          ; preds = %scalar.ph508, %middle.block515, %..preheader114_crit_edge.us.i.i.i
  %i.rh = add nuw i64 %.057144.us.i.i.i, 1        ; 2 uses
  %exitcond174.not.i.i.i = icmp eq i64 %i.rh, %i.qr
  br i1 %exitcond174.not.i.i.i, label %._crit_edge147.i.i.i, label %.preheader.lr.ph.us.i.i197.i, !llvm.loop !457

.preheader.us.i.i198.i:                           ; preds = %._crit_edge136.us.i.i199.i, %.preheader.lr.ph.us.i.i197.i
  %indvars.iv168.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i197.i ], [ %indvars.iv.next169.i.i.i, %._crit_edge136.us.i.i199.i ] ; 5 uses
  %.056138.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i197.i ], [ %.1.lcssa.us.i.i200.i, %._crit_edge136.us.i.i199.i ] ; 7 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv168.i.i.i
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !12, !noalias !439 ; 3 uses
  %i.rk = icmp sgt i32 %i.rj, 0
  br i1 %i.rk, label %.lr.ph135.us.i.i201.i, label %._crit_edge136.us.i.i199.i

.lr.ph135.us.i.i201.i:                            ; preds = %.preheader.us.i.i198.i
  %i.rl = load ptr, ptr %i.qy, align 8, !tbaa !458, !noalias !439
  %i.rm = mul i64 %indvars.iv168.i.i.i, %4
  %i.rn = getelementptr [8 x i8], ptr %i.rl, i64 %i.rm
  %i.ro = add i64 %.056138.us.i.i.i, %19
  %i.rp = shl i64 %i.ro, 3
  %scevgep.i.i202.i = getelementptr i8, ptr %7, i64 %i.rp
  %i.rq = add i64 %.056138.us.i.i.i, 1
  %umax.i.i203.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.rq)
  %i.rr = xor i64 %.056138.us.i.i.i, -1
  %i.rs = add i64 %umax.i.i203.i, %i.rr
  %i.rt = freeze i64 %i.rs                        ; 2 uses
  %i.ru = add nsw i32 %i.rj, -1
  %i.rv = zext nneg i32 %i.ru to i64
  %umin.i.i204.i = call i64 @llvm.umin.i64(i64 %i.rt, i64 %i.rv)
  %i.rw = shl nuw nsw i64 %umin.i.i204.i, 3
  %i.rx = add nuw nsw i64 %i.rw, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i202.i, ptr noundef nonnull align 8 dereferenceable(1) %i.rn, i64 %i.rx, i1 false), !tbaa !31, !noalias !459
  %i.ry = zext nneg i32 %i.rj to i64              ; 2 uses
  %i.rz = trunc nuw nsw i64 %indvars.iv168.i.i.i to i32 ; 2 uses
  %i.sa = add nsw i64 %i.ry, -1
  %umin518 = call i64 @llvm.umin.i64(i64 %i.rt, i64 %i.sa)
  %i.sb = add i64 %umin518, 1                     ; 3 uses
  %min.iters.check520 = icmp ult i64 %i.sb, 8
  br i1 %min.iters.check520, label %scalar.ph519.preheader, label %vector.ph521

vector.ph521:                                     ; preds = %.lr.ph135.us.i.i201.i
  %n.vec522 = and i64 %i.sb, -8                   ; 4 uses
  %i.sc = add i64 %.056138.us.i.i.i, %n.vec522    ; 2 uses
  %broadcast.splatinsert523 = insertelement <4 x i32> poison, i32 %i.rz, i64 0
  %broadcast.splat524 = shufflevector <4 x i32> %broadcast.splatinsert523, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sd = getelementptr [4 x i8], ptr %invariant.gep203.i.i.i, i64 %.056138.us.i.i.i
  br label %vector.body525

vector.body525:                                   ; preds = %vector.body525, %vector.ph521
  %index526 = phi i64 [ 0, %vector.ph521 ], [ %index.next527, %vector.body525 ] ; 2 uses
  %i.se = getelementptr [4 x i8], ptr %i.sd, i64 %index526 ; 2 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 16
  store <4 x i32> %broadcast.splat524, ptr %i.se, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  store <4 x i32> %broadcast.splat524, ptr %i.sf, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  %index.next527 = add nuw i64 %index526, 8       ; 2 uses
  %i.sg = icmp eq i64 %index.next527, %n.vec522
  br i1 %i.sg, label %middle.block528, label %vector.body525, !llvm.loop !460

middle.block528:                                  ; preds = %vector.body525
  %cmp.n529 = icmp eq i64 %i.sb, %n.vec522
  br i1 %cmp.n529, label %._crit_edge136.us.i.i199.i, label %scalar.ph519.preheader

scalar.ph519.preheader:                           ; preds = %.lr.ph135.us.i.i201.i, %middle.block528
  %indvars.iv.i.i205.i.ph = phi i64 [ 0, %.lr.ph135.us.i.i201.i ], [ %n.vec522, %middle.block528 ]
  %.1133.us.i.i.i.ph = phi i64 [ %.056138.us.i.i.i, %.lr.ph135.us.i.i201.i ], [ %i.sc, %middle.block528 ]
  br label %scalar.ph519

..preheader114_crit_edge.us.i.i.i:                ; preds = %._crit_edge136.us.i.i199.i
  br i1 %i.re, label %.lr.ph142.us.i.i.i, label %._crit_edge143.us.i.i.i

.lr.ph142.us.i.i.i:                               ; preds = %..preheader114_crit_edge.us.i.i.i
  %i.sh = add i64 %.1.lcssa.us.i.i200.i, %19
  %i.si = shl i64 %i.sh, 3
  %scevgep172.i.i.i = getelementptr i8, ptr %7, i64 %i.si
  %i.sj = sub nuw i64 %4, %.1.lcssa.us.i.i200.i   ; 4 uses
  %i.sk = shl i64 %i.sj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep172.i.i.i, i8 -1, i64 %i.sk, i1 false), !tbaa !31, !alias.scope !435, !noalias !461
  %min.iters.check509 = icmp ult i64 %i.sj, 8
  br i1 %min.iters.check509, label %scalar.ph508.preheader, label %vector.ph510

vector.ph510:                                     ; preds = %.lr.ph142.us.i.i.i
  %n.vec511 = and i64 %i.sj, -8                   ; 3 uses
  %i.sl = add i64 %.1.lcssa.us.i.i200.i, %n.vec511
  %i.sm = getelementptr [4 x i8], ptr %invariant.gep203.i.i.i, i64 %.1.lcssa.us.i.i200.i
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph510
  %index513 = phi i64 [ 0, %vector.ph510 ], [ %index.next514, %vector.body512 ] ; 2 uses
  %i.sn = getelementptr [4 x i8], ptr %i.sm, i64 %index513 ; 2 uses
  %i.so = getelementptr i8, ptr %i.sn, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.sn, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  store <4 x i32> splat (i32 2147483647), ptr %i.so, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  %index.next514 = add nuw i64 %index513, 8       ; 2 uses
  %i.sp = icmp eq i64 %index.next514, %n.vec511
  br i1 %i.sp, label %middle.block515, label %vector.body512, !llvm.loop !462

middle.block515:                                  ; preds = %vector.body512
  %cmp.n516 = icmp eq i64 %i.sj, %n.vec511
  br i1 %cmp.n516, label %._crit_edge143.us.i.i.i, label %scalar.ph508.preheader

scalar.ph508.preheader:                           ; preds = %.lr.ph142.us.i.i.i, %middle.block515
  %.2141.us.i.i.i.ph = phi i64 [ %.1.lcssa.us.i.i200.i, %.lr.ph142.us.i.i.i ], [ %i.sl, %middle.block515 ]
  br label %scalar.ph508

.lr.ph146.split.i.i.i:                            ; preds = %.lr.ph146.i.i.i
  %.not150.i.i.i = icmp eq i64 %4, 0
  br i1 %.not150.i.i.i, label %._crit_edge147.i.i.i, label %.preheader114.preheader.i.i.i

.preheader114.preheader.i.i.i:                    ; preds = %.lr.ph146.split.i.i.i
  %i.sq = shl i64 %4, 3
  %i.sr = mul i64 %i.sq, %i.qr
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.sr, i1 false), !tbaa !31, !alias.scope !435, !noalias !461
  %min.iters.check499 = icmp ult i64 %4, 8
  %n.vec501 = and i64 %4, -8                      ; 3 uses
  %cmp.n506 = icmp eq i64 %4, %n.vec501
  br label %.preheader114.i.i.i

.lr.ph131.i.i.i:                                  ; preds = %bb.at, %.lr.ph131.i.i.i
  %storemerge129.i.i.i = phi i64 [ %i.su, %.lr.ph131.i.i.i ], [ 0, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #4, !noalias !437
  %i.ss = add i64 %storemerge129.i.i.i, %i.pi
  %.sroa.speculated.i.i188.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.ss)
  store i64 %.sroa.speculated.i.i188.i, ptr %i.x, align 8, !tbaa !31, !noalias !437
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_21HammingComputer20_tplILNS_9SIMDLevelE0EEEEEviPKhS6_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.u, ptr nonnull %i.w, ptr nonnull %i.x, ptr nonnull %i.v, ptr nonnull %12, ptr nonnull %i.t, ptr nonnull %i.s), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #4, !noalias !437
  %i.st = load i64, ptr %i.w, align 8, !tbaa !31, !noalias !437
  %i.su = add i64 %i.st, %i.pi                    ; 3 uses
  store i64 %i.su, ptr %i.w, align 8, !tbaa !31, !noalias !437
  %i.sv = icmp ult i64 %i.su, %3
  br i1 %i.sv, label %.lr.ph131.i.i.i, label %._crit_edge132.loopexit.i.i.i, !llvm.loop !463

._crit_edge147.i.i.i:                             ; preds = %._crit_edge143.i.i.i, %._crit_edge143.us.i.i.i, %.lr.ph146.split.i.i.i, %._crit_edge132.i.i.i
  %.not.i.i.i71.i.i193.i = icmp eq ptr %.pre175.i.i.i, null
  br i1 %.not.i.i.i71.i.i193.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i194.i, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge147.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !464, !noalias !437
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %.pre175.i.i.i to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %.pre175.i.i.i, i64 noundef %i.ta) #27, !noalias !439
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i194.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i194.i: ; preds = %bb.bc, %._crit_edge147.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4, !noalias !437
  call void @_ZdaPv(ptr noundef nonnull %i.pd) #27, !noalias !439
  %.not.i.i.i76.i.i195.i = icmp eq ptr %.sroa.0105.0.i.i.i, null
  br i1 %.not.i.i.i76.i.i195.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer20_tplILS1_0EEEEEDav.exit.i", label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i194.i
  %i.tb = ptrtoint ptr %.sroa.0105.0.i.i.i to i64
  %i.tc = sub i64 %.sroa.10109.0.i.i.i, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0.i.i.i, i64 noundef %i.tc) #27, !noalias !439
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer20_tplILS1_0EEEEEDav.exit.i"

.preheader114.i.i.i:                              ; preds = %._crit_edge143.i.i.i, %.preheader114.preheader.i.i.i
  %.057144.i.i.i = phi i64 [ %i.ti, %._crit_edge143.i.i.i ], [ 0, %.preheader114.preheader.i.i.i ] ; 2 uses
  %i.td = mul i64 %.057144.i.i.i, %4
  %invariant.gep.i.i190.i = getelementptr [4 x i8], ptr %6, i64 %i.td ; 2 uses
  br i1 %min.iters.check499, label %scalar.ph498.preheader, label %vector.body502

vector.body502:                                   ; preds = %.preheader114.i.i.i, %vector.body502
  %index503 = phi i64 [ %index.next504, %vector.body502 ], [ 0, %.preheader114.i.i.i ] ; 2 uses
  %i.te = getelementptr [4 x i8], ptr %invariant.gep.i.i190.i, i64 %index503 ; 2 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.te, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  store <4 x i32> splat (i32 2147483647), ptr %i.tf, align 4, !tbaa !12, !alias.scope !433, !noalias !453
  %index.next504 = add nuw i64 %index503, 8       ; 2 uses
  %i.tg = icmp eq i64 %index.next504, %n.vec501
end_hunk_3
begin_hunk_4_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a

.lr.ph.i.i237.i:                                  ; preds = %bb.bg
  %sext.i238.i = shl i64 %5, 32
  %i.ty = ashr exact i64 %sext.i238.i, 32
  %i.tz = trunc i64 %4 to i32                     ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.bj

._crit_edge.i.i250.i:                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i
  store ptr %i.vk, ptr %i.tx, align 8, !noalias !474
  store ptr %i.vi, ptr %i.ua, align 8, !noalias !474
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i.i250.i, %bb.bg
  %.lcssa116.i.i.i = phi ptr [ %i.vj, %._crit_edge.i.i250.i ], [ null, %bb.bg ] ; 2 uses
  store ptr %.lcssa116.i.i.i, ptr %11, align 8, !noalias !474
  %i.ub = load i64, ptr @_ZN5faiss18hamming_batch_sizeE, align 8, !tbaa !31, !noalias !474 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #4, !noalias !474
  store i64 0, ptr %i.q, align 8, !tbaa !31, !noalias !474
  %.not147.i.i.i = icmp eq i64 %3, 0
  br i1 %.not147.i.i.i, label %._crit_edge131.i.i.i, label %.lr.ph130.i.i.i

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i233.i
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bj:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i, %.lr.ph.i.i237.i
  %i.ud = phi ptr [ null, %.lr.ph.i.i237.i ], [ %i.vi, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 5 uses
  %i.ue = phi ptr [ null, %.lr.ph.i.i237.i ], [ %i.vk, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 12 uses
  %.058119.i.i.i = phi i64 [ 0, %.lr.ph.i.i237.i ], [ %i.vl, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 3 uses
  %i.uf = phi ptr [ null, %.lr.ph.i.i237.i ], [ %i.vj, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 8 uses
  %i.ug = mul i64 %.058119.i.i.i, %i.tl           ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0.i.i.i, i64 %i.ug ; 2 uses
  %i.ui = mul i64 %i.ug, %4
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.ui ; 2 uses
  %i.uk = mul i64 %.058119.i.i.i, %i.ty
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 %i.uk ; 4 uses
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !31, !alias.scope !467, !noalias !477 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !31, !alias.scope !467, !noalias !477 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !31, !alias.scope !467, !noalias !477 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !31, !alias.scope !467, !noalias !477 ; 2 uses
  %.not.i.i.i.i239.i = icmp eq ptr %i.ue, %i.ud
  br i1 %.not.i.i.i.i239.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.uh, ptr %i.ue, align 8, !tbaa !325, !noalias !476
  %.sroa.6.0..sroa_idx.i.i240.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store ptr %i.uj, ptr %.sroa.6.0..sroa_idx.i.i240.i, align 8, !tbaa !326, !noalias !476
  %.sroa.7.0..sroa_idx.i.i241.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i64 %i.um, ptr %.sroa.7.0..sroa_idx.i.i241.i, align 8, !tbaa !31, !noalias !476
  %.sroa.8.0..sroa_idx.i.i242.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i64 %i.uo, ptr %.sroa.8.0..sroa_idx.i.i242.i, align 8, !tbaa !31, !noalias !476
  %.sroa.9.0..sroa_idx.i.i243.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  store i64 %i.uq, ptr %.sroa.9.0..sroa_idx.i.i243.i, align 8, !tbaa !31, !noalias !476
  %.sroa.10.0..sroa_idx.i.i244.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 40
  store i64 %i.us, ptr %.sroa.10.0..sroa_idx.i.i244.i, align 8, !tbaa !31, !noalias !476
  %.sroa.11.0..sroa_idx.i.i245.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  store i32 %i.tk, ptr %.sroa.11.0..sroa_idx.i.i245.i, align 8, !tbaa !12, !noalias !476
  %.sroa.12.0..sroa_idx.i.i246.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 52
  store i32 0, ptr %.sroa.12.0..sroa_idx.i.i246.i, align 4, !tbaa !12, !noalias !476
  %.sroa.13.0..sroa_idx.i.i247.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 56
  store i32 0, ptr %.sroa.13.0..sroa_idx.i.i247.i, align 8, !tbaa !12, !noalias !476
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 60
  store i32 %i.tz, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !476
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ut = ptrtoint ptr %i.ud to i64
  %i.uu = ptrtoint ptr %i.uf to i64
  %i.uv = sub i64 %i.ut, %i.uu                    ; 5 uses
  %i.uw = icmp eq i64 %i.uv, 9223372036854775744
  br i1 %i.uw, label %bb.bm, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i296.i unwind label %.loopexit.split-lp.i.i294.i, !noalias !476

.noexc69.i.i296.i:                                ; preds = %bb.bm
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bl
  %i.ux = ashr exact i64 %i.uv, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i272.i = tail call i64 @llvm.umax.i64(i64 %i.ux, i64 1)
  %i.uy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i272.i, %i.ux ; 2 uses
  %i.uz = icmp ult i64 %i.uy, %i.ux
  %i.va = tail call i64 @llvm.umin.i64(i64 %i.uy, i64 144115188075855871)
  %i.vb = select i1 %i.uz, i64 144115188075855871, i64 %i.va ; 3 uses
  %.not.i.i.i.i68.i.i273.i = icmp ne i64 %i.vb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i273.i)
  %i.vc = shl nuw nsw i64 %i.vb, 6
  %i.vd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vc) #28
          to label %.noexc70.i.i279.i unwind label %.loopexit.i.i274.i, !noalias !476 ; 5 uses

.noexc70.i.i279.i:                                ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.uv ; 10 uses
  store ptr %i.uh, ptr %i.ve, align 8, !tbaa !325, !noalias !476
  %.sroa.6.0..sroa_idx81.i.i280.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store ptr %i.uj, ptr %.sroa.6.0..sroa_idx81.i.i280.i, align 8, !tbaa !326, !noalias !476
  %.sroa.7.0..sroa_idx83.i.i281.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  store i64 %i.um, ptr %.sroa.7.0..sroa_idx83.i.i281.i, align 8, !tbaa !31, !noalias !476
  %.sroa.8.0..sroa_idx85.i.i282.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  store i64 %i.uo, ptr %.sroa.8.0..sroa_idx85.i.i282.i, align 8, !tbaa !31, !noalias !476
  %.sroa.9.0..sroa_idx87.i.i283.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  store i64 %i.uq, ptr %.sroa.9.0..sroa_idx87.i.i283.i, align 8, !tbaa !31, !noalias !476
  %.sroa.10.0..sroa_idx89.i.i284.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  store i64 %i.us, ptr %.sroa.10.0..sroa_idx89.i.i284.i, align 8, !tbaa !31, !noalias !476
  %.sroa.11.0..sroa_idx91.i.i285.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  store i32 %i.tk, ptr %.sroa.11.0..sroa_idx91.i.i285.i, align 8, !tbaa !12, !noalias !476
  %.sroa.12.0..sroa_idx93.i.i286.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 52
  store i32 0, ptr %.sroa.12.0..sroa_idx93.i.i286.i, align 4, !tbaa !12, !noalias !476
  %.sroa.13.0..sroa_idx95.i.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 56
  store i32 0, ptr %.sroa.13.0..sroa_idx95.i.i.i, align 8, !tbaa !12, !noalias !476
  %.sroa.14.0..sroa_idx97.i.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 60
  store i32 %i.tz, ptr %.sroa.14.0..sroa_idx97.i.i.i, align 4, !tbaa !12, !noalias !476
  %.not10.i.i.i.i.i.i.i.i287.i = icmp eq ptr %i.uf, %i.ud
  br i1 %.not10.i.i.i.i.i.i.i.i287.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i288.i

.lr.ph.i.i.i.i.i.i.i.i288.i:                      ; preds = %.noexc70.i.i279.i, %.lr.ph.i.i.i.i.i.i.i.i288.i
  %.012.i.i.i.i.i.i.i.i289.i = phi ptr [ %i.vg, %.lr.ph.i.i.i.i.i.i.i.i288.i ], [ %i.vd, %.noexc70.i.i279.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i290.i = phi ptr [ %i.vf, %.lr.ph.i.i.i.i.i.i.i.i288.i ], [ %i.uf, %.noexc70.i.i279.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i.i.i.i289.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i.i.i.i290.i, i64 64, i1 false), !tbaa.struct !478, !alias.scope !479, !noalias !476
  %i.vf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i290.i, i64 64 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i289.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i291.i = icmp eq ptr %i.vf, %i.ud
  br i1 %.not.i.i.i.i.i.i.i.i291.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i288.i, !llvm.loop !483

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i288.i, %.noexc70.i.i279.i
  %.0.lcssa.i.i.i.i.i.i.i.i292.i = phi ptr [ %i.vd, %.noexc70.i.i279.i ], [ %i.vg, %.lr.ph.i.i.i.i.i.i.i.i288.i ]
  %.not.i23.i.i.i.i.i293.i = icmp eq ptr %i.uf, null
  br i1 %.not.i23.i.i.i.i.i293.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uv) #27, !noalias !476
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  %i.vh = getelementptr inbounds nuw [64 x i8], ptr %i.vd, i64 %i.vb
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.bk
  %i.vi = phi ptr [ %i.vh, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.ud, %bb.bk ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i248.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i292.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.ue, %bb.bk ]
  %i.vj = phi ptr [ %i.vd, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.uf, %bb.bk ] ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i248.i, i64 64 ; 2 uses
  %i.vl = add nuw i64 %.058119.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i249.i = icmp eq i64 %i.vl, %2
  br i1 %exitcond.not.i.i249.i, label %._crit_edge.i.i250.i, label %bb.bj, !llvm.loop !484

.loopexit.i.i274.i:                               ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer32_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i275.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp.i.i294.i:                      ; preds = %bb.bm
  %lpad.loopexit.split-lp.i.i295.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit.split-lp.i.i294.i, %.loopexit.i.i274.i
  %lpad.phi.i.i276.i = phi { ptr, i32 } [ %lpad.loopexit.i.i275.i, %.loopexit.i.i274.i ], [ %lpad.loopexit.split-lp.i.i295.i, %.loopexit.split-lp.i.i294.i ]
  %.not.i.i.i.i.i277.i = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i.i.i277.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i278.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uv) #27, !noalias !476
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i278.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i278.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4, !noalias !474
  tail call void @_ZdaPv(ptr noundef nonnull %i.tw) #27, !noalias !476
  br label %bb.bs

._crit_edge131.loopexit.i.i.i:                    ; preds = %.lr.ph130.i.i.i
  %.pre.i.i252.i = load i64, ptr %i.o, align 8, !tbaa !31, !noalias !474
  %.pre174.pre.i.i.i = load ptr, ptr %11, align 8, !tbaa !485, !noalias !474
  br label %._crit_edge131.i.i.i

._crit_edge131.i.i.i:                             ; preds = %._crit_edge131.loopexit.i.i.i, %bb.bh
  %.pre174.i.i.i = phi ptr [ %.pre174.pre.i.i.i, %._crit_edge131.loopexit.i.i.i ], [ %.lcssa116.i.i.i, %bb.bh ] ; 4 uses
  %i.vm = phi i64 [ %.pre.i.i252.i, %._crit_edge131.loopexit.i.i.i ], [ %2, %bb.bh ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #4, !noalias !474
  %.not148.i.i253.i = icmp eq i64 %i.vm, 0
  br i1 %.not148.i.i253.i, label %._crit_edge146.i.i.i, label %.lr.ph145.i.i.i

.lr.ph145.i.i.i:                                  ; preds = %._crit_edge131.i.i.i
  %i.vn = icmp sgt i32 %i.aq, -1
  %i.vo = icmp ne i64 %4, 0
  %i.vp = and i1 %i.vo, %i.vn
  br i1 %i.vp, label %.preheader.lr.ph.us.preheader.i.i262.i, label %.lr.ph145.split.i.i.i

.preheader.lr.ph.us.preheader.i.i262.i:           ; preds = %.lr.ph145.i.i.i
  %i.vq = zext nneg i32 %i.tj to i64
  br label %.preheader.lr.ph.us.i.i263.i

.preheader.lr.ph.us.i.i263.i:                     ; preds = %._crit_edge142.us.i.i.i, %.preheader.lr.ph.us.preheader.i.i262.i
  %.057143.us.i.i.i = phi i64 [ %i.wc, %._crit_edge142.us.i.i.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i262.i ] ; 3 uses
  %20 = mul i64 %.057143.us.i.i.i, %4             ; 3 uses
  %i.vr = getelementptr inbounds nuw [64 x i8], ptr %.pre174.i.i.i, i64 %.057143.us.i.i.i ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !488, !noalias !476
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %invariant.gep202.i.i.i = getelementptr [4 x i8], ptr %6, i64 %20 ; 4 uses
  br label %.preheader.us.i.i264.i

scalar.ph485:                                     ; preds = %scalar.ph485.preheader, %scalar.ph485
  %indvars.iv.i.i270.i = phi i64 [ %indvars.iv.next.i.i271.i, %scalar.ph485 ], [ %indvars.iv.i.i270.i.ph, %scalar.ph485.preheader ]
  %.1132.us.i.i.i = phi i64 [ %i.vu, %scalar.ph485 ], [ %.1132.us.i.i.i.ph, %scalar.ph485.preheader ] ; 2 uses
  %gep203.i.i.i = getelementptr [4 x i8], ptr %invariant.gep202.i.i.i, i64 %.1132.us.i.i.i
  store i32 %i.wu, ptr %gep203.i.i.i, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  %i.vu = add nuw i64 %.1132.us.i.i.i, 1          ; 3 uses
  %indvars.iv.next.i.i271.i = add nuw nsw i64 %indvars.iv.i.i270.i, 1 ; 2 uses
  %i.vv = icmp samesign ult i64 %indvars.iv.next.i.i271.i, %i.wt
  %i.vw = icmp ult i64 %i.vu, %4
  %i.vx = select i1 %i.vv, i1 %i.vw, i1 false
  br i1 %i.vx, label %scalar.ph485, label %._crit_edge135.us.i.i.i, !llvm.loop !491

._crit_edge135.us.i.i.i:                          ; preds = %scalar.ph485, %middle.block494, %.preheader.us.i.i264.i
  %.1.lcssa.us.i.i265.i = phi i64 [ %.056137.us.i.i.i, %.preheader.us.i.i264.i ], [ %i.wx, %middle.block494 ], [ %i.vu, %scalar.ph485 ] ; 7 uses
  %indvars.iv.next168.i.i.i = add nuw nsw i64 %indvars.iv167.i.i.i, 1
  %i.vy = icmp samesign ult i64 %indvars.iv167.i.i.i, %i.vq
  %i.vz = icmp ult i64 %.1.lcssa.us.i.i265.i, %4  ; 2 uses
  %i.wa = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %i.wa, label %.preheader.us.i.i264.i, label %..preheader113_crit_edge.us.i.i.i, !llvm.loop !492

scalar.ph474:                                     ; preds = %scalar.ph474.preheader, %scalar.ph474
  %.2140.us.i.i.i = phi i64 [ %i.wb, %scalar.ph474 ], [ %.2140.us.i.i.i.ph, %scalar.ph474.preheader ] ; 2 uses
  %gep205.i.i.i = getelementptr [4 x i8], ptr %invariant.gep202.i.i.i, i64 %.2140.us.i.i.i
  store i32 2147483647, ptr %gep205.i.i.i, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  %i.wb = add nuw i64 %.2140.us.i.i.i, 1          ; 2 uses
  %exitcond172.not.i.i.i = icmp eq i64 %i.wb, %4
  br i1 %exitcond172.not.i.i.i, label %._crit_edge142.us.i.i.i, label %scalar.ph474, !llvm.loop !493

._crit_edge142.us.i.i.i:                          ; preds = %scalar.ph474, %middle.block481, %..preheader113_crit_edge.us.i.i.i
  %i.wc = add nuw i64 %.057143.us.i.i.i, 1        ; 2 uses
  %exitcond173.not.i.i266.i = icmp eq i64 %i.wc, %i.vm
  br i1 %exitcond173.not.i.i266.i, label %._crit_edge146.i.i.i, label %.preheader.lr.ph.us.i.i263.i, !llvm.loop !494

.preheader.us.i.i264.i:                           ; preds = %._crit_edge135.us.i.i.i, %.preheader.lr.ph.us.i.i263.i
  %indvars.iv167.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i263.i ], [ %indvars.iv.next168.i.i.i, %._crit_edge135.us.i.i.i ] ; 5 uses
  %.056137.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i263.i ], [ %.1.lcssa.us.i.i265.i, %._crit_edge135.us.i.i.i ] ; 7 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv167.i.i.i
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !12, !noalias !476 ; 3 uses
  %i.wf = icmp sgt i32 %i.we, 0
  br i1 %i.wf, label %.lr.ph134.us.i.i.i, label %._crit_edge135.us.i.i.i

.lr.ph134.us.i.i.i:                               ; preds = %.preheader.us.i.i264.i
  %i.wg = load ptr, ptr %i.vt, align 8, !tbaa !495, !noalias !476
  %i.wh = mul i64 %indvars.iv167.i.i.i, %4
  %i.wi = getelementptr [8 x i8], ptr %i.wg, i64 %i.wh
  %i.wj = add i64 %.056137.us.i.i.i, %20
  %i.wk = shl i64 %i.wj, 3
  %scevgep.i.i267.i = getelementptr i8, ptr %7, i64 %i.wk
  %i.wl = add i64 %.056137.us.i.i.i, 1
  %umax.i.i268.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.wl)
  %i.wm = xor i64 %.056137.us.i.i.i, -1
  %i.wn = add i64 %umax.i.i268.i, %i.wm
  %i.wo = freeze i64 %i.wn                        ; 2 uses
  %i.wp = add nsw i32 %i.we, -1
  %i.wq = zext nneg i32 %i.wp to i64
  %umin.i.i269.i = call i64 @llvm.umin.i64(i64 %i.wo, i64 %i.wq)
  %i.wr = shl nuw nsw i64 %umin.i.i269.i, 3
  %i.ws = add nuw nsw i64 %i.wr, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i267.i, ptr noundef nonnull align 8 dereferenceable(1) %i.wi, i64 %i.ws, i1 false), !tbaa !31, !noalias !496
  %i.wt = zext nneg i32 %i.we to i64              ; 2 uses
  %i.wu = trunc nuw nsw i64 %indvars.iv167.i.i.i to i32 ; 2 uses
  %i.wv = add nsw i64 %i.wt, -1
  %umin484 = call i64 @llvm.umin.i64(i64 %i.wo, i64 %i.wv)
  %i.ww = add i64 %umin484, 1                     ; 3 uses
  %min.iters.check486 = icmp ult i64 %i.ww, 8
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph134.us.i.i.i
  %n.vec488 = and i64 %i.ww, -8                   ; 4 uses
  %i.wx = add i64 %.056137.us.i.i.i, %n.vec488    ; 2 uses
  %broadcast.splatinsert489 = insertelement <4 x i32> poison, i32 %i.wu, i64 0
  %broadcast.splat490 = shufflevector <4 x i32> %broadcast.splatinsert489, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wy = getelementptr [4 x i8], ptr %invariant.gep202.i.i.i, i64 %.056137.us.i.i.i
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph487
  %index492 = phi i64 [ 0, %vector.ph487 ], [ %index.next493, %vector.body491 ] ; 2 uses
  %i.wz = getelementptr [4 x i8], ptr %i.wy, i64 %index492 ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wz, i64 16
  store <4 x i32> %broadcast.splat490, ptr %i.wz, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  store <4 x i32> %broadcast.splat490, ptr %i.xa, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  %index.next493 = add nuw i64 %index492, 8       ; 2 uses
  %i.xb = icmp eq i64 %index.next493, %n.vec488
  br i1 %i.xb, label %middle.block494, label %vector.body491, !llvm.loop !497

middle.block494:                                  ; preds = %vector.body491
  %cmp.n495 = icmp eq i64 %i.ww, %n.vec488
  br i1 %cmp.n495, label %._crit_edge135.us.i.i.i, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %.lr.ph134.us.i.i.i, %middle.block494
  %indvars.iv.i.i270.i.ph = phi i64 [ 0, %.lr.ph134.us.i.i.i ], [ %n.vec488, %middle.block494 ]
  %.1132.us.i.i.i.ph = phi i64 [ %.056137.us.i.i.i, %.lr.ph134.us.i.i.i ], [ %i.wx, %middle.block494 ]
  br label %scalar.ph485

..preheader113_crit_edge.us.i.i.i:                ; preds = %._crit_edge135.us.i.i.i
  br i1 %i.vz, label %.lr.ph141.us.i.i.i, label %._crit_edge142.us.i.i.i

.lr.ph141.us.i.i.i:                               ; preds = %..preheader113_crit_edge.us.i.i.i
  %i.xc = add i64 %.1.lcssa.us.i.i265.i, %20
  %i.xd = shl i64 %i.xc, 3
  %scevgep171.i.i.i = getelementptr i8, ptr %7, i64 %i.xd
  %i.xe = sub nuw i64 %4, %.1.lcssa.us.i.i265.i   ; 4 uses
  %i.xf = shl i64 %i.xe, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep171.i.i.i, i8 -1, i64 %i.xf, i1 false), !tbaa !31, !alias.scope !472, !noalias !498
  %min.iters.check475 = icmp ult i64 %i.xe, 8
  br i1 %min.iters.check475, label %scalar.ph474.preheader, label %vector.ph476

vector.ph476:                                     ; preds = %.lr.ph141.us.i.i.i
  %n.vec477 = and i64 %i.xe, -8                   ; 3 uses
  %i.xg = add i64 %.1.lcssa.us.i.i265.i, %n.vec477
  %i.xh = getelementptr [4 x i8], ptr %invariant.gep202.i.i.i, i64 %.1.lcssa.us.i.i265.i
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next480, %vector.body478 ] ; 2 uses
  %i.xi = getelementptr [4 x i8], ptr %i.xh, i64 %index479 ; 2 uses
  %i.xj = getelementptr i8, ptr %i.xi, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.xi, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  store <4 x i32> splat (i32 2147483647), ptr %i.xj, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  %index.next480 = add nuw i64 %index479, 8       ; 2 uses
  %i.xk = icmp eq i64 %index.next480, %n.vec477
  br i1 %i.xk, label %middle.block481, label %vector.body478, !llvm.loop !499

middle.block481:                                  ; preds = %vector.body478
  %cmp.n482 = icmp eq i64 %i.xe, %n.vec477
  br i1 %cmp.n482, label %._crit_edge142.us.i.i.i, label %scalar.ph474.preheader

scalar.ph474.preheader:                           ; preds = %.lr.ph141.us.i.i.i, %middle.block481
  %.2140.us.i.i.i.ph = phi i64 [ %.1.lcssa.us.i.i265.i, %.lr.ph141.us.i.i.i ], [ %i.xg, %middle.block481 ]
  br label %scalar.ph474

.lr.ph145.split.i.i.i:                            ; preds = %.lr.ph145.i.i.i
  %.not149.i.i254.i = icmp eq i64 %4, 0
  br i1 %.not149.i.i254.i, label %._crit_edge146.i.i.i, label %.preheader113.preheader.i.i.i

.preheader113.preheader.i.i.i:                    ; preds = %.lr.ph145.split.i.i.i
  %i.xl = shl i64 %4, 3
  %i.xm = mul i64 %i.xl, %i.vm
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.xm, i1 false), !tbaa !31, !alias.scope !472, !noalias !498
  %min.iters.check465 = icmp ult i64 %4, 8
  %n.vec467 = and i64 %4, -8                      ; 3 uses
  %cmp.n472 = icmp eq i64 %4, %n.vec467
  br label %.preheader113.i.i.i

.lr.ph130.i.i.i:                                  ; preds = %bb.bh, %.lr.ph130.i.i.i
  %storemerge128.i.i.i = phi i64 [ %i.xp, %.lr.ph130.i.i.i ], [ 0, %bb.bh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #4, !noalias !474
  %i.xn = add i64 %storemerge128.i.i.i, %i.ub
  %.sroa.speculated.i.i251.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.xn)
  store i64 %.sroa.speculated.i.i251.i, ptr %i.r, align 8, !tbaa !31, !noalias !474
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_21HammingComputer32_tplILNS_9SIMDLevelE0EEEEEviPKhS6_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.o, ptr nonnull %i.q, ptr nonnull %i.r, ptr nonnull %i.p, ptr nonnull %11, ptr nonnull %i.n, ptr nonnull %i.m), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #4, !noalias !474
  %i.xo = load i64, ptr %i.q, align 8, !tbaa !31, !noalias !474
  %i.xp = add i64 %i.xo, %i.ub                    ; 3 uses
  store i64 %i.xp, ptr %i.q, align 8, !tbaa !31, !noalias !474
  %i.xq = icmp ult i64 %i.xp, %3
  br i1 %i.xq, label %.lr.ph130.i.i.i, label %._crit_edge131.loopexit.i.i.i, !llvm.loop !500

._crit_edge146.i.i.i:                             ; preds = %._crit_edge142.i.i257.i, %._crit_edge142.us.i.i.i, %.lr.ph145.split.i.i.i, %._crit_edge131.i.i.i
  %.not.i.i.i71.i.i259.i = icmp eq ptr %.pre174.i.i.i, null
  br i1 %.not.i.i.i71.i.i259.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i260.i, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge146.i.i.i
  %i.xr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !501, !noalias !474
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %.pre174.i.i.i to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %.pre174.i.i.i, i64 noundef %i.xv) #27, !noalias !476
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i260.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i260.i: ; preds = %bb.bq, %._crit_edge146.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4, !noalias !474
  call void @_ZdaPv(ptr noundef nonnull %i.tw) #27, !noalias !476
  %.not.i.i.i76.i.i261.i = icmp eq ptr %.sroa.0104.0.i.i.i, null
  br i1 %.not.i.i.i76.i.i261.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer32_tplILS1_0EEEEEDav.exit.i", label %bb.br

bb.br:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i260.i
  %i.xw = ptrtoint ptr %.sroa.0104.0.i.i.i to i64
  %i.xx = sub i64 %.sroa.10108.0.i.i.i, %i.xw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0.i.i.i, i64 noundef %i.xx) #27, !noalias !476
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer32_tplILS1_0EEEEEDav.exit.i"

.preheader113.i.i.i:                              ; preds = %._crit_edge142.i.i257.i, %.preheader113.preheader.i.i.i
  %.057143.i.i.i = phi i64 [ %i.yd, %._crit_edge142.i.i257.i ], [ 0, %.preheader113.preheader.i.i.i ] ; 2 uses
  %i.xy = mul i64 %.057143.i.i.i, %4
  %invariant.gep.i.i255.i = getelementptr [4 x i8], ptr %6, i64 %i.xy ; 2 uses
  br i1 %min.iters.check465, label %scalar.ph464.preheader, label %vector.body468

vector.body468:                                   ; preds = %.preheader113.i.i.i, %vector.body468
  %index469 = phi i64 [ %index.next470, %vector.body468 ], [ 0, %.preheader113.i.i.i ] ; 2 uses
  %i.xz = getelementptr [4 x i8], ptr %invariant.gep.i.i255.i, i64 %index469 ; 2 uses
  %i.ya = getelementptr i8, ptr %i.xz, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.xz, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  store <4 x i32> splat (i32 2147483647), ptr %i.ya, align 4, !tbaa !12, !alias.scope !470, !noalias !490
  %index.next470 = add nuw i64 %index469, 8       ; 2 uses
  %i.yb = icmp eq i64 %index.next470, %n.vec467
end_hunk_4
begin_hunk_5_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a
          cleanup
  br label %bb.cg

bb.bx:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i, %.lr.ph.i.i305.i
  %i.yy = phi ptr [ null, %.lr.ph.i.i305.i ], [ %i.aal, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 5 uses
  %i.yz = phi ptr [ null, %.lr.ph.i.i305.i ], [ %i.aan, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 16 uses
  %.058127.i.i.i = phi i64 [ 0, %.lr.ph.i.i305.i ], [ %i.aao, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 3 uses
  %i.za = phi ptr [ null, %.lr.ph.i.i305.i ], [ %i.aam, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 8 uses
  %i.zb = mul i64 %.058127.i.i.i, %i.yg           ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0112.0.i.i.i, i64 %i.zb ; 2 uses
  %i.zd = mul i64 %i.zb, %4
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.zd ; 2 uses
  %i.zf = mul i64 %.058127.i.i.i, %i.yt
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 %i.zf ; 8 uses
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 40
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zg, i64 56
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !31, !alias.scope !504, !noalias !514 ; 2 uses
  %.not.i.i.i.i307.i = icmp eq ptr %i.yz, %i.yy
  br i1 %.not.i.i.i.i307.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.zc, ptr %i.yz, align 8, !tbaa !325, !noalias !513
  %.sroa.6.0..sroa_idx.i.i308.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  store ptr %i.ze, ptr %.sroa.6.0..sroa_idx.i.i308.i, align 8, !tbaa !326, !noalias !513
  %.sroa.7.0..sroa_idx.i.i309.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  store i64 %i.zh, ptr %.sroa.7.0..sroa_idx.i.i309.i, align 8, !tbaa !31, !noalias !513
  %.sroa.8.0..sroa_idx.i.i310.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  store i64 %i.zj, ptr %.sroa.8.0..sroa_idx.i.i310.i, align 8, !tbaa !31, !noalias !513
  %.sroa.9.0..sroa_idx.i.i311.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  store i64 %i.zl, ptr %.sroa.9.0..sroa_idx.i.i311.i, align 8, !tbaa !31, !noalias !513
  %.sroa.10.0..sroa_idx.i.i312.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 40
  store i64 %i.zn, ptr %.sroa.10.0..sroa_idx.i.i312.i, align 8, !tbaa !31, !noalias !513
  %.sroa.11.0..sroa_idx.i.i313.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 48
  store i64 %i.zp, ptr %.sroa.11.0..sroa_idx.i.i313.i, align 8, !tbaa !31, !noalias !513
  %.sroa.12.0..sroa_idx.i.i314.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 56
  store i64 %i.zr, ptr %.sroa.12.0..sroa_idx.i.i314.i, align 8, !tbaa !31, !noalias !513
  %.sroa.13.0..sroa_idx.i.i315.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 64
  store i64 %i.zt, ptr %.sroa.13.0..sroa_idx.i.i315.i, align 8, !tbaa !31, !noalias !513
  %.sroa.14.0..sroa_idx.i.i316.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 72
  store i64 %i.zv, ptr %.sroa.14.0..sroa_idx.i.i316.i, align 8, !tbaa !31, !noalias !513
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 80
  store i32 %i.yf, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !tbaa !12, !noalias !513
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 84
  store i32 0, ptr %.sroa.16.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !513
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 88
  store i32 0, ptr %.sroa.17.0..sroa_idx.i.i.i, align 8, !tbaa !12, !noalias !513
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 92
  store i32 %i.yu, ptr %.sroa.18.0..sroa_idx.i.i.i, align 4, !tbaa !12, !noalias !513
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.zw = ptrtoint ptr %i.yy to i64
  %i.zx = ptrtoint ptr %i.za to i64
  %i.zy = sub i64 %i.zw, %i.zx                    ; 5 uses
  %i.zz = icmp eq i64 %i.zy, 9223372036854775776
  br i1 %i.zz, label %bb.ca, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i366.i unwind label %.loopexit.split-lp.i.i364.i, !noalias !513

.noexc69.i.i366.i:                                ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bz
  %i.aaa = sdiv exact i64 %i.zy, 96               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i340.i = tail call i64 @llvm.umax.i64(i64 %i.aaa, i64 1)
  %i.aab = add nsw i64 %.sroa.speculated.i.i.i.i.i.i340.i, %i.aaa ; 2 uses
  %i.aac = icmp ult i64 %i.aab, %i.aaa
  %i.aad = tail call i64 @llvm.umin.i64(i64 %i.aab, i64 96076792050570581)
  %i.aae = select i1 %i.aac, i64 96076792050570581, i64 %i.aad ; 3 uses
  %.not.i.i.i.i68.i.i341.i = icmp ne i64 %i.aae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i341.i)
  %i.aaf = mul nuw nsw i64 %i.aae, 96
  %i.aag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaf) #28
          to label %.noexc70.i.i347.i unwind label %.loopexit.i.i342.i, !noalias !513 ; 5 uses

.noexc70.i.i347.i:                                ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.zy ; 14 uses
  store ptr %i.zc, ptr %i.aah, align 8, !tbaa !325, !noalias !513
  %.sroa.6.0..sroa_idx81.i.i348.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  store ptr %i.ze, ptr %.sroa.6.0..sroa_idx81.i.i348.i, align 8, !tbaa !326, !noalias !513
  %.sroa.7.0..sroa_idx83.i.i349.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  store i64 %i.zh, ptr %.sroa.7.0..sroa_idx83.i.i349.i, align 8, !tbaa !31, !noalias !513
  %.sroa.8.0..sroa_idx85.i.i350.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  store i64 %i.zj, ptr %.sroa.8.0..sroa_idx85.i.i350.i, align 8, !tbaa !31, !noalias !513
  %.sroa.9.0..sroa_idx87.i.i351.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  store i64 %i.zl, ptr %.sroa.9.0..sroa_idx87.i.i351.i, align 8, !tbaa !31, !noalias !513
  %.sroa.10.0..sroa_idx89.i.i352.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  store i64 %i.zn, ptr %.sroa.10.0..sroa_idx89.i.i352.i, align 8, !tbaa !31, !noalias !513
  %.sroa.11.0..sroa_idx91.i.i353.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  store i64 %i.zp, ptr %.sroa.11.0..sroa_idx91.i.i353.i, align 8, !tbaa !31, !noalias !513
  %.sroa.12.0..sroa_idx93.i.i354.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  store i64 %i.zr, ptr %.sroa.12.0..sroa_idx93.i.i354.i, align 8, !tbaa !31, !noalias !513
  %.sroa.13.0..sroa_idx95.i.i355.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 64
  store i64 %i.zt, ptr %.sroa.13.0..sroa_idx95.i.i355.i, align 8, !tbaa !31, !noalias !513
  %.sroa.14.0..sroa_idx97.i.i356.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 72
  store i64 %i.zv, ptr %.sroa.14.0..sroa_idx97.i.i356.i, align 8, !tbaa !31, !noalias !513
  %.sroa.15.0..sroa_idx99.i.i.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 80
  store i32 %i.yf, ptr %.sroa.15.0..sroa_idx99.i.i.i, align 8, !tbaa !12, !noalias !513
  %.sroa.16.0..sroa_idx101.i.i.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 84
  store i32 0, ptr %.sroa.16.0..sroa_idx101.i.i.i, align 4, !tbaa !12, !noalias !513
  %.sroa.17.0..sroa_idx103.i.i.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 88
  store i32 0, ptr %.sroa.17.0..sroa_idx103.i.i.i, align 8, !tbaa !12, !noalias !513
  %.sroa.18.0..sroa_idx105.i.i.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 92
  store i32 %i.yu, ptr %.sroa.18.0..sroa_idx105.i.i.i, align 4, !tbaa !12, !noalias !513
  %.not10.i.i.i.i.i.i.i.i357.i = icmp eq ptr %i.za, %i.yy
  br i1 %.not10.i.i.i.i.i.i.i.i357.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i358.i

.lr.ph.i.i.i.i.i.i.i.i358.i:                      ; preds = %.noexc70.i.i347.i, %.lr.ph.i.i.i.i.i.i.i.i358.i
  %.012.i.i.i.i.i.i.i.i359.i = phi ptr [ %i.aaj, %.lr.ph.i.i.i.i.i.i.i.i358.i ], [ %i.aag, %.noexc70.i.i347.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i360.i = phi ptr [ %i.aai, %.lr.ph.i.i.i.i.i.i.i.i358.i ], [ %i.za, %.noexc70.i.i347.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i.i.i359.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i.i.i360.i, i64 96, i1 false), !tbaa.struct !515, !alias.scope !516, !noalias !513
  %i.aai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i360.i, i64 96 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i359.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.i.i361.i = icmp eq ptr %i.aai, %i.yy
  br i1 %.not.i.i.i.i.i.i.i.i361.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i358.i, !llvm.loop !520

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i358.i, %.noexc70.i.i347.i
  %.0.lcssa.i.i.i.i.i.i.i.i362.i = phi ptr [ %i.aag, %.noexc70.i.i347.i ], [ %i.aaj, %.lr.ph.i.i.i.i.i.i.i.i358.i ]
  %.not.i23.i.i.i.i.i363.i = icmp eq ptr %i.za, null
  br i1 %.not.i23.i.i.i.i.i363.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.za, i64 noundef %i.zy) #27, !noalias !513
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cb, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  %i.aak = getelementptr inbounds nuw [96 x i8], ptr %i.aag, i64 %i.aae
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.by
  %i.aal = phi ptr [ %i.aak, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.yy, %bb.by ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i317.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i362.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.yz, %bb.by ]
  %i.aam = phi ptr [ %i.aag, %_ZNSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.za, %bb.by ] ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i317.i, i64 96 ; 2 uses
  %i.aao = add nuw i64 %.058127.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i318.i = icmp eq i64 %i.aao, %2
  br i1 %exitcond.not.i.i318.i, label %._crit_edge.i.i319.i, label %bb.bx, !llvm.loop !521

.loopexit.i.i342.i:                               ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_21HammingComputer64_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i343.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp.i.i364.i:                      ; preds = %bb.ca
  %lpad.loopexit.split-lp.i.i365.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.split-lp.i.i364.i, %.loopexit.i.i342.i
  %lpad.phi.i.i344.i = phi { ptr, i32 } [ %lpad.loopexit.i.i343.i, %.loopexit.i.i342.i ], [ %lpad.loopexit.split-lp.i.i365.i, %.loopexit.split-lp.i.i364.i ]
  %.not.i.i.i.i.i345.i = icmp eq ptr %i.za, null
  br i1 %.not.i.i.i.i.i345.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i346.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.za, i64 noundef %i.zy) #27, !noalias !513
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i346.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i346.i: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4, !noalias !511
  tail call void @_ZdaPv(ptr noundef nonnull %i.yr) #27, !noalias !513
  br label %bb.cg

._crit_edge139.loopexit.i.i.i:                    ; preds = %.lr.ph138.i.i.i
  %.pre.i.i321.i = load i64, ptr %i.i, align 8, !tbaa !31, !noalias !511
  %.pre182.pre.i.i.i = load ptr, ptr %10, align 8, !tbaa !522, !noalias !511
  br label %._crit_edge139.i.i.i

._crit_edge139.i.i.i:                             ; preds = %._crit_edge139.loopexit.i.i.i, %bb.bv
  %.pre182.i.i.i = phi ptr [ %.pre182.pre.i.i.i, %._crit_edge139.loopexit.i.i.i ], [ %.lcssa124.i.i.i, %bb.bv ] ; 4 uses
  %i.aap = phi i64 [ %.pre.i.i321.i, %._crit_edge139.loopexit.i.i.i ], [ %2, %bb.bv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4, !noalias !511
  %.not156.i.i.i = icmp eq i64 %i.aap, 0
  br i1 %.not156.i.i.i, label %._crit_edge154.i.i.i, label %.lr.ph153.i.i.i

.lr.ph153.i.i.i:                                  ; preds = %._crit_edge139.i.i.i
  %i.aaq = icmp sgt i32 %i.aq, -1
  %i.aar = icmp ne i64 %4, 0
  %i.aas = and i1 %i.aar, %i.aaq
  br i1 %i.aas, label %.preheader.lr.ph.us.preheader.i.i329.i, label %.lr.ph153.split.i.i.i

.preheader.lr.ph.us.preheader.i.i329.i:           ; preds = %.lr.ph153.i.i.i
  %i.aat = zext nneg i32 %i.ye to i64
  br label %.preheader.lr.ph.us.i.i330.i

.preheader.lr.ph.us.i.i330.i:                     ; preds = %._crit_edge150.us.i.i.i, %.preheader.lr.ph.us.preheader.i.i329.i
  %.057151.us.i.i.i = phi i64 [ %i.abf, %._crit_edge150.us.i.i.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i329.i ] ; 3 uses
  %21 = mul i64 %.057151.us.i.i.i, %4             ; 3 uses
  %i.aau = getelementptr inbounds nuw [96 x i8], ptr %.pre182.i.i.i, i64 %.057151.us.i.i.i ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !525, !noalias !513
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %invariant.gep210.i.i.i = getelementptr [4 x i8], ptr %6, i64 %21 ; 4 uses
  br label %.preheader.us.i.i331.i

scalar.ph453:                                     ; preds = %scalar.ph453.preheader, %scalar.ph453
  %indvars.iv.i.i338.i = phi i64 [ %indvars.iv.next.i.i339.i, %scalar.ph453 ], [ %indvars.iv.i.i338.i.ph, %scalar.ph453.preheader ]
  %.1140.us.i.i.i = phi i64 [ %i.aax, %scalar.ph453 ], [ %.1140.us.i.i.i.ph, %scalar.ph453.preheader ] ; 2 uses
  %gep211.i.i.i = getelementptr [4 x i8], ptr %invariant.gep210.i.i.i, i64 %.1140.us.i.i.i
  store i32 %i.abx, ptr %gep211.i.i.i, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  %i.aax = add nuw i64 %.1140.us.i.i.i, 1         ; 3 uses
  %indvars.iv.next.i.i339.i = add nuw nsw i64 %indvars.iv.i.i338.i, 1 ; 2 uses
  %i.aay = icmp samesign ult i64 %indvars.iv.next.i.i339.i, %i.abw
  %i.aaz = icmp ult i64 %i.aax, %4
  %i.aba = select i1 %i.aay, i1 %i.aaz, i1 false
  br i1 %i.aba, label %scalar.ph453, label %._crit_edge143.us.i.i332.i, !llvm.loop !528

._crit_edge143.us.i.i332.i:                       ; preds = %scalar.ph453, %middle.block460, %.preheader.us.i.i331.i
  %.1.lcssa.us.i.i333.i = phi i64 [ %.056145.us.i.i.i, %.preheader.us.i.i331.i ], [ %i.aca, %middle.block460 ], [ %i.aax, %scalar.ph453 ] ; 7 uses
  %indvars.iv.next176.i.i.i = add nuw nsw i64 %indvars.iv175.i.i.i, 1
  %i.abb = icmp samesign ult i64 %indvars.iv175.i.i.i, %i.aat
  %i.abc = icmp ult i64 %.1.lcssa.us.i.i333.i, %4 ; 2 uses
  %i.abd = select i1 %i.abb, i1 %i.abc, i1 false
  br i1 %i.abd, label %.preheader.us.i.i331.i, label %..preheader121_crit_edge.us.i.i.i, !llvm.loop !529

scalar.ph443:                                     ; preds = %scalar.ph443.preheader, %scalar.ph443
  %.2148.us.i.i.i = phi i64 [ %i.abe, %scalar.ph443 ], [ %.2148.us.i.i.i.ph, %scalar.ph443.preheader ] ; 2 uses
  %gep213.i.i.i = getelementptr [4 x i8], ptr %invariant.gep210.i.i.i, i64 %.2148.us.i.i.i
  store i32 2147483647, ptr %gep213.i.i.i, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  %i.abe = add nuw i64 %.2148.us.i.i.i, 1         ; 2 uses
  %exitcond180.not.i.i.i = icmp eq i64 %i.abe, %4
  br i1 %exitcond180.not.i.i.i, label %._crit_edge150.us.i.i.i, label %scalar.ph443, !llvm.loop !530

._crit_edge150.us.i.i.i:                          ; preds = %scalar.ph443, %middle.block450, %..preheader121_crit_edge.us.i.i.i
  %i.abf = add nuw i64 %.057151.us.i.i.i, 1       ; 2 uses
  %exitcond181.not.i.i.i = icmp eq i64 %i.abf, %i.aap
  br i1 %exitcond181.not.i.i.i, label %._crit_edge154.i.i.i, label %.preheader.lr.ph.us.i.i330.i, !llvm.loop !531

.preheader.us.i.i331.i:                           ; preds = %._crit_edge143.us.i.i332.i, %.preheader.lr.ph.us.i.i330.i
  %indvars.iv175.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i330.i ], [ %indvars.iv.next176.i.i.i, %._crit_edge143.us.i.i332.i ] ; 5 uses
  %.056145.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i330.i ], [ %.1.lcssa.us.i.i333.i, %._crit_edge143.us.i.i332.i ] ; 7 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv175.i.i.i
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !12, !noalias !513 ; 3 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %.lr.ph142.us.i.i334.i, label %._crit_edge143.us.i.i332.i

.lr.ph142.us.i.i334.i:                            ; preds = %.preheader.us.i.i331.i
  %i.abj = load ptr, ptr %i.aaw, align 8, !tbaa !532, !noalias !513
  %i.abk = mul i64 %indvars.iv175.i.i.i, %4
  %i.abl = getelementptr [8 x i8], ptr %i.abj, i64 %i.abk
  %i.abm = add i64 %.056145.us.i.i.i, %21
  %i.abn = shl i64 %i.abm, 3
  %scevgep.i.i335.i = getelementptr i8, ptr %7, i64 %i.abn
  %i.abo = add i64 %.056145.us.i.i.i, 1
  %umax.i.i336.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.abo)
  %i.abp = xor i64 %.056145.us.i.i.i, -1
  %i.abq = add i64 %umax.i.i336.i, %i.abp
  %i.abr = freeze i64 %i.abq                      ; 2 uses
  %i.abs = add nsw i32 %i.abh, -1
  %i.abt = zext nneg i32 %i.abs to i64
  %umin.i.i337.i = call i64 @llvm.umin.i64(i64 %i.abr, i64 %i.abt)
  %i.abu = shl nuw nsw i64 %umin.i.i337.i, 3
  %i.abv = add nuw nsw i64 %i.abu, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i335.i, ptr noundef nonnull align 8 dereferenceable(1) %i.abl, i64 %i.abv, i1 false), !tbaa !31, !noalias !533
  %i.abw = zext nneg i32 %i.abh to i64            ; 2 uses
  %i.abx = trunc nuw nsw i64 %indvars.iv175.i.i.i to i32 ; 2 uses
  %i.aby = add nsw i64 %i.abw, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.abr, i64 %i.aby)
  %i.abz = add i64 %umin, 1                       ; 3 uses
  %min.iters.check454 = icmp ult i64 %i.abz, 8
  br i1 %min.iters.check454, label %scalar.ph453.preheader, label %vector.ph455

vector.ph455:                                     ; preds = %.lr.ph142.us.i.i334.i
  %n.vec456 = and i64 %i.abz, -8                  ; 4 uses
  %i.aca = add i64 %.056145.us.i.i.i, %n.vec456   ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.abx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acb = getelementptr [4 x i8], ptr %invariant.gep210.i.i.i, i64 %.056145.us.i.i.i
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next459, %vector.body457 ] ; 2 uses
  %i.acc = getelementptr [4 x i8], ptr %i.acb, i64 %index458 ; 2 uses
  %i.acd = getelementptr i8, ptr %i.acc, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.acc, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  store <4 x i32> %broadcast.splat, ptr %i.acd, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  %index.next459 = add nuw i64 %index458, 8       ; 2 uses
  %i.ace = icmp eq i64 %index.next459, %n.vec456
  br i1 %i.ace, label %middle.block460, label %vector.body457, !llvm.loop !534

middle.block460:                                  ; preds = %vector.body457
  %cmp.n461 = icmp eq i64 %i.abz, %n.vec456
  br i1 %cmp.n461, label %._crit_edge143.us.i.i332.i, label %scalar.ph453.preheader

scalar.ph453.preheader:                           ; preds = %.lr.ph142.us.i.i334.i, %middle.block460
  %indvars.iv.i.i338.i.ph = phi i64 [ 0, %.lr.ph142.us.i.i334.i ], [ %n.vec456, %middle.block460 ]
  %.1140.us.i.i.i.ph = phi i64 [ %.056145.us.i.i.i, %.lr.ph142.us.i.i334.i ], [ %i.aca, %middle.block460 ]
  br label %scalar.ph453

..preheader121_crit_edge.us.i.i.i:                ; preds = %._crit_edge143.us.i.i332.i
  br i1 %i.abc, label %.lr.ph149.us.i.i.i, label %._crit_edge150.us.i.i.i

.lr.ph149.us.i.i.i:                               ; preds = %..preheader121_crit_edge.us.i.i.i
  %i.acf = add i64 %.1.lcssa.us.i.i333.i, %21
  %i.acg = shl i64 %i.acf, 3
  %scevgep179.i.i.i = getelementptr i8, ptr %7, i64 %i.acg
  %i.ach = sub nuw i64 %4, %.1.lcssa.us.i.i333.i  ; 4 uses
  %i.aci = shl i64 %i.ach, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep179.i.i.i, i8 -1, i64 %i.aci, i1 false), !tbaa !31, !alias.scope !509, !noalias !535
  %min.iters.check444 = icmp ult i64 %i.ach, 8
  br i1 %min.iters.check444, label %scalar.ph443.preheader, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph149.us.i.i.i
  %n.vec446 = and i64 %i.ach, -8                  ; 3 uses
  %i.acj = add i64 %.1.lcssa.us.i.i333.i, %n.vec446
  %i.ack = getelementptr [4 x i8], ptr %invariant.gep210.i.i.i, i64 %.1.lcssa.us.i.i333.i
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next449, %vector.body447 ] ; 2 uses
  %i.acl = getelementptr [4 x i8], ptr %i.ack, i64 %index448 ; 2 uses
  %i.acm = getelementptr i8, ptr %i.acl, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.acl, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  store <4 x i32> splat (i32 2147483647), ptr %i.acm, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  %index.next449 = add nuw i64 %index448, 8       ; 2 uses
  %i.acn = icmp eq i64 %index.next449, %n.vec446
  br i1 %i.acn, label %middle.block450, label %vector.body447, !llvm.loop !536

middle.block450:                                  ; preds = %vector.body447
  %cmp.n451 = icmp eq i64 %i.ach, %n.vec446
  br i1 %cmp.n451, label %._crit_edge150.us.i.i.i, label %scalar.ph443.preheader

scalar.ph443.preheader:                           ; preds = %.lr.ph149.us.i.i.i, %middle.block450
  %.2148.us.i.i.i.ph = phi i64 [ %.1.lcssa.us.i.i333.i, %.lr.ph149.us.i.i.i ], [ %i.acj, %middle.block450 ]
  br label %scalar.ph443

.lr.ph153.split.i.i.i:                            ; preds = %.lr.ph153.i.i.i
  %.not157.i.i.i = icmp eq i64 %4, 0
  br i1 %.not157.i.i.i, label %._crit_edge154.i.i.i, label %.preheader121.preheader.i.i.i

.preheader121.preheader.i.i.i:                    ; preds = %.lr.ph153.split.i.i.i
  %i.aco = shl i64 %4, 3
  %i.acp = mul i64 %i.aco, %i.aap
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.acp, i1 false), !tbaa !31, !alias.scope !509, !noalias !535
  %min.iters.check = icmp ult i64 %4, 8
  %n.vec = and i64 %4, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader121.i.i.i

.lr.ph138.i.i.i:                                  ; preds = %bb.bv, %.lr.ph138.i.i.i
  %storemerge136.i.i.i = phi i64 [ %i.acs, %.lr.ph138.i.i.i ], [ 0, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4, !noalias !511
  %i.acq = add i64 %storemerge136.i.i.i, %i.yw
  %.sroa.speculated.i.i320.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.acq)
  store i64 %.sroa.speculated.i.i320.i, ptr %i.l, align 8, !tbaa !31, !noalias !511
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_21HammingComputer64_tplILNS_9SIMDLevelE0EEEEEviPKhS6_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.k, ptr nonnull %i.l, ptr nonnull %i.j, ptr nonnull %10, ptr nonnull %i.h, ptr nonnull %i.g), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4, !noalias !511
  %i.acr = load i64, ptr %i.k, align 8, !tbaa !31, !noalias !511
  %i.acs = add i64 %i.acr, %i.yw                  ; 3 uses
  store i64 %i.acs, ptr %i.k, align 8, !tbaa !31, !noalias !511
  %i.act = icmp ult i64 %i.acs, %3
  br i1 %i.act, label %.lr.ph138.i.i.i, label %._crit_edge139.loopexit.i.i.i, !llvm.loop !537

._crit_edge154.i.i.i:                             ; preds = %._crit_edge150.i.i.i, %._crit_edge150.us.i.i.i, %.lr.ph153.split.i.i.i, %._crit_edge139.i.i.i
  %.not.i.i.i71.i.i326.i = icmp eq ptr %.pre182.i.i.i, null
  br i1 %.not.i.i.i71.i.i326.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i327.i, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge154.i.i.i
  %i.acu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !538, !noalias !511
  %i.acw = ptrtoint ptr %i.acv to i64
  %i.acx = ptrtoint ptr %.pre182.i.i.i to i64
  %i.acy = sub i64 %i.acw, %i.acx
  call void @_ZdlPvm(ptr noundef nonnull %.pre182.i.i.i, i64 noundef %i.acy) #27, !noalias !513
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i327.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i327.i: ; preds = %bb.ce, %._crit_edge154.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4, !noalias !511
  call void @_ZdaPv(ptr noundef nonnull %i.yr) #27, !noalias !513
  %.not.i.i.i76.i.i328.i = icmp eq ptr %.sroa.0112.0.i.i.i, null
  br i1 %.not.i.i.i76.i.i328.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer64_tplILS1_0EEEEEDav.exit.i", label %bb.cf

bb.cf:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i327.i
  %i.acz = ptrtoint ptr %.sroa.0112.0.i.i.i to i64
  %i.ada = sub i64 %.sroa.10116.0.i.i.i, %i.acz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.0.i.i.i, i64 noundef %i.ada) #27, !noalias !513
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_21HammingComputer64_tplILS1_0EEEEEDav.exit.i"

.preheader121.i.i.i:                              ; preds = %._crit_edge150.i.i.i, %.preheader121.preheader.i.i.i
  %.057151.i.i.i = phi i64 [ %i.adg, %._crit_edge150.i.i.i ], [ 0, %.preheader121.preheader.i.i.i ] ; 2 uses
  %i.adb = mul i64 %.057151.i.i.i, %4
  %invariant.gep.i.i322.i = getelementptr [4 x i8], ptr %6, i64 %i.adb ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader121.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader121.i.i.i ] ; 2 uses
  %i.adc = getelementptr [4 x i8], ptr %invariant.gep.i.i322.i, i64 %index ; 2 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.adc, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  store <4 x i32> splat (i32 2147483647), ptr %i.add, align 4, !tbaa !12, !alias.scope !507, !noalias !527
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ade = icmp eq i64 %index.next, %n.vec
end_hunk_5
begin_hunk_6_@_ZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorE:bb.a
  %i.adt = select i1 %i.adr, i64 -1, i64 %i.ads
  %i.adu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adt) #28
          to label %bb.ci unwind label %bb.ck, !noalias !549 ; 3 uses

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i371.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4, !noalias !546
  %i.adv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adv, i8 0, i64 16, i1 false), !noalias !546
  br i1 %.not.i.i.i.i.i.i369.i, label %bb.cj, label %.lr.ph.i.i375.i

.lr.ph.i.i375.i:                                  ; preds = %bb.ci
  %sext.i376.i = shl i64 %5, 32
  %i.adw = ashr exact i64 %sext.i376.i, 32
  %i.adx = trunc i64 %4 to i32                    ; 2 uses
  %i.ady = sdiv i32 %i.aq, 8                      ; 2 uses
  %i.adz = srem i32 %i.aq, 8                      ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.cl

._crit_edge.i.i388.i:                             ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i
  store ptr %i.afd, ptr %i.adv, align 8, !noalias !546
  store ptr %i.afb, ptr %i.aea, align 8, !noalias !546
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.i.i388.i, %bb.ci
  %.lcssa114.i.i.i = phi ptr [ %i.afc, %._crit_edge.i.i388.i ], [ null, %bb.ci ] ; 2 uses
  store ptr %.lcssa114.i.i.i, ptr %9, align 8, !noalias !546
  %i.aeb = load i64, ptr @_ZN5faiss18hamming_batch_sizeE, align 8, !tbaa !31, !noalias !546 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4, !noalias !546
  store i64 0, ptr %i.e, align 8, !tbaa !31, !noalias !546
  %.not145.i.i389.i = icmp eq i64 %3, 0
  br i1 %.not145.i.i389.i, label %._crit_edge129.i.i.i, label %.lr.ph128.i.i.i

bb.ck:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i371.i
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cl:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i, %.lr.ph.i.i375.i
  %i.aed = phi ptr [ null, %.lr.ph.i.i375.i ], [ %i.afb, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 5 uses
  %i.aee = phi ptr [ null, %.lr.ph.i.i375.i ], [ %i.afd, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 11 uses
  %.058117.i.i.i = phi i64 [ 0, %.lr.ph.i.i375.i ], [ %i.afe, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 3 uses
  %i.aef = phi ptr [ null, %.lr.ph.i.i375.i ], [ %i.afc, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i ] ; 8 uses
  %i.aeg = mul i64 %.058117.i.i.i, %i.adj         ; 2 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0.i.i.i, i64 %i.aeg ; 2 uses
  %i.aei = mul i64 %i.aeg, %4
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.aei ; 2 uses
  %i.aek = mul i64 %.058117.i.i.i, %i.adw
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 %i.aek ; 2 uses
  %.not.i.i.i.i377.i = icmp eq ptr %i.aee, %i.aed
  br i1 %.not.i.i.i.i377.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.aeh, ptr %i.aee, align 8, !tbaa !325, !noalias !549
  %.sroa.6.0..sroa_idx.i.i378.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  store ptr %i.aej, ptr %.sroa.6.0..sroa_idx.i.i378.i, align 8, !tbaa !326, !noalias !549
  %.sroa.7.0..sroa_idx.i.i379.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  store ptr %i.ael, ptr %.sroa.7.0..sroa_idx.i.i379.i, align 8, !tbaa !19, !noalias !549
  %.sroa.8.0..sroa_idx.i.i380.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 24
  store i32 %i.ady, ptr %.sroa.8.0..sroa_idx.i.i380.i, align 8, !tbaa !12, !noalias !549
  %.sroa.9.0..sroa_idx.i.i381.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 28
  store i32 %i.adz, ptr %.sroa.9.0..sroa_idx.i.i381.i, align 4, !tbaa !12, !noalias !549
  %.sroa.10.0..sroa_idx.i.i382.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 32
  store i32 %i.adi, ptr %.sroa.10.0..sroa_idx.i.i382.i, align 8, !tbaa !12, !noalias !549
  %.sroa.11.0..sroa_idx.i.i383.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 36
  store i32 0, ptr %.sroa.11.0..sroa_idx.i.i383.i, align 4, !tbaa !12, !noalias !549
  %.sroa.12.0..sroa_idx.i.i384.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 40
  store i32 0, ptr %.sroa.12.0..sroa_idx.i.i384.i, align 8, !tbaa !12, !noalias !549
  %.sroa.13.0..sroa_idx.i.i385.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 44
  store i32 %i.adx, ptr %.sroa.13.0..sroa_idx.i.i385.i, align 4, !tbaa !12, !noalias !549
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.aem = ptrtoint ptr %i.aed to i64
  %i.aen = ptrtoint ptr %i.aef to i64
  %i.aeo = sub i64 %i.aem, %i.aen                 ; 5 uses
  %i.aep = icmp eq i64 %i.aeo, 9223372036854775776
  br i1 %i.aep, label %bb.co, label %_ZNKSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc69.i.i435.i unwind label %.loopexit.split-lp.i.i433.i, !noalias !549

.noexc69.i.i435.i:                                ; preds = %bb.co
  unreachable

_ZNKSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.cn
  %i.aeq = sdiv exact i64 %i.aeo, 48              ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i410.i = tail call i64 @llvm.umax.i64(i64 %i.aeq, i64 1)
  %i.aer = add nsw i64 %.sroa.speculated.i.i.i.i.i.i410.i, %i.aeq ; 2 uses
  %i.aes = icmp ult i64 %i.aer, %i.aeq
  %i.aet = tail call i64 @llvm.umin.i64(i64 %i.aer, i64 192153584101141162)
  %i.aeu = select i1 %i.aes, i64 192153584101141162, i64 %i.aet ; 3 uses
  %.not.i.i.i.i68.i.i411.i = icmp ne i64 %i.aeu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i.i411.i)
  %i.aev = mul nuw nsw i64 %i.aeu, 48
  %i.aew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aev) #28
          to label %.noexc70.i.i417.i unwind label %.loopexit.i.i412.i, !noalias !549 ; 5 uses

.noexc70.i.i417.i:                                ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aeo ; 9 uses
  store ptr %i.aeh, ptr %i.aex, align 8, !tbaa !325, !noalias !549
  %.sroa.6.0..sroa_idx81.i.i418.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store ptr %i.aej, ptr %.sroa.6.0..sroa_idx81.i.i418.i, align 8, !tbaa !326, !noalias !549
  %.sroa.7.0..sroa_idx83.i.i419.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  store ptr %i.ael, ptr %.sroa.7.0..sroa_idx83.i.i419.i, align 8, !tbaa !19, !noalias !549
  %.sroa.8.0..sroa_idx85.i.i420.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 24
  store i32 %i.ady, ptr %.sroa.8.0..sroa_idx85.i.i420.i, align 8, !tbaa !12, !noalias !549
  %.sroa.9.0..sroa_idx87.i.i421.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 28
  store i32 %i.adz, ptr %.sroa.9.0..sroa_idx87.i.i421.i, align 4, !tbaa !12, !noalias !549
  %.sroa.10.0..sroa_idx89.i.i422.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 32
  store i32 %i.adi, ptr %.sroa.10.0..sroa_idx89.i.i422.i, align 8, !tbaa !12, !noalias !549
  %.sroa.11.0..sroa_idx91.i.i423.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 36
  store i32 0, ptr %.sroa.11.0..sroa_idx91.i.i423.i, align 4, !tbaa !12, !noalias !549
  %.sroa.12.0..sroa_idx93.i.i424.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 40
  store i32 0, ptr %.sroa.12.0..sroa_idx93.i.i424.i, align 8, !tbaa !12, !noalias !549
  %.sroa.13.0..sroa_idx95.i.i425.i = getelementptr inbounds nuw i8, ptr %i.aex, i64 44
  store i32 %i.adx, ptr %.sroa.13.0..sroa_idx95.i.i425.i, align 4, !tbaa !12, !noalias !549
  %.not10.i.i.i.i.i.i.i.i426.i = icmp eq ptr %i.aef, %i.aed
  br i1 %.not10.i.i.i.i.i.i.i.i426.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i427.i

.lr.ph.i.i.i.i.i.i.i.i427.i:                      ; preds = %.noexc70.i.i417.i, %.lr.ph.i.i.i.i.i.i.i.i427.i
  %.012.i.i.i.i.i.i.i.i428.i = phi ptr [ %i.aez, %.lr.ph.i.i.i.i.i.i.i.i427.i ], [ %i.aew, %.noexc70.i.i417.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i429.i = phi ptr [ %i.aey, %.lr.ph.i.i.i.i.i.i.i.i427.i ], [ %i.aef, %.noexc70.i.i417.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i.i.i428.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i.i.i429.i, i64 48, i1 false), !tbaa.struct !550, !alias.scope !551, !noalias !549
  %i.aey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i429.i, i64 48 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i428.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i430.i = icmp eq ptr %i.aey, %i.aed
  br i1 %.not.i.i.i.i.i.i.i.i430.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i427.i, !llvm.loop !555

_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i427.i, %.noexc70.i.i417.i
  %.0.lcssa.i.i.i.i.i.i.i.i431.i = phi ptr [ %i.aew, %.noexc70.i.i417.i ], [ %i.aez, %.lr.ph.i.i.i.i.i.i.i.i427.i ]
  %.not.i23.i.i.i.i.i432.i = icmp eq ptr %i.aef, null
  br i1 %.not.i23.i.i.i.i.i432.i, label %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aef, i64 noundef %i.aeo) #27, !noalias !549
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cp, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  %i.afa = getelementptr inbounds nuw [48 x i8], ptr %i.aew, i64 %i.aeu
  br label %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i

_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE9push_backEOS5_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.cm
  %i.afb = phi ptr [ %i.afa, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.aed, %bb.cm ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i386.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i431.i, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.aee, %bb.cm ]
  %i.afc = phi ptr [ %i.aew, %_ZNSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i ], [ %i.aef, %bb.cm ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i386.i, i64 48 ; 2 uses
  %i.afe = add nuw i64 %.058117.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i387.i = icmp eq i64 %i.afe, %2
  br i1 %exitcond.not.i.i387.i, label %._crit_edge.i.i388.i, label %bb.cl, !llvm.loop !556

.loopexit.i.i412.i:                               ; preds = %_ZNKSt6vectorIN5faiss13HCounterStateINS0_26HammingComputerDefault_tplILNS0_9SIMDLevelE0EEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i413.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp.i.i433.i:                      ; preds = %bb.co
  %lpad.loopexit.split-lp.i.i434.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp.i.i433.i, %.loopexit.i.i412.i
  %lpad.phi.i.i414.i = phi { ptr, i32 } [ %lpad.loopexit.i.i413.i, %.loopexit.i.i412.i ], [ %lpad.loopexit.split-lp.i.i434.i, %.loopexit.split-lp.i.i433.i ]
  %.not.i.i.i.i.i415.i = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i.i.i415.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i416.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aef, i64 noundef %i.aeo) #27, !noalias !549
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i416.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i.i416.i: ; preds = %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4, !noalias !546
  tail call void @_ZdaPv(ptr noundef nonnull %i.adu) #27, !noalias !549
  br label %bb.cu

._crit_edge129.loopexit.i.i.i:                    ; preds = %.lr.ph128.i.i.i
  %.pre.i.i391.i = load i64, ptr %i.c, align 8, !tbaa !31, !noalias !546
  %.pre172.pre.i.i.i = load ptr, ptr %9, align 8, !tbaa !557, !noalias !546
  br label %._crit_edge129.i.i.i

._crit_edge129.i.i.i:                             ; preds = %._crit_edge129.loopexit.i.i.i, %bb.cj
  %.pre172.i.i.i = phi ptr [ %.pre172.pre.i.i.i, %._crit_edge129.loopexit.i.i.i ], [ %.lcssa114.i.i.i, %bb.cj ] ; 4 uses
  %i.aff = phi i64 [ %.pre.i.i391.i, %._crit_edge129.loopexit.i.i.i ], [ %2, %bb.cj ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4, !noalias !546
  %.not146.i.i.i = icmp eq i64 %i.aff, 0
  br i1 %.not146.i.i.i, label %._crit_edge144.i.i.i, label %.lr.ph143.i.i.i

.lr.ph143.i.i.i:                                  ; preds = %._crit_edge129.i.i.i
  %i.afg = icmp sgt i32 %i.aq, -1
  %i.afh = icmp ne i64 %4, 0
  %i.afi = and i1 %i.afh, %i.afg
  br i1 %i.afi, label %.preheader.lr.ph.us.preheader.i.i399.i, label %.lr.ph143.split.i.i.i

.preheader.lr.ph.us.preheader.i.i399.i:           ; preds = %.lr.ph143.i.i.i
  %i.afj = zext nneg i32 %i.adh to i64
  br label %.preheader.lr.ph.us.i.i400.i

.preheader.lr.ph.us.i.i400.i:                     ; preds = %._crit_edge140.us.i.i.i, %.preheader.lr.ph.us.preheader.i.i399.i
  %.057141.us.i.i.i = phi i64 [ %i.afv, %._crit_edge140.us.i.i.i ], [ 0, %.preheader.lr.ph.us.preheader.i.i399.i ] ; 3 uses
  %22 = mul i64 %.057141.us.i.i.i, %4             ; 3 uses
  %i.afk = getelementptr inbounds nuw [48 x i8], ptr %.pre172.i.i.i, i64 %.057141.us.i.i.i ; 2 uses
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !560, !noalias !549
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %invariant.gep200.i.i.i = getelementptr [4 x i8], ptr %6, i64 %22 ; 4 uses
  br label %.preheader.us.i.i401.i

scalar.ph655:                                     ; preds = %scalar.ph655.preheader, %scalar.ph655
  %indvars.iv.i.i407.i = phi i64 [ %indvars.iv.next.i.i409.i, %scalar.ph655 ], [ %indvars.iv.i.i407.i.ph, %scalar.ph655.preheader ]
  %.1130.us.i.i.i = phi i64 [ %i.afn, %scalar.ph655 ], [ %.1130.us.i.i.i.ph, %scalar.ph655.preheader ] ; 2 uses
  %gep201.i.i408.i = getelementptr [4 x i8], ptr %invariant.gep200.i.i.i, i64 %.1130.us.i.i.i
  store i32 %i.agn, ptr %gep201.i.i408.i, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  %i.afn = add nuw i64 %.1130.us.i.i.i, 1         ; 3 uses
  %indvars.iv.next.i.i409.i = add nuw nsw i64 %indvars.iv.i.i407.i, 1 ; 2 uses
  %i.afo = icmp samesign ult i64 %indvars.iv.next.i.i409.i, %i.agm
  %i.afp = icmp ult i64 %i.afn, %4
  %i.afq = select i1 %i.afo, i1 %i.afp, i1 false
  br i1 %i.afq, label %scalar.ph655, label %._crit_edge133.us.i.i.i, !llvm.loop !563

._crit_edge133.us.i.i.i:                          ; preds = %scalar.ph655, %middle.block664, %.preheader.us.i.i401.i
  %.1.lcssa.us.i.i402.i = phi i64 [ %.056135.us.i.i.i, %.preheader.us.i.i401.i ], [ %i.agq, %middle.block664 ], [ %i.afn, %scalar.ph655 ] ; 7 uses
  %indvars.iv.next166.i.i.i = add nuw nsw i64 %indvars.iv165.i.i.i, 1
  %i.afr = icmp samesign ult i64 %indvars.iv165.i.i.i, %i.afj
  %i.afs = icmp ult i64 %.1.lcssa.us.i.i402.i, %4 ; 2 uses
  %i.aft = select i1 %i.afr, i1 %i.afs, i1 false
  br i1 %i.aft, label %.preheader.us.i.i401.i, label %..preheader111_crit_edge.us.i.i.i, !llvm.loop !564

scalar.ph644:                                     ; preds = %scalar.ph644.preheader, %scalar.ph644
  %.2138.us.i.i.i = phi i64 [ %i.afu, %scalar.ph644 ], [ %.2138.us.i.i.i.ph, %scalar.ph644.preheader ] ; 2 uses
  %gep203.i.i403.i = getelementptr [4 x i8], ptr %invariant.gep200.i.i.i, i64 %.2138.us.i.i.i
  store i32 2147483647, ptr %gep203.i.i403.i, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  %i.afu = add nuw i64 %.2138.us.i.i.i, 1         ; 2 uses
  %exitcond170.not.i.i.i = icmp eq i64 %i.afu, %4
  br i1 %exitcond170.not.i.i.i, label %._crit_edge140.us.i.i.i, label %scalar.ph644, !llvm.loop !565

._crit_edge140.us.i.i.i:                          ; preds = %scalar.ph644, %middle.block651, %..preheader111_crit_edge.us.i.i.i
  %i.afv = add nuw i64 %.057141.us.i.i.i, 1       ; 2 uses
  %exitcond171.not.i.i.i = icmp eq i64 %i.afv, %i.aff
  br i1 %exitcond171.not.i.i.i, label %._crit_edge144.i.i.i, label %.preheader.lr.ph.us.i.i400.i, !llvm.loop !566

.preheader.us.i.i401.i:                           ; preds = %._crit_edge133.us.i.i.i, %.preheader.lr.ph.us.i.i400.i
  %indvars.iv165.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i400.i ], [ %indvars.iv.next166.i.i.i, %._crit_edge133.us.i.i.i ] ; 5 uses
  %.056135.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.us.i.i400.i ], [ %.1.lcssa.us.i.i402.i, %._crit_edge133.us.i.i.i ] ; 7 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %indvars.iv165.i.i.i
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.afy = icmp sgt i32 %i.afx, 0
  br i1 %i.afy, label %.lr.ph132.us.i.i.i, label %._crit_edge133.us.i.i.i

.lr.ph132.us.i.i.i:                               ; preds = %.preheader.us.i.i401.i
  %i.afz = load ptr, ptr %i.afm, align 8, !tbaa !567, !noalias !549
  %i.aga = mul i64 %indvars.iv165.i.i.i, %4
  %i.agb = getelementptr [8 x i8], ptr %i.afz, i64 %i.aga
  %i.agc = add i64 %.056135.us.i.i.i, %22
  %i.agd = shl i64 %i.agc, 3
  %scevgep.i.i404.i = getelementptr i8, ptr %7, i64 %i.agd
  %i.age = add i64 %.056135.us.i.i.i, 1
  %umax.i.i405.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.age)
  %i.agf = xor i64 %.056135.us.i.i.i, -1
  %i.agg = add i64 %umax.i.i405.i, %i.agf
  %i.agh = freeze i64 %i.agg                      ; 2 uses
  %i.agi = add nsw i32 %i.afx, -1
  %i.agj = zext nneg i32 %i.agi to i64
  %umin.i.i406.i = call i64 @llvm.umin.i64(i64 %i.agh, i64 %i.agj)
  %i.agk = shl nuw nsw i64 %umin.i.i406.i, 3
  %i.agl = add nuw nsw i64 %i.agk, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i404.i, ptr noundef nonnull align 8 dereferenceable(1) %i.agb, i64 %i.agl, i1 false), !tbaa !31, !noalias !541
  %i.agm = zext nneg i32 %i.afx to i64            ; 2 uses
  %i.agn = trunc nuw nsw i64 %indvars.iv165.i.i.i to i32 ; 2 uses
  %i.ago = add nsw i64 %i.agm, -1
  %umin654 = call i64 @llvm.umin.i64(i64 %i.agh, i64 %i.ago)
  %i.agp = add i64 %umin654, 1                    ; 3 uses
  %min.iters.check656 = icmp ult i64 %i.agp, 8
  br i1 %min.iters.check656, label %scalar.ph655.preheader, label %vector.ph657

vector.ph657:                                     ; preds = %.lr.ph132.us.i.i.i
  %n.vec658 = and i64 %i.agp, -8                  ; 4 uses
  %i.agq = add i64 %.056135.us.i.i.i, %n.vec658   ; 2 uses
  %broadcast.splatinsert659 = insertelement <4 x i32> poison, i32 %i.agn, i64 0
  %broadcast.splat660 = shufflevector <4 x i32> %broadcast.splatinsert659, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agr = getelementptr [4 x i8], ptr %invariant.gep200.i.i.i, i64 %.056135.us.i.i.i
  br label %vector.body661

vector.body661:                                   ; preds = %vector.body661, %vector.ph657
  %index662 = phi i64 [ 0, %vector.ph657 ], [ %index.next663, %vector.body661 ] ; 2 uses
  %i.ags = getelementptr [4 x i8], ptr %i.agr, i64 %index662 ; 2 uses
  %i.agt = getelementptr i8, ptr %i.ags, i64 16
  store <4 x i32> %broadcast.splat660, ptr %i.ags, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  store <4 x i32> %broadcast.splat660, ptr %i.agt, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  %index.next663 = add nuw i64 %index662, 8       ; 2 uses
  %i.agu = icmp eq i64 %index.next663, %n.vec658
  br i1 %i.agu, label %middle.block664, label %vector.body661, !llvm.loop !568

middle.block664:                                  ; preds = %vector.body661
  %cmp.n665 = icmp eq i64 %i.agp, %n.vec658
  br i1 %cmp.n665, label %._crit_edge133.us.i.i.i, label %scalar.ph655.preheader

scalar.ph655.preheader:                           ; preds = %.lr.ph132.us.i.i.i, %middle.block664
  %indvars.iv.i.i407.i.ph = phi i64 [ 0, %.lr.ph132.us.i.i.i ], [ %n.vec658, %middle.block664 ]
  %.1130.us.i.i.i.ph = phi i64 [ %.056135.us.i.i.i, %.lr.ph132.us.i.i.i ], [ %i.agq, %middle.block664 ]
  br label %scalar.ph655

..preheader111_crit_edge.us.i.i.i:                ; preds = %._crit_edge133.us.i.i.i
  br i1 %i.afs, label %.lr.ph139.us.i.i.i, label %._crit_edge140.us.i.i.i

.lr.ph139.us.i.i.i:                               ; preds = %..preheader111_crit_edge.us.i.i.i
  %i.agv = add i64 %.1.lcssa.us.i.i402.i, %22
  %i.agw = shl i64 %i.agv, 3
  %scevgep169.i.i.i = getelementptr i8, ptr %7, i64 %i.agw
  %i.agx = sub nuw i64 %4, %.1.lcssa.us.i.i402.i  ; 4 uses
  %i.agy = shl i64 %i.agx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep169.i.i.i, i8 -1, i64 %i.agy, i1 false), !tbaa !31, !alias.scope !544, !noalias !569
  %min.iters.check645 = icmp ult i64 %i.agx, 8
  br i1 %min.iters.check645, label %scalar.ph644.preheader, label %vector.ph646

vector.ph646:                                     ; preds = %.lr.ph139.us.i.i.i
  %n.vec647 = and i64 %i.agx, -8                  ; 3 uses
  %i.agz = add i64 %.1.lcssa.us.i.i402.i, %n.vec647
  %i.aha = getelementptr [4 x i8], ptr %invariant.gep200.i.i.i, i64 %.1.lcssa.us.i.i402.i
  br label %vector.body648

vector.body648:                                   ; preds = %vector.body648, %vector.ph646
  %index649 = phi i64 [ 0, %vector.ph646 ], [ %index.next650, %vector.body648 ] ; 2 uses
  %i.ahb = getelementptr [4 x i8], ptr %i.aha, i64 %index649 ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ahb, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  store <4 x i32> splat (i32 2147483647), ptr %i.ahc, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  %index.next650 = add nuw i64 %index649, 8       ; 2 uses
  %i.ahd = icmp eq i64 %index.next650, %n.vec647
  br i1 %i.ahd, label %middle.block651, label %vector.body648, !llvm.loop !570

middle.block651:                                  ; preds = %vector.body648
  %cmp.n652 = icmp eq i64 %i.agx, %n.vec647
  br i1 %cmp.n652, label %._crit_edge140.us.i.i.i, label %scalar.ph644.preheader

scalar.ph644.preheader:                           ; preds = %.lr.ph139.us.i.i.i, %middle.block651
  %.2138.us.i.i.i.ph = phi i64 [ %.1.lcssa.us.i.i402.i, %.lr.ph139.us.i.i.i ], [ %i.agz, %middle.block651 ]
  br label %scalar.ph644

.lr.ph143.split.i.i.i:                            ; preds = %.lr.ph143.i.i.i
  %.not147.i.i392.i = icmp eq i64 %4, 0
  br i1 %.not147.i.i392.i, label %._crit_edge144.i.i.i, label %.preheader111.preheader.i.i.i

.preheader111.preheader.i.i.i:                    ; preds = %.lr.ph143.split.i.i.i
  %i.ahe = shl i64 %4, 3
  %i.ahf = mul i64 %i.ahe, %i.aff
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 -1, i64 %i.ahf, i1 false), !tbaa !31, !alias.scope !544, !noalias !569
  %min.iters.check635 = icmp ult i64 %4, 8
  %n.vec637 = and i64 %4, -8                      ; 3 uses
  %cmp.n642 = icmp eq i64 %4, %n.vec637
  br label %.preheader111.i.i.i

.lr.ph128.i.i.i:                                  ; preds = %bb.cj, %.lr.ph128.i.i.i
  %storemerge126.i.i.i = phi i64 [ %i.ahi, %.lr.ph128.i.i.i ], [ 0, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4, !noalias !546
  %i.ahg = add i64 %storemerge126.i.i.i, %i.aeb
  %.sroa.speculated.i.i390.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.ahg)
  store i64 %.sroa.speculated.i.i390.i, ptr %i.f, align 8, !tbaa !31, !noalias !546
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_120hammings_knn_mc_implINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEEEEviPKhS6_mmmPiPlPKNS_10IDSelectorE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %9, ptr nonnull %i.b, ptr nonnull %i.a), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4, !noalias !546
  %i.ahh = load i64, ptr %i.e, align 8, !tbaa !31, !noalias !546
  %i.ahi = add i64 %i.ahh, %i.aeb                 ; 3 uses
  store i64 %i.ahi, ptr %i.e, align 8, !tbaa !31, !noalias !546
  %i.ahj = icmp ult i64 %i.ahi, %3
  br i1 %i.ahj, label %.lr.ph128.i.i.i, label %._crit_edge129.loopexit.i.i.i, !llvm.loop !571

._crit_edge144.i.i.i:                             ; preds = %._crit_edge140.i.i395.i, %._crit_edge140.us.i.i.i, %.lr.ph143.split.i.i.i, %._crit_edge129.i.i.i
  %.not.i.i.i71.i.i396.i = icmp eq ptr %.pre172.i.i.i, null
  br i1 %.not.i.i.i71.i.i396.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i397.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge144.i.i.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !572, !noalias !546
  %i.ahm = ptrtoint ptr %i.ahl to i64
  %i.ahn = ptrtoint ptr %.pre172.i.i.i to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  call void @_ZdlPvm(ptr noundef nonnull %.pre172.i.i.i, i64 noundef %i.aho) #27, !noalias !549
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i397.i

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i397.i: ; preds = %bb.cs, %._crit_edge144.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4, !noalias !546
  call void @_ZdaPv(ptr noundef nonnull %i.adu) #27, !noalias !549
  %.not.i.i.i76.i.i398.i = icmp eq ptr %.sroa.0102.0.i.i.i, null
  br i1 %.not.i.i.i76.i.i398.i, label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_26HammingComputerDefault_tplILS1_0EEEEEDav.exit.i", label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit75.i.i397.i
  %i.ahp = ptrtoint ptr %.sroa.0102.0.i.i.i to i64
  %i.ahq = sub i64 %.sroa.10106.0.i.i.i, %i.ahp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0.i.i.i, i64 noundef %i.ahq) #27, !noalias !549
  br label %"_ZZN5faiss21hammings_knn_mc_fixSLILNS_9SIMDLevelE0EEEvPKhS3_mmmmPiPlPKNS_10IDSelectorEENK3$_0clINS_26HammingComputerDefault_tplILS1_0EEEEEDav.exit.i"

.preheader111.i.i.i:                              ; preds = %._crit_edge140.i.i395.i, %.preheader111.preheader.i.i.i
  %.057141.i.i.i = phi i64 [ %i.ahw, %._crit_edge140.i.i395.i ], [ 0, %.preheader111.preheader.i.i.i ] ; 2 uses
  %i.ahr = mul i64 %.057141.i.i.i, %4
  %invariant.gep.i.i393.i = getelementptr [4 x i8], ptr %6, i64 %i.ahr ; 2 uses
  br i1 %min.iters.check635, label %scalar.ph634.preheader, label %vector.body638

vector.body638:                                   ; preds = %.preheader111.i.i.i, %vector.body638
  %index639 = phi i64 [ %index.next640, %vector.body638 ], [ 0, %.preheader111.i.i.i ] ; 2 uses
  %i.ahs = getelementptr [4 x i8], ptr %invariant.gep.i.i393.i, i64 %index639 ; 2 uses
  %i.aht = getelementptr i8, ptr %i.ahs, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ahs, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  store <4 x i32> splat (i32 2147483647), ptr %i.aht, align 4, !tbaa !12, !alias.scope !541, !noalias !562
  %index.next640 = add nuw i64 %index639, 8       ; 2 uses
  %i.ahu = icmp eq i64 %index.next640, %n.vec637
end_hunk_6
begin_hunk_7_@_ZN5faiss25match_hamming_thres_fixSLILNS_9SIMDLevelE0EEEmPKhS3_mmimPlPi:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.03242.us.i48, i64 16
  %i.ad = add nuw i64 %.02545.us.i45, 1           ; 2 uses
  %exitcond51.not.i60 = icmp eq i64 %i.ad, %2
  br i1 %exitcond51.not.i60, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i43, !llvm.loop !870

bb.j:                                             ; preds = %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %.not.i62 = icmp eq i64 %2, 0
  %.not49.i63 = icmp eq i64 %3, 0
  %or.cond.i64 = or i1 %.not.i62, %.not49.i63
  br i1 %or.cond.i64, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i65

.preheader.us.i65:                                ; preds = %bb.j, %._crit_edge.us.i81
  %.046.us.i66 = phi i64 [ %.2.us.i79, %._crit_edge.us.i81 ], [ 0, %bb.j ]
  %.02545.us.i67 = phi i64 [ %i.ar, %._crit_edge.us.i81 ], [ 0, %bb.j ] ; 2 uses
  %.02644.us.i68 = phi ptr [ %.228.us.i78, %._crit_edge.us.i81 ], [ %7, %bb.j ]
  %.02943.us.i69 = phi ptr [ %.231.us.i77, %._crit_edge.us.i81 ], [ %6, %bb.j ]
  %.03242.us.i70 = phi ptr [ %i.aq, %._crit_edge.us.i81 ], [ %0, %bb.j ] ; 2 uses
  %i.ae = load <4 x i64>, ptr %.03242.us.i70, align 8, !tbaa !31, !alias.scope !871, !noalias !880
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader.us.i65
  %.139.us.i71 = phi i64 [ %.046.us.i66, %.preheader.us.i65 ], [ %.2.us.i79, %bb.m ] ; 2 uses
  %.02438.us.i72 = phi i64 [ 0, %.preheader.us.i65 ], [ %i.ap, %bb.m ] ; 2 uses
  %.12737.us.i73 = phi ptr [ %.02644.us.i68, %.preheader.us.i65 ], [ %.228.us.i78, %bb.m ] ; 3 uses
  %.13036.us.i74 = phi ptr [ %.02943.us.i69, %.preheader.us.i65 ], [ %.231.us.i77, %bb.m ] ; 4 uses
  %.03335.us.i75 = phi ptr [ %1, %.preheader.us.i65 ], [ %i.ao, %bb.m ] ; 2 uses
  %i.af = load <4 x i64>, ptr %.03335.us.i75, align 8, !tbaa !31, !alias.scope !874, !noalias !881
  %i.ag = xor <4 x i64> %i.af, %i.ae
  %i.ah = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ag)
  %i.ai = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ah)
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 2 uses
  %.not.us.i76 = icmp slt i32 %4, %i.aj
  br i1 %.not.us.i76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.02545.us.i67, ptr %.13036.us.i74, align 8, !tbaa !31, !alias.scope !876, !noalias !882
  %i.ak = getelementptr inbounds nuw i8, ptr %.13036.us.i74, i64 8
  store i64 %.02438.us.i72, ptr %i.ak, align 8, !tbaa !31, !alias.scope !876, !noalias !882
  %i.al = getelementptr inbounds nuw i8, ptr %.13036.us.i74, i64 16
  store i32 %i.aj, ptr %.12737.us.i73, align 4, !tbaa !12, !alias.scope !878, !noalias !883
  %i.am = getelementptr inbounds nuw i8, ptr %.12737.us.i73, i64 4
  %i.an = add i64 %.139.us.i71, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.231.us.i77 = phi ptr [ %i.al, %bb.l ], [ %.13036.us.i74, %bb.k ] ; 2 uses
  %.228.us.i78 = phi ptr [ %i.am, %bb.l ], [ %.12737.us.i73, %bb.k ] ; 2 uses
  %.2.us.i79 = phi i64 [ %i.an, %bb.l ], [ %.139.us.i71, %bb.k ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03335.us.i75, i64 32
  %i.ap = add nuw i64 %.02438.us.i72, 1           ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i80, label %._crit_edge.us.i81, label %bb.k, !llvm.loop !884

._crit_edge.us.i81:                               ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.03242.us.i70, i64 32
  %i.ar = add nuw i64 %.02545.us.i67, 1           ; 2 uses
  %exitcond51.not.i82 = icmp eq i64 %i.ar, %2
  br i1 %exitcond51.not.i82, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i65, !llvm.loop !885

bb.n:                                             ; preds = %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %.not.i84 = icmp eq i64 %2, 0
  %.not49.i85 = icmp eq i64 %3, 0
  %or.cond.i86 = or i1 %.not.i84, %.not49.i85
  br i1 %or.cond.i86, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i87

.preheader.us.i87:                                ; preds = %bb.n, %._crit_edge.us.i103
  %.046.us.i88 = phi i64 [ %.2.us.i101, %._crit_edge.us.i103 ], [ 0, %bb.n ]
  %.02545.us.i89 = phi i64 [ %i.bf, %._crit_edge.us.i103 ], [ 0, %bb.n ] ; 2 uses
  %.02644.us.i90 = phi ptr [ %.228.us.i100, %._crit_edge.us.i103 ], [ %7, %bb.n ]
  %.02943.us.i91 = phi ptr [ %.231.us.i99, %._crit_edge.us.i103 ], [ %6, %bb.n ]
  %.03242.us.i92 = phi ptr [ %i.be, %._crit_edge.us.i103 ], [ %0, %bb.n ] ; 2 uses
  %i.as = load <8 x i64>, ptr %.03242.us.i92, align 8, !tbaa !31, !alias.scope !886, !noalias !895
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.preheader.us.i87
  %.139.us.i93 = phi i64 [ %.046.us.i88, %.preheader.us.i87 ], [ %.2.us.i101, %bb.q ] ; 2 uses
  %.02438.us.i94 = phi i64 [ 0, %.preheader.us.i87 ], [ %i.bd, %bb.q ] ; 2 uses
  %.12737.us.i95 = phi ptr [ %.02644.us.i90, %.preheader.us.i87 ], [ %.228.us.i100, %bb.q ] ; 3 uses
  %.13036.us.i96 = phi ptr [ %.02943.us.i91, %.preheader.us.i87 ], [ %.231.us.i99, %bb.q ] ; 4 uses
  %.03335.us.i97 = phi ptr [ %1, %.preheader.us.i87 ], [ %i.bc, %bb.q ] ; 2 uses
  %i.at = load <8 x i64>, ptr %.03335.us.i97, align 8, !tbaa !31, !alias.scope !889, !noalias !896
  %i.au = xor <8 x i64> %i.at, %i.as
  %i.av = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.au)
  %i.aw = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.av)
  %i.ax = trunc nuw nsw i64 %i.aw to i32          ; 2 uses
  %.not.us.i98 = icmp slt i32 %4, %i.ax
  br i1 %.not.us.i98, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.02545.us.i89, ptr %.13036.us.i96, align 8, !tbaa !31, !alias.scope !891, !noalias !897
  %i.ay = getelementptr inbounds nuw i8, ptr %.13036.us.i96, i64 8
  store i64 %.02438.us.i94, ptr %i.ay, align 8, !tbaa !31, !alias.scope !891, !noalias !897
  %i.az = getelementptr inbounds nuw i8, ptr %.13036.us.i96, i64 16
  store i32 %i.ax, ptr %.12737.us.i95, align 4, !tbaa !12, !alias.scope !893, !noalias !898
  %i.ba = getelementptr inbounds nuw i8, ptr %.12737.us.i95, i64 4
  %i.bb = add i64 %.139.us.i93, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.231.us.i99 = phi ptr [ %i.az, %bb.p ], [ %.13036.us.i96, %bb.o ] ; 2 uses
  %.228.us.i100 = phi ptr [ %i.ba, %bb.p ], [ %.12737.us.i95, %bb.o ] ; 2 uses
  %.2.us.i101 = phi i64 [ %i.bb, %bb.p ], [ %.139.us.i93, %bb.o ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03335.us.i97, i64 64
  %i.bd = add nuw i64 %.02438.us.i94, 1           ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %i.bd, %3
  br i1 %exitcond.not.i102, label %._crit_edge.us.i103, label %bb.o, !llvm.loop !899

._crit_edge.us.i103:                              ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.03242.us.i92, i64 64
  %i.bf = add nuw i64 %.02545.us.i89, 1           ; 2 uses
  %exitcond51.not.i104 = icmp eq i64 %i.bf, %2
  br i1 %exitcond51.not.i104, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i87, !llvm.loop !900

bb.r:                                             ; preds = %.split, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bg, ptr %8, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !89
  store i8 0, ptr %i.bg, align 8, !tbaa !91
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef %5) #4 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bk = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bl)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %8, align 8, !tbaa !92
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !89
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.12, i64 noundef %5) #4 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bk)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t, %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.r
  %i.bq = call ptr @__cxa_allocate_exception(i64 40) #4 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss25match_hamming_thres_fixSLILNS_9SIMDLevelE0EEEmPKhS3_mmimPlPi, ptr noundef nonnull @.str.2, i32 noundef 474)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #25
          to label %bb.z unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bq) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.u ], [ %i.br, %bb.x ]
  %i.bs = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bg
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.bu = load i64, ptr %i.bg, align 8, !tbaa !91
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  resume { ptr, i32 } %.pn

_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit: ; preds = %._crit_edge.us.i103, %._crit_edge.us.i81, %._crit_edge.us.i59, %._crit_edge.us.i, %bb.n, %bb.j, %bb.f, %bb.b
  %.037 = phi i64 [ %.2.us.i57, %._crit_edge.us.i59 ], [ %.2.us.i79, %._crit_edge.us.i81 ], [ %.2.us.i, %._crit_edge.us.i ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.n ], [ %.2.us.i101, %._crit_edge.us.i103 ]
  ret i64 %.037

bb.z:                                             ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5faiss11fvec2bitvecEPKfPhm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %._crit_edge30, label %.lr.ph29

._crit_edge30:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph29:                                         ; preds = %bb.a, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.02027 = phi i64 [ %5, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %.02126 = phi ptr [ %i.j, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %i.a = add i64 %.02027, 8
  %umin = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.a) ; 3 uses
  %3 = mul i64 %indvar, -8                        ; 2 uses
  %4 = add i64 %umin, %3
  %5 = add nuw i64 %.02027, 8                     ; 2 uses
  %.not3237 = icmp eq i64 %2, %.02027
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %i.b = add i64 %3, -1
  %6 = add i64 %umin, %i.b
  %i.c = getelementptr [4 x i8], ptr %0, i64 %.02027 ; 5 uses
  %xtraiter = and i64 %umin, 3                    ; 4 uses
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %4, %xtraiter
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.025.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.01824.epil.init = phi i8 [ 1, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.01923.epil.init = phi i8 [ 0, %.lr.ph ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.025.epil = phi i64 [ %.025.epil.init, %.epil.preheader ], [ %i.i, %bb.b ] ; 2 uses
  %.01824.epil = phi i8 [ %.01824.epil.init, %.epil.preheader ], [ %i.h, %bb.b ] ; 2 uses
  %.01923.epil = phi i8 [ %.01923.epil.init, %.epil.preheader ], [ %.1.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %.025.epil
  %i.e = load float, ptr %i.d, align 4, !tbaa !901
  %i.f = fcmp ult float %i.e, 0.000000e+00
  %i.g = select i1 %i.f, i8 0, i8 %.01824.epil
  %.1.epil = or i8 %i.g, %.01923.epil             ; 2 uses
  %i.h = shl i8 %.01824.epil, 1
  %i.i = add nuw i64 %.025.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !903

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.lr.ph29
  %.019.lcssa = phi i8 [ 0, %.lr.ph29 ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %bb.b ]
  store i8 %.019.lcssa, ptr %.02126, align 1, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %.02126, i64 1
  %i.k = icmp ult i64 %5, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.k, label %.lr.ph29, label %._crit_edge30, !llvm.loop !905

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.025 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.c ] ; 5 uses
  %.01824 = phi i8 [ 1, %.lr.ph.new ], [ %i.ah, %bb.c ] ; 5 uses
  %.01923 = phi i8 [ 0, %.lr.ph.new ], [ %.1.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr [4 x i8], ptr %i.c, i64 %.025
  %i.m = load float, ptr %i.l, align 4, !tbaa !901
  %i.n = fcmp ult float %i.m, 0.000000e+00
  %i.o = select i1 %i.n, i8 0, i8 %.01824
  %.1 = or i8 %i.o, %.01923
  %i.p = shl i8 %.01824, 1
  %i.q = getelementptr [4 x i8], ptr %i.c, i64 %.025
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !901
  %i.t = fcmp ult float %i.s, 0.000000e+00
  %i.u = select i1 %i.t, i8 0, i8 %i.p
  %.1.1 = or i8 %i.u, %.1
  %i.v = shl i8 %.01824, 2
  %i.w = getelementptr [4 x i8], ptr %i.c, i64 %.025
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !901
  %i.z = fcmp ult float %i.y, 0.000000e+00
  %i.aa = select i1 %i.z, i8 0, i8 %i.v
  %.1.2 = or i8 %i.aa, %.1.1
  %i.ab = shl i8 %.01824, 3
  %i.ac = getelementptr [4 x i8], ptr %i.c, i64 %.025
  %i.ad = getelementptr i8, ptr %i.ac, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !901
  %i.af = fcmp ult float %i.ae, 0.000000e+00
  %i.ag = select i1 %i.af, i8 0, i8 %i.ab
  %.1.3 = or i8 %i.ag, %.1.2                      ; 3 uses
  %i.ah = shl i8 %.01824, 4                       ; 2 uses
  %i.ai = add nuw i64 %.025, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !906
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss13fvecs2bitvecsEPKfPhmm(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !907
  store ptr %1, ptr %i.b, align 8, !tbaa !19
  store i64 %2, ptr %i.c, align 8, !tbaa !31
  store i64 %3, ptr %i.d, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.h = add i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  store i64 %i.i, ptr %i.e, align 8, !tbaa !31
  %i.j = icmp ugt i64 %3, 100000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !12
  call void @_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.d, ptr %i.a, ptr %i.c, ptr %i.b, ptr %i.e) #4
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #19 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 %i.g, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 1, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !31
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load i64, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit
  %i.n = add nsw i64 %.017, 1
  %.pr = load i64, ptr %4, align 8, !tbaa !31
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.o = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.l, %.lr.ph ] ; 5 uses
  %i.p = phi i64 [ %i.bg, %.lr.ph.splitthread-pre-split ], [ %i.j, %.lr.ph ]
  %.017 = phi i64 [ %i.n, %.lr.ph.splitthread-pre-split ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !907
  %i.r = mul i64 %i.o, %.017
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %5, align 8, !tbaa !19
  %i.u = load i64, ptr %6, align 8, !tbaa !31
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %_ZN5faiss11fvec2bitvecEPKfPhm.exit, label %.lr.ph29.i.preheader

.lr.ph29.i.preheader:                             ; preds = %.lr.ph.split
  %i.v = mul nsw i64 %i.u, %.017
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 2 uses
  %.02027.i = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %9, %._crit_edge.i ] ; 4 uses
  %.02126.i = phi ptr [ %i.w, %.lr.ph29.i.preheader ], [ %i.ag, %._crit_edge.i ] ; 2 uses
  %i.x = add i64 %.02027.i, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.x) ; 3 uses
  %7 = mul i64 %indvar, -8                        ; 2 uses
  %8 = add i64 %umin, %7
  %9 = add nuw i64 %.02027.i, 8                   ; 2 uses
  %.not32.i27 = icmp eq i64 %i.o, %.02027.i
  br i1 %.not32.i27, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph29.i
  %i.y = add i64 %7, -1
  %10 = add i64 %umin, %i.y
  %i.z = getelementptr [4 x i8], ptr %i.s, i64 %.02027.i ; 5 uses
  %xtraiter = and i64 %umin, 3                    ; 4 uses
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = sub i64 %8, %xtraiter
  br label %bb.d

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bf, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01824.i.epil.init = phi i8 [ 1, %.lr.ph.i ], [ %i.be, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01923.i.epil.init = phi i8 [ 0, %.lr.ph.i ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod26)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.025.i.epil = phi i64 [ %.025.i.epil.init, %.epil.preheader ], [ %i.af, %bb.c ] ; 2 uses
  %.01824.i.epil = phi i8 [ %.01824.i.epil.init, %.epil.preheader ], [ %i.ae, %bb.c ] ; 2 uses
  %.01923.i.epil = phi i8 [ %.01923.i.epil.init, %.epil.preheader ], [ %.1.i.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %.025.i.epil
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  %i.ad = select i1 %i.ac, i8 0, i8 %.01824.i.epil
  %.1.i.epil = or i8 %i.ad, %.01923.i.epil        ; 2 uses
  %i.ae = shl i8 %.01824.i.epil, 1
  %i.af = add nuw i64 %.025.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.c, !llvm.loop !914

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.c, %.lr.ph29.i
  %.019.lcssa.i = phi i8 [ 0, %.lr.ph29.i ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %bb.c ]
  store i8 %.019.lcssa.i, ptr %.02126.i, align 1, !tbaa !91, !alias.scope !912, !noalias !909
  %i.ag = getelementptr inbounds nuw i8, ptr %.02126.i, i64 1
  %i.ah = icmp ult i64 %9, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ah, label %.lr.ph29.i, label %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit, !llvm.loop !905

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bf, %bb.d ] ; 5 uses
  %.01824.i = phi i8 [ 1, %.lr.ph.i.new ], [ %i.be, %bb.d ] ; 5 uses
  %.01923.i = phi i8 [ 0, %.lr.ph.i.new ], [ %.1.i.3, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.ai = getelementptr [4 x i8], ptr %i.z, i64 %.025.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.ak = fcmp ult float %i.aj, 0.000000e+00
  %i.al = select i1 %i.ak, i8 0, i8 %.01824.i
  %.1.i = or i8 %i.al, %.01923.i
  %i.am = shl i8 %.01824.i, 1
  %i.an = getelementptr [4 x i8], ptr %i.z, i64 %.025.i
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.aq = fcmp ult float %i.ap, 0.000000e+00
  %i.ar = select i1 %i.aq, i8 0, i8 %i.am
  %.1.i.1 = or i8 %i.ar, %.1.i
  %i.as = shl i8 %.01824.i, 2
  %i.at = getelementptr [4 x i8], ptr %i.z, i64 %.025.i
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.aw = fcmp ult float %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, i8 0, i8 %i.as
  %.1.i.2 = or i8 %i.ax, %.1.i.1
  %i.ay = shl i8 %.01824.i, 3
  %i.az = getelementptr [4 x i8], ptr %i.z, i64 %.025.i
  %i.ba = getelementptr i8, ptr %i.az, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.bc = fcmp ult float %i.bb, 0.000000e+00
  %i.bd = select i1 %i.bc, i8 0, i8 %i.ay
  %.1.i.3 = or i8 %i.bd, %.1.i.2                  ; 3 uses
  %i.be = shl i8 %.01824.i, 4                     ; 2 uses
  %i.bf = add nuw i64 %.025.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !906

_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit:      ; preds = %._crit_edge.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5faiss11fvec2bitvecEPKfPhm.exit

_ZN5faiss11fvec2bitvecEPKfPhm.exit:               ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit, %.lr.ph.split
  %i.bg = phi i64 [ %.pre, %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit ], [ %i.p, %.lr.ph.split ] ; 2 uses
  %.not.not = icmp slt i64 %.017, %i.bg
  br i1 %.not.not, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !915

._crit_edge:                                      ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss13bitvecs2fvecsEPKhPfmm(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  store ptr %1, ptr %i.b, align 8, !tbaa !907
  store i64 %2, ptr %i.c, align 8, !tbaa !31
  store i64 %3, ptr %i.d, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.h = add i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  store i64 %i.i, ptr %i.e, align 8, !tbaa !31
  %i.j = icmp ugt i64 %3, 100000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !12
  call void @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.d, ptr %i.c, ptr %i.a, ptr %i.e, ptr %i.b) #4
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 %i.g, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 1, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !31
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.017 = phi i64 [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = load i64, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !19
  %i.n = load i64, ptr %5, align 8, !tbaa !31
  %i.o = mul nsw i64 %i.n, %.017
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load ptr, ptr %6, align 8, !tbaa !907
  %i.r = mul i64 %i.l, %.017
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  invoke void @_ZN5faiss14binary_to_realEmPKhPf(i64 noundef %i.l, ptr noundef %i.p, ptr noundef %i.s)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.t = add nsw i64 %.017, 1
  %i.u = load i64, ptr %i.b, align 8, !tbaa !31
  %.not.not = icmp slt i64 %.017, %i.u
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #26
  unreachable
}

declare void @_ZN5faiss14binary_to_realEmPKhPf(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN5faiss12bitvec_printEPKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge
  %.01118 = phi i64 [ %.1.lcssa, %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.01217 = phi ptr [ %i.aa, %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %i.a = load i64, ptr %.01217, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph19
  %.011.i = phi i64 [ 0, %.lr.ph19 ], [ %i.n, %bb.b ]
  %.0710.i = phi i32 [ 0, %.lr.ph19 ], [ %i.p, %bb.b ]
  %.089.i = phi i64 [ %i.a, %.lr.ph19 ], [ %i.o, %bb.b ] ; 5 uses
  %i.b = shl i64 %.011.i, 3
  %i.c = shl i64 %.089.i, 2
  %i.d = and i64 %i.c, 4
  %i.e = or disjoint i64 %i.b, %i.d
  %i.f = and i64 %.089.i, 2
  %i.g = or disjoint i64 %i.f, %i.e
  %i.h = lshr i64 %.089.i, 2
end_hunk_7
