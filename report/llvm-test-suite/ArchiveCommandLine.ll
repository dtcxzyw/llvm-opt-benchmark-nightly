inline.NumInlined: 373
inline.NumDeleted: 76
begin_hunk_0_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a
  br label %common.resume

bb.ar:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.ae
  %.0144 = phi i64 [ 1, %bb.ae ], [ 2, %_ZN11CStringBaseIwEaSERKS0_.exit ] ; 2 uses
  %.0144.a = phi i32 [ 1, %bb.ae ], [ 2, %_ZN11CStringBaseIwEaSERKS0_.exit ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !47  ; 2 uses
  %i.ds = icmp ne i32 %i.dr, %.0144.a
end_hunk_0
begin_hunk_1_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a
bb.ax:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i229, %bb.ar
  %i.ec = phi i32 [ %.pre.i230, %_ZN11CStringBaseIwED2Ev.exit.i229 ], [ %i.dr, %bb.ar ]
  %i.ed = icmp slt i32 %.0144.a, %i.ec
  br i1 %i.ed, label %bb.ay, label %_ZL33AddToCensorFromNonSwitchesStringsiRN9NWildcard7CCensorERK13CObjectVectorI11CStringBaseIwEEN13NRecursedType5EEnumEbj.exit

bb.ay:                                            ; preds = %bb.ax, %bb.bg
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bg ], [ %.0144, %bb.ax ] ; 2 uses
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !45 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  %.0.i.i379 = phi i64 [ 30, %bb.jc ], [ 20, %bb.jb ], [ 10, %bb.ja ]
  %.neg.i.i = phi i64 [ 34, %bb.jc ], [ 44, %bb.jb ], [ 54, %bb.ja ]
  %.highbits.i.i = lshr i64 %i.ajm, %.neg.i.i
  %.not.i54.i = icmp eq i64 %.highbits.i.i, 0
  br i1 %.not.i54.i, label %bb.je, label %.thread.i.i

bb.je:                                            ; preds = %bb.jd
  %i.akc = shl i64 %i.ajm, %.0.i.i379
  br label %.thread.i.thread.i

.thread.i.thread.i:                               ; preds = %bb.je, %bb.ja
end_hunk_2
begin_hunk_3_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a

bb.kf:                                            ; preds = %bb.ke
  %i.aot = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.aot, i64 %.0144
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !45
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
end_hunk_3
