Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/extract_non_manifold_edge_curves?download=true
inline.NumInlined: 501
inline.NumDeleted: 288
begin_hunk_0_@_ZN3igl32extract_non_manifold_edge_curvesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKSt6vectorISE_IT1_SaISF_EESaISH_EERSE_ISE_ImSaImEESaISN_EE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.y, ptr %8, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %.not135 = icmp eq ptr %i.s, %i.t
  br i1 %.not135, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE5clearEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %8, ptr %10, align 8, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %7, ptr %i.ai, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %8, ptr %11, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.aj, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %7, ptr %i.ak, align 8, !tbaa !86
  %i.al = add nsw i64 %i.x, 63                    ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 2305843009213693944
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18
          to label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 5 uses

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %._crit_edge
  %i.ap = lshr i64 %i.al, 6                       ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %.idx.i, i1 false)
  %.not131 = icmp eq ptr %.sroa.087.1, %.sroa.9.1
  br i1 %.not131, label %._crit_edge134.thread185, label %.lr.ph133

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge123 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %.sroa.087.0122 = phi ptr [ null, %.lr.ph ], [ %.sroa.087.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %.sroa.9.0121 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %.sroa.13.0120 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %storemerge123 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i32, ptr %i.av, align 4, !tbaa !50
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56, !nonnull !53, !align !54
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bf = urem i64 %i.bb, %i.be
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !57, !nonnull !53, !align !54
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !59, !nonnull !53, !align !54
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.bj = udiv i64 %i.bb, %i.bi                   ; 2 uses
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !60, !nonnull !53 ; 2 uses
  %i.bl = add i64 %i.bj, 1
  %i.bm = urem i64 %i.bl, 3
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %i.bm
  %i.br = getelementptr [4 x i8], ptr %i.bn, i64 %i.bf ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !50
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add i64 %i.bj, 2
  %i.bw = urem i64 %i.bv, 3
  %i.bx = mul nsw i64 %i.bp, %i.bw
  %i.by = getelementptr [4 x i8], ptr %i.br, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !50
  %i.ca = sext i32 %i.bz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 %i.bu, ptr %9, align 8, !tbaa !93
  store i64 %storemerge123, ptr %i.ad, align 8, !tbaa !63
  store i64 %i.ca, ptr %i.ae, align 8, !tbaa !93
  store i64 %storemerge123, ptr %i.af, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %8, ptr %4, align 8, !tbaa !95
  invoke void @_ZNSt8__detail12_Insert_baseImSt4pairIKmmESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb0EEEE15_M_insert_rangeIPKS3_NS_10_AllocNodeISaINS_10_Hash_nodeIS3_Lb0EEEEEEEEvT_SO_RKT0_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull %9, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %.not.i = icmp eq ptr %.sroa.9.0121, %.sroa.13.0120
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %storemerge123, ptr %.sroa.9.0121, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.9.0121, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.g:                                             ; preds = %bb.e
  %i.cc = ptrtoint ptr %.sroa.9.0121 to i64
  %i.cd = ptrtoint ptr %.sroa.087.0122 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i36)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #18
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i64 %storemerge123, ptr %i.cn, align 8, !tbaa !22
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %.sroa.087.0122, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.087.0122, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0122, i64 noundef %i.ce) #17
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c
  %.sroa.13.1 = phi ptr [ %.sroa.13.0120, %bb.c ], [ %i.cq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.13.0120, %bb.f ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0121, %bb.c ], [ %i.cp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.cb, %bb.f ] ; 3 uses
  %.sroa.087.1 = phi ptr [ %.sroa.087.0122, %bb.c ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.087.0122, %bb.f ] ; 7 uses
  %i.cr = add nuw i64 %storemerge123, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !83

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %bb.d
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.z

.lr.ph133:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.n

._crit_edge134.thread185:                         ; preds = %bb.w, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.idx216 = shl nuw nsw i64 %i.ap, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %.idx216) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %.not.i.i.i39 = icmp eq ptr %.sroa.087.1, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge134.thread185
  %i.cv = ptrtoint ptr %.sroa.13.1 to i64
  %i.cw = ptrtoint ptr %.sroa.087.1 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.1, i64 noundef %i.cx) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE5clearEv.exit, %._crit_edge134.thread185, %bb.l
  %i.cy = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i.i40
  %.06.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i40 ], [ %i.cy, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.cz = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #17
  %.not.i.i.i.i41 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i41, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !0

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i40, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.da = load ptr, ptr %8, align 8, !tbaa !44
  %i.db = load i64, ptr %i.z, align 8, !tbaa !45
  %i.dc = shl i64 %i.db, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.da, i8 0, i64 %i.dc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.dd = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.y
  br i1 %i.de, label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i
  %i.df = load i64, ptr %i.z, align 8, !tbaa !45
  %i.dg = shl i64 %i.df, 3
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #17
  br label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit

_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.n:                                             ; preds = %.lr.ph133, %bb.w
  %.sroa.066.0132 = phi ptr [ %.sroa.087.1, %.lr.ph133 ], [ %i.fq, %bb.w ] ; 2 uses
  %i.dh = load i64, ptr %.sroa.066.0132, align 8, !tbaa !22 ; 5 uses
  %i.di = sdiv i64 %i.dh, 64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.di
  %i.dk = and i64 %i.dh, -9223372036854775745
  %i.dl = icmp ugt i64 %i.dk, -9223372036854775808
  %storemerge.idx.i.i.i.i.i42 = select i1 %i.dl, i64 -8, i64 0
  %storemerge.i.i.i.i.i43 = getelementptr inbounds i8, ptr %i.dj, i64 %storemerge.idx.i.i.i.i.i42
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = load i64, ptr %storemerge.i.i.i.i.i43, align 8, !tbaa !22
  %i.dp = and i64 %i.dn, %i.do
  %.not99 = icmp eq i64 %i.dp, 0
  br i1 %.not99, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store ptr %12, ptr %i.ct, align 8, !tbaa !68
  store ptr %12, ptr %12, align 8, !tbaa !69
  store i64 0, ptr %i.cu, align 8, !tbaa !96
  %i.dq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.p unwind label %bb.t       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %i.dh, ptr %i.dr, align 8, !tbaa !22
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %12) #16
  %i.ds = load i64, ptr %i.cu, align 8, !tbaa !73
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.cu, align 8, !tbaa !73
  %i.du = load ptr, ptr %2, align 8, !tbaa !36
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dh
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !49
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !50
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.dz = load ptr, ptr %7, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !56, !nonnull !53, !align !54
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !22
  %i.ec = urem i64 %i.dy, %i.eb
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !57, !nonnull !53, !align !54
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !59, !nonnull !53, !align !54
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !22
  %i.eg = udiv i64 %i.dy, %i.ef                   ; 2 uses
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !60, !nonnull !53 ; 2 uses
  %i.ei = add i64 %i.eg, 1
  %i.ej = urem i64 %i.ei, 3
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !61
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !21 ; 2 uses
  %i.en = mul nsw i64 %i.em, %i.ej
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.ec ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !50
  %i.er = sext i32 %i.eq to i64
  store i64 %i.er, ptr %i.b, align 8, !tbaa !22
  %i.es = add i64 %i.eg, 2
  %i.et = urem i64 %i.es, 3
  %i.eu = mul nsw i64 %i.em, %i.et
  %i.ev = getelementptr [4 x i8], ptr %i.eo, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !50
  %i.ex = sext i32 %i.ew to i64
  store i64 %i.ex, ptr %i.c, align 8, !tbaa !22
  invoke void @_ZZN3igl32extract_non_manifold_edge_curvesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKSt6vectorISE_IT1_SaISF_EESaISH_EERSE_ISE_ImSaImEESaISN_EEENKUlRNSt7__cxx114listImSM_EERmSV_E_clESU_SV_SV_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  invoke void @_ZZN3igl32extract_non_manifold_edge_curvesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKSt6vectorISE_IT1_SaISF_EESaISH_EERSE_ISE_ImSaImEESaISN_EEENKUlRNSt7__cxx114listImSM_EERmSV_E0_clESU_SV_SV_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ey = load ptr, ptr %12, align 8, !tbaa !69
  store ptr %i.ey, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store ptr %12, ptr %14, align 8
  %i.ez = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJSt14_List_iteratorImES6_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.s unwind label %bb.v       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.fa = load ptr, ptr %12, align 8, !tbaa !69   ; 3 uses
  %.not100126 = icmp eq ptr %i.fa, %12
  br i1 %.not100126, label %._crit_edge130.thread, label %.lr.ph129

._crit_edge130.thread:                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZNSt7__cxx1110_List_baseImSaImEED2Ev.exit

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %i.fa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fb = load ptr, ptr %.09.i.i, align 8, !tbaa !69 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #17
  %.not.i.i45 = icmp eq ptr %i.fb, %12
  br i1 %.not.i.i45, label %_ZNSt7__cxx1110_List_baseImSaImEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !84

_ZNSt7__cxx1110_List_baseImSaImEED2Ev.exit:       ; preds = %.lr.ph.i.i, %._crit_edge130.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.w

bb.t:                                             ; preds = %bb.o
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.x

.lr.ph129:                                        ; preds = %bb.s, %.lr.ph129
  %.sroa.060.0127 = phi ptr [ %i.fp, %.lr.ph129 ], [ %i.fa, %bb.s ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.060.0127, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !22 ; 3 uses
  %i.fh = sdiv i64 %i.fg, 64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fh
  %i.fj = and i64 %i.fg, -9223372036854775745
  %i.fk = icmp ugt i64 %i.fj, -9223372036854775808
  %storemerge.idx.i.i.i.i.i46 = select i1 %i.fk, i64 -8, i64 0
  %storemerge.i.i.i.i.i47 = getelementptr inbounds i8, ptr %i.fi, i64 %storemerge.idx.i.i.i.i.i46 ; 2 uses
  %i.fl = and i64 %i.fg, 63
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = load i64, ptr %storemerge.i.i.i.i.i47, align 8, !tbaa !22
  %i.fo = or i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %storemerge.i.i.i.i.i47, align 8, !tbaa !22
  %i.fp = load ptr, ptr %.sroa.060.0127, align 8, !tbaa !69 ; 2 uses
  %.not100 = icmp eq ptr %i.fp, %12
  br i1 %.not100, label %.lr.ph.i.i.preheader, label %.lr.ph129, !llvm.loop !85

bb.w:                                             ; preds = %bb.n, %_ZNSt7__cxx1110_List_baseImSaImEED2Ev.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.066.0132, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fq, %.sroa.9.1
  br i1 %.not, label %._crit_edge134.thread185, label %bb.n

bb.x:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.u ], [ %i.fe, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.fc, %bb.t ]
  %i.fr = load ptr, ptr %12, align 8, !tbaa !69   ; 2 uses
  %.not8.i.i50 = icmp eq ptr %i.fr, %12
  br i1 %.not8.i.i50, label %.thread, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %bb.y, %.lr.ph.i.i51
  %.09.i.i52 = phi ptr [ %i.fs, %.lr.ph.i.i51 ], [ %i.fr, %bb.y ] ; 2 uses
  %i.fs = load ptr, ptr %.09.i.i52, align 8, !tbaa !69 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i52, i64 noundef 24) #17
  %.not.i.i53 = icmp eq ptr %i.fs, %12
  br i1 %.not.i.i53, label %.thread, label %.lr.ph.i.i51, !llvm.loop !84

.thread:                                          ; preds = %.lr.ph.i.i51, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %.idx = shl nuw nsw i64 %i.ap, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %.idx) #17
  br label %.body

.body:                                            ; preds = %.thread, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.pn.pn, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.k, %.body
  %.sroa.13.0115 = phi ptr [ %.sroa.13.1, %.body ], [ %.sroa.13.0120, %bb.k ], [ %.sroa.9.0121, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.087.0104 = phi ptr [ %.sroa.087.1, %.body ], [ %.sroa.087.0122, %bb.k ], [ %.sroa.087.0122, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn32.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.cs, %bb.k ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i57 = icmp eq ptr %.sroa.087.0104, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorImSaImEED2Ev.exit58, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ft = ptrtoint ptr %.sroa.13.0115 to i64
  %i.fu = ptrtoint ptr %.sroa.087.0104 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0104, i64 noundef %i.fv) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit58

_ZNSt6vectorImSaImEED2Ev.exit58:                  ; preds = %bb.z, %bb.aa
  call void @_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl32extract_non_manifold_edge_curvesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKSt6vectorISE_IT1_SaISF_EESaISH_EERSE_ISE_ImSaImEESaISN_EEENKUlRNSt7__cxx114listImSM_EERmSV_E_clESU_SV_SV_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !53, !align !54 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %.not.not.i.i.i = icmp eq i64 %i.g, 0           ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %2, align 8                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !65 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.d, !llvm.loop !1

bb.f:                                             ; preds = %bb.b
  %i.m = load i64, ptr %2, align 8, !tbaa !22     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = urem i64 %i.m, %i.o                      ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %i.w = icmp eq i64 %i.m, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.m, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.y, %bb.h ], [ %i.t, %bb.g ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !65 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = urem i64 %i.aa, %i.o
  %.not19.i.i.i.i.i = icmp eq i64 %i.ab, %i.p
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.critedge, !llvm.loop !2

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %i.ac = phi i64 [ %i.i, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ] ; 7 uses
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.t, %bb.g ], [ %i.y, %bb.h ]
  %.sroa.0.016.i.i = load ptr, ptr %.sroa.06.1.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not617.i.i = icmp eq ptr %.sroa.0.016.i.i, null
  br i1 %.not617.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, %bb.j
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.j ], [ %.sroa.0.016.i.i, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ] ; 2 uses
  %.018.i.i = phi i64 [ %i.ag, %bb.j ], [ 1, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ag = add i64 %.018.i.i, 1                    ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.019.i.i, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not6.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit: ; preds = %.lr.ph.i.i, %bb.j
  %.04.i.i = phi i64 [ %i.ag, %bb.j ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.ah = icmp eq i64 %.04.i.i, 2
  br i1 %i.ah, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit
  %i.ai = load i64, ptr %3, align 8, !tbaa !22
  %.not = icmp eq i64 %i.ac, %i.ai
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not.not.i.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.06.0.in.i.i.i24 = phi ptr [ %i.aj, %bb.m ], [ %.sroa.06.0.i.i.i25, %bb.o ]
  %.sroa.06.0.i.i.i25 = load ptr, ptr %.sroa.06.0.in.i.i.i24, align 8, !tbaa !65 ; 4 uses
  %.not.i.i.i26 = icmp eq ptr %.sroa.06.0.i.i.i25, null
  br i1 %.not.i.i.i26, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i25, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.am = icmp eq i64 %i.ac, %i.al
  br i1 %i.am, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.n, !llvm.loop !4

bb.p:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.ap = urem i64 %i.ac, %i.ao                   ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i17, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !22
  %i.aw = icmp eq i64 %i.ac, %i.av
  br i1 %i.aw, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i18

bb.r:                                             ; preds = %bb.s
  %i.ax = icmp eq i64 %i.ac, %i.ba
  br i1 %i.ax, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i18, !llvm.loop !2

.lr.ph.i.i.i.i.i18:                               ; preds = %bb.q, %bb.r
  %.020.i.i.i.i.i19 = phi ptr [ %i.ay, %bb.r ], [ %i.at, %bb.q ]
  %i.ay = load ptr, ptr %.020.i.i.i.i.i19, align 8, !tbaa !65 ; 4 uses
  %.not18.i.i.i.i.i20 = icmp eq ptr %i.ay, null
  br i1 %.not18.i.i.i.i.i20, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !22 ; 2 uses
  %i.bb = urem i64 %i.ba, %i.ao
  %.not19.i.i.i.i.i21 = icmp eq i64 %i.bb, %i.ap
  br i1 %.not19.i.i.i.i.i21, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i.i22, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i22:               ; preds = %bb.s
  br label %.loopexit, !llvm.loop !2

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.r, %bb.o, %bb.q
  %.sroa.06.1.i.i.i23 = phi ptr [ %.sroa.06.0.i.i.i25, %bb.o ], [ %i.at, %bb.q ], [ %i.ay, %bb.r ] ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i
  %.sroa.03.0.in.i.i = phi ptr [ %.sroa.06.1.i.i.i23, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ], [ %.sroa.03.0.i.i, %bb.u ]
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.0.in.i.i, align 8, !tbaa !65 ; 4 uses
  %.not2.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not2.i.i, label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !22
  %i.be = icmp eq i64 %i.ac, %i.bd
  br i1 %i.be, label %bb.t, label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, !llvm.loop !5

_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit: ; preds = %bb.t, %bb.u
  %.sroa.03.0.i.i.lcssa = phi ptr [ null, %bb.t ], [ %.sroa.03.0.i.i, %bb.u ] ; 2 uses
  %.not3447 = icmp eq ptr %.sroa.06.1.i.i.i23, %.sroa.03.0.i.i.lcssa
  br i1 %.not3447, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %.critedge15
  %.sroa.0.048 = phi ptr [ %.sroa.06.1.i.i.i23, %.lr.ph ], [ %i.db, %.critedge15 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !63 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, %i.bh
  br i1 %i.bk, label %.critedge15, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !101, !nonnull !53, !align !54
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !102, !nonnull !53, !align !54 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !56, !nonnull !53, !align !54
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.bv = urem i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57, !nonnull !53, !align !54
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59, !nonnull !53, !align !54
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !22
  %i.ca = udiv i64 %i.bq, %i.bz                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60, !nonnull !53 ; 2 uses
  %i.cd = add i64 %i.ca, 1
  %i.ce = urem i64 %i.cd, 3
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !21 ; 2 uses
  %i.ci = mul nsw i64 %i.ch, %i.ce
  %i.cj = getelementptr [4 x i8], ptr %i.cf, i64 %i.bv ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !50
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = add i64 %i.ca, 2
  %i.co = urem i64 %i.cn, 3
  %i.cp = mul nsw i64 %i.ch, %i.co
  %i.cq = getelementptr [4 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !50
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %i.bj, ptr %i.cu, align 8, !tbaa !22
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !73
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.d, align 8, !tbaa !73
  %i.cx = load i64, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cm
  br i1 %i.cy, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = icmp eq i64 %i.cx, %i.cs
  br i1 %i.cz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr @.str, ptr %i.da, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.da, ptr nonnull @_ZTIPKc, ptr null) #19
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.x
  %storemerge = phi i64 [ %i.cm, %bb.x ], [ %i.cs, %bb.w ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !22
  br label %.loopexit

.critedge15:                                      ; preds = %bb.v
  %i.db = load ptr, ptr %.sroa.0.048, align 8, !tbaa !65 ; 2 uses
  %.not34 = icmp eq ptr %i.db, %.sroa.03.0.i.i.lcssa
  br i1 %.not34, label %.loopexit, label %bb.v, !llvm.loop !97

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i18, %bb.n, %.critedge15, %bb.p, %..loopexit_crit_edge21.i.i.i.i.i22, %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, %bb.z
  br label %bb.b, !llvm.loop !98

.critedge:                                        ; preds = %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, %bb.f, %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit, %bb.k, %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl32extract_non_manifold_edge_curvesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKSt6vectorISE_IT1_SaISF_EESaISH_EERSE_ISE_ImSaImEESaISN_EEENKUlRNSt7__cxx114listImSM_EERmSV_E0_clESU_SV_SV_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !106, !nonnull !53, !align !54 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %.not.not.i.i.i = icmp eq i64 %i.f, 0           ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !65 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.d, !llvm.loop !1

bb.f:                                             ; preds = %bb.b
  %i.l = load i64, ptr %2, align 8, !tbaa !22     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  %i.v = icmp eq i64 %i.l, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.l, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !65 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %i.aa = urem i64 %i.z, %i.n
  %.not19.i.i.i.i.i = icmp eq i64 %i.aa, %i.o
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.critedge, !llvm.loop !2

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %i.ab = phi i64 [ %i.h, %bb.e ], [ %i.l, %bb.g ], [ %i.l, %bb.h ] ; 7 uses
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %.sroa.0.016.i.i = load ptr, ptr %.sroa.06.1.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not617.i.i = icmp eq ptr %.sroa.0.016.i.i, null
  br i1 %.not617.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, %bb.j
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.j ], [ %.sroa.0.016.i.i, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ] ; 2 uses
  %.018.i.i = phi i64 [ %i.af, %bb.j ], [ 1, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.af = add i64 %.018.i.i, 1                    ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.019.i.i, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not6.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit: ; preds = %.lr.ph.i.i, %bb.j
  %.04.i.i = phi i64 [ %i.af, %bb.j ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.ag = icmp eq i64 %.04.i.i, 2
  br i1 %i.ag, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit
  %i.ah = load i64, ptr %3, align 8, !tbaa !22
  %.not = icmp eq i64 %i.ab, %i.ah
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not.not.i.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.06.0.in.i.i.i24 = phi ptr [ %i.ai, %bb.m ], [ %.sroa.06.0.i.i.i25, %bb.o ]
  %.sroa.06.0.i.i.i25 = load ptr, ptr %.sroa.06.0.in.i.i.i24, align 8, !tbaa !65 ; 4 uses
  %.not.i.i.i26 = icmp eq ptr %.sroa.06.0.i.i.i25, null
  br i1 %.not.i.i.i26, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i25, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22
  %i.al = icmp eq i64 %i.ab, %i.ak
  br i1 %i.al, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.n, !llvm.loop !4

bb.p:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %i.ao = urem i64 %i.ab, %i.an                   ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i17, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !22
  %i.av = icmp eq i64 %i.ab, %i.au
  br i1 %i.av, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i18

bb.r:                                             ; preds = %bb.s
  %i.aw = icmp eq i64 %i.ab, %i.az
  br i1 %i.aw, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i18, !llvm.loop !2

.lr.ph.i.i.i.i.i18:                               ; preds = %bb.q, %bb.r
  %.020.i.i.i.i.i19 = phi ptr [ %i.ax, %bb.r ], [ %i.as, %bb.q ]
  %i.ax = load ptr, ptr %.020.i.i.i.i.i19, align 8, !tbaa !65 ; 4 uses
  %.not18.i.i.i.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i.i.i.i20, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.ba = urem i64 %i.az, %i.an
  %.not19.i.i.i.i.i21 = icmp eq i64 %i.ba, %i.ao
  br i1 %.not19.i.i.i.i.i21, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i.i22, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i22:               ; preds = %bb.s
  br label %.loopexit, !llvm.loop !2

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.r, %bb.o, %bb.q
  %.sroa.06.1.i.i.i23 = phi ptr [ %.sroa.06.0.i.i.i25, %bb.o ], [ %i.as, %bb.q ], [ %i.ax, %bb.r ] ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i
  %.sroa.03.0.in.i.i = phi ptr [ %.sroa.06.1.i.i.i23, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ], [ %.sroa.03.0.i.i, %bb.u ]
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.0.in.i.i, align 8, !tbaa !65 ; 4 uses
  %.not2.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not2.i.i, label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !22
  %i.bd = icmp eq i64 %i.ab, %i.bc
  br i1 %i.bd, label %bb.t, label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, !llvm.loop !5

_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit: ; preds = %bb.t, %bb.u
  %.sroa.03.0.i.i.lcssa = phi ptr [ null, %bb.t ], [ %.sroa.03.0.i.i, %bb.u ] ; 2 uses
  %.not3448 = icmp eq ptr %.sroa.06.1.i.i.i23, %.sroa.03.0.i.i.lcssa
  br i1 %.not3448, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit
  %i.be = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %.critedge15
  %.sroa.0.049 = phi ptr [ %.sroa.06.1.i.i.i23, %.lr.ph ], [ %i.da, %.critedge15 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.049, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !63 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, %i.bg
  br i1 %i.bj, label %.critedge15, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !107, !nonnull !53, !align !54
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bi
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !50
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !108, !nonnull !53, !align !54 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56, !nonnull !53, !align !54
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.bu = urem i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57, !nonnull !53, !align !54
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !59, !nonnull !53, !align !54
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !22
  %i.bz = udiv i64 %i.bp, %i.by                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !60, !nonnull !53 ; 2 uses
  %i.cc = add i64 %i.bz, 1
  %i.cd = urem i64 %i.cc, 3
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !21 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.cd
  %i.ci = getelementptr [4 x i8], ptr %i.ce, i64 %i.bu ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !50
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = add i64 %i.bz, 2
  %i.cn = urem i64 %i.cm, 3
  %i.co = mul nsw i64 %i.cg, %i.cn
  %i.cp = getelementptr [4 x i8], ptr %i.ci, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 %i.bi, ptr %i.ct, align 8, !tbaa !22
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull %i.be) #16
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !73
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.c, align 8, !tbaa !73
  %i.cw = load i64, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cl
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = icmp eq i64 %i.cw, %i.cr
  br i1 %i.cy, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr @.str.4, ptr %i.cz, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTIPKc, ptr null) #19
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.x
  %storemerge = phi i64 [ %i.cl, %bb.x ], [ %i.cr, %bb.w ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !22
  br label %.loopexit

.critedge15:                                      ; preds = %bb.v
  %i.da = load ptr, ptr %.sroa.0.049, align 8, !tbaa !65 ; 2 uses
  %.not34 = icmp eq ptr %i.da, %.sroa.03.0.i.i.lcssa
  br i1 %.not34, label %.loopexit, label %bb.v, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i18, %bb.n, %.critedge15, %bb.p, %..loopexit_crit_edge21.i.i.i.i.i22, %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, %bb.z
  br label %bb.b, !llvm.loop !104

.critedge:                                        ; preds = %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, %bb.f, %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE5countERS5_.exit, %bb.k, %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJSt14_List_iteratorImES6_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !79 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !79 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not13.i.i.i.i = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not13.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.010.014.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %.sroa.01.0.copyload.i, %.preheader.i.i.i.i ]
  %i.e = load ptr, ptr %.sroa.010.014.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.f = add nuw nsw i64 %.015.i.i.i.i, 1         ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i.i, label %_ZSt10__distanceImElSt14_List_iteratorIT_ES2_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt10__distanceImElSt14_List_iteratorIT_ES2_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp samesign ugt i64 %.015.i.i.i.i, 1152921504606846974
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i

bb.b:                                             ; preds = %_ZSt10__distanceImElSt14_List_iteratorIT_ES2_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i: ; preds = %_ZSt10__distanceImElSt14_List_iteratorIT_ES2_St18input_iterator_tag.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 3
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i unwind label %bb.c

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i, %.preheader.i.i.i.i
  %.06.i.i811.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.f, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i ]
  %i.j = phi ptr [ null, %.preheader.i.i.i.i ], [ %i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.06.i.i811.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !32
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  store i64 %i.n, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

bb.c:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i6.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #17
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJSt14_List_iteratorImES6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit
  %i.aa = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  ret ptr %i.ab
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !65 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #17
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !45
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail12_Insert_baseImSt4pairIKmmESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb0EEEE15_M_insert_rangeIPKS3_NS_10_AllocNodeISaINS_10_Hash_nodeIS3_Lb0EEEEEEEEvT_SO_RKT0_St17integral_constantIbLb0EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.e) ; 2 uses
  %i.n = extractvalue { i8, i64 } %i.m, 0
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { i8, i64 } %i.m, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.p)
          to label %.lr.ph unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #16 ; 0 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !81
  invoke void @__cxa_rethrow() #19
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.af, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit ] ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.021, i64 16, i1 false)
  %i.z = load i64, ptr %i.k, align 8, !tbaa !74
  %.not.not.i.i.i = icmp eq i64 %i.z, 0
  %.pre38.i.i.i = load i64, ptr %i.y, align 8     ; 2 uses
  br i1 %.not.not.i.i.i, label %.preheader, label %.loopexit.i.i

.preheader:                                       ; preds = %bb.h, %bb.i
  %.sroa.0.0.in.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.i ], [ %i.w, %bb.h ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !65 ; 5 uses
  %.not27.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = icmp eq i64 %.pre38.i.i.i, %i.ab
  br i1 %i.ac, label %.loopexit.i.i, label %.preheader, !llvm.loop !110

.loopexit.i.i:                                    ; preds = %bb.i, %.preheader, %bb.h
  %.sroa.019.3.i.i.i = phi ptr [ null, %bb.h ], [ %.sroa.0.0.i.i.i, %.preheader ], [ %.sroa.0.0.i.i.i, %bb.i ]
  %i.ad = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %.sroa.019.3.i.i.i, i64 noundef %.pre38.i.i.i, ptr noundef nonnull %i.x)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i ; 0 uses

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i: ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #17
  br label %common.resume

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit: ; preds = %.loopexit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.af, %2
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !111

.loopexit:                                        ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit, %bb.a
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !114
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !113

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !64
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.n
  %.072 = phi i8 [ %.2, %bb.n ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ]
  %.05271 = phi ptr [ %.05668, %bb.n ], [ null, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 5 uses
  %.05370 = phi i64 [ %i.l, %bb.n ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi i64 [ %.155, %bb.n ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05668 = phi ptr [ %i.i, %bb.n ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 13 uses
  %i.i = load ptr, ptr %.05668, align 8, !tbaa !65 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05668, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = urem i64 %i.k, %1                        ; 6 uses
  %.not62 = icmp ne ptr %.05271, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %.05271, align 8, !tbaa !65
  store ptr %i.n, ptr %.05668, align 8, !tbaa !65
  store ptr %.05668, ptr %.05271, align 8, !tbaa !65
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %i.o = trunc nuw i8 %.072 to i1
  br i1 %i.o, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %.05271, align 8, !tbaa !65 ; 2 uses
  %.not63 = icmp eq ptr %i.p, null
  br i1 %.not63, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  %i.s = urem i64 %i.r, %1                        ; 2 uses
  %.not64 = icmp eq i64 %i.s, %.05370
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.s
  store ptr %.05271, ptr %i.t, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %.not65 = icmp eq ptr %i.v, null
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !64
  store ptr %i.w, ptr %.05668, align 8, !tbaa !65
  store ptr %.05668, ptr %i.g, align 8, !tbaa !64
  store ptr %i.g, ptr %i.u, align 8, !tbaa !75
  %i.x = load ptr, ptr %.05668, align 8, !tbaa !65
  %.not66 = icmp eq ptr %i.x, null
  br i1 %.not66, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.05469
  store ptr %.05668, ptr %i.y, align 8, !tbaa !75
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !65
  store ptr %i.z, ptr %.05668, align 8, !tbaa !65
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !75
  store ptr %.05668, ptr %i.aa, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.e
  %.155 = phi i64 [ %.05469, %bb.e ], [ %.05469, %bb.m ], [ %i.l, %bb.l ], [ %i.l, %bb.k ]
  %.2 = phi i8 [ 1, %bb.e ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.n
  %i.ab = trunc nuw i8 %.2 to i1
  br i1 %i.ab, label %bb.o, label %._crit_edge.thread

bb.o:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %.05668, align 8, !tbaa !65 ; 2 uses
  %.not60 = icmp eq ptr %i.ac, null
  br i1 %.not60, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.af = urem i64 %i.ae, %1                      ; 2 uses
  %.not61 = icmp eq i64 %i.af, %i.l
  br i1 %.not61, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.af
  store ptr %.05668, ptr %i.ag, align 8, !tbaa !75
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.p, %bb.q, %bb.o, %._crit_edge
  %i.ah = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #17
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge.thread, %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.an, align 8, !tbaa !45
  store ptr %.0.i, ptr %0, align 8, !tbaa !44
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit unwind label %bb.c
end_hunk_0
