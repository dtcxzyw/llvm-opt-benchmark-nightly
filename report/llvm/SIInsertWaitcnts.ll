Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIInsertWaitcnts?download=true
inline.NumInlined: 4632
inline.NumDeleted: 2109
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN12_GLOBAL__N_116SIInsertWaitcnts3runEv:bb.a
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i.i, %bb.an, %bb.am, %bb.ak
  store i32 %i.nc, ptr %i.ne, align 8, !tbaa !493
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 248 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.val197, i64 248 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.val197, i64 256 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !493 ; 6 uses
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 256 ; 3 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !493 ; 4 uses
  %i.of = zext i32 %i.oe to i64                   ; 2 uses
  %.not.i.i9.i = icmp ult i32 %i.oe, %i.ob
  br i1 %.not.i.i9.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not29.i.i10.i = icmp eq i32 %i.ob, 0
  br i1 %.not29.i.i10.i, label %.sink.split.i.i13.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.og = load ptr, ptr %i.nz, align 8, !tbaa !34 ; 2 uses
  %i.oh = load ptr, ptr %i.ny, align 8, !tbaa !34 ; 2 uses
  %.not31.i.i11.i = icmp eq i32 %i.ob, 1
  br i1 %.not31.i.i11.i, label %bb.az, label %bb.ay, !prof !511

bb.ay:                                            ; preds = %bb.ax
  %.idx.i.i12.i = mul nuw nsw i64 %i.oc, 48
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.oh, ptr align 4 %i.og, i64 %.idx.i.i12.i, i1 false)
  br label %.sink.split.i.i13.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.oh, ptr noundef nonnull align 4 dereferenceable(48) %i.og, i64 48, i1 false), !tbaa.struct !510
  br label %.sink.split.i.i13.i

bb.ba:                                            ; preds = %bb.av
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 260
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !494
  %i.ok = icmp ult i32 %i.oj, %i.ob
  br i1 %i.ok, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.od, align 8, !tbaa !493
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 264
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ny, ptr noundef nonnull %i.ol, i64 noundef %i.oc, i64 noundef 48) #26
  br label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %.not28.i.i14.i = icmp eq i32 %i.oe, 0
  br i1 %.not28.i.i14.i, label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.om = load ptr, ptr %i.nz, align 8, !tbaa !34 ; 2 uses
  %i.on = load ptr, ptr %i.ny, align 8, !tbaa !34 ; 2 uses
  %.not33.i.i15.i = icmp eq i32 %i.oe, 1
  br i1 %.not33.i.i15.i, label %bb.bf, label %bb.be, !prof !511

bb.be:                                            ; preds = %bb.bd
  %.idx32.i.i16.i = mul nuw nsw i64 %i.of, 48
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.on, ptr align 4 %i.om, i64 %.idx32.i.i16.i, i1 false)
  br label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.on, ptr noundef nonnull align 4 dereferenceable(48) %i.om, i64 48, i1 false), !tbaa.struct !510
  br label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i

_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %.022.i.i17.i = phi i64 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %i.of, %bb.be ], [ 1, %bb.bf ] ; 4 uses
  %i.oo = load i32, ptr %i.oa, align 8, !tbaa !493
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %.not.i.i.i18.i = icmp samesign eq i64 %.022.i.i17.i, %i.op
  br i1 %.not.i.i.i18.i, label %.sink.split.i.i13.i, label %bb.bg

bb.bg:                                            ; preds = %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %i.oq = load ptr, ptr %i.nz, align 8, !tbaa !34
  %.idx35.i.i19.i = mul nuw nsw i64 %.022.i.i17.i, 48
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.idx35.i.i19.i
  %i.os = load ptr, ptr %i.ny, align 8, !tbaa !34
  %i.ot = getelementptr inbounds nuw [48 x i8], ptr %i.os, i64 %.022.i.i17.i
  %.idx3436.i.i.i = sub nsw i64 %i.op, %.022.i.i17.i
  %gepdiff.i.i20.i = mul nsw i64 %.idx3436.i.i.i, 48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ot, ptr align 4 %i.or, i64 %gepdiff.i.i20.i, i1 false)
  br label %.sink.split.i.i13.i

.sink.split.i.i13.i:                              ; preds = %bb.bg, %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i, %bb.az, %bb.ay, %bb.aw
  store i32 %i.ob, ptr %i.od, align 8, !tbaa !493
  br label %_ZN12_GLOBAL__N_115WaitcntBracketsaSERKS0_.exit

_ZN12_GLOBAL__N_115WaitcntBracketsaSERKS0_.exit:  ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EEaSERKS4_.exit.thread.i, %.sink.split.i.i13.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 312
  %i.ov = getelementptr inbounds nuw i8, ptr %.val197, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ou, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ov, i64 48, i1 false), !tbaa.struct !510
  br label %bb.bn

bb.bh:                                            ; preds = %bb.ad
  br i1 %.not702, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit278, label %bb.bi

_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit278: ; preds = %bb.bh
  %i.ow = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #28, !noalias !989 ; 13 uses
  store ptr %0, ptr %i.ow, align 8, !tbaa !491, !noalias !989
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 176
  store ptr null, ptr %i.oy, align 8, !tbaa !492, !noalias !989
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 184
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(164) %i.ox, i8 0, i64 164, i1 false), !noalias !989
  store ptr %i.pa, ptr %i.oz, align 8, !tbaa !34, !noalias !989
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 192
  store i32 0, ptr %i.pb, align 8, !tbaa !493, !noalias !989
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 196
  store i32 6, ptr %i.pc, align 4, !tbaa !494, !noalias !989
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 248
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 264
  store ptr %i.pe, ptr %i.pd, align 8, !tbaa !34, !noalias !989
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 256
  store i32 0, ptr %i.pf, align 8, !tbaa !493, !noalias !989
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 260
  store i32 1, ptr %i.pg, align 4, !tbaa !494, !noalias !989
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ow, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ph, i8 0, i64 48, i1 false), !noalias !989
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 248 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !34 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 264 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef %i.pj) #26
  br label %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i: ; preds = %bb.bj, %bb.bi
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 184 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !34 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 200 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i
  call void @free(ptr noundef %i.pn) #26
  br label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i: ; preds = %bb.bk, %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 164
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !513 ; 2 uses
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 144
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !514
  %i.pv = zext i32 %i.pr to i64                   ; 2 uses
  %i.pw = mul nuw nsw i64 %i.pv, 12
  %i.px = add nuw nsw i64 %i.pv, 31
  %i.py = lshr i64 %i.px, 3
  %i.pz = and i64 %i.py, 1073741820
  %i.qa = add nuw nsw i64 %i.pz, %i.pw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.pu, i64 noundef %i.qa, i64 noundef 4) #26
  br label %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i

_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i: ; preds = %bb.bl, %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 140
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !515 ; 2 uses
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 120
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !516
  %i.qg = zext i32 %i.qc to i64                   ; 2 uses
  %i.qh = mul nuw nsw i64 %i.qg, 56
  %i.qi = add nuw nsw i64 %i.qg, 31
  %i.qj = lshr i64 %i.qi, 3
  %i.qk = and i64 %i.qj, 1073741820
  %i.ql = add nuw nsw i64 %i.qk, %i.qh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qf, i64 noundef %i.ql, i64 noundef 4) #26
  br label %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit

_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit:      ; preds = %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i, %bb.bm
  store ptr %0, ptr %.sroa.0629.1850, align 8, !tbaa !491
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 176
  store ptr null, ptr %i.qn, align 8, !tbaa !492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(164) %i.qm, i8 0, i64 164, i1 false)
  store ptr %i.po, ptr %i.pm, align 8, !tbaa !34
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 192
  store i32 0, ptr %i.qo, align 8, !tbaa !493
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 196
  store i32 6, ptr %i.qp, align 4, !tbaa !494
  store ptr %i.pk, ptr %i.pi, align 8, !tbaa !34
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 256
  store i32 0, ptr %i.qq, align 8, !tbaa !493
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 260
  store i32 1, ptr %i.qr, align 4, !tbaa !494
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0629.1850, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qs, i8 0, i64 48, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit278, %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit271, %_ZN12_GLOBAL__N_115WaitcntBracketsaSERKS0_.exit
  %.sroa.0629.2 = phi ptr [ %.sroa.0629.1850, %_ZN12_GLOBAL__N_115WaitcntBracketsaSERKS0_.exit ], [ %i.lh, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit271 ], [ %.sroa.0629.1850, %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit ], [ %i.ow, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit278 ] ; 28 uses
  %i.qt = load ptr, ptr %i.h, align 8, !tbaa !386, !nonnull !31, !align !163
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 897
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !517, !range !30, !noundef !31
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.bo, label %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit

bb.bo:                                            ; preds = %bb.bn
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lc, i64 48 ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !410 ; 7 uses
  %.not4.i.i.i.i = icmp eq ptr %i.qz, %i.qx
  br i1 %.not4.i.i.i.i, label %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bo, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi i32 [ %i.rc, %.lr.ph.i.i.i.i ], [ 0, %bb.bo ]
  %.sroa.02.05.i.i.i.i = phi ptr [ %i.rb, %.lr.ph.i.i.i.i ], [ %i.qz, %bb.bo ]
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !410 ; 2 uses
  %i.rc = add i32 %.06.i.i.i.i, 1                 ; 2 uses
  %.not.i.i.i.i279 = icmp eq ptr %i.rb, %i.qx
  br i1 %.not.i.i.i.i279, label %_ZNK4llvm17MachineBasicBlock4sizeEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !689

_ZNK4llvm17MachineBasicBlock4sizeEv.exit.i:       ; preds = %.lr.ph.i.i.i.i
  %i.rd = icmp ult i32 %i.rc, 2
  br i1 %i.rd, label %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNK4llvm17MachineBasicBlock4sizeEv.exit.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qz, align 8
  %i.re = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.re, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %.preheader.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 44
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !425
  %i.rh = and i32 %i.rg, 8
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.rh, 0
  br i1 %.not34.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.rj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %i.qz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !410 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 44
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !425
  %i.rm = and i32 %i.rl, 8
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.rm, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %.preheader.i.i.i
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.qz, %.preheader.i.i.i ], [ %i.qz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.rj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ]
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !410 ; 2 uses
  %.not5058.i = icmp eq ptr %i.ro, %i.qx
  br i1 %.not5058.i, label %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.02261.i = phi ptr [ %.2.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ null, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ] ; 3 uses
  %.02360.i = phi i1 [ %.225.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ false, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ] ; 5 uses
  %.sroa.045.059.i = phi ptr [ %i.vj, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.ro, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ] ; 24 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 16 ; 5 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !422
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !518 ; 2 uses
  %i.rt = and i64 %i.rs, 33554432
  %.not51.i = icmp eq i64 %i.rt, 0
  br i1 %.not51.i, label %bb.bp, label %.critedge.i

bb.bp:                                            ; preds = %.lr.ph.i
  %i.ru = and i64 %i.rs, 16777216
  %.not52.i = icmp eq i64 %i.ru, 0
  br i1 %.not52.i, label %.critedge27.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rv = load ptr, ptr %i.kj, align 8, !tbaa !427, !nonnull !31, !align !163
  %i.rw = load i8, ptr %i.kk, align 1, !tbaa !383, !range !30, !noundef !31
  %i.rx = trunc nuw i8 %i.rw to i1
  %i.ry = call noundef zeroext i1 @_ZNK4llvm11SIInstrInfo23mayAccessLDSThroughFlatERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(840) %i.rv, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.045.059.i, i1 noundef zeroext %i.rx) #26
  br i1 %i.ry, label %.critedge.i, label %.critedge27.i

.critedge27.i:                                    ; preds = %bb.bq, %bb.bp
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 52 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !519
  %i.sb = add i32 %i.sa, -1                       ; 2 uses
  %spec.select.i.i.i = icmp ult i32 %i.sb, 2
  br i1 %spec.select.i.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.critedge27.i
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !520
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 48
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !472 ; 2 uses
  %i.sg = and i64 %i.sf, 8
  %.not.not.i.i = icmp eq i64 %i.sg, 0
  br i1 %.not.not.i.i, label %bb.bs, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

bb.bs:                                            ; preds = %bb.br, %.critedge27.i
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 44
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !425 ; 2 uses
  %i.sj = and i32 %i.si, 12
  %i.sk = icmp eq i32 %i.sj, 0
  %i.sl = and i32 %i.si, 4
  %i.sm = icmp ne i32 %i.sl, 0
  %or.cond.i.i.i282 = or i1 %i.sk, %i.sm
  br i1 %or.cond.i.i.i282, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sn = load ptr, ptr %i.rp, align 8, !tbaa !422
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !424
  %i.sq = and i64 %i.sp, 524288
  %i.sr = icmp ne i64 %i.sq, 0
  br label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.ss = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.045.059.i, i64 noundef 524288, i32 noundef 1) #26
  %.pre.i = load i32, ptr %i.rz, align 4, !tbaa !519
  %.pre66.i = add i32 %.pre.i, -1
  br label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i: ; preds = %bb.bu, %bb.bt
  %.pre-phi.i = phi i32 [ %.pre66.i, %bb.bu ], [ %i.sb, %bb.bt ]
  %.1.i.i = phi i1 [ %i.ss, %bb.bu ], [ %i.sr, %bb.bt ] ; 2 uses
  %spec.select.i.i29.i = icmp ult i32 %.pre-phi.i, 2
  br i1 %spec.select.i.i29.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i_crit_edge, label %bb.bv

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i_crit_edge: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 32
  %.pre1016 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !520
  %.phi.trans.insert1017 = getelementptr inbounds nuw i8, ptr %.pre1016, i64 48
  %.pre1018 = load i64, ptr %.phi.trans.insert1017, align 8, !tbaa !472
  br label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i_crit_edge, %bb.br
  %i.st = phi i64 [ %.pre1018, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i_crit_edge ], [ %i.sf, %bb.br ]
  %.1.i80.i = phi i1 [ %.1.i.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i_crit_edge ], [ true, %bb.br ] ; 2 uses
  %i.su = and i64 %i.st, 16
  %.not.not.i32.i = icmp eq i64 %i.su, 0
  br i1 %.not.not.i32.i, label %bb.bv, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i

bb.bv:                                            ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i
  %.1.i79.i = phi i1 [ %.1.i80.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i ], [ %.1.i.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 44
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !425 ; 2 uses
  %i.sx = and i32 %i.sw, 12
  %i.sy = icmp eq i32 %i.sx, 0
  %i.sz = and i32 %i.sw, 4
  %i.ta = icmp ne i32 %i.sz, 0
  %or.cond.i.i30.i = or i1 %i.sy, %i.ta
  br i1 %or.cond.i.i30.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.tb = load ptr, ptr %i.rp, align 8, !tbaa !422
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !424
  %i.te = and i64 %i.td, 1048576
  %i.tf = icmp ne i64 %i.te, 0
  br label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.tg = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.045.059.i, i64 noundef 1048576, i32 noundef 1) #26
  br label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i: ; preds = %bb.bx, %bb.bw, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i
  %.1.i78.i = phi i1 [ %.1.i80.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i ], [ %.1.i79.i, %bb.bw ], [ %.1.i79.i, %bb.bx ]
  %.1.i31.i = phi i1 [ true, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i ], [ %i.tf, %bb.bw ], [ %i.tg, %bb.bx ]
  %i.th = xor i1 %.1.i78.i, %.1.i31.i
  %spec.select.i = select i1 %i.th, ptr null, ptr %.02261.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %bb.bq, %.lr.ph.i
  %.1.i = phi ptr [ %.02261.i, %bb.bq ], [ %.02261.i, %.lr.ph.i ], [ %spec.select.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i ] ; 5 uses
  %i.ti = load ptr, ptr %i.rp, align 8, !tbaa !422 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !518
  %i.tl = and i64 %i.tk, 8796093022208
  %.not53.i = icmp eq i64 %i.tl, 0
  br i1 %.not53.i, label %.sink.split.i, label %bb.by

bb.by:                                            ; preds = %.critedge.i
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 52 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !519
  %i.to = add i32 %i.tn, -1                       ; 2 uses
  %spec.select.i.i33.i = icmp ult i32 %i.to, 2
  br i1 %spec.select.i.i33.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !520
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 48
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !472 ; 2 uses
  %i.tt = and i64 %i.ts, 8
  %.not.not.i36.i = icmp eq i64 %i.tt, 0
  br i1 %.not.not.i36.i, label %bb.ca, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 44
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !425 ; 2 uses
  %i.tw = and i32 %i.tv, 12
  %i.tx = icmp eq i32 %i.tw, 0
  %i.ty = and i32 %i.tv, 4
  %i.tz = icmp ne i32 %i.ty, 0
  %or.cond.i.i34.i = or i1 %i.tx, %i.tz
  br i1 %or.cond.i.i34.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i, label %.split.i

.split.i:                                         ; preds = %bb.ca
  %i.ua = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.045.059.i, i64 noundef 524288, i32 noundef 1) #26
  br i1 %i.ua, label %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread_crit_edge.i, label %.sink.split.i

.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread_crit_edge.i: ; preds = %.split.i
  %.pre64.i = load i32, ptr %i.tm, align 4, !tbaa !519
  %.pre67.i = add i32 %.pre64.i, -1
  br label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i: ; preds = %bb.ca
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !424
  %i.ud = and i64 %i.uc, 524288
  %.not54.i = icmp eq i64 %i.ud, 0
  br i1 %.not54.i, label %.sink.split.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i, %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread_crit_edge.i
  %.pre-phi68.i = phi i32 [ %.pre67.i, %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread_crit_edge.i ], [ %i.to, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i ]
  %spec.select.i.i38.i = icmp ult i32 %.pre-phi68.i, 2
  br i1 %spec.select.i.i38.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i_crit_edge, label %bb.cb

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i_crit_edge: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i
  %.phi.trans.insert1019 = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 32
  %.pre1020 = load ptr, ptr %.phi.trans.insert1019, align 8, !tbaa !520
  %.phi.trans.insert1021 = getelementptr inbounds nuw i8, ptr %.pre1020, i64 48
  %.pre1022 = load i64, ptr %.phi.trans.insert1021, align 8, !tbaa !472
  br label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i_crit_edge, %bb.bz
  %i.ue = phi i64 [ %.pre1022, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i_crit_edge ], [ %i.ts, %bb.bz ]
  %i.uf = and i64 %i.ue, 16
  %.not.not.i41.i = icmp eq i64 %i.uf, 0
  br i1 %.not.not.i41.i, label %bb.cb, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i

bb.cb:                                            ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 44
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !425 ; 2 uses
  %i.ui = and i32 %i.uh, 12
  %i.uj = icmp eq i32 %i.ui, 0
  %i.uk = and i32 %i.uh, 4
  %i.ul = icmp ne i32 %i.uk, 0
  %or.cond.i.i39.i = or i1 %i.uj, %i.ul
  br i1 %or.cond.i.i39.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.um = load ptr, ptr %i.rp, align 8, !tbaa !422
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !424
  %i.up = and i64 %i.uo, 1048576
  %i.uq = icmp ne i64 %i.up, 0
  br label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i

bb.cd:                                            ; preds = %bb.cb
  %i.ur = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.045.059.i, i64 noundef 1048576, i32 noundef 1) #26
  br label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i: ; preds = %bb.cd, %bb.cc, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i
  %i.us = phi i1 [ true, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.thread.thread.i ], [ %i.uq, %bb.cc ], [ %i.ur, %bb.cd ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i280 = load i64, ptr %.sroa.045.059.i, align 8 ; 3 uses
  %i.ut = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i280, -8
  %i.uu = inttoptr i64 %i.ut to ptr               ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 52
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !519
  %i.ux = icmp eq i32 %i.uw, 5414
  %or.cond.i = and i1 %i.us, %i.ux
  br i1 %or.cond.i, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i
  %.not.i281 = icmp eq ptr %.1.i, null
  br i1 %.not.i281, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uy = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.uu) #26 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cf, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i, %.split.i, %.critedge.i
  %.225.ph.i = phi i1 [ true, %bb.cf ], [ %.02360.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i ], [ %.02360.i, %.critedge.i ], [ %.02360.i, %.split.i ]
  %.2.ph.i = phi ptr [ %.sroa.045.059.i, %bb.cf ], [ %.1.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit37.i ], [ %.1.i, %.critedge.i ], [ %.1.i, %.split.i ]
  %.0.copyload.i.i.i.i.i.i.i.i.i83.i = load i64, ptr %.sroa.045.059.i, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split.i, %bb.ce, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i
  %.0.copyload.i.i.i.i.i.i.i.i.i43.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i.i280, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i ], [ %.0.copyload.i.i.i.i.i.i.i.i.i.i280, %bb.ce ], [ %.0.copyload.i.i.i.i.i.i.i.i.i83.i, %.sink.split.i ]
  %.225.i = phi i1 [ %.02360.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i ], [ %.02360.i, %bb.ce ], [ %.225.ph.i, %.sink.split.i ] ; 2 uses
  %.2.i = phi ptr [ %.1.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit42.i ], [ %.sroa.045.059.i, %bb.ce ], [ %.2.ph.i, %.sink.split.i ]
  %i.uz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i43.i, 4
  %.not.i.i.i44.i = icmp eq i64 %i.uz, 0
  br i1 %.not.i.i.i44.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.cg
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.045.059.i, i64 44
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !425
  %i.vc = and i32 %i.vb, 8
  %.not34.i.i.i.i = icmp eq i32 %i.vc, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ve, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.045.059.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !410 ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 44
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !425
  %i.vh = and i32 %i.vg, 8
  %.not3.i.i.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.cg
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.045.059.i, %bb.cg ], [ %.sroa.045.059.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ve, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !410 ; 2 uses
  %.not50.i = icmp eq ptr %i.vj, %i.qx
  br i1 %.not50.i, label %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit.loopexit, label %.lr.ph.i

_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit.loopexit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.vk = or i1 %.2853, %.225.i
  br label %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit

_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, %_ZNK4llvm17MachineBasicBlock4sizeEv.exit.i, %bb.bo, %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit.loopexit, %bb.bn
  %.3 = phi i1 [ %.2853, %bb.bn ], [ %.2853, %bb.bo ], [ %.2853, %_ZNK4llvm17MachineBasicBlock4sizeEv.exit.i ], [ %.2853, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ], [ %i.vk, %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit.loopexit ]
  %i.vl = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116SIInsertWaitcnts20insertWaitcntInBlockERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS_15WaitcntBracketsE(ptr noundef nonnull align 8 dereferenceable(306) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.lc, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0629.2)
  %i.vm = or i1 %.3, %i.vl                        ; 5 uses
  store i8 0, ptr %i.ld, align 8, !tbaa !508
  %i.vn = getelementptr i8, ptr %.sroa.0629.2, i64 104 ; 3 uses
  %.val204 = load i32, ptr %i.vn, align 4, !tbaa !495
  %.not704 = icmp eq i32 %.val204, 0
  br i1 %.not704, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EEaSEOS4_.exit334, label %bb.ch

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_116SIInsertWaitcnts24removeRedundantSoftXcntsERN4llvm17MachineBasicBlockE.exit
  %i.vo = getelementptr inbounds nuw i8, ptr %i.lc, i64 112
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !34 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !493 ; 2 uses
  %i.vs = zext i32 %i.vr to i64
  %.idx916 = shl nuw nsw i64 %i.vs, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx916
  %.not173840 = icmp eq i32 %i.vr, 0
  br i1 %.not173840, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EEaSEOS4_.exit334, label %.lr.ph845

.lr.ph845:                                        ; preds = %bb.ch
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 120 ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 128 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 140 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 136
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 144 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 152 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 164 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 160
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 56
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 168 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 176 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 108
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 116
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 112
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 248 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 256 ; 3 uses
  %i.wl = getelementptr i8, ptr %.sroa.0629.2, i64 312 ; 5 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 184
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0629.2, i64 192 ; 2 uses
  br label %bb.ci

._crit_edge846:                                   ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312
  %.not174 = icmp eq ptr %.1162, null
  br i1 %.not174, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EEaSEOS4_.exit334, label %bb.ez

bb.ci:                                            ; preds = %.lr.ph845, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312
  %.1155843 = phi i1 [ %.0154852, %.lr.ph845 ], [ %.3157, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312 ] ; 3 uses
  %.0161842 = phi ptr [ null, %.lr.ph845 ], [ %.1162, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312 ] ; 5 uses
  %.0163841 = phi ptr [ %i.vp, %.lr.ph845 ], [ %i.bnd, %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312 ] ; 2 uses
  %i.wo = load ptr, ptr %.0163841, align 8, !tbaa !496 ; 2 uses
  %i.wp = load ptr, ptr %i.kg, align 8, !tbaa !521, !noalias !990 ; 3 uses
  %i.wq = load ptr, ptr %i.kl, align 8, !tbaa !522, !noalias !990 ; 2 uses
  %i.wr = load i32, ptr %i.km, align 4, !tbaa !523, !noalias !990 ; 4 uses
  %i.ws = icmp eq i32 %i.wr, 0
  br i1 %i.ws, label %.loopexit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wt = add i32 %i.wr, -1                       ; 2 uses
  %i.wu = ptrtoint ptr %i.wo to i64
  %i.wv = mul i64 %i.wu, -4658895280553007687     ; 2 uses
  %i.ww = lshr i64 %i.wv, 31
  %i.wx = xor i64 %i.ww, %i.wv
  %i.wy = trunc i64 %i.wx to i32
  %i.wz = and i32 %i.wt, %i.wy                    ; 3 uses
  %i.xa = zext i32 %i.wz to i64                   ; 2 uses
  %i.xb = lshr i64 %i.xa, 5
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !164, !noalias !991
  %i.xe = and i32 %i.wz, 31
  %i.xf = lshr i32 %i.xd, %i.xe
  %i.xg = trunc i32 %i.xf to i1
  br i1 %i.xg, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !165

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cj, %bb.ck
  %i.xh = phi i64 [ %i.xn, %bb.ck ], [ %i.xa, %bb.cj ]
  %.017.i.i.i.i.i = phi i32 [ %i.xm, %bb.ck ], [ %i.wz, %bb.cj ]
  %i.xi = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %i.xh ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !496, !noalias !991
  %i.xk = icmp eq ptr %i.wo, %i.xj
  br i1 %i.xk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i, label %bb.ck, !prof !166

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.xl = add nuw i32 %.017.i.i.i.i.i, 1
  %i.xm = and i32 %i.xl, %i.wt                    ; 3 uses
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = lshr i64 %i.xn, 5
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !164, !noalias !991
  %i.xr = and i32 %i.xm, 31
  %i.xs = lshr i32 %i.xq, %i.xr
  %i.xt = trunc i32 %i.xs to i1
  br i1 %i.xt, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !167

.loopexit.i.i.i:                                  ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.xu = zext i32 %i.wr to i64                   ; 2 uses
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %i.xu
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i286 = zext i32 %i.wr to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i285 = phi i64 [ %.pre.i286, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i ], [ %i.xu, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.xi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i ], [ %i.xv, %.loopexit.i.i.i ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %.pre-phi.i285
  %i.xx = icmp eq ptr %.lcssa.sink.i.i.i, %i.xw
  %.val2.i = load ptr, ptr %i.kh, align 8, !tbaa !34
  %i.xy = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %spec.select695 = select i1 %i.xx, ptr %i.ki, ptr %i.xy
  %.sink15.i = load i32, ptr %spec.select695, align 8, !tbaa !164
  %i.xz = zext i32 %.sink15.i to i64
  %i.ya = getelementptr inbounds nuw [24 x i8], ptr %.val2.i, i64 %i.xz ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8 ; 4 uses
  %.val194 = load ptr, ptr %i.yb, align 8, !tbaa !509 ; 45 uses
  %.not705 = icmp eq ptr %.val194, null
  br i1 %.not705, label %bb.cl, label %bb.cu

bb.cl:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store i8 1, ptr %i.yc, align 8, !tbaa !508
  %.not175 = icmp ule ptr %i.ya, %.0160851
  %spec.select = select i1 %.not175, i1 true, i1 %.1155843 ; 3 uses
  %.not176 = icmp eq ptr %.0161842, null
  br i1 %.not176, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yd = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #28, !noalias !992 ; 15 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.yd, ptr noundef nonnull readonly align 8 dereferenceable(360) %.sroa.0629.2, i64 120, i1 false), !noalias !992
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, i8 0, i64 24, i1 false), !noalias !992
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_115WaitcntBrackets8VMEMInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.vu), !noalias !992
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yf, i8 0, i64 24, i1 false), !noalias !992
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E8copyFromERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.yf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.vy), !noalias !992
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yg, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.we, i64 16, i1 false), !noalias !992
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yd, i64 184 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yd, i64 200 ; 3 uses
  store ptr %i.yi, ptr %i.yh, align 8, !tbaa !34, !noalias !992
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yd, i64 192 ; 2 uses
  store i32 0, ptr %i.yj, align 8, !tbaa !493, !noalias !992
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yd, i64 196
  store i32 6, ptr %i.yk, align 4, !tbaa !494, !noalias !992
  %i.yl = load i32, ptr %i.wn, align 8, !tbaa !493, !noalias !992 ; 5 uses
  %.not.i.i.i.i287 = icmp eq i32 %i.yl, 0
  %i.ym = icmp eq ptr %i.yd, %.sroa.0629.2        ; 2 uses
  %or.cond.i.i.i288 = or i1 %i.ym, %.not.i.i.i.i287
  br i1 %or.cond.i.i.i288, label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EEC2ERKS4_.exit.i.i292, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yn = icmp ugt i32 %i.yl, 6
  br i1 %i.yn, label %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i.i.i303, label %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i289

_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i.i.i303: ; preds = %bb.cn
  %i.yo = zext i32 %i.yl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.yh, ptr noundef nonnull %i.yi, i64 noundef %i.yo, i64 noundef 8) #26, !noalias !992
  %.pre.i.i.i304 = load i32, ptr %i.wn, align 8, !tbaa !493, !noalias !992 ; 2 uses
  %.not.i.i.i.i.i305 = icmp eq i32 %.pre.i.i.i304, 0
  br i1 %.not.i.i.i.i.i305, label %.sink.split.i.i.i.i291, label %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i306

_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i306: ; preds = %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i.i.i303
  %.pre.i.i307 = load ptr, ptr %i.yh, align 8, !tbaa !34, !noalias !992
  br label %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i289

_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i289: ; preds = %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i306, %bb.cn
  %i.yp = phi ptr [ %.pre.i.i307, %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i306 ], [ %i.yi, %bb.cn ]
  %i.yq = phi i32 [ %.pre.i.i.i304, %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i306 ], [ %i.yl, %bb.cn ]
  %i.yr = zext i32 %i.yq to i64
  %i.ys = load ptr, ptr %i.wm, align 8, !tbaa !34, !noalias !992
  %gepdiff.i.i.i.i290 = shl nuw nsw i64 %i.yr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yp, ptr align 8 %i.ys, i64 %gepdiff.i.i.i.i290, i1 false), !noalias !992
  br label %.sink.split.i.i.i.i291

.sink.split.i.i.i.i291:                           ; preds = %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i289, %_ZSt4copyIPKPKN4llvm12MachineInstrEPS3_ET0_T_S8_S7_.exit30.i.i.i.i303
  store i32 %i.yl, ptr %i.yj, align 8, !tbaa !493, !noalias !992
  br label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EEC2ERKS4_.exit.i.i292

_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EEC2ERKS4_.exit.i.i292: ; preds = %.sink.split.i.i.i.i291, %bb.cm
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yd, i64 248 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yd, i64 264 ; 3 uses
  store ptr %i.yu, ptr %i.yt, align 8, !tbaa !34, !noalias !992
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yd, i64 256 ; 2 uses
  store i32 0, ptr %i.yv, align 8, !tbaa !493, !noalias !992
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yd, i64 260
  store i32 1, ptr %i.yw, align 4, !tbaa !494, !noalias !992
  %i.yx = load i32, ptr %i.wk, align 8, !tbaa !493, !noalias !992 ; 4 uses
  %.not.i.i8.i.i293 = icmp eq i32 %i.yx, 0
  %or.cond.i9.i.i294 = or i1 %i.ym, %.not.i.i8.i.i293
  br i1 %or.cond.i9.i.i294, label %_ZSt11make_uniqueIN12_GLOBAL__N_115WaitcntBracketsEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit308, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EEC2ERKS4_.exit.i.i292
  %i.yy = icmp ugt i32 %i.yx, 1
  br i1 %i.yy, label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i.i298, label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i295

_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i.i298: ; preds = %bb.co
  %i.yz = zext i32 %i.yx to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.yt, ptr noundef nonnull %i.yu, i64 noundef %i.yz, i64 noundef 48) #26, !noalias !992
  %.pre.i12.i.i299 = load i32, ptr %i.wk, align 8, !tbaa !493, !noalias !992 ; 2 uses
  %.not.i.i.i13.i.i300 = icmp eq i32 %.pre.i12.i.i299, 0
  br i1 %.not.i.i.i13.i.i300, label %.sink.split.i.i11.i.i297, label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i301

_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i301: ; preds = %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i.i298
  %.pre14.i.i302 = load ptr, ptr %i.yt, align 8, !tbaa !34, !noalias !992
  %i.za = zext i32 %.pre.i12.i.i299 to i64
  %i.zb = mul nuw nsw i64 %i.za, 48
  br label %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i295

_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i295: ; preds = %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i301, %bb.co
  %i.zc = phi ptr [ %.pre14.i.i302, %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i301 ], [ %i.yu, %bb.co ]
  %gepdiff.i.i10.i.i296 = phi i64 [ %i.zb, %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i301 ], [ 48, %bb.co ]
  %i.zd = load ptr, ptr %i.wj, align 8, !tbaa !34, !noalias !992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zc, ptr noundef nonnull align 4 dereferenceable(1) %i.zd, i64 %gepdiff.i.i10.i.i296, i1 false), !noalias !992
  br label %.sink.split.i.i11.i.i297

.sink.split.i.i11.i.i297:                         ; preds = %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i295, %_ZSt4copyIPKSt5arrayIjLm12EEPS1_ET0_T_S6_S5_.exit30.i.i.i.i298
  store i32 %i.yx, ptr %i.yv, align 8, !tbaa !493, !noalias !992
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_115WaitcntBracketsEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit308

_ZSt11make_uniqueIN12_GLOBAL__N_115WaitcntBracketsEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit308: ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EEC2ERKS4_.exit.i.i292, %.sink.split.i.i11.i.i297
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yd, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ze, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.wl, i64 48, i1 false), !tbaa.struct !510, !noalias !992
  %i.zf = load ptr, ptr %i.yb, align 8, !tbaa !509 ; 10 uses
  store ptr %i.yd, ptr %i.yb, align 8, !tbaa !509
  %.not.i.i.i.i309 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i.i309, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WaitcntBracketsESt14default_deleteIS1_EED2Ev.exit312, label %bb.cp

bb.cp:                                            ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_115WaitcntBracketsEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit308
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 248
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !34 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 264
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i.i491, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef %i.zh) #26
  br label %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i.i491
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116SIInsertWaitcnts3runEv:bb.a
  %wide.load1499 = load <4 x i32>, ptr %i.awx, align 4, !tbaa !164, !alias.scope !1023, !noalias !1022 ; 2 uses
  %i.awy = load i32, ptr %i.awm, align 16, !tbaa !1007
  %i.awz = load i32, ptr %i.awn, align 16, !tbaa !1007
  %i.axa = load i32, ptr %i.awo, align 16, !tbaa !1007
  %i.axb = load i32, ptr %i.awp, align 16, !tbaa !1007
  %i.axc = insertelement <4 x i32> poison, i32 %i.awy, i64 0
  %i.axd = insertelement <4 x i32> %i.axc, i32 %i.awz, i64 1
  %i.axe = insertelement <4 x i32> %i.axd, i32 %i.axa, i64 2
  %i.axf = insertelement <4 x i32> %i.axe, i32 %i.axb, i64 3
  %i.axg = load i32, ptr %i.awq, align 16, !tbaa !1007
  %i.axh = load i32, ptr %i.awr, align 16, !tbaa !1007
  %i.axi = load i32, ptr %i.aws, align 16, !tbaa !1007
  %i.axj = load i32, ptr %i.awt, align 16, !tbaa !1007
  %i.axk = insertelement <4 x i32> poison, i32 %i.axg, i64 0
  %i.axl = insertelement <4 x i32> %i.axk, i32 %i.axh, i64 1
  %i.axm = insertelement <4 x i32> %i.axl, i32 %i.axi, i64 2
  %i.axn = insertelement <4 x i32> %i.axm, i32 %i.axj, i64 3
  %i.axo = icmp ugt <4 x i32> %wide.load1498, %i.axf
  %i.axp = icmp ugt <4 x i32> %wide.load1499, %i.axn
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.axr = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.axs = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awp, i64 8
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awq, i64 8
  %i.axv = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.axw = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  %i.axx = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  %i.axy = load i32, ptr %i.axq, align 8
  %i.axz = load i32, ptr %i.axr, align 8
  %i.aya = load i32, ptr %i.axs, align 8
  %i.ayb = load i32, ptr %i.axt, align 8
  %i.ayc = insertelement <4 x i32> poison, i32 %i.axy, i64 0
  %i.ayd = insertelement <4 x i32> %i.ayc, i32 %i.axz, i64 1
  %i.aye = insertelement <4 x i32> %i.ayd, i32 %i.aya, i64 2
  %i.ayf = insertelement <4 x i32> %i.aye, i32 %i.ayb, i64 3
  %i.ayg = load i32, ptr %i.axu, align 8
  %i.ayh = load i32, ptr %i.axv, align 8
  %i.ayi = load i32, ptr %i.axw, align 8
  %i.ayj = load i32, ptr %i.axx, align 8
  %i.ayk = insertelement <4 x i32> poison, i32 %i.ayg, i64 0
  %i.ayl = insertelement <4 x i32> %i.ayk, i32 %i.ayh, i64 1
  %i.aym = insertelement <4 x i32> %i.ayl, i32 %i.ayi, i64 2
  %i.ayn = insertelement <4 x i32> %i.aym, i32 %i.ayj, i64 3
  %i.ayo = add <4 x i32> %i.ayf, %wide.load1498
  %i.ayp = add <4 x i32> %i.ayn, %wide.load1499
  %i.ayq = select <4 x i1> %i.axo, <4 x i32> %i.ayo, <4 x i32> zeroinitializer ; 2 uses
  %i.ayr = select <4 x i1> %i.axp, <4 x i32> %i.ayp, <4 x i32> zeroinitializer ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.awm, i64 4
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.awn, i64 4
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.awo, i64 4
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.awp, i64 4
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.awq, i64 4
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.awr, i64 4
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.awt, i64 4
  %i.aza = load i32, ptr %i.ays, align 4, !tbaa !1008
  %i.azb = load i32, ptr %i.ayt, align 4, !tbaa !1008
  %i.azc = load i32, ptr %i.ayu, align 4, !tbaa !1008
  %i.azd = load i32, ptr %i.ayv, align 4, !tbaa !1008
  %i.aze = insertelement <4 x i32> poison, i32 %i.aza, i64 0
  %i.azf = insertelement <4 x i32> %i.aze, i32 %i.azb, i64 1
  %i.azg = insertelement <4 x i32> %i.azf, i32 %i.azc, i64 2
  %i.azh = insertelement <4 x i32> %i.azg, i32 %i.azd, i64 3
  %i.azi = load i32, ptr %i.ayw, align 4, !tbaa !1008
  %i.azj = load i32, ptr %i.ayx, align 4, !tbaa !1008
  %i.azk = load i32, ptr %i.ayy, align 4, !tbaa !1008
  %i.azl = load i32, ptr %i.ayz, align 4, !tbaa !1008
  %i.azm = insertelement <4 x i32> poison, i32 %i.azi, i64 0
  %i.azn = insertelement <4 x i32> %i.azm, i32 %i.azj, i64 1
  %i.azo = insertelement <4 x i32> %i.azn, i32 %i.azk, i64 2
  %i.azp = insertelement <4 x i32> %i.azo, i32 %i.azl, i64 3
  %i.azq = icmp ugt <4 x i32> %wide.load1496, %i.azh
  %i.azr = icmp ugt <4 x i32> %wide.load1497, %i.azp
  %i.azs = getelementptr inbounds nuw i8, ptr %i.awm, i64 12
  %i.azt = getelementptr inbounds nuw i8, ptr %i.awn, i64 12
  %i.azu = getelementptr inbounds nuw i8, ptr %i.awo, i64 12
  %i.azv = getelementptr inbounds nuw i8, ptr %i.awp, i64 12
  %i.azw = getelementptr inbounds nuw i8, ptr %i.awq, i64 12
  %i.azx = getelementptr inbounds nuw i8, ptr %i.awr, i64 12
  %i.azy = getelementptr inbounds nuw i8, ptr %i.aws, i64 12
  %i.azz = getelementptr inbounds nuw i8, ptr %i.awt, i64 12
  %i.baa = load i32, ptr %i.azs, align 4
  %i.bab = load i32, ptr %i.azt, align 4
  %i.bac = load i32, ptr %i.azu, align 4
  %i.bad = load i32, ptr %i.azv, align 4
  %i.bae = insertelement <4 x i32> poison, i32 %i.baa, i64 0
  %i.baf = insertelement <4 x i32> %i.bae, i32 %i.bab, i64 1
  %i.bag = insertelement <4 x i32> %i.baf, i32 %i.bac, i64 2
  %i.bah = insertelement <4 x i32> %i.bag, i32 %i.bad, i64 3
  %i.bai = load i32, ptr %i.azw, align 4
  %i.baj = load i32, ptr %i.azx, align 4
  %i.bak = load i32, ptr %i.azy, align 4
  %i.bal = load i32, ptr %i.azz, align 4
  %i.bam = insertelement <4 x i32> poison, i32 %i.bai, i64 0
  %i.ban = insertelement <4 x i32> %i.bam, i32 %i.baj, i64 1
  %i.bao = insertelement <4 x i32> %i.ban, i32 %i.bak, i64 2
  %i.bap = insertelement <4 x i32> %i.bao, i32 %i.bal, i64 3
  %i.baq = add <4 x i32> %i.bah, %wide.load1496
  %i.bar = add <4 x i32> %i.bap, %wide.load1497
  %i.bas = select <4 x i1> %i.azq, <4 x i32> %i.baq, <4 x i32> zeroinitializer ; 2 uses
  %i.bat = select <4 x i1> %i.azr, <4 x i32> %i.bar, <4 x i32> zeroinitializer ; 2 uses
  %i.bau = icmp ult <4 x i32> %i.ayq, %i.bas
  %i.bav = icmp ult <4 x i32> %i.ayr, %i.bat
  %i.baw = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ayq, <4 x i32> %i.bas)
  %i.bax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ayr, <4 x i32> %i.bat)
  store <4 x i32> %i.baw, ptr %i.awu, align 4, !tbaa !164, !alias.scope !1023, !noalias !1022
  store <4 x i32> %i.bax, ptr %i.awx, align 4, !tbaa !164, !alias.scope !1023, !noalias !1022
  %i.bay = or <4 x i1> %vec.phi1494, %i.bau       ; 2 uses
  %i.baz = or <4 x i1> %vec.phi1495, %i.bav       ; 2 uses
  %index.next1500 = add nuw i64 %index1493, 8     ; 2 uses
  %i.bba = icmp eq i64 %index.next1500, %n.vec1491
  br i1 %i.bba, label %middle.block1501, label %vector.body1492, !llvm.loop !792

middle.block1501:                                 ; preds = %vector.body1492
  %bin.rdx1502 = or <4 x i1> %i.baz, %i.bay
  %i.bbb = bitcast <4 x i1> %bin.rdx1502 to i4
  %i.bbc = icmp ne i4 %i.bbb, 0                   ; 2 uses
  %cmp.n1503 = icmp eq i64 %i.auu, %n.vec1491
  br i1 %cmp.n1503, label %._crit_edge.i.i, label %scalar.ph1484.preheader

scalar.ph1484.preheader:                          ; preds = %vector.memcheck1486, %vector.scevcheck1476, %.lr.ph.i.i, %middle.block1501
  %.11663.i.i.ph = phi i1 [ %.01565.i.i, %vector.memcheck1486 ], [ %.01565.i.i, %vector.scevcheck1476 ], [ %.01565.i.i, %.lr.ph.i.i ], [ %i.bbc, %middle.block1501 ]
  %.sroa.024.062.i.i.ph = phi i64 [ %i.aul, %vector.memcheck1486 ], [ %i.aul, %vector.scevcheck1476 ], [ %i.aul, %.lr.ph.i.i ], [ %i.avu, %middle.block1501 ]
  br label %scalar.ph1484

._crit_edge.i.i:                                  ; preds = %scalar.ph1484, %middle.block1501, %bb.ek
  %.116.lcssa.i.i = phi i1 [ %.01565.i.i, %bb.ek ], [ %i.bbc, %middle.block1501 ], [ %i.bbw, %scalar.ph1484 ] ; 2 uses
  %i.bbd = add nuw nsw i64 %.sroa.029.064.i.i, 1
  %.not.i240.i = icmp eq i64 %.sroa.029.064.i.i, %i.aug
  br i1 %.not.i240.i, label %.loopexit.i.loopexit.i, label %bb.ek

scalar.ph1484:                                    ; preds = %scalar.ph1484.preheader, %scalar.ph1484
  %.11663.i.i = phi i1 [ %i.bbw, %scalar.ph1484 ], [ %.11663.i.i.ph, %scalar.ph1484.preheader ]
  %.sroa.024.062.i.i = phi i64 [ %i.bbx, %scalar.ph1484 ], [ %.sroa.024.062.i.i.ph, %scalar.ph1484.preheader ] ; 2 uses
  %i.bbe = and i64 %.sroa.024.062.i.i, 4294967295 ; 3 uses
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bbe ; 4 uses
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %i.bbe ; 2 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.bbe
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !164 ; 2 uses
  %i.bbj = load i32, ptr %i.bbg, align 4, !tbaa !164 ; 2 uses
  %i.bbk = load i32, ptr %i.bbf, align 16, !tbaa !1007
  %.not.i23.i.i = icmp ugt i32 %i.bbj, %i.bbk
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbf, i64 8
  %i.bbm = load i32, ptr %i.bbl, align 8
  %i.bbn = add i32 %i.bbm, %i.bbj
  %i.bbo = select i1 %.not.i23.i.i, i32 %i.bbn, i32 0 ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbf, i64 4
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !1008
  %.not9.i.i.i = icmp ugt i32 %i.bbi, %i.bbq
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbf, i64 12
  %i.bbs = load i32, ptr %i.bbr, align 4
  %i.bbt = add i32 %i.bbs, %i.bbi
  %i.bbu = select i1 %.not9.i.i.i, i32 %i.bbt, i32 0 ; 2 uses
  %i.bbv = icmp ult i32 %i.bbo, %i.bbu
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.bbo, i32 %i.bbu)
  store i32 %.sroa.speculated.i.i.i, ptr %i.bbg, align 4, !tbaa !164
  %i.bbw = or i1 %.11663.i.i, %i.bbv              ; 2 uses
  %i.bbx = add i64 %.sroa.024.062.i.i, 1          ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bbx, %i.aum
  br i1 %.not60.i.i, label %._crit_edge.i.i, label %scalar.ph1484, !llvm.loop !793

.loopexit.i.loopexit.i:                           ; preds = %._crit_edge.i.i
  %i.bby = or i1 %.8.lcssa.i, %.116.lcssa.i.i
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %bb.ei
  %.0.i.i = phi i1 [ %.8.lcssa.i, %bb.ei ], [ %i.bby, %.loopexit.i.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZN12_GLOBAL__N_115WaitcntBrackets15mergeAsyncMarksEN4llvm8ArrayRefINS0_9MergeInfoEEENS2_ISt5arrayIjLm12EEEE.exit.i

_ZN12_GLOBAL__N_115WaitcntBrackets15mergeAsyncMarksEN4llvm8ArrayRefINS0_9MergeInfoEEENS2_ISt5arrayIjLm12EEEE.exit.i: ; preds = %.loopexit.i.i, %._crit_edge469.i
  %.1.i.i324 = phi i1 [ %.0.i.i, %.loopexit.i.i ], [ %.8.lcssa.i, %._crit_edge469.i ] ; 5 uses
  %i.bbz = load ptr, ptr %.val194, align 8, !tbaa !491
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 300
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !865
  %i.bcc = call { i64, i64 } @_ZN4llvm6AMDGPU18inst_counter_typesENS0_15InstCounterTypeE(i32 noundef %i.bcb) #26 ; 2 uses
  %i.bcd = extractvalue { i64, i64 } %i.bcc, 0    ; 12 uses
  %i.bce = extractvalue { i64, i64 } %i.bcc, 1    ; 5 uses
  %.not382471.i = icmp eq i64 %i.bcd, %i.bce
  br i1 %.not382471.i, label %._crit_edge475.i, label %.lr.ph474.i

.lr.ph474.i:                                      ; preds = %_ZN12_GLOBAL__N_115WaitcntBrackets15mergeAsyncMarksEN4llvm8ArrayRefINS0_9MergeInfoEEENS2_ISt5arrayIjLm12EEEE.exit.i
  %i.bcf = getelementptr inbounds nuw i8, ptr %.val194, i64 312 ; 2 uses
  %i.bcg = sub i64 %i.bce, %i.bcd                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.bcg, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph474.i
  %i.bch = xor i64 %i.bcd, -1
  %i.bci = add i64 %i.bce, %i.bch                 ; 2 uses
  %i.bcj = trunc i64 %i.bcd to i32
  %i.bck = trunc i64 %i.bci to i32
  %i.bcl = xor i32 %i.bcj, -1
  %i.bcm = icmp ult i32 %i.bcl, %i.bck
  %i.bcn = icmp ugt i64 %i.bci, 4294967295
  %i.bco = or i1 %i.bcm, %i.bcn
  br i1 %i.bco, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bcp = and i64 %i.bcd, 4294967295             ; 3 uses
  %i.bcq = shl nuw nsw i64 %i.bcp, 2              ; 2 uses
  %29 = getelementptr i8, ptr %.val194, i64 %i.bcq
  %i.bcr = getelementptr i8, ptr %29, i64 312     ; 2 uses
  %i.bcs = add i64 %i.bce, %i.bcp                 ; 2 uses
  %i.bct = shl i64 %i.bcs, 2                      ; 2 uses
  %i.bcu = shl i64 %i.bcd, 2                      ; 2 uses
  %i.bcv = add i64 %i.bct, 312
  %i.bcw = sub i64 %i.bcv, %i.bcu
  %i.bcx = getelementptr i8, ptr %.val194, i64 %i.bcw ; 2 uses
  %i.bcy = getelementptr i8, ptr %i.wl, i64 %i.bcq
  %30 = sub i64 %i.bct, %i.bcu
  %i.bcz = getelementptr i8, ptr %i.wl, i64 %30
  %i.bda = shl nuw nsw i64 %i.bcp, 4
  %i.bdb = getelementptr i8, ptr %14, i64 %i.bda
  %i.bdc = sub i64 %i.bcs, %i.bcd
  %i.bdd = shl i64 %i.bdc, 4
  %i.bde = getelementptr i8, ptr %14, i64 %i.bdd
  %bound0 = icmp ult ptr %i.bcr, %i.bcz
  %bound1 = icmp ult ptr %i.bcy, %i.bcx
  %found.conflict = and i1 %bound0, %bound1
  %bound01469 = icmp ult ptr %i.bcr, %i.bde
  %bound11470 = icmp ult ptr %i.bdb, %i.bcx
  %found.conflict1471 = and i1 %bound01469, %bound11470
  %conflict.rdx = or i1 %found.conflict, %found.conflict1471
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bcg, -8                     ; 3 uses
  %i.bdf = add i64 %i.bcd, %n.vec
  %i.bdg = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.1.i.i324, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.bdg, %vector.ph ], [ %i.bij, %vector.body ]
  %vec.phi1472 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bik, %vector.body ]
  %i.bdh = add i64 %i.bcd, %index                 ; 8 uses
  %i.bdi = add i64 %i.bdh, 1
  %i.bdj = add i64 %i.bdh, 2
  %i.bdk = add i64 %i.bdh, 3
  %i.bdl = add i64 %i.bdh, 4
  %i.bdm = add i64 %i.bdh, 5
  %i.bdn = add i64 %i.bdh, 6
  %i.bdo = add i64 %i.bdh, 7
  %i.bdp = and i64 %i.bdh, 4294967295             ; 3 uses
  %i.bdq = and i64 %i.bdi, 4294967295
  %i.bdr = and i64 %i.bdj, 4294967295
  %i.bds = and i64 %i.bdk, 4294967295
  %i.bdt = and i64 %i.bdl, 4294967295
  %i.bdu = and i64 %i.bdm, 4294967295
  %i.bdv = and i64 %i.bdn, 4294967295
  %i.bdw = and i64 %i.bdo, 4294967295
  %i.bdx = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdp ; 4 uses
  %i.bdy = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdq ; 4 uses
  %i.bdz = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdr ; 4 uses
  %i.bea = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bds ; 4 uses
  %i.beb = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdt ; 4 uses
  %i.bec = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdu ; 4 uses
  %i.bed = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdv ; 4 uses
  %i.bee = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.bdw ; 4 uses
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %i.bdp ; 3 uses
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.bdp ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 16
  %wide.load = load <4 x i32>, ptr %i.beg, align 4, !tbaa !164, !alias.scope !1024 ; 2 uses
  %wide.load1473 = load <4 x i32>, ptr %i.beh, align 4, !tbaa !164, !alias.scope !1024 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bef, i64 16 ; 2 uses
  %wide.load1474 = load <4 x i32>, ptr %i.bef, align 4, !tbaa !164, !alias.scope !1025, !noalias !1026 ; 2 uses
  %wide.load1475 = load <4 x i32>, ptr %i.bei, align 4, !tbaa !164, !alias.scope !1025, !noalias !1026 ; 2 uses
  %i.bej = load i32, ptr %i.bdx, align 16, !tbaa !1007, !alias.scope !1027
  %i.bek = load i32, ptr %i.bdy, align 16, !tbaa !1007, !alias.scope !1027
  %i.bel = load i32, ptr %i.bdz, align 16, !tbaa !1007, !alias.scope !1027
  %i.bem = load i32, ptr %i.bea, align 16, !tbaa !1007, !alias.scope !1027
  %i.ben = insertelement <4 x i32> poison, i32 %i.bej, i64 0
  %i.beo = insertelement <4 x i32> %i.ben, i32 %i.bek, i64 1
  %i.bep = insertelement <4 x i32> %i.beo, i32 %i.bel, i64 2
  %i.beq = insertelement <4 x i32> %i.bep, i32 %i.bem, i64 3
  %i.ber = load i32, ptr %i.beb, align 16, !tbaa !1007, !alias.scope !1027
  %i.bes = load i32, ptr %i.bec, align 16, !tbaa !1007, !alias.scope !1027
  %i.bet = load i32, ptr %i.bed, align 16, !tbaa !1007, !alias.scope !1027
  %i.beu = load i32, ptr %i.bee, align 16, !tbaa !1007, !alias.scope !1027
  %i.bev = insertelement <4 x i32> poison, i32 %i.ber, i64 0
  %i.bew = insertelement <4 x i32> %i.bev, i32 %i.bes, i64 1
  %i.bex = insertelement <4 x i32> %i.bew, i32 %i.bet, i64 2
  %i.bey = insertelement <4 x i32> %i.bex, i32 %i.beu, i64 3
  %i.bez = icmp ugt <4 x i32> %wide.load1474, %i.beq
  %i.bfa = icmp ugt <4 x i32> %wide.load1475, %i.bey
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bdy, i64 8
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bea, i64 8
  %i.bff = getelementptr inbounds nuw i8, ptr %i.beb, i64 8
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bed, i64 8
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bee, i64 8
  %i.bfj = load i32, ptr %i.bfb, align 8, !alias.scope !1027
  %i.bfk = load i32, ptr %i.bfc, align 8, !alias.scope !1027
  %i.bfl = load i32, ptr %i.bfd, align 8, !alias.scope !1027
  %i.bfm = load i32, ptr %i.bfe, align 8, !alias.scope !1027
  %i.bfn = insertelement <4 x i32> poison, i32 %i.bfj, i64 0
  %i.bfo = insertelement <4 x i32> %i.bfn, i32 %i.bfk, i64 1
  %i.bfp = insertelement <4 x i32> %i.bfo, i32 %i.bfl, i64 2
  %i.bfq = insertelement <4 x i32> %i.bfp, i32 %i.bfm, i64 3
  %i.bfr = load i32, ptr %i.bff, align 8, !alias.scope !1027
  %i.bfs = load i32, ptr %i.bfg, align 8, !alias.scope !1027
  %i.bft = load i32, ptr %i.bfh, align 8, !alias.scope !1027
  %i.bfu = load i32, ptr %i.bfi, align 8, !alias.scope !1027
  %i.bfv = insertelement <4 x i32> poison, i32 %i.bfr, i64 0
  %i.bfw = insertelement <4 x i32> %i.bfv, i32 %i.bfs, i64 1
  %i.bfx = insertelement <4 x i32> %i.bfw, i32 %i.bft, i64 2
  %i.bfy = insertelement <4 x i32> %i.bfx, i32 %i.bfu, i64 3
  %i.bfz = add <4 x i32> %i.bfq, %wide.load1474
  %i.bga = add <4 x i32> %i.bfy, %wide.load1475
  %i.bgb = select <4 x i1> %i.bez, <4 x i32> %i.bfz, <4 x i32> zeroinitializer ; 2 uses
  %i.bgc = select <4 x i1> %i.bfa, <4 x i32> %i.bga, <4 x i32> zeroinitializer ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bdx, i64 4
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bdy, i64 4
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bdz, i64 4
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bea, i64 4
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.beb, i64 4
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bec, i64 4
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bed, i64 4
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bee, i64 4
  %i.bgl = load i32, ptr %i.bgd, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgm = load i32, ptr %i.bge, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgn = load i32, ptr %i.bgf, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgo = load i32, ptr %i.bgg, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgp = insertelement <4 x i32> poison, i32 %i.bgl, i64 0
  %i.bgq = insertelement <4 x i32> %i.bgp, i32 %i.bgm, i64 1
  %i.bgr = insertelement <4 x i32> %i.bgq, i32 %i.bgn, i64 2
  %i.bgs = insertelement <4 x i32> %i.bgr, i32 %i.bgo, i64 3
  %i.bgt = load i32, ptr %i.bgh, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgu = load i32, ptr %i.bgi, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgv = load i32, ptr %i.bgj, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgw = load i32, ptr %i.bgk, align 4, !tbaa !1008, !alias.scope !1027
  %i.bgx = insertelement <4 x i32> poison, i32 %i.bgt, i64 0
  %i.bgy = insertelement <4 x i32> %i.bgx, i32 %i.bgu, i64 1
  %i.bgz = insertelement <4 x i32> %i.bgy, i32 %i.bgv, i64 2
  %i.bha = insertelement <4 x i32> %i.bgz, i32 %i.bgw, i64 3
  %i.bhb = icmp ugt <4 x i32> %wide.load, %i.bgs
  %i.bhc = icmp ugt <4 x i32> %wide.load1473, %i.bha
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bdx, i64 12
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bdy, i64 12
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bdz, i64 12
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bea, i64 12
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.beb, i64 12
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bec, i64 12
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bed, i64 12
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bee, i64 12
  %i.bhl = load i32, ptr %i.bhd, align 4, !alias.scope !1027
  %i.bhm = load i32, ptr %i.bhe, align 4, !alias.scope !1027
  %i.bhn = load i32, ptr %i.bhf, align 4, !alias.scope !1027
  %i.bho = load i32, ptr %i.bhg, align 4, !alias.scope !1027
  %i.bhp = insertelement <4 x i32> poison, i32 %i.bhl, i64 0
  %i.bhq = insertelement <4 x i32> %i.bhp, i32 %i.bhm, i64 1
  %i.bhr = insertelement <4 x i32> %i.bhq, i32 %i.bhn, i64 2
  %i.bhs = insertelement <4 x i32> %i.bhr, i32 %i.bho, i64 3
  %i.bht = load i32, ptr %i.bhh, align 4, !alias.scope !1027
  %i.bhu = load i32, ptr %i.bhi, align 4, !alias.scope !1027
  %i.bhv = load i32, ptr %i.bhj, align 4, !alias.scope !1027
  %i.bhw = load i32, ptr %i.bhk, align 4, !alias.scope !1027
  %i.bhx = insertelement <4 x i32> poison, i32 %i.bht, i64 0
  %i.bhy = insertelement <4 x i32> %i.bhx, i32 %i.bhu, i64 1
  %i.bhz = insertelement <4 x i32> %i.bhy, i32 %i.bhv, i64 2
  %i.bia = insertelement <4 x i32> %i.bhz, i32 %i.bhw, i64 3
  %i.bib = add <4 x i32> %i.bhs, %wide.load
  %i.bic = add <4 x i32> %i.bia, %wide.load1473
  %i.bid = select <4 x i1> %i.bhb, <4 x i32> %i.bib, <4 x i32> zeroinitializer ; 2 uses
  %i.bie = select <4 x i1> %i.bhc, <4 x i32> %i.bic, <4 x i32> zeroinitializer ; 2 uses
  %i.bif = icmp ult <4 x i32> %i.bgb, %i.bid
  %i.big = icmp ult <4 x i32> %i.bgc, %i.bie
  %i.bih = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bgb, <4 x i32> %i.bid)
  %i.bii = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bgc, <4 x i32> %i.bie)
  store <4 x i32> %i.bih, ptr %i.bef, align 4, !tbaa !164, !alias.scope !1025, !noalias !1026
  store <4 x i32> %i.bii, ptr %i.bei, align 4, !tbaa !164, !alias.scope !1025, !noalias !1026
  %i.bij = or <4 x i1> %vec.phi, %i.bif           ; 2 uses
  %i.bik = or <4 x i1> %vec.phi1472, %i.big       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bil = icmp eq i64 %index.next, %n.vec
  br i1 %i.bil, label %middle.block, label %vector.body, !llvm.loop !798

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.bik, %i.bij
  %i.bim = bitcast <4 x i1> %bin.rdx to i4
  %i.bin = icmp ne i4 %i.bim, 0                   ; 2 uses
  %cmp.n = icmp eq i64 %i.bcg, %n.vec
  br i1 %cmp.n, label %._crit_edge475.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph474.i, %middle.block
  %.10473.i.ph = phi i1 [ %.1.i.i324, %vector.memcheck ], [ %.1.i.i324, %vector.scevcheck ], [ %.1.i.i324, %.lr.ph474.i ], [ %i.bin, %middle.block ]
  %.sroa.0269.0472.i.ph = phi i64 [ %i.bcd, %vector.memcheck ], [ %i.bcd, %vector.scevcheck ], [ %i.bcd, %.lr.ph474.i ], [ %i.bdf, %middle.block ]
  br label %scalar.ph

bb.el:                                            ; preds = %_ZN4llvm16DenseMapIteratorIjN12_GLOBAL__N_115WaitcntBrackets8VMEMInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb0EEppEv.exit261.i, %.lr.ph468.i
  %.8467.i = phi i1 [ %.0.lcssa.i, %.lr.ph468.i ], [ %.9.i, %_ZN4llvm16DenseMapIteratorIjN12_GLOBAL__N_115WaitcntBrackets8VMEMInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb0EEppEv.exit261.i ] ; 2 uses
  %.pn707.i = phi i64 [ %i.akl, %.lr.ph468.i ], [ %i.bkn, %_ZN4llvm16DenseMapIteratorIjN12_GLOBAL__N_115WaitcntBrackets8VMEMInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EELb0EEppEv.exit261.i ] ; 2 uses
  %.sroa.0287.0466.i = getelementptr i8, ptr %.val2.i.i, i64 %.pn707.i ; 2 uses
  %.val105.i = load i32, ptr %.sroa.0287.0466.i, align 4 ; 2 uses
  %i.bio = load i32, ptr %i.vw, align 4, !tbaa !515, !noalias !1005 ; 4 uses
  %i.bip = icmp eq i32 %i.bio, 0
  br i1 %i.bip, label %.loopexit.i.i244.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.biq = add i32 %i.bio, -1                     ; 2 uses
  %i.bir = mul i32 %.val105.i, 37
  %.03.i.i.i243.i = and i32 %i.biq, %i.bir        ; 3 uses
  %i.bis = zext i32 %.03.i.i.i243.i to i64        ; 2 uses
  %i.bit = lshr i64 %i.bis, 5
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.akn, i64 %i.bit
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !164, !noalias !1028
  %i.biw = and i32 %.03.i.i.i243.i, 31
  %i.bix = lshr i32 %i.biv, %i.biw
  %i.biy = trunc i32 %i.bix to i1
end_hunk_1
