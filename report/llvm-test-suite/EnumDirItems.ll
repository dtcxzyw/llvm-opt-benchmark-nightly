begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL17EnumerateDirItemsRKN9NWildcard11CCensorNodeEiiRK11CStringBaseIwERK13CObjectVectorIS4_ER9CDirItemsbP20IEnumDirItemCallbackRS8_R13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.CRecordVector.7, align 8    ; 15 uses
  %11 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 10 uses
  %12 = alloca %class.CObjectVector.0, align 8    ; 14 uses
  %13 = alloca %class.CObjectVector.0, align 8    ; 14 uses
end_hunk_0
begin_hunk_1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !26
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph645, label %.thread490

.lr.ph645:                                        ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 12
end_hunk_1
begin_hunk_2
  br label %.body315

bb.bk:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit, %bb.au
  %.6173 = phi i32 [ 7, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit ], [ %.266, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318 ], [ 7, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296 ], [ 7, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit ], [ 7, %bb.au ] ; 2 uses
  %.5 = phi i32 [ %.2639, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit ], [ %.2., %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318 ], [ %.2639, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296 ], [ %.2639, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit ], [ %.2639, %bb.au ] ; 3 uses
  %i.jj = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
end_hunk_2
begin_hunk_3
  %.pn244.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ab ], [ %.pn244.pn.pn, %.body283 ], [ %.pn244.pn.pn, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.jr = icmp eq ptr %.sroa.0472.1, null
  br i1 %i.jr, label %.body, label %21

21:                                               ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0472.1) #17
  br label %.body

.thread490:                                       ; preds = %bb.cy, %.preheader
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.fv

bb.bp:                                            ; preds = %.lr.ph645, %bb.cy
  %indvars.iv726 = phi i64 [ 0, %.lr.ph645 ], [ %indvars.iv.next727, %bb.cy ] ; 4 uses
end_hunk_3
begin_hunk_4
  br label %.body344

bb.cv:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit358, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit346, %bb.ce, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit359
  %.8175 = phi i32 [ %.267, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit359 ], [ 13, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit346 ], [ 13, %bb.ce ], [ 13, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit358 ] ; 2 uses
  %.8 = phi i32 [ %.6., %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit359 ], [ %.6644, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit346 ], [ %.6644, %bb.ce ], [ %.6644, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit358 ] ; 3 uses
  %i.oe = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
end_hunk_4
begin_hunk_5
  %i.oh = load i32, ptr %i.bs, align 4, !tbaa !26
  %i.oi = sext i32 %i.oh to i64
  %i.oj = icmp slt i64 %indvars.iv.next727, %i.oi
  br i1 %i.oj, label %bb.bp, label %.thread490, !llvm.loop !95

.body344:                                         ; preds = %bb.cl, %bb.cq, %bb.ch, %bb.cu
  %.pn = phi { ptr, i32 } [ %i.od, %bb.cu ], [ %i.mt, %bb.cl ], [ %i.lx, %bb.ch ], [ %i.nu, %bb.cq ] ; 2 uses
end_hunk_5
begin_hunk_6
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #17
  br label %.body

.body:                                            ; preds = %bb.by, %bb.bz, %bb.cf, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit364, %bb.da, %bb.r, %bb.s, %bb.aa, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321, %21
  %.pn244.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn244.pn.pn.pn, %21 ], [ %.pn.pn, %bb.da ], [ %.pn.pn, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit364 ], [ %i.ea, %bb.r ], [ %i.fh, %bb.aa ], [ %i.ea, %bb.s ], [ %.pn244.pn.pn.pn, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321 ], [ %i.lo, %bb.by ], [ %i.lv, %bb.cf ], [ %i.lo, %bb.bz ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %common.resume

.loopexit499:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit, %_ZN11CStringBaseIwED2Ev.exit362
  %.9176 = phi i32 [ %.8175, %_ZN11CStringBaseIwED2Ev.exit362 ], [ %.6173, %_ZN11CStringBaseIwED2Ev.exit ]
  %.10 = phi i32 [ %.8, %_ZN11CStringBaseIwED2Ev.exit362 ], [ %.5, %_ZN11CStringBaseIwED2Ev.exit ] ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %22 = icmp eq i32 %.9176, 0
  br i1 %22, label %.thread487, label %bb.fv

.thread487:                                       ; preds = %.thread, %.loopexit499, %bb.e
  %.12 = phi i32 [ 0, %bb.e ], [ %.10, %.loopexit499 ], [ 0, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !96
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !15, !noalias !96 ; 12 uses
  %i.op = add nsw i32 %i.oo, 1                    ; 7 uses
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i366, label %bb.db
end_hunk_6
begin_hunk_7
  %i.ot = icmp slt i32 %i.oo, -1
  %i.ou = shl nuw nsw i64 %i.os, 2
  %i.ov = select i1 %i.ot, i64 -1, i64 %i.ou
  %23 = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ov) #16, !noalias !96 ; 3 uses
  store ptr %23, ptr %17, align 8, !tbaa !19, !alias.scope !96
  store i32 0, ptr %23, align 4, !tbaa !13, !noalias !96
  store i32 %i.op, ptr %i.or, align 4, !tbaa !22, !alias.scope !96
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i366

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i366:   ; preds = %bb.db, %.thread487
  %.pre.i.i.i451 = phi ptr [ null, %.thread487 ], [ %23, %bb.db ] ; 8 uses
  %i.ow = load ptr, ptr %3, align 8, !tbaa !19, !noalias !96
  br label %bb.dc

end_hunk_7
begin_hunk_8
  br i1 %.not.i.i.i369, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i370, label %bb.dc, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i370:            ; preds = %bb.dc
  %i.pa = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store i32 %i.oo, ptr %i.pa, align 8, !tbaa !15, !alias.scope !96
  %i.pb = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.pc = icmp sgt i32 %i.oo, 63
  %i.pd = lshr i32 %i.op, 1
  %i.pe = icmp sgt i32 %i.oo, 7
  %..i.i447 = select i1 %i.pe, i32 16, i32 4
  %24 = call i32 @llvm.umax.i32(i32 %i.pd, i32 1)
  %.1.i.i449 = select i1 %i.pc, i32 %24, i32 %..i.i447
  %i.pf = add nsw i32 %.1.i.i449, %i.op           ; 3 uses
  %i.pg = add nsw i32 %i.pf, 1                    ; 2 uses
  %i.ph = icmp eq i32 %i.pf, %i.oo
end_hunk_8
begin_hunk_9
  br i1 %exitcond.not.i.i.i459, label %._crit_edge.thread.i.i.i453, label %scalar.ph, !llvm.loop !100

._crit_edge.thread.i.i.i453:                      ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i.i452
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i451) #17
  %.pre.i.i454 = load i32, ptr %i.pa, align 8, !tbaa !15 ; 2 uses
  %.pre738 = add nsw i32 %.pre.i.i454, 1
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge.thread.i.i.i453, %._crit_edge.i.i.i452, %.noexc460
  %.pre735.pre-phi = phi i32 [ %.pre738, %._crit_edge.thread.i.i.i453 ], [ 1, %._crit_edge.i.i.i452 ], [ %i.op, %.noexc460 ]
  %25 = phi i32 [ %.pre.i.i454, %._crit_edge.thread.i.i.i453 ], [ 0, %._crit_edge.i.i.i452 ], [ %i.oo, %.noexc460 ] ; 2 uses
  store ptr %i.pm, ptr %17, align 8, !tbaa !19
  %i.px = sext i32 %25 to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.px
  store i32 0, ptr %i.py, align 4, !tbaa !13
  store i32 %i.pg, ptr %i.pb, align 4, !tbaa !22
end_hunk_9
begin_hunk_10
  br i1 %i.qa, label %common.resume, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i451) #17
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.fu, %bb.df, %bb.dg
end_hunk_10
begin_hunk_11
  resume { ptr, i32 } %common.resume.op

_ZplIwE11CStringBaseIT_ERKS2_S1_.exit:            ; preds = %bb.de, %_ZN11CStringBaseIwEC2ERKS0_.exit.i370
  %.pre-phi = phi i32 [ %.pre735.pre-phi, %bb.de ], [ %i.op, %_ZN11CStringBaseIwEC2ERKS0_.exit.i370 ] ; 2 uses
  %i.qb = phi ptr [ %i.pm, %bb.de ], [ %.pre.i.i.i451, %_ZN11CStringBaseIwEC2ERKS0_.exit.i370 ] ; 2 uses
  %26 = phi i32 [ %25, %bb.de ], [ %i.oo, %_ZN11CStringBaseIwEC2ERKS0_.exit.i370 ]
  %i.qc = sext i32 %26 to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qc
  store i32 42, ptr %i.qd, align 4, !tbaa !13
  store i32 %.pre-phi, ptr %i.pa, align 8, !tbaa !15
  %i.qe = sext i32 %.pre-phi to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qe
  store i32 0, ptr %i.qf, align 4, !tbaa !13
  invoke void @_ZN8NWindows5NFile5NFind12CEnumeratorWC2ERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
end_hunk_11
begin_hunk_12

bb.dj:                                            ; preds = %bb.fn, %_ZN11CStringBaseIwED2Ev.exit372
  %.0187 = phi i32 [ 0, %_ZN11CStringBaseIwED2Ev.exit372 ], [ %i.wa, %bb.fn ] ; 2 uses
  %.13 = phi i32 [ %.12, %_ZN11CStringBaseIwED2Ev.exit372 ], [ %.19, %bb.fn ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i64 0, ptr %i.ra, align 8
  %i.rb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #16
end_hunk_12
begin_hunk_13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %common.resume

bb.fv:                                            ; preds = %.thread490, %bb.d, %.loopexit499, %_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit
  %.21 = phi i32 [ %.20, %_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit ], [ %.10, %.loopexit499 ], [ %i.l, %bb.d ], [ 0, %.thread490 ]
  ret i32 %.21
}

end_hunk_13
