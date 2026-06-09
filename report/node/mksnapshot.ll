inline.NumInlined: 535
inline.NumDeleted: 361
begin_hunk_0_@main:bb.a
  store ptr %i.jl, ptr %i.jm, align 8
  %i.jn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1688), align 8 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN2v88internal18EmbeddedFileWriter18SetEmbeddedVariantEPKc.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN2v817TracingControllerESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.jn, ptr %i.jj, align 8
  br label %_ZN2v88internal18EmbeddedFileWriter18SetEmbeddedVariantEPKc.exit

_ZN2v88internal18EmbeddedFileWriter18SetEmbeddedVariantEPKc.exit: ; preds = %_ZNSt10unique_ptrIN2v817TracingControllerESt14default_deleteIS1_EED2Ev.exit, %bb.as
  %i.jp = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1712), align 16
  store <2 x ptr> %i.jp, ptr %i.jk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.jq = load i32, ptr %i.a, align 4
  %i.jr = icmp sgt i32 %i.jq, 1
  br i1 %i.jr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN2v88internal18EmbeddedFileWriter18SetEmbeddedVariantEPKc.exit
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  br label %bb.au

bb.au:                                            ; preds = %_ZN2v88internal18EmbeddedFileWriter18SetEmbeddedVariantEPKc.exit, %bb.at
  %i.ju = phi ptr [ %i.jt, %bb.at ], [ null, %_ZN2v88internal18EmbeddedFileWriter18SetEmbeddedVariantEPKc.exit ]
  call fastcc void @_ZN12_GLOBAL__N_112GetExtraCodeEPcPKc(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef %i.ju, ptr noundef nonnull @.str.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.jv = load i32, ptr %i.a, align 4
  %i.jw = icmp sgt i32 %i.jv, 2
  br i1 %i.jw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.jz = phi ptr [ %i.jy, %bb.av ], [ null, %bb.au ]
  call fastcc void @_ZN12_GLOBAL__N_112GetExtraCodeEPcPKc(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef %i.jz, ptr noundef nonnull @.str.10)
  %i.ka = call noundef ptr @_ZN2v87Isolate8AllocateEv() #21 ; 7 uses
  %i.kb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1512), align 8, !range !5, !noundef !6
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.ax, label %_ZN12_GLOBAL__N_123MaybeSetCounterFunctionEPN2v87IsolateE.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kd = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.kd, i8 0, i64 32, i1 false)
  store ptr %i.ke, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store ptr %i.ke, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  store i64 0, ptr %i.kh, align 8
  store ptr %i.kd, ptr @_ZN12_GLOBAL__N_112counter_map_B5cxx11E, align 8
  call void @_ZN2v87Isolate18SetCounterFunctionEPFPiPKcE(ptr noundef nonnull align 1 dereferenceable(1) %i.ka, ptr noundef nonnull @"_ZZN12_GLOBAL__N_123MaybeSetCounterFunctionEPN2v87IsolateEEN3$_08__invokeEPKc") #21
  br label %_ZN12_GLOBAL__N_123MaybeSetCounterFunctionEPN2v87IsolateE.exit

_ZN12_GLOBAL__N_123MaybeSetCounterFunctionEPN2v87IsolateE.exit: ; preds = %bb.aw, %bb.ax
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 64000
  store ptr %16, ptr %i.ki, align 8
  %i.kj = call noundef ptr @_ZN2v811ArrayBuffer9Allocator19NewDefaultAllocatorEv() #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @_ZN2v87Isolate12CreateParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %19) #21
  %i.kk = getelementptr inbounds nuw i8, ptr %19, i64 96
  store ptr %i.kj, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 536870912, ptr %i.kl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @_ZN2v815SnapshotCreatorC1EPNS_7IsolateERKNS1_12CreateParamsE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %i.ka, ptr noundef nonnull align 8 dereferenceable(168) %19) #21
  %i.km = load ptr, ptr %17, align 8              ; 3 uses
  %i.kn = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.ko = call { ptr, i32 } @_ZN2v88internal30CreateSnapshotDataBlobInternalENS_15SnapshotCreator20FunctionCodeHandlingEPKcRS1_NS_4base5FlagsINS0_8Snapshot14SerializerFlagEiiEE(i32 noundef 0, ptr noundef %i.km, ptr noundef nonnull align 8 dereferenceable(8) %20, i32 0) #21 ; 2 uses
  %i.kp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1590), align 2, !range !5, !noundef !6
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.ay, label %_ZN12_GLOBAL__N_122CreateSnapshotDataBlobERN2v815SnapshotCreatorEPKc.exit

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_123MaybeSetCounterFunctionEPN2v87IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.kr = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.ks = sub nsw i64 %i.kr, %i.kn
  store i64 %i.ks, ptr %4, align 8
  %i.kt = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.24, double noundef %i.kt) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN12_GLOBAL__N_122CreateSnapshotDataBlobERN2v815SnapshotCreatorEPKc.exit

_ZN12_GLOBAL__N_122CreateSnapshotDataBlobERN2v815SnapshotCreatorEPKc.exit: ; preds = %_ZN12_GLOBAL__N_123MaybeSetCounterFunctionEPN2v87IsolateE.exit, %bb.ay
  %i.ku = extractvalue { ptr, i32 } %i.ko, 0      ; 4 uses
  %i.kv = extractvalue { ptr, i32 } %i.ko, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.kw = call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #21, !noalias !33
  %i.kx = call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #21, !noalias !33
  %i.ky = call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() #21, !noalias !33
  %i.kz = call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() #21, !noalias !33
  store ptr %i.kw, ptr %3, align 8, !alias.scope !33
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.kx, ptr %i.la, align 8, !alias.scope !33
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ky, ptr %i.lb, align 8, !alias.scope !33
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.kz, ptr %i.lc, align 8, !alias.scope !33
  call void @_ZNK2v88internal18EmbeddedFileWriter22MaybeWriteEmbeddedFileEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880) %16, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 544), align 32 ; 2 uses
  %.not = icmp eq ptr %i.ld, null
  br i1 %.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_122CreateSnapshotDataBlobERN2v815SnapshotCreatorEPKc.exit
  %i.le = getelementptr inbounds nuw i8, ptr %i.ka, i64 59016
  %i.lf = load ptr, ptr %i.le, align 8
  call void @_ZN2v88internal23BuiltinsEffectsAnalyzer5WriteEPKc(ptr noundef nonnull align 8 dereferenceable(154168) %i.lf, ptr noundef nonnull %i.ld) #21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN12_GLOBAL__N_122CreateSnapshotDataBlobERN2v815SnapshotCreatorEPKc.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ka, i64 59016
  %i.lh = load ptr, ptr %i.lg, align 8
  %.not33 = icmp eq ptr %i.lh, null
  br i1 %.not33, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN2v88internal23BuiltinsEffectsAnalyzer8TearDownEPNS0_7IsolateE(ptr noundef nonnull %i.ka) #21
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @_ZN2v815SnapshotCreatorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZN2v87Isolate7DisposeEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ka) #21
  call void @_ZN2v87Isolate12CreateParamsD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %.not.i117 = icmp eq ptr %i.kj, null
  br i1 %.not.i117, label %_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v811ArrayBuffer9AllocatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v811ArrayBuffer9AllocatorEEclEPS2_.exit.i: ; preds = %bb.bc
  %i.li = load ptr, ptr %i.kj, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kj) #21, !inline_history !36
  br label %_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bc, %_ZNKSt14default_deleteIN2v811ArrayBuffer9AllocatorEEclEPS2_.exit.i
  %i.ll = load ptr, ptr %18, align 8              ; 3 uses
  %.not131 = icmp eq ptr %i.ll, null              ; 2 uses
  br i1 %.not131, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit
  %i.lm = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.ln = call { ptr, i32 } @_ZN2v88internal30WarmUpSnapshotDataBlobInternalENS_11StartupDataEPKc(ptr %i.ku, i32 %i.kv, ptr noundef nonnull %i.ll) #21 ; 2 uses
  %i.lo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1590), align 2, !range !5, !noundef !6
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.be, label %_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.lq = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.lr = sub nsw i64 %i.lq, %i.lm
  store i64 %i.lr, ptr %2, align 8
  %i.ls = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.33, double noundef %i.ls) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit

_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit: ; preds = %bb.bd, %bb.be
  %i.lt = extractvalue { ptr, i32 } %i.ln, 0      ; 2 uses
  %i.lu = extractvalue { ptr, i32 } %i.ln, 1      ; 2 uses
  %i.lv = icmp eq ptr %i.ku, null
  br i1 %i.lv, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ku) #24
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit, %bb.bf, %_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit
  %.sroa.019.0 = phi ptr [ %i.ku, %_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit ], [ %i.lt, %bb.bf ], [ %i.lt, %_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit ] ; 5 uses
  %.sroa.8.0 = phi i32 [ %i.kv, %_ZNSt10unique_ptrIN2v811ArrayBuffer9AllocatorESt14default_deleteIS2_EED2Ev.exit ], [ %i.lu, %bb.bf ], [ %i.lu, %_ZN12_GLOBAL__N_122WarmUpSnapshotDataBlobEN2v811StartupDataEPKc.exit ] ; 6 uses
  %i.lw = load ptr, ptr @_ZN12_GLOBAL__N_112counter_map_B5cxx11E, align 8 ; 4 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lw, ptr noundef %i.lz)
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef 48) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %.not34 = icmp eq ptr %.sroa.019.0, null
  br i1 %.not34, label %bb.bj, label %bb.bk, !prof !7

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #22
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ma = sext i32 %.sroa.8.0 to i64              ; 3 uses
  %.not.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_118SnapshotFileWriter22MaybeWriteSnapshotFileEN2v84base6VectorIKhEE.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mb = call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef nonnull %i.jc, ptr noundef nonnull @.str.34) #21 ; 29 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.bm, label %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.jc) #21
  call void @exit(i32 noundef 1) #25
  unreachable

_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i.i: ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  %i.md = call i64 @fwrite(ptr nonnull @.str.35, i64 46, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.me = call i64 @fwrite(ptr nonnull @.str.36, i64 25, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mf = call i64 @fwrite(ptr nonnull @.str.37, i64 41, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mg = call i64 @fwrite(ptr nonnull @.str.38, i64 29, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mh = call i64 @fwrite(ptr nonnull @.str.39, i64 36, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mi = call i64 @fwrite(ptr nonnull @.str.40, i64 15, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mj = call i64 @fwrite(ptr nonnull @.str.41, i64 22, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mk = call i64 @fwrite(ptr nonnull @.str.42, i64 64, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.ml = icmp sgt i32 %.sroa.8.0, -1
  br i1 %i.ml, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.lr.ph.i.i.i.i, label %bb.bn, !prof !37

_ZNK2v84base6VectorIKhE6lengthEv.exit.lr.ph.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.8.0, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_118SnapshotFileWriter21WriteSnapshotFileDataEP8_IO_FILEN2v84base6VectorIKhEE.exit.i.i, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.peel.i.i.i.i

_ZNK2v84base6VectorIKhE6lengthEv.exit.us.peel.i.i.i.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr %.sroa.019.0, align 1
  %i.mm = zext i8 %.pre.i.i.i.i to i32
  %i.mn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mb, ptr noundef nonnull @.str.49, i32 noundef %i.mm) #21 ; 0 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i32 %.sroa.8.0, 1
  br i1 %exitcond.peel.not.i.i.i.i, label %_ZN12_GLOBAL__N_118SnapshotFileWriter21WriteSnapshotFileDataEP8_IO_FILEN2v84base6VectorIKhEE.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.peel.i.i.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.i.i.i.i ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.peel.i.i.i.i ] ; 3 uses
  %i.mo = and i64 %indvars.iv.i.i.i.i, 31
  %i.mp = icmp eq i64 %i.mo, 31
  br i1 %i.mp, label %.thread.us.i.i.i.i, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.i.i.i.i

.thread.us.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %fputc8.us.i.i.i.i = call i32 @fputc(i32 10, ptr nonnull %i.mb) ; 0 uses
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.i.i.i.i

_ZNK2v84base6VectorIKhE6lengthEv.exit.us.i.i.i.i: ; preds = %.thread.us.i.i.i.i, %.lr.ph.i.i.i.i
  %fputc9.us.i.i.i.i = call i32 @fputc(i32 44, ptr nonnull %i.mb) ; 0 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 %indvars.iv.i.i.i.i
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i32
  %i.mt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mb, ptr noundef nonnull @.str.49, i32 noundef %i.ms) #21 ; 0 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ma
  br i1 %exitcond.not.i.i.i.i, label %_ZN12_GLOBAL__N_118SnapshotFileWriter21WriteSnapshotFileDataEP8_IO_FILEN2v84base6VectorIKhEE.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

bb.bn:                                            ; preds = %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.50) #22
  unreachable

_ZN12_GLOBAL__N_118SnapshotFileWriter21WriteSnapshotFileDataEP8_IO_FILEN2v84base6VectorIKhEE.exit.i.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.i.i.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit.us.peel.i.i.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit.lr.ph.i.i.i.i
  %fputc.i.i.i.i = call i32 @fputc(i32 10, ptr nonnull %i.mb) ; 0 uses
  %i.mu = call i64 @fwrite(ptr nonnull @.str.43, i64 3, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mb, ptr noundef nonnull @.str.44, i32 noundef %.sroa.8.0) #21 ; 0 uses
  %i.mw = call i64 @fwrite(ptr nonnull @.str.45, i64 36, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mx = call i64 @fwrite(ptr nonnull @.str.46, i64 40, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.my = call i64 @fwrite(ptr nonnull @.str.51, i64 57, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mz = call i64 @fwrite(ptr nonnull @.str.52, i64 16, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.na = call i64 @fwrite(ptr nonnull @.str.53, i64 2, i64 1, ptr nonnull %i.mb) ; 0 uses
  %fputc.i.i.i = call i32 @fputc(i32 10, ptr nonnull %i.mb) ; 0 uses
  %i.nb = call i64 @fwrite(ptr nonnull @.str.54, i64 67, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.nc = call i64 @fwrite(ptr nonnull @.str.55, i64 44, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.nd = call i64 @fwrite(ptr nonnull @.str.53, i64 2, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.ne = call i64 @fwrite(ptr nonnull @.str.56, i64 25, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.nf = call i64 @fwrite(ptr nonnull @.str.57, i64 19, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.ng = call noundef i32 @fclose(ptr noundef nonnull %i.mb) ; 0 uses
  br label %_ZNK12_GLOBAL__N_118SnapshotFileWriter22MaybeWriteSnapshotFileEN2v84base6VectorIKhEE.exit.i

_ZNK12_GLOBAL__N_118SnapshotFileWriter22MaybeWriteSnapshotFileEN2v84base6VectorIKhEE.exit.i: ; preds = %_ZN12_GLOBAL__N_118SnapshotFileWriter21WriteSnapshotFileDataEP8_IO_FILEN2v84base6VectorIKhEE.exit.i.i, %bb.bk
  %.not.i5.i = icmp eq ptr %i.jd, null
  br i1 %.not.i5.i, label %_ZNK12_GLOBAL__N_118SnapshotFileWriter13WriteSnapshotEN2v811StartupDataE.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNK12_GLOBAL__N_118SnapshotFileWriter22MaybeWriteSnapshotFileEN2v84base6VectorIKhEE.exit.i
  %i.nh = call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef nonnull %i.jd, ptr noundef nonnull @.str.34) #21 ; 3 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %bb.bp, label %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i6.i

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.jd) #21
  call void @exit(i32 noundef 1) #25
  unreachable

_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i6.i: ; preds = %bb.bo
  %i.nj = icmp sgt i32 %.sroa.8.0, -1
  br i1 %i.nj, label %_ZNK2v84base6VectorIKhE6lengthEv.exit4.i.i, label %bb.bq, !prof !40

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i6.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.50) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit4.i.i:       ; preds = %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i6.i
  %i.nk = call i64 @fwrite(ptr noundef nonnull readonly %.sroa.019.0, i64 noundef 1, i64 noundef %i.ma, ptr noundef nonnull %i.nh)
  %i.nl = call noundef i32 @fclose(ptr noundef nonnull %i.nh) ; 0 uses
  %.not3.i.i = icmp eq i64 %i.nk, %i.ma
  br i1 %.not3.i.i, label %_ZNK12_GLOBAL__N_118SnapshotFileWriter13WriteSnapshotEN2v811StartupDataE.exit, label %bb.br

bb.br:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit4.i.i
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.58) #21
  %i.nm = call i32 @remove(ptr noundef nonnull %i.jd) #21 ; 0 uses
  call void @exit(i32 noundef 1) #25
  unreachable

_ZNK12_GLOBAL__N_118SnapshotFileWriter13WriteSnapshotEN2v811StartupDataE.exit: ; preds = %_ZNK12_GLOBAL__N_118SnapshotFileWriter22MaybeWriteSnapshotFileEN2v84base6VectorIKhEE.exit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit4.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.019.0) #24
  br i1 %.not131, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK12_GLOBAL__N_118SnapshotFileWriter13WriteSnapshotEN2v811StartupDataE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ll) #24
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_118SnapshotFileWriter13WriteSnapshotEN2v811StartupDataE.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %.not.i119 = icmp eq ptr %i.km, null
  br i1 %.not.i119, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit121, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i120

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i120: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.km) #24
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit121

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit121: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @_ZN2v88internal18EmbeddedFileWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(102880) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.nn = call noundef zeroext i1 @_ZN2v82V87DisposeEv() #21 ; 0 uses
  call void @_ZN2v82V815DisposePlatformEv() #21
  %i.no = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i122 = icmp eq ptr %i.no, null
  br i1 %.not.i122, label %_ZNSt10unique_ptrIN2v88PlatformESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88PlatformEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v88PlatformEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit121
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.no) #21, !inline_history !41
  br label %_ZNSt10unique_ptrIN2v88PlatformESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v88PlatformESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit121, %_ZNKSt14default_deleteIN2v88PlatformEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt10unique_ptrIN2v88PlatformESt14default_deleteIS1_EED2Ev.exit, %bb.ap
  %.0 = phi i32 [ %i.im, %bb.ap ], [ 0, %_ZNSt10unique_ptrIN2v88PlatformESt14default_deleteIS1_EED2Ev.exit ]
  %i.ns = load ptr, ptr %5, align 8               ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.ha
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.bs
  %i.nu = load i64, ptr %i.ha, align 8
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN2v88internal8FlagList23SetFlagsFromCommandLineEPiPPcbNS1_11HelpOptionsE(ptr noundef, ptr noundef, i1 noundef zeroext, i8, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v82V828InitializeICUDefaultLocationEPKcS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88platform18NewDefaultPlatformEiNS0_15IdleTaskSupportENS0_21InProcessStackDumpingESt10unique_ptrINS_17TracingControllerESt14default_deleteIS4_EENS0_12PriorityModeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v82V818InitializePlatformEPNS_8PlatformE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112GetExtraCodeEPcPKc(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %char0, 0
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %2, ptr noundef nonnull %1) ; 0 uses
  %i.d = tail call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #21 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call ptr @__errno_location() #26
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.21, ptr noundef nonnull %1, i32 noundef %i.h) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.k = tail call i64 @ftell(ptr noundef nonnull %i.d) ; 5 uses
  tail call void @rewind(ptr noundef nonnull %i.d)
  %i.l = add i64 %i.k, 1
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #23 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_:bb.a
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IRPKciQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISC_SD_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  store i64 %i.d, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %2, align 4
  store i32 %i.o, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #5

declare { ptr, i32 } @_ZN2v88internal30CreateSnapshotDataBlobInternalENS_15SnapshotCreator20FunctionCodeHandlingEPKcRS1_NS_4base5FlagsINS0_8Snapshot14SerializerFlagEiiEE(i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #2

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal18EmbeddedFileWriter22MaybeWriteEmbeddedFileEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.546", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 102848
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.25) #21 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_ZN2v88internal18EmbeddedFileWriter22GetFileDescriptorOrDieEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.b) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

_ZN2v88internal18EmbeddedFileWriter22GetFileDescriptorOrDieEPKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 102864
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 102872
  %i.i = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal29NewPlatformEmbeddedFileWriterEPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.546") align 8 %2, ptr noundef %i.g, ptr noundef %i.i) #21
  %i.j = load ptr, ptr %2, align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.27) #21, !inline_history !47
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !47
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !47
  %i.u = load ptr, ptr %2, align 8                ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 102824 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 102832 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.d, !prof !40

bb.d:                                             ; preds = %_ZN2v88internal18EmbeddedFileWriter22GetFileDescriptorOrDieEPKc.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #22
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal18EmbeddedFileWriter22GetFileDescriptorOrDieEPKc.exit
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.29) #21, !inline_history !48
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.30) #21, !inline_history !48
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !48
  %i.aj = load ptr, ptr %i.w, align 8
  %i.ak = load ptr, ptr %i.v, align 8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %_ZNK2v88internal18EmbeddedFileWriter22WriteExternalFilenamesEPNS0_30PlatformEmbeddedFileWriterBaseE.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = and i64 %i.ao, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ar = load ptr, ptr %i.v, align 8, !nonnull !6, !noundef !6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.u, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.i to i32
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i32 noundef %i.ax, ptr noundef %i.at) #21, !inline_history !48
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2v88internal18EmbeddedFileWriter22WriteExternalFilenamesEPNS0_30PlatformEmbeddedFileWriterBaseE.exit, label %.lr.ph.i, !llvm.loop !49

_ZNK2v88internal18EmbeddedFileWriter22WriteExternalFilenamesEPNS0_30PlatformEmbeddedFileWriterBaseE.exit: ; preds = %.lr.ph.i, %bb.e
  %i.ay = load ptr, ptr %2, align 8
  call void @_ZNK2v88internal18EmbeddedFileWriter16WriteDataSectionEPNS0_30PlatformEmbeddedFileWriterBaseEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880) %0, ptr noundef %i.ay, ptr noundef %1)
  %i.az = load ptr, ptr %2, align 8
  call void @_ZNK2v88internal18EmbeddedFileWriter16WriteCodeSectionEPNS0_30PlatformEmbeddedFileWriterBaseEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880) %0, ptr noundef %i.az, ptr noundef %1) #21
  %i.ba = load ptr, ptr %2, align 8
  call void @_ZNK2v88internal18EmbeddedFileWriter17WriteFileEpilogueEPNS0_30PlatformEmbeddedFileWriterBaseEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880) %0, ptr noundef %i.ba, ptr noundef %1) #21
  %i.bb = call noundef i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.bc = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal30PlatformEmbeddedFileWriterBaseESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal30PlatformEmbeddedFileWriterBaseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal30PlatformEmbeddedFileWriterBaseEEclEPS2_.exit.i: ; preds = %_ZNK2v88internal18EmbeddedFileWriter22WriteExternalFilenamesEPNS0_30PlatformEmbeddedFileWriterBaseE.exit
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #21, !inline_history !50
  br label %_ZNSt10unique_ptrIN2v88internal30PlatformEmbeddedFileWriterBaseESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal30PlatformEmbeddedFileWriterBaseESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK2v88internal18EmbeddedFileWriter22WriteExternalFilenamesEPNS0_30PlatformEmbeddedFileWriterBaseE.exit, %_ZNKSt14default_deleteIN2v88internal30PlatformEmbeddedFileWriterBaseEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN2v88internal30PlatformEmbeddedFileWriterBaseESt14default_deleteIS2_EED2Ev.exit
  ret void
}

declare void @_ZN2v88internal29NewPlatformEmbeddedFileWriterEPKcS2_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.546") align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal18EmbeddedFileWriter16WriteDataSectionEPNS0_30PlatformEmbeddedFileWriterBaseEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.31) #21
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK2v88internal18EmbeddedFileWriter22EmbeddedBlobDataSymbolB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(102880) %0)
  %i.j = load ptr, ptr %3, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.j) #21
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.q = load i64, ptr %i.o, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK2v88internal18EmbeddedFileWriter22EmbeddedBlobDataSymbolB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(102880) %0)
  %i.s = load ptr, ptr %4, align 8
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.s) #21
  %i.w = load ptr, ptr %4, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK2v88internal18EmbeddedFileWriter22EmbeddedBlobDataSymbolB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(102880) %0)
  %i.ab = load ptr, ptr %5, align 8
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ab) #21
  %i.af = load ptr, ptr %5, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load i32, ptr %i.am, align 8
  call void @_ZN2v88internal18EmbeddedFileWriter35WriteBinaryContentsAsInlineAssemblyEPNS0_30PlatformEmbeddedFileWriterBaseEPKhj(ptr noundef nonnull %1, ptr noundef %i.al, i32 noundef %i.an) #21
  %i.ao = load ptr, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  %i.ar = load ptr, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  ret void
}

declare void @_ZNK2v88internal18EmbeddedFileWriter16WriteCodeSectionEPNS0_30PlatformEmbeddedFileWriterBaseEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK2v88internal18EmbeddedFileWriter17WriteFileEpilogueEPNS0_30PlatformEmbeddedFileWriterBaseEPKNS0_12EmbeddedDataE(ptr noundef nonnull align 8 dereferenceable(102880), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal18EmbeddedFileWriter22EmbeddedBlobDataSymbolB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(102880) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::EmbeddedVector", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 256, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 102856
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.a, i64 256, ptr noundef nonnull @.str.32, ptr noundef %i.d) #21 ; 0 uses
  %i.f = load ptr, ptr %2, align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #21 ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  store ptr %i.n, ptr %0, align 8
  store i64 %i.i, ptr %i.g, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.f, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
end_hunk_1
