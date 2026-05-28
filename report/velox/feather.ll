inline.NumInlined: 2748
inline.NumDeleted: 1209
begin_hunk_0_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i16, ptr %i.i, align 2, !tbaa !87   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  br label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit

_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit: ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = shl i32 %2, 2
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !231
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef %2)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !254 ; 3 uses
  store ptr %i.ac, ptr %6, align 16, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 5 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !36
  %.not.i.i.i26 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i26, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread, label %bb.d

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.ac, ptr %8, align 16, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread93

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread93: ; preds = %bb.d
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.ac, ptr %8, align 16, !tbaa !254
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !36
  br label %bb.e

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.d
  %i.am = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.pr.pre = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %i.an = load <2 x ptr>, ptr %6, align 16, !tbaa !31
  store <2 x ptr> %i.an, ptr %8, align 16, !tbaa !31
  %.not.i.i.i27 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread93, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %.pr96 = phi ptr [ %i.af, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread93 ], [ %.pr.pre, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr96, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i28 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29

bb.g:                                             ; preds = %bb.e
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.at = phi ptr [ %i.ag, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread ], [ %i.aj, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %i.aj, %bb.f ], [ %i.aj, %bb.g ]
  %i.au = load i32, ptr %i.w, align 4, !tbaa !3
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 %i.aw ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !87
  %i.az = icmp ugt i16 %i.ay, 6
  br i1 %i.az, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !87 ; 2 uses
  %.not.i.i.i31 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i.i31, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  br label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit

_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30, %bb.h, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29
  %i.bh = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit29 ], [ %i.bg, %bb.h ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30 ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %8, ptr noundef %i.bh, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.bi = load ptr, ptr %7, align 8, !tbaa !19, !noalias !919 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !19, !alias.scope !919
  store ptr null, ptr %7, align 8, !tbaa !19, !noalias !919
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !36 ; 8 uses
  %.not.i.i34 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !42
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !429
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !429
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i35 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !48

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %.pr72 = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.bz = phi ptr [ %.pr72, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.bi, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge

bb.o:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.p:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.br

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = load ptr, ptr %6, align 16, !tbaa !254
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !257
  %i.cg = icmp eq i32 %i.cf, 29
  br i1 %i.cg, label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %11 = load ptr, ptr %5, align 8, !tbaa !251
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %13 = load ptr, ptr %i.a, align 8, !tbaa !75, !noalias !922 ; 3 uses
  %14 = load i32, ptr %13, align 4, !tbaa !3, !noalias !922
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load i16, ptr %18, align 2, !tbaa !87, !noalias !922 ; 2 uses
  %.not.i.i.i.i38 = icmp ne i16 %19, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38)
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %13, i64 %20 ; 2 uses
  %22 = load i32, ptr %21, align 4, !tbaa !3, !noalias !922
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 %23
  %i.ch = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.s ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3, !noalias !922
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3, !noalias !922
  %i.cn = sext i32 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co ; 3 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !87, !noalias !922 ; 2 uses
  %i.cr = icmp ugt i16 %i.cq, 8
  br i1 %i.cr, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !87, !noalias !922 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i, label %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i

_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !46, !noalias !922
  %i.cx = icmp eq i8 %i.cw, 1
  %i.cy = icmp ugt i16 %i.cq, 10
  %or.cond.i.i.i = and i1 %i.cy, %i.cx
  br i1 %or.cond.i.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !87, !noalias !922 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !922
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  br label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i: ; preds = %bb.q, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i
  %i.dg = phi ptr [ null, %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i ], [ null, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i ], [ %i.df, %bb.q ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ] ; 3 uses
  %i.dh = load ptr, ptr %i.x, align 8, !tbaa !231, !noalias !922
  %i.di = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i32 noundef %2)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !111, !noalias !922
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !254, !noalias !922 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36, !noalias !922 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !31, !noalias !922
  store <2 x ptr> %i.dq, ptr %4, align 16, !tbaa !31, !noalias !922
  %.not.i.i.i8.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i8.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.r

bb.r:                                             ; preds = %.noexc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !922
  %.not.i.i.i.i9.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i9.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !3, !noalias !922
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !3, !noalias !922
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4, !noalias !922 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.t, %bb.s, %.noexc
  %i.dw = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !922
  %i.dx = sext i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dg, i64 %i.dy ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !87, !noalias !922
  %i.eb = icmp ugt i16 %i.ea, 4
  br i1 %i.eb, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !87, !noalias !922 ; 2 uses
  %.not.i.i.i11.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i.i.i11.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !922
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  br label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i

_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i: ; preds = %bb.u, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ej = phi ptr [ %i.ei, %bb.u ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i ], [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %4, ptr noundef %i.ej, ptr noundef nonnull %12)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i
  %i.ek = load ptr, ptr %i.dn, align 8, !tbaa !36, !noalias !922 ; 8 uses
  %.not.i.i.i38 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i38, label %_ZN5arrow6StatusD2Ev.exit41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.el, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !42
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #23, !inline_history !925
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #23, !inline_history !925
  br label %_ZN5arrow6StatusD2Ev.exit41

bb.y:                                             ; preds = %bb.w
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !922
  %.not.i.i.i12.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i12.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.eo, %bb.z ], [ %i.ey, %bb.aa ]
  %i.ez = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ez, label %bb.ab, label %_ZN5arrow6StatusD2Ev.exit41, !prof !48

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #23
  br label %_ZN5arrow6StatusD2Ev.exit41

bb.ac:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  br label %.body

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.fb = load ptr, ptr %9, align 8, !tbaa !19, !noalias !926 ; 2 uses
  store ptr %i.fb, ptr %0, align 8, !tbaa !19, !alias.scope !926
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit43, label %.critedge

bb.ad:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.fd, %bb.ad ], [ %i.fa, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.br

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %_ZN5arrow6StatusD2Ev.exit41
  %i.fe = load ptr, ptr %5, align 8, !tbaa !251   ; 2 uses
  %i.ff = load ptr, ptr %6, align 16, !tbaa !254
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 3 uses
  %i.fh = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 4 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i.i.i44, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit43
  %.not7.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i45 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i45, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.fn = atomicrmw volatile add ptr %i.fj, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.fo = phi ptr [ %i.fi, %bb.ae ], [ %i.fi, %bb.ag ], [ %.pr.pre.i.i.i, %bb.ah ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fp, align 8, !tbaa !37
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !42
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #23, !inline_history !433
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #23, !inline_history !433
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i9.i.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i9.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

bb.am:                                            ; preds = %bb.ak
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i47 = phi i32 [ %i.fs, %bb.al ], [ %i.gc, %bb.am ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i47, 1
  br i1 %i.gd, label %bb.an, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !48

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46, %bb.aj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit43, %_ZN5arrow6StatusD2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.130") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.ge = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc48 unwind label %bb.bd  ; 4 uses

.noexc48:                                         ; preds = %bb.ao
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ap unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !929

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc48
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 104) #24, !noalias !929
  br label %.body49

bb.ap:                                            ; preds = %.noexc48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.gg, ptr %3, align 8, !tbaa !932
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !36 ; 8 uses
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !36
  %.not.i.i.i.i51 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i51, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.gj, align 8, !tbaa !37
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !42
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !17
end_hunk_0
