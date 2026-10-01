Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstructionCombining?download=true
inline.NumInlined: 12731
inline.NumDeleted: 6421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4llvm16InstCombinerImpl20foldBinOpSelectBinOpERNS_14BinaryOperatorE:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds i8, ptr %i.c, i64 -96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.by, align 8
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29ProfcheckDisableMetadataFixesE, i64 120), align 8, !tbaa !245, !range !46, !noundef !47
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = select i1 %i.ca, ptr null, ptr %i.c
  %i.cc = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.bv, ptr noundef %i.bx, ptr noundef nonnull %.036, ptr noundef nonnull %.035, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef %i.cb) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cd = load i8, ptr %1, align 8, !tbaa !110
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.cg, align 8, !tbaa !196
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ch, align 1, !tbaa !197
  %i.ci = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef %i.cf, ptr noundef %i.cc, ptr noundef %.037, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr null, i64 0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.l, %.critedge4, %bb.o
  %.0 = phi ptr [ %i.ci, %bb.o ], [ null, %bb.l ], [ null, %.critedge4 ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_19bind_immconstant_tyEEEbPT_RKT0_.exit, %bb.e, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.thread.i.i.i, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i, %bb.b, %bb.d, %_ZNK4llvm5Value9hasOneUseEv.exit, %bb.a, %_ZNK4llvm5Value9hasOneUseEv.exit41, %bb.p
  %.1 = phi ptr [ %.0, %bb.p ], [ null, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_19bind_immconstant_tyEEEbPT_RKT0_.exit ], [ null, %_ZNK4llvm5Value9hasOneUseEv.exit41 ], [ null, %bb.e ], [ null, %_ZNK4llvm5Value9hasOneUseEv.exit ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.b ], [ null, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i ], [ null, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.thread.i.i.i ], [ null, %bb.g ]
  ret ptr %.1
}

declare noundef ptr @_ZN4llvm29ConstantFoldBinaryInstructionEjPNS_8ConstantES1_(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEb(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.llvm::PatternMatch::SpecificCmpClass_match.993", align 8 ; 6 uses
  %5 = alloca %class.anon.991, align 8            ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.217", align 8 ; 13 uses
  %7 = alloca %"struct.llvm::SimplifyQuery", align 8 ; 5 uses
  %8 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or.976", align 1 ; 4 uses
  %9 = alloca %"struct.llvm::SimplifyQuery", align 8 ; 4 uses
  %10 = alloca %"class.llvm::SmallVector.217", align 8 ; 15 uses
  %11 = alloca %"class.llvm::SmallVector.148", align 8 ; 12 uses
  %12 = alloca %"class.llvm::SmallDenseMap.232", align 8 ; 12 uses
  %13 = alloca %"struct.std::pair.237", align 8   ; 5 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::SmallSetVector.239", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 268435455                  ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.critedge160, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.l = icmp eq ptr %i.k, null                   ; 3 uses
  %or.cond = or i1 %3, %i.l
  br i1 %or.cond, label %.critedge160, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit, %.critedge
  %.sroa.0246.0292 = phi ptr [ %i.q, %.critedge ], [ %i.i, %_ZNK4llvm5Value9hasOneUseEv.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0246.0292, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140  ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.n) #26
  br i1 %i.o, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.c, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0246.0292, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !161  ; 2 uses
  %.not282 = icmp eq ptr %i.q, null
  br i1 %.not282, label %.critedge160, label %.lr.ph

.critedge160:                                     ; preds = %.critedge, %bb.b, %_ZNK4llvm5Value9hasOneUseEv.exit
  %or.cond381 = phi i1 [ %3, %bb.b ], [ true, %_ZNK4llvm5Value9hasOneUseEv.exit ], [ false, %.critedge ]
  %i.r = phi i1 [ false, %bb.b ], [ %i.l, %_ZNK4llvm5Value9hasOneUseEv.exit ], [ %i.l, %.critedge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge160
  %i.v = getelementptr inbounds i8, ptr %1, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147
  %.pre.i.i = and i32 %i.t, 268435455
  %.pre1.i.i = zext nneg i32 %.pre.i.i to i64
  br label %_ZN4llvm4User8operandsEv.exit

bb.e:                                             ; preds = %.critedge160
  %i.x = and i32 %i.t, 268435455
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %1, i64 %i.z
  br label %_ZN4llvm4User8operandsEv.exit

_ZN4llvm4User8operandsEv.exit:                    ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.w, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not149293 = icmp eq i64 %.pre-phi2.i.i, 0
  br i1 %.not149293, label %.critedge164, label %.lr.ph295

.lr.ph295:                                        ; preds = %_ZN4llvm4User8operandsEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph295, %.critedge162
  %.0137294 = phi ptr [ %i.ab, %.lr.ph295 ], [ %i.ap, %.critedge162 ] ; 2 uses
  %i.af = load ptr, ptr %.0137294, align 8, !tbaa !115 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %2
  br i1 %i.ag, label %.critedge162, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !110 ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 30
  br i1 %i.ai, label %.critedge162, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i8 %i.ah, 87
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !51 ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = icmp eq ptr %i.al, %.pre
  br i1 %i.am, label %.critedge162, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !277, !nonnull !47, !align !55
  %i.ao = tail call noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_11InstructionEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(204) %i.an, ptr noundef nonnull %i.af, ptr noundef %.pre) #24
  br i1 %i.ao, label %.critedge162, label %.loopexit

.critedge162:                                     ; preds = %bb.g, %bb.i, %bb.f, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0137294, i64 32 ; 2 uses
  %.not149 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not149, label %.critedge164, label %bb.f

.critedge164:                                     ; preds = %.critedge162, %_ZN4llvm4User8operandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 4 uses
  store i32 6, ptr %i.as, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.at, ptr %11, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.au, align 8, !tbaa !141
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 12, ptr %i.av, align 4, !tbaa !145
  %i.aw = getelementptr inbounds i8, ptr %2, i64 -8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %1, i64 -8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bg = ptrtoint ptr %5 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %1, i64 -64
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = ptrtoint ptr %2 to i64
  %.not284 = xor i1 %i.r, true
  %or.cond10.not = and i1 %3, %.not284
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1216
  br label %bb.k

bb.k:                                             ; preds = %.critedge164, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179
  %indvars.iv = phi i64 [ 0, %.critedge164 ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179 ] ; 7 uses
  %.0140297 = phi i32 [ 0, %.critedge164 ], [ %16, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179 ]
  %.0141296 = phi i1 [ false, %.critedge164 ], [ %.2143, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179 ] ; 5 uses
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !147 ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !115 ; 8 uses
  %i.by = load i32, ptr %i.ax, align 4, !tbaa !213
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !286 ; 5 uses
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !129, !nonnull !47, !align !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.ba, ptr %6, align 8, !tbaa !37
  store i32 0, ptr %i.bb, align 8, !tbaa !141
  store i32 6, ptr %i.bc, align 4, !tbaa !145
  %i.ce = load i32, ptr %i.s, align 4             ; 3 uses
  %i.cf = and i32 %i.ce, 1073741824
  %.not.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.bd, align 8, !tbaa !147
  %.pre.i.i.i = and i32 %i.ce, 268435455
  %.pre1.i.i.i = zext nneg i32 %.pre.i.i.i to i64
  br label %_ZN4llvm4User8operandsEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ch = and i32 %i.ce, 268435455
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cj
  br label %_ZN4llvm4User8operandsEv.exit.i

_ZN4llvm4User8operandsEv.exit.i:                  ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.cg, %bb.l ], [ %i.ck, %bb.m ] ; 2 uses
  %.pre-phi2.i.i.i = phi i64 [ %.pre1.i.i.i, %bb.l ], [ %i.ci, %bb.m ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %.pre-phi2.i.i.i, 5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i
  %.not56.i = icmp eq i64 %.pre-phi2.i.i.i, 0
  br i1 %.not56.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !37
  %.pre58.i = load i32, ptr %i.bb, align 8, !tbaa !141
  %i.cn = zext i32 %.pre58.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvm4User8operandsEv.exit.i
  %i.co = phi i64 [ %i.cn, %._crit_edge.loopexit.i ], [ 0, %_ZN4llvm4User8operandsEv.exit.i ]
  %i.cp = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ba, %_ZN4llvm4User8operandsEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !287
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull readonly align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !192
  store ptr %i.cs, ptr %i.bf, align 8, !tbaa !193, !alias.scope !680
  %i.ct = call noundef ptr @_ZN4llvm31simplifyInstructionWithOperandsEPNS_11InstructionENS_8ArrayRefIPNS_5ValueEEERKNS_13SimplifyQueryE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %i.cp, i64 %i.co, ptr noundef nonnull align 8 dereferenceable(59) %7) #24 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not42.i = icmp eq ptr %i.ct, null
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.not43.i = icmp eq ptr %i.ct, %2
  %or.cond45.i = or i1 %.not42.i, %.not43.i
  br i1 %or.cond45.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i, label %bb.t

.lr.ph.i:                                         ; preds = %_ZN4llvm4User8operandsEv.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i
  %.03657.i = phi ptr [ %i.dm, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i ], [ %i.cl, %_ZN4llvm4User8operandsEv.exit.i ] ; 2 uses
  %i.cu = load ptr, ptr %.03657.i, align 8, !tbaa !115 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %2
  br i1 %i.cv, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph.i
  %i.cw = load i32, ptr %i.bb, align 8, !tbaa !141 ; 2 uses
  %i.cx = load i32, ptr %i.bc, align 4, !tbaa !145
  %.not.i.i = icmp ult i32 %i.cw, %i.cx
  br i1 %.not.i.i, label %bb.p, label %bb.o, !prof !146

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cy = zext i32 %i.cw to i64
  %i.cz = load ptr, ptr %6, align 8, !tbaa !37
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  store ptr %i.bx, ptr %i.da, align 1
  %i.db = load i32, ptr %i.bb, align 8, !tbaa !141
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.bb, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !51
  %i.de = call noundef ptr @_ZNK4llvm5Value16DoPHITranslationEPKNS_10BasicBlockES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef %i.dd, ptr noundef %i.cc) #24 ; 2 uses
  %i.df = load i32, ptr %i.bb, align 8, !tbaa !141 ; 2 uses
  %i.dg = load i32, ptr %i.bc, align 4, !tbaa !145
  %.not.i46.i = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i46.i, label %bb.s, label %bb.r, !prof !146

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %6, align 8, !tbaa !37
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  store ptr %i.de, ptr %i.dj, align 1
  %i.dk = load i32, ptr %i.bb, align 8, !tbaa !141
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.bb, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %.03657.i, i64 32 ; 2 uses
  %.not.i174 = icmp eq ptr %i.dm, %i.cm
  br i1 %.not.i174, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.dn = load i8, ptr %i.ct, align 8, !tbaa !110 ; 2 uses
  %i.do = icmp eq i8 %i.dn, 19
  br i1 %i.do, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = icmp ugt i8 %i.dn, 22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  br i1 %i.dp, label %_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.thread.i.i.i.i, label %_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.i.i.i.i

_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.thread.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i

_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.i.i.i.i: ; preds = %bb.u
  store ptr %8, ptr %5, align 8, !tbaa !682
  %i.dq = call noundef zeroext i1 @_ZNK4llvm8Constant29containsMatchingVectorElementENS_12function_refIFbPS0_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr nonnull @_ZN4llvm12function_refIFbPNS_8ConstantEEE11callback_fnIZNKS_12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_EUlS2_E_EEblS2_, i64 %i.bg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.dq, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i

_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i: ; preds = %_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.i.i.i.i, %_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.x

_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i: ; preds = %_ZNK4llvm12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchINS_5ValueEEEbPT_.exit.i.i.i.i, %bb.t, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.dr = load ptr, ptr %i.cq, align 8, !tbaa !287 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !110
  %.not54.i = icmp eq i8 %i.dt, 33
  br i1 %.not54.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i
  %i.du = load i8, ptr %1, align 8, !tbaa !110
  %i.dv = icmp eq i8 %i.du, 85
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 -88
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !115 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dr, i64 -56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !115
  %i.ea = icmp ne ptr %i.dx, %i.dz
  %or.cond.i = and i1 %i.dv, %i.ea
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eb = load ptr, ptr %i.be, align 8, !tbaa !51
  %i.ec = icmp eq ptr %i.dx, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.dr, i64 -120
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !115
  %i.ef = load i16, ptr %i.bh, align 2, !tbaa !215
  %i.eg = and i16 %i.ef, 63
  %i.eh = load i8, ptr %i.bi, align 1
  %i.ei = lshr i8 %i.eh, 1
  %.lobit.i.i = and i8 %i.ei, 1
  %.sroa.2.0.insert.ext.i.i = zext nneg i8 %.lobit.i.i to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i16 %i.eg to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ej = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !133
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !133
  %i.en = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueENS_12CmpPredicateES2_S2_RKNS_10DataLayoutEbj(ptr noundef %i.ee, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef %i.ek, ptr noundef %i.em, ptr noundef nonnull align 8 dereferenceable(912) %i.cd, i1 noundef zeroext %i.ec, i32 noundef 0) #24 ; 2 uses
  %i.eo = and i16 %i.en, 256
  %.not55.i = icmp eq i16 %i.eo, 0
  br i1 %.not55.i, label %bb.x, label %.thread.i

.thread.i:                                        ; preds = %bb.w
  %i.ep = load ptr, ptr %i.bj, align 8, !tbaa !148
  %i.eq = trunc i16 %i.en to i1
  %i.er = call noundef ptr @_ZN4llvm11ConstantInt7getBoolEPNS_4TypeEb(ptr noundef %i.ep, i1 noundef zeroext %i.eq) #24
  br label %bb.x

bb.x:                                             ; preds = %.thread.i, %bb.w, %bb.v, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i
  %.2.i = phi ptr [ %i.ct, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i ], [ %i.er, %.thread.i ], [ null, %bb.w ], [ null, %bb.v ], [ null, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i ] ; 3 uses
  %i.es = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ba
  br i1 %i.et, label %_ZL26simplifyInstructionWithPHIRN4llvm11InstructionEPNS_7PHINodeEPNS_5ValueEPNS_10BasicBlockERKNS_10DataLayoutENS_13SimplifyQueryE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.es) #24
  br label %_ZL26simplifyInstructionWithPHIRN4llvm11InstructionEPNS_7PHINodeEPNS_5ValueEPNS_10BasicBlockERKNS_10DataLayoutENS_13SimplifyQueryE.exit

_ZL26simplifyInstructionWithPHIRN4llvm11InstructionEPNS_7PHINodeEPNS_5ValueEPNS_10BasicBlockERKNS_10DataLayoutENS_13SimplifyQueryE.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.not152 = icmp eq ptr %.2.i, null
  br i1 %.not152, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %bb.z

bb.z:                                             ; preds = %_ZL26simplifyInstructionWithPHIRN4llvm11InstructionEPNS_7PHINodeEPNS_5ValueEPNS_10BasicBlockERKNS_10DataLayoutENS_13SimplifyQueryE.exit
  %i.eu = load i32, ptr %i.ar, align 8, !tbaa !141 ; 2 uses
  %i.ev = load i32, ptr %i.as, align 4, !tbaa !145
  %.not.i175 = icmp ult i32 %i.eu, %i.ev
  br i1 %.not.i175, label %bb.ab, label %bb.aa, !prof !146

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %.2.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179

bb.ab:                                            ; preds = %bb.z
  %i.ew = zext i32 %i.eu to i64
  %i.ex = load ptr, ptr %10, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  store ptr %.2.i, ptr %i.ey, align 1
  %i.ez = load i32, ptr %i.ar, align 8, !tbaa !141
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ar, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %_ZL26simplifyInstructionWithPHIRN4llvm11InstructionEPNS_7PHINodeEPNS_5ValueEPNS_10BasicBlockERKNS_10DataLayoutENS_13SimplifyQueryE.exit
  %i.fb = load i8, ptr %i.bx, align 8, !tbaa !110
  %i.fc = icmp ugt i8 %i.fb, 10
  br i1 %i.fc, label %bb.ac, label %"_ZZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEbENK3$_0clEv.exit"

bb.ac:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %i.fd = call noundef zeroext i1 @_ZNK4llvm5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #24
  br i1 %i.fd, label %bb.ad, label %"_ZZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEbENK3$_0clEv.exit"

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load i8, ptr %i.bx, align 8, !tbaa !110 ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 88
  br i1 %i.ff, label %bb.ae, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds i8, ptr %i.bx, i64 -32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !115 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !110
  %i.fj = icmp eq i8 %i.fi, 14
  br i1 %i.fj, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = and i32 %i.fl, 8192
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split, label %_ZN4llvm3isaIJNS_12CmpIntrinsicEEPNS_5ValueEEEbRKT0_.exit.i

_ZN4llvm3isaIJNS_12CmpIntrinsicEEPNS_5ValueEEEbRKT0_.exit.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !120
  switch i32 %i.fo, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split [
    i32 389, label %bb.ag
    i32 337, label %bb.ag
  ]

bb.ag:                                            ; preds = %_ZN4llvm3isaIJNS_12CmpIntrinsicEEPNS_5ValueEEEbRKT0_.exit.i, %_ZN4llvm3isaIJNS_12CmpIntrinsicEEPNS_5ValueEEEbRKT0_.exit.i
  %i.fp = load i8, ptr %1, align 8, !tbaa !110
  %.not.i.i.i = icmp eq i8 %i.fp, 85
  br i1 %.not.i.i.i, label %bb.ah, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load ptr, ptr %i.bk, align 8, !tbaa !115
  %i.fr = icmp eq ptr %i.fq, %2
  br i1 %i.fr, label %bb.ai, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split

bb.ai:                                            ; preds = %bb.ah
  %i.fs = load ptr, ptr %i.bl, align 8, !tbaa !115 ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !110 ; 2 uses
  %i.fu = icmp eq i8 %i.ft, 5
  br i1 %i.fu, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !148
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = and i32 %i.fy, 254
  %spec.select.i.i10.i.i.i = icmp ne i32 %i.fz, 18
  %i.ga = icmp ugt i8 %i.ft, 22
  %or.cond.i.i.i.i = or i1 %i.ga, %spec.select.i.i10.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i1 noundef zeroext false) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !110
  %i.gd = icmp eq i8 %i.gc, 5
  br i1 %i.gd, label %bb.ap, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split: ; preds = %bb.ae, %bb.af, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvm3isaIJNS_12CmpIntrinsicEEPNS_5ValueEEEbRKT0_.exit.i, %bb.ag, %bb.ah, %bb.aj, %bb.ak, %bb.al
  %.pr = load i8, ptr %i.bx, align 8, !tbaa !110
  br label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.i

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.i: ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split, %bb.ad
  %i.ge = phi i8 [ %.pr, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.ithread-pre-split ], [ %i.fe, %bb.ad ]
  %i.gf = icmp eq i8 %i.ge, 70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  br i1 %i.gf, label %bb.am, label %.critedge2.i

bb.am:                                            ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.i
  %i.gg = getelementptr inbounds i8, ptr %i.bx, i64 -32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !115
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !148 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 8            ; 2 uses
  %i.gm = and i32 %i.gl, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.gm, 18
  br i1 %spec.select.i.i.i.i, label %bb.an, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !171
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !172
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.pre.i.i176 = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i:      ; preds = %bb.an, %bb.am
  %i.gq = phi i32 [ %.pre.i.i176, %bb.an ], [ %i.gl, %bb.am ]
  %i.gr = icmp eq i32 %i.gq, 268
  br i1 %i.gr, label %bb.ao, label %.critedge2.i

bb.ao:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i
  store i64 32, ptr %4, align 8, !alias.scope !683
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !133, !alias.scope !683
  %i.gs = call noundef zeroext i1 @_ZNK4llvm12PatternMatch22SpecificCmpClass_matchINS0_14specificval_tyENS0_7is_zeroENS_8ICmpInstELb0EE5matchINS_11InstructionEEEbPT_(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.gs, label %bb.ap, label %"_ZZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEbENK3$_0clEv.exit"

.critedge2.i:                                     ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS0_14specificval_tyENS0_8ap_matchINS_5APIntEEENS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %"_ZZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEbENK3$_0clEv.exit"

bb.ap:                                            ; preds = %bb.ao, %bb.ai, %bb.al
  %i.gt = load i32, ptr %i.au, align 8, !tbaa !141 ; 2 uses
  %i.gu = load i32, ptr %i.av, align 4, !tbaa !145
  %.not.i177 = icmp ult i32 %i.gt, %i.gu
  br i1 %.not.i177, label %bb.ar, label %bb.aq, !prof !146

bb.aq:                                            ; preds = %bb.ap
  %i.gv = trunc nuw i64 %indvars.iv to i32
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.gv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gw = zext i32 %i.gt to i64
  %i.gx = load ptr, ptr %11, align 8, !tbaa !37
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = trunc nuw i64 %indvars.iv to i32
  store i32 %i.gz, ptr %i.gy, align 1
  %i.ha = load i32, ptr %i.au, align 8, !tbaa !141
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr %i.au, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.aq, %bb.ar
  %i.hc = load i32, ptr %i.ar, align 8, !tbaa !141 ; 2 uses
  %i.hd = load i32, ptr %i.as, align 4, !tbaa !145
  %.not.i178 = icmp ult i32 %i.hc, %i.hd
  br i1 %.not.i178, label %bb.at, label %bb.as, !prof !146

bb.as:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179

bb.at:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.he = zext i32 %i.hc to i64
  %i.hf = load ptr, ptr %10, align 8, !tbaa !37
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.he
  store ptr null, ptr %i.hg, align 1
  %i.hh = load i32, ptr %i.ar, align 8, !tbaa !141
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.ar, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179

"_ZZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEbENK3$_0clEv.exit": ; preds = %bb.ao, %.critedge2.i, %bb.ac, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %or.cond172 = select i1 %or.cond10.not, i1 true, i1 %.0141296
  br i1 %or.cond172, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.au

bb.au:                                            ; preds = %"_ZZN4llvm16InstCombinerImpl13foldOpIntoPhiERNS_11InstructionEPNS_7PHINodeEbENK3$_0clEv.exit"
  %i.hj = load ptr, ptr %i.cq, align 8, !tbaa !287
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -24
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !110
  %.not285 = icmp eq i8 %i.hl, 32
  br i1 %.not285, label %bb.av, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.hm = load ptr, ptr %i.bo, align 8, !tbaa !277, !nonnull !47, !align !55 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !299
  %i.hp = add i32 %i.ho, 1                        ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !141
  %i.hs = icmp ugt i32 %i.hr, %i.hp
  br i1 %i.hs, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit: ; preds = %bb.av
  %i.ht = zext i32 %i.hp to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !37
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ht
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !301
  %.not286 = icmp eq ptr %i.hx, null
  br i1 %.not286, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit
  %i.hy = load i32, ptr %i.ar, align 8, !tbaa !141 ; 2 uses
  %i.hz = load i32, ptr %i.as, align 4, !tbaa !145
  %.not.i181 = icmp ult i32 %i.hy, %i.hz
  br i1 %.not.i181, label %bb.ay, label %bb.ax, !prof !146

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit182

bb.ay:                                            ; preds = %bb.aw
  %i.ia = zext i32 %i.hy to i64
  %i.ib = load ptr, ptr %10, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia
  store ptr null, ptr %i.ic, align 1
  %i.id = load i32, ptr %i.ar, align 8, !tbaa !141
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.ar, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit182

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit182: ; preds = %bb.ax, %bb.ay
  %i.if = load i32, ptr %i.au, align 8, !tbaa !141 ; 2 uses
  %i.ig = load i32, ptr %i.av, align 4, !tbaa !145
  %.not.i183 = icmp ult i32 %i.if, %i.ig
  br i1 %.not.i183, label %bb.ba, label %bb.az, !prof !146

bb.az:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit182
  %i.ih = trunc nuw i64 %indvars.iv to i32
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.ih)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit184

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit182
  %i.ii = zext i32 %i.if to i64
  %i.ij = load ptr, ptr %11, align 8, !tbaa !37
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ii
  %i.il = trunc nuw i64 %indvars.iv to i32
  store i32 %i.il, ptr %i.ik, align 1
  %i.im = load i32, ptr %i.au, align 8, !tbaa !141
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.au, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit184

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit184: ; preds = %bb.az, %bb.ba
  %i.io = load ptr, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  %i.ip = load i8, ptr %i.bp, align 8, !tbaa !302, !range !46, !noundef !47
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit184
  call void @_ZN4llvm12InstCombiner16computeBackEdgesEv(ptr noundef nonnull align 8 dereferenceable(1240) %0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit184
  %i.ir = load i32, ptr %i.bq, align 8, !noalias !684
  %i.is = and i32 %i.ir, 1
  %.not.i.i.i.i.i.i185 = icmp eq i32 %i.is, 0     ; 3 uses
  %i.it = load ptr, ptr %i.br, align 8, !noalias !684
  %i.iu = load ptr, ptr %i.bs, align 8, !noalias !684
  %i.iv = load i32, ptr %i.bt, align 8, !noalias !684
  %.sink2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i185, ptr %i.it, ptr %i.br
  %.sink1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i185, ptr %i.iu, ptr %i.bu ; 2 uses
  %.sink.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i185, i32 %i.iv, i32 8 ; 2 uses
  %i.iw = icmp eq i32 %.sink.i.i.i.i.i.i, 0
  br i1 %i.iw, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ix = add i32 %.sink.i.i.i.i.i.i, -1          ; 2 uses
  %i.iy = ptrtoint ptr %i.cc to i64
  %i.iz = mul i64 %i.iy, -4658895280553007687     ; 2 uses
  %i.ja = lshr i64 %i.iz, 31
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = ptrtoint ptr %i.io to i64
  %i.jd = mul i64 %i.jc, -4658895280553007687     ; 2 uses
  %i.je = lshr i64 %i.jd, 31
  %i.jf = xor i64 %i.je, %i.jd
  %i.jg = shl i64 %i.jb, 32
  %i.jh = and i64 %i.jf, 4294967295
  %i.ji = or disjoint i64 %i.jh, %i.jg
  %i.jj = mul i64 %i.ji, -4658895280553007687     ; 2 uses
  %i.jk = lshr i64 %i.jj, 31
  %i.jl = xor i64 %i.jk, %i.jj
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = and i32 %i.ix, %i.jm                    ; 3 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = lshr i64 %i.jo, 5
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !123
  %i.js = and i32 %i.jn, 31
  %i.jt = lshr i32 %i.jr, %i.js
  %i.ju = trunc i32 %i.jt to i1
  br i1 %i.ju, label %.lr.ph.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179, !prof !155

.lr.ph.i.i.i.i:                                   ; preds = %bb.bd, %bb.be
  %i.jv = phi i64 [ %i.kf, %bb.be ], [ %i.jo, %bb.bd ]
  %.017.i.i.i.i = phi i32 [ %i.ke, %bb.be ], [ %i.jn, %bb.bd ]
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !304
  %i.jy = icmp eq ptr %i.cc, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = icmp eq ptr %i.io, %i.ka
  %i.kc = select i1 %i.jy, i1 %i.kb, i1 false
  br i1 %i.kc, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.be, !prof !146

bb.be:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kd = add nuw i32 %.017.i.i.i.i, 1
  %i.ke = and i32 %i.kd, %i.ix                    ; 3 uses
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = lshr i64 %i.kf, 5
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !123
  %i.kj = and i32 %i.ke, 31
  %i.kk = lshr i32 %i.ki, %i.kj
  %i.kl = trunc i32 %i.kk to i1
  br i1 %i.kl, label %.lr.ph.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179, !prof !156

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.aa, %bb.ab, %bb.at, %bb.as
  %.2143 = phi i1 [ %.0141296, %bb.at ], [ %.0141296, %bb.aa ], [ %.0141296, %bb.as ], [ %.0141296, %bb.ab ], [ true, %bb.bc ], [ true, %bb.bd ], [ true, %bb.be ]
  %16 = add i32 %.0140297, 1                      ; 2 uses
  %.not151 = icmp eq i32 %16, %i.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not151, label %.critedge167, label %bb.k, !llvm.loop !670

.critedge167:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.km = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  store i32 1, ptr %12, align 8
  store i32 0, ptr %i.km, align 8
  %i.kn = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.ko = load i32, ptr %i.au, align 8, !tbaa !141 ; 2 uses
  %i.kp = zext i32 %i.ko to i64
  %.idx318 = shl nuw nsw i64 %i.kp, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx318
  %.not154302 = icmp eq i32 %i.ko, 0
  br i1 %.not154302, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.critedge167
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.bf

._crit_edge305:                                   ; preds = %bb.bz, %.critedge167
  %i.kw = load ptr, ptr %i.bj, align 8, !tbaa !148
  %i.kx = load i32, ptr %i.d, align 4
  %i.ky = and i32 %i.kx, 268435455
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i16 257, ptr %i.kz, align 8
  %i.la = call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 80) #24 ; 15 uses
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.la, ptr noundef %i.kw, i32 noundef 57, i32 268435456, ptr null, i64 0) #24
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 72
  store i32 0, ptr %i.lb, align 4, !tbaa !246
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 76 ; 4 uses
  store i32 %i.ky, ptr %i.lc, align 4, !tbaa !213
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(80) %i.la, ptr noundef nonnull align 8 dereferenceable(34) %14) #24
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !213
  call void @_ZN4llvm4User16allocHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(80) %i.la, i32 noundef %i.ld, i1 noundef zeroext true) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.la, ptr nonnull %i.le, i64 0) #24
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !104, !nonnull !47, !align !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.la, ptr %i.b, align 8, !tbaa !105
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2088
  %i.li = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(168) %i.lh, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef %2) #24
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload = load ptr, ptr %i.lj, align 8, !tbaa !131
  %i.lk = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  store ptr %.sroa.0.0.copyload, ptr %i.lk, align 8, !tbaa !131
  %i.ll = getelementptr inbounds nuw i8, ptr %i.la, i64 4 ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %i.la, i64 -8 ; 2 uses
  %.pre327 = load i32, ptr %i.lc, align 4, !tbaa !213
  br label %bb.cb

bb.bf:                                            ; preds = %.lr.ph304, %bb.bz
  %.0139303 = phi ptr [ %i.kn, %.lr.ph304 ], [ %i.pb, %bb.bz ] ; 2 uses
  %i.ln = load i32, ptr %.0139303, align 4, !tbaa !123
  %i.lo = load ptr, ptr %i.aw, align 8, !tbaa !147 ; 2 uses
  %i.lp = zext i32 %i.ln to i64                   ; 3 uses
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !115 ; 4 uses
  %i.ls = load i32, ptr %i.ax, align 4, !tbaa !213
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [32 x i8], ptr %i.lo, i64 %i.lt
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lp
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !286 ; 5 uses
  %i.lx = load i32, ptr %12, align 8, !noalias !685
  %i.ly = and i32 %i.lx, 1
  %.not.i.i.i.i188 = icmp eq i32 %i.ly, 0         ; 3 uses
  %i.lz = load ptr, ptr %i.kr, align 8, !noalias !685
  %i.ma = load ptr, ptr %i.ks, align 8, !noalias !685
  %i.mb = load i32, ptr %i.kt, align 8, !noalias !685
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i188, ptr %i.lz, ptr %i.kr
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i188, ptr %i.ma, ptr %i.km ; 2 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i188, i32 %i.mb, i32 4 ; 2 uses
  %i.mc = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.mc, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.md = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.me = ptrtoint ptr %i.lw to i64
  %i.mf = mul i64 %i.me, -4658895280553007687     ; 2 uses
  %i.mg = lshr i64 %i.mf, 31
  %i.mh = xor i64 %i.mg, %i.mf
  %i.mi = trunc i64 %i.mh to i32
  %i.mj = and i32 %i.md, %i.mi                    ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = lshr i64 %i.mk, 5
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !123
  %i.mo = and i32 %i.mj, 31
  %i.mp = lshr i32 %i.mn, %i.mo
  %i.mq = trunc i32 %i.mp to i1
  br i1 %i.mq, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread, !prof !155

.lr.ph.i.i:                                       ; preds = %bb.bg, %bb.bh
  %i.mr = phi i64 [ %i.mx, %bb.bh ], [ %i.mk, %bb.bg ]
  %.017.i.i = phi i32 [ %i.mw, %bb.bh ], [ %i.mj, %bb.bg ]
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.mr ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !286
  %i.mu = icmp eq ptr %i.lw, %i.mt
  br i1 %i.mu, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit, label %bb.bh, !prof !146

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.mv = add nuw i32 %.017.i.i, 1
  %i.mw = and i32 %i.mv, %i.md                    ; 3 uses
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = lshr i64 %i.mx, 5
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !123
  %i.nb = and i32 %i.mw, 31
  %i.nc = lshr i32 %i.na, %i.nb
  %i.nd = trunc i32 %i.nc to i1
  br i1 %i.nd, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread, !prof !156

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit: ; preds = %.lr.ph.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !105 ; 2 uses
  %.not157 = icmp eq ptr %i.nf, null
  br i1 %.not157, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread, label %bb.bz

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread: ; preds = %bb.bh, %bb.bg, %bb.bf, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit
  %i.ng = call noundef ptr @_ZNK4llvm11Instruction5cloneEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #24 ; 8 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ni = load i32, ptr %i.nh, align 4            ; 3 uses
  %i.nj = and i32 %i.ni, 1073741824
  %.not.i.i.i.i189 = icmp eq i32 %i.nj, 0
  br i1 %.not.i.i.i.i189, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread
  %i.nk = getelementptr inbounds i8, ptr %i.ng, i64 -8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !147
  %.pre.i.i190 = and i32 %i.ni, 268435455
  %.pre1.i.i191 = zext nneg i32 %.pre.i.i190 to i64
  br label %_ZN4llvm4User8operandsEv.exit195

bb.bj:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit.thread
  %i.nm = and i32 %i.ni, 268435455
  %i.nn = zext nneg i32 %i.nm to i64              ; 2 uses
  %i.no = sub nsw i64 0, %i.nn
  %i.np = getelementptr inbounds [32 x i8], ptr %i.ng, i64 %i.no
  br label %_ZN4llvm4User8operandsEv.exit195

_ZN4llvm4User8operandsEv.exit195:                 ; preds = %bb.bi, %bb.bj
  %i.nq = phi ptr [ %i.nl, %bb.bi ], [ %i.np, %bb.bj ] ; 2 uses
  %.pre-phi2.i.i192 = phi i64 [ %.pre1.i.i191, %bb.bi ], [ %i.nn, %bb.bj ] ; 2 uses
  %.idx319 = shl nuw nsw i64 %.pre-phi2.i.i192, 5
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.idx319
  %.not158299 = icmp eq i64 %.pre-phi2.i.i192, 0
  br i1 %.not158299, label %._crit_edge, label %.lr.ph301

.lr.ph301:                                        ; preds = %_ZN4llvm4User8operandsEv.exit195
  %.not.i.i200 = icmp eq ptr %i.lr, null
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lr, i64 16 ; 3 uses
  br label %bb.bk

._crit_edge:                                      ; preds = %_ZN4llvm3UseaSEPNS_5ValueE.exit, %_ZN4llvm4User8operandsEv.exit195
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !287
  call void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ng, ptr nonnull %i.nu, i64 0) #24
  %i.nv = load ptr, ptr %i.ku, align 8, !tbaa !104, !nonnull !47, !align !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ng, ptr %i.a, align 8, !tbaa !105
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2088
  %i.nx = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(168) %i.nw, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr %i.lw, ptr %13, align 8, !tbaa !687
  store ptr %i.ng, ptr %i.kv, align 8, !tbaa !688
  %i.ny = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.kv), !noalias !689 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN4llvm11Instruction30dropUBImplyingAttrsAndMetadataENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ng, ptr null, i64 0) #24
  br label %bb.bz

bb.bk:                                            ; preds = %.lr.ph301, %_ZN4llvm3UseaSEPNS_5ValueE.exit
  %.0138300 = phi ptr [ %i.nq, %.lr.ph301 ], [ %i.oy, %_ZN4llvm3UseaSEPNS_5ValueE.exit ] ; 12 uses
  %i.nz = load ptr, ptr %.0138300, align 8, !tbaa !115 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %2
  br i1 %i.oa, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.ob = getelementptr inbounds nuw i8, ptr %.0138300, i64 16 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !214 ; 3 uses
  %.not.i.i.i199 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i199, label %_ZN4llvm3Use14removeFromListEv.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.od = getelementptr inbounds nuw i8, ptr %.0138300, i64 8 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !161 ; 3 uses
  store ptr %i.oe, ptr %i.oc, align 8, !tbaa !147
  %.not2.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not2.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
end_hunk_0
