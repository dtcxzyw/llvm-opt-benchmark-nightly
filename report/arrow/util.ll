inline.NumInlined: 6631
inline.NumDeleted: 2675
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not65, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = load <2 x ptr>, ptr %3, align 8, !tbaa !93 ; 15 uses
  %5 = extractelement <2 x ptr> %4, i64 1         ; 16 uses
  %.not.i.i.i.i.i = icmp eq ptr %5, null          ; 5 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !1375 ; 16 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = sub i64 %i.o, %i.p
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %6 = extractelement <2 x ptr> %4, i64 0
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit
  %.06.i.i.i = phi ptr [ %1, %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit ], [ %i.cx, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i ] ; 3 uses
  store ptr %6, ptr %.06.i.i.i, align 8, !tbaa !126
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %5, %i.cc
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i
  store ptr %5, ptr %i.cb, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, %bb.n
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader: ; preds = %.lr.ph.i.i.i.i
  %xtraiter184 = and i64 %i.cy, 7                 ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader
  %7 = insertelement <2 x ptr> %4, ptr null, i64 1
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader
  %.09.i.i.i.i.us.prol = phi ptr [ %i.da, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ] ; 2 uses
  %.068.i.i.i.i.us.prol = phi i64 [ %i.cz, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ %i.cy, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ 0, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ]
  store <2 x ptr> %7, ptr %.09.i.i.i.i.us.prol, align 8, !tbaa !93
  %i.cz = add i64 %.068.i.i.i.i.us.prol, -1       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %.068.i.i.i.i.us.unr = phi i64 [ %i.cy, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.cz, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %i.db = sub i64 %i.r, %2
  %i.dc = icmp ugt i64 %i.db, -8
  br i1 %i.dc, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit
  %8 = insertelement <2 x ptr> %4, ptr null, i64 1
  %9 = insertelement <2 x ptr> %4, ptr null, i64 1
  %10 = insertelement <2 x ptr> %4, ptr null, i64 1
  %11 = insertelement <2 x ptr> %4, ptr null, i64 1
  %12 = insertelement <2 x ptr> %4, ptr null, i64 1
  %13 = insertelement <2 x ptr> %4, ptr null, i64 1
  %14 = insertelement <2 x ptr> %4, ptr null, i64 1
  %15 = insertelement <2 x ptr> %4, ptr null, i64 1
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %xtraiter = and i64 %i.cy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.split.preheader
  store <2 x ptr> %4, ptr %i.n, align 8, !tbaa !93
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i71.prol = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71.prol, label %bb.aa, label %bb.z
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %i.dk = icmp eq i64 %i.cy, 1
  br i1 %i.dk, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new
  %.09.i.i.i.i.us = phi ptr [ %.09.i.i.i.i.us.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new ], [ %i.dt, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ] ; 9 uses
  %.068.i.i.i.i.us = phi i64 [ %.068.i.i.i.i.us.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new ], [ %i.ds, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ]
  store <2 x ptr> %8, ptr %.09.i.i.i.i.us, align 8, !tbaa !93
  %i.dl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 16
  store <2 x ptr> %9, ptr %i.dl, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 32
  store <2 x ptr> %10, ptr %i.dm, align 8, !tbaa !93
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 48
  store <2 x ptr> %11, ptr %i.dn, align 8, !tbaa !93
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 64
  store <2 x ptr> %12, ptr %i.do, align 8, !tbaa !93
  %i.dp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 80
  store <2 x ptr> %13, ptr %i.dp, align 8, !tbaa !93
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 96
  store <2 x ptr> %14, ptr %i.dq, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 112
  store <2 x ptr> %15, ptr %i.dr, align 8, !tbaa !93
  %i.ds = add i64 %.068.i.i.i.i.us, -8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 128 ; 2 uses
  %.not.i.i.i.i.us.7 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.us.7, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, !llvm.loop !2236

.lr.ph.i.i.i.i.split.preheader.new:               ; preds = %.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1
  %.09.i.i.i.i = phi ptr [ %i.ee, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ], [ %.09.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.068.i.i.i.i = phi i64 [ %i.ed, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ], [ %.068.i.i.i.i.unr, %.prol.loopexit ]
  store <2 x ptr> %4, ptr %.09.i.i.i.i, align 8, !tbaa !93
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71, label %bb.ac, label %bb.ab
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store <2 x ptr> %4, ptr %i.dy, align 8, !tbaa !93
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i71.1 = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71.1, label %bb.ae, label %bb.ad
end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i72
  %i.en = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr189
  store ptr %i.en, ptr %i.c, align 8, !tbaa !1292
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %16 = extractelement <2 x ptr> %4, i64 0
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, %.lr.ph.i.i.i78
  %.06.i.i.i79 = phi ptr [ %1, %.lr.ph.i.i.i78 ], [ %i.fl, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89 ] ; 3 uses
  store ptr %16, ptr %.06.i.i.i79, align 8, !tbaa !126
  %i.ep = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i80 = icmp eq ptr %5, %i.eq
  br i1 %.not.i.i.i.i.i.i80, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83
  store ptr %5, ptr %i.ep, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, %bb.af
end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.fm, align 8, !tbaa !80
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !87
  %i.fr = load ptr, ptr %5, align 8, !tbaa !88
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %5) #20, !inline_history !2239
  %i.fu = load ptr, ptr %5, align 8, !tbaa !88
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %5) #20, !inline_history !2239
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit

bb.as:                                            ; preds = %bb.aq
end_hunk_11
begin_hunk_12_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %i.ga, label %bb.av, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, !prof !96

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit

bb.aw:                                            ; preds = %bb.b
end_hunk_12
begin_hunk_13_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.zn, label %.lr.ph.i.i.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.split.us.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.zo = load ptr, ptr %i.zd, align 8, !tbaa !1327, !noalias !2539
  %116 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.zo, i64 0 ; 9 uses
  %xtraiter1151 = and i64 %i.zb, 7                ; 2 uses
  %lcmp.mod1152.not = icmp eq i64 %xtraiter1151, 0
  br i1 %lcmp.mod1152.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol
  %.09.i.i.i.i.i.us.i.i.prol = phi ptr [ %i.zq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ], [ %i.zh, %.lr.ph.i.i.i.i.i.split.us.i.i ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i.prol = phi i64 [ %i.zp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ], [ %i.zb, %.lr.ph.i.i.i.i.i.split.us.i.i ]
  %prol.iter1153 = phi i64 [ %prol.iter1153.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i ]
  store <2 x ptr> %116, ptr %.09.i.i.i.i.i.us.i.i.prol, align 8, !tbaa !93, !noalias !2539
  %i.zp = add i64 %.068.i.i.i.i.i.us.i.i.prol, -1 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i.prol, i64 16 ; 3 uses
  %prol.iter1153.next = add i64 %prol.iter1153, 1 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.zr, label %.loopexit.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i
  %.09.i.i.i.i.i.us.i.i = phi ptr [ %i.aaa, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i ], [ %.09.i.i.i.i.i.us.i.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i = phi i64 [ %i.zz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i ], [ %.068.i.i.i.i.i.us.i.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit ]
  store <2 x ptr> %116, ptr %.09.i.i.i.i.i.us.i.i, align 8, !tbaa !93, !noalias !2539
  %i.zs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 16
  store <2 x ptr> %116, ptr %i.zs, align 8, !tbaa !93, !noalias !2539
  %i.zt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 32
  store <2 x ptr> %116, ptr %i.zt, align 8, !tbaa !93, !noalias !2539
  %i.zu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 48
  store <2 x ptr> %116, ptr %i.zu, align 8, !tbaa !93, !noalias !2539
  %i.zv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 64
  store <2 x ptr> %116, ptr %i.zv, align 8, !tbaa !93, !noalias !2539
  %i.zw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 80
  store <2 x ptr> %116, ptr %i.zw, align 8, !tbaa !93, !noalias !2539
  %i.zx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 96
  store <2 x ptr> %116, ptr %i.zx, align 8, !tbaa !93, !noalias !2539
  %i.zy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 112
  store <2 x ptr> %116, ptr %i.zy, align 8, !tbaa !93, !noalias !2539
  %i.zz = add i64 %.068.i.i.i.i.i.us.i.i, -8      ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i.7 = icmp eq i64 %i.zz, 0
end_hunk_14
begin_hunk_15_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.afx, label %.lr.ph.i.i.i.i.i.split.us.i.i308, label %.lr.ph.i.i.i.i.i.split.i.i249

.lr.ph.i.i.i.i.i.split.us.i.i308:                 ; preds = %.lr.ph.i.i.i.i.i.i.i248
  %i.afy = load ptr, ptr %i.afn, align 8, !tbaa !1327, !noalias !2564
  %117 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.afy, i64 0 ; 9 uses
  %xtraiter1148 = and i64 %i.afl, 7               ; 2 uses
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1148, 0
  br i1 %lcmp.mod1149.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i308, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol
  %.09.i.i.i.i.i.us.i.i310.prol = phi ptr [ %i.aga, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ], [ %i.afr, %.lr.ph.i.i.i.i.i.split.us.i.i308 ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i311.prol = phi i64 [ %i.afz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ], [ %i.afl, %.lr.ph.i.i.i.i.i.split.us.i.i308 ]
  %prol.iter1150 = phi i64 [ %prol.iter1150.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i308 ]
  store <2 x ptr> %117, ptr %.09.i.i.i.i.i.us.i.i310.prol, align 8, !tbaa !93, !noalias !2564
  %i.afz = add i64 %.068.i.i.i.i.i.us.i.i311.prol, -1 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310.prol, i64 16 ; 3 uses
  %prol.iter1150.next = add i64 %prol.iter1150, 1 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.agb, label %.loopexit.i258, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309
  %.09.i.i.i.i.i.us.i.i310 = phi ptr [ %i.agk, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309 ], [ %.09.i.i.i.i.i.us.i.i310.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i311 = phi i64 [ %i.agj, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309 ], [ %.068.i.i.i.i.i.us.i.i311.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit ]
  store <2 x ptr> %117, ptr %.09.i.i.i.i.i.us.i.i310, align 8, !tbaa !93, !noalias !2564
  %i.agc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 16
  store <2 x ptr> %117, ptr %i.agc, align 8, !tbaa !93, !noalias !2564
  %i.agd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 32
  store <2 x ptr> %117, ptr %i.agd, align 8, !tbaa !93, !noalias !2564
  %i.age = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 48
  store <2 x ptr> %117, ptr %i.age, align 8, !tbaa !93, !noalias !2564
  %i.agf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 64
  store <2 x ptr> %117, ptr %i.agf, align 8, !tbaa !93, !noalias !2564
  %i.agg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 80
  store <2 x ptr> %117, ptr %i.agg, align 8, !tbaa !93, !noalias !2564
  %i.agh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 96
  store <2 x ptr> %117, ptr %i.agh, align 8, !tbaa !93, !noalias !2564
  %i.agi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 112
  store <2 x ptr> %117, ptr %i.agi, align 8, !tbaa !93, !noalias !2564
  %i.agj = add i64 %.068.i.i.i.i.i.us.i.i311, -8  ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i312.7 = icmp eq i64 %i.agj, 0
end_hunk_16
begin_hunk_17_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.azs, label %.lr.ph.i.i.i.i.i.split.us.i.i436, label %.lr.ph.i.i.i.i.i.split.i.i400

.lr.ph.i.i.i.i.i.split.us.i.i436:                 ; preds = %.noexc46.i
  %i.azt = load ptr, ptr %45, align 8, !tbaa !1327, !noalias !2650
  %118 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azt, i64 0 ; 9 uses
  %xtraiter1142 = and i64 %i.azi, 7               ; 2 uses
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  br i1 %lcmp.mod1143.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i436, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol
  %.09.i.i.i.i.i.us.i.i438.prol = phi ptr [ %i.azv, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ], [ %i.azm, %.lr.ph.i.i.i.i.i.split.us.i.i436 ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i439.prol = phi i64 [ %i.azu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ], [ %i.azi, %.lr.ph.i.i.i.i.i.split.us.i.i436 ]
  %prol.iter1144 = phi i64 [ %prol.iter1144.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i436 ]
  store <2 x ptr> %118, ptr %.09.i.i.i.i.i.us.i.i438.prol, align 8, !tbaa !93
  %i.azu = add i64 %.068.i.i.i.i.i.us.i.i439.prol, -1 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438.prol, i64 16 ; 3 uses
  %prol.iter1144.next = add i64 %prol.iter1144, 1 ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.azw, label %.loopexit3.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437
  %.09.i.i.i.i.i.us.i.i438 = phi ptr [ %i.baf, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437 ], [ %.09.i.i.i.i.i.us.i.i438.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i439 = phi i64 [ %i.bae, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437 ], [ %.068.i.i.i.i.i.us.i.i439.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit ]
  store <2 x ptr> %118, ptr %.09.i.i.i.i.i.us.i.i438, align 8, !tbaa !93
  %i.azx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 16
  store <2 x ptr> %118, ptr %i.azx, align 8, !tbaa !93
  %i.azy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 32
  store <2 x ptr> %118, ptr %i.azy, align 8, !tbaa !93
  %i.azz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 48
  store <2 x ptr> %118, ptr %i.azz, align 8, !tbaa !93
  %i.baa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 64
  store <2 x ptr> %118, ptr %i.baa, align 8, !tbaa !93
  %i.bab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 80
  store <2 x ptr> %118, ptr %i.bab, align 8, !tbaa !93
  %i.bac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 96
  store <2 x ptr> %118, ptr %i.bac, align 8, !tbaa !93
  %i.bad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 112
  store <2 x ptr> %118, ptr %i.bad, align 8, !tbaa !93
  %i.bae = add i64 %.068.i.i.i.i.i.us.i.i439, -8  ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i440.7 = icmp eq i64 %i.bae, 0
end_hunk_18
begin_hunk_19_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.bbs, label %.lr.ph.i.i.i.i.i.split.us.i60.i, label %.lr.ph.i.i.i.i.i.split.i50.i

.lr.ph.i.i.i.i.i.split.us.i60.i:                  ; preds = %.noexc67.i
  %i.bbt = load ptr, ptr %47, align 8, !tbaa !1327, !noalias !2650
  %119 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bbt, i64 0 ; 9 uses
  %xtraiter1145 = and i64 %i.bbi, 7               ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i60.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol
  %.09.i.i.i.i.i.us.i62.i.prol = phi ptr [ %i.bbv, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ %i.bbm, %.lr.ph.i.i.i.i.i.split.us.i60.i ] ; 2 uses
  %.068.i.i.i.i.i.us.i63.i.prol = phi i64 [ %i.bbu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ %i.bbi, %.lr.ph.i.i.i.i.i.split.us.i60.i ]
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i60.i ]
  store <2 x ptr> %119, ptr %.09.i.i.i.i.i.us.i62.i.prol, align 8, !tbaa !93
  %i.bbu = add i64 %.068.i.i.i.i.i.us.i63.i.prol, -1 ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i.prol, i64 16 ; 3 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.bbw, label %.loopexit.i414, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i
  %.09.i.i.i.i.i.us.i62.i = phi ptr [ %i.bcf, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %.09.i.i.i.i.i.us.i62.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i63.i = phi i64 [ %i.bce, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %.068.i.i.i.i.i.us.i63.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ]
  store <2 x ptr> %119, ptr %.09.i.i.i.i.i.us.i62.i, align 8, !tbaa !93
  %i.bbx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 16
  store <2 x ptr> %119, ptr %i.bbx, align 8, !tbaa !93
  %i.bby = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 32
  store <2 x ptr> %119, ptr %i.bby, align 8, !tbaa !93
  %i.bbz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 48
  store <2 x ptr> %119, ptr %i.bbz, align 8, !tbaa !93
  %i.bca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 64
  store <2 x ptr> %119, ptr %i.bca, align 8, !tbaa !93
  %i.bcb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 80
  store <2 x ptr> %119, ptr %i.bcb, align 8, !tbaa !93
  %i.bcc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 96
  store <2 x ptr> %119, ptr %i.bcc, align 8, !tbaa !93
  %i.bcd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 112
  store <2 x ptr> %119, ptr %i.bcd, align 8, !tbaa !93
  %i.bce = add i64 %.068.i.i.i.i.i.us.i63.i, -8   ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i64.i.7 = icmp eq i64 %i.bce, 0
end_hunk_20
begin_hunk_21_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.bmo, label %.lr.ph.i.i.i.i.i.split.us.i.i486, label %.lr.ph.i.i.i.i.i.split.i.i449

.lr.ph.i.i.i.i.i.split.us.i.i486:                 ; preds = %.noexc15.i
  %i.bmp = load ptr, ptr %37, align 16, !tbaa !1327, !noalias !2688
  %120 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bmp, i64 0 ; 9 uses
  %xtraiter = and i64 %i.bmf, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i486, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol
  %.09.i.i.i.i.i.us.i.i488.prol = phi ptr [ %i.bmr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ], [ %i.bmj, %.lr.ph.i.i.i.i.i.split.us.i.i486 ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i489.prol = phi i64 [ %i.bmq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ], [ %i.bmf, %.lr.ph.i.i.i.i.i.split.us.i.i486 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i486 ]
  store <2 x ptr> %120, ptr %.09.i.i.i.i.i.us.i.i488.prol, align 8, !tbaa !93
  %i.bmq = add i64 %.068.i.i.i.i.i.us.i.i489.prol, -1 ; 2 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %i.bms, label %.loopexit.i458, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487
  %.09.i.i.i.i.i.us.i.i488 = phi ptr [ %i.bnb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487 ], [ %.09.i.i.i.i.i.us.i.i488.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i489 = phi i64 [ %i.bna, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487 ], [ %.068.i.i.i.i.i.us.i.i489.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit ]
  store <2 x ptr> %120, ptr %.09.i.i.i.i.i.us.i.i488, align 8, !tbaa !93
  %i.bmt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 16
  store <2 x ptr> %120, ptr %i.bmt, align 8, !tbaa !93
  %i.bmu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 32
  store <2 x ptr> %120, ptr %i.bmu, align 8, !tbaa !93
  %i.bmv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 48
  store <2 x ptr> %120, ptr %i.bmv, align 8, !tbaa !93
  %i.bmw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 64
  store <2 x ptr> %120, ptr %i.bmw, align 8, !tbaa !93
  %i.bmx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 80
  store <2 x ptr> %120, ptr %i.bmx, align 8, !tbaa !93
  %i.bmy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 96
  store <2 x ptr> %120, ptr %i.bmy, align 8, !tbaa !93
  %i.bmz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 112
  store <2 x ptr> %120, ptr %i.bmz, align 8, !tbaa !93
  %i.bna = add i64 %.068.i.i.i.i.i.us.i.i489, -8  ; 2 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i490.7 = icmp eq i64 %i.bna, 0
end_hunk_22
