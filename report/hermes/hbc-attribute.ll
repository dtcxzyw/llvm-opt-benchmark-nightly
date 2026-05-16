inline.NumInlined: 979
inline.NumDeleted: 553
begin_hunk_0_@main:bb.a
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp ult i64 %i.ex, 19
  br i1 %i.ey, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ez = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.eq, ptr noundef nonnull @.str.11, i64 noundef 19) #24
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.eu, ptr noundef nonnull align 1 dereferenceable(19) @.str.11, i64 19, i1 false)
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 19
  store ptr %i.fb, ptr %i.et, align 8, !tbaa !35
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.x, %bb.w
  %.0.i.i.i = phi ptr [ %i.ez, %bb.w ], [ %i.eq, %bb.x ]
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !36
  %i.fg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i, ptr noundef %i.fd, i64 noundef %i.ff) #24 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !35 ; 2 uses
  %i.fl = icmp eq ptr %i.fi, %i.fk
  br i1 %i.fl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  %i.fm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fg, ptr noundef nonnull @.str.9, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12.i

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  store i8 10, ptr %i.fk, align 1
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !35
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  store ptr %i.fo, ptr %i.fj, align 8, !tbaa !35
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12.i

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_20BCProviderFromBufferESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fp = load ptr, ptr %4, align 8, !tbaa !91    ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !96 ; 20 uses
  %.not.i.i.i.i = icmp eq ptr %i.fr, null         ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.ft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i, label %.thread63

.thread63:                                        ; preds = %bb.ab
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.fs, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  br label %bb.ad

_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i: ; preds = %bb.ab
  %i.fx = atomicrmw volatile add ptr %i.fs, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.fq, align 8, !tbaa !96 ; 4 uses
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !91  ; 3 uses
  %.not.i.i.i13.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i.i13.i, label %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i
  %.pre31 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %i.fy = icmp eq i8 %.pre31, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 2 uses
  br i1 %i.fy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread63, %bb.ac
  %i.ga = phi ptr [ %i.fw, %.thread63 ], [ %i.fz, %bb.ac ] ; 2 uses
  %i.gb = phi ptr [ %i.fp, %.thread63 ], [ %.pre.i, %bb.ac ]
  %.pr39.i66 = phi ptr [ %i.fr, %.thread63 ], [ %.pr.pre.i, %bb.ac ]
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !4
  br label %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i

bb.ae:                                            ; preds = %bb.ac
  %i.ge = atomicrmw volatile add ptr %i.fz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i

_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i: ; preds = %bb.ae, %bb.ad, %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i, %bb.aa
  %.not.i.i.i1311.i = phi i1 [ false, %bb.ae ], [ true, %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i ], [ false, %bb.ad ], [ true, %bb.aa ]
  %i.gf = phi ptr [ %.pre.i, %bb.ae ], [ %.pre.i, %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i ], [ %i.gb, %bb.ad ], [ %i.fp, %bb.aa ] ; 3 uses
  %i.gg = phi ptr [ %.pr.pre.i, %bb.ae ], [ null, %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit.i ], [ %.pr39.i66, %bb.ad ], [ null, %bb.aa ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 12 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !100, !noalias !97 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.thread.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i
  %i.gk = shl i32 %i.gi, 2
  %i.gl = udiv i32 %i.gk, 3
  %i.gm = add nuw nsw i32 %i.gl, 1
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.go = lshr i64 %i.gn, 1
  %i.gp = or i64 %i.go, %i.gn                     ; 2 uses
  %i.gq = lshr i64 %i.gp, 2
  %i.gr = or i64 %i.gq, %i.gp                     ; 2 uses
  %i.gs = lshr i64 %i.gr, 4
  %i.gt = or i64 %i.gs, %i.gr                     ; 2 uses
  %i.gu = lshr i64 %i.gt, 8
  %i.gv = or i64 %i.gu, %i.gt                     ; 2 uses
  %i.gw = lshr i64 %i.gv, 16
  %i.gx = or i64 %i.gw, %i.gv                     ; 2 uses
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = add nuw i32 %i.gy, 1                    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !114, !alias.scope !97
  %i.hb = zext i32 %i.gz to i64                   ; 2 uses
  %i.hc = shl nuw nsw i64 %i.hb, 3                ; 2 uses
  %i.hd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #28, !noalias !97 ; 4 uses
  store ptr %i.hd, ptr %6, align 8, !tbaa !117, !alias.scope !97
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.he, align 8, !tbaa !118, !alias.scope !97
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !119, !alias.scope !97
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  %i.hh = and i64 %i.gx, 4294967295
  %xtraiter = and i64 %i.hb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.prol
  %.06.i.i.i.i.i.prol = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.prol ], [ %i.hd, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i ]
  store i32 -1, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !4, !noalias !97
  %i.hi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !120

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i
  %.06.i.i.i.i.i.unr = phi ptr [ %i.hd, %.lr.ph.i.i.i.preheader.i.i ], [ %i.hi, %.lr.ph.i.i.i.i.i.prol ]
  %i.hj = icmp samesign ult i64 %i.hh, 7
  br i1 %i.hj, label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i.i.i.i.i, align 4, !tbaa !4, !noalias !97
  %i.hk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store i32 -1, ptr %i.hk, align 4, !tbaa !4, !noalias !97
  %i.hl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i32 -1, ptr %i.hl, align 4, !tbaa !4, !noalias !97
  %i.hm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  store i32 -1, ptr %i.hm, align 4, !tbaa !4, !noalias !97
  %i.hn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  store i32 -1, ptr %i.hn, align 4, !tbaa !4, !noalias !97
  %i.ho = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  store i32 -1, ptr %i.ho, align 4, !tbaa !4, !noalias !97
  %i.hp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48
  store i32 -1, ptr %i.hp, align 4, !tbaa !4, !noalias !97
  %i.hq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  store i32 -1, ptr %i.hq, align 4, !tbaa !4, !noalias !97
  %i.hr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i16.i.7 = icmp eq ptr %i.hr, %i.hg
  br i1 %.not.i.i.i.i16.i.7, label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !122

_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.thread.i: ; preds = %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit15.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false), !alias.scope !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !97
  br label %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i

_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.pr12.i = load i32, ptr %i.gh, align 4, !tbaa !100, !noalias !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !97
  store i32 0, ptr %i.a, align 4, !tbaa !4, !noalias !97
  %.not.i17.i = icmp eq i32 %.pr12.i, 0
  br i1 %.not.i17.i, label %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i
  %i.hs = phi i32 [ %i.ig, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ 0, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i ]
  %.03.i.i = phi i32 [ %i.ie, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ 0, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i ] ; 2 uses
  %i.ht = load ptr, ptr %i.gf, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call ptr %i.hv(ptr noundef nonnull align 8 dereferenceable(280) %i.gf, i32 noundef %i.hs) #24, !inline_history !124 ; 3 uses
  %i.hx = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16FindAndConstructERKj(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i32 %.03.i.i, ptr %i.hy, align 4, !tbaa !4
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = trunc i64 %i.hz to i1
  br i1 %i.ia, label %bb.af, label %bb.ag, !prof !125

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 7
  %i.ic = load i32, ptr %i.ib, align 1, !tbaa !126
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i
  %16 = load i64, ptr %i.hw, align 1
  %17 = lshr i64 %16, 32
  %18 = trunc nuw i64 %17 to i32
  %i.id = and i32 %18, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i18.i = phi i32 [ %i.ic, %bb.af ], [ %i.id, %bb.ag ]
  %i.ie = add i32 %.0.i.i18.i, %.03.i.i
  %i.if = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !97
  %i.ig = add i32 %i.if, 1                        ; 3 uses
  store i32 %i.ig, ptr %i.a, align 4, !tbaa !4, !noalias !97
  %i.ih = icmp ult i32 %i.ig, %.pr12.i
  br i1 %i.ih, label %.lr.ph.i.i, label %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i, !llvm.loop !128

_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i: ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !97
  br i1 %.not.i.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 9 uses
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ij, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ah
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.in = add nsw i32 %i.im, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !8
  store ptr %i.fp, ptr %i.ik, align 8, !tbaa !91
  store ptr %i.fr, ptr %i.il, align 8, !tbaa !96
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.io = atomicrmw volatile add ptr %i.ii, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %i.ip = icmp eq i8 %.pre.i.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !8
  store ptr %i.fp, ptr %i.ik, align 8, !tbaa !91
  store ptr %i.fr, ptr %i.il, align 8, !tbaa !96
  br i1 %i.ip, label %bb.ak, label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %bb.ai
  %.pre17.i = load i32, ptr %i.ii, align 4, !tbaa !4
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge16.i, %.thread.i.i
  %i.iq = phi i32 [ %.pre17.i, %._crit_edge16.i ], [ %i.in, %.thread.i.i ]
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ii, align 4, !tbaa !4
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.is = atomicrmw volatile add ptr %i.ii, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.al

_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i.i: ; preds = %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fp, ptr %i.it, align 8, !tbaa !91
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.iu, align 8, !tbaa !96
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.iv, align 8, !tbaa !129
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.iw, align 8, !tbaa !129
  %i.ix = load atomic i64, ptr %i.ii acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ii, align 8, !tbaa !132
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !134
  %i.jb = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !inline_history !135
  %i.je = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !inline_history !135
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i9.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i9.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.ii, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.jj = atomicrmw volatile add ptr %i.ii, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i = phi i32 [ %i.iz, %bb.ao ], [ %i.jj, %bb.ap ]
  %i.jk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jk, label %bb.aq, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !125

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am, %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112UsageCounterE, i64 16), ptr %5, align 8, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %15, ptr %i.jl, align 8, !tbaa !136
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jm, i8 0, i64 16, i1 false)
  call void @_ZdlPv(ptr noundef null) #24
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !114 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !114
  %.not.i.i10.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i10.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.jq = zext i32 %i.jo to i64
  %i.jr = shl nuw nsw i64 %i.jq, 3                ; 2 uses
  %i.js = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #28 ; 2 uses
  store ptr %i.js, ptr %i.jm, align 8, !tbaa !117
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jv = load <2 x i32>, ptr %i.jt, align 8, !tbaa !4
  store <2 x i32> %i.jv, ptr %i.ju, align 8, !tbaa !4
  %i.jw = load ptr, ptr %6, align 8, !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.js, ptr align 4 %i.jw, i64 %i.jr, i1 false)
  br label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jm, i8 0, i64 16, i1 false)
  br label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i

_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i: ; preds = %bb.as, %bb.ar
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.ef, ptr %i.jx, align 8, !tbaa !138
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jy, i8 0, i64 20, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i8 0, i64 24, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ka, align 8, !tbaa !146 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !147 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload.i.i.i, 2
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.idx.i.i
  %.not19.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not19.i.i, label %_ZN12_GLOBAL__N_112UsageCounterC2ESt10shared_ptrIN6hermes3hbc14BCProviderBaseEERNS2_11JSONEmitterEN4llvh8DenseMapIjjNS8_12DenseMapInfoIjEENS8_6detail12DenseMapPairIjjEEEEm.exit.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 144
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i, %.lr.ph.i20.i
  %i.ke = phi ptr [ null, %.lr.ph.i20.i ], [ %i.la, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 5 uses
  %i.kf = phi ptr [ null, %.lr.ph.i20.i ], [ %i.lb, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 3 uses
  %i.kg = phi ptr [ null, %.lr.ph.i20.i ], [ %i.lc, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 3 uses
  %.021.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %.lr.ph.i20.i ], [ %i.ld, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 2 uses
  %.01820.i.i = phi i32 [ 0, %.lr.ph.i20.i ], [ %i.kj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ]
  %i.kh = load i32, ptr %.021.i.i, align 4, !tbaa !4
  %i.ki = and i32 %i.kh, 2147483647
  %i.kj = add i32 %i.ki, %.01820.i.i              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.kg, %i.kf
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.kj, ptr %i.kg, align 4, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 2 uses
  store ptr %i.kk, ptr %i.kc, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.kl = ptrtoint ptr %i.kf to i64
  %i.km = ptrtoint ptr %i.ke to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 6 uses
  %i.ko = icmp eq i64 %i.kn, 9223372036854775804
  br i1 %i.ko, label %bb.aw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.av
  %i.kp = ashr exact i64 %i.kn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kp, i64 1)
  %i.kq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.kp ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.kp
  %i.ks = call i64 @llvm.umin.i64(i64 %i.kq, i64 2305843009213693951)
  %i.kt = select i1 %i.kr, i64 2305843009213693951, i64 %i.ks ; 3 uses
  %.not.i.i.i11.i.i = icmp ne i64 %i.kt, 0
  call void @llvm.assume(i1 %.not.i.i.i11.i.i)
  %i.ku = shl nuw nsw i64 %i.kt, 2
  %i.kv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ku) #27 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE4growEj:_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %.lr.ph.i.i.i, !prof !194

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi i32 [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq i32 %i.bq, -1
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !195

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq i32 %i.bq, -2
  %i.bv = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.02945.i.i.i
  %i.bw = add i32 %.02546.i.i.i, 1
  %i.bx = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bx, %i.bl              ; 2 uses
  %i.by = zext i32 %.027.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.cb = icmp eq i32 %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %.lr.ph.i.i.i, !prof !196, !llvm.loop !197

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store i32 %i.bh, ptr %.sink.i.i.i, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.019.i, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !4
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit, label %.lr.ph.i6, !llvm.loop !201

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112UsageCounter11beforeStartEjPKh(ptr noundef nonnull align 8 dereferenceable(152) initializes((72, 76)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %3 = alloca %"class.hermes::OptValue", align 4  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl i32 %i.d, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i32, ptr %i.j, align 8, !tbaa !204  ; 4 uses
  %i.l = icmp ult i32 %i.i, %i.k
  %i.m = icmp ugt i32 %i.k, 64
  %or.cond.i = and i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !153  ; 3 uses
  %i.o = zext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.o, 5               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not9.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.q = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.r = lshr exact i64 %i.q, 5
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.010.i.prol, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 8
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.prol, align 8, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 16
  store i32 -1, ptr %i.t, align 8, !tbaa !206
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !209

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %i.n, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.q, 224
  br i1 %i.v, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !203
  store i32 0, ptr %i.f, align 4, !tbaa !210
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.010.i, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  store i32 -1, ptr %i.w, align 8, !tbaa !206
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  store ptr inttoptr (i64 -1 to ptr), ptr %i.x, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.010.i, i64 40
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.1, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i, i64 48
  store i32 -1, ptr %i.y, align 8, !tbaa !206
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 64
  store ptr inttoptr (i64 -1 to ptr), ptr %i.z, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.010.i, i64 72
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.2, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i, i64 80
  store i32 -1, ptr %i.aa, align 8, !tbaa !206
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ab, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.010.i, i64 104
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.3, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 112
  store i32 -1, ptr %i.ac, align 8, !tbaa !206
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 128
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ad, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.010.i, i64 136
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.4, align 8, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i, i64 144
  store i32 -1, ptr %i.ae, align 8, !tbaa !206
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 160
  store ptr inttoptr (i64 -1 to ptr), ptr %i.af, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.010.i, i64 168
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.5, align 8, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 176
  store i32 -1, ptr %i.ag, align 8, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ah, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.010.i, i64 200
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.6, align 8, !tbaa !147
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i, i64 208
  store i32 -1, ptr %i.ai, align 8, !tbaa !206
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 224
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aj, align 8, !tbaa !205
  %.sroa.47.0..0.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.010.i, i64 232
  store i64 0, ptr %.sroa.47.0..0.sroa_idx.i.7, align 8, !tbaa !147
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 240
  store i32 -1, ptr %i.ak, align 8, !tbaa !206
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i, i64 256 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.p
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !211

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i
  %i.am = ptrtoint ptr %2 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.am, ptr %i.an, align 8, !tbaa !212
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !91 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call ptr %i.as(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, i32 noundef %1) #24 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %bb.e, label %bb.f, !prof !125

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 7
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !126
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit
  %5 = load i64, ptr %i.at, align 1
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32
  %i.ay = and i32 %7, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.ax, %bb.e ], [ %i.ay, %bb.f ]
  %i.az = zext i32 %.0.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, 3
  %i.bd = and i64 %i.bc, -4                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !213
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !214
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr nonnull @.str.13, i64 10) #24
  tail call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i32 noundef %1) #24
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !91 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.g, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

bb.g:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(280) %i.bi) #24, !inline_history !217
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !91
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i: ; preds = %bb.g, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  %i.bn = phi ptr [ %.pre.i, %bb.g ], [ %i.bi, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i, %bb.g ], [ %i.bk, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ] ; 2 uses
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !202
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(280) %i.bn, i32 noundef %i.bp) #24, !inline_history !218 ; 2 uses
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, ptr nonnull @.str.15, i64 8) #24
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216
  tail call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bv) #24
  %.not.i3 = icmp eq ptr %i.bt, null
  br i1 %.not.i3, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !219 ; 2 uses
  %.not6.i = icmp eq i32 %i.bw, -1
  br i1 %.not6.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue") align 4 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.bo, i32 noundef %i.bw, i32 noundef 0) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !221, !range !56, !noundef !159
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !224
  call void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.bo, i32 noundef %i.cc)
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr nonnull @.str.16, i64 4) #24
  %i.cd = load ptr, ptr %4, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr %i.cd, i64 %i.cf) #24
  %i.cg = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cl = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr nonnull @.str.17, i64 4) #24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i32 noundef %i.cn) #24
  %i.co = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.co, ptr nonnull @.str.18, i64 6) #24
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.co, i32 noundef %i.cq) #24
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16FindAndConstructERKj(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr nonnull @.str.19, i64 13) #24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, i32 noundef %i.cv) #24
  %i.cw = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cx = load ptr, ptr %i.ao, align 8, !tbaa !91 ; 2 uses
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !202
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call ptr %i.db(ptr noundef nonnull align 8 dereferenceable(280) %i.cx, i32 noundef %i.cy) #24, !inline_history !218 ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = trunc i64 %i.dd to i1
  br i1 %i.de, label %bb.m, label %bb.n, !prof !125

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 7
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !126
  br label %_ZN12_GLOBAL__N_112UsageCounter20emitFunctionLocationEv.exit

bb.n:                                             ; preds = %bb.l
  %8 = load i64, ptr %i.dc, align 1
  %9 = lshr i64 %8, 32
  %10 = trunc nuw i64 %9 to i32
  %i.dh = and i32 %10, 32767
  br label %_ZN12_GLOBAL__N_112UsageCounter20emitFunctionLocationEv.exit

_ZN12_GLOBAL__N_112UsageCounter20emitFunctionLocationEv.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi i32 [ %i.dg, %bb.m ], [ %i.dh, %bb.n ]
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, ptr nonnull @.str.20, i64 12) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, i32 noundef %.0.i.i) #24
  %i.di = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.di) #24
  %i.dj = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, ptr nonnull @.str.14, i64 5) #24
  %i.dk = load ptr, ptr %i.bg, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dk) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112UsageCounter10afterStartEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !202
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr %i.o(ptr noundef nonnull align 8 dereferenceable(280) %i.j, i32 noundef %i.l) #24 ; 8 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !202
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call { ptr, i64 } %i.u(ptr noundef nonnull align 8 dereferenceable(280) %i.q, i32 noundef %i.r) #24
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %i.x = load i32, ptr %i.k, align 8, !tbaa !202
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.22, i64 22, i32 noundef %i.x, i32 noundef 16)
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = trunc i64 %i.y to i1                     ; 4 uses
  %..i = select i1 %i.z, i64 29, i64 15, !prof !125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i ; 2 uses
  %.sroa.0.0.i = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ab = and i8 %.sroa.0.0.i, 32
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !202
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.23, i64 22, i32 noundef %i.ac, i32 noundef 31)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %i.z, label %bb.d, label %bb.e, !prof !125

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 11
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !225
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.p, align 1
  %i.ag = lshr i64 %i.af, 47
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.ae, %bb.d ], [ %i.ah, %bb.e ]
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %.0.i)
  %.sroa.0.0.i6 = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ai = and i8 %.sroa.0.0.i6, 8
  %.not4 = icmp eq i8 %i.ai, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !202
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.24, i64 18, i32 noundef %i.aj, i32 noundef 4)
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !202
  %i.al = trunc i64 %i.w to i32
  %i.am = mul i32 %i.al, 12
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.25, i64 25, i32 noundef %i.ak, i32 noundef %i.am)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit
  br i1 %i.z, label %bb.h, label %bb.i, !prof !125

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %i.p, i64 -1
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !226
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.p, align 1
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 33554431
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit: ; preds = %bb.h, %bb.i
  %.0.i7 = phi i32 [ %i.ao, %bb.h ], [ %i.ar, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !213
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load i64, ptr %i.au, align 8, !tbaa !212
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = trunc i64 %i.aw to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.26, i64 21, i32 noundef %.0.i7, i32 noundef %i.ax)
  br i1 %i.z, label %bb.j, label %bb.k, !prof !125

bb.j:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit
  %i.ay = getelementptr inbounds i8, ptr %i.p, i64 -1
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !226
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit9

bb.k:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit
  %i.ba = load i64, ptr %i.p, align 1
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 33554431
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit9

_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit9: ; preds = %bb.j, %bb.k
  %.0.i8 = phi i32 [ %i.az, %bb.j ], [ %i.bc, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !214
  %i.bf = load i64, ptr %i.as, align 8, !tbaa !213
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.27, i64 20, i32 noundef %.0.i8, i32 noundef %i.bh)
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !91  ; 2 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !202
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(280) %i.bi, i32 noundef %i.bj) #24, !inline_history !227 ; 6 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit9
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !219 ; 2 uses
  %.not94.i = icmp eq i32 %i.bo, -1
  br i1 %.not94.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !91  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.n, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(280) %i.bp) #24, !inline_history !228
  %.pre.i.i = load ptr, ptr %i.bq, align 8, !tbaa !172
  %.pre.i = load i32, ptr %i.bn, align 4, !tbaa !219
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i: ; preds = %bb.n, %bb.m
  %i.bu = phi i32 [ %.pre.i, %bb.n ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %bb.n ], [ %i.br, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %.sroa.068.0.copyload.i = load ptr, ptr %i.bw, align 8, !tbaa !205 ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !147 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bx = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.bu, ptr noundef nonnull %i.a) #24
  %i.by = add i32 %i.bx, %i.bu                    ; 2 uses
  %i.bz = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.by, ptr noundef nonnull %i.a) #24
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.ca, ptr noundef nonnull %i.a) #24
  %i.cc = add i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.cc, ptr noundef nonnull %i.a) #24
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !147
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i, %bb.p
  %i.ch = phi i32 [ %i.cr, %bb.p ], [ %i.ce, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i ] ; 2 uses
  %i.ci = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.ch, ptr noundef nonnull %i.a) #24
  %i.cj = add i32 %i.ci, %i.ch                    ; 3 uses
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !147
  %i.cl = and i64 %i.ck, 1
  %.not95.i = icmp eq i64 %i.cl, 0
  br i1 %.not95.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.cm = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.cj, ptr noundef nonnull %i.a) #24
  %i.cn = add i32 %i.cm, %i.cj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.2.i = phi i32 [ %i.cn, %bb.o ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %i.co = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %.2.i, ptr noundef nonnull %i.b) #24
  %i.cp = add i32 %i.co, %.2.i                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej:bb.a
  %i.n = call { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr %i.h, i64 %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3) #24 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %.not.i = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !169, !alias.scope !260
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !36, !alias.scope !260
  store i8 0, ptr %i.q, align 8, !tbaa !16, !alias.scope !260
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !260
  store i64 %i.p, ptr %i.a, align 8, !tbaa !147, !noalias !260
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10, !alias.scope !260
  %i.u = load i64, ptr %i.a, align 8, !tbaa !147, !noalias !260
  store i64 %i.u, ptr %i.q, align 8, !tbaa !16, !alias.scope !260
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.o, align 1, !tbaa !16
  store i8 %i.w, ptr %i.v, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !147, !noalias !260 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !36, !alias.scope !260
  %i.z = load ptr, ptr %0, align 8, !tbaa !10, !alias.scope !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !260
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.ab = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

declare void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #4

declare { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"struct.std::pair.104", align 8    ; 10 uses
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %1, ptr %5, align 8, !tbaa !205
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 %3, ptr %i.d, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.f = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.g = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !263  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.g, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef %i.h) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 16, i1 false), !tbaa.struct !264
  %i.j = load i32, ptr %i.d, align 8, !tbaa !206
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !206
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %4, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.o) #24
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr %1, i64 %2) #24
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef %3) #24
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef %4) #24
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = icmp ult i32 %1, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i.i, %i.o
  %.sroa.011.1.i.i.i = select i1 %i.m, ptr %.sroa.011.015.i.i.i, ptr %i.n ; 2 uses
  %.1.i.i.i = select i1 %i.m, i64 %i.j, i64 %i.p  ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.loopexit.i, !llvm.loop !266

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.loopexit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i = ptrtoint ptr %.sroa.011.1.i.i.i to i64
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.loopexit.i, %bb.a
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.loopexit.i ], [ %i.f, %bb.a ]
  %i.r = sub i64 %.pre-phi.i, %i.f                ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = trunc i64 %i.s to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.34, i64 16, i32 noundef %i.t, i32 noundef 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !146
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.r
  %i.y = load i32, ptr %i.x, align 4, !tbaa !267
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.35, i64 34, i32 noundef %1, i32 noundef 4)
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !91
  br label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit

_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i, %bb.b
  %i.z = phi ptr [ %i.v, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(280) %i.z, i32 noundef %1) #24 ; 3 uses
  %.sroa.016.0.extract.trunc = trunc i64 %i.ad to i32 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.ad, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.ae = icmp ugt i32 %.sroa.016.0.extract.trunc, 8388607
  %i.af = and i32 %.sroa.5.0.extract.trunc, 2147483647 ; 3 uses
  %i.ag = icmp samesign ugt i32 %i.af, 254
  %or.cond.not = select i1 %i.ae, i1 true, i1 %i.ag
  %2 = shl nuw nsw i32 %.sroa.016.0.extract.trunc, 1
  %3 = shl i32 %.sroa.5.0.extract.trunc, 24
  %4 = add nuw nsw i32 %3, %2
  %5 = icmp ugt i32 %4, -16777217
  %storemerge.i = select i1 %or.cond.not, i1 true, i1 %5
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.31, i64 23, i32 noundef %1, i32 noundef 4)
  br i1 %storemerge.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.32, i64 26, i32 noundef %1, i32 noundef 8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit
  %.lobit = lshr i64 %i.ad, 63
  %i.ah = trunc nuw nsw i64 %.lobit to i32
  %i.ai = shl nuw i32 %i.af, %i.ah
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  ret void

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.023 = phi i32 [ %i.ak, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.aj = add i32 %.023, %.sroa.016.0.extract.trunc
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.33, i64 17, i32 noundef %i.aj, i32 noundef 1)
  %i.ak = add nuw i32 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !269
}

declare void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.104", align 8    ; 6 uses
  %4 = alloca %"struct.std::pair.104", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !263
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr inttoptr (i64 -1 to ptr), ptr %3, align 8, !tbaa !205, !alias.scope !270
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !147, !alias.scope !270
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.e, align 8, !tbaa !206, !alias.scope !275
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %4, align 8, !tbaa !205, !alias.scope !278
  %.sroa.4.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35, align 8, !tbaa !147, !alias.scope !278
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -2, ptr %i.f, align 8, !tbaa !206, !alias.scope !283
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !205
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !147
  %i.g = tail call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #24
  %i.h = shl i64 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !4
  %i.k = mul i32 %i.j, 37
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = or disjoint i64 %i.h, %i.l
  %i.n = shl nuw i64 %i.l, 32
  %i.o = xor i64 %i.n, -1
  %i.p = add i64 %i.m, %i.o                       ; 2 uses
  %i.q = lshr i64 %i.p, 22
  %i.r = xor i64 %i.q, %i.p                       ; 2 uses
  %i.s = shl i64 %i.r, 13
  %i.t = xor i64 %i.s, -1
  %i.u = add i64 %i.r, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 8
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, 9                          ; 2 uses
  %i.y = lshr i64 %i.x, 15
  %i.z = xor i64 %i.y, %i.x                       ; 2 uses
  %i.aa = shl i64 %i.z, 27
  %i.ab = xor i64 %i.aa, -1
  %i.ac = add i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.c, -1                        ; 2 uses
  %i.ah = and i32 %i.ag, %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.029 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.j ] ; 4 uses
  %.027 = phi i32 [ %i.ah, %bb.c ], [ %i.az, %bb.j ] ; 2 uses
  %.025 = phi i32 [ 1, %bb.c ], [ %i.ax, %bb.j ]  ; 2 uses
  %i.ai = zext i32 %.027 to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ai ; 8 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aj, align 8, !tbaa !205 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  switch i64 %magicptr.i.i, label %bb.f [
    i64 -1, label %bb.e
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq ptr %.sroa.01.0.copyload.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ak, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread, !prof !286

bb.f:                                             ; preds = %bb.d
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !147
  %i.al = icmp eq i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.al, label %bb.g, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread, !prof !286

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.sroa.22.0.copyload.i, 0
  br i1 %i.am, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.01.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %.sroa.22.0.copyload.i)
  %i.an = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.an, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i: ; preds = %bb.d
  %i.ao = icmp eq ptr %.sroa.01.0.copyload.i, inttoptr (i64 -2 to ptr)
  br i1 %i.ao, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit: ; preds = %bb.e, %bb.g, %bb.h, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %.loopexit, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread: ; preds = %bb.f, %bb.e, %bb.h, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit
  %i.at = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %3)
  br i1 %i.at, label %bb.i, label %bb.j, !prof !195

bb.i:                                             ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread
  %.not = icmp eq ptr %.029, null
  %i.au = select i1 %.not, ptr %i.aj, ptr %.029
  br label %.loopexit

bb.j:                                             ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.thread
  %i.av = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %4)
  %i.aw = icmp eq ptr %.029, null
  %or.cond.not = select i1 %i.av, i1 %i.aw, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.aj, ptr %.029
  %i.ax = add i32 %.025, 1
  %i.ay = add i32 %.025, %.027
  %i.az = and i32 %i.ay, %i.ag
  br label %bb.d, !llvm.loop !288

.loopexit:                                        ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit, %bb.i
  %storemerge = phi ptr [ %i.au, %bb.i ], [ %i.aj, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit ]
  %.1.ph = phi i1 [ false, %bb.i ], [ true, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit ]
  store ptr %storemerge, ptr %2, align 8, !tbaa !263
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ %.1.ph, %.loopexit ]
  ret i1 %.2
}

declare i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !204  ; 5 uses
  %i.g = shl i32 %i.d, 2
  %i.h = add i32 %i.g, 4
  %i.i = mul i32 %i.f, 3
  %.not = icmp ult i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b, !prof !195

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.f, 1
  tail call void @_ZN4llvh8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.k = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !210
  %.neg = xor i32 %i.d, -1
  %.neg12 = add i32 %i.f, %.neg
  %i.o = sub i32 %.neg12, %i.n
  %i.p = lshr i32 %i.f, 3
  %.not9 = icmp ugt i32 %i.o, %i.p
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj:bb.a

bb.t:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit772.thread
  %i.hv = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr noundef %i.hu) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hv, ptr noundef nonnull align 8 dereferenceable(20) %23, i64 16, i1 false), !tbaa.struct !264
  %i.hw = load i32, ptr %i.bm, align 8, !tbaa !206
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i32 %i.hw, ptr %i.hx, align 8, !tbaa !206
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store i32 0, ptr %i.hy, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i221

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i221: ; preds = %bb.t, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit772.thread
  %.0.i.i.i222 = phi ptr [ %i.hv, %bb.t ], [ %i.hu, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit772.thread ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.i.i222, i64 24
  store i32 4, ptr %i.hz, align 4, !tbaa !4
  %i.ia = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ia) #24
  %i.ib = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ib, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ib, ptr nonnull @.str.34, i64 16) #24
  %i.ic = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ic, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ic, i32 noundef %i.fv) #24
  %i.id = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.id, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.id, i32 noundef 4) #24
  %i.ie = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ie) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit223

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit223: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit772.thread1087, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.if = load ptr, ptr %i.al, align 8, !tbaa !91 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.ig, align 8, !tbaa !146
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i55, i64 %i.ft
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !267
  %.not.i.i56 = icmp sgt i32 %i.ii, -1
  br i1 %.not.i.i56, label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i58, label %bb.u

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit223
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store ptr @.str.35, ptr %24, align 8, !tbaa !205
  store i64 34, ptr %.sroa.3.0..sroa_idx.i216, align 8, !tbaa !147
  store i32 %i.fd, ptr %i.bo, align 8, !tbaa !206
  %i.ij = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.ik = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %5, align 8, !tbaa !205, !alias.scope !309
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i722, align 8, !tbaa !147, !alias.scope !309
  store i32 -2, ptr %i.bp, align 8, !tbaa !206, !alias.scope !314
  %i.im = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.35, i64 34) #24
  %i.in = shl i64 %i.im, 32
  %i.io = load i32, ptr %i.bo, align 8, !tbaa !4
  %i.ip = mul i32 %i.io, 37
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = or disjoint i64 %i.in, %i.iq
  %i.is = shl nuw i64 %i.iq, 32
  %i.it = xor i64 %i.is, -1
  %i.iu = add i64 %i.ir, %i.it                    ; 2 uses
  %i.iv = lshr i64 %i.iu, 22
  %i.iw = xor i64 %i.iv, %i.iu                    ; 2 uses
  %i.ix = shl i64 %i.iw, 13
  %i.iy = xor i64 %i.ix, -1
  %i.iz = add i64 %i.iw, %i.iy                    ; 2 uses
  %i.ja = lshr i64 %i.iz, 8
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = mul i64 %i.jb, 9                        ; 2 uses
  %i.jd = lshr i64 %i.jc, 15
  %i.je = xor i64 %i.jd, %i.jc                    ; 2 uses
  %i.jf = shl i64 %i.je, 27
  %i.jg = xor i64 %i.jf, -1
  %i.jh = add i64 %i.je, %i.jg                    ; 2 uses
  %i.ji = lshr i64 %i.jh, 31
  %i.jj = xor i64 %i.ji, %i.jh
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = add i32 %i.ik, -1                       ; 2 uses
  %i.jm = and i32 %i.jl, %i.jk
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970.thread, %bb.v
  %.027.i727 = phi i32 [ %i.jm, %bb.v ], [ %i.kf, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970.thread ] ; 2 uses
  %.025.i728 = phi i32 [ 1, %bb.v ], [ %i.kd, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970.thread ] ; 2 uses
  %i.jn = zext i32 %.027.i727 to i64
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %i.jn ; 5 uses
  %.sroa.01.0.copyload.i.i729 = load ptr, ptr %24, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i.i730 = load i64, ptr %.sroa.3.0..sroa_idx.i216, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i.i731 = load ptr, ptr %i.jo, align 8, !tbaa !205 ; 3 uses
  %magicptr.i.i.i732 = ptrtoint ptr %.sroa.0.0.copyload.i.i731 to i64
  switch i64 %magicptr.i.i.i732, label %bb.y [
    i64 -1, label %bb.x
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i733
  ]

bb.x:                                             ; preds = %bb.w
  %i.jp = icmp eq ptr %.sroa.01.0.copyload.i.i729, inttoptr (i64 -1 to ptr)
  br i1 %i.jp, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742, label %bb.ab, !prof !286

bb.y:                                             ; preds = %bb.w
  %.sroa.2.0..sroa_idx.i.i743 = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.sroa.2.0.copyload.i.i744 = load i64, ptr %.sroa.2.0..sroa_idx.i.i743, align 8, !tbaa !147
  %i.jq = icmp eq i64 %.sroa.22.0.copyload.i.i730, %.sroa.2.0.copyload.i.i744
  br i1 %i.jq, label %bb.z, label %bb.ab, !prof !286

bb.z:                                             ; preds = %bb.y
  %i.jr = icmp eq i64 %.sroa.22.0.copyload.i.i730, 0
  br i1 %i.jr, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %bcmp.i.i.i745 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i729, ptr %.sroa.0.0.copyload.i.i731, i64 %.sroa.22.0.copyload.i.i730)
  %i.js = icmp eq i32 %bcmp.i.i.i745, 0
  br i1 %i.js, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742, label %bb.ab, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i733: ; preds = %bb.w
  %i.jt = icmp eq ptr %.sroa.01.0.copyload.i.i729, inttoptr (i64 -2 to ptr)
  br i1 %i.jt, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742, label %bb.ab, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i733, %bb.aa, %bb.z, %bb.x
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jv = load i32, ptr %i.bo, align 8, !tbaa !4
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !4
  %i.jx = icmp eq i32 %i.jv, %i.jw
  br i1 %i.jx, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread1090, label %bb.ab, !prof !287

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread1090: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit219

bb.ab:                                            ; preds = %bb.x, %bb.y, %bb.aa, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i733, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i742
  %i.jy = icmp eq ptr %.sroa.0.0.copyload.i.i731, inttoptr (i64 -1 to ptr)
  br i1 %i.jy, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970: ; preds = %bb.ab
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = icmp eq i32 %i.ka, -1
  br i1 %i.kb, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970.thread: ; preds = %bb.ab, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970
  %i.kc = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.jo, ptr noundef nonnull align 8 dereferenceable(20) %5) ; 0 uses
  %i.kd = add i32 %.025.i728, 1
  %i.ke = add i32 %.025.i728, %.027.i727
  %i.kf = and i32 %i.ke, %i.jl
  br label %bb.w, !llvm.loop !288

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit970
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread: ; preds = %bb.u, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.kg = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.kh = load ptr, ptr %i.h, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br i1 %i.kg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i217, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread
  %i.ki = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %24, ptr noundef nonnull align 8 dereferenceable(20) %24, ptr noundef %i.kh) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ki, ptr noundef nonnull align 8 dereferenceable(20) %24, i64 16, i1 false), !tbaa.struct !264
  %i.kj = load i32, ptr %i.bo, align 8, !tbaa !206
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 %i.kj, ptr %i.kk, align 8, !tbaa !206
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store i32 0, ptr %i.kl, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i217

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i217: ; preds = %bb.ac, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread
  %.0.i.i.i218 = phi ptr [ %i.ki, %bb.ac ], [ %i.kh, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i.i218, i64 24
  store i32 4, ptr %i.km, align 4, !tbaa !4
  %i.kn = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.kn) #24
  %i.ko = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ko, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ko, ptr nonnull @.str.35, i64 34) #24
  %i.kp = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.kp, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.kp, i32 noundef %i.fd) #24
  %i.kq = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.kq, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.kq, i32 noundef 4) #24
  %i.kr = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.kr) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit219

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit219: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit746.thread1090, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %.pre.i57 = load ptr, ptr %i.al, align 8, !tbaa !91
  br label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i58

_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i58: ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit219, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit223
  %i.ks = phi ptr [ %i.if, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit223 ], [ %.pre.i57, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit219 ] ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = call i64 %i.kv(ptr noundef nonnull align 8 dereferenceable(280) %i.ks, i32 noundef %i.fd) #24, !inline_history !317 ; 3 uses
  %.sroa.016.0.extract.trunc.i59 = trunc i64 %i.kw to i32 ; 3 uses
  %.sroa.5.0.extract.shift.i60 = lshr i64 %i.kw, 32
  %.sroa.5.0.extract.trunc.i61 = trunc nuw i64 %.sroa.5.0.extract.shift.i60 to i32 ; 2 uses
  %i.kx = icmp ugt i32 %.sroa.016.0.extract.trunc.i59, 8388607
  %i.ky = and i32 %.sroa.5.0.extract.trunc.i61, 2147483647 ; 3 uses
  %i.kz = icmp samesign ugt i32 %i.ky, 254
  %or.cond.not.i62 = select i1 %i.kx, i1 true, i1 %i.kz
  %47 = shl nuw nsw i32 %.sroa.016.0.extract.trunc.i59, 1
  %48 = shl i32 %.sroa.5.0.extract.trunc.i61, 24
  %49 = add nuw nsw i32 %48, %47
  %50 = icmp ugt i32 %49, -16777217
  %storemerge.i.i63 = select i1 %or.cond.not.i62, i1 true, i1 %50
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  store ptr @.str.31, ptr %25, align 8, !tbaa !205
  store i64 23, ptr %.sroa.3.0..sroa_idx.i212, align 8, !tbaa !147
  store i32 %i.fd, ptr %i.bq, align 8, !tbaa !206
  %i.la = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.lb = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %6, align 8, !tbaa !205, !alias.scope !318
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i696, align 8, !tbaa !147, !alias.scope !318
  store i32 -2, ptr %i.br, align 8, !tbaa !206, !alias.scope !323
  %i.ld = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.31, i64 23) #24
  %i.le = shl i64 %i.ld, 32
  %i.lf = load i32, ptr %i.bq, align 8, !tbaa !4
  %i.lg = mul i32 %i.lf, 37
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %i.li = or disjoint i64 %i.le, %i.lh
  %i.lj = shl nuw i64 %i.lh, 32
  %i.lk = xor i64 %i.lj, -1
  %i.ll = add i64 %i.li, %i.lk                    ; 2 uses
  %i.lm = lshr i64 %i.ll, 22
  %i.ln = xor i64 %i.lm, %i.ll                    ; 2 uses
  %i.lo = shl i64 %i.ln, 13
  %i.lp = xor i64 %i.lo, -1
  %i.lq = add i64 %i.ln, %i.lp                    ; 2 uses
  %i.lr = lshr i64 %i.lq, 8
  %i.ls = xor i64 %i.lr, %i.lq
  %i.lt = mul i64 %i.ls, 9                        ; 2 uses
  %i.lu = lshr i64 %i.lt, 15
  %i.lv = xor i64 %i.lu, %i.lt                    ; 2 uses
  %i.lw = shl i64 %i.lv, 27
  %i.lx = xor i64 %i.lw, -1
  %i.ly = add i64 %i.lv, %i.lx                    ; 2 uses
  %i.lz = lshr i64 %i.ly, 31
  %i.ma = xor i64 %i.lz, %i.ly
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = add i32 %i.lb, -1                       ; 2 uses
  %i.md = and i32 %i.mc, %i.mb
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959.thread, %bb.ad
  %.027.i701 = phi i32 [ %i.md, %bb.ad ], [ %i.mw, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959.thread ] ; 2 uses
  %.025.i702 = phi i32 [ 1, %bb.ad ], [ %i.mu, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959.thread ] ; 2 uses
  %i.me = zext i32 %.027.i701 to i64
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.la, i64 %i.me ; 5 uses
  %.sroa.01.0.copyload.i.i703 = load ptr, ptr %25, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i.i704 = load i64, ptr %.sroa.3.0..sroa_idx.i212, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i.i705 = load ptr, ptr %i.mf, align 8, !tbaa !205 ; 3 uses
  %magicptr.i.i.i706 = ptrtoint ptr %.sroa.0.0.copyload.i.i705 to i64
  switch i64 %magicptr.i.i.i706, label %bb.ag [
    i64 -1, label %bb.af
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i707
  ]

bb.af:                                            ; preds = %bb.ae
  %i.mg = icmp eq ptr %.sroa.01.0.copyload.i.i703, inttoptr (i64 -1 to ptr)
  br i1 %i.mg, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716, label %bb.aj, !prof !286

bb.ag:                                            ; preds = %bb.ae
  %.sroa.2.0..sroa_idx.i.i717 = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.sroa.2.0.copyload.i.i718 = load i64, ptr %.sroa.2.0..sroa_idx.i.i717, align 8, !tbaa !147
  %i.mh = icmp eq i64 %.sroa.22.0.copyload.i.i704, %.sroa.2.0.copyload.i.i718
  br i1 %i.mh, label %bb.ah, label %bb.aj, !prof !286

bb.ah:                                            ; preds = %bb.ag
  %i.mi = icmp eq i64 %.sroa.22.0.copyload.i.i704, 0
  br i1 %i.mi, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %bcmp.i.i.i719 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i703, ptr %.sroa.0.0.copyload.i.i705, i64 %.sroa.22.0.copyload.i.i704)
  %i.mj = icmp eq i32 %bcmp.i.i.i719, 0
  br i1 %i.mj, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716, label %bb.aj, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i707: ; preds = %bb.ae
  %i.mk = icmp eq ptr %.sroa.01.0.copyload.i.i703, inttoptr (i64 -2 to ptr)
  br i1 %i.mk, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716, label %bb.aj, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i707, %bb.ai, %bb.ah, %bb.af
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mm = load i32, ptr %i.bq, align 8, !tbaa !4
  %i.mn = load i32, ptr %i.ml, align 4, !tbaa !4
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread1093, label %bb.aj, !prof !287

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread1093: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit215

bb.aj:                                            ; preds = %bb.af, %bb.ag, %bb.ai, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i707, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i716
  %i.mp = icmp eq ptr %.sroa.0.0.copyload.i.i705, inttoptr (i64 -1 to ptr)
  br i1 %i.mp, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959: ; preds = %bb.aj
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !4
  %i.ms = icmp eq i32 %i.mr, -1
  br i1 %i.ms, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959.thread: ; preds = %bb.aj, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959
  %i.mt = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.mf, ptr noundef nonnull align 8 dereferenceable(20) %6) ; 0 uses
  %i.mu = add i32 %.025.i702, 1
  %i.mv = add i32 %.025.i702, %.027.i701
  %i.mw = and i32 %i.mv, %i.mc
  br label %bb.ae, !llvm.loop !288

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit959
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread: ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i58, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.mx = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.my = load ptr, ptr %i.i, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br i1 %i.mx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i213, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread
  %i.mz = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %25, ptr noundef nonnull align 8 dereferenceable(20) %25, ptr noundef %i.my) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.mz, ptr noundef nonnull align 8 dereferenceable(20) %25, i64 16, i1 false), !tbaa.struct !264
  %i.na = load i32, ptr %i.bq, align 8, !tbaa !206
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i32 %i.na, ptr %i.nb, align 8, !tbaa !206
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i32 0, ptr %i.nc, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i213

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i213: ; preds = %bb.ak, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread
  %.0.i.i.i214 = phi ptr [ %i.mz, %bb.ak ], [ %i.my, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.i.i.i214, i64 24
  store i32 4, ptr %i.nd, align 4, !tbaa !4
  %i.ne = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ne) #24
  %i.nf = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.nf, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.nf, ptr nonnull @.str.31, i64 23) #24
  %i.ng = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ng, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ng, i32 noundef %i.fd) #24
  %i.nh = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.nh, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.nh, i32 noundef 4) #24
  %i.ni = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ni) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit215

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit215: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit720.thread1093, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br i1 %storemerge.i.i63, label %bb.al, label %bb.au

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  store ptr @.str.32, ptr %26, align 8, !tbaa !205
  store i64 26, ptr %.sroa.3.0..sroa_idx.i208, align 8, !tbaa !147
  store i32 %i.fd, ptr %i.bs, align 8, !tbaa !206
  %i.nj = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.nk = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit694.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %7, align 8, !tbaa !205, !alias.scope !326
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i670, align 8, !tbaa !147, !alias.scope !326
  store i32 -2, ptr %i.bt, align 8, !tbaa !206, !alias.scope !331
  %i.nm = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.32, i64 26) #24
  %i.nn = shl i64 %i.nm, 32
  %i.no = load i32, ptr %i.bs, align 8, !tbaa !4
  %i.np = mul i32 %i.no, 37
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = or disjoint i64 %i.nn, %i.nq
  %i.ns = shl nuw i64 %i.nq, 32
  %i.nt = xor i64 %i.ns, -1
  %i.nu = add i64 %i.nr, %i.nt                    ; 2 uses
  %i.nv = lshr i64 %i.nu, 22
  %i.nw = xor i64 %i.nv, %i.nu                    ; 2 uses
  %i.nx = shl i64 %i.nw, 13
  %i.ny = xor i64 %i.nx, -1
  %i.nz = add i64 %i.nw, %i.ny                    ; 2 uses
  %i.oa = lshr i64 %i.nz, 8
  %i.ob = xor i64 %i.oa, %i.nz
  %i.oc = mul i64 %i.ob, 9                        ; 2 uses
  %i.od = lshr i64 %i.oc, 15
  %i.oe = xor i64 %i.od, %i.oc                    ; 2 uses
  %i.of = shl i64 %i.oe, 27
  %i.og = xor i64 %i.of, -1
  %i.oh = add i64 %i.oe, %i.og                    ; 2 uses
  %i.oi = lshr i64 %i.oh, 31
  %i.oj = xor i64 %i.oi, %i.oh
  %i.ok = trunc i64 %i.oj to i32
  %i.ol = add i32 %i.nk, -1                       ; 2 uses
  %i.om = and i32 %i.ol, %i.ok
  br label %bb.an

bb.an:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit948.thread, %bb.am
  %.027.i675 = phi i32 [ %i.om, %bb.am ], [ %i.pf, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit948.thread ] ; 2 uses
  %.025.i676 = phi i32 [ 1, %bb.am ], [ %i.pd, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit948.thread ] ; 2 uses
  %i.on = zext i32 %.027.i675 to i64
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj:bb.a

bb.ce:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit596.thread
  %i.zw = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %29, ptr noundef nonnull align 8 dereferenceable(20) %29, ptr noundef %i.zv) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.zw, ptr noundef nonnull align 8 dereferenceable(20) %29, i64 16, i1 false), !tbaa.struct !264
  %i.zx = load i32, ptr %i.az, align 8, !tbaa !206
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  store i32 %i.zx, ptr %i.zy, align 8, !tbaa !206
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 24
  store i32 0, ptr %i.zz, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i175

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i175: ; preds = %bb.ce, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit596.thread
  %.0.i.i.i176 = phi ptr [ %i.zw, %bb.ce ], [ %i.zv, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit596.thread ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0.i.i.i176, i64 24
  store i32 4, ptr %i.aaa, align 4, !tbaa !4
  %i.aab = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aab) #24
  %i.aac = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aac, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aac, ptr nonnull @.str.34, i64 16) #24
  %i.aad = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aad, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.aad, i32 noundef %i.xw) #24
  %i.aae = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aae, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.aae, i32 noundef 4) #24
  %i.aaf = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aaf) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit177

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit177: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit596.thread1111, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.aag = load ptr, ptr %i.al, align 8, !tbaa !91 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %.sroa.0.0.copyload.i.i.i25 = load ptr, ptr %i.aah, align 8, !tbaa !146
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i25, i64 %i.xu
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !267
  %.not.i.i26 = icmp sgt i32 %i.aaj, -1
  br i1 %.not.i.i26, label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i28, label %bb.cf

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit177
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store ptr @.str.35, ptr %30, align 8, !tbaa !205
  store i64 34, ptr %.sroa.3.0..sroa_idx.i170, align 8, !tbaa !147
  store i32 %i.xe, ptr %i.bb, align 8, !tbaa !206
  %i.aak = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.aal = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.aam = icmp eq i32 %i.aal, 0
  br i1 %i.aam, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %11, align 8, !tbaa !205, !alias.scope !366
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i546, align 8, !tbaa !147, !alias.scope !366
  store i32 -2, ptr %i.bc, align 8, !tbaa !206, !alias.scope !371
  %i.aan = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.35, i64 34) #24
  %i.aao = shl i64 %i.aan, 32
  %i.aap = load i32, ptr %i.bb, align 8, !tbaa !4
  %i.aaq = mul i32 %i.aap, 37
  %i.aar = zext i32 %i.aaq to i64                 ; 2 uses
  %i.aas = or disjoint i64 %i.aao, %i.aar
  %i.aat = shl nuw i64 %i.aar, 32
  %i.aau = xor i64 %i.aat, -1
  %i.aav = add i64 %i.aas, %i.aau                 ; 2 uses
  %i.aaw = lshr i64 %i.aav, 22
  %i.aax = xor i64 %i.aaw, %i.aav                 ; 2 uses
  %i.aay = shl i64 %i.aax, 13
  %i.aaz = xor i64 %i.aay, -1
  %i.aba = add i64 %i.aax, %i.aaz                 ; 2 uses
  %i.abb = lshr i64 %i.aba, 8
  %i.abc = xor i64 %i.abb, %i.aba
  %i.abd = mul i64 %i.abc, 9                      ; 2 uses
  %i.abe = lshr i64 %i.abd, 15
  %i.abf = xor i64 %i.abe, %i.abd                 ; 2 uses
  %i.abg = shl i64 %i.abf, 27
  %i.abh = xor i64 %i.abg, -1
  %i.abi = add i64 %i.abf, %i.abh                 ; 2 uses
  %i.abj = lshr i64 %i.abi, 31
  %i.abk = xor i64 %i.abj, %i.abi
  %i.abl = trunc i64 %i.abk to i32
  %i.abm = add i32 %i.aal, -1                     ; 2 uses
  %i.abn = and i32 %i.abm, %i.abl
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904.thread, %bb.cg
  %.027.i551 = phi i32 [ %i.abn, %bb.cg ], [ %i.acg, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904.thread ] ; 2 uses
  %.025.i552 = phi i32 [ 1, %bb.cg ], [ %i.ace, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904.thread ] ; 2 uses
  %i.abo = zext i32 %.027.i551 to i64
  %i.abp = getelementptr inbounds nuw [32 x i8], ptr %i.aak, i64 %i.abo ; 5 uses
  %.sroa.01.0.copyload.i.i553 = load ptr, ptr %30, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i.i554 = load i64, ptr %.sroa.3.0..sroa_idx.i170, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i.i555 = load ptr, ptr %i.abp, align 8, !tbaa !205 ; 3 uses
  %magicptr.i.i.i556 = ptrtoint ptr %.sroa.0.0.copyload.i.i555 to i64
  switch i64 %magicptr.i.i.i556, label %bb.cj [
    i64 -1, label %bb.ci
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i557
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.abq = icmp eq ptr %.sroa.01.0.copyload.i.i553, inttoptr (i64 -1 to ptr)
  br i1 %i.abq, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566, label %bb.cm, !prof !286

bb.cj:                                            ; preds = %bb.ch
  %.sroa.2.0..sroa_idx.i.i567 = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %.sroa.2.0.copyload.i.i568 = load i64, ptr %.sroa.2.0..sroa_idx.i.i567, align 8, !tbaa !147
  %i.abr = icmp eq i64 %.sroa.22.0.copyload.i.i554, %.sroa.2.0.copyload.i.i568
  br i1 %i.abr, label %bb.ck, label %bb.cm, !prof !286

bb.ck:                                            ; preds = %bb.cj
  %i.abs = icmp eq i64 %.sroa.22.0.copyload.i.i554, 0
  br i1 %i.abs, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %bcmp.i.i.i569 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i553, ptr %.sroa.0.0.copyload.i.i555, i64 %.sroa.22.0.copyload.i.i554)
  %i.abt = icmp eq i32 %bcmp.i.i.i569, 0
  br i1 %i.abt, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566, label %bb.cm, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i557: ; preds = %bb.ch
  %i.abu = icmp eq ptr %.sroa.01.0.copyload.i.i553, inttoptr (i64 -2 to ptr)
  br i1 %i.abu, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566, label %bb.cm, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i557, %bb.cl, %bb.ck, %bb.ci
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.abw = load i32, ptr %i.bb, align 8, !tbaa !4
  %i.abx = load i32, ptr %i.abv, align 4, !tbaa !4
  %i.aby = icmp eq i32 %i.abw, %i.abx
  br i1 %i.aby, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread1114, label %bb.cm, !prof !287

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread1114: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit173

bb.cm:                                            ; preds = %bb.ci, %bb.cj, %bb.cl, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i557, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i566
  %i.abz = icmp eq ptr %.sroa.0.0.copyload.i.i555, inttoptr (i64 -1 to ptr)
  br i1 %i.abz, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904: ; preds = %bb.cm
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !4
  %i.acc = icmp eq i32 %i.acb, -1
  br i1 %i.acc, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904.thread: ; preds = %bb.cm, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904
  %i.acd = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.abp, ptr noundef nonnull align 8 dereferenceable(20) %11) ; 0 uses
  %i.ace = add i32 %.025.i552, 1
  %i.acf = add i32 %.025.i552, %.027.i551
  %i.acg = and i32 %i.acf, %i.abm
  br label %bb.ch, !llvm.loop !288

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit904
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread: ; preds = %bb.cf, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  %i.ach = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.aci = load ptr, ptr %i.l, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  br i1 %i.ach, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i171, label %bb.cn

bb.cn:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread
  %i.acj = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %30, ptr noundef nonnull align 8 dereferenceable(20) %30, ptr noundef %i.aci) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.acj, ptr noundef nonnull align 8 dereferenceable(20) %30, i64 16, i1 false), !tbaa.struct !264
  %i.ack = load i32, ptr %i.bb, align 8, !tbaa !206
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  store i32 %i.ack, ptr %i.acl, align 8, !tbaa !206
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  store i32 0, ptr %i.acm, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i171

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i171: ; preds = %bb.cn, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread
  %.0.i.i.i172 = phi ptr [ %i.acj, %bb.cn ], [ %i.aci, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread ]
  %i.acn = getelementptr inbounds nuw i8, ptr %.0.i.i.i172, i64 24
  store i32 4, ptr %i.acn, align 4, !tbaa !4
  %i.aco = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aco) #24
  %i.acp = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.acp, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.acp, ptr nonnull @.str.35, i64 34) #24
  %i.acq = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.acq, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.acq, i32 noundef %i.xe) #24
  %i.acr = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.acr, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.acr, i32 noundef 4) #24
  %i.acs = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.acs) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit173

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit173: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit570.thread1114, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %.pre.i27 = load ptr, ptr %i.al, align 8, !tbaa !91
  br label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i28

_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i28: ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit173, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit177
  %i.act = phi ptr [ %i.aag, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit177 ], [ %.pre.i27, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit173 ] ; 2 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !8
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.acw = load ptr, ptr %i.acv, align 8
  %i.acx = call i64 %i.acw(ptr noundef nonnull align 8 dereferenceable(280) %i.act, i32 noundef %i.xe) #24, !inline_history !317 ; 3 uses
  %.sroa.016.0.extract.trunc.i29 = trunc i64 %i.acx to i32 ; 3 uses
  %.sroa.5.0.extract.shift.i30 = lshr i64 %i.acx, 32
  %.sroa.5.0.extract.trunc.i31 = trunc nuw i64 %.sroa.5.0.extract.shift.i30 to i32 ; 2 uses
  %i.acy = icmp ugt i32 %.sroa.016.0.extract.trunc.i29, 8388607
  %i.acz = and i32 %.sroa.5.0.extract.trunc.i31, 2147483647 ; 3 uses
  %i.ada = icmp samesign ugt i32 %i.acz, 254
  %or.cond.not.i32 = select i1 %i.acy, i1 true, i1 %i.ada
  %51 = shl nuw nsw i32 %.sroa.016.0.extract.trunc.i29, 1
  %52 = shl i32 %.sroa.5.0.extract.trunc.i31, 24
  %53 = add nuw nsw i32 %52, %51
  %54 = icmp ugt i32 %53, -16777217
  %storemerge.i.i33 = select i1 %or.cond.not.i32, i1 true, i1 %54
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  store ptr @.str.31, ptr %31, align 8, !tbaa !205
  store i64 23, ptr %.sroa.3.0..sroa_idx.i166, align 8, !tbaa !147
  store i32 %i.xe, ptr %i.bd, align 8, !tbaa !206
  %i.adb = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.adc = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread, label %bb.co

bb.co:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %12, align 8, !tbaa !205, !alias.scope !374
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i520, align 8, !tbaa !147, !alias.scope !374
  store i32 -2, ptr %i.be, align 8, !tbaa !206, !alias.scope !379
  %i.ade = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.31, i64 23) #24
  %i.adf = shl i64 %i.ade, 32
  %i.adg = load i32, ptr %i.bd, align 8, !tbaa !4
  %i.adh = mul i32 %i.adg, 37
  %i.adi = zext i32 %i.adh to i64                 ; 2 uses
  %i.adj = or disjoint i64 %i.adf, %i.adi
  %i.adk = shl nuw i64 %i.adi, 32
  %i.adl = xor i64 %i.adk, -1
  %i.adm = add i64 %i.adj, %i.adl                 ; 2 uses
  %i.adn = lshr i64 %i.adm, 22
  %i.ado = xor i64 %i.adn, %i.adm                 ; 2 uses
  %i.adp = shl i64 %i.ado, 13
  %i.adq = xor i64 %i.adp, -1
  %i.adr = add i64 %i.ado, %i.adq                 ; 2 uses
  %i.ads = lshr i64 %i.adr, 8
  %i.adt = xor i64 %i.ads, %i.adr
  %i.adu = mul i64 %i.adt, 9                      ; 2 uses
  %i.adv = lshr i64 %i.adu, 15
  %i.adw = xor i64 %i.adv, %i.adu                 ; 2 uses
  %i.adx = shl i64 %i.adw, 27
  %i.ady = xor i64 %i.adx, -1
  %i.adz = add i64 %i.adw, %i.ady                 ; 2 uses
  %i.aea = lshr i64 %i.adz, 31
  %i.aeb = xor i64 %i.aea, %i.adz
  %i.aec = trunc i64 %i.aeb to i32
  %i.aed = add i32 %i.adc, -1                     ; 2 uses
  %i.aee = and i32 %i.aed, %i.aec
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893.thread, %bb.co
  %.027.i525 = phi i32 [ %i.aee, %bb.co ], [ %i.aex, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893.thread ] ; 2 uses
  %.025.i526 = phi i32 [ 1, %bb.co ], [ %i.aev, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893.thread ] ; 2 uses
  %i.aef = zext i32 %.027.i525 to i64
  %i.aeg = getelementptr inbounds nuw [32 x i8], ptr %i.adb, i64 %i.aef ; 5 uses
  %.sroa.01.0.copyload.i.i527 = load ptr, ptr %31, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i.i528 = load i64, ptr %.sroa.3.0..sroa_idx.i166, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i.i529 = load ptr, ptr %i.aeg, align 8, !tbaa !205 ; 3 uses
  %magicptr.i.i.i530 = ptrtoint ptr %.sroa.0.0.copyload.i.i529 to i64
  switch i64 %magicptr.i.i.i530, label %bb.cr [
    i64 -1, label %bb.cq
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i531
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.aeh = icmp eq ptr %.sroa.01.0.copyload.i.i527, inttoptr (i64 -1 to ptr)
  br i1 %i.aeh, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540, label %bb.cu, !prof !286

bb.cr:                                            ; preds = %bb.cp
  %.sroa.2.0..sroa_idx.i.i541 = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %.sroa.2.0.copyload.i.i542 = load i64, ptr %.sroa.2.0..sroa_idx.i.i541, align 8, !tbaa !147
  %i.aei = icmp eq i64 %.sroa.22.0.copyload.i.i528, %.sroa.2.0.copyload.i.i542
  br i1 %i.aei, label %bb.cs, label %bb.cu, !prof !286

bb.cs:                                            ; preds = %bb.cr
  %i.aej = icmp eq i64 %.sroa.22.0.copyload.i.i528, 0
  br i1 %i.aej, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %bcmp.i.i.i543 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i527, ptr %.sroa.0.0.copyload.i.i529, i64 %.sroa.22.0.copyload.i.i528)
  %i.aek = icmp eq i32 %bcmp.i.i.i543, 0
  br i1 %i.aek, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540, label %bb.cu, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i531: ; preds = %bb.cp
  %i.ael = icmp eq ptr %.sroa.01.0.copyload.i.i527, inttoptr (i64 -2 to ptr)
  br i1 %i.ael, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540, label %bb.cu, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i531, %bb.ct, %bb.cs, %bb.cq
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aen = load i32, ptr %i.bd, align 8, !tbaa !4
  %i.aeo = load i32, ptr %i.aem, align 4, !tbaa !4
  %i.aep = icmp eq i32 %i.aen, %i.aeo
  br i1 %i.aep, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread1117, label %bb.cu, !prof !287

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread1117: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit169

bb.cu:                                            ; preds = %bb.cq, %bb.cr, %bb.ct, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i531, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i540
  %i.aeq = icmp eq ptr %.sroa.0.0.copyload.i.i529, inttoptr (i64 -1 to ptr)
  br i1 %i.aeq, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893: ; preds = %bb.cu
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !4
  %i.aet = icmp eq i32 %i.aes, -1
  br i1 %i.aet, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893.thread: ; preds = %bb.cu, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893
  %i.aeu = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.aeg, ptr noundef nonnull align 8 dereferenceable(20) %12) ; 0 uses
  %i.aev = add i32 %.025.i526, 1
  %i.aew = add i32 %.025.i526, %.027.i525
  %i.aex = and i32 %i.aew, %i.aed
  br label %bb.cp, !llvm.loop !288

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit893
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread: ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i28, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  %i.aey = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.aez = load ptr, ptr %i.m, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  br i1 %i.aey, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i167, label %bb.cv

bb.cv:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread
  %i.afa = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %31, ptr noundef nonnull align 8 dereferenceable(20) %31, ptr noundef %i.aez) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.afa, ptr noundef nonnull align 8 dereferenceable(20) %31, i64 16, i1 false), !tbaa.struct !264
  %i.afb = load i32, ptr %i.bd, align 8, !tbaa !206
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  store i32 %i.afb, ptr %i.afc, align 8, !tbaa !206
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afa, i64 24
  store i32 0, ptr %i.afd, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i167

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i167: ; preds = %bb.cv, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread
  %.0.i.i.i168 = phi ptr [ %i.afa, %bb.cv ], [ %i.aez, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread ]
  %i.afe = getelementptr inbounds nuw i8, ptr %.0.i.i.i168, i64 24
  store i32 4, ptr %i.afe, align 4, !tbaa !4
  %i.aff = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aff) #24
  %i.afg = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.afg, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.afg, ptr nonnull @.str.31, i64 23) #24
  %i.afh = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.afh, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.afh, i32 noundef %i.xe) #24
  %i.afi = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.afi, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.afi, i32 noundef 4) #24
  %i.afj = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.afj) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit169

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit169: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit544.thread1117, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  br i1 %storemerge.i.i33, label %bb.cw, label %bb.df

bb.cw:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  store ptr @.str.32, ptr %32, align 8, !tbaa !205
  store i64 26, ptr %.sroa.3.0..sroa_idx.i162, align 8, !tbaa !147
  store i32 %i.xe, ptr %i.bf, align 8, !tbaa !206
  %i.afk = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.afl = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.afm = icmp eq i32 %i.afl, 0
  br i1 %i.afm, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit518.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %13, align 8, !tbaa !205, !alias.scope !382
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i494, align 8, !tbaa !147, !alias.scope !382
  store i32 -2, ptr %i.bg, align 8, !tbaa !206, !alias.scope !387
  %i.afn = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.32, i64 26) #24
  %i.afo = shl i64 %i.afn, 32
  %i.afp = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.afq = mul i32 %i.afp, 37
  %i.afr = zext i32 %i.afq to i64                 ; 2 uses
  %i.afs = or disjoint i64 %i.afo, %i.afr
  %i.aft = shl nuw i64 %i.afr, 32
  %i.afu = xor i64 %i.aft, -1
  %i.afv = add i64 %i.afs, %i.afu                 ; 2 uses
  %i.afw = lshr i64 %i.afv, 22
  %i.afx = xor i64 %i.afw, %i.afv                 ; 2 uses
  %i.afy = shl i64 %i.afx, 13
  %i.afz = xor i64 %i.afy, -1
  %i.aga = add i64 %i.afx, %i.afz                 ; 2 uses
  %i.agb = lshr i64 %i.aga, 8
  %i.agc = xor i64 %i.agb, %i.aga
  %i.agd = mul i64 %i.agc, 9                      ; 2 uses
  %i.age = lshr i64 %i.agd, 15
  %i.agf = xor i64 %i.age, %i.agd                 ; 2 uses
  %i.agg = shl i64 %i.agf, 27
  %i.agh = xor i64 %i.agg, -1
  %i.agi = add i64 %i.agf, %i.agh                 ; 2 uses
  %i.agj = lshr i64 %i.agi, 31
  %i.agk = xor i64 %i.agj, %i.agi
  %i.agl = trunc i64 %i.agk to i32
  %i.agm = add i32 %i.afl, -1                     ; 2 uses
  %i.agn = and i32 %i.agm, %i.agl
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit882.thread, %bb.cx
  %.027.i499 = phi i32 [ %i.agn, %bb.cx ], [ %i.ahg, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit882.thread ] ; 2 uses
  %.025.i500 = phi i32 [ 1, %bb.cx ], [ %i.ahe, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit882.thread ] ; 2 uses
  %i.ago = zext i32 %.027.i499 to i64
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj:bb.a

bb.ep:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit420.thread
  %i.arw = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %35, ptr noundef nonnull align 8 dereferenceable(20) %35, ptr noundef %i.arv) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.arw, ptr noundef nonnull align 8 dereferenceable(20) %35, i64 16, i1 false), !tbaa.struct !264
  %i.arx = load i32, ptr %i.aj, align 8, !tbaa !206
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  store i32 %i.arx, ptr %i.ary, align 8, !tbaa !206
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 24
  store i32 0, ptr %i.arz, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i129

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i129: ; preds = %bb.ep, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit420.thread
  %.0.i.i.i130 = phi ptr [ %i.arw, %bb.ep ], [ %i.arv, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit420.thread ]
  %i.asa = getelementptr inbounds nuw i8, ptr %.0.i.i.i130, i64 24
  store i32 4, ptr %i.asa, align 4, !tbaa !4
  %i.asb = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.asb) #24
  %i.asc = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.asc, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.asc, ptr nonnull @.str.34, i64 16) #24
  %i.asd = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.asd, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.asd, i32 noundef %i.apw) #24
  %i.ase = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.ase, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ase, i32 noundef 4) #24
  %i.asf = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.asf) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit131

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit131: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit420.thread1137, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.asg = load ptr, ptr %i.al, align 8, !tbaa !91 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ash, align 8, !tbaa !146
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.apu
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !267
  %.not.i.i = icmp sgt i32 %i.asj, -1
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i, label %bb.eq

bb.eq:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  store ptr @.str.35, ptr %36, align 8, !tbaa !205
  store i64 34, ptr %.sroa.3.0..sroa_idx.i124, align 8, !tbaa !147
  store i32 %.0.copyload.i23.i, ptr %i.am, align 8, !tbaa !206
  %i.ask = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.asl = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.asm = icmp eq i32 %i.asl, 0
  br i1 %i.asm, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %17, align 8, !tbaa !205, !alias.scope !422
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i370, align 8, !tbaa !147, !alias.scope !422
  store i32 -2, ptr %i.an, align 8, !tbaa !206, !alias.scope !427
  %i.asn = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.35, i64 34) #24
  %i.aso = shl i64 %i.asn, 32
  %i.asp = load i32, ptr %i.am, align 8, !tbaa !4
  %i.asq = mul i32 %i.asp, 37
  %i.asr = zext i32 %i.asq to i64                 ; 2 uses
  %i.ass = or disjoint i64 %i.aso, %i.asr
  %i.ast = shl nuw i64 %i.asr, 32
  %i.asu = xor i64 %i.ast, -1
  %i.asv = add i64 %i.ass, %i.asu                 ; 2 uses
  %i.asw = lshr i64 %i.asv, 22
  %i.asx = xor i64 %i.asw, %i.asv                 ; 2 uses
  %i.asy = shl i64 %i.asx, 13
  %i.asz = xor i64 %i.asy, -1
  %i.ata = add i64 %i.asx, %i.asz                 ; 2 uses
  %i.atb = lshr i64 %i.ata, 8
  %i.atc = xor i64 %i.atb, %i.ata
  %i.atd = mul i64 %i.atc, 9                      ; 2 uses
  %i.ate = lshr i64 %i.atd, 15
  %i.atf = xor i64 %i.ate, %i.atd                 ; 2 uses
  %i.atg = shl i64 %i.atf, 27
  %i.ath = xor i64 %i.atg, -1
  %i.ati = add i64 %i.atf, %i.ath                 ; 2 uses
  %i.atj = lshr i64 %i.ati, 31
  %i.atk = xor i64 %i.atj, %i.ati
  %i.atl = trunc i64 %i.atk to i32
  %i.atm = add i32 %i.asl, -1                     ; 2 uses
  %i.atn = and i32 %i.atm, %i.atl
  br label %bb.es

bb.es:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838.thread, %bb.er
  %.027.i375 = phi i32 [ %i.atn, %bb.er ], [ %i.aug, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838.thread ] ; 2 uses
  %.025.i376 = phi i32 [ 1, %bb.er ], [ %i.aue, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838.thread ] ; 2 uses
  %i.ato = zext i32 %.027.i375 to i64
  %i.atp = getelementptr inbounds nuw [32 x i8], ptr %i.ask, i64 %i.ato ; 5 uses
  %.sroa.01.0.copyload.i.i377 = load ptr, ptr %36, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i.i378 = load i64, ptr %.sroa.3.0..sroa_idx.i124, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i.i379 = load ptr, ptr %i.atp, align 8, !tbaa !205 ; 3 uses
  %magicptr.i.i.i380 = ptrtoint ptr %.sroa.0.0.copyload.i.i379 to i64
  switch i64 %magicptr.i.i.i380, label %bb.eu [
    i64 -1, label %bb.et
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i381
  ]

bb.et:                                            ; preds = %bb.es
  %i.atq = icmp eq ptr %.sroa.01.0.copyload.i.i377, inttoptr (i64 -1 to ptr)
  br i1 %i.atq, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390, label %bb.ex, !prof !286

bb.eu:                                            ; preds = %bb.es
  %.sroa.2.0..sroa_idx.i.i391 = getelementptr inbounds nuw i8, ptr %i.atp, i64 8
  %.sroa.2.0.copyload.i.i392 = load i64, ptr %.sroa.2.0..sroa_idx.i.i391, align 8, !tbaa !147
  %i.atr = icmp eq i64 %.sroa.22.0.copyload.i.i378, %.sroa.2.0.copyload.i.i392
  br i1 %i.atr, label %bb.ev, label %bb.ex, !prof !286

bb.ev:                                            ; preds = %bb.eu
  %i.ats = icmp eq i64 %.sroa.22.0.copyload.i.i378, 0
  br i1 %i.ats, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %bcmp.i.i.i393 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i377, ptr %.sroa.0.0.copyload.i.i379, i64 %.sroa.22.0.copyload.i.i378)
  %i.att = icmp eq i32 %bcmp.i.i.i393, 0
  br i1 %i.att, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390, label %bb.ex, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i381: ; preds = %bb.es
  %i.atu = icmp eq ptr %.sroa.01.0.copyload.i.i377, inttoptr (i64 -2 to ptr)
  br i1 %i.atu, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390, label %bb.ex, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i381, %bb.ew, %bb.ev, %bb.et
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  %i.atw = load i32, ptr %i.am, align 8, !tbaa !4
  %i.atx = load i32, ptr %i.atv, align 4, !tbaa !4
  %i.aty = icmp eq i32 %i.atw, %i.atx
  br i1 %i.aty, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread1140, label %bb.ex, !prof !287

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread1140: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit127

bb.ex:                                            ; preds = %bb.et, %bb.eu, %bb.ew, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i381, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i390
  %i.atz = icmp eq ptr %.sroa.0.0.copyload.i.i379, inttoptr (i64 -1 to ptr)
  br i1 %i.atz, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838: ; preds = %bb.ex
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !4
  %i.auc = icmp eq i32 %i.aub, -1
  br i1 %i.auc, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838.thread: ; preds = %bb.ex, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838
  %i.aud = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.atp, ptr noundef nonnull align 8 dereferenceable(20) %17) ; 0 uses
  %i.aue = add i32 %.025.i376, 1
  %i.auf = add i32 %.025.i376, %.027.i375
  %i.aug = and i32 %i.auf, %i.atm
  br label %bb.es, !llvm.loop !288

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit838
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread: ; preds = %bb.eq, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  %i.auh = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.aui = load ptr, ptr %i.p, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  br i1 %i.auh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i125, label %bb.ey

bb.ey:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread
  %i.auj = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %36, ptr noundef nonnull align 8 dereferenceable(20) %36, ptr noundef %i.aui) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.auj, ptr noundef nonnull align 8 dereferenceable(20) %36, i64 16, i1 false), !tbaa.struct !264
  %i.auk = load i32, ptr %i.am, align 8, !tbaa !206
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  store i32 %i.auk, ptr %i.aul, align 8, !tbaa !206
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auj, i64 24
  store i32 0, ptr %i.aum, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i125

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i125: ; preds = %bb.ey, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread
  %.0.i.i.i126 = phi ptr [ %i.auj, %bb.ey ], [ %i.aui, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread ]
  %i.aun = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 24
  store i32 4, ptr %i.aun, align 4, !tbaa !4
  %i.auo = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.auo) #24
  %i.aup = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aup, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aup, ptr nonnull @.str.35, i64 34) #24
  %i.auq = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.auq, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.auq, i32 noundef %.0.copyload.i23.i) #24
  %i.aur = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.aur, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.aur, i32 noundef 4) #24
  %i.aus = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aus) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit127

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit127: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit394.thread1140, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !91
  br label %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i

_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i: ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit127, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit131
  %i.aut = phi ptr [ %i.asg, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit131 ], [ %.pre.i, %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit127 ] ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !8
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 8
  %i.auw = load ptr, ptr %i.auv, align 8
  %i.aux = call i64 %i.auw(ptr noundef nonnull align 8 dereferenceable(280) %i.aut, i32 noundef %.0.copyload.i23.i) #24, !inline_history !317 ; 3 uses
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.aux to i32 ; 3 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.aux, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32 ; 2 uses
  %i.auy = icmp ugt i32 %.sroa.016.0.extract.trunc.i, 8388607
  %i.auz = and i32 %.sroa.5.0.extract.trunc.i, 2147483647 ; 3 uses
  %i.ava = icmp samesign ugt i32 %i.auz, 254
  %or.cond.not.i = select i1 %i.auy, i1 true, i1 %i.ava
  %55 = shl nuw nsw i32 %.sroa.016.0.extract.trunc.i, 1
  %56 = shl i32 %.sroa.5.0.extract.trunc.i, 24
  %57 = add nuw nsw i32 %56, %55
  %58 = icmp ugt i32 %57, -16777217
  %storemerge.i.i = select i1 %or.cond.not.i, i1 true, i1 %58
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store ptr @.str.31, ptr %37, align 8, !tbaa !205
  store i64 23, ptr %.sroa.3.0..sroa_idx.i120, align 8, !tbaa !147
  store i32 %.0.copyload.i23.i, ptr %i.ao, align 8, !tbaa !206
  %i.avb = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.avc = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.avd = icmp eq i32 %i.avc, 0
  br i1 %i.avd, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread, label %bb.ez

bb.ez:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %18, align 8, !tbaa !205, !alias.scope !430
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i344, align 8, !tbaa !147, !alias.scope !430
  store i32 -2, ptr %i.ap, align 8, !tbaa !206, !alias.scope !435
  %i.ave = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.31, i64 23) #24
  %i.avf = shl i64 %i.ave, 32
  %i.avg = load i32, ptr %i.ao, align 8, !tbaa !4
  %i.avh = mul i32 %i.avg, 37
  %i.avi = zext i32 %i.avh to i64                 ; 2 uses
  %i.avj = or disjoint i64 %i.avf, %i.avi
  %i.avk = shl nuw i64 %i.avi, 32
  %i.avl = xor i64 %i.avk, -1
  %i.avm = add i64 %i.avj, %i.avl                 ; 2 uses
  %i.avn = lshr i64 %i.avm, 22
  %i.avo = xor i64 %i.avn, %i.avm                 ; 2 uses
  %i.avp = shl i64 %i.avo, 13
  %i.avq = xor i64 %i.avp, -1
  %i.avr = add i64 %i.avo, %i.avq                 ; 2 uses
  %i.avs = lshr i64 %i.avr, 8
  %i.avt = xor i64 %i.avs, %i.avr
  %i.avu = mul i64 %i.avt, 9                      ; 2 uses
  %i.avv = lshr i64 %i.avu, 15
  %i.avw = xor i64 %i.avv, %i.avu                 ; 2 uses
  %i.avx = shl i64 %i.avw, 27
  %i.avy = xor i64 %i.avx, -1
  %i.avz = add i64 %i.avw, %i.avy                 ; 2 uses
  %i.awa = lshr i64 %i.avz, 31
  %i.awb = xor i64 %i.awa, %i.avz
  %i.awc = trunc i64 %i.awb to i32
  %i.awd = add i32 %i.avc, -1                     ; 2 uses
  %i.awe = and i32 %i.awd, %i.awc
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827.thread, %bb.ez
  %.027.i349 = phi i32 [ %i.awe, %bb.ez ], [ %i.awx, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827.thread ] ; 2 uses
  %.025.i350 = phi i32 [ 1, %bb.ez ], [ %i.awv, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827.thread ] ; 2 uses
  %i.awf = zext i32 %.027.i349 to i64
  %i.awg = getelementptr inbounds nuw [32 x i8], ptr %i.avb, i64 %i.awf ; 5 uses
  %.sroa.01.0.copyload.i.i351 = load ptr, ptr %37, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0.copyload.i.i352 = load i64, ptr %.sroa.3.0..sroa_idx.i120, align 8, !tbaa !147 ; 3 uses
  %.sroa.0.0.copyload.i.i353 = load ptr, ptr %i.awg, align 8, !tbaa !205 ; 3 uses
  %magicptr.i.i.i354 = ptrtoint ptr %.sroa.0.0.copyload.i.i353 to i64
  switch i64 %magicptr.i.i.i354, label %bb.fc [
    i64 -1, label %bb.fb
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i355
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.awh = icmp eq ptr %.sroa.01.0.copyload.i.i351, inttoptr (i64 -1 to ptr)
  br i1 %i.awh, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364, label %bb.ff, !prof !286

bb.fc:                                            ; preds = %bb.fa
  %.sroa.2.0..sroa_idx.i.i365 = getelementptr inbounds nuw i8, ptr %i.awg, i64 8
  %.sroa.2.0.copyload.i.i366 = load i64, ptr %.sroa.2.0..sroa_idx.i.i365, align 8, !tbaa !147
  %i.awi = icmp eq i64 %.sroa.22.0.copyload.i.i352, %.sroa.2.0.copyload.i.i366
  br i1 %i.awi, label %bb.fd, label %bb.ff, !prof !286

bb.fd:                                            ; preds = %bb.fc
  %i.awj = icmp eq i64 %.sroa.22.0.copyload.i.i352, 0
  br i1 %i.awj, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %bcmp.i.i.i367 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i351, ptr %.sroa.0.0.copyload.i.i353, i64 %.sroa.22.0.copyload.i.i352)
  %i.awk = icmp eq i32 %bcmp.i.i.i367, 0
  br i1 %i.awk, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364, label %bb.ff, !prof !286

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i355: ; preds = %bb.fa
  %i.awl = icmp eq ptr %.sroa.01.0.copyload.i.i351, inttoptr (i64 -2 to ptr)
  br i1 %i.awl, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364, label %bb.ff, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364: ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i355, %bb.fe, %bb.fd, %bb.fb
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awg, i64 16
  %i.awn = load i32, ptr %i.ao, align 8, !tbaa !4
  %i.awo = load i32, ptr %i.awm, align 4, !tbaa !4
  %i.awp = icmp eq i32 %i.awn, %i.awo
  br i1 %i.awp, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread1143, label %bb.ff, !prof !287

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread1143: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit123

bb.ff:                                            ; preds = %bb.fb, %bb.fc, %bb.fe, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i.i355, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit.i364
  %i.awq = icmp eq ptr %.sroa.0.0.copyload.i.i353, inttoptr (i64 -1 to ptr)
  br i1 %i.awq, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827.thread, !prof !286

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827: ; preds = %bb.ff
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awg, i64 16
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !4
  %i.awt = icmp eq i32 %i.aws, -1
  br i1 %i.awt, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827.thread, !prof !287

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827.thread: ; preds = %bb.ff, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827
  %i.awu = call noundef zeroext i1 @_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(20) %i.awg, ptr noundef nonnull align 8 dereferenceable(20) %18) ; 0 uses
  %i.awv = add i32 %.025.i350, 1
  %i.aww = add i32 %.025.i350, %.027.i349
  %i.awx = and i32 %i.aww, %i.awd
  br label %bb.fa, !llvm.loop !288

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit827
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread: ; preds = %_ZN12_GLOBAL__N_112UsageCounter15countStringKindEj.exit.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  %i.awy = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.awz = load ptr, ptr %i.q, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  br i1 %i.awy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i121, label %bb.fg

bb.fg:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread
  %i.axa = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %37, ptr noundef nonnull align 8 dereferenceable(20) %37, ptr noundef %i.awz) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.axa, ptr noundef nonnull align 8 dereferenceable(20) %37, i64 16, i1 false), !tbaa.struct !264
  %i.axb = load i32, ptr %i.ao, align 8, !tbaa !206
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axa, i64 16
  store i32 %i.axb, ptr %i.axc, align 8, !tbaa !206
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axa, i64 24
  store i32 0, ptr %i.axd, align 8, !tbaa !4
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i121

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i121: ; preds = %bb.fg, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread
  %.0.i.i.i122 = phi ptr [ %i.axa, %bb.fg ], [ %i.awz, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread ]
  %i.axe = getelementptr inbounds nuw i8, ptr %.0.i.i.i122, i64 24
  store i32 4, ptr %i.axe, align 4, !tbaa !4
  %i.axf = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.axf) #24
  %i.axg = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.axg, ptr nonnull @.str.28, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.axg, ptr nonnull @.str.31, i64 23) #24
  %i.axh = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.axh, ptr nonnull @.str.29, i64 8) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.axh, i32 noundef %.0.copyload.i23.i) #24
  %i.axi = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.axi, ptr nonnull @.str.30, i64 4) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.axi, i32 noundef 4) #24
  %i.axj = load ptr, ptr %i.ac, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.axj) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit123

_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit123: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit368.thread1143, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixERKS4_.exit.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br i1 %storemerge.i.i, label %bb.fh, label %bb.fq

bb.fh:                                            ; preds = %_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store ptr @.str.32, ptr %38, align 8, !tbaa !205
  store i64 26, ptr %.sroa.3.0..sroa_idx.i116, align 8, !tbaa !147
  store i32 %.0.copyload.i23.i, ptr %i.aq, align 8, !tbaa !206
  %i.axk = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.axl = load i32, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.axm = icmp eq i32 %i.axl, 0
  br i1 %i.axm, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefEjEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit342.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store ptr inttoptr (i64 -2 to ptr), ptr %19, align 8, !tbaa !205, !alias.scope !438
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i35.i318, align 8, !tbaa !147, !alias.scope !438
  store i32 -2, ptr %i.ar, align 8, !tbaa !206, !alias.scope !443
  %i.axn = call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr nonnull @.str.32, i64 26) #24
  %i.axo = shl i64 %i.axn, 32
  %i.axp = load i32, ptr %i.aq, align 8, !tbaa !4
  %i.axq = mul i32 %i.axp, 37
  %i.axr = zext i32 %i.axq to i64                 ; 2 uses
  %i.axs = or disjoint i64 %i.axo, %i.axr
  %i.axt = shl nuw i64 %i.axr, 32
  %i.axu = xor i64 %i.axt, -1
  %i.axv = add i64 %i.axs, %i.axu                 ; 2 uses
  %i.axw = lshr i64 %i.axv, 22
  %i.axx = xor i64 %i.axw, %i.axv                 ; 2 uses
  %i.axy = shl i64 %i.axx, 13
  %i.axz = xor i64 %i.axy, -1
  %i.aya = add i64 %i.axx, %i.axz                 ; 2 uses
  %i.ayb = lshr i64 %i.aya, 8
  %i.ayc = xor i64 %i.ayb, %i.aya
  %i.ayd = mul i64 %i.ayc, 9                      ; 2 uses
  %i.aye = lshr i64 %i.ayd, 15
  %i.ayf = xor i64 %i.aye, %i.ayd                 ; 2 uses
  %i.ayg = shl i64 %i.ayf, 27
  %i.ayh = xor i64 %i.ayg, -1
  %i.ayi = add i64 %i.ayf, %i.ayh                 ; 2 uses
  %i.ayj = lshr i64 %i.ayi, 31
  %i.ayk = xor i64 %i.ayj, %i.ayi
  %i.ayl = trunc i64 %i.ayk to i32
  %i.aym = add i32 %i.axl, -1                     ; 2 uses
  %i.ayn = and i32 %i.aym, %i.ayl
  br label %bb.fj

bb.fj:                                            ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit816.thread, %bb.fi
  %.027.i323 = phi i32 [ %i.ayn, %bb.fi ], [ %i.azg, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit816.thread ] ; 2 uses
  %.025.i324 = phi i32 [ 1, %bb.fi ], [ %i.aze, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefEjEE7isEqualERKS3_S6_.exit816.thread ] ; 2 uses
  %i.ayo = zext i32 %.027.i323 to i64
end_hunk_5
