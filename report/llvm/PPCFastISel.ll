Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCFastISel?download=true
inline.NumInlined: 4586
inline.NumDeleted: 1387
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm7CCStateD2Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !296  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !296  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.j) #18
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !296  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.n) #18
  br label %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit

_ZN4llvm11SmallVectorIjLj16EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !367
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !296
  %i.g = load i32, ptr %i.a, align 8, !tbaa !367
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !367
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !367
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

declare noundef zeroext i1 @_ZNK4llvm12PPCSubtarget22isUsingPCRelativeCallsEv(ptr noundef nonnull align 8 dereferenceable(520296)) local_unnamed_addr #3

declare void @_ZN4llvm7CCState17AnalyzeCallResultENS_3MVTEPNS_4TypeEPFbjS1_S1_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyES3_RS0_E(ptr noundef nonnull align 8 dereferenceable(420), i16, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCFastISel15processCallArgsERN4llvm15SmallVectorImplIPNS1_5ValueEEERNS2_INS1_8RegisterEEERNS2_INS1_3MVTEEERNS2_INS1_3ISD10ArgFlagsTyEEERNS2_IjEEjRjb(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::SmallVector.494", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCState", align 8    ; 16 uses
  %14 = alloca %"class.llvm::SmallVector.551", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.a, ptr %12, align 8, !tbaa !296
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !292, !nonnull !100, !align !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %13, i32 noundef %6, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(1065) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false) #18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !267  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !249
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(520296) %i.k) #18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1084 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1101, !range !247, !noundef !100
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1102 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = zext i32 %i.q to i64
  %i.x = add nuw nsw i64 %i.w, 7
  %i.y = add i64 %i.x, %i.v
  %i.z = and i64 %i.y, -8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = add i64 %i.v, 7
  %i.ab = and i64 %i.aa, -8
  %i.ac = zext i32 %i.q to i64
  %i.ad = add nsw i64 %i.ab, %i.ac
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %i.ad, %bb.c ], [ %i.z, %bb.b ]
  store i64 %storemerge, ptr %i.u, align 8, !tbaa !1102
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ae, align 8, !tbaa !282
  %.sroa.speculated.i = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.ae, align 8, !tbaa !282
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %13, i8 3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.af, ptr %14, align 8, !tbaa !296
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !367
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 16, ptr %i.ah, align 4, !tbaa !368
  %i.ai = load ptr, ptr %1, align 8, !tbaa !296   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !367 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  %.not130 = icmp eq i32 %i.ak, 0
  br i1 %.not130, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm7CCState19AnalyzeCallOperandsERNS_15SmallVectorImplINS_3MVTEEERNS1_INS_3ISD10ArgFlagsTyEEERNS1_IPNS_4TypeEEEPFbjS2_S2_NS_11CCValAssign7LocInfoES6_SA_RS0_E(ptr noundef nonnull align 8 dereferenceable(420) %13, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @_ZN4llvm16CC_PPC64_ELF_FISEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE) #18
  %i.an = load ptr, ptr %12, align 8, !tbaa !296  ; 2 uses
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx142 = shl nuw nsw i64 %i.ap, 5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx142
  %.not85132 = icmp eq i32 %i.ao, 0
  br i1 %.not85132, label %.critedge91, label %.lr.ph136

.lr.ph136:                                        ; preds = %._crit_edge
  %i.ar = load ptr, ptr %3, align 8, !tbaa !420
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit
  %.076131 = phi ptr [ %i.bc, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit ], [ %i.ai, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit ] ; 2 uses
  %i.as = load ptr, ptr %.076131, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !272 ; 2 uses
  %i.av = load i32, ptr %i.ag, align 8, !tbaa !367 ; 2 uses
  %i.aw = load i32, ptr %i.ah, align 4, !tbaa !368
  %.not.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !376

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %i.au)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %14, align 8, !tbaa !296
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.au, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.ag, align 8, !tbaa !367
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ag, align 8, !tbaa !367
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit: ; preds = %bb.d, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.076131, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.am
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.077133, i64 32 ; 2 uses
  %.not85 = icmp eq ptr %i.bd, %i.aq
  br i1 %.not85, label %.critedge91, label %bb.g

bb.g:                                             ; preds = %.lr.ph136, %bb.f
  %.077133 = phi ptr [ %i.an, %.lr.ph136 ], [ %i.bd, %bb.f ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.077133, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !387
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !388 ; 3 uses
  %i.bj = add i16 %i.bi, -19
  %spec.select.i = icmp ult i16 %i.bj, 197
  br i1 %spec.select.i, label %.critedge89, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = zext i16 %i.bi to i64
  %i.bl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bk ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.bl, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bm = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.bm, label %bb.i, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %i.bl, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.bn, align 16
  %i.bo = icmp ugt i64 %.sroa.0.0.copyload.i, 64
  %15 = icmp eq i16 %i.bi, 2
  %or.cond = or i1 %15, %i.bo
  br i1 %or.cond, label %.critedge89, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.077133, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !375
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.k, label %.critedge89

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.077133, i64 20
  %i.bt = load i8, ptr %i.bs, align 4             ; 2 uses
  %i.bu = trunc i8 %i.bt to i1
  %i.bv = and i8 %i.bt, 126
  %.not124 = icmp eq i8 %i.bv, 14
  %or.cond125 = or i1 %.not124, %i.bu
  br i1 %or.cond125, label %.critedge89, label %bb.f

.critedge91:                                      ; preds = %bb.f, %._crit_edge
  %i.bw = load i64, ptr %i.u, align 8, !tbaa !1102
  %i.bx = trunc i64 %i.bw to i32
  %i.by = add i32 %i.q, 64
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.by, i32 %i.bx)
  store i32 %.sroa.speculated, ptr %7, align 4, !tbaa !294
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !292, !nonnull !100, !align !101 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 680
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !298 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 688
  %.sroa.035.0.copyload = load ptr, ptr %i.cc, align 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !322, !nonnull !100, !align !101 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !1103
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !323
  %i.ck = zext i32 %i.ci to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [32 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !361 ; 6 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.cd, align 8, !tbaa !362
  %i.cp = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr %.sroa.02.0.copyload.i, i1 noundef zeroext false) #18 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef %i.cp) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.035.0.copyload, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.035.0.copyload, ptr %i.ct, align 8, !tbaa !288
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.cp, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.cv = or disjoint i64 %i.cu, %i.cr
  store i64 %i.cv, ptr %i.cp, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cp, ptr %i.cw, align 8, !tbaa !288
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.035.0.copyload, align 8
  %i.cx = ptrtoint ptr %i.cp to i64
  %i.cy = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.cz = or disjoint i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %.sroa.035.0.copyload, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !363 ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge91
  call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull %i.db) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge91
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !364 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.dd, null
  br i1 %.not7.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull %i.dd) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !365 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.df, null
  br i1 %.not8.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull %i.df) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.o, %bb.p
  %i.dg = load i32, ptr %7, align 4, !tbaa !294
  %i.dh = zext i32 %i.dg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i32 1, ptr %11, align 8, !alias.scope !1104
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !325, !alias.scope !1104
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !282, !alias.scope !1104
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i32 1, ptr %10, align 8, !alias.scope !1105
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.dl = load ptr, ptr %12, align 8, !tbaa !296  ; 2 uses
  %i.dm = load i32, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %.idx143 = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx143
  %.not86137 = icmp eq i32 %i.dm, 0
  br i1 %.not86137, label %.critedge89, label %.lr.ph141

.lr.ph141:                                        ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not87 = icmp ne i32 %6, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph141, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %.080140 = phi i32 [ 534, %.lr.ph141 ], [ %.181, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ] ; 2 uses
  %.082139 = phi i32 [ 138, %.lr.ph141 ], [ %.183, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ] ; 2 uses
  %.084138 = phi ptr [ %i.dl, %.lr.ph141 ], [ %i.fz, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.084138, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !387
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load ptr, ptr %2, align 8, !tbaa !296
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dz
  %.sroa.018.0.copyload = load i32, ptr %i.eb, align 4, !tbaa !294 ; 3 uses
  %i.ec = load ptr, ptr %3, align 8, !tbaa !420
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.dz
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !388 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.084138, i64 20
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = lshr i8 %i.eg, 1
  %i.ei = and i8 %i.eh, 63
  switch i8 %i.ei, label %bb.r [
    i8 0, label %bb.u
    i8 1, label %.critedge.i
    i8 3, label %bb.t
    i8 2, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

.critedge.i:                                      ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %.084138, i64 24
  %.sroa.0.0.copyload.i94 = load i16, ptr %i.ej, align 8, !tbaa !388 ; 5 uses
  %i.ek = icmp eq i16 %.sroa.0.0.copyload.i94, 8
  %i.el = select i1 %i.ek, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 896), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 64)
  %i.em = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.el) #18 ; 2 uses
  %.off.i = add i16 %.sroa.0.0.copyload.i94, -7
  %switch.i = icmp ult i16 %.off.i, 2
  call void @llvm.assume(i1 %switch.i)
  switch i16 %i.ee, label %unreachable [
    i16 5, label %.critedge2.thread.i
    i16 6, label %bb.s
    i16 7, label %_ZN12_GLOBAL__N_111PPCFastISel13PPCEmitIntExtEN4llvm3MVTENS1_8RegisterES2_S3_b.exit
  ]

.critedge2.thread.i:                              ; preds = %.critedge.i
  %i.en = icmp eq i16 %.sroa.0.0.copyload.i94, 7
  %.neg.i = select i1 %i.en, i64 -1173, i64 -1175
  br label %_ZN12_GLOBAL__N_111PPCFastISel13PPCEmitIntExtEN4llvm3MVTENS1_8RegisterES2_S3_b.exit

bb.s:                                             ; preds = %.critedge.i
  %i.eo = icmp eq i16 %.sroa.0.0.copyload.i94, 7
  %.neg65.i = select i1 %i.eo, i64 -1178, i64 -1180
  br label %_ZN12_GLOBAL__N_111PPCFastISel13PPCEmitIntExtEN4llvm3MVTENS1_8RegisterES2_S3_b.exit

_ZN12_GLOBAL__N_111PPCFastISel13PPCEmitIntExtEN4llvm3MVTENS1_8RegisterES2_S3_b.exit: ; preds = %.critedge.i, %bb.s, %.critedge2.thread.i
  %.021.neg.i = phi i64 [ %.neg.i, %.critedge2.thread.i ], [ %.neg65.i, %bb.s ], [ -1189, %.critedge.i ]
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !292, !nonnull !100, !align !101 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 680
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !298
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 688
  %.sroa.011.0.copyload.i = load ptr, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.ce, align 8, !tbaa !322, !nonnull !100, !align !101
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !323
  %i.ew = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %.021.neg.i
  %i.ex = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.er, ptr %.sroa.011.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, i32 %i.em) ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %i.ex, 0
  %i.ez = extractvalue { ptr, ptr } %i.ex, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr null, ptr %i.dp, align 8, !tbaa !325, !alias.scope !1106
  store i32 %.sroa.018.0.copyload, ptr %i.dq, align 4, !tbaa !282, !alias.scope !1106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false), !alias.scope !1106
  store i32 0, ptr %9, align 8, !alias.scope !1106
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, ptr noundef nonnull align 8 dereferenceable(1065) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.u

end_hunk_0
