inline.NumInlined: 10874
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEi:bb.a
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bd, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !79
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #36, !inline_history !2570
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #36, !inline_history !2570
  br label %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i85 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i85, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.v ], [ %i.bq, %bb.w ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.br, label %bb.x, label %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, !prof !83

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #36
  br label %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.x
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i86 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i86, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bt, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !79
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #36, !inline_history !2571
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #36, !inline_history !2571
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i87 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88

bb.ac:                                            ; preds = %bb.aa
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i89 = phi i32 [ %i.bw, %bb.ab ], [ %i.cg, %bb.ac ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i89, 1
  br i1 %i.ch, label %bb.ad, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit, !prof !83

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #36
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit: ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.ci = load ptr, ptr %6, align 8, !tbaa !52
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ai, label %bb.ae, !prof !55

bb.ae:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #36
  br label %bb.bz

bb.af:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn69 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.ck, %bb.af ]
  call void @_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ci

bb.ai:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !69, !noalias !2578
  %i.cq = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !75, !noalias !2578
  store ptr null, ptr %i.co, align 8, !tbaa !69, !noalias !2578
  store <2 x ptr> %i.cq, ptr %9, align 16, !tbaa !75, !alias.scope !2578
  store ptr null, ptr %i.cm, align 8, !tbaa !492, !noalias !2578
  %i.cr = load ptr, ptr %i.z, align 8, !tbaa !413
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !413
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !75 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !52
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.am, label %bb.ak, !prof !55

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #36
  br label %bb.br

bb.al:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2579 ; 3 uses
  store ptr %i.cz, ptr %10, align 8, !tbaa !2579
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !69 ; 3 uses
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !69
  %.not.i.i.i90 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i90, label %_ZNSt10shared_ptrIN5arrow3ipc7MessageEEC2ERKS3_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i91 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i91, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow3ipc7MessageEEC2ERKS3_.exit

bb.ap:                                            ; preds = %bb.an
  %i.dh = atomicrmw volatile add ptr %i.dd, i32 1 acq_rel, align 4 ; 0 uses
  %.val83.pre = load ptr, ptr %10, align 8, !tbaa !2579
  br label %_ZNSt10shared_ptrIN5arrow3ipc7MessageEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow3ipc7MessageEEC2ERKS3_.exit: ; preds = %bb.am, %bb.ao, %bb.ap
  %.val83 = phi ptr [ %i.cz, %bb.am ], [ %i.cz, %bb.ao ], [ %.val83.pre, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl17GetFlatbufMessageERKSt10shared_ptrINS0_7MessageEE(ptr dead_on_unwind noalias writable align 8 %11, ptr %.val83)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow3ipc7MessageEEC2ERKS3_.exit
  %i.di = load ptr, ptr %11, align 8, !tbaa !52
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.at, label %bb.ar, !prof !55

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %bb.bh

bb.as:                                            ; preds = %_ZNSt10shared_ptrIN5arrow3ipc7MessageEEC2ERKS3_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.at:                                            ; preds = %bb.aq
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2581 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = sext i32 %i.dn to i64
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !139
  %i.ds = icmp ugt i16 %i.dr, 12
  br i1 %i.ds, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %.thread288

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.at
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !139
  %.not.i.i.i92 = icmp eq i16 %i.du, 0
  br i1 %.not.i.i.i92, label %.thread288, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95.a

_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95.a: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %32 = load i32, ptr %i.dm, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds i8, ptr %i.dm, i64 %34 ; 2 uses
  %36 = load i16, ptr %35, align 2, !tbaa !139
  %37 = icmp ugt i16 %36, 12
  br i1 %37, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i93, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i93: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95.a
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %39 = load i16, ptr %38, align 2, !tbaa !139    ; 2 uses
  %.not.i.i.i94 = icmp eq i16 %39, 0
  br i1 %.not.i.i.i94, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95, label %40

40:                                               ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i93
  %41 = zext i16 %39 to i64
  %42 = getelementptr inbounds nuw i8, ptr %i.dm, i64 %41 ; 2 uses
  %43 = load i32, ptr %42, align 4, !tbaa !3
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 %44
  br label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95

_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95: ; preds = %40, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i93, %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95.a
  %46 = phi ptr [ %45, %40 ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i93 ], [ null, %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95.a ]
  invoke void @_ZN5arrow3ipc8internal19GetKeyValueMetadataEPKN22arrow_vendored_private11flatbuffers6VectorINS3_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEEjEEPSt10shared_ptrINS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef %46, ptr noundef nonnull %12)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.ax

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95
  %i.dv = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  store ptr %i.dv, ptr %13, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit101, label %bb.au, !prof !55

bb.au:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #36
  %i.dx = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %.not.i96 = icmp eq ptr %i.dx, null
  br i1 %.not.i96, label %bb.ay, label %bb.av, !prof !55

bb.av:                                            ; preds = %bb.au
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #36
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit95
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.ec = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i107, label %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit, label %bb.bf, !prof !55

_ZN5arrow6StatusD2Ev.exit101:                     ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.ed = load <2 x ptr>, ptr %12, align 16, !tbaa !75
  br label %.thread288

.thread288:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit101, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.at
  %i.ee = phi <2 x ptr> [ splat (ptr null), %bb.at ], [ splat (ptr null), %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ %i.ed, %_ZN5arrow6StatusD2Ev.exit101 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load <2 x ptr>, ptr %9, align 16, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !52
  store <2 x ptr> %i.eg, ptr %i.ef, align 8, !tbaa !75
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.ee, ptr %i.eh, align 8, !tbaa !75
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.phi.trans.insert232 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre233 = load ptr, ptr %.phi.trans.insert232, align 8, !tbaa !69 ; 8 uses
  %.not.i.i = icmp eq ptr %.pre233, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre233, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.ei, align 8, !tbaa !77
  %i.em = getelementptr inbounds nuw i8, ptr %.pre233, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !79
  %i.en = load ptr, ptr %.pre233, align 8, !tbaa !80
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %.pre233) #36, !inline_history !259
  %i.eq = load ptr, ptr %.pre233, align 8, !tbaa !80
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %.pre233) #36, !inline_history !259
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i106 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i106, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i = phi i32 [ %i.el, %bb.bc ], [ %i.ev, %bb.bd ]
  %i.ew = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ew, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre233) #36
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread288, %bb.ay, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.bh

bb.bf:                                            ; preds = %bb.ax
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #36
  br label %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit

_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit: ; preds = %bb.ax, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.bq

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar
  %i.fa = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i108, label %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit109, label %bb.bi, !prof !55

bb.bi:                                            ; preds = %bb.bh
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !56, !range !67, !noundef !68
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit109, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #36
  br label %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit109

_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit109: ; preds = %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.fe = load ptr, ptr %i.da, align 8, !tbaa !69 ; 8 uses
  %.not.i.i110 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i110, label %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit109
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 4 uses
  %i.fg = load atomic i64, ptr %i.ff acquire, align 8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 4294967297
  %i.fi = trunc i64 %i.fg to i32                  ; 2 uses
  br i1 %i.fh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.ff, align 8, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !79
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !80
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #36, !inline_history !2583
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #36, !inline_history !2583
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i111 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i111, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fr = add nsw i32 %i.fi, -1
  store i32 %i.fr, ptr %i.ff, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i112

bb.bo:                                            ; preds = %bb.bm
  %i.fs = atomicrmw volatile add ptr %i.ff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i112

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i112: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i113 = phi i32 [ %i.fi, %bb.bn ], [ %i.fs, %bb.bo ]
  %i.ft = icmp eq i32 %.0.i.i.i.i113, 1
  br i1 %i.ft, label %bb.bp, label %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i112
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #36
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit109, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i112, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %.pre234 = load ptr, ptr %i.cn, align 8, !tbaa !69
  br label %bb.br

bb.bq:                                            ; preds = %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit, %bb.as
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEED2Ev.exit ], [ %i.dk, %bb.as ]
  call void @_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.by

bb.br:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ak
  %i.fu = phi ptr [ %.pre234, %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.cp, %bb.ak ] ; 8 uses
  %.not.i.i114 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i114, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.fv, align 8, !tbaa !77
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !79
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #36, !inline_history !257
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !80
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #36, !inline_history !257
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i115 = icmp eq i8 %i.gg, 0
end_hunk_0
begin_hunk_1_@_ZNO5arrow6detail16MarkNextFinishedINS_6FutureISt10shared_ptrINS_11RecordBatchEEEES6_Lb0ELb0EEclERKNS_6ResultIS5_EE:bb.a

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #40
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i, %bb.b, %bb.d, %bb.e
  invoke void @_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEE12MarkFinishedENS_6ResultIS3_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.s, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !79
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #36, !inline_history !258
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #36, !inline_history !258
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i3 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.l ], [ %i.af, %bb.m ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.n, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, !prof !83

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !52   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !85

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %bb.g
  %i.ah = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.o, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.o
  ret void

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #36
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !52
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !83

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !76
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !104    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !76
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.m = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !76
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16ReadDictionariesEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr.849", align 16 ; 6 uses
  %3 = alloca %"class.std::vector.904", align 8   ; 20 uses
  %4 = alloca %"class.arrow::Result.859", align 8 ; 14 uses
  %5 = alloca %"struct.arrow::ipc::internal::FileBlock", align 8 ; 5 uses
  %6 = alloca %"class.arrow::Result.177", align 8 ; 11 uses
  %7 = alloca %"class.std::function.855", align 8 ; 10 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.val42 = load ptr, ptr %i.a, align 8, !tbaa !415 ; 4 uses
  %i.b = load i32, ptr %.val42, align 4, !tbaa !3
  %i.c = sext i32 %i.b to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val42, i64 %i.d ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !139
  %i.g = icmp ugt i16 %i.f, 8
  br i1 %i.g, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %bb.b

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i16, ptr %i.h, align 2, !tbaa !139  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i.i, label %.thread92, label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit

.thread92:                                        ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.l = zext i16 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !2559 ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow3ipc7MessageEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #38
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow3ipc7MessageEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit
  %.not.i.i.i.i45 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i45, label %.thread91, label %.thread

.thread91:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow3ipc7MessageEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow3ipc7MessageEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.v = shl nuw nsw i64 %i.r, 4                  ; 3 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #39 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !2933
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.v, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.w, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !2936
  store ptr %scevgep.i.i.i.i.i, ptr %i.y, align 8, !tbaa !2937
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.critedge41

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph: ; preds = %.thread92, %.thread91, %.thread
  %i.ac = phi ptr [ %i.z, %.thread ], [ %i.k, %.thread92 ], [ %i.u, %.thread91 ] ; 5 uses
  %i.ad = phi ptr [ %i.y, %.thread ], [ %i.j, %.thread92 ], [ %i.t, %.thread91 ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47

bb.c:                                             ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !415 ; 3 uses
  %i.aj = load i32, ptr %.val, align 4, !tbaa !3
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.val, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !139
  %i.ao = icmp ugt i16 %i.an, 8
  br i1 %i.ao, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47, label %.critedge41, !llvm.loop !2938

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.ap = phi ptr [ %i.e, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph ], [ %i.am, %bb.c ]
  %.val71 = phi ptr [ %.val42, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47.lr.ph ], [ %.val, %bb.c ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !139 ; 2 uses
  %.not.i.i.i.i48 = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i.i48, label %.critedge41, label %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i49

_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i49: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i47
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !2559
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv, %i.ay
  br i1 %i.az, label %bb.d, label %.critedge41

bb.d:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %.val43 = load i64, ptr %i.ae, align 8
  %9 = load i32, ptr %.val71, align 4, !tbaa !3, !noalias !2939
  %i.ba = sext i32 %9 to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %.val71, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !139, !noalias !2939 ; 2 uses
  %.not.i.i.i.i52 = icmp ne i16 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i52)
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3, !noalias !2939
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = mul nuw nsw i64 %indvars.iv, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123FileBlockFromFlatbufferEPKN3org6apache5arrow7flatbuf5BlockEl(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull readonly %i.bm, i64 noundef %.val43)
          to label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit unwind label %bb.f

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit: ; preds = %bb.d
  %i.bn = load ptr, ptr %4, align 8, !tbaa !52
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.h, label %bb.e, !prof !55

bb.e:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.critedge unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.g:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.h:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2592
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl20ReadMessageFromBlockERKNS0_8internal9FileBlockERKSt8functionIFNS_6StatusEPKvPNS_2io16RandomAccessFileEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.ag, align 8, !tbaa !2021 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bv = load ptr, ptr %6, align 8, !tbaa !52
  %i.bw = icmp eq ptr %i.bv, null                 ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.l, !prof !55

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit56 unwind label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !2021 ; 2 uses
  %.not.i57 = icmp eq ptr %i.by, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ae

bb.p:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  %i.cd = load i64, ptr %i.ah, align 8, !tbaa !264, !noalias !2948
  store i64 %i.cd, ptr %8, align 8, !tbaa !264, !alias.scope !2948
  store ptr null, ptr %i.ah, align 8, !tbaa !264, !noalias !2948
  %i.ce = load ptr, ptr %3, align 8, !tbaa !2933
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc60 unwind label %bb.ac

.noexc60:                                         ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvars.iv ; 3 uses
  %i.cg = load ptr, ptr %2, align 16, !tbaa !264
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !69 ; 8 uses
  %i.ck = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !75
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !69
  store <2 x ptr> %i.ck, ptr %2, align 16, !tbaa !75
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !264
  %.not.i.i.i.i59 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i59, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.cl, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !79
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #36, !inline_history !2949
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #36, !inline_history !2949
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.u ], [ %i.cy, %bb.v ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.w, label %bb.x, !prof !83

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #36
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.da = load ptr, ptr %8, align 8, !tbaa !264   ; 3 uses
  %.not.i61 = icmp eq ptr %i.da, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i: ; preds = %bb.x
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.da) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 8) #37
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN5arrow6StatusC2ERKS0_.exit56

_ZN5arrow6StatusC2ERKS0_.exit56:                  ; preds = %bb.l, %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit
  %i.db = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !55

bb.y:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit56
  %i.dd = load ptr, ptr %i.ah, align 8, !tbaa !264 ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i62, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i: ; preds = %bb.y
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 8) #37
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19DoPreBufferMetadataERKSt6vectorIiSaIiEE:bb.a
  store ptr %i.hm, ptr %i.gr, align 8, !tbaa !69, !alias.scope !3045
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !445, !noalias !3045 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !3045
  %.not.i.i.i45 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i45, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i: ; preds = %bb.by
  %i.hn = load ptr, ptr %.pre.i.i, align 8, !tbaa !80, !noalias !3045
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !3045
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i) #36, !noalias !3045, !inline_history !3046
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i

bb.bz:                                            ; preds = %bb.bw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %5, align 8, !tbaa !445, !noalias !3045 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i4.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i: ; preds = %bb.ca
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !80, !noalias !3045
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !3045
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(72) %i.hs) #36, !noalias !3045, !inline_history !3046
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i, %bb.ca, %bb.bz
  %.pn.i.i = phi { ptr, i32 } [ %i.hq, %bb.bz ], [ %i.hr, %bb.ca ], [ %i.hr, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !3045
  br label %.body

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !3045
  %.not.i.i.i.i.i47 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i47, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !3039
  %.not.i.i.i.i.i.i48 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i48, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !3039
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hw, align 4, !tbaa !3, !noalias !3039
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.ia = atomicrmw volatile add ptr %i.hw, i32 1 acq_rel, align 4, !noalias !3039 ; 0 uses
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i: ; preds = %bb.cd, %bb.cc, %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i
  %.val9.i = load ptr, ptr %24, align 8, !tbaa !413, !noalias !3039
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3039
  %i.ib = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39
          to label %bb.ce unwind label %bb.cg, !noalias !3039 ; 6 uses

bb.ce:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store ptr %1, ptr %i.ic, align 8, !noalias !3039
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i32 %i.hk, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !3039
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19DoPreBufferMetadataERKSt6vectorIiSaIiEEEUlvE_NSA_17PassthruOnFailureISM_EEEEEEEE, i64 16), ptr %i.ib, align 8, !tbaa !80, !noalias !3039
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  store ptr %i.hl, ptr %i.id, align 8, !tbaa !413, !noalias !3039
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store ptr %i.hm, ptr %i.ie, align 8, !tbaa !69, !noalias !3039
  store ptr %i.ib, ptr %3, align 8, !tbaa !447, !noalias !3039
  invoke void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val9.i, ptr noundef nonnull %3, i32 0, ptr null)
          to label %bb.cf unwind label %bb.ch, !noalias !3039

bb.cf:                                            ; preds = %bb.ce
  %i.if = load ptr, ptr %3, align 8, !tbaa !447, !noalias !3039 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i49, label %bb.ci, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %bb.cf
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !80, !noalias !3039
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !3039
  call void %i.ii(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.if) #36, !noalias !3039, !inline_history !3047
  br label %bb.ci

bb.cg:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i

bb.ch:                                            ; preds = %bb.ce
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.il = load ptr, ptr %3, align 8, !tbaa !447, !noalias !3039 ; 3 uses
  %.not.i.i8.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i8.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i9.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i9.i.i: ; preds = %bb.ch
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !80, !noalias !3039
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !noalias !3039
  call void %i.io(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.il) #36, !noalias !3039, !inline_history !3047
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i9.i.i, %bb.ch, %bb.cg
  %.sroa.5.0.i.i = phi ptr [ %i.hm, %bb.cg ], [ null, %bb.ch ], [ null, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i9.i.i ]
  %.pn.i10.i = phi { ptr, i32 } [ %i.ij, %bb.cg ], [ %i.ik, %bb.ch ], [ %i.ik, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i9.i.i ]
  call fastcc void @_ZN5arrow6FutureINS_8internal5EmptyEE20WrapResultOnComplete8CallbackINS3_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19DoPreBufferMetadataERKSt6vectorIiSaIiEEEUlvE_NS3_17PassthruOnFailureISF_EEEEED2Ev(ptr %.sroa.5.0.i.i) #36, !noalias !3039
  br label %.body

bb.ci:                                            ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3039
  %i.ip = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiN5arrow6FutureISt10shared_ptrINS2_3ipc7MessageEEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRiRS8_EEES0_INSB_14_Node_iteratorIS9_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.gs, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE7emplaceIJRiRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.cp ; 0 uses

_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE7emplaceIJRiRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit: ; preds = %bb.ci
  %i.iq = load ptr, ptr %i.gr, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i50 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i50, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE7emplaceIJRiRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.ir, align 8, !tbaa !77
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !79
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !80
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #36, !inline_history !2571
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !80
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #36, !inline_history !2571
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit

bb.cl:                                            ; preds = %bb.cj
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i51 = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i.i51, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

bb.cn:                                            ; preds = %bb.cl
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i53 = phi i32 [ %i.iu, %bb.cm ], [ %i.je, %bb.cn ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i53, 1
  br i1 %i.jf, label %bb.co, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit, !prof !83

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #36
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE7emplaceIJRiRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.054.060, i64 4 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.go
  br i1 %i.jh, label %._crit_edge, label %bb.bw

bb.cp:                                            ; preds = %bb.ci
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.ji, %bb.cp ], [ %.pn.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ], [ %.pn.i10.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i ]
  call void @_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  br label %common.resume

bb.cq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19AddDictionaryRangesEPSt6vectorINS_2io9ReadRangeESaIS5_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.859", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !415 ; 3 uses
  %i.b = load i32, ptr %.val36, align 4, !tbaa !3
  %i.c = sext i32 %i.b to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val36, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !139
  %i.g = icmp ugt i16 %i.f, 8
  br i1 %i.g, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.lr.ph, label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.lr.ph: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !415 ; 3 uses
  %i.l = load i32, ptr %.val, align 4, !tbaa !3
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %.val, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !139
  %i.q = icmp ugt i16 %i.p, 8
  br i1 %i.q, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %.critedge, !llvm.loop !3048

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.e, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.lr.ph ], [ %i.o, %bb.b ]
  %.val38 = phi ptr [ %.val36, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.lr.ph ], [ %.val, %bb.b ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i16, ptr %i.s, align 2, !tbaa !139  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i.i.i, label %.critedge, label %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i

_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.val38, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !2559
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.val19 = load i64, ptr %i.h, align 8
  %4 = load i32, ptr %.val38, align 4, !tbaa !3, !noalias !3049
  %i.ac = sext i32 %4 to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %.val38, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !139, !noalias !3049 ; 2 uses
  %.not.i.i.i.i22 = icmp ne i16 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val38, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !3049
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = mul nuw nsw i64 %indvars.iv, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123FileBlockFromFlatbufferEPKN3org6apache5arrow7flatbuf5BlockEl(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull readonly %i.ao, i64 noundef %.val19)
  %i.ap = load ptr, ptr %3, align 8, !tbaa !52
  %i.aq = icmp eq ptr %i.ap, null                 ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  %.sroa.031.0.copyload = load i64, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %.sroa.633.0.copyload = load i64, ptr %.sroa.633.0..sroa_idx, align 8, !tbaa !105
  %i.as = sext i32 %.sroa.5.0.copyload to i64
  %i.at = add nsw i64 %.sroa.633.0.copyload, %i.as ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !991 ; 5 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !251
  %.not.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %.sroa.031.0.copyload, ptr %i.au, align 8, !tbaa !105
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !991
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %2, align 8, !tbaa !250   ; 4 uses
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775792
  br i1 %i.bb, label %bb.i, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bc = ashr exact i64 %i.ba, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i.i23 = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i23)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #39
          to label %.noexc24 unwind label %.loopexit ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 3 uses
  store i64 %.sroa.031.0.copyload, ptr %i.bj, align 8, !tbaa !105
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx29, align 8, !tbaa !105
  %i.bk = icmp sgt i64 %i.ba, 0
  br i1 %i.bk, label %bb.j, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.j, %.noexc24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #37
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bi, ptr %2, align 8, !tbaa !250
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !991
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bm, ptr %i.k, align 8, !tbaa !251
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.g, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d
  %i.bn = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i25, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.l, !prof !55

bb.l:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !56, !range !67, !noundef !68
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %i.aq, label %bb.b, label %.loopexit35

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn17 = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.br = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.br, null
  br i1 %.not.i.i26, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit27, label %bb.o, !prof !55

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !56, !range !67, !noundef !68
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit27, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit27

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit27: ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn17

.critedge:                                        ; preds = %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !3052
  br label %.loopexit35

.loopexit35:                                      ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl17AddMetadataRangesERKSt6vectorIiSaIiEEPS3_INS_2io9ReadRangeESaIS9_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1, ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.859", align 8 ; 12 uses
  %i.a = icmp eq ptr %.0.val, %.8.val
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 4 ; 2 uses
  %i.h = icmp eq ptr %i.g, %.8.val
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.07.012 = phi ptr [ %.0.val, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %.sroa.07.012, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.val = load i64, ptr %i.b, align 8
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !415 ; 3 uses
  %i.j = load i32, ptr %.val21, align 4, !tbaa !3, !noalias !3055
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %.val21, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !139, !noalias !3055 ; 2 uses
  %.not.i.i.i.i = icmp ne i16 %i.o, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !3055
end_hunk_2
begin_hunk_3_@_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !76
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA38_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !76
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvENS0_3ipc12_GLOBAL__N_132WholeIpcFileRecordBatchGeneratorEE9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future.843") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::internal::FnOnce.595", align 8 ; 6 uses
  %3 = alloca %"struct.arrow::Future<std::shared_ptr<arrow::ipc::Message>>::WrapResultOnComplete::Callback.1037", align 8 ; 8 uses
  %4 = alloca %"class.std::__shared_ptr.112", align 8 ; 6 uses
  %5 = alloca %"class.std::unique_ptr.512", align 8 ; 7 uses
  %6 = alloca %"struct.arrow::Future<std::shared_ptr<arrow::ipc::Message>>::ThenOnComplete.1036", align 8 ; 7 uses
  %7 = alloca %"class.arrow::internal::FnOnce.595", align 8 ; 6 uses
  %8 = alloca %"struct.arrow::Future<std::shared_ptr<arrow::ipc::Message>>::WrapResultOnComplete::Callback.1016", align 8 ; 8 uses
  %9 = alloca %"class.std::__shared_ptr.112", align 8 ; 6 uses
  %10 = alloca %"class.std::unique_ptr.512", align 8 ; 7 uses
  %11 = alloca %"struct.arrow::Future<std::shared_ptr<arrow::ipc::Message>>::ThenOnComplete.1015", align 8 ; 8 uses
  %12 = alloca %"class.arrow::internal::FnOnce.595", align 8 ; 6 uses
  %13 = alloca %"struct.arrow::Future<>::WrapResultOnComplete::Callback.1013", align 8 ; 8 uses
  %14 = alloca %"class.std::__shared_ptr.112", align 8 ; 6 uses
  %15 = alloca %"class.std::unique_ptr.512", align 8 ; 7 uses
  %16 = alloca %"struct.arrow::Future<>::ThenOnComplete.1012", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::FnOnce.595", align 8 ; 6 uses
  %18 = alloca %"struct.arrow::Future<std::vector<arrow::Result<std::shared_ptr<arrow::ipc::Message>>>>::WrapResultOnComplete::Callback.1005", align 8 ; 8 uses
  %19 = alloca %"class.std::__shared_ptr.112", align 8 ; 6 uses
  %20 = alloca %"class.std::unique_ptr.512", align 8 ; 7 uses
  %21 = alloca %"struct.arrow::Future<std::vector<arrow::Result<std::shared_ptr<arrow::ipc::Message>>>>::ThenOnComplete", align 8 ; 7 uses
  %22 = alloca %"class.arrow::Future.949", align 8 ; 6 uses
  %23 = alloca %"class.std::vector.944", align 8  ; 16 uses
  %24 = alloca %"class.arrow::Result.859", align 8 ; 11 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %26 = alloca %"struct.arrow::ipc::internal::FileBlock", align 8 ; 5 uses
  %27 = alloca %"class.arrow::Future.835", align 16 ; 7 uses
  %28 = alloca %"class.arrow::Future.949", align 16 ; 10 uses
  %29 = alloca %"class.std::vector.944", align 8  ; 9 uses
  %30 = alloca %"class.arrow::Future.949", align 16 ; 7 uses
  %31 = alloca %"class.arrow::Future.949", align 8 ; 7 uses
  %32 = alloca %"class.arrow::Future", align 16   ; 9 uses
  %33 = alloca %"class.arrow::Result", align 8    ; 9 uses
  %34 = alloca %"class.std::shared_ptr.23", align 8 ; 6 uses
  %35 = alloca %"class.arrow::Result.859", align 8 ; 11 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %37 = alloca %"struct.arrow::ipc::internal::FileBlock", align 8 ; 5 uses
  %38 = alloca %"class.arrow::Future.835", align 8 ; 7 uses
  %39 = alloca %"class.arrow::Future.835", align 8 ; 10 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !2666  ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %31), !noalias !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %33), !noalias !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %36), !noalias !3145
  %.val80.i.i.i = load ptr, ptr %.val, align 8, !tbaa !332, !noalias !3146 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val81.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !69, !noalias !3146 ; 22 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val81.i.i.i, null ; 5 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val81.i.i.i, i64 8 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !3146
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit.i.i.i

_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !413, !noalias !3146
  %.not.i.i.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i, label %bb.e, label %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit.i.i.i

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.val80.i.i.i, i64 384
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !413  ; 2 uses
  %.not.i.i98.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i98.not.i.i.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.g, align 8, !tbaa !413, !noalias !3146
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val80.i.i.i, i64 392
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !69, !noalias !3146 ; 3 uses
  %.not.i.i.i.i99.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i99.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !3146
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !69, !noalias !3146
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.t = phi ptr [ %i.n, %bb.g ], [ %i.n, %bb.i ], [ %.pr.pre.i.i.i.i.i.i.i, %bb.j ] ; 8 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.u, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !79
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36, !inline_history !3147
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36, !inline_history !3147
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !3146
  %.not.i9.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i9.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.n ], [ %i.ah, %bb.o ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i, !prof !83

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !69, !noalias !3146
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit.i.i.i

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36, !noalias !3146
  %i.aj = getelementptr i8, ptr %.val80.i.i.i, i64 200 ; 2 uses
  %.val87.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !415 ; 7 uses
  %i.ak = load i32, ptr %.val87.i.i.i, align 4, !tbaa !3
  %i.al = sext i32 %i.ak to i64
  %i.am = sub nsw i64 0, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.val87.i.i.i, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !139 ; 2 uses
  %i.ap = icmp ugt i16 %i.ao, 8
  br i1 %i.ap, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !139 ; 2 uses
  %.not.i.i.i.i100.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i.i100.i.i.i, label %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i, label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit.i.i.i

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.val87.i.i.i, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !2559 ; 3 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp slt i32 %i.ax, 0
  br i1 %i.az, label %bb.r, label %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #38
          to label %.noexc.i.i.i unwind label %bb.u

.noexc.i.i.i:                                     ; preds = %bb.r
  unreachable

_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i: ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16num_dictionariesEv.exit.i.i.i
  %.not.i.i.i.i101.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i101.i.i.i, label %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i, %bb.q
  store i64 0, ptr %23, align 8, !noalias !3146
  br label %bb.s

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i
  %i.ba = shl nuw nsw i64 %i.ay, 4                ; 3 uses
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #39
          to label %.noexc102.i.i.i unwind label %bb.u ; 5 uses

.noexc102.i.i.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.bb, ptr %23, align 8, !tbaa !3148, !noalias !3146
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.ay
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bb, i8 0, i64 %i.ba, i1 false)
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bb, i64 %i.ba
  %.pre.i.i.i = load i32, ptr %.val87.i.i.i, align 4, !tbaa !3
  %.pre335.i.i.i = sext i32 %.pre.i.i.i to i64
  %.pre336.i.i.i = sub nsw i64 0, %.pre335.i.i.i  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.val87.i.i.i, i64 %.pre336.i.i.i
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %.noexc102.i.i.i, %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i
  %i.bd = phi i16 [ %.pre.i.i, %.noexc102.i.i.i ], [ %i.ao, %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i ]
  %.pre-phi337.i.i.i = phi i64 [ %.pre336.i.i.i, %.noexc102.i.i.i ], [ %i.am, %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i ]
  %i.be = phi ptr [ %i.bb, %.noexc102.i.i.i ], [ null, %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i ]
  %.sink.i.i.i.i = phi ptr [ %i.bc, %.noexc102.i.i.i ], [ null, %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %.noexc102.i.i.i ], [ null, %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESaIS6_EEC2EmRKS7_.exit.thread.i.i.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %.sink.i.i.i.i, ptr %i.bg, align 8, !tbaa !3151, !noalias !3146
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !3152, !noalias !3146
  %i.bh = icmp ugt i16 %i.bd, 8
  br i1 %i.bh, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.lr.ph.i.i.i, label %.critedge.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.lr.ph.i.i.i: ; preds = %bb.s
  %i.bi = getelementptr inbounds i8, ptr %.val87.i.i.i, i64 %.pre-phi337.i.i.i
  %i.bj = getelementptr i8, ptr %.val80.i.i.i, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %27, i64 8
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.i.i.i

bb.t:                                             ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %.val86.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !415 ; 3 uses
  %i.bm = load i32, ptr %.val86.i.i.i, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %.val86.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !139
  %i.br = icmp ugt i16 %i.bq, 8
  br i1 %i.br, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !3153

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.i.i.i: ; preds = %bb.t, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.t ] ; 4 uses
  %i.bs = phi ptr [ %i.bi, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.lr.ph.i.i.i ], [ %i.bp, %bb.t ]
  %.val89.i.i.i = phi ptr [ %.val87.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.lr.ph.i.i.i ], [ %.val86.i.i.i, %bb.t ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !139 ; 2 uses
  %.not.i.i.i.i104.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i.i.i104.i.i.i, label %.critedge.loopexit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i105.i.i.i

_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i105.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i103.i.i.i
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.val89.i.i.i, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !2559
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.i.i.i, %i.cb
  br i1 %i.cc, label %bb.v, label %.critedge.loopexit.i.i.i

bb.u:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.v:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf6Footer12dictionariesEv.exit.i105.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36, !noalias !3146
  %.val88.i.i.i = load i64, ptr %i.bj, align 8
  %40 = load i32, ptr %.val89.i.i.i, align 4, !tbaa !3, !noalias !3154
  %i.ce = sext i32 %40 to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.val89.i.i.i, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !139, !noalias !3154 ; 2 uses
  %.not.i.i.i.i108.i.i.i = icmp ne i16 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i108.i.i.i)
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.val89.i.i.i, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !3154
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = mul nuw nsw i64 %indvars.iv.i.i.i, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123FileBlockFromFlatbufferEPKN3org6apache5arrow7flatbuf5BlockEl(ptr dead_on_unwind noalias nonnull writable align 8 %24, ptr noundef nonnull readonly %i.cq, i64 noundef %.val88.i.i.i)
          to label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit.i.i.i unwind label %bb.aa

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit.i.i.i: ; preds = %bb.v
  %i.cr = load ptr, ptr %24, align 8, !tbaa !52, !noalias !3146
  %i.cs = icmp eq ptr %i.cr, null                 ; 2 uses
  br i1 %i.cs, label %bb.af, label %bb.w, !prof !55

bb.w:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit.i.i.i
  store ptr null, ptr %25, align 8, !tbaa !52, !noalias !3146
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i.i unwind label %bb.ab

_ZN5arrow6StatusC2ERKS0_.exit.i.i.i:              ; preds = %bb.w
  invoke void @_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEEC2ENS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %25)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i.i
  %i.ct = load ptr, ptr %25, align 8, !tbaa !52, !noalias !3146 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.y, !prof !55

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !56, !range !67, !noundef !68
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #36
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ab:                                            ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit112.i.i.i

bb.ac:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.da = load ptr, ptr %25, align 8, !tbaa !52, !noalias !3146 ; 2 uses
  %.not.i111.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i111.i.i.i, label %_ZN5arrow6StatusD2Ev.exit112.i.i.i, label %bb.ad, !prof !55

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56, !range !67, !noundef !68
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit112.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #36
  br label %_ZN5arrow6StatusD2Ev.exit112.i.i.i

bb.af:                                            ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl18GetDictionaryBlockEi.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36, !noalias !3146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !2592, !noalias !3146
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36, !noalias !3146
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_132WholeIpcFileRecordBatchGenerator9ReadBlockERKNS0_8internal9FileBlockE(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull align 8 dereferenceable(104) %.val, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ag unwind label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %23, align 8, !tbaa !3148, !noalias !3146
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load <2 x ptr>, ptr %27, align 16, !tbaa !75, !noalias !3146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %27, i8 0, i64 16, i1 false), !noalias !3146
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !69 ; 8 uses
  store <2 x ptr> %i.dh, ptr %i.df, align 8, !tbaa !75
  %.not.i.i.i.i.i113.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i113.i.i.i, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dj, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !79
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !80
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #36, !inline_history !3157
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !80
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #36, !inline_history !3157
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !3146
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dm, %bb.ak ], [ %i.dw, %bb.al ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dx, label %bb.am, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i, !prof !83

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #36
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i: ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ai, %bb.ag
  %i.dy = load ptr, ptr %i.bl, align 8, !tbaa !69, !noalias !3146 ; 8 uses
  %.not.i.i.i114.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i114.i.i.i, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.dz, align 8, !tbaa !77
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !79
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #36, !inline_history !3158
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #36, !inline_history !3158
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !3146
  %.not.i.i.i.i115.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i115.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ec, %bb.aq ], [ %i.em, %bb.ar ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.en, label %bb.as, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit.i.i.i, !prof !83

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #36
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit.i.i.i

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit.i.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ao, %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEaSEOS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36, !noalias !3146
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36, !noalias !3146
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit.i.i.i, %bb.z, %bb.y, %bb.x
  %i.eo = load ptr, ptr %24, align 8, !tbaa !52, !noalias !3146 ; 2 uses
  %.not.i.i116.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i116.i.i.i, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit.i.i.i, label %bb.at, !prof !55

bb.at:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !56, !range !67, !noundef !68
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit.i.i.i, label %bb.au

end_hunk_3
