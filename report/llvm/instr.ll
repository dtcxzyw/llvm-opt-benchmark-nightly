Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/instr?download=true
inline.NumInlined: 217
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 98
begin_hunk_0_@__bolt_instr_data_dump:bb.a
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.cmd = load ptr, ptr %i.cmc, align 8, !tbaa !186 ; 2 uses
  %.not20.i = icmp eq ptr %i.cmd, null
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_15GraphD2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.cme = load ptr, ptr %i.axb, align 8, !tbaa !195, !nonnull !38, !align !62
  call fastcc void @_ZN12_GLOBAL__N_116BumpPtrAllocator10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(26) %i.cme, ptr noundef nonnull %i.cmd) #14
  br label %_ZN12_GLOBAL__N_15GraphD2Ev.exit

_ZN12_GLOBAL__N_15GraphD2Ev.exit:                 ; preds = %bb.fq, %bb.fr
  call fastcc void @_ZN12_GLOBAL__N_116BumpPtrAllocator10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(26) %12, ptr noundef nonnull %i.axa) #14
  br label %_ZN12_GLOBAL__N_120writeFunctionProfileEiRNS_20ProfileWriterContextEPKhRNS_16BumpPtrAllocatorE.exit

_ZN12_GLOBAL__N_120writeFunctionProfileEiRNS_20ProfileWriterContextEPKhRNS_16BumpPtrAllocatorE.exit: ; preds = %.preheader117.i, %._crit_edge138.i, %_ZN12_GLOBAL__N_15GraphD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.zl, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %.ptr.i.i61, align 8, !tbaa !28
  %i.cmf = call noundef i64 asm sideeffect "movq $$14, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},{r10},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr nonnull @_ZN12_GLOBAL__N_114MaskAllSignalsE, ptr nonnull %.ptr.i.i61, i64 8) #13, !srcloc !29 ; 0 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %_ZN12_GLOBAL__N_120writeFunctionProfileEiRNS_20ProfileWriterContextEPKhRNS_16BumpPtrAllocatorE.exit
  %i.cmg = atomicrmw volatile xchg ptr %i.zl, i8 1 acquire, align 1
  %.not.i.i.i62 = icmp eq i8 %i.cmg, 0
  br i1 %.not.i.i.i62, label %_ZN12_GLOBAL__N_116BumpPtrAllocator5clearEv.exit, label %bb.fs, !llvm.loop !3

_ZN12_GLOBAL__N_116BumpPtrAllocator5clearEv.exit: ; preds = %bb.fs
  %i.cmh = zext i32 %i.atk to i64
  %i.cmi = shl nuw nsw i64 %i.cmh, 4
  %i.cmj = getelementptr inbounds nuw i8, ptr %.016205, i64 %i.asv
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 16
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 %i.atb
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cml, i64 %i.ati
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cmm, i64 %i.cmi ; 2 uses
  store i64 0, ptr %i.apo, align 8, !tbaa !69
  %i.cmo = load ptr, ptr %4, align 8, !tbaa !37, !nonnull !38
  store atomic volatile i8 0, ptr %i.cmo release, align 1
  %i.cmp = call noundef i64 asm sideeffect "movq $$14, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},{r10},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 2, ptr nonnull %.ptr.i.i61, ptr null, i64 8) #13, !srcloc !29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.cmq = add nuw nsw i32 %.0206, 1              ; 2 uses
  %exitcond245.not = icmp eq i32 %i.cmq, %i.zo
  br i1 %exitcond245.not, label %._crit_edge, label %bb.ap, !llvm.loop !135

bb.ft:                                            ; preds = %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE14forEachElementIJiPNS_20ProfileWriterContextEEEEvPFvRS1_DpT_ES8_.exit
  %sext = shl i64 %.057.i, 32
  %i.cmr = ashr exact i64 %sext, 32
  %i.cms = call noundef i64 asm sideeffect "movq $$11, %rax\0Asyscall\0A", "={ax},{di},{si},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.0.i29, i64 %i.cmr) #13, !srcloc !214 ; 0 uses
  %i.cmt = sext i32 %i.wq to i64
  %i.cmu = call i64 asm sideeffect "movq $$3, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.cmt) #13, !srcloc !50 ; 0 uses
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE14forEachElementIJiPNS_20ProfileWriterContextEEEEvPFvRS1_DpT_ES8_.exit
  %.val19 = load ptr, ptr %i.ec, align 8, !tbaa !70 ; 2 uses
  %i.cmv = icmp eq ptr %.val19, null
  br i1 %i.cmv, label %_ZN12_GLOBAL__N_116BumpPtrAllocator7destroyEv.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %.val = load i64, ptr %10, align 8
  %i.cmw = call noundef i64 asm sideeffect "movq $$11, %rax\0Asyscall\0A", "={ax},{di},{si},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.val19, i64 %.val) #13, !srcloc !214 ; 0 uses
  br label %_ZN12_GLOBAL__N_116BumpPtrAllocator7destroyEv.exit

_ZN12_GLOBAL__N_116BumpPtrAllocator7destroyEv.exit: ; preds = %bb.fu, %bb.fv
  %i.cmx = load ptr, ptr @_ZN12_GLOBAL__N_123GlobalWriteProfileMutexE, align 8, !tbaa !23
  store atomic volatile i8 0, ptr %i.cmx release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.fw

bb.fw:                                            ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, %_ZN12_GLOBAL__N_116BumpPtrAllocator7destroyEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32768 x i8], align 16            ; 23 uses
  br i1 %0, label %bb.g, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 65, ptr %i.a, align 16, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 115, ptr %i.b, align 1, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 115, ptr %i.c, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 101, ptr %i.d, align 1, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 114, ptr %i.e, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 116, ptr %i.f, align 1, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 105, ptr %i.g, align 2, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 111, ptr %i.h, align 1, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 110, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 32, ptr %i.j, align 1, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 102, ptr %i.k, align 2, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 97, ptr %i.l, align 1, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 105, ptr %i.m, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 108, ptr %i.n, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 101, ptr %i.o, align 2, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 100, ptr %i.p, align 1, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 58, ptr %i.q, align 16, !tbaa !18
  store i8 32, ptr %i.r, align 1, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit
  %.07.i5 = phi ptr [ %i.s, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.06.i6 = phi ptr [ %1, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ], [ %i.ad, %bb.f ] ; 5 uses
  %.0.i7 = phi i32 [ 32728, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ], [ %i.af, %bb.f ] ; 2 uses
  %i.t = load i8, ptr %.06.i6, align 1, !tbaa !18 ; 2 uses
  %.not.i8 = icmp eq i8 %i.t, 0
  br i1 %.not.i8, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i6, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i5, i64 1 ; 2 uses
  store i8 %i.t, ptr %.07.i5, align 1, !tbaa !18
  %i.w = load i8, ptr %i.u, align 1, !tbaa !18    ; 2 uses
  %.not.i8.1 = icmp eq i8 %i.w, 0
  br i1 %.not.i8.1, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i6, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i5, i64 2 ; 2 uses
  store i8 %i.w, ptr %i.v, align 1, !tbaa !18
  %i.z = load i8, ptr %i.x, align 1, !tbaa !18    ; 2 uses
  %.not.i8.2 = icmp eq i8 %i.z, 0
  br i1 %.not.i8.2, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i6, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i5, i64 3 ; 2 uses
  store i8 %i.z, ptr %i.y, align 1, !tbaa !18
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !18  ; 2 uses
  %.not.i8.3 = icmp eq i8 %i.ac, 0
  br i1 %.not.i8.3, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i6, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i5, i64 4 ; 2 uses
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !18
  %i.af = add nsw i32 %.0.i7, -4
  %i.ag = icmp eq i32 %.0.i7, 4
  br i1 %i.ag, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16, label %bb.b, !llvm.loop !5

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16:          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.08.i9 = phi ptr [ %i.ae, %bb.f ], [ %.07.i5, %bb.b ], [ %i.v, %bb.c ], [ %i.ab, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  store i8 10, ptr %.08.i9, align 1, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i9, i64 1
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.a to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.a, i64 %i.ak) #13, !srcloc !39 ; 0 uses
  %i.am = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #13, !srcloc !40 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN12_GLOBAL__N_118visitCallFlowEntryERNS_17CallFlowEntryBaseEiPNS_20ProfileWriterContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [32768 x i8], align 16            ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  %.not = icmp ugt i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.i, align 8
  %i.j = load i32, ptr @__bolt_instr_num_ind_targets, align 4, !tbaa !24 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.016.i = phi i32 [ %.117.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.015.i = phi i32 [ %.1.i, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = sub nuw i32 %.015.i, %.016.i
  %i.m = lshr i32 %i.l, 1
  %i.n = add i32 %i.m, %.016.i                    ; 3 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq i64 %i.r, %i.h
  br i1 %.not.i, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.s = icmp ult i64 %i.r, %i.h                  ; 2 uses
  %.1.i = select i1 %i.s, i32 %.015.i, i32 %i.n   ; 2 uses
  %i.t = add i32 %i.n, 1
  %.117.i = select i1 %i.s, i32 %i.t, i32 %.016.i ; 2 uses
  %i.u = icmp ult i32 %.117.i, %.1.i
  br i1 %i.u, label %.preheader.i, label %_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit.thread, !llvm.loop !10

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit:            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 48, ptr %i.c, align 16, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 32, ptr %i.v, align 1, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 91, ptr %i.w, align 2, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 117, ptr %i.x, align 1, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 110, ptr %i.y, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 107, ptr %i.z, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 110, ptr %i.aa, align 2, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 111, ptr %i.ab, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 119, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 110, ptr %i.ad, align 1, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 93, ptr %i.ae, align 2, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 32, ptr %i.af, align 1, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 48, ptr %i.ag, align 4, !tbaa !18
  store i8 32, ptr %i.ah, align 1, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.0.0.copyload = load i64, ptr %i.p, align 8, !tbaa !24
  %i.aj = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.ak = call fastcc noundef ptr @_ZN12_GLOBAL__N_112serializeLocERKNS_20ProfileWriterContextEPcNS_8LocationEj(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.ai, i64 %.sroa.0.0.copyload, i32 noundef 32754) #14 ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %.neg18 = sub i64 %i.aj, %i.al
  %i.am = trunc i64 %.neg18 to i32
  %i.an = add i32 %i.am, 32743
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store i8 48, ptr %i.ak, align 1, !tbaa !18
  %i.ap = icmp slt i32 %i.an, 2
  br i1 %i.ap, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 32, ptr %i.ao, align 1, !tbaa !18
  br label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25:          ; preds = %bb.d, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit
  %.08.i24 = phi ptr [ %i.ao, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ], [ %i.aq, %bb.d ] ; 4 uses
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !68
  %i.as = load i64, ptr %i.f, align 8, !tbaa !67
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not18.i = icmp eq i64 %i.at, 0
  br i1 %.not18.i, label %bb.e, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25, %.lr.ph.i
  %.020.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.a, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25 ] ; 2 uses
  %.01519.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %i.at, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25 ] ; 3 uses
  %i.au = urem i64 %.01519.i, 10
  %i.av = getelementptr inbounds nuw i8, ptr @.str.28, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 5 uses
  store i8 %i.aw, ptr %.020.i, align 1, !tbaa !18
  %i.ay = udiv i64 %.01519.i, 10
  %.not.i26 = icmp ult i64 %.01519.i, 10
  br i1 %.not.i26, label %.preheader.i27.preheader, label %.lr.ph.i, !llvm.loop !7

.preheader.i27.preheader:                         ; preds = %.lr.ph.i
  %i.az = ptrtoaddr ptr %i.ax to i64
  %i.ba = ptrtoaddr ptr %i.ax to i64
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i27.prol.loopexit, label %.preheader.i27.prol

.preheader.i27.prol:                              ; preds = %.preheader.i27.preheader, %.preheader.i27.prol
  %.122.i.prol = phi ptr [ %i.bb, %.preheader.i27.prol ], [ %i.ax, %.preheader.i27.preheader ]
  %.01621.i.prol = phi ptr [ %i.bd, %.preheader.i27.prol ], [ %.08.i24, %.preheader.i27.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i27.prol ], [ 0, %.preheader.i27.preheader ]
  %i.bb = getelementptr inbounds i8, ptr %.122.i.prol, i64 -1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.01621.i.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.01621.i.prol, align 1, !tbaa !18
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i27.prol.loopexit, label %.preheader.i27.prol, !llvm.loop !215

.preheader.i27.prol.loopexit:                     ; preds = %.preheader.i27.prol, %.preheader.i27.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i27.preheader ], [ %i.bd, %.preheader.i27.prol ]
  %.122.i.unr = phi ptr [ %i.ax, %.preheader.i27.preheader ], [ %i.bb, %.preheader.i27.prol ]
  %.01621.i.unr = phi ptr [ %.08.i24, %.preheader.i27.preheader ], [ %i.bd, %.preheader.i27.prol ]
  %i.be = sub i64 %i.b, %i.ba
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, label %.preheader.i27

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit25
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i24, i64 1
  store i8 48, ptr %.08.i24, align 1, !tbaa !18
  br label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit

.preheader.i27:                                   ; preds = %.preheader.i27.prol.loopexit, %.preheader.i27
  %.122.i = phi ptr [ %i.cc, %.preheader.i27 ], [ %.122.i.unr, %.preheader.i27.prol.loopexit ] ; 8 uses
  %.01621.i = phi ptr [ %i.ce, %.preheader.i27 ], [ %.01621.i.unr, %.preheader.i27.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds i8, ptr %.122.i, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.01621.i, i64 1
  store i8 %i.bi, ptr %.01621.i, align 1, !tbaa !18
  %i.bk = getelementptr inbounds i8, ptr %.122.i, i64 -2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.01621.i, i64 2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !18
  %i.bn = getelementptr inbounds i8, ptr %.122.i, i64 -3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.01621.i, i64 3
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !18
  %i.bq = getelementptr inbounds i8, ptr %.122.i, i64 -4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.01621.i, i64 4
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !18
  %i.bt = getelementptr inbounds i8, ptr %.122.i, i64 -5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.01621.i, i64 5
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !18
  %i.bw = getelementptr inbounds i8, ptr %.122.i, i64 -6
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.01621.i, i64 6
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !18
  %i.bz = getelementptr inbounds i8, ptr %.122.i, i64 -7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.01621.i, i64 7
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !18
  %i.cc = getelementptr inbounds i8, ptr %.122.i, i64 -8 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.01621.i, i64 8 ; 2 uses
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !18
  %.not17.i.7 = icmp eq ptr %i.cc, %i.a
  br i1 %.not17.i.7, label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, label %.preheader.i27, !llvm.loop !8

_ZN12_GLOBAL__N_18intToStrEPcmj.exit:             ; preds = %.preheader.i27.prol.loopexit, %.preheader.i27, %bb.e
  %.014.i = phi ptr [ %i.bg, %bb.e ], [ %.lcssa.unr, %.preheader.i27.prol.loopexit ], [ %i.ce, %.preheader.i27 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  store i8 10, ptr %.014.i, align 1, !tbaa !18
  %i.cg = sext i32 %1 to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.ch, %i.aj
  %i.cj = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.cg, ptr nonnull %i.c, i64 %i.ci) #13, !srcloc !39 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit.thread

_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit.thread: ; preds = %bb.c, %bb.b, %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define hidden void @_Z12watchProcessv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %"class.(anonymous namespace)::Lock", align 8 ; 5 uses
  %1 = alloca %"struct.(anonymous namespace)::timespec", align 8 ; 6 uses
  %2 = alloca %"struct.(anonymous namespace)::timespec", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_111openProfileEv() #14 ; 4 uses
  %i.b = load i8, ptr @__bolt_instr_wait_forks, align 1, !tbaa !65, !range !66, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 asm sideeffect "movq $$121, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 0) #13, !srcloc !218
  %i.e = sub i64 0, %i.d
  %i.f = tail call noundef i32 asm sideeffect "movq $$109, %rax\0Asyscall\0A", "={ax},{di},{si},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0) #13, !srcloc !74 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 asm sideeffect "movq $$110, %rax\0Asyscall\0A", "={ax},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !219 ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__bolt_instr_data_dump(i32 noundef %i.a, ptr noundef null, ptr noundef null, i64 noundef 0) #14
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15getOrAllocEntryEmRNS_16BumpPtrAllocatorE:bb.a
  store i8 100, ptr %i.w, align 1, !tbaa !18
  store i8 58, ptr %i.x, align 16, !tbaa !18
  store i8 32, ptr %i.y, align 1, !tbaa !18
  store i8 99, ptr %i.z, align 2, !tbaa !18
  store i8 105, ptr %i.aa, align 1, !tbaa !18
  store i8 114, ptr %i.ab, align 4, !tbaa !18
  store i8 99, ptr %i.ac, align 1, !tbaa !18
  store i8 117, ptr %i.ad, align 2, !tbaa !18
  store i8 108, ptr %i.ae, align 1, !tbaa !18
  store i8 97, ptr %i.af, align 8, !tbaa !18
  store i8 114, ptr %i.ag, align 1, !tbaa !18
  store i8 32, ptr %i.ah, align 2, !tbaa !18
  store i8 114, ptr %i.ai, align 1, !tbaa !18
  store i8 101, ptr %i.aj, align 4, !tbaa !18
  store i8 102, ptr %i.ak, align 1, !tbaa !18
  store i8 101, ptr %i.al, align 2, !tbaa !18
  store i8 114, ptr %i.am, align 1, !tbaa !18
  store i8 101, ptr %i.an, align 16, !tbaa !18
  store i8 110, ptr %i.ao, align 1, !tbaa !18
  store i8 99, ptr %i.ap, align 2, !tbaa !18
  store i8 101, ptr %i.aq, align 1, !tbaa !18
  store i8 32, ptr %i.ar, align 4, !tbaa !18
  store i8 99, ptr %i.as, align 1, !tbaa !18
  store i8 114, ptr %i.at, align 2, !tbaa !18
  store i8 101, ptr %i.au, align 1, !tbaa !18
  store i8 97, ptr %i.av, align 8, !tbaa !18
  store i8 116, ptr %i.aw, align 1, !tbaa !18
  store i8 101, ptr %i.ax, align 2, !tbaa !18
  store i8 100, ptr %i.ay, align 1, !tbaa !18
  store i8 33, ptr %i.az, align 4, !tbaa !18
  store i8 10, ptr %i.ba, align 1, !tbaa !18
  store i8 10, ptr %i.bb, align 2, !tbaa !18
  %i.cn = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.a, i64 47) #13, !srcloc !39 ; 0 uses
  %i.co = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #13, !srcloc !40 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tailrecurse.backedge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0416.i = phi i64 [ %i.cd, %.lr.ph.i.preheader.new ], [ %i.cp, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.cp = udiv i64 %.0416.i, 54289                ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !239

_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit: ; preds = %tailrecurse.backedge.i, %bb.b, %bb.c
  %i.cq = phi ptr [ %i.e, %bb.b ], [ %i.bd, %bb.c ], [ %i.bl, %tailrecurse.backedge.i ] ; 2 uses
  %.not9 = icmp sgt i64 %1, -1
  br i1 %.not9, label %_ZN12_GLOBAL__N_16assertEbPKc.exit, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i:        ; preds = %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 65, ptr %i.b, align 16, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 115, ptr %i.cr, align 1, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 115, ptr %i.cs, align 2, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 101, ptr %i.ct, align 1, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 114, ptr %i.cu, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 116, ptr %i.cv, align 1, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 105, ptr %i.cw, align 2, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 111, ptr %i.cx, align 1, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 110, ptr %i.cy, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 32, ptr %i.cz, align 1, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 102, ptr %i.da, align 2, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 97, ptr %i.db, align 1, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 105, ptr %i.dc, align 4, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 108, ptr %i.dd, align 1, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 101, ptr %i.de, align 2, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 100, ptr %i.df, align 1, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 58, ptr %i.dg, align 16, !tbaa !18
  store i8 32, ptr %i.dh, align 1, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 73, ptr %i.di, align 2, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 110, ptr %i.dj, align 1, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 118, ptr %i.dk, align 4, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 97, ptr %i.dl, align 1, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 108, ptr %i.dm, align 2, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 105, ptr %i.dn, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 100, ptr %i.do, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 32, ptr %i.dp, align 1, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  store i8 101, ptr %i.dq, align 2, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 110, ptr %i.dr, align 1, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 116, ptr %i.ds, align 4, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 114, ptr %i.dt, align 1, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 121, ptr %i.du, align 2, !tbaa !18
  store i8 33, ptr %i.dv, align 1, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 10, ptr %i.dw, align 16, !tbaa !18
  %i.dx = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.b, i64 33) #13, !srcloc !39 ; 0 uses
  %i.dy = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #13, !srcloc !40 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

bb.g:                                             ; preds = %bb.a
  %i.dz = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_116BumpPtrAllocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(26) %2, i64 noundef 286536) #14 ; 3 uses
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10, %bb.g
  %.08.i.i.i11 = phi i64 [ 0, %bb.g ], [ %i.em, %.lr.ph.i.i.i10 ]
  %.067.i.i.i12 = phi ptr [ %i.dz, %bb.g ], [ %i.el, %.lr.ph.i.i.i10 ] ; 13 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 1
  store i8 0, ptr %.067.i.i.i12, align 1, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 2
  store i8 0, ptr %i.ea, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 3
  store i8 0, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 4
  store i8 0, ptr %i.ec, align 1, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 5
  store i8 0, ptr %i.ed, align 1, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 6
  store i8 0, ptr %i.ee, align 1, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 7
  store i8 0, ptr %i.ef, align 1, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 8
  store i8 0, ptr %i.eg, align 1, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 9
  store i8 0, ptr %i.eh, align 1, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 10
  store i8 0, ptr %i.ei, align 1, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 11
  store i8 0, ptr %i.ej, align 1, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 12
  store i8 0, ptr %i.ek, align 1, !tbaa !18
  %i.em = add nuw nsw i64 %.08.i.i.i11, 12        ; 2 uses
  %exitcond.not.i.i.i13.11 = icmp eq i64 %i.em, 286536
  br i1 %exitcond.not.i.i.i13.11, label %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit, label %.lr.ph.i.i.i10, !llvm.loop !0

_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit: ; preds = %.lr.ph.i.i.i10
  store ptr %i.dz, ptr %0, align 8, !tbaa !60
  %i.en = urem i64 %1, 11939
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.en ; 2 uses
  store i64 %1, ptr %i.eo, align 8, !tbaa !71
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

_ZN12_GLOBAL__N_16assertEbPKc.exit:               ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit
  %.0 = phi ptr [ %i.eo, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit ], [ %i.cq, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit ], [ %i.cq, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN12_GLOBAL__N_119visitIndCallCounterERNS_24SimpleHashTableEntryBaseEiiPNS_20ProfileWriterContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %4 = alloca %"class.(anonymous namespace)::Lock", align 8 ; 5 uses
  %i.c = alloca [21 x i8], align 16               ; 5 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = alloca [32768 x i8], align 16            ; 5 uses
  %i.f = alloca [32768 x i8], align 16            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !52
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !71
  %i.n = load i64, ptr @_ZN12_GLOBAL__N_115TextBaseAddressE, align 8, !tbaa !28
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.p, align 8
  %i.q = load i32, ptr @__bolt_instr_num_ind_targets, align 4, !tbaa !24 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.016.i = phi i32 [ %.117.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.015.i = phi i32 [ %.1.i, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.s = sub nuw i32 %.015.i, %.016.i
  %i.t = lshr i32 %i.s, 1
  %i.u = add i32 %i.t, %.016.i                    ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq i64 %i.y, %i.o
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.z = icmp ult i64 %i.y, %i.o                  ; 2 uses
  %.1.i = select i1 %i.z, i32 %.015.i, i32 %i.u   ; 2 uses
  %i.aa = add i32 %i.u, 1
  %.117.i = select i1 %i.z, i32 %i.aa, i32 %.016.i ; 2 uses
  %i.ab = icmp ult i32 %.117.i, %.1.i
  br i1 %i.ab, label %.preheader.i, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %.sroa.09.0.copyload = load i64, ptr %i.l, align 4, !tbaa !24
  %i.ac = call fastcc noundef ptr @_ZN12_GLOBAL__N_112serializeLocERKNS_20ProfileWriterContextEPcNS_8LocationEj(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.e, i64 %.sroa.09.0.copyload, i32 noundef 32768) #14 ; 18 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.e to i64                ; 2 uses
  %.neg = sub i64 %i.ae, %i.ad
  %i.af = trunc i64 %.neg to i32                  ; 15 uses
  %i.ag = add i32 %i.af, 32728
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store i8 48, ptr %i.ac, align 1, !tbaa !18
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  store i8 32, ptr %i.ah, align 1, !tbaa !18
  %i.ak = icmp slt i32 %i.af, -32725
  br i1 %i.ak, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3 ; 2 uses
  store i8 91, ptr %i.aj, align 1, !tbaa !18
  %i.am = icmp eq i32 %i.af, -32725
  br i1 %i.am, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store i8 117, ptr %i.al, align 1, !tbaa !18
  %i.ao = icmp slt i32 %i.af, -32723
  br i1 %i.ao, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 5 ; 2 uses
  store i8 110, ptr %i.an, align 1, !tbaa !18
  %i.aq = icmp eq i32 %i.af, -32723
  br i1 %i.aq, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 6 ; 2 uses
  store i8 107, ptr %i.ap, align 1, !tbaa !18
  %i.as = icmp slt i32 %i.af, -32721
  br i1 %i.as, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 7 ; 2 uses
  store i8 110, ptr %i.ar, align 1, !tbaa !18
  %i.au = icmp eq i32 %i.af, -32721
  br i1 %i.au, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i8 111, ptr %i.at, align 1, !tbaa !18
  %i.aw = icmp slt i32 %i.af, -32719
  br i1 %i.aw, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 9 ; 2 uses
  store i8 119, ptr %i.av, align 1, !tbaa !18
  %i.ay = icmp eq i32 %i.af, -32719
  br i1 %i.ay, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 10 ; 2 uses
  store i8 110, ptr %i.ax, align 1, !tbaa !18
  %i.ba = icmp slt i32 %i.af, -32717
  br i1 %i.ba, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 11 ; 2 uses
  store i8 93, ptr %i.az, align 1, !tbaa !18
  %i.bc = icmp eq i32 %i.af, -32717
  br i1 %i.bc, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  store i8 32, ptr %i.bb, align 1, !tbaa !18
  %i.be = icmp slt i32 %i.af, -32715
  br i1 %i.be, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 13 ; 2 uses
  store i8 48, ptr %i.bd, align 1, !tbaa !18
  %i.bg = icmp eq i32 %i.af, -32715
  br i1 %i.bg, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 14 ; 2 uses
  store i8 32, ptr %i.bf, align 1, !tbaa !18
  %i.bi = icmp slt i32 %i.af, -32713
  br i1 %i.bi, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 15 ; 2 uses
  store i8 48, ptr %i.bh, align 1, !tbaa !18
  %i.bk = icmp eq i32 %i.af, -32713
  br i1 %i.bk, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i8 32, ptr %i.bj, align 1, !tbaa !18
  br label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit:            ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.loopexit
  %.08.i = phi ptr [ %i.ah, %.loopexit ], [ %i.ax, %bb.k ], [ %i.bf, %bb.o ], [ %i.aj, %bb.d ], [ %i.bl, %bb.r ], [ %i.al, %bb.e ], [ %i.bb, %bb.m ], [ %i.an, %bb.f ], [ %i.bj, %bb.q ], [ %i.ap, %bb.g ], [ %i.az, %bb.l ], [ %i.ar, %bb.h ], [ %i.bh, %bb.p ], [ %i.at, %bb.i ], [ %i.bd, %bb.n ], [ %i.av, %bb.j ] ; 4 uses
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %.not18.i = icmp eq i64 %i.bm, 0
  br i1 %.not18.i, label %bb.s, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, %.lr.ph.i
  %.020.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.c, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ] ; 2 uses
  %.01519.i = phi i64 [ %i.br, %.lr.ph.i ], [ %i.bm, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ] ; 3 uses
  %i.bn = urem i64 %.01519.i, 10
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.28, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 5 uses
  store i8 %i.bp, ptr %.020.i, align 1, !tbaa !18
  %i.br = udiv i64 %.01519.i, 10
  %.not.i37 = icmp ult i64 %.01519.i, 10
  br i1 %.not.i37, label %.preheader.i38.preheader, label %.lr.ph.i, !llvm.loop !7

.preheader.i38.preheader:                         ; preds = %.lr.ph.i
  %i.bs = ptrtoaddr ptr %i.bq to i64
  %i.bt = ptrtoaddr ptr %i.bq to i64
  %xtraiter89 = and i64 %i.bs, 7                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.preheader.i38.prol.loopexit, label %.preheader.i38.prol

.preheader.i38.prol:                              ; preds = %.preheader.i38.preheader, %.preheader.i38.prol
  %.122.i.prol = phi ptr [ %i.bu, %.preheader.i38.prol ], [ %i.bq, %.preheader.i38.preheader ]
  %.01621.i.prol = phi ptr [ %i.bw, %.preheader.i38.prol ], [ %.08.i, %.preheader.i38.preheader ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.preheader.i38.prol ], [ 0, %.preheader.i38.preheader ]
  %i.bu = getelementptr inbounds i8, ptr %.122.i.prol, i64 -1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.01621.i.prol, i64 1 ; 3 uses
  store i8 %i.bv, ptr %.01621.i.prol, align 1, !tbaa !18
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.preheader.i38.prol.loopexit, label %.preheader.i38.prol, !llvm.loop !240

.preheader.i38.prol.loopexit:                     ; preds = %.preheader.i38.prol, %.preheader.i38.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i38.preheader ], [ %i.bw, %.preheader.i38.prol ]
  %.122.i.unr = phi ptr [ %i.bq, %.preheader.i38.preheader ], [ %i.bu, %.preheader.i38.prol ]
  %.01621.i.unr = phi ptr [ %.08.i, %.preheader.i38.preheader ], [ %i.bw, %.preheader.i38.prol ]
  %i.bx = sub i64 %i.d, %i.bt
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, label %.preheader.i38

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 48, ptr %.08.i, align 1, !tbaa !18
  br label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit

.preheader.i38:                                   ; preds = %.preheader.i38.prol.loopexit, %.preheader.i38
  %.122.i = phi ptr [ %i.cv, %.preheader.i38 ], [ %.122.i.unr, %.preheader.i38.prol.loopexit ] ; 8 uses
  %.01621.i = phi ptr [ %i.cx, %.preheader.i38 ], [ %.01621.i.unr, %.preheader.i38.prol.loopexit ] ; 9 uses
  %i.ca = getelementptr inbounds i8, ptr %.122.i, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.01621.i, i64 1
  store i8 %i.cb, ptr %.01621.i, align 1, !tbaa !18
  %i.cd = getelementptr inbounds i8, ptr %.122.i, i64 -2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.01621.i, i64 2
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !18
  %i.cg = getelementptr inbounds i8, ptr %.122.i, i64 -3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.01621.i, i64 3
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !18
  %i.cj = getelementptr inbounds i8, ptr %.122.i, i64 -4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.01621.i, i64 4
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !18
  %i.cm = getelementptr inbounds i8, ptr %.122.i, i64 -5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.01621.i, i64 5
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !18
  %i.cp = getelementptr inbounds i8, ptr %.122.i, i64 -6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.01621.i, i64 6
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !18
  %i.cs = getelementptr inbounds i8, ptr %.122.i, i64 -7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18
end_hunk_1
