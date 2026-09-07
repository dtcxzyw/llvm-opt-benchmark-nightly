Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/caching?download=true
inline.NumInlined: 1070
inline.NumDeleted: 555
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt7__mergeIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_SA_NS0_5__ops15_Iter_less_iterEET1_T_SE_T0_SF_SD_T2_:bb.a
  %.not.i.i.i.i.i9 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i.i9, label %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not7.i.i.i.i.i10 = icmp eq ptr %i.al, null
  br i1 %.not7.i.i.i.i.i10, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i12, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i11, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !20
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i12

bb.q:                                             ; preds = %bb.o
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i18 = load ptr, ptr %i.g, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i12

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i12: ; preds = %bb.q, %bb.p, %bb.n
  %i.as = phi ptr [ %i.am, %bb.n ], [ %i.am, %bb.p ], [ %.pr.pre.i.i.i.i.i18, %bb.q ] ; 8 uses
  %.not8.i.i.i.i.i13 = icmp eq ptr %i.as, null
  br i1 %.not8.i.i.i.i.i13, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i17, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.at, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !41
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21, !inline_history !234
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21, !inline_history !234
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i17

bb.t:                                             ; preds = %bb.r
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i.i14 = icmp eq i8 %i.be, 0
  br i1 %.not.i9.i.i.i.i.i14, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i15

bb.v:                                             ; preds = %bb.t
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i15: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i16 = phi i32 [ %i.aw, %bb.u ], [ %i.bg, %bb.v ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i16, 1
  br i1 %i.bh, label %bb.w, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i17, !prof !43

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i17

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i17: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i15, %bb.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i12
  store ptr %i.al, ptr %i.g, align 8, !tbaa !38
  br label %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit19

_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit19: ; preds = %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i17
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.044.050, i64 32
  br label %bb.x

bb.x:                                             ; preds = %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit19, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit
  %.sroa.040.1 = phi ptr [ %i.ah, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit ], [ %.sroa.040.049, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit19 ] ; 3 uses
  %.sroa.044.1 = phi ptr [ %.sroa.044.050, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit ], [ %i.bi, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit19 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.051, i64 32 ; 2 uses
  %i.bk = icmp eq ptr %.sroa.044.1, %1
  %i.bl = icmp eq ptr %.sroa.040.1, %3
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !235

.critedge:                                        ; preds = %bb.x, %bb.a
  %.sroa.040.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.040.1, %bb.x ] ; 2 uses
  %.sroa.044.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.044.1, %bb.x ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bj, %bb.x ] ; 4 uses
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = ptrtoint ptr %.sroa.044.0.lcssa to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 5                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cv, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i ], [ %i.bp, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cu, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.critedge ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ct, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i ], [ %.sroa.044.0.lcssa, %.critedge ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !81
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !73
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !38 ; 4 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !20
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.y
  %i.cd = phi ptr [ %i.bx, %bb.y ], [ %i.bx, %bb.aa ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ce, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !41
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #21, !inline_history !236
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #21, !inline_history !236
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ch, %bb.af ], [ %i.cr, %bb.ag ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cs, label %bb.ah, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !43

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ad, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !38
  br label %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i

_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.cv = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cw = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !237

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %.critedge ], [ %i.cu, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i ]
  %i.cx = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cy = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.cz ; 2 uses
  %i.db = ptrtoint ptr %3 to i64
  %i.dc = ptrtoint ptr %.sroa.040.0.lcssa to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 5                 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i21, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34
  %.012.i.i.i.i.i22 = phi i64 [ %i.ek, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34 ], [ %i.de, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %.0811.i.i.i.i.i23 = phi ptr [ %i.ej, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34 ], [ %i.da, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 4 uses
  %.0910.i.i.i.i.i24 = phi ptr [ %i.ei, %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34 ], [ %.sroa.040.0.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i23, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i24, i64 16, i1 false), !tbaa.struct !81
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !73
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !73
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 24 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !38 ; 4 uses
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i25, label %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i21
  %.not7.i.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.dl, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i26, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i28, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !20
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i28

bb.al:                                            ; preds = %bb.aj
  %i.dr = atomicrmw volatile add ptr %i.dn, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i35 = load ptr, ptr %i.dj, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i28

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i28: ; preds = %bb.al, %bb.ak, %bb.ai
  %i.ds = phi ptr [ %i.dm, %bb.ai ], [ %i.dm, %bb.ak ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i35, %bb.al ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.ds, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i29, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i33, label %bb.am

bb.am:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dt, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !41
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #21, !inline_history !236
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #21, !inline_history !236
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i33

bb.ao:                                            ; preds = %bb.am
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i.i.i.i.i.i.i30 = icmp eq i8 %i.ee, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i30, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31

bb.aq:                                            ; preds = %bb.ao
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i.i.i.i32 = phi i32 [ %i.dw, %bb.ap ], [ %i.eg, %bb.aq ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i32, 1
  br i1 %i.eh, label %bb.ar, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i33, !prof !43

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i33

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i33: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31, %bb.an, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i28
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !38
  br label %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34

_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i21
  %i.ei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 32 ; 2 uses
  %i.ek = add nsw i64 %.012.i.i.i.i.i22, -1
  %i.el = icmp sgt i64 %.012.i.i.i.i.i22, 1
  br i1 %i.el, label %.lr.ph.i.i.i.i.i21, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36.loopexit, !llvm.loop !237

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36.loopexit: ; preds = %_ZN5arrow2io8internal15RangeCacheEntryaSERKS2_.exit.i.i.i.i.i34
  %5 = ptrtoint ptr %i.ej to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36.loopexit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %.08.lcssa.i.i.i.i.i20 = phi i64 [ %i.cx, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ], [ %5, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5arrow2io8internal15RangeCacheEntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit36.loopexit ]
  %i.em = sub i64 %.08.lcssa.i.i.i.i.i20, %i.cx
  %i.en = getelementptr inbounds i8, ptr %i.da, i64 %i.em
  ret ptr %i.en
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !41
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !238
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !238
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !43

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !42
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.29", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !86
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !86
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !107    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !42
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !107    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !42
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.m = load ptr, ptr %3, align 8, !tbaa !107    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !42
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #21, !inline_history !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
