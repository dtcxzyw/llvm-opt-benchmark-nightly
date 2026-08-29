Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConstraintElimination?download=true
inline.NumInlined: 6001
inline.NumDeleted: 3097
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEb:bb.a
  %i.p = load i32, ptr %i.o, align 8, !tbaa !235  ; 2 uses
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.g
  %i.r = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #23
  %i.s = icmp eq i32 %i.r, %i.p
  br i1 %i.s, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !199
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.x, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

.split.i.i.i:                                     ; preds = %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i
  %i.y = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %4)
  br i1 %i.y, label %bb.h, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.n, align 8, !tbaa !145
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

bb.h:                                             ; preds = %.split.i.i.i
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !663 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %4, ptr %.pre.i.i, align 8, !tbaa !666
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread: ; preds = %bb.d, %.split7.i.i.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i, %.split.i.i.i, %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.thread216

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit: ; preds = %.split7.i.i.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i, %bb.e, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.thread216

bb.j:                                             ; preds = %bb.a
  br i1 %6, label %.critedge.thread.thread205, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i8, ptr %4, align 8, !tbaa !192    ; 2 uses
  %i.ac = icmp ugt i8 %i.ab, 22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  br i1 %i.ac, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp slt i8 %i.ae, 0
  br i1 %i.af, label %.thread.i.i106, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %8, align 8, !tbaa !663
  %i.ag = icmp eq i8 %i.ab, 5
  br i1 %i.ag, label %bb.n, label %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i100

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !235 ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 65
  br i1 %i.ak, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i107, label %.split7.i.i.i105

.split7.i.i.i105:                                 ; preds = %bb.n
  %i.al = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23
  %i.am = icmp eq i32 %i.al, %i.aj
  br i1 %i.am, label %.thread.i.i106, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread

_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i100: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i101 = icmp eq i32 %i.ar, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i101, label %.split.i.i.i102, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread

.split.i.i.i102:                                  ; preds = %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i100
  %i.as = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4)
  br i1 %i.as, label %bb.o, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i107: ; preds = %bb.n
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !145
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.thread.i.i106, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread

bb.o:                                             ; preds = %.split.i.i.i102
  %.pre.i.i103 = load ptr, ptr %8, align 8, !tbaa !663 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %.pre.i.i103, null
  br i1 %.not.i.i.i104, label %.thread.i.i106, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %4, ptr %.pre.i.i103, align 8, !tbaa !666
  br label %.thread.i.i106

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread: ; preds = %bb.k, %.split7.i.i.i105, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i107, %.split.i.i.i102, %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.thread216

.thread.i.i106:                                   ; preds = %.split7.i.i.i105, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i107, %bb.p, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.av = call noundef i32 @_ZN4llvm7CmpInst19getSwappedPredicateENS0_9PredicateE(i32 noundef 34) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.thread.i.i106, %bb.b
  %.0175 = phi ptr [ %4, %bb.a ], [ %3, %bb.b ], [ %3, %.thread.i.i106 ] ; 2 uses
  %.0174 = phi ptr [ %3, %bb.a ], [ %4, %bb.b ], [ %4, %.thread.i.i106 ] ; 2 uses
  %.073 = phi i32 [ %2, %bb.a ], [ %i.g, %bb.b ], [ %i.av, %.thread.i.i106 ] ; 4 uses
  switch i32 %.073, label %bb.q [
    i32 41, label %.critedge.thread
    i32 40, label %.critedge.thread
    i32 37, label %.critedge.thread
    i32 36, label %.critedge.thread
  ]

bb.q:                                             ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aw, i8 0, i64 136, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %0, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.az, align 4, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.bc, align 4, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.bd, align 1, !tbaa !124
  br label %bb.bm

.thread216:                                       ; preds = %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread
  %.075184.ph = phi i8 [ 0, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread ], [ 0, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit ], [ 1, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread ]
  %.077183.ph = phi i8 [ 1, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit108.thread ], [ 0, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit ], [ 0, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.be, ptr %10, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 4, ptr %i.bg, align 4, !tbaa !76
  br label %.thread

.critedge.thread.thread205:                       ; preds = %bb.j, %bb.c
  %.075184.ph203 = phi i8 [ 1, %bb.c ], [ 0, %bb.j ]
  %.077183.ph204 = phi i8 [ 0, %bb.c ], [ 1, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bh, ptr %10, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 4, ptr %i.bj, align 4, !tbaa !76
  br label %.thread

.critedge.thread:                                 ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bk, ptr %10, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 4, ptr %i.bm, align 4, !tbaa !76
  br i1 %6, label %.thread, label %bb.r

bb.r:                                             ; preds = %.critedge.thread
  %i.bn = add nsw i32 %.073, -38
  %i.bo = icmp ult i32 %i.bn, 4                   ; 2 uses
  %spec.select222 = select i1 %i.bo, i64 1224, i64 600
  br label %.thread

.thread:                                          ; preds = %bb.r, %.thread216, %.critedge.thread, %.critedge.thread.thread205
  %i.bp = phi ptr [ %i.bk, %bb.r ], [ %i.be, %.thread216 ], [ %i.bh, %.critedge.thread.thread205 ], [ %i.bk, %.critedge.thread ]
  %.0175181200 = phi ptr [ %.0175, %bb.r ], [ %4, %.thread216 ], [ %4, %.critedge.thread.thread205 ], [ %.0175, %.critedge.thread ]
  %.0174182198 = phi ptr [ %.0174, %bb.r ], [ %3, %.thread216 ], [ %3, %.critedge.thread.thread205 ], [ %.0174, %.critedge.thread ]
  %.077183196 = phi i8 [ 0, %bb.r ], [ %.077183.ph, %.thread216 ], [ %.077183.ph204, %.critedge.thread.thread205 ], [ 0, %.critedge.thread ]
  %.075184194 = phi i8 [ 0, %bb.r ], [ %.075184.ph, %.thread216 ], [ %.075184.ph203, %.critedge.thread.thread205 ], [ 0, %.critedge.thread ]
  %.073185192 = phi i32 [ %.073, %bb.r ], [ 37, %.thread216 ], [ 37, %.critedge.thread.thread205 ], [ %.073, %.critedge.thread ]
  %i.bq = phi i1 [ %i.bo, %bb.r ], [ false, %.thread216 ], [ true, %.critedge.thread.thread205 ], [ true, %.critedge.thread ] ; 3 uses
  %i.br = phi i64 [ %spec.select222, %bb.r ], [ 600, %.thread216 ], [ 1224, %.critedge.thread.thread205 ], [ 1224, %.critedge.thread ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.bt = call noundef ptr @_ZNK4llvm5Value35stripPointerCastsSameRepresentationEv(ptr noundef nonnull align 8 dereferenceable(24) %.0174182198) #20
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !542, !nonnull !21, !align !177
  call fastcc void @_ZL9decomposePN4llvm5ValueERNS_15SmallVectorImplIN12_GLOBAL__N_111ConditionTyEEEbRKNS_10DataLayoutE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext %i.bq, ptr noundef nonnull align 8 dereferenceable(912) %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bw = call noundef ptr @_ZNK4llvm5Value35stripPointerCastsSameRepresentationEv(ptr noundef nonnull align 8 dereferenceable(24) %.0175181200) #20
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !542, !nonnull !21, !align !177
  call fastcc void @_ZL9decomposePN4llvm5ValueERNS_15SmallVectorImplIN12_GLOBAL__N_111ConditionTyEEEbRKNS_10DataLayoutE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext %i.bq, ptr noundef nonnull align 8 dereferenceable(912) %i.bx)
  %i.by = load i64, ptr %11, align 8, !tbaa !668  ; 2 uses
  %i.bz = load i64, ptr %12, align 8, !tbaa !668  ; 2 uses
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  store i32 1, ptr %13, align 8
  store i32 0, ptr %i.cd, align 8
  %.val92.val = load ptr, ptr %i.cc, align 8, !tbaa !8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.val92.val94 = load i32, ptr %i.ce, align 8, !tbaa !75 ; 2 uses
  %.val93.val = load ptr, ptr %i.cb, align 8, !tbaa !8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.val93.val95 = load i32, ptr %i.cf, align 8, !tbaa !75 ; 2 uses
  %i.cg = zext i32 %.val93.val95 to i64
  %.idx = shl nuw nsw i64 %i.cg, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.val93.val, i64 %.idx
  %i.ci = zext i32 %.val92.val94 to i64
  %.idx245 = shl nuw nsw i64 %i.ci, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.val92.val, i64 %.idx245 ; 2 uses
  %i.ck = icmp eq i32 %.val93.val95, 0            ; 2 uses
  %i.cl = icmp eq i32 %.val92.val94, 0
  %spec.select.i.i.i.i231 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %spec.select.i.i.i.i231, label %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS3_S4_EEESt20forward_iterator_tagS3_lS4_RS3_EneERKS5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.u

_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS3_S4_EEESt20forward_iterator_tagS3_lS4_RS3_EneERKS5_.exit: ; preds = %_ZN4llvm15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS2_S3_EEppEv.exit, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !97
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !75
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, %i.ct            ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.cz, ptr %15, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 8, ptr %i.db, align 4, !tbaa !76
  %i.dc = icmp samesign ugt i64 %i.cx, 7
  br i1 %i.dc, label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit, label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit

_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit: ; preds = %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS3_S4_EEESt20forward_iterator_tagS3_lS4_RS3_EneERKS5_.exit
  store i32 0, ptr %i.da, align 8, !tbaa !75
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull %i.cz, i64 noundef %i.cy, i64 noundef 8) #20
  %i.dd = load ptr, ptr %15, align 8, !tbaa !8
  br label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit

_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit:         ; preds = %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS3_S4_EEESt20forward_iterator_tagS3_lS4_RS3_EneERKS5_.exit, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit
  %.sink = phi ptr [ %i.dd, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit ], [ %i.cz, %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS3_S4_EEESt20forward_iterator_tagS3_lS4_RS3_EneERKS5_.exit ] ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !111
  %storemerge.i = trunc i64 %i.cy to i32          ; 2 uses
  store i32 %storemerge.i, ptr %i.da, align 8, !tbaa !75
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.de, ptr %14, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i32 0, ptr %i.df, align 8, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 8, ptr %i.dg, align 4, !tbaa !76
  %.not.i.i.i109 = icmp eq i32 %storemerge.i, 0
  br i1 %.not.i.i.i109, label %_ZN12_GLOBAL__N_112ConstraintTyC2EN4llvm11SmallVectorIlLj8EEEbbb.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit
  %i.dh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(147) %14, ptr noundef nonnull align 8 dereferenceable(80) %15) ; 0 uses
  %.pre = load ptr, ptr %15, align 8, !tbaa !8
  br label %_ZN12_GLOBAL__N_112ConstraintTyC2EN4llvm11SmallVectorIlLj8EEEbbb.exit

_ZN12_GLOBAL__N_112ConstraintTyC2EN4llvm11SmallVectorIlLj8EEEbbb.exit: ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit, %bb.s
  %i.di = phi ptr [ %.sink, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit ], [ %.pre, %bb.s ] ; 2 uses
  %i.dj = zext i1 %i.bq to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !75
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 92
  store i32 2, ptr %i.dn, align 4, !tbaa !76
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  store i8 %i.dj, ptr %i.do, align 8, !tbaa !112
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 145
  store i8 %.075184194, ptr %i.dp, align 1, !tbaa !124
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 146
  store i8 %.077183196, ptr %i.dq, align 2, !tbaa !125
  %i.dr = icmp eq ptr %i.di, %i.cz
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_112ConstraintTyC2EN4llvm11SmallVectorIlLj8EEEbbb.exit
  call void @free(ptr noundef %i.di) #20
  br label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit

_ZN4llvm11SmallVectorIlLj8EED2Ev.exit:            ; preds = %_ZN12_GLOBAL__N_112ConstraintTyC2EN4llvm11SmallVectorIlLj8EEEbbb.exit, %bb.t
  %.val87 = load ptr, ptr %i.cb, align 8, !tbaa !8 ; 2 uses
  %.val91 = load i32, ptr %i.cf, align 8, !tbaa !75 ; 2 uses
  %i.ds = zext i32 %.val91 to i64
  %.idx246 = shl nuw nsw i64 %i.ds, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.val87, i64 %.idx246
  %.not234 = icmp eq i32 %.val91, 0
  br i1 %.not234, label %._crit_edge, label %.lr.ph236

.lr.ph236:                                        ; preds = %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.ad

bb.u:                                             ; preds = %.lr.ph, %_ZN4llvm15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS2_S3_EEppEv.exit
  %i.dx = phi i1 [ %i.ck, %.lr.ph ], [ %i.gb, %_ZN4llvm15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS2_S3_EEppEv.exit ] ; 2 uses
  %.sroa.0148.0233 = phi ptr [ %.val92.val, %.lr.ph ], [ %.sroa.0148.1, %_ZN4llvm15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS2_S3_EEppEv.exit ] ; 4 uses
  %.sroa.7.0232 = phi ptr [ %.val93.val, %.lr.ph ], [ %.sroa.7.1, %_ZN4llvm15concat_iteratorIN12_GLOBAL__N_111DecompEntryEJPS2_S3_EEppEv.exit ] ; 3 uses
  %spec.select.i.i.i = select i1 %i.dx, ptr %.sroa.0148.0233, ptr %.sroa.7.0232
  %i.dy = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !675 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.dz, ptr %i.e, align 8, !tbaa !77
  %i.ea = load ptr, ptr %i.bs, align 8, !tbaa !364, !noalias !677 ; 3 uses
  %i.eb = load ptr, ptr %i.cm, align 8, !tbaa !365, !noalias !677 ; 2 uses
  %i.ec = load i32, ptr %i.cn, align 4, !tbaa !358, !noalias !677 ; 4 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = add i32 %i.ec, -1                       ; 2 uses
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = mul i64 %i.ef, -4658895280553007687     ; 2 uses
  %i.eh = lshr i64 %i.eg, 31
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = and i32 %i.ee, %i.ej                    ; 3 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = lshr i64 %i.el, 5
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !126, !noalias !686
  %i.ep = and i32 %i.ek, 31
  %i.eq = lshr i32 %i.eo, %i.ep
  %i.er = trunc i32 %i.eq to i1
  br i1 %i.er, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !366

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %i.es = phi i64 [ %i.ey, %bb.w ], [ %i.el, %bb.v ]
  %.017.i.i.i.i = phi i32 [ %i.ex, %bb.w ], [ %i.ek, %bb.v ]
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.es ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !77, !noalias !686
  %i.ev = icmp eq ptr %i.dz, %i.eu
  br i1 %i.ev, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i, label %bb.w, !prof !152

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ew = add nuw i32 %.017.i.i.i.i, 1
  %i.ex = and i32 %i.ew, %i.ee                    ; 3 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = lshr i64 %i.ey, 5
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !126, !noalias !686
  %i.fc = and i32 %i.ex, 31
  %i.fd = lshr i32 %i.fb, %i.fc
  %i.fe = trunc i32 %i.fd to i1
  br i1 %i.fe, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !367

.loopexit.i.i.i:                                  ; preds = %bb.w, %bb.v, %bb.u
  %i.ff = zext i32 %i.ec to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.ff
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.ec to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i ], [ %i.ff, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.et, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i ], [ %i.fg, %.loopexit.i.i.i ]
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.fh
  br i1 %.not.i, label %bb.x, label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit"

bb.x:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.fi = load i32, ptr %i.co, align 8, !tbaa !97
  %i.fj = zext i32 %i.fi to i64
  %i.fk = load i32, ptr %i.cp, align 8, !tbaa !75
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add nuw nsw i64 %i.fj, 1
  %i.fn = add nuw nsw i64 %i.fm, %i.fl
  store i64 %i.fn, ptr %i.f, align 8, !tbaa !111
  %i.fo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JmEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !687
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.fo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.fp = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.fp, label %bb.y, label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit"

bb.y:                                             ; preds = %bb.x
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.fr = load i32, ptr %i.cp, align 8, !tbaa !75 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEb:bb.a
  %.pre-phi.i112 = phi i64 [ %.pre.i124, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i123 ], [ %i.hq, %.loopexit.i.i.i110 ]
  %.lcssa.sink.i.i.i113 = phi ptr [ %i.he, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i123 ], [ %i.hr, %.loopexit.i.i.i110 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.pre-phi.i112
  %.not.i114 = icmp eq ptr %.lcssa.sink.i.i.i113, %i.hs
  br i1 %.not.i114, label %bb.ag, label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit125"

bb.ag:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ht = load i32, ptr %i.cr, align 8, !tbaa !97
  %i.hu = zext i32 %i.ht to i64
  %i.hv = load i32, ptr %i.cu, align 8, !tbaa !75
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add nuw nsw i64 %i.hu, 1
  %i.hy = add nuw nsw i64 %i.hx, %i.hw
  store i64 %i.hy, ptr %i.d, align 8, !tbaa !111
  %i.hz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JmEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !703 ; 2 uses
  %.fca.0.extract.i.i.i118 = extractvalue { ptr, i8 } %i.hz, 0 ; 3 uses
  %.fca.1.extract.i.i.i119 = extractvalue { ptr, i8 } %i.hz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ia = trunc nuw i8 %.fca.1.extract.i.i.i119 to i1
  br i1 %i.ia, label %bb.ah, label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit125"

bb.ah:                                            ; preds = %bb.ag
  %i.ib = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.ic = load i32, ptr %i.cu, align 8, !tbaa !75 ; 2 uses
  %i.id = load i32, ptr %i.dw, align 4, !tbaa !76
  %.not.i.i120 = icmp ult i32 %i.ic, %i.id
  br i1 %.not.i.i120, label %bb.aj, label %bb.ai, !prof !152

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ib)
  br label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit125"

bb.aj:                                            ; preds = %bb.ah
  %i.ie = zext i32 %i.ic to i64
  %i.if = load ptr, ptr %5, align 8, !tbaa !8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  store ptr %i.ib, ptr %i.ig, align 1
  %i.ih = load i32, ptr %i.cu, align 8, !tbaa !75
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.cu, align 8, !tbaa !75
  br label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit125"

"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit125": ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i111, %bb.ag, %bb.ai, %bb.aj
  %.lcssa.sink.i.i.pn.i115 = phi ptr [ %.lcssa.sink.i.i.i113, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i111 ], [ %.fca.0.extract.i.i.i118, %bb.aj ], [ %.fca.0.extract.i.i.i118, %bb.ai ], [ %.fca.0.extract.i.i.i118, %bb.ag ]
  %.0.in.i116 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.pn.i115, i64 8
  %.0.i117 = load i32, ptr %.0.in.i116, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ij = zext i32 %.0.i117 to i64
  %i.ik = load ptr, ptr %14, align 8, !tbaa !8
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ij ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !111
  %i.in = add nsw i64 %i.im, %i.gi
  store i64 %i.in, ptr %i.il, align 8, !tbaa !111
  %i.io = getelementptr inbounds nuw i8, ptr %.074235, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.io, %i.dt
  br i1 %.not, label %._crit_edge, label %bb.ad

bb.ak:                                            ; preds = %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141"
  %i.ip = getelementptr inbounds nuw i8, ptr %.0238, i64 16 ; 2 uses
  %.not78 = icmp eq ptr %i.ip, %i.ge
  br i1 %.not78, label %.critedge86, label %bb.al

bb.al:                                            ; preds = %.lr.ph240, %bb.ak
  %.0238 = phi ptr [ %.val, %.lr.ph240 ], [ %i.ip, %bb.ak ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0238, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !675 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ir, ptr %i.a, align 8, !tbaa !77
  %i.is = load ptr, ptr %i.bs, align 8, !tbaa !364, !noalias !708 ; 3 uses
  %i.it = load ptr, ptr %i.gf, align 8, !tbaa !365, !noalias !708 ; 2 uses
  %i.iu = load i32, ptr %i.gg, align 4, !tbaa !358, !noalias !708 ; 4 uses
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.loopexit.i.i.i126, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iw = add i32 %i.iu, -1                       ; 2 uses
  %i.ix = ptrtoint ptr %i.ir to i64
  %i.iy = mul i64 %i.ix, -4658895280553007687     ; 2 uses
  %i.iz = lshr i64 %i.iy, 31
  %i.ja = xor i64 %i.iz, %i.iy
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = and i32 %i.iw, %i.jb                    ; 3 uses
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = lshr i64 %i.jd, 5
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !126, !noalias !717
  %i.jh = and i32 %i.jc, 31
  %i.ji = lshr i32 %i.jg, %i.jh
  %i.jj = trunc i32 %i.ji to i1
  br i1 %i.jj, label %.lr.ph.i.i.i.i137, label %.loopexit.i.i.i126, !prof !366

.lr.ph.i.i.i.i137:                                ; preds = %bb.am, %bb.an
  %i.jk = phi i64 [ %i.jq, %bb.an ], [ %i.jd, %bb.am ]
  %.017.i.i.i.i138 = phi i32 [ %i.jp, %bb.an ], [ %i.jc, %bb.am ]
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %i.jk ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !77, !noalias !717
  %i.jn = icmp eq ptr %i.ir, %i.jm
  br i1 %i.jn, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i139, label %bb.an, !prof !152

bb.an:                                            ; preds = %.lr.ph.i.i.i.i137
  %i.jo = add nuw i32 %.017.i.i.i.i138, 1
  %i.jp = and i32 %i.jo, %i.iw                    ; 3 uses
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = lshr i64 %i.jq, 5
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !126, !noalias !717
  %i.ju = and i32 %i.jp, 31
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = trunc i32 %i.jv to i1
  br i1 %i.jw, label %.lr.ph.i.i.i.i137, label %.loopexit.i.i.i126, !prof !367

.loopexit.i.i.i126:                               ; preds = %bb.an, %bb.am, %bb.al
  %i.jx = zext i32 %i.iu to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %i.jx
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i127

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i139: ; preds = %.lr.ph.i.i.i.i137
  %.pre.i140 = zext i32 %i.iu to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i127

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i127: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i139, %.loopexit.i.i.i126
  %.pre-phi.i128 = phi i64 [ %.pre.i140, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i139 ], [ %i.jx, %.loopexit.i.i.i126 ]
  %.lcssa.sink.i.i.i129 = phi ptr [ %i.jl, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i139 ], [ %i.jy, %.loopexit.i.i.i126 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %.pre-phi.i128
  %.not.i130 = icmp eq ptr %.lcssa.sink.i.i.i129, %i.jz
  br i1 %.not.i130, label %bb.ao, label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141"

bb.ao:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ka = load i32, ptr %i.cr, align 8, !tbaa !97
  %i.kb = zext i32 %i.ka to i64
  %i.kc = load i32, ptr %i.cu, align 8, !tbaa !75
  %i.kd = zext i32 %i.kc to i64
  %i.ke = add nuw nsw i64 %i.kb, 1
  %i.kf = add nuw nsw i64 %i.ke, %i.kd
  store i64 %i.kf, ptr %i.b, align 8, !tbaa !111
  %i.kg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JmEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !718 ; 2 uses
  %.fca.0.extract.i.i.i134 = extractvalue { ptr, i8 } %i.kg, 0 ; 3 uses
  %.fca.1.extract.i.i.i135 = extractvalue { ptr, i8 } %i.kg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.kh = trunc nuw i8 %.fca.1.extract.i.i.i135 to i1
  br i1 %i.kh, label %bb.ap, label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141"

bb.ap:                                            ; preds = %bb.ao
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %i.kj = load i32, ptr %i.cu, align 8, !tbaa !75 ; 2 uses
  %i.kk = load i32, ptr %i.gh, align 4, !tbaa !76
  %.not.i.i136 = icmp ult i32 %i.kj, %i.kk
  br i1 %.not.i.i136, label %bb.ar, label %bb.aq, !prof !152

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ki)
  br label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141"

bb.ar:                                            ; preds = %bb.ap
  %i.kl = zext i32 %i.kj to i64
  %i.km = load ptr, ptr %5, align 8, !tbaa !8
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kl
  store ptr %i.ki, ptr %i.kn, align 1
  %i.ko = load i32, ptr %i.cu, align 8, !tbaa !75
  %i.kp = add i32 %i.ko, 1
  store i32 %i.kp, ptr %i.cu, align 8, !tbaa !75
  br label %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141"

"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141": ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i127, %bb.ao, %bb.aq, %bb.ar
  %.lcssa.sink.i.i.pn.i131 = phi ptr [ %.lcssa.sink.i.i.i129, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i127 ], [ %.fca.0.extract.i.i.i134, %bb.ar ], [ %.fca.0.extract.i.i.i134, %bb.aq ], [ %.fca.0.extract.i.i.i134, %bb.ao ]
  %.0.in.i132 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.pn.i131, i64 8
  %.0.i133 = load i32, ptr %.0.in.i132, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kq = zext i32 %.0.i133 to i64
  %i.kr = load ptr, ptr %14, align 8, !tbaa !8
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kq ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !111
  %i.ku = load i64, ptr %.0238, align 8, !tbaa !692
  %i.kv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kt, i64 %i.ku) ; 2 uses
  %i.kw = extractvalue { i64, i1 } %i.kv, 1
  %i.kx = extractvalue { i64, i1 } %i.kv, 0
  store i64 %i.kx, ptr %i.ks, align 8
  br i1 %i.kw, label %bb.as, label %bb.ak

bb.as:                                            ; preds = %"_ZZNK12_GLOBAL__N_114ConstraintInfo13getConstraintEN4llvm7CmpInst9PredicateEPNS1_5ValueES5_RNS1_15SmallVectorImplIS5_EEbENK3$_0clES5_.exit141"
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ky, i8 0, i64 136, i1 false)
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kz, ptr %0, align 8, !tbaa !8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.la, align 8, !tbaa !75
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.lb, align 4, !tbaa !76
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.le, align 4, !tbaa !76
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.lf, align 1, !tbaa !124
  br label %bb.be

.critedge86:                                      ; preds = %bb.ak, %._crit_edge
  %i.lg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ca, i64 %i.bz)
  %i.lh = extractvalue { i64, i1 } %i.lg, 1
  %16 = sub nsw i64 %i.bz, %i.by                  ; 3 uses
  br i1 %i.lh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge86
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.li, i8 0, i64 136, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lj, ptr %0, align 8, !tbaa !8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.lk, align 8, !tbaa !75
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.ll, align 4, !tbaa !76
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ln, ptr %i.lm, align 8, !tbaa !8
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.lo, align 4, !tbaa !76
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.lp, align 1, !tbaa !124
  br label %bb.be

bb.au:                                            ; preds = %.critedge86
  switch i32 %.073185192, label %bb.ax [
    i32 40, label %bb.av
    i32 36, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %17 = icmp eq i64 %16, -9223372036854775808
  %18 = add nsw i64 %16, -1
  br i1 %17, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lq, i8 0, i64 136, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lr, ptr %0, align 8, !tbaa !8
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ls, align 8, !tbaa !75
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.lt, align 4, !tbaa !76
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !8
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.lw, align 4, !tbaa !76
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.lx, align 1, !tbaa !124
  br label %bb.be

bb.ax:                                            ; preds = %bb.au, %bb.av
  %.0173 = phi i64 [ %16, %bb.au ], [ %18, %bb.av ]
  %i.ly = load ptr, ptr %14, align 8, !tbaa !8
  store i64 %.0173, ptr %i.ly, align 8, !tbaa !111
  %i.lz = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111ConditionTyEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 0 uses
  %i.ma = load i32, ptr %i.cu, align 8, !tbaa !75 ; 2 uses
  %.not.i142241 = icmp eq i32 %i.ma, 0
  br i1 %.not.i142241, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit.thread, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.ax
  %i.mb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.pre257 = load ptr, ptr %14, align 8, !tbaa !8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph243, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit
  %i.me = phi ptr [ %.pre257, %.lr.ph243 ], [ %i.oa, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit ] ; 4 uses
  %i.mf = phi i32 [ %i.ma, %.lr.ph243 ], [ %i.nz, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit ] ; 2 uses
  %i.mg = load i32, ptr %i.df, align 8, !tbaa !75 ; 2 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !111
  %.not82 = icmp eq i64 %i.mk, 0
  br i1 %.not82, label %bb.az, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.ml = add i32 %i.mg, -1
  store i32 %i.ml, ptr %i.df, align 8, !tbaa !75
  %i.mm = load ptr, ptr %5, align 8, !tbaa !8
  %i.mn = zext i32 %i.mf to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mn
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !77 ; 2 uses
  %i.mr = add i32 %i.mf, -1                       ; 4 uses
  store i32 %i.mr, ptr %i.cu, align 8, !tbaa !75
  %i.ms = load i32, ptr %13, align 8, !noalias !723
  %i.mt = and i32 %i.ms, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.mt, 0          ; 3 uses
  %i.mu = load ptr, ptr %i.mb, align 8, !noalias !723
  %i.mv = load ptr, ptr %i.mc, align 8, !noalias !723
  %i.mw = load i32, ptr %i.md, align 8, !noalias !723
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.mu, ptr %i.mb
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.mv, ptr %i.cd ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.mw, i32 4 ; 2 uses
  %i.mx = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.mx, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.my = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.mz = ptrtoint ptr %i.mq to i64
  %i.na = mul i64 %i.mz, -4658895280553007687     ; 2 uses
  %i.nb = lshr i64 %i.na, 31
  %i.nc = xor i64 %i.nb, %i.na
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = and i32 %i.my, %i.nd                    ; 3 uses
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = lshr i64 %i.nf, 5
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !126
  %i.nj = and i32 %i.ne, 31
  %i.nk = lshr i32 %i.ni, %i.nj
  %i.nl = trunc i32 %i.nk to i1
  br i1 %i.nl, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit, !prof !366

.lr.ph.i.i.i:                                     ; preds = %bb.ba, %bb.bb
  %i.nm = phi i64 [ %i.ns, %bb.bb ], [ %i.nf, %bb.ba ]
  %.017.i.i.i = phi i32 [ %i.nr, %bb.bb ], [ %i.ne, %bb.ba ]
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.nm ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !77
  %i.np = icmp eq ptr %i.mq, %i.no
  br i1 %i.np, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i, label %bb.bb, !prof !152

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.nq = add nuw i32 %.017.i.i.i, 1
  %i.nr = and i32 %i.nq, %i.my                    ; 3 uses
  %i.ns = zext i32 %i.nr to i64                   ; 2 uses
  %i.nt = lshr i64 %i.ns, 5
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !126
  %i.nw = and i32 %i.nr, 31
  %i.nx = lshr i32 %i.nv, %i.nw
  %i.ny = trunc i32 %i.nx to i1
  br i1 %i.ny, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit, !prof !367

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.nn, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pre256 = load ptr, ptr %14, align 8, !tbaa !8
  %.pre258 = load i32, ptr %i.cu, align 8, !tbaa !75
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit: ; preds = %bb.bb, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i, %bb.ba, %bb.az
  %i.nz = phi i32 [ %i.mr, %bb.az ], [ %.pre258, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i ], [ %i.mr, %bb.ba ], [ %i.mr, %bb.bb ] ; 2 uses
  %i.oa = phi ptr [ %i.me, %bb.az ], [ %.pre256, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPS8_RKT_.exit.i ], [ %i.me, %bb.ba ], [ %i.me, %bb.bb ]
  %.not.i142 = icmp eq i32 %i.nz, 0
  br i1 %.not.i142, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit.thread, label %bb.ay

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit.thread: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit, %bb.ay, %bb.ax
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ob, ptr %0, align 8, !tbaa !8
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.oc, align 8, !tbaa !75
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.od, align 4, !tbaa !76
  %i.oe = load i32, ptr %i.df, align 8, !tbaa !75
  %.not.i.i.i143 = icmp eq i32 %i.oe, 0
  br i1 %.not.i.i.i143, label %_ZN4llvm11SmallVectorIlLj8EEC2EOS1_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit.thread
  %i.of = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef nonnull align 8 dereferenceable(147) %14) ; 0 uses
  br label %_ZN4llvm11SmallVectorIlLj8EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIlLj8EEC2EOS1_.exit.i:       ; preds = %bb.bc, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5eraseERKS3_.exit.thread
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !8
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.oi, align 8, !tbaa !75
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.oj, align 4, !tbaa !76
  %i.ok = load i32, ptr %i.dm, align 8, !tbaa !75
  %.not.i.i4.i = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i4.i, label %_ZN12_GLOBAL__N_112ConstraintTyC2EOS0_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2EOS1_.exit.i
  %i.ol = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111ConditionTyEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.og, ptr noundef nonnull align 8 dereferenceable(64) %i.dk) ; 0 uses
  br label %_ZN12_GLOBAL__N_112ConstraintTyC2EOS0_.exit

_ZN12_GLOBAL__N_112ConstraintTyC2EOS0_.exit:      ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2EOS1_.exit.i, %bb.bd
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.om, ptr noundef nonnull align 8 dereferenceable(3) %i.do, i64 3, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.at, %bb.aw, %_ZN12_GLOBAL__N_112ConstraintTyC2EOS0_.exit, %bb.as
  %i.on = load ptr, ptr %i.dk, align 8, !tbaa !8  ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.dl
  br i1 %i.oo, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111ConditionTyELj2EED2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef %i.on) #20
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111ConditionTyELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_111ConditionTyELj2EED2Ev.exit.i: ; preds = %bb.bf, %bb.be
  %i.op = load ptr, ptr %14, align 8, !tbaa !8    ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.de
  br i1 %i.oq, label %_ZN12_GLOBAL__N_112ConstraintTyD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111ConditionTyELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.op) #20
  br label %_ZN12_GLOBAL__N_112ConstraintTyD2Ev.exit

_ZN12_GLOBAL__N_112ConstraintTyD2Ev.exit:         ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111ConditionTyELj2EED2Ev.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.or = load i32, ptr %13, align 8
  %i.os = and i32 %i.or, 1
  %.not.i.i144 = icmp eq i32 %i.os, 0
  br i1 %.not.i.i144, label %bb.bh, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_112ConstraintTyD2Ev.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !145 ; 2 uses
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ow = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !145
  %i.oy = zext i32 %i.ou to i64                   ; 2 uses
  %i.oz = shl nuw nsw i64 %i.oy, 4
  %i.pa = add nuw nsw i64 %i.oy, 31
  %i.pb = lshr i64 %i.pa, 3
  %i.pc = and i64 %i.pb, 1073741820
  %i.pd = add nuw nsw i64 %i.pc, %i.oz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ox, i64 noundef %i.pd, i64 noundef 8) #20
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_112ConstraintTyD2Ev.exit, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.pe = load ptr, ptr %i.cc, align 8, !tbaa !8  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZN12_GLOBAL__N_113DecompositionD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit
  call void @free(ptr noundef %i.pe) #20
  br label %_ZN12_GLOBAL__N_113DecompositionD2Ev.exit

_ZN12_GLOBAL__N_113DecompositionD2Ev.exit:        ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ph = load ptr, ptr %i.cb, align 8, !tbaa !8  ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZN12_GLOBAL__N_113DecompositionD2Ev.exit145, label %bb.bk

bb.bk:                                            ; preds = %_ZN12_GLOBAL__N_113DecompositionD2Ev.exit
  call void @free(ptr noundef %i.ph) #20
  br label %_ZN12_GLOBAL__N_113DecompositionD2Ev.exit145

_ZN12_GLOBAL__N_113DecompositionD2Ev.exit145:     ; preds = %_ZN12_GLOBAL__N_113DecompositionD2Ev.exit, %bb.bk
end_hunk_1
