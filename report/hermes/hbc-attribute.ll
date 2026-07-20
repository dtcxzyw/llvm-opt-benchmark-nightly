inline.NumInlined: 979
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a
  %.not30 = icmp eq ptr %i.ep, null               ; 2 uses
  br i1 %.not30, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit.i
  %i.eq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #24 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !35 ; 2 uses
  %i.ev = ptrtoint ptr %i.es to i64
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
  %xtraiter = and i64 %i.hb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.prol
  %.06.i.i.i.i.i.prol = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.prol ], [ %i.hd, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i ]
  store i32 -1, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !4, !noalias !97
  %i.hh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !120

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i
  %.06.i.i.i.i.i.unr = phi ptr [ %i.hd, %.lr.ph.i.i.i.preheader.i.i ], [ %i.hh, %.lr.ph.i.i.i.i.i.prol ]
  %i.hi = icmp samesign ult i64 %i.gx, 7
  br i1 %i.hi, label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i.i.i.i.i, align 4, !tbaa !4, !noalias !97
  %i.hj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store i32 -1, ptr %i.hj, align 4, !tbaa !4, !noalias !97
  %i.hk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i32 -1, ptr %i.hk, align 4, !tbaa !4, !noalias !97
  %i.hl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  store i32 -1, ptr %i.hl, align 4, !tbaa !4, !noalias !97
  %i.hm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  store i32 -1, ptr %i.hm, align 4, !tbaa !4, !noalias !97
  %i.hn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  store i32 -1, ptr %i.hn, align 4, !tbaa !4, !noalias !97
  %i.ho = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48
  store i32 -1, ptr %i.ho, align 4, !tbaa !4, !noalias !97
  %i.hp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  store i32 -1, ptr %i.hp, align 4, !tbaa !4, !noalias !97
  %i.hq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i16.i.7 = icmp eq ptr %i.hq, %i.hg
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
  %i.hr = phi i32 [ %i.ii, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ 0, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i ]
  %.03.i.i = phi i32 [ %i.ig, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ 0, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i ] ; 2 uses
  %i.hs = load ptr, ptr %i.gf, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = call ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(280) %i.gf, i32 noundef %i.hr) #24, !inline_history !124 ; 3 uses
  %i.hw = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16FindAndConstructERKj(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %.03.i.i, ptr %i.hx, align 4, !tbaa !4
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = trunc i64 %i.hy to i1
  br i1 %i.hz, label %bb.af, label %bb.ag, !prof !125

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 7
  %i.ib = load i32, ptr %i.ia, align 1, !tbaa !126
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.ic = load i64, ptr %i.hv, align 1
  %i.id = lshr i64 %i.ic, 32
  %i.ie = trunc nuw i64 %i.id to i32
  %i.if = and i32 %i.ie, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i18.i = phi i32 [ %i.ib, %bb.af ], [ %i.if, %bb.ag ]
  %i.ig = add i32 %.0.i.i18.i, %.03.i.i
  %i.ih = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !97
  %i.ii = add i32 %i.ih, 1                        ; 3 uses
  store i32 %i.ii, ptr %i.a, align 4, !tbaa !4, !noalias !97
  %i.ij = icmp ult i32 %i.ii, %.pr12.i
  br i1 %i.ij, label %.lr.ph.i.i, label %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i, !llvm.loop !128

_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i: ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.i, %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2Ej.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !97
  br i1 %.not.i.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 9 uses
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.il, 0
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ah
  %i.io = load i32, ptr %i.ik, align 4, !tbaa !4
  %i.ip = add nsw i32 %i.io, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !8
  store ptr %i.fp, ptr %i.im, align 8, !tbaa !91
  store ptr %i.fr, ptr %i.in, align 8, !tbaa !96
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.iq = atomicrmw volatile add ptr %i.ik, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %i.ir = icmp eq i8 %.pre.i.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !8
  store ptr %i.fp, ptr %i.im, align 8, !tbaa !91
  store ptr %i.fr, ptr %i.in, align 8, !tbaa !96
  br i1 %i.ir, label %bb.ak, label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %bb.ai
  %.pre17.i = load i32, ptr %i.ik, align 4, !tbaa !4
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge16.i, %.thread.i.i
  %i.is = phi i32 [ %.pre17.i, %._crit_edge16.i ], [ %i.ip, %.thread.i.i ]
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ik, align 4, !tbaa !4
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.iu = atomicrmw volatile add ptr %i.ik, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.al

_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i.i: ; preds = %_ZN12_GLOBAL__N_117getVirtualOffsetsESt10shared_ptrIN6hermes3hbc14BCProviderBaseEE.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fp, ptr %i.iv, align 8, !tbaa !91
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.iw, align 8, !tbaa !96
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.ix, align 8, !tbaa !129
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.iy, align 8, !tbaa !129
  %i.iz = load atomic i64, ptr %i.ik acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ik, align 8, !tbaa !132
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !134
  %i.jd = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !inline_history !135
  %i.jg = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !inline_history !135
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i9.i.i = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i9.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.ik, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.jl = atomicrmw volatile add ptr %i.ik, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.ao ], [ %i.jl, %bb.ap ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.aq, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !125

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am, %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112UsageCounterE, i64 16), ptr %5, align 8, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %15, ptr %i.jn, align 8, !tbaa !136
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jo, i8 0, i64 16, i1 false)
  call void @_ZdlPv(ptr noundef null) #24
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !114 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !114
  %.not.i.i10.i.i = icmp eq i32 %i.jq, 0
  br i1 %.not.i.i10.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.js = zext i32 %i.jq to i64
  %i.jt = shl nuw nsw i64 %i.js, 3                ; 2 uses
  %i.ju = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #28 ; 2 uses
  store ptr %i.ju, ptr %i.jo, align 8, !tbaa !117
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jx = load <2 x i32>, ptr %i.jv, align 8, !tbaa !4
  store <2 x i32> %i.jx, ptr %i.jw, align 8, !tbaa !4
  %i.jy = load ptr, ptr %6, align 8, !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 4 %i.jy, i64 %i.jt, i1 false)
  br label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jo, i8 0, i64 16, i1 false)
  br label %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i

_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i: ; preds = %bb.as, %bb.ar
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.ef, ptr %i.jz, align 8, !tbaa !138
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ka, i8 0, i64 20, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, i8 0, i64 24, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.kc, align 8, !tbaa !146 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !147 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload.i.i.i, 2
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.idx.i.i
  %.not19.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not19.i.i, label %_ZN12_GLOBAL__N_112UsageCounterC2ESt10shared_ptrIN6hermes3hbc14BCProviderBaseEERNS2_11JSONEmitterEN4llvh8DenseMapIjjNS8_12DenseMapInfoIjEENS8_6detail12DenseMapPairIjjEEEEm.exit.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEC2ERKS6_.exit.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 144
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i, %.lr.ph.i20.i
  %i.kg = phi ptr [ null, %.lr.ph.i20.i ], [ %i.lc, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 5 uses
  %i.kh = phi ptr [ null, %.lr.ph.i20.i ], [ %i.ld, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 3 uses
  %i.ki = phi ptr [ null, %.lr.ph.i20.i ], [ %i.le, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 3 uses
  %.021.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %.lr.ph.i20.i ], [ %i.lf, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ] ; 2 uses
  %.01820.i.i = phi i32 [ 0, %.lr.ph.i20.i ], [ %i.kl, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i ]
  %i.kj = load i32, ptr %.021.i.i, align 4, !tbaa !4
  %i.kk = and i32 %i.kj, 2147483647
  %i.kl = add i32 %i.kk, %.01820.i.i              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ki, %i.kh
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.kl, ptr %i.ki, align 4, !tbaa !4
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 2 uses
  store ptr %i.km, ptr %i.ke, align 8, !tbaa !148
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.kn = ptrtoint ptr %i.kh to i64
  %i.ko = ptrtoint ptr %i.kg to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 6 uses
  %i.kq = icmp eq i64 %i.kp, 9223372036854775804
  br i1 %i.kq, label %bb.aw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE4growEj:_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit

bb.c:                                             ; preds = %.lr.ph.i6
  tail call void @llvm.assume(i1 %i.bg)
  %i.bk = mul i32 %i.bj, 37
  %.02744.i.i.i = and i32 %i.bk, %i.bh            ; 2 uses
  %i.bl = zext i32 %.02744.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 2 uses
  %i.bo = icmp eq i32 %i.bj, %i.bn
  br i1 %i.bo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %.lr.ph.i.i.i, !prof !194

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bp = phi i32 [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %i.bq = phi ptr [ %i.by, %bb.e ], [ %i.bm, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.bv, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.br = icmp eq i32 %i.bp, -1
  br i1 %i.br, label %bb.d, label %bb.e, !prof !195

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.bs = select i1 %.not.i.i.i, ptr %i.bq, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = icmp eq i32 %i.bp, -2
  %i.bu = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bt, i1 %i.bu, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bq, ptr %.02945.i.i.i
  %i.bv = add i32 %.02546.i.i.i, 1
  %i.bw = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bw, %i.bh              ; 2 uses
  %i.bx = zext i32 %.027.i.i.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = icmp eq i32 %i.bj, %i.bz
  br i1 %i.ca, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %.lr.ph.i.i.i, !prof !196, !llvm.loop !197

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bs, %bb.d ], [ %i.bm, %bb.c ], [ %i.by, %bb.e ] ; 2 uses
  store i32 %i.bj, ptr %.sink.i.i.i, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.019.i, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !4
  %i.ce = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.ao, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, %.lr.ph.i6
  %i.cf = phi i32 [ %i.ce, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i ], [ %i.bi, %.lr.ph.i6 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cg, %i.an
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
  %i.ay = load i64, ptr %i.at, align 1
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.ax, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = zext i32 %.0.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.be, 3
  %i.bg = and i64 %i.bf, -4                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !213
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !214
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr nonnull @.str.13, i64 10) #24
  tail call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, i32 noundef %1) #24
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !91 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %bb.g, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

bb.g:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(280) %i.bl) #24, !inline_history !217
  %.pre.i.i = load ptr, ptr %i.bm, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !91
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i: ; preds = %bb.g, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  %i.bq = phi ptr [ %.pre.i, %bb.g ], [ %i.bl, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ] ; 2 uses
  %i.br = phi ptr [ %.pre.i.i, %bb.g ], [ %i.bn, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ] ; 2 uses
  %i.bs = load i32, ptr %i.a, align 8, !tbaa !202
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(280) %i.bq, i32 noundef %i.bs) #24, !inline_history !218 ; 2 uses
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr nonnull @.str.15, i64 8) #24
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216
  tail call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.by) #24
  %.not.i3 = icmp eq ptr %i.bw, null
  br i1 %.not.i3, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !219 ; 2 uses
  %.not6.i = icmp eq i32 %i.bz, -1
  br i1 %.not6.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue") align 4 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.br, i32 noundef %i.bz, i32 noundef 0) #24
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !221, !range !56, !noundef !159
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !224
  call void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.br, i32 noundef %i.cf)
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr nonnull @.str.16, i64 4) #24
  %i.cg = load ptr, ptr %4, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !36
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr %i.cg, i64 %i.ci) #24
  %i.cj = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !16
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.co = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.co, ptr nonnull @.str.17, i64 4) #24
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.co, i32 noundef %i.cq) #24
  %i.cr = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr nonnull @.str.18, i64 6) #24
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, i32 noundef %i.ct) #24
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16FindAndConstructERKj(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr nonnull @.str.19, i64 13) #24
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, i32 noundef %i.cy) #24
  %i.cz = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216 ; 2 uses
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !91 ; 2 uses
  %i.db = load i32, ptr %i.a, align 8, !tbaa !202
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call ptr %i.de(ptr noundef nonnull align 8 dereferenceable(280) %i.da, i32 noundef %i.db) #24, !inline_history !218 ; 3 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = trunc i64 %i.dg to i1
  br i1 %i.dh, label %bb.m, label %bb.n, !prof !125

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 7
  %i.dj = load i32, ptr %i.di, align 1, !tbaa !126
  br label %_ZN12_GLOBAL__N_112UsageCounter20emitFunctionLocationEv.exit

bb.n:                                             ; preds = %bb.l
  %i.dk = load i64, ptr %i.df, align 1
  %i.dl = lshr i64 %i.dk, 32
  %i.dm = trunc nuw i64 %i.dl to i32
  %i.dn = and i32 %i.dm, 32767
  br label %_ZN12_GLOBAL__N_112UsageCounter20emitFunctionLocationEv.exit

_ZN12_GLOBAL__N_112UsageCounter20emitFunctionLocationEv.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi i32 [ %i.dj, %bb.m ], [ %i.dn, %bb.n ]
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr nonnull @.str.20, i64 12) #24
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i32 noundef %.0.i.i) #24
  %i.do = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.do) #24
  %i.dp = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr nonnull @.str.14, i64 5) #24
  %i.dq = load ptr, ptr %i.bj, align 8, !tbaa !215, !nonnull !159, !align !216
  call void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dq) #24
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
  %i.ch = phi i32 [ %i.cq, %bb.p ], [ %i.ce, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i ] ; 2 uses
  %i.ci = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.ch, ptr noundef nonnull %i.a) #24
  %i.cj = add i32 %i.ci, %i.ch                    ; 3 uses
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !147
  %1 = and i64 %i.ck, 1
  %.not95.i = icmp eq i64 %1, 0
  br i1 %.not95.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.cl = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.cj, ptr noundef nonnull %i.a) #24
  %i.cm = add i32 %i.cl, %i.cj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.2.i = phi i32 [ %i.cm, %bb.o ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %i.cn = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %.2.i, ptr noundef nonnull %i.b) #24
  %i.co = add i32 %i.cn, %.2.i                    ; 2 uses
  %i.cp = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.068.0.copyload.i, i64 %.sroa.8.0.copyload.i, i32 noundef %i.co, ptr noundef nonnull %i.a) #24
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !147
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !229

._crit_edge.i:                                    ; preds = %bb.p, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i
  %.lcssa.i = phi i32 [ %i.ce, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i ], [ %i.cq, %bb.p ]
  %i.ct = load i32, ptr %i.bn, align 4, !tbaa !219 ; 2 uses
  %i.cu = sub i32 %.lcssa.i, %i.ct
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.36, i64 25, i32 noundef %i.ct, i32 noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i, %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !230 ; 2 uses
  %.off.i = add i32 %i.cw, -1
  %switch.i = icmp ult i32 %.off.i, -2
  br i1 %switch.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !91  ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 240 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !172 ; 4 uses
  %.not.i102.i = icmp eq ptr %i.cz, null
  br i1 %.not.i102.i, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i: ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 120
  %.sroa.041.0.copyload147.i = load ptr, ptr %i.da, align 8, !tbaa !205
  %.sroa.7.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  %.sroa.7.0.copyload149.i = load i64, ptr %.sroa.7.0..sroa_idx148.i, align 8, !tbaa !147
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i: ; preds = %bb.r
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(280) %i.cx) #24, !inline_history !228
  %.pre.i103.i = load ptr, ptr %i.cy, align 8, !tbaa !172 ; 2 uses
  %.pre134.i = load i32, ptr %i.cv, align 4, !tbaa !230 ; 2 uses
  %.pre135.i = load ptr, ptr %i.i, align 8, !tbaa !91 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre135.i, i64 240 ; 2 uses
  %.pre136.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !172 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre.i103.i, i64 120
  %.sroa.041.0.copyload.i = load ptr, ptr %i.dd, align 8, !tbaa !205 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i103.i, i64 128
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %.not.i105.i = icmp eq ptr %.pre136.i, null
  br i1 %.not.i105.i, label %bb.s, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i

bb.s:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i
  %i.de = load ptr, ptr %.pre135.i, align 8, !tbaa !8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(280) %.pre135.i) #24, !inline_history !228
  %.pre.i106.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !172
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i: ; preds = %bb.s, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i
  %.sroa.7.0.copyload152.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.s ], [ %.sroa.7.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %.sroa.7.0.copyload149.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ] ; 4 uses
  %.sroa.041.0.copyload151.i = phi ptr [ %.sroa.041.0.copyload.i, %bb.s ], [ %.sroa.041.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %.sroa.041.0.copyload147.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ] ; 4 uses
  %i.dg = phi i32 [ %.pre134.i, %bb.s ], [ %.pre134.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %i.cw, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ]
  %i.dh = phi ptr [ %.pre.i106.i, %bb.s ], [ %.pre136.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %i.cz, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !231
  %i.dk = add i32 %i.dj, %i.dg                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.dl = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %i.dk, ptr noundef nonnull %i.c) #24
  %i.dm = add i32 %i.dl, %i.dk                    ; 2 uses
  %i.dn = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %i.dm, ptr noundef nonnull %i.c) #24
  %i.do = add i32 %i.dm, %i.dn                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.dp = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %i.do, ptr noundef nonnull %i.d) #24
  %i.dq = add i32 %i.dp, %i.do                    ; 2 uses
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !147
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph122.i, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %.lr.ph122.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i
  %.087.lcssa.i = phi i32 [ %i.dq, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i ], [ %i.dz, %.lr.ph122.i ]
  %i.dt = load i32, ptr %i.cv, align 4, !tbaa !230
  %i.du = sub i32 %.087.lcssa.i, %i.dk
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.37, i64 23, i32 noundef %i.dt, i32 noundef %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.t

.lr.ph122.i:                                      ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i, %.lr.ph122.i
  %.087121.i = phi i32 [ %i.dz, %.lr.ph122.i ], [ %i.dq, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i ] ; 2 uses
  %.089120.i = phi i64 [ %i.ea, %.lr.ph122.i ], [ 0, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dv = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %.087121.i, ptr noundef nonnull %i.e) #24
  %i.dw = add i32 %i.dv, %.087121.i
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !147
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = add i32 %i.dw, %i.dy                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.ea = add nuw nsw i64 %.089120.i, 1           ; 2 uses
  %i.eb = load i64, ptr %i.d, align 8, !tbaa !147
  %i.ec = icmp slt i64 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph122.i, label %._crit_edge123.i, !llvm.loop !245

bb.t:                                             ; preds = %._crit_edge123.i, %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !246 ; 2 uses
  %.off100.i = add i32 %i.ee, -1
  %switch101.i = icmp ult i32 %.off100.i, -2
  br i1 %switch101.i, label %bb.u, label %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit

bb.u:                                             ; preds = %bb.t
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !91  ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 240 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !172 ; 4 uses
  %.not.i108.i = icmp eq ptr %i.eh, null
  br i1 %.not.i108.i, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i: ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 120
  %.sroa.016.0.copyload153.i = load ptr, ptr %i.ei, align 8, !tbaa !205
  %.sroa.6.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %.sroa.6.0.copyload155.i = load i64, ptr %.sroa.6.0..sroa_idx154.i, align 8, !tbaa !147
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i: ; preds = %bb.u
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(280) %i.ef) #24, !inline_history !228
  %.pre.i109.i = load ptr, ptr %i.eg, align 8, !tbaa !172 ; 2 uses
  %.pre137.i = load i32, ptr %i.ed, align 4, !tbaa !246 ; 2 uses
  %.pre138.i = load ptr, ptr %i.i, align 8, !tbaa !91 ; 3 uses
  %.phi.trans.insert139.i = getelementptr inbounds nuw i8, ptr %.pre138.i, i64 240 ; 2 uses
  %.pre140.i = load ptr, ptr %.phi.trans.insert139.i, align 8, !tbaa !172 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.pre.i109.i, i64 120
  %.sroa.016.0.copyload.i = load ptr, ptr %i.el, align 8, !tbaa !205 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i109.i, i64 128
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %.not.i111.i = icmp eq ptr %.pre140.i, null
  br i1 %.not.i111.i, label %bb.v, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i

bb.v:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i
  %i.em = load ptr, ptr %.pre138.i, align 8, !tbaa !8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(280) %.pre138.i) #24, !inline_history !228
  %.pre.i112.i = load ptr, ptr %.phi.trans.insert139.i, align 8, !tbaa !172
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i: ; preds = %bb.v, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i
  %.sroa.6.0.copyload158.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.v ], [ %.sroa.6.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %.sroa.6.0.copyload155.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ] ; 3 uses
  %.sroa.016.0.copyload157.i = phi ptr [ %.sroa.016.0.copyload.i, %bb.v ], [ %.sroa.016.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %.sroa.016.0.copyload153.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ] ; 3 uses
  %i.eo = phi i32 [ %.pre137.i, %bb.v ], [ %.pre137.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %i.ee, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ]
  %i.ep = phi ptr [ %.pre.i112.i, %bb.v ], [ %.pre140.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %i.eh, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 84
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !247
  %i.es = add i32 %i.er, %i.eo                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.et = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.016.0.copyload157.i, i64 %.sroa.6.0.copyload158.i, i32 noundef %i.es, ptr noundef nonnull %i.f) #24
  %i.eu = add i32 %i.et, %i.es                    ; 2 uses
  %i.ev = load i64, ptr %i.f, align 8, !tbaa !147
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph127.i, label %._crit_edge128.i

._crit_edge128.i:                                 ; preds = %.lr.ph127.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i
  %.090.lcssa.i = phi i32 [ %i.eu, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i ], [ %i.ff, %.lr.ph127.i ]
  %i.ex = load i32, ptr %i.ed, align 4, !tbaa !246
  %i.ey = sub i32 %.090.lcssa.i, %i.es
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.38, i64 22, i32 noundef %i.ex, i32 noundef %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit

.lr.ph127.i:                                      ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i, %.lr.ph127.i
  %.088126.i = phi i64 [ %i.fg, %.lr.ph127.i ], [ 0, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i ]
  %.090125.i = phi i32 [ %i.ff, %.lr.ph127.i ], [ %i.eu, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i ] ; 2 uses
  %i.ez = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.016.0.copyload157.i, i64 %.sroa.6.0.copyload158.i, i32 noundef %.090125.i, ptr noundef nonnull %i.g) #24
  %i.fa = add i32 %i.ez, %.090125.i               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.fb = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.016.0.copyload157.i, i64 %.sroa.6.0.copyload158.i, i32 noundef %i.fa, ptr noundef nonnull %i.h) #24
  %i.fc = add i32 %i.fb, %i.fa
  %i.fd = load i64, ptr %i.h, align 8, !tbaa !147
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = add i32 %i.fc, %i.fe                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.fg = add nuw nsw i64 %.088126.i, 1           ; 2 uses
  %i.fh = load i64, ptr %i.f, align 8, !tbaa !147
  %i.fi = icmp slt i64 %i.fg, %i.fh
  br i1 %i.fi, label %.lr.ph127.i, label %._crit_edge128.i, !llvm.loop !248

_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit: ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit9, %bb.t, %._crit_edge128.i
end_hunk_1
