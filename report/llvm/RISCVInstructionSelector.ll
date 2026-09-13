Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVInstructionSelector?download=true
inline.NumInlined: 4316
inline.NumDeleted: 1537
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm30createRISCVInstructionSelectorERKNS_18RISCVTargetMachineERKNS_14RISCVSubtargetERKNS_21RISCVRegisterBankInfoE:bb.a
  %.fca.0.extract.i.36.i.i = extractvalue { ptr, i8 } %i.tj, 0
  %i.tk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.36.i.i, i64 8
  store i32 36, ptr %i.tk, align 4, !tbaa !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 5764607540214104129, ptr %i.a, align 8, !tbaa !342
  %i.tl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImjLj64ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.37.i.i = extractvalue { ptr, i8 } %i.tl, 0
  %i.tm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.37.i.i, i64 8
  store i32 37, ptr %i.tm, align 4, !tbaa !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 5764607540214104193, ptr %i.a, align 8, !tbaa !342
  %i.tn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImjLj64ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.38.i.i = extractvalue { ptr, i8 } %i.tn, 0
  %i.to = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.38.i.i, i64 8
  store i32 38, ptr %i.to, align 4, !tbaa !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_ZN4llvm20GIMatchTableExecutor12MatcherStateC1Ej(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124RISCVInstructionSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(1400) dereferenceable(1400) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_124RISCVInstructionSelectorE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj125EEEMN12_GLOBAL__N_124RISCVInstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !344  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj125EEEMN12_GLOBAL__N_124RISCVInstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !344
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #23
  br label %_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj125EEEMN12_GLOBAL__N_124RISCVInstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit

_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj125EEEMN12_GLOBAL__N_124RISCVInstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.o) #23
  tail call void @_ZN4llvm19InstructionSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124RISCVInstructionSelectorD0Ev(ptr noundef nonnull align 8 dereferenceable(1400) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_124RISCVInstructionSelectorE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_124RISCVInstructionSelectorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !344  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN12_GLOBAL__N_124RISCVInstructionSelectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !344
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #23, !inline_history !621
  br label %_ZN12_GLOBAL__N_124RISCVInstructionSelectorD2Ev.exit

_ZN12_GLOBAL__N_124RISCVInstructionSelectorD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.o) #23, !inline_history !621
  tail call void @_ZN4llvm19InstructionSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(1400) %0) #23, !inline_history !621
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1400) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124RISCVInstructionSelector30setupGeneratedPerFunctionStateERN4llvm15MachineFunctionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1400) initializes((144, 160)) %0, ptr nofree nonnull readonly align 8 captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124RISCVInstructionSelector7setupMFERN4llvm15MachineFunctionEPNS1_18GISelValueTrackingEPNS1_15CodeGenCoverageEPNS1_18ProfileSummaryInfoEPNS1_18BlockFrequencyInfoE(ptr noundef nonnull align 8 dereferenceable(1400) initializes((8, 56)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !345
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !346
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !225
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !623
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.e, align 8, !tbaa !624
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !625
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #23, !inline_history !622
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !347
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.l, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK12_GLOBAL__N_124RISCVInstructionSelector13getMatchTableEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZZNK12_GLOBAL__N_124RISCVInstructionSelector13getMatchTableEvE11MatchTable0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_124RISCVInstructionSelector20testImmPredicate_I64Ejl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1400) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  switch i32 %1, label %bb.dr [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.n
    i32 7, label %bb.s
    i32 8, label %bb.u
    i32 9, label %bb.v
    i32 10, label %bb.w
    i32 11, label %bb.x
    i32 12, label %bb.y
    i32 13, label %bb.z
    i32 14, label %bb.aa
    i32 15, label %bb.ab
    i32 16, label %bb.ac
    i32 17, label %bb.af
    i32 18, label %bb.ag
    i32 19, label %bb.ah
    i32 20, label %bb.ai
    i32 21, label %bb.aj
    i32 22, label %bb.ak
    i32 23, label %bb.al
    i32 24, label %bb.am
    i32 25, label %bb.an
    i32 26, label %bb.ap
    i32 27, label %bb.aq
    i32 28, label %bb.ar
    i32 29, label %bb.as
    i32 30, label %bb.at
    i32 31, label %bb.av
    i32 32, label %bb.aw
    i32 33, label %bb.ay
    i32 34, label %bb.az
    i32 35, label %bb.bb
    i32 36, label %bb.bc
    i32 37, label %bb.bd
    i32 38, label %bb.be
    i32 39, label %bb.bf
    i32 40, label %bb.bg
    i32 41, label %bb.bh
    i32 42, label %bb.bi
    i32 43, label %bb.bj
    i32 44, label %bb.bl
    i32 45, label %bb.bm
    i32 46, label %bb.bo
    i32 47, label %bb.bp
    i32 48, label %bb.bq
    i32 49, label %bb.br
    i32 50, label %bb.bt
    i32 51, label %bb.bv
    i32 52, label %bb.bw
    i32 53, label %bb.bx
    i32 54, label %bb.by
    i32 55, label %bb.bz
    i32 56, label %bb.ca
    i32 57, label %3
    i32 58, label %bb.cc
    i32 59, label %bb.cd
    i32 60, label %bb.ce
    i32 61, label %bb.cf
    i32 62, label %bb.cg
    i32 63, label %bb.ch
    i32 64, label %bb.ci
    i32 65, label %bb.cj
    i32 66, label %bb.ck
    i32 67, label %bb.cl
    i32 68, label %bb.cm
    i32 69, label %bb.cn
    i32 70, label %bb.co
    i32 71, label %bb.cp
    i32 72, label %bb.cq
    i32 73, label %bb.cr
    i32 74, label %bb.cs
    i32 75, label %bb.ct
    i32 76, label %bb.cu
    i32 77, label %bb.cv
    i32 78, label %bb.cw
    i32 79, label %bb.cx
    i32 80, label %bb.cy
    i32 81, label %bb.cz
    i32 82, label %bb.da
    i32 83, label %bb.db
    i32 84, label %bb.dc
    i32 85, label %bb.dd
    i32 86, label %bb.de
    i32 87, label %bb.df
    i32 88, label %bb.dg
    i32 89, label %bb.dh
    i32 90, label %bb.dk
    i32 91, label %bb.dn
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %2, -2048
  %or.cond = icmp eq i64 %i.a, -4096
  %i.b = add i64 %2, -2048
  %i.c = icmp ult i64 %i.b, 2047
  %i.d = or i1 %or.cond, %i.c
  br label %switch.edge

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  %i.h = load i8, ptr %i.g, align 8, !tbaa !224, !range !218, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = add i64 %2, 2048
  %i.k = icmp ult i64 %i.j, 4096                  ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %switch.edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.m = icmp samesign ugt i64 %i.l, 62
  br label %switch.edge

bb.f:                                             ; preds = %bb.c
  br i1 %i.k, label %switch.edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = trunc i64 %2 to i32                      ; 2 uses
  %.not.i.i187 = icmp eq i32 %i.n, -1
  br i1 %.not.i.i187, label %switch.edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.p = icmp samesign ugt i32 %i.o, 30
  br label %switch.edge

bb.i:                                             ; preds = %bb.a
  %i.q = add i64 %2, 2147483648
  %i.r = icmp ult i64 %i.q, 4294967296
  br i1 %i.r, label %switch.edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i64 %2, -1
  %i.t = or i64 %i.s, %2
  %i.u = icmp eq i64 %i.t, -1
  br label %switch.edge

bb.k:                                             ; preds = %bb.a
  %i.v = and i64 %2, -2147483648
  %or.cond198 = icmp eq i64 %i.v, 2147483648
  br i1 %or.cond198, label %_ZN4llvm16isShiftedMask_64Em.exit, label %switch.edge

_ZN4llvm16isShiftedMask_64Em.exit:                ; preds = %bb.k
  %i.w = add nsw i64 %2, -1
  %i.x = or i64 %i.w, %2                          ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = and i64 %i.y, %i.x
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = icmp ne i64 %2, 4294967295
  %spec.select = and i1 %i.ab, %i.aa
  br label %switch.edge

bb.l:                                             ; preds = %bb.a
  %.not.i189 = icmp ne i64 %2, 0
  %i.ac = add i64 %2, 1
  %i.ad = and i64 %i.ac, %2
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = and i1 %.not.i189, %i.ae
  br i1 %i.af, label %bb.m, label %switch.edge

bb.m:                                             ; preds = %bb.l
  %i.ag = add i64 %2, -63
  %i.ah = icmp ult i64 %i.ag, 1985
  br label %switch.edge

bb.n:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 656
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !224, !range !218, !noundef !70
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = add i64 %2, 2048
  %i.ao = icmp ult i64 %i.an, 4096                ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.ao, label %switch.edge, label %_ZN4llvm13isPowerOf2_64Em.exit191

_ZN4llvm13isPowerOf2_64Em.exit191:                ; preds = %bb.o
  %i.ap = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.aq = icmp samesign ult i64 %i.ap, 2
  br label %switch.edge

bb.p:                                             ; preds = %bb.n
  br i1 %i.ao, label %switch.edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = trunc i64 %2 to i32                     ; 2 uses
  %.not.i.i192 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i192, label %switch.edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ar)
  %i.at = icmp samesign ult i32 %i.as, 2
  br label %switch.edge

bb.s:                                             ; preds = %bb.a
  %i.au = trunc i64 %2 to i32
  %i.av = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.au)
  %or.cond200 = icmp eq i32 %i.av, 1
  br i1 %or.cond200, label %bb.t, label %switch.edge

bb.t:                                             ; preds = %bb.s
  %i.aw = add i64 %2, 2048
  %i.ax = icmp ult i64 %i.aw, 4096
  %i.ay = icmp ne i64 %2, 1
  %spec.select186 = and i1 %i.ay, %i.ax
  br label %switch.edge

bb.u:                                             ; preds = %bb.a
  %.mask211 = and i64 %2, 255
  %i.az = icmp eq i64 %.mask211, 255
  br label %switch.edge

bb.v:                                             ; preds = %bb.a
  %.mask210 = and i64 %2, 65535
  %i.ba = icmp eq i64 %.mask210, 65535
  br label %switch.edge

bb.w:                                             ; preds = %bb.a
  %.mask = and i64 %2, 4294967295
  %i.bb = icmp eq i64 %.mask, 4294967295
  br label %switch.edge

bb.x:                                             ; preds = %bb.a
  %i.bc = icmp eq i64 %2, -1
  br label %switch.edge

bb.y:                                             ; preds = %bb.a
  %i.bd = add i64 %2, 256
  %i.be = icmp ult i64 %i.bd, 512
  %i.bf = and i64 %2, 1
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = and i1 %i.be, %i.bg
  br label %switch.edge

bb.z:                                             ; preds = %bb.a
  %i.bi = add i64 %2, 2048
  %i.bj = icmp ult i64 %i.bi, 4096
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = and i1 %i.bj, %i.bl
  br label %switch.edge

bb.aa:                                            ; preds = %bb.a
  %i.bn = add i64 %2, 4096
  %i.bo = icmp ult i64 %i.bn, 8192
  %i.bp = and i64 %2, 1
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = and i1 %i.bo, %i.bq
  br label %switch.edge
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_124RISCVInstructionSelector20testImmPredicate_I64Ejl:bb.a
  br label %switch.edge

bb.aq:                                            ; preds = %bb.a
  %i.ck = add i64 %2, 16
  %i.cl = icmp ult i64 %i.ck, 32
  br label %switch.edge

bb.ar:                                            ; preds = %bb.a
  %i.cm = add i64 %2, 15
  %i.cn = icmp ult i64 %i.cm, 32
  br label %switch.edge

bb.as:                                            ; preds = %bb.a
  %i.co = icmp ne i64 %2, 0
  %i.cp = add i64 %2, 15
  %i.cq = icmp ult i64 %i.cp, 32
  %i.cr = and i1 %i.co, %i.cq
  br label %switch.edge

bb.at:                                            ; preds = %bb.a
  %.not183 = icmp eq i64 %2, 0
  br i1 %.not183, label %switch.edge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cs = add i64 %2, 16
  %i.ct = icmp ult i64 %i.cs, 32
  br label %switch.edge

bb.av:                                            ; preds = %bb.a
  %i.cu = add i64 %2, 32
  %i.cv = icmp ult i64 %i.cu, 64
  br label %switch.edge

bb.aw:                                            ; preds = %bb.a
  %.not182 = icmp eq i64 %2, 0
  br i1 %.not182, label %switch.edge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cw = add i64 %2, 32
  %i.cx = icmp ult i64 %i.cw, 64
  br label %switch.edge

bb.ay:                                            ; preds = %bb.a
  %i.cy = add i64 %2, 512
  %i.cz = icmp ult i64 %i.cy, 1024
  br label %switch.edge

bb.az:                                            ; preds = %bb.a
  %.not181 = icmp eq i64 %2, 0
  br i1 %.not181, label %switch.edge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.da = add i64 %2, 512
  %i.db = icmp ult i64 %i.da, 1024
  %i.dc = and i64 %2, 15
  %i.dd = icmp eq i64 %i.dc, 0
  %i.de = and i1 %i.db, %i.dd
  br label %switch.edge

bb.bb:                                            ; preds = %bb.a
  %i.df = add i64 %2, 1024
  %i.dg = icmp ult i64 %i.df, 2048
  br label %switch.edge

bb.bc:                                            ; preds = %bb.a
  %i.dh = add i64 %2, 2048
  %i.di = icmp ult i64 %i.dh, 4096
  br label %switch.edge

bb.bd:                                            ; preds = %bb.a
  %i.dj = add i64 %2, 2049
  %or.cond5 = icmp ult i64 %i.dj, 4096
  %i.dk = icmp ne i64 %2, 0
  %i.dl = and i1 %i.dk, %or.cond5
  br label %switch.edge

bb.be:                                            ; preds = %bb.a
  %i.dm = add i64 %2, 2049
  %or.cond7 = icmp ult i64 %i.dm, 2048
  %i.dn = add i64 %2, -1
  %i.do = icmp ult i64 %i.dn, 2046
  %i.dp = or i1 %or.cond7, %i.do
  br label %switch.edge

bb.bf:                                            ; preds = %bb.a
  %i.dq = add i64 %2, 2047
  %i.dr = icmp ult i64 %i.dq, 4096
  br label %switch.edge

bb.bg:                                            ; preds = %bb.a
  %i.ds = add i64 %2, 2047
  %i.dt = icmp ult i64 %i.ds, 4096
  br label %switch.edge

bb.bh:                                            ; preds = %bb.a
  %i.du = add i64 %2, 2048
  %i.dv = icmp ult i64 %i.du, 4096
  br label %switch.edge

bb.bi:                                            ; preds = %bb.a
  %i.dw = add i64 %2, 2048
  %i.dx = icmp ult i64 %i.dw, 4096
  %i.dy = and i64 %2, 31
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = and i1 %i.dx, %i.dz
  br label %switch.edge

bb.bj:                                            ; preds = %bb.a
  %i.eb = add i64 %2, -2048
  %i.ec = icmp ult i64 %i.eb, -4096
  %i.ed = add nsw i64 %2, 32
  %i.ee = icmp ult i64 %i.ed, 64
  %or.cond203 = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond203, label %switch.edge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ef = add nsw i64 %2, 2047
  %i.eg = icmp ult i64 %i.ef, 4096
  br label %switch.edge

bb.bl:                                            ; preds = %bb.a
  %i.eh = add i64 %2, 2047
  %i.ei = icmp ult i64 %i.eh, 4096
  br label %switch.edge

bb.bm:                                            ; preds = %bb.a
  %.not180 = icmp eq i64 %2, 0
  br i1 %.not180, label %switch.edge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ej = add i64 %2, 32768
  %i.ek = icmp ult i64 %i.ej, 65536
  br label %switch.edge

bb.bo:                                            ; preds = %bb.a
  %i.el = add i64 %2, 524288
  %i.em = icmp ult i64 %i.el, 1048576
  br label %switch.edge

bb.bp:                                            ; preds = %bb.a
  %i.en = add i64 %2, 1048576
  %i.eo = icmp ult i64 %i.en, 2097152
  %i.ep = and i64 %2, 1
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = and i1 %i.eo, %i.eq
  br label %switch.edge

bb.bq:                                            ; preds = %bb.a
  %i.es = add i64 %2, 33554432
  %i.et = icmp ult i64 %i.es, 67108864
  br label %switch.edge

bb.br:                                            ; preds = %bb.a
  %i.eu = add i64 %2, 33554432
  %i.ev = icmp ult i64 %i.eu, 67108864
  br i1 %i.ev, label %bb.bs, label %switch.edge

bb.bs:                                            ; preds = %bb.br
  %i.ew = add nsw i64 %2, -2048
  %i.ex = icmp ult i64 %i.ew, -4096
  br label %switch.edge

bb.bt:                                            ; preds = %bb.a
  %i.ey = add i64 %2, 2147483648
  %i.ez = icmp ult i64 %i.ey, 4294967296
  br i1 %i.ez, label %bb.bu, label %switch.edge

bb.bu:                                            ; preds = %bb.bt
  %i.fa = add nsw i64 %2, -33554432
  %i.fb = icmp ult i64 %i.fa, -67108864
  br label %switch.edge

bb.bv:                                            ; preds = %bb.a
  %i.fc = add i64 %2, 16
  %i.fd = icmp ult i64 %i.fc, 32
  br label %switch.edge

bb.bw:                                            ; preds = %bb.a
  %i.fe = icmp ult i64 %2, 4
  br label %switch.edge

bb.bx:                                            ; preds = %bb.a
  %i.ff = icmp ult i64 %2, 32
  br label %switch.edge

bb.by:                                            ; preds = %bb.a
  %i.fg = add i64 %2, -4
  %spec.select204 = icmp ult i64 %i.fg, 28
  br label %switch.edge

bb.bz:                                            ; preds = %bb.a
  %i.fh = add i64 %2, -1
  %spec.select205 = icmp ult i64 %i.fh, 31
  br label %switch.edge

bb.ca:                                            ; preds = %bb.a
  %i.fi = and i64 %2, -125
  %i.fj = icmp eq i64 %i.fi, 0
  br label %switch.edge

3:                                                ; preds = %bb.a
  %4 = icmp ult i64 %2, 4294967296
  br i1 %4, label %bb.cb, label %switch.edge

bb.cb:                                            ; preds = %3
  %5 = shl nuw i64 %2, 32
  %6 = ashr exact i64 %5, 32
  %7 = add nsw i64 %6, 2048
  %i.fk = icmp ult i64 %7, 4096
  br label %switch.edge

bb.cc:                                            ; preds = %bb.a
  %i.fl = icmp ult i64 %2, 2
  br label %switch.edge

bb.cd:                                            ; preds = %bb.a
  %i.fm = icmp ult i64 %2, 4
  br label %switch.edge

bb.ce:                                            ; preds = %bb.a
  %i.fn = and i64 %2, -25
  %i.fo = icmp eq i64 %i.fn, 0
  br label %switch.edge

bb.cf:                                            ; preds = %bb.a
  %i.fp = and i64 %2, -49
  %i.fq = icmp eq i64 %i.fp, 0
  br label %switch.edge

bb.cg:                                            ; preds = %bb.a
  %i.fr = and i64 %2, -3
  %i.fs = icmp eq i64 %i.fr, 0
  br label %switch.edge

bb.ch:                                            ; preds = %bb.a
  %i.ft = icmp ult i64 %2, 8
  br label %switch.edge

bb.ci:                                            ; preds = %bb.a
  %i.fu = icmp ult i64 %2, 16
  br label %switch.edge

bb.cj:                                            ; preds = %bb.a
  %i.fv = add i64 %2, -1
  %spec.select212 = icmp ult i64 %i.fv, 16
  br label %switch.edge

bb.ck:                                            ; preds = %bb.a
  %i.fw = icmp ult i64 %2, 32
  br label %switch.edge

bb.cl:                                            ; preds = %bb.a
  %i.fx = and i64 %2, -31
  %i.fy = icmp eq i64 %i.fx, 0
  br label %switch.edge

bb.cm:                                            ; preds = %bb.a
  %i.fz = add i64 %2, -1
  %spec.select213 = icmp ult i64 %i.fz, 32
  br label %switch.edge

bb.cn:                                            ; preds = %bb.a
  %i.ga = add i64 %2, -6
  %i.gb = icmp ult i64 %i.ga, 27
  br label %switch.edge

bb.co:                                            ; preds = %bb.a
  %i.gc = add i64 %2, -4
  %spec.select206 = icmp ult i64 %i.gc, 28
  br label %switch.edge

bb.cp:                                            ; preds = %bb.a
  %i.gd = add i64 %2, -1
  %spec.select207 = icmp ult i64 %i.gd, 31
  br label %switch.edge

bb.cq:                                            ; preds = %bb.a
  %i.ge = icmp ult i64 %2, 32
  br i1 %i.ge, label %switch.lookup, label %switch.edge

bb.cr:                                            ; preds = %bb.a
  %i.gf = icmp ult i64 %2, 64
  br label %switch.edge

bb.cs:                                            ; preds = %bb.a
  %i.gg = and i64 %2, -63
  %i.gh = icmp eq i64 %i.gg, 0
  br label %switch.edge

bb.ct:                                            ; preds = %bb.a
  %i.gi = add i64 %2, -1
  %spec.select214 = icmp ult i64 %i.gi, 64
  br label %switch.edge

bb.cu:                                            ; preds = %bb.a
  %i.gj = add i64 %2, -33
  %i.gk = icmp ult i64 %i.gj, 31
  br label %switch.edge

bb.cv:                                            ; preds = %bb.a
  %i.gl = icmp ult i64 %2, 128
  br label %switch.edge

bb.cw:                                            ; preds = %bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !72
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 656
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !224, !range !218, !noundef !70
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = select i1 %i.gq, i64 64, i64 32
  %i.gs = icmp eq i64 %2, %i.gr
  br label %switch.edge

bb.cx:                                            ; preds = %bb.a
  %i.gt = and i64 %2, -125
  %i.gu = icmp eq i64 %i.gt, 0
  br label %switch.edge

bb.cy:                                            ; preds = %bb.a
  %i.gv = and i64 %2, -121
  %i.gw = icmp eq i64 %i.gv, 0
  br label %switch.edge

bb.cz:                                            ; preds = %bb.a
  %i.gx = and i64 %2, -253
  %i.gy = icmp eq i64 %i.gx, 0
  br label %switch.edge

bb.da:                                            ; preds = %bb.a
  %i.gz = and i64 %2, -249
  %i.ha = icmp eq i64 %i.gz, 0
  br label %switch.edge

bb.db:                                            ; preds = %bb.a
  %i.hb = and i64 %2, -505
  %i.hc = icmp eq i64 %i.hb, 0
  br label %switch.edge

bb.dc:                                            ; preds = %bb.a
  %i.hd = icmp ult i64 %2, 1024
  br label %switch.edge

bb.dd:                                            ; preds = %bb.a
  %i.he = and i64 %2, -1021
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = icmp ne i64 %2, 0
  %i.hh = and i1 %i.hg, %i.hf
  br label %switch.edge

bb.de:                                            ; preds = %bb.a
  %i.hi = icmp ult i64 %2, 2048
  br label %switch.edge

bb.df:                                            ; preds = %bb.a
  %i.hj = and i64 %2, -16381
  %i.hk = icmp eq i64 %i.hj, 0
  br label %switch.edge

bb.dg:                                            ; preds = %bb.a
  %i.hl = add i64 %2, -1
  %spec.select208 = icmp ult i64 %i.hl, 65535
  br label %switch.edge

bb.dh:                                            ; preds = %bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !72
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 656
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !224, !range !218, !noundef !70
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.hr = icmp ult i64 %2, 64
  br label %switch.edge

bb.dj:                                            ; preds = %bb.dh
  %i.hs = icmp ult i64 %2, 32
  br label %switch.edge

bb.dk:                                            ; preds = %bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !72
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 656
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !224, !range !218, !noundef !70
  %i.hx = trunc nuw i8 %i.hw to i1
  %i.hy = add i64 %2, -1                          ; 2 uses
  br i1 %i.hx, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.hz = icmp ult i64 %i.hy, 63
  br label %switch.edge

bb.dm:                                            ; preds = %bb.dk
  %i.ia = icmp ult i64 %i.hy, 31
  br label %switch.edge

bb.dn:                                            ; preds = %bb.a
  %i.ib = add i64 %2, -1
  %or.cond.i = icmp ult i64 %i.ib, 255
  br i1 %or.cond.i, label %switch.edge, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ic = add i64 %2, -256
  %or.cond3.i = icmp ult i64 %i.ic, 249
  %i.id = and i64 %2, 7
  %i.ie = icmp eq i64 %i.id, 0
  %or.cond14.i = and i1 %or.cond3.i, %i.ie
  br i1 %or.cond14.i, label %switch.edge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.if = add i64 %2, -512
  %or.cond5.i = icmp ult i64 %i.if, 3585
  br i1 %or.cond5.i, label %bb.dq, label %switch.edge

bb.dq:                                            ; preds = %bb.dp
  %i.ig = and i64 %2, 15
  %i.ih = icmp eq i64 %i.ig, 0
  br label %switch.edge

bb.dr:                                            ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.cq
  %switch.cast = trunc nuw i64 %2 to i32
  %switch.downshift = lshr i32 -2147385065, %switch.cast
  %switch.masked = trunc i32 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.cq, %switch.lookup, %bb.ct, %bb.cm, %bb.cj, %bb.aj, %bb.dg, %bb.cp, %bb.co, %bb.bz, %bb.by, %bb.s, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.ao, %bb.an, %bb.r, %bb.q, %bb.h, %bb.g, %bb.e, %bb.t, %_ZN4llvm16isShiftedMask_64Em.exit, %3, %bb.cb, %bb.bt, %bb.bu, %bb.br, %bb.bs, %bb.bm, %bb.bn, %bb.bj, %bb.bk, %bb.az, %bb.ba, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.ac, %bb.ae, %bb.ad, %bb.p, %bb.o, %_ZN4llvm13isPowerOf2_64Em.exit191, %bb.l, %bb.k, %bb.i, %bb.j, %bb.f, %bb.d, %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %bb.cr, %bb.cn, %bb.cl, %bb.ck, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.ca, %bb.bx, %bb.bw, %bb.bv, %bb.bq, %bb.bp, %bb.bo, %bb.bl, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.m, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.ci, %bb.ao ], [ %switch.masked, %switch.lookup ], [ %i.m, %bb.e ], [ %i.u, %bb.j ], [ %i.ah, %bb.m ], [ false, %bb.g ], [ false, %bb.l ], [ %i.aq, %_ZN4llvm13isPowerOf2_64Em.exit191 ], [ %i.p, %bb.h ], [ %i.az, %bb.u ], [ %i.ba, %bb.v ], [ %i.bb, %bb.w ], [ %i.bc, %bb.x ], [ %i.bh, %bb.y ], [ %i.bm, %bb.z ], [ %i.br, %bb.aa ], [ %i.bs, %bb.ab ], [ false, %bb.s ], [ %i.bw, %bb.af ], [ %i.bx, %bb.ag ], [ %i.by, %bb.ah ], [ %i.bz, %bb.ai ], [ %i.bv, %bb.ae ], [ %i.cc, %bb.ak ], [ %i.cd, %bb.al ], [ %i.ce, %bb.am ], [ false, %bb.dp ], [ %i.cj, %bb.ap ], [ %i.cl, %bb.aq ], [ %i.cn, %bb.ar ], [ %i.cr, %bb.as ], [ %spec.select208, %bb.dg ], [ %i.cv, %bb.av ], [ %i.ct, %bb.au ], [ %i.cz, %bb.ay ], [ %i.cx, %bb.ax ], [ %i.dg, %bb.bb ], [ %i.di, %bb.bc ], [ %i.dl, %bb.bd ], [ %i.dp, %bb.be ], [ %i.dr, %bb.bf ], [ %i.dt, %bb.bg ], [ %i.dv, %bb.bh ], [ %i.ea, %bb.bi ], [ %i.de, %bb.ba ], [ %i.ei, %bb.bl ], [ %i.eg, %bb.bk ], [ %i.em, %bb.bo ], [ %i.er, %bb.bp ], [ %i.et, %bb.bq ], [ %i.ek, %bb.bn ], [ %i.ex, %bb.bs ], [ %i.fd, %bb.bv ], [ %i.fe, %bb.bw ], [ %i.ff, %bb.bx ], [ %i.fb, %bb.bu ], [ false, %bb.an ], [ %i.fj, %bb.ca ], [ %spec.select212, %bb.cj ], [ %i.fl, %bb.cc ], [ %i.fm, %bb.cd ], [ %i.fo, %bb.ce ], [ %i.fq, %bb.cf ], [ %i.fs, %bb.cg ], [ %i.ft, %bb.ch ], [ %i.fu, %bb.ci ], [ %i.fk, %bb.cb ], [ %i.fw, %bb.ck ], [ %i.fy, %bb.cl ], [ %spec.select207, %bb.cp ], [ %i.gb, %bb.cn ], [ %spec.select206, %bb.co ], [ %i.at, %bb.r ], [ false, %bb.q ], [ %i.gf, %bb.cr ], [ %i.gh, %bb.cs ], [ %spec.select214, %bb.ct ], [ %i.gk, %bb.cu ], [ %i.gl, %bb.cv ], [ %i.gs, %bb.cw ], [ %i.gu, %bb.cx ], [ %i.gw, %bb.cy ], [ %i.gy, %bb.cz ], [ %i.ha, %bb.da ], [ %i.hc, %bb.db ], [ %i.hd, %bb.dc ], [ %i.hh, %bb.dd ], [ %i.hi, %bb.de ], [ %i.hk, %bb.df ], [ %spec.select213, %bb.cm ], [ %i.hr, %bb.di ], [ %i.hs, %bb.dj ], [ %i.hz, %bb.dl ], [ %i.ia, %bb.dm ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.i ], [ %spec.select, %_ZN4llvm16isShiftedMask_64Em.exit ], [ %i.ih, %bb.dq ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.p ], [ %spec.select186, %bb.t ], [ true, %bb.dn ], [ false, %bb.ac ], [ true, %bb.ad ], [ %spec.select209, %bb.aj ], [ false, %bb.at ], [ false, %bb.aw ], [ false, %bb.az ], [ true, %bb.do ], [ false, %bb.bj ], [ false, %bb.bm ], [ false, %bb.br ], [ false, %bb.bt ], [ %spec.select204, %bb.by ], [ %spec.select205, %bb.bz ], [ false, %3 ], [ false, %bb.cq ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_124RISCVInstructionSelector22testImmPredicate_APIntEjRKN4llvm5APIntE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !349  ; 6 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 3 uses
  switch i32 %1, label %bb.k [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8
  %spec.select.i = select i1 %i.c, ptr %2, ptr %i.d
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !344 ; 2 uses
  %.not.i.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i.i, label %_ZN4llvm13isPowerOf2_64Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.f = icmp samesign ult i64 %i.e, 2
  br label %_ZN4llvm13isPowerOf2_64Em.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %2, align 8                ; 4 uses
  %.not.i.i13 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i13, label %_ZN4llvm13isPowerOf2_64Em.exit, label %_ZNK4llvm5APInt13isShiftedMaskEv.exit

.split:                                           ; preds = %bb.d
  %i.h = tail call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25
  %i.i = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25 ; 2 uses
  %i.j = add i32 %i.i, %i.h
  %i.k = tail call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25 ; 3 uses
  %i.l = add i32 %i.j, %i.k
  %i.m = icmp eq i32 %i.l, %i.b
  %i.n = add i32 %i.k, -1
  %or.cond21 = icmp ult i32 %i.n, 31
  %or.cond28 = and i1 %i.m, %or.cond21
  %i.o = sub i32 %i.b, %i.i
  %i.p = icmp ult i32 %i.o, 65
  %or.cond30 = and i1 %or.cond28, %i.p
  br i1 %or.cond30, label %.thread23._crit_edge, label %_ZN4llvm13isPowerOf2_64Em.exit

_ZNK4llvm5APInt13isShiftedMaskEv.exit:            ; preds = %bb.e
  %i.q = add i64 %i.g, -1
  %i.r = or i64 %i.q, %i.g                        ; 2 uses
  %i.s = add i64 %i.r, 1
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNK4llvm5APInt11countr_zeroEv.exit, label %_ZN4llvm13isPowerOf2_64Em.exit

_ZNK4llvm5APInt11countr_zeroEv.exit:              ; preds = %_ZNK4llvm5APInt13isShiftedMaskEv.exit
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %..i = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.w) ; 2 uses
  %i.x = add nsw i32 %..i, -1
  %or.cond = icmp ult i32 %i.x, 31
  br i1 %or.cond, label %bb.f, label %_ZN4llvm13isPowerOf2_64Em.exit

.thread23._crit_edge:                             ; preds = %.split
  %.pre = load ptr, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm5APInt11countr_zeroEv.exit, %.thread23._crit_edge
  %spec.select.i.i = phi ptr [ %.pre, %.thread23._crit_edge ], [ %2, %_ZNK4llvm5APInt11countr_zeroEv.exit ]
  %.pn.in = phi i32 [ %i.k, %.thread23._crit_edge ], [ %..i, %_ZNK4llvm5APInt11countr_zeroEv.exit ]
  %.pn = zext nneg i32 %.pn.in to i64
  %i.y = shl nuw nsw i64 4294967295, %.pn
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !344
  %i.z = icmp eq i64 %.0.i.i, %i.y
  br label %_ZN4llvm13isPowerOf2_64Em.exit

bb.g:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %2, align 8
  %i.ab = icmp eq i32 %i.b, 0
  %i.ac = sub nuw nsw i32 64, %i.b
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = shl i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, %i.ad
  %.0.i.i16 = select i1 %i.ab, i64 0, i64 %i.af
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %2, align 8, !tbaa !344   ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !342
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.h, %bb.i
  %spec.select.i17 = phi ptr [ %2, %bb.h ], [ %i.ag, %bb.i ]
  %.0.i15 = phi i64 [ %.0.i.i16, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = add i64 %.0.i15, 2048
  %i.aj = icmp ult i64 %i.ai, 4096
  br i1 %i.aj, label %_ZN4llvm13isPowerOf2_64Em.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit
  %.0.i18 = load i64, ptr %spec.select.i17, align 8, !tbaa !344 ; 3 uses
  %.not.i = icmp ne i64 %.0.i18, 0
  %i.ak = add i64 %.0.i18, 1
  %i.al = and i64 %i.ak, %.0.i18
  %i.am = icmp eq i64 %i.al, 0
  %i.an = and i1 %.not.i, %i.am
  br label %_ZN4llvm13isPowerOf2_64Em.exit

bb.k:                                             ; preds = %bb.a
  unreachable

_ZN4llvm13isPowerOf2_64Em.exit:                   ; preds = %bb.e, %bb.f, %.split, %bb.c, %bb.b, %_ZNK4llvm5APInt12getSExtValueEv.exit, %bb.j, %_ZNK4llvm5APInt11countr_zeroEv.exit, %_ZNK4llvm5APInt13isShiftedMaskEv.exit
  %.0 = phi i1 [ %i.an, %bb.j ], [ false, %_ZNK4llvm5APInt13isShiftedMaskEv.exit ], [ false, %_ZNK4llvm5APInt11countr_zeroEv.exit ], [ false, %bb.e ], [ false, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ false, %bb.b ], [ %i.f, %bb.c ], [ %i.z, %bb.f ], [ false, %.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_124RISCVInstructionSelector24testImmPredicate_APFloatEjRKN4llvm7APFloatE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !344
  %.not.i.i.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.c, ptr %2
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, 15
  %i.g = icmp eq i8 %i.f, 3
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_124RISCVInstructionSelector18testMIPredicate_MIEjRKN4llvm12MachineInstrERKNS1_20GIMatchTableExecutor12MatcherStateE(ptr noundef nonnull align 8 dereferenceable(1400) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.499", align 8 ; 8 uses
  %5 = alloca %"class.std::optional.499", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !364
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !407
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !347  ; 6 uses
  switch i32 %1, label %bb.ac [
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
    i32 14, label %bb.t
    i32 15, label %bb.u
    i32 16, label %bb.v
    i32 17, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 255
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !344  ; 2 uses
  %.not46 = icmp eq i32 %i.m, 0
  br i1 %.not46, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4llvm34getIConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.499") align 8 %4, i32 %i.m, ptr noundef nonnull align 8 dereferenceable(520) %i.f, i1 noundef zeroext true) #23
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !410, !range !218, !noundef !70
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !349  ; 3 uses
  %i.s = icmp ult i32 %i.r, 65
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %4, align 8
  %i.u = icmp ne i32 %i.r, 0
  %i.v = sub nuw nsw i32 64, %i.r
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
end_hunk_1
