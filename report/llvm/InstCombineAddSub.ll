Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineAddSub?download=true
inline.NumInlined: 7618
inline.NumDeleted: 2961
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_17FAddend21drillValueDownOneStepEPN4llvm5ValueERS0_S4_:bb.a
_ZN12_GLOBAL__N_17FAddend3setEPKN4llvm10ConstantFPEPNS1_5ValueE.exit95: ; preds = %bb.ag, %bb.ah
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.ch, align 1, !tbaa !260
  store i8 1, ptr %i.cc, align 8, !tbaa !259
  store ptr %i.ca, ptr %1, align 8, !tbaa !258
  br label %.critedge75

.critedge:                                        ; preds = %_ZNK4llvm4User10getOperandEj.exit92
  %i.ci = load i8, ptr %i.ca, align 8, !tbaa !31
  %.not102 = icmp eq i8 %i.ci, 7
  br i1 %.not102, label %bb.ai, label %.critedge75

bb.ai:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_17FAddend3setEPKN4llvm10ConstantFPEPNS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ca, ptr noundef nonnull %i.by)
  br label %.critedge75

.critedge75:                                      ; preds = %bb.c, %.critedge, %bb.ai, %_ZN12_GLOBAL__N_17FAddend3setEPKN4llvm10ConstantFPEPNS1_5ValueE.exit95, %_ZN12_GLOBAL__N_17FAddend3setERKN4llvm7APFloatEPNS1_5ValueE.exit, %_ZN12_GLOBAL__N_17FAddend6negateEv.exit.thread, %bb.a, %bb.b
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.ai ], [ 1, %_ZN12_GLOBAL__N_17FAddend3setEPKN4llvm10ConstantFPEPNS1_5ValueE.exit95 ], [ %i.bh, %_ZN12_GLOBAL__N_17FAddend6negateEv.exit.thread ], [ 1, %_ZN12_GLOBAL__N_17FAddend3setERKN4llvm7APFloatEPNS1_5ValueE.exit ], [ 0, %.critedge ], [ 0, %bb.c ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_111FAddCombine12simplifyFAddERN4llvm11SmallVectorIPKNS_7FAddendELj4EEEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::APFloat", align 8     ; 12 uses
  %10 = alloca [3 x %"class.(anonymous namespace)::FAddend"], align 16 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.509", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %10, i8 0, i64 12, i1 false)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.ptr.1, i8 0, i64 12, i1 false)
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %10, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.ptr.2, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.c, ptr %11, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 15 uses
  store i32 0, ptr %i.d, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 5 uses
  store i32 4, ptr %i.e, align 4, !tbaa !146
  %.not85 = icmp eq i32 %i.b, 0
  br i1 %.not85, label %._crit_edge84.thread, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %bb.a
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  br label %.lr.ph83

._crit_edge84:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64
  %.pre95 = load i32, ptr %i.d, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq i32 %.pre95, 0
  br i1 %.not.i, label %._crit_edge84.thread, label %.lr.ph.i.preheader.i

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64
  %indvars.iv90.a = phi i64 [ 0, %.lr.ph83.preheader ], [ %indvars.iv.next91.pre-phi, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph83.preheader ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64 ] ; 2 uses
  %.03980 = phi i32 [ 0, %.lr.ph83.preheader ], [ %.2, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64 ] ; 4 uses
  %.val51 = load ptr, ptr %1, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val51, i64 %indvars.iv90.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !801  ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.lr.ph83._ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64_crit_edge, label %bb.b

.lr.ph83._ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64_crit_edge: ; preds = %.lr.ph83
  %.pre96 = add nuw nsw i64 %indvars.iv90.a, 1
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64

bb.b:                                             ; preds = %.lr.ph83
  %.val53 = load ptr, ptr %i.h, align 8, !tbaa !258
  %i.i = load i32, ptr %i.d, align 8, !tbaa !142  ; 9 uses
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !146
  %.not.i56 = icmp ult i32 %i.i, %i.k
  br i1 %.not.i56, label %bb.d, label %bb.c, !prof !147

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.h)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %11, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.j
  store ptr %i.h, ptr %i.l, align 1
  %i.m = load i32, ptr %i.d, align 8, !tbaa !142
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.d, align 8, !tbaa !142
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit: ; preds = %bb.c, %bb.d
  %i.o = add nuw nsw i64 %indvars.iv90.a, 1       ; 6 uses
  %i.p = icmp samesign ult i64 %i.o, %i.f
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit
  %i.q = add i32 %i.i, 1                          ; 3 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %.not46 = icmp eq i32 %i.r, %i.q
  br i1 %.not46, label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64, label %bb.i

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59 ], [ %indvars.iv, %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit ] ; 2 uses
  %.val50 = load ptr, ptr %1, align 8, !tbaa !148
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val50, i64 %indvars.iv87 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !801  ; 4 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.val52 = load ptr, ptr %i.t, align 8, !tbaa !258
  %i.u = icmp eq ptr %.val52, %.val53
  br i1 %i.u, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.s, align 8, !tbaa !801
  %i.v = load i32, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.w = load i32, ptr %i.e, align 4, !tbaa !146
  %.not.i57 = icmp ult i32 %i.v, %i.w
  br i1 %.not.i57, label %bb.h, label %bb.g, !prof !147

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.t)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59

bb.h:                                             ; preds = %bb.f
  %i.x = zext i32 %i.v to i64
  %.val.i58 = load ptr, ptr %11, align 8, !tbaa !148
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i58, i64 %i.x
  store ptr %i.t, ptr %i.y, align 1
  %i.z = load i32, ptr %i.d, align 8, !tbaa !142
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !142
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59

_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit59: ; preds = %bb.h, %bb.g, %bb.e, %.lr.ph
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next88 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !795

bb.i:                                             ; preds = %._crit_edge
  %i.ab = add nuw i32 %.03980, 1                  ; 4 uses
  %i.ac = zext i32 %.03980 to i64
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %10, i64 %i.ac ; 14 uses
  %.val48 = load ptr, ptr %11, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val48, i64 %i.j
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !801 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !258
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !258
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val.i.i = load i8, ptr %i.ai, align 8, !tbaa !259, !range !136, !noundef !76
  %i.aj = trunc nuw i8 %.val.i.i to i1
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !303
  store i8 0, ptr %i.ah, align 8, !tbaa !259
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  store i16 %i.al, ptr %i.am, align 2, !tbaa !303
  br label %_ZN12_GLOBAL__N_17FAddendaSERKS0_.exit

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !259, !range !136, !noundef !76
  %i.ap = trunc nuw i8 %.val.i.i.i to i1
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef3setERKN4llvm7APFloatE.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_111FAddendCoef3setERKN4llvm7APFloatE.exit.i.i

_ZN12_GLOBAL__N_111FAddendCoef3setERKN4llvm7APFloatE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  store i8 1, ptr %i.ar, align 1, !tbaa !260
  store i8 1, ptr %i.ah, align 8, !tbaa !259
  %.pre = load i32, ptr %i.d, align 8, !tbaa !142
  br label %_ZN12_GLOBAL__N_17FAddendaSERKS0_.exit

_ZN12_GLOBAL__N_17FAddendaSERKS0_.exit:           ; preds = %bb.j, %_ZN12_GLOBAL__N_111FAddendCoef3setERKN4llvm7APFloatE.exit.i.i
  %i.as = phi i32 [ %i.r, %bb.j ], [ %.pre, %_ZN12_GLOBAL__N_111FAddendCoef3setERKN4llvm7APFloatE.exit.i.i ] ; 2 uses
  %i.at = icmp ugt i32 %i.as, %i.q
  br i1 %i.at, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %_ZN12_GLOBAL__N_17FAddendaSERKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 10 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  br label %bb.q

._crit_edge79:                                    ; preds = %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit, %_ZN12_GLOBAL__N_17FAddendaSERKS0_.exit
  %.lcssa = phi i32 [ %i.as, %_ZN12_GLOBAL__N_17FAddendaSERKS0_.exit ], [ %i.cx, %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit ] ; 3 uses
  %i.ax = icmp eq i32 %i.i, %.lcssa
  br i1 %i.ax, label %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE6resizeEm.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge79
  %i.ay = icmp ult i32 %i.i, %.lcssa
  br i1 %i.ay, label %.sink.split.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.e, align 4, !tbaa !146
  %i.ba = icmp ugt i32 %i.i, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE7reserveEm.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.c, i64 noundef range(i64 0, 4294967296) %i.j, i64 noundef 8) #16
  %.val12.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !142
  br label %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE7reserveEm.exit.i.i: ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.in = phi i32 [ %.lcssa, %bb.o ], [ %.val12.pre.i.i, %bb.p ] ; 2 uses
  %.not13.i.i = icmp eq i32 %i.i, %.pre-phi.i.i.in
  br i1 %.not13.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %.val11.i.i = load ptr, ptr %11, align 8, !tbaa !148
  %i.bb = getelementptr [8 x i8], ptr %.val11.i.i, i64 %.pre-phi.i.i
  %i.bc = sub nsw i64 %i.j, %.pre-phi.i.i
  %i.bd = shl nsw i64 %i.bc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.bd, i1 false), !tbaa !801
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE7reserveEm.exit.i.i, %bb.n
  store i32 %i.i, ptr %i.d, align 8, !tbaa !142
  br label %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE6resizeEm.exit: ; preds = %._crit_edge79, %.sink.split.i.i
  %.val.i.i60 = load i8, ptr %i.ah, align 8, !tbaa !259, !range !136, !noundef !76
  %i.be = trunc nuw i8 %.val.i.i60 to i1
  br i1 %i.be, label %_ZNK12_GLOBAL__N_17FAddend6isZeroEv.exit, label %.split

.split:                                           ; preds = %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE6resizeEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !303
  %.not.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64, label %bb.at

_ZNK12_GLOBAL__N_17FAddend6isZeroEv.exit:         ; preds = %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FAddendEE6resizeEm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !61
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %.0.i.i.i.i.i.sroa.sel = select i1 %.not.i.i.i.i.i, ptr %.sroa.gep, ptr %.sroa.gep74
  %i.bl = load i8, ptr %.0.i.i.i.i.i.sroa.sel, align 4
  %i.bm = and i8 %i.bl, 7
  %i.bn = icmp eq i8 %i.bm, 3
  br i1 %i.bn, label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64, label %bb.at

bb.q:                                             ; preds = %.lr.ph78, %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit
  %.03677 = phi i32 [ %i.q, %.lr.ph78 ], [ %13, %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit ] ; 2 uses
  %12 = zext i32 %.03677 to i64
  %.val = load ptr, ptr %11, align 8, !tbaa !148
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %12
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !801 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val14.i.i = load i8, ptr %i.ah, align 8, !tbaa !259, !range !136, !noundef !76 ; 2 uses
  %i.br = trunc nuw i8 %.val14.i.i to i1          ; 2 uses
  %.val13.i.i = load i8, ptr %i.bq, align 8, !tbaa !259, !range !136, !noundef !76
  %.not.i.i61 = icmp eq i8 %.val14.i.i, %.val13.i.i
  br i1 %.not.i.i61, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  br i1 %i.br, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !303
  %i.bu = load i16, ptr %i.av, align 2, !tbaa !303
  %i.bv = add i16 %i.bu, %i.bt
  store i16 %i.bv, ptr %i.av, align 2, !tbaa !303
  br label %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !61
  %.not.i.i.i = icmp eq ptr %i.bx, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = call noundef i32 @_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit

bb.v:                                             ; preds = %bb.t
  %i.bz = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit

bb.w:                                             ; preds = %bb.q
  br i1 %i.br, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 6 uses
  %i.cc = load i16, ptr %i.av, align 2, !tbaa !303 ; 3 uses
  %i.cd = icmp sgt i16 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ce = zext nneg i16 %i.cc to i64              ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.cb, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i73, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(29) %i.cb, i64 noundef %i.ce) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit

bb.aa:                                            ; preds = %bb.y
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(29) %i.cb, i64 noundef %i.ce) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit

bb.ab:                                            ; preds = %bb.x
  %i.cf = sext i16 %i.cc to i64
  %i.cg = sub nsw i64 0, %i.cf                    ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.cb, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i6.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(29) %i.cb, i64 noundef %i.cg) #16
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit7.i

bb.ad:                                            ; preds = %bb.ab
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(29) %i.cb, i64 noundef %i.cg) #16
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit7.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit7.i: ; preds = %bb.ad, %bb.ac
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !61
  %.not.i.i72 = icmp eq ptr %i.ch, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i72, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit7.i
  call void @_ZN4llvm6detail9IEEEFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit

bb.af:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit7.i
  call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit

_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit: ; preds = %bb.z, %bb.aa, %bb.ae, %bb.af
  store i8 1, ptr %i.aw, align 1, !tbaa !260
  store i8 1, ptr %i.ah, align 8, !tbaa !259
  %i.ci = load ptr, ptr %i.au, align 8, !tbaa !61
  %.not.i15.i.i = icmp eq ptr %i.ci, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i15.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit
  %i.cj = call noundef i32 @_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_111FAddendCoef15convertToFpTypeERKN4llvm12fltSemanticsE.exit
  %i.ck = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !61 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !303 ; 2 uses
  %i.co = sext i16 %i.cn to i32                   ; 2 uses
  %i.cp = icmp sgt i16 %i.cn, -1
  br i1 %i.cp, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cq = zext nneg i32 %i.co to i64              ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.cl, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i70, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(29) %i.cl, i64 noundef %i.cq) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit

bb.al:                                            ; preds = %bb.aj
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(29) %i.cl, i64 noundef %i.cq) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit

bb.am:                                            ; preds = %bb.ai
  %i.cr = sub nsw i32 0, %i.co
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.cl, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i5.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(29) %i.cl, i64 noundef %i.cs) #16
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit6.i

bb.ao:                                            ; preds = %bb.am
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(29) %i.cl, i64 noundef %i.cs) #16
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit6.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit6.i: ; preds = %bb.ao, %bb.an
  %i.ct = load ptr, ptr %9, align 8, !tbaa !61, !alias.scope !802
  %.not.i.i69 = icmp eq ptr %i.ct, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i69, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit6.i
  call void @_ZN4llvm6detail9IEEEFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit

bb.aq:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit6.i
  call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit

_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit: ; preds = %bb.ak, %bb.al, %bb.ap, %bb.aq
  %i.cu = load ptr, ptr %i.au, align 8, !tbaa !61
  %.not.i18.i.i = icmp eq ptr %i.cu, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i18.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit
  %i.cv = call noundef i32 @_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit20.i.i

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_111FAddendCoef20createAPFloatFromIntERKN4llvm12fltSemanticsEi.exit
  %i.cw = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit20.i.i

_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit20.i.i: ; preds = %bb.as, %bb.ar
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit

_ZN12_GLOBAL__N_17FAddendpLERKS0_.exit:           ; preds = %bb.s, %bb.u, %bb.v, %bb.ag, %bb.ah, %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit20.i.i
  %13 = add nuw i32 %.03677, 1                    ; 2 uses
  %i.cx = load i32, ptr %i.d, align 8, !tbaa !142 ; 2 uses
  %14 = icmp ugt i32 %i.cx, %13
  br i1 %14, label %bb.q, label %._crit_edge79, !llvm.loop !798

bb.at:                                            ; preds = %.split, %_ZNK12_GLOBAL__N_17FAddend6isZeroEv.exit
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !146
  %.not.i62 = icmp ult i32 %i.i, %i.cy
  br i1 %.not.i62, label %bb.av, label %bb.au, !prof !147

bb.au:                                            ; preds = %bb.at
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.ad)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64

bb.av:                                            ; preds = %bb.at
  %.val.i63 = load ptr, ptr %11, align 8, !tbaa !148
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i63, i64 %i.j
  store ptr %i.ad, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.d, align 8, !tbaa !142
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.d, align 8, !tbaa !142
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64

_ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64: ; preds = %.lr.ph83._ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64_crit_edge, %bb.av, %bb.au, %.split, %._crit_edge, %_ZNK12_GLOBAL__N_17FAddend6isZeroEv.exit
  %indvars.iv.next91.pre-phi = phi i64 [ %.pre96, %.lr.ph83._ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64_crit_edge ], [ %i.o, %bb.av ], [ %i.o, %bb.au ], [ %i.o, %.split ], [ %i.o, %._crit_edge ], [ %i.o, %_ZNK12_GLOBAL__N_17FAddend6isZeroEv.exit ] ; 2 uses
  %.2 = phi i32 [ %.03980, %.lr.ph83._ZN4llvm23SmallVectorTemplateBaseIPKN12_GLOBAL__N_17FAddendELb1EE9push_backES4_.exit64_crit_edge ], [ %i.ab, %bb.av ], [ %i.ab, %bb.au ], [ %i.ab, %.split ], [ %.03980, %._crit_edge ], [ %i.ab, %_ZNK12_GLOBAL__N_17FAddend6isZeroEv.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond94.not = icmp eq i64 %indvars.iv.next91.pre-phi, %i.f
  br i1 %exitcond94.not, label %._crit_edge84, label %.lr.ph83, !llvm.loop !799

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge84
  %.val54 = load ptr, ptr %11, align 8, !tbaa !148 ; 3 uses
  %i.dc = zext i32 %.pre95 to i64
  %.idx.i.i = shl nuw nsw i64 %i.dc, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %.val54, i64 %.idx.i.i ; 2 uses
  %i.de = add i32 %.pre95, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.az, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.do, %bb.az ], [ %.val54, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0154.i.i = phi i32 [ %.2.i.i, %bb.az ], [ %i.de, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.df = load ptr, ptr %.05.i.i, align 8, !tbaa !801 ; 3 uses
  %.val.i.i65 = load ptr, ptr %i.df, align 8, !tbaa !258 ; 2 uses
  %i.dg = icmp eq ptr %.val.i.i65, null
  br i1 %i.dg, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i
  %i.dh = load i8, ptr %.val.i.i65, align 8, !tbaa !31
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dh, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val18.i.i = load i8, ptr %i.di, align 8, !tbaa !259, !range !136, !noundef !76
  %i.dj = getelementptr i8, ptr %i.df, i64 10
  %.val19.i.i = load i16, ptr %i.dj, align 2      ; 2 uses
  %i.dk = trunc nuw i8 %.val18.i.i to i1          ; 2 uses
  %i.dl = icmp ne i16 %.val19.i.i, -1
  %spec.select.i.not.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %spec.select.i.not.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dm = icmp ne i16 %.val19.i.i, 1
  %spec.select.i24.not.i.i = select i1 %i.dk, i1 true, i1 %i.dm
  %i.dn = zext i1 %spec.select.i24.not.i.i to i32
  %spec.select.i.i = add i32 %.0154.i.i, %i.dn
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %.lr.ph.i.i
  %.2.i.i = phi i32 [ %.0154.i.i, %bb.aw ], [ %.0154.i.i, %.lr.ph.i.i ], [ %.0154.i.i, %bb.ax ], [ %spec.select.i.i, %bb.ay ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.do, %i.dd
  br i1 %.not.i.i66, label %_ZN12_GLOBAL__N_111FAddCombine15calcInstrNumberERKN4llvm11SmallVectorIPKNS_7FAddendELj4EEE.exit.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_111FAddCombine15calcInstrNumberERKN4llvm11SmallVectorIPKNS_7FAddendELj4EEE.exit.i: ; preds = %bb.az
  %i.dp = icmp ugt i32 %.2.i.i, %2
  br i1 %i.dp, label %_ZN12_GLOBAL__N_111FAddCombine14createNaryFAddERKN4llvm11SmallVectorIPKNS_7FAddendELj4EEEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_111FAddCombine15calcInstrNumberERKN4llvm11SmallVectorIPKNS_7FAddendELj4EEE.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.ba

._crit_edge.i:                                    ; preds = %_ZN12_GLOBAL__N_111FAddCombine10createFAddEPN4llvm5ValueES3_.exit.i
  %i.dw = trunc nuw i8 %.1.i to i1
  br i1 %i.dw, label %bb.br, label %_ZN12_GLOBAL__N_111FAddCombine14createNaryFAddERKN4llvm11SmallVectorIPKNS_7FAddendELj4EEEj.exit

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_111FAddCombine10createFAddEPN4llvm5ValueES3_.exit.i, %.lr.ph.i
  %.07.i = phi ptr [ %.val54, %.lr.ph.i ], [ %i.gf, %_ZN12_GLOBAL__N_111FAddCombine10createFAddEPN4llvm5ValueES3_.exit.i ] ; 2 uses
  %.0266.i = phi i8 [ 0, %.lr.ph.i ], [ %.1.i, %_ZN12_GLOBAL__N_111FAddCombine10createFAddEPN4llvm5ValueES3_.exit.i ] ; 3 uses
  %.0275.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i, %_ZN12_GLOBAL__N_111FAddCombine10createFAddEPN4llvm5ValueES3_.exit.i ] ; 4 uses
  %i.dx = load ptr, ptr %.07.i, align 8, !tbaa !801 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %.val.i36.i = load ptr, ptr %i.dx, align 8, !tbaa !258 ; 5 uses
  %i.dz = icmp eq ptr %.val.i36.i, null
  br i1 %i.dz, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !248
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !30 ; 2 uses
  %.val.i.i.i68 = load i8, ptr %i.dy, align 8, !tbaa !259, !range !136, !noundef !76
  %i.ed = trunc nuw i8 %.val.i.i.i68 to i1
  br i1 %i.ed, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !303
  %i.eg = sitofp i16 %i.ef to double
  %i.eh = call noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeEd(ptr noundef %i.ec, double noundef %i.eg) #16
  br label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !282, !nonnull !76, !align !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ek = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.ej) #16
  br label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i

bb.be:                                            ; preds = %bb.ba
  %.val25.i.i = load i8, ptr %i.dy, align 8, !tbaa !259, !range !136, !noundef !76
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  %.val26.i.i = load i16, ptr %i.el, align 2      ; 5 uses
  %i.em = trunc nuw i8 %.val25.i.i to i1          ; 3 uses
  %i.en = xor i1 %i.em, true
  %i.eo = icmp eq i16 %.val26.i.i, -1             ; 2 uses
  %i.ep = icmp eq i16 %.val26.i.i, 1
  %i.eq = or i1 %i.eo, %i.ep
  %or.cond.i.i = select i1 %i.en, i1 %i.eq, i1 false
  br i1 %or.cond.i.i, label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.er = icmp ne i16 %.val26.i.i, 2
  %i.es = icmp ne i16 %.val26.i.i, -2             ; 2 uses
  %.not47.i.i = and i1 %i.er, %i.es
  %or.cond44.not.i.i = select i1 %i.em, i1 true, i1 %.not47.i.i
  br i1 %or.cond44.not.i.i, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i37.i = xor i1 %i.es, true                ; 2 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !803, !nonnull !76, !align !77
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i16 257, ptr %i.dq, align 8
  %i.eu = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFAddFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.et, ptr noundef nonnull %.val.i36.i, ptr noundef nonnull %.val.i36.i, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !31
  %i.ew = icmp ult i8 %i.ev, 30
  br i1 %i.ew, label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val.i39.i.i = load ptr, ptr %i.dr, align 8, !tbaa !248 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i39.i.i, i64 48
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.ex, align 8, !tbaa !804
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store ptr %.sroa.01.0.copyload.i.i.i.i, ptr %i.ey, align 8, !tbaa !804
  %i.ez = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %.val.i39.i.i) #17
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.eu, i32 %i.ez) #16
  br label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i

bb.bi:                                            ; preds = %bb.bf
  %i.fa = load ptr, ptr %i.dr, align 8, !tbaa !248
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !30 ; 2 uses
  br i1 %i.em, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fd = sitofp i16 %.val26.i.i to double
  %i.fe = call noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeEd(ptr noundef %i.fc, double noundef %i.fd) #16
  br label %_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !282, !nonnull !76, !align !77
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.fh = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fg) #16
  br label %_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i

_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i: ; preds = %bb.bk, %bb.bj
  %i.fi = phi ptr [ %i.fe, %bb.bj ], [ %i.fh, %bb.bk ]
  %i.fj = load ptr, ptr %0, align 8, !tbaa !803, !nonnull !76, !align !77
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i16 257, ptr %i.ds, align 8
  %i.fk = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.fj, ptr noundef nonnull %.val.i36.i, ptr noundef %i.fi, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !31
  %i.fm = icmp ult i8 %i.fl, 30
  br i1 %i.fm, label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i
  %.val.i42.i.i = load ptr, ptr %i.dr, align 8, !tbaa !248 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i42.i.i, i64 48
  %.sroa.01.0.copyload.i.i43.i.i = load ptr, ptr %i.fn, align 8, !tbaa !804
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %.sroa.01.0.copyload.i.i43.i.i, ptr %i.fo, align 8, !tbaa !804
  %i.fp = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %.val.i42.i.i) #17
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, i32 %i.fp) #16
  br label %_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i

_ZN12_GLOBAL__N_111FAddCombine15createAddendValERKNS_7FAddendERb.exit.i: ; preds = %bb.bl, %_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc
  %.02.shrunk.i = phi i1 [ false, %bb.bd ], [ false, %bb.bc ], [ %.not.i37.i, %bb.bh ], [ false, %_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i ], [ false, %bb.bl ], [ %.not.i37.i, %bb.bg ], [ %i.eo, %bb.be ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ek, %bb.bd ], [ %i.eh, %bb.bc ], [ %i.eu, %bb.bh ], [ %i.fk, %_ZNK12_GLOBAL__N_111FAddendCoef8getValueEPN4llvm4TypeE.exit41.i.i ], [ %i.fk, %bb.bl ], [ %i.eu, %bb.bg ], [ %.val.i36.i, %bb.be ] ; 4 uses
end_hunk_0
