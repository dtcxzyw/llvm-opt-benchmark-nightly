Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/contours_approx?download=true
inline.NumInlined: 263
inline.NumDeleted: 128
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv20approximateChainTC89ERKNS_18ContourDataStorageIaLm1024ELm0EEERKNS_6Point_IiEEiRNS0_IS5_Lm1024ELm0EEE:bb.a
  tail call void @llvm.trap() #14
  unreachable

_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = sub nuw nsw i64 %i.ao, %i.aq
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !69, !noalias !59 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i
  %.sink93.i = phi i64 [ %i.an, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ab, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %.sink.in.i = phi ptr [ %i.av, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.aj, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %i.aw = phi ptr [ %i.au, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ai, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %i.ax = phi i64 [ %i.aq, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ae, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ] ; 2 uses
  %i.ay = phi i64 [ %i.am, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.aa, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %i.az = add i64 %i.ay, %.065.i                  ; 2 uses
  %i.ba = lshr i64 %i.az, 10                      ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.ax
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap() #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !19, !noalias !59
  %i.bc = and i64 %.sink93.i, 1023
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20, !noalias !59
  %i.bf = sub nuw nsw i64 %i.ba, %i.ax
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19, !noalias !59
  %i.bi = and i64 %i.az, 1023
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20, !noalias !59
  %i.bl = sext i8 %i.bk to i64                    ; 2 uses
  %i.bm = sext i8 %i.be to i64
  %i.bn = sub nsw i64 %i.bl, %i.bm
  %i.bo = getelementptr i8, ptr @_ZN12_GLOBAL__N_18abs_diffE, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20, !noalias !59
  %.fr = freeze i8 %i.bq                          ; 2 uses
  %.not164 = icmp eq i8 %.fr, 0                   ; 2 uses
  br i1 %.not164, label %switch.early.test, label %bb.l

switch.early.test:                                ; preds = %bb.k
  switch i32 %2, label %bb.r [
    i32 4, label %bb.l
    i32 3, label %bb.l
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.k
  %i.br = sext i8 %.fr to i32                     ; 2 uses
  %.sroa.4.0.insert.ext.i = zext i32 %.sroa.4.064.i to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.062.0.insert.ext.i = zext i32 %.sroa.062.063.i to i64
  %.sroa.062.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.062.0.insert.ext.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %.sroa.43.5
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %.sroa.062.0.insert.insert.i, ptr %i.x, align 8, !noalias !59
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !21, !noalias !59
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %i.br, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !22, !noalias !59
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !71, !noalias !59
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bs = ptrtoint ptr %.sroa.43.5 to i64
  %i.bt = ptrtoint ptr %.sroa.0.5 to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 5 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.o, label %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
          to label %.noexc50.i unwind label %.loopexit.split-lp.i, !noalias !59

.noexc50.i:                                       ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.bw = sdiv exact i64 %i.bu, 24                ; 3 uses
  %i.bx = icmp eq ptr %.sroa.43.5, %.sroa.0.5     ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.bx, i64 1, i64 %i.bw
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 384307168202282325)
  %i.cb = select i1 %i.bz, i64 384307168202282325, i64 %i.ca ; 3 uses
  %.not.i.i.i.i49.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i49.i)
  %i.cc = mul nuw nsw i64 %i.cb, 24
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #13
          to label %.noexc51.i unwind label %.loopexit.i, !noalias !59 ; 5 uses

.noexc51.i:                                       ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bu ; 4 uses
  store i64 %.sroa.062.0.insert.insert.i, ptr %i.ce, align 8, !noalias !59
  %.sroa.6.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx55.i, align 8, !tbaa !21, !noalias !59
  %.sroa.7.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i32 %i.br, ptr %.sroa.7.0..sroa_idx57.i, align 8, !tbaa !22, !noalias !59
  %.sroa.8.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  store i8 0, ptr %.sroa.8.0..sroa_idx59.i, align 4, !tbaa !71, !noalias !59
  br i1 %i.bx, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc51.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cd, %.noexc51.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.5, %.noexc51.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !73, !noalias !59
  %i.cf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %.sroa.43.5
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc51.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.noexc51.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i27.i.i.i.i = icmp eq ptr %.sroa.0.5, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.bu) #15, !noalias !59
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cb
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.m
  %.sroa.0.7 = phi ptr [ %i.cd, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.0.5, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.x, %bb.m ] ; 2 uses
  %.sroa.43.7 = phi ptr [ %i.ch, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.43.5, %bb.m ] ; 2 uses
  %.sroa.26.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 24 ; 4 uses
  br i1 %.not164, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 20
  store i8 1, ptr %i.ci, align 4, !tbaa !77, !noalias !59
  br label %bb.r

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i:                             ; preds = %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %switch.early.test, %bb.q, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i
  %.sroa.0.6 = phi ptr [ %.sroa.0.7, %bb.q ], [ %.sroa.0.7, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.0.5, %switch.early.test ] ; 49 uses
  %.sroa.26.5 = phi ptr [ %.sroa.26.6, %bb.q ], [ %.sroa.26.6, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.26.4, %switch.early.test ] ; 16 uses
  %.sroa.43.6 = phi ptr [ %.sroa.43.7, %bb.q ], [ %.sroa.43.7, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.43.5, %switch.early.test ] ; 16 uses
  %i.cj = phi ptr [ %.sroa.26.6, %bb.q ], [ %.sroa.26.6, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %i.x, %switch.early.test ]
  %i.ck = getelementptr inbounds [8 x i8], ptr @_ZN12_GLOBAL__N_115chainCodeDeltasE, i64 %i.bl ; 2 uses
  %.val42.i = load i32, ptr %i.ck, align 8, !tbaa !78, !noalias !59
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %.val43.i = load i32, ptr %i.cl, align 4, !tbaa !79, !noalias !59
  %i.cm = add nsw i32 %.val42.i, %.sroa.062.063.i
  %i.cn = add nsw i32 %.val43.i, %.sroa.4.064.i
  %i.co = add nuw i64 %.065.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.co, %i.e
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit, label %bb.d, !llvm.loop !33

bb.s:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.5, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.bu) #15, !noalias !59
  br label %common.resume

common.resume:                                    ; preds = %.body.thread, %.body, %bb.s, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.s ], [ %.pn.pn.pn.i, %bb.t ], [ %.pn, %.body ], [ %.pn162, %.body.thread ]
  resume { ptr, i32 } %common.resume.op

_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit: ; preds = %bb.r
  br i1 %i.q, label %.preheader169, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit

.preheader169:                                    ; preds = %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit
  %i.cp = ptrtoint ptr %.sroa.26.5 to i64
  %i.cq = ptrtoint ptr %.sroa.0.6 to i64          ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 8 uses
  %i.cs = sdiv exact i64 %i.cr, 24                ; 31 uses
  %.not205 = icmp eq ptr %.sroa.26.5, %.sroa.0.6
  br i1 %.not205, label %.preheader168, label %.lr.ph.split

.preheader168:                                    ; preds = %bb.aj, %.preheader169
  %.not206 = icmp eq ptr %.sroa.26.5, %.sroa.0.6  ; 2 uses
  br i1 %.not206, label %._crit_edge, label %.lr.ph202

.lr.ph.split:                                     ; preds = %.preheader169, %bb.aj
  %.043194 = phi i64 [ %i.gm, %bb.aj ], [ 0, %.preheader169 ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.043194 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !77, !range !80, !noundef !81
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.aj, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.split
  %10 = load <2 x i32>, ptr %i.ct, align 8, !tbaa !22 ; 4 uses
  %11 = extractelement <2 x i32> %10, i64 0
  %12 = extractelement <2 x i32> %10, i64 1
  br label %bb.w

._crit_edge.i:                                    ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %._crit_edge.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_112calc_supportERKSt6vectorINS_10ApproxItemESaIS1_EEm, ptr noundef nonnull @.str.4, i32 noundef 74) #12
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc
  unreachable

bb.v:                                             ; preds = %.noexc
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.body.thread

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i77
  %.0618.i = phi i64 [ 1, %.lr.ph.i77 ], [ %i.el, %bb.aa ] ; 6 uses
  %.0627.i = phi i32 [ 0, %.lr.ph.i77 ], [ %i.dt, %bb.aa ] ; 2 uses
  %.0636.i = phi i32 [ 0, %.lr.ph.i77 ], [ %i.dw, %bb.aa ] ; 3 uses
  %.not71.i = icmp ult i64 %.043194, %.0618.i
  %.p.v.i = select i1 %.not71.i, i64 %i.cs, i64 0
  %.p.i = sub i64 %.p.v.i, %.0618.i
  %i.dd = add i64 %.0618.i, %.043194              ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.cs
  %i.df = select i1 %i.de, i64 0, i64 %i.cs
  %i.dg = sub nuw i64 %i.dd, %i.df
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !82
  %i.dj = getelementptr [24 x i8], ptr %i.ct, i64 %.p.i ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !82 ; 2 uses
  %i.dl = sub nsw i32 %i.di, %i.dk                ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !83
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !83 ; 2 uses
  %i.dq = sub nsw i32 %i.dn, %i.dp                ; 3 uses
  %i.dr = mul nsw i32 %i.dl, %i.dl
  %i.ds = mul nsw i32 %i.dq, %i.dq
  %i.dt = add nuw nsw i32 %i.ds, %i.dr            ; 3 uses
  %i.du = sub nsw i32 %11, %i.dk
  %i.dv = mul nsw i32 %i.dq, %i.du
  %.neg.i = sub i32 %i.dp, %12
  %.neg72.i = mul i32 %.neg.i, %i.dl
  %i.dw = add i32 %.neg72.i, %i.dv                ; 2 uses
  %i.dx = sitofp i32 %.0636.i to double
  %i.dy = uitofp nneg i32 %i.dt to double
  %i.dz = sitofp i32 %i.dw to double
  %i.ea = sitofp i32 %.0627.i to double
  %i.eb = fneg double %i.ea
  %i.ec = fmul nnan double %i.eb, %i.dz
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dy, double %i.ec)
  %i.ee = fptrunc double %i.ed to float
  %i.ef = bitcast float %i.ee to i32              ; 2 uses
  %i.eg = icmp ugt i64 %.0618.i, 1
  br i1 %i.eg, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not73.i = icmp slt i32 %.0627.i, %i.dt
  br i1 %.not73.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.eh = icmp sgt i32 %.0636.i, 0
  %i.ei = icmp slt i32 %i.ef, 1
  %or.cond.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp slt i32 %.0636.i, 0
  %i.ek = icmp sgt i32 %i.ef, -1
  %or.cond3.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.el = add i64 %.0618.i, 1                     ; 2 uses
  %.not.i78 = icmp ugt i64 %i.el, %i.cs
  br i1 %.not.i78, label %._crit_edge.i, label %bb.w, !llvm.loop !34

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.em = add i64 %.0618.i, -1                    ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !84
  br i1 %i.o, label %.lr.ph.i79.preheader, label %bb.aj

.lr.ph.i79.preheader:                             ; preds = %bb.ab
  %i.eo = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i79

bb.ac:                                            ; preds = %bb.ah
  %i.ep = add i64 %.0675.i, -1                    ; 2 uses
  %.not.i83 = icmp eq i64 %i.ep, 0
  br i1 %.not.i83, label %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %.lr.ph.i79, !llvm.loop !35

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %bb.ac
  %.0656.i = phi i32 [ %i.gi, %bb.ac ], [ 0, %.lr.ph.i79.preheader ] ; 3 uses
  %.0675.i = phi i64 [ %i.ep, %bb.ac ], [ %i.em, %.lr.ph.i79.preheader ] ; 5 uses
  %.not74.i = icmp ult i64 %.043194, %.0675.i
  %.p.v.i80 = select i1 %.not74.i, i64 %i.cs, i64 0
  %.p.i81 = sub i64 %.p.v.i80, %.0675.i
  %i.eq = add i64 %.0675.i, %.043194              ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.cs
  %i.es = select i1 %i.er, i64 0, i64 %i.cs
  %i.et = sub nuw i64 %i.eq, %i.es
  %i.eu = getelementptr [24 x i8], ptr %i.ct, i64 %.p.i81
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %i.et
  %i.ew = load <2 x i32>, ptr %i.eu, align 8, !tbaa !22 ; 2 uses
  %i.ex = load <2 x i32>, ptr %i.ev, align 8, !tbaa !22 ; 2 uses
  %i.ey = shufflevector <2 x i32> %i.ew, <2 x i32> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.ez = sub nsw <2 x i32> %i.ey, %i.eo          ; 4 uses
  %i.fa = shufflevector <2 x i32> %i.ew, <2 x i32> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.fb = sub nsw <2 x i32> %i.fa, %13            ; 4 uses
  %i.fc = or <2 x i32> %i.fb, %i.ez
  %i.fd = icmp eq <2 x i32> %i.fc, zeroinitializer ; 2 uses
  %i.fe = extractelement <2 x i1> %i.fd, i64 0
  %i.ff = extractelement <2 x i1> %i.fd, i64 1
  %or.cond.i82 = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond.i82, label %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i79
  %i.fg = extractelement <2 x i32> %i.ez, i64 0
  %i.fh = extractelement <2 x i32> %i.ez, i64 1
  %i.fi = mul nsw i32 %i.fh, %i.fg
  %i.fj = extractelement <2 x i32> %i.fb, i64 0
  %i.fk = extractelement <2 x i32> %i.fb, i64 1
  %i.fl = mul nsw i32 %i.fk, %i.fj
  %i.fm = add nsw i32 %i.fl, %i.fi
  %i.fn = sitofp i32 %i.fm to double
  %i.fo = sitofp <2 x i32> %i.ez to <2 x double>  ; 2 uses
  %i.fp = sitofp <2 x i32> %i.fb to <2 x double>  ; 2 uses
  %i.fq = fmul nnan <2 x double> %i.fp, %i.fp
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fo, <2 x double> %i.fq) ; 2 uses
  %shift = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.fr, %shift
  %i.fs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ft = tail call double @sqrt(double noundef %i.fs) #16
  %i.fu = fdiv double %i.fn, %i.ft
  %i.fv = fptrunc double %i.fu to float
  %i.fw = fpext float %i.fv to double
  %i.fx = fadd double %i.fw, 1.100000e+00         ; 2 uses
  %i.fy = fptrunc double %i.fx to float           ; 2 uses
  %i.fz = fcmp ult double %i.fx, f0xB690000000000000
  %i.ga = fpext float %i.fy to double
  %i.gb = fcmp ugt double %i.ga, 2.200000e+00
  %or.cond79.i = or i1 %i.fz, %i.gb
  br i1 %or.cond79.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc87 unwind label %bb.ai

.noexc87:                                         ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm, ptr noundef nonnull @.str.4, i32 noundef 131) #12
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc87
  unreachable

bb.ag:                                            ; preds = %.noexc87
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ag
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !20
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body.thread

bb.ah:                                            ; preds = %bb.ad
  %i.gi = bitcast float %i.fy to i32              ; 3 uses
  %i.gj = icmp uge i64 %.0675.i, %i.em
  %.not76.i = icmp slt i32 %.0656.i, %i.gi
  %or.cond80.i = or i1 %i.gj, %.not76.i
  br i1 %or.cond80.i, label %bb.ac, label %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit

_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit: ; preds = %bb.ah, %.lr.ph.i79, %bb.ac
  %.065.lcssa.i = phi i32 [ %i.gi, %bb.ac ], [ %.0656.i, %.lr.ph.i79 ], [ %.0656.i, %bb.ah ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 %.065.lcssa.i, ptr %i.gk, align 8, !tbaa !85
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae, %._crit_edge.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.aj:                                            ; preds = %bb.ab, %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, %.lr.ph.split
  %i.gm = add nuw i64 %.043194, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gm, %i.cs
  br i1 %exitcond.not, label %.preheader168, label %.lr.ph.split, !llvm.loop !36

.lr.ph204:                                        ; preds = %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 20 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 4, !tbaa !77, !range !80, !noundef !81
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = icmp ne i64 %i.gr, 1
  %or.cond.not.peel = select i1 %i.gp, i1 true, i1 %i.gs
  br i1 %or.cond.not.peel, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph204
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !85 ; 2 uses
  %i.gv = getelementptr i8, ptr %.sroa.0.6, i64 %i.cr
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !85
  %.not27.i.peel = icmp sgt i32 %i.gu, %i.gx
  br i1 %.not27.i.peel, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel

_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel: ; preds = %bb.ak
  %i.gy = icmp ugt i64 %i.cs, 1
  %i.gz = sub nuw nsw i64 1, %i.cs
  %i.ha = select i1 %i.gy, i64 1, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !85
  %.not166.peel = icmp sgt i32 %i.gu, %i.hd
  br i1 %.not166.peel, label %bb.al, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel

_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel: ; preds = %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel, %bb.ak
  store i32 0, ptr %i.gt, align 8, !tbaa !85
  store i8 1, ptr %i.gn, align 4, !tbaa !77
  br label %bb.al

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel, %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel, %.lr.ph204
  %exitcond227.peel.not = icmp eq i64 %i.cr, 24
  br i1 %exitcond227.peel.not, label %._crit_edge, label %.peel.next

.lr.ph202:                                        ; preds = %.preheader168, %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit
  %.040200 = phi i64 [ %i.hy, %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit ], [ 0, %.preheader168 ] ; 4 uses
  %i.he = getelementptr [24 x i8], ptr %.sroa.0.6, i64 %.040200 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !84
  %i.hh = lshr i64 %i.hg, 1                       ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !85 ; 2 uses
  %.not7.i = icmp eq i64 %i.hh, 0
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %.lr.ph.i90

bb.am:                                            ; preds = %bb.an
  %i.hk = add nuw i64 %.0312.i, 1
  %exitcond.not.i94 = icmp eq i64 %.0312.i, %i.hh
  br i1 %exitcond.not.i94, label %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %.lr.ph.i90, !llvm.loop !37

.lr.ph.i90:                                       ; preds = %.lr.ph202, %bb.am
  %.0312.i = phi i64 [ %i.hk, %bb.am ], [ 1, %.lr.ph202 ] ; 5 uses
  %.not.i91 = icmp ult i64 %.040200, %.0312.i
  %.p.v.i92 = select i1 %.not.i91, i64 %i.cs, i64 0
  %.p.i93 = sub i64 %.p.v.i92, %.0312.i
  %i.hl = getelementptr [24 x i8], ptr %i.he, i64 %.p.i93
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !85
  %i.ho = icmp sgt i32 %i.hn, %i.hj
  br i1 %i.ho, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i90
  %i.hp = add i64 %.0312.i, %.040200              ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.cs
  %i.hr = select i1 %i.hq, i64 0, i64 %i.cs
  %i.hs = sub nuw i64 %i.hp, %i.hr
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !85
  %i.hw = icmp sgt i32 %i.hv, %i.hj
  br i1 %i.hw, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i90
  store i32 0, ptr %i.hi, align 8, !tbaa !85
  %i.hx = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  store i8 1, ptr %i.hx, align 4, !tbaa !77
  br label %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit

_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit: ; preds = %bb.am, %.lr.ph202, %bb.ao
  %i.hy = add nuw i64 %.040200, 1                 ; 2 uses
  %exitcond225.not = icmp eq i64 %i.hy, %i.cs
  br i1 %exitcond225.not, label %.lr.ph204, label %.lr.ph202, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.aq, %.preheader168, %bb.al
  br i1 %i.n, label %bb.ar, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit

.peel.next:                                       ; preds = %bb.al, %bb.aq
  %.039203 = phi i64 [ %i.ir, %bb.aq ], [ 1, %bb.al ] ; 3 uses
  %i.hz = getelementptr [24 x i8], ptr %.sroa.0.6, i64 %.039203 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 20 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 4, !tbaa !77, !range !80, !noundef !81
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = icmp ne i64 %i.ie, 1
  %or.cond.not = select i1 %i.ic, i1 true, i1 %i.if
  br i1 %or.cond.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.peel.next
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !85 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hz, i64 -8
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !85
  %.not27.i = icmp sgt i32 %i.ih, %i.ij
  br i1 %.not27.i, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread

end_hunk_0
begin_hunk_1_@_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_:bb.a
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !93   ; 4 uses
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #13 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !19
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.am) #15
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !93
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.an, ptr %i.r, align 8, !tbaa !94
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.ap = icmp ult i64 %i.c, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit
  tail call void @llvm.trap() #14
  unreachable

bb.i:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit
  %i.aq = sub nuw nsw i64 %i.c, %i.ao
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.au = load i64, ptr %i.a, align 8, !tbaa !18
  %i.av = and i64 %i.au, 1023
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i64, ptr %1, align 4
  store i64 %i.ax, ptr %i.aw, align 4
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !18
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSNSt14__array_traitsIN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeELm0EE5_TypeE"}
!11 = !{!"_ZTSSt5arrayIN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeELm0EE", !10, i64 0}
!12 = !{!"any p2 pointer", !8, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE", !15, i64 0}
!17 = !{!"_ZTSN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EEE", !11, i64 0, !9, i64 8, !16, i64 16, !9, i64 40}
!18 = !{!17, !9, i64 40}
!19 = !{!8, !8, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!"p1 omnipotent char", !8, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !9, i64 8, !4, i64 16}
!26 = !{!25, !23, i64 0}
!27 = distinct !{!27, !"_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb"}
!28 = distinct !{!28, !27, !"_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!31 = distinct !{!31, !29, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!32 = distinct !{!32, !74}
!33 = distinct !{!33, !74}
!34 = distinct !{!34, !74}
!35 = distinct !{!35, !74}
!36 = distinct !{!36, !74}
!37 = distinct !{!37, !74}
!38 = distinct !{!38, !74}
!39 = distinct !{!39, !74, !86}
!40 = distinct !{!40, !74}
!41 = distinct !{!41, !87}
!42 = distinct !{!42, !74}
!43 = distinct !{!43, !74}
!44 = distinct !{!44, !74}
!45 = distinct !{!45, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_"}
!46 = distinct !{!46, !45, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !45, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !87}
!49 = distinct !{!49, !74}
!50 = !{!"p1 _ZTSN2cv12BlockStorageIaLm1024ELm0EEE", !8, i64 0}
!51 = !{!"_ZTSN2cv18ContourDataStorageIaLm1024ELm0EEE", !50, i64 0, !9, i64 8, !9, i64 16}
!52 = !{!51, !9, i64 16}
!53 = !{!51, !9, i64 8}
!54 = !{!"p1 _ZTSN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EEE", !8, i64 0}
!55 = !{!"_ZTSN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EEE", !54, i64 0, !9, i64 8, !9, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !9, i64 8}
!58 = !{!55, !9, i64 16}
!59 = !{!28}
!60 = !{!51, !50, i64 0}
!61 = !{!"_ZTSNSt14__array_traitsIN2cv12BlockStorageIaLm1024ELm0EE10block_typeELm0EE5_TypeE"}
!62 = !{!"_ZTSSt5arrayIN2cv12BlockStorageIaLm1024ELm0EE10block_typeELm0EE", !61, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE", !65, i64 0}
!67 = !{!"_ZTSN2cv12BlockStorageIaLm1024ELm0EEE", !62, i64 0, !9, i64 8, !66, i64 16, !9, i64 40}
!68 = !{!67, !9, i64 8}
!69 = !{!63, !12, i64 0}
!70 = !{!"bool", !4, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 8, !21, i64 16, i64 4, !22, i64 20, i64 1, !71}
!73 = !{!31, !30}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"_ZTSN2cv6Point_IiEE", !5, i64 0, !5, i64 4}
!76 = !{!"_ZTSN12_GLOBAL__N_110ApproxItemE", !75, i64 0, !9, i64 8, !5, i64 16, !70, i64 20}
!77 = !{!76, !70, i64 20}
!78 = !{!75, !5, i64 0}
!79 = !{!75, !5, i64 4}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!76, !5, i64 0}
!83 = !{!76, !5, i64 4}
!84 = !{!76, !9, i64 8}
!85 = !{!76, !5, i64 16}
!86 = !{!"llvm.loop.peeled.count", i32 1}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!47, !46}
!89 = !{!24, !23, i64 0}
!90 = !{!25, !9, i64 8}
!91 = !{!17, !9, i64 8}
!92 = !{!13, !12, i64 8}
!93 = !{!13, !12, i64 0}
!94 = !{!13, !12, i64 16}
end_hunk_1
