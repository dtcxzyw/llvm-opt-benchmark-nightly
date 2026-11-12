Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMTargetParser?download=true
inline.NumInlined: 883
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4llvm3ARM12parseCPUArchENS_9StringRefE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3ARM20fillValidCPUArchListERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %.0.idx8 = phi i64 [ 0, %bb.a ], [ %.0.add, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ] ; 2 uses
  %.0.ptr9 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.0.idx8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.ptr9, i64 16
  %i.d = load i32, ptr %i.c, align 16, !tbaa !41
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %.0.ptr9, align 16, !tbaa !31 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr9, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !132
  %.not.i = icmp ult i32 %i.e, %i.f
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %bb.d
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !46
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.0.add = add nuw nsw i64 %.0.idx8, 32          ; 2 uses
  %.not = icmp eq i64 %.0.add, 3072
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local { ptr, i64 } @_ZN4llvm3ARM23computeDefaultTargetABIERKNS_6TripleE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #19 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp eq i32 %i.h, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_ZN4llvm3ARM16parseArchProfileENS_9StringRefE(ptr %i.b, i64 %i.c)
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = icmp eq i32 %i.p, 27                     ; 2 uses
  %. = select i1 %i.q, i64 7, i64 8
  %.str.176..str.177 = select i1 %i.q, ptr @.str.176, ptr @.str.177
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 3 uses
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %switch.tableidx = add i32 %i.v, -5             ; 4 uses
  %i.w = icmp ult i32 %switch.tableidx, 46
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 35184372292623, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond31 = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond31, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %switch.tableidx18 = add i32 %i.s, -3           ; 4 uses
  %i.x = icmp ult i32 %switch.tableidx18, 15
  %switch.maskindex22 = trunc i32 %switch.tableidx18 to i16
  %switch.shifted23 = lshr i16 17155, %switch.maskindex22
  %switch.lobit24 = trunc i16 %switch.shifted23 to i1
  %or.cond32 = select i1 %i.x, i1 %switch.lobit24, i1 false
  br i1 %or.cond32, label %switch.lookup21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %i.v, 50
  %i.z = icmp eq i32 %i.s, 41
  %i.aa = or i1 %i.z, %i.y                        ; 2 uses
  %spec.select = select i1 %i.aa, i64 11, i64 5
  %spec.select30 = select i1 %i.aa, ptr @.str.178, ptr @.str.175
  br label %bb.i

switch.lookup:                                    ; preds = %bb.f
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm3ARM23computeDefaultTargetABIERKNS_6TripleE, i64 %i.ab
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ac = zext nneg i32 %switch.tableidx to i64
  %switch.gep16 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE, i64 %i.ac
  %switch.load17 = load ptr, ptr %switch.gep16, align 8
  br label %bb.i

switch.lookup21:                                  ; preds = %bb.g
  %i.ad = zext nneg i32 %switch.tableidx18 to i64
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm3ARM23computeDefaultTargetABIERKNS_6TripleE.2, i64 %i.ad
  %switch.load26 = load i8, ptr %switch.gep25, align 1
  %switch.ext27 = zext i8 %switch.load26 to i64
  %i.ae = zext nneg i32 %switch.tableidx18 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE.4, i64 %i.ae
  %switch.load29 = load ptr, ptr %switch.gep28, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup21, %switch.lookup, %bb.e, %bb.d, %bb.b, %bb.c
  %.sroa.10.0 = phi i64 [ %spec.select, %bb.h ], [ %., %bb.d ], [ 5, %bb.b ], [ 5, %bb.c ], [ %switch.ext, %switch.lookup ], [ 5, %bb.e ], [ %switch.ext27, %switch.lookup21 ]
  %.sroa.0.0 = phi ptr [ %spec.select30, %bb.h ], [ %.str.176..str.177, %bb.d ], [ @.str.175, %bb.b ], [ @.str.175, %bb.c ], [ %switch.load17, %switch.lookup ], [ @.str.175, %bb.e ], [ %switch.load29, %switch.lookup21 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #8 {
bb.a:
  switch i64 %2, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread [
    i64 0, label %bb.b
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #19 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp eq i32 %i.h, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef i32 @_ZN4llvm3ARM16parseArchProfileENS_9StringRefE(ptr %i.b, i64 %i.c)
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = icmp eq i32 %i.p, 27
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 3 uses
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %switch.tableidx = add i32 %i.v, -5             ; 3 uses
  %i.w = icmp ult i32 %switch.tableidx, 46
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 35184372292623, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  %switch.tableidx48 = add i32 %i.s, -3           ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx48, 15
  %switch.maskindex52 = trunc i32 %switch.tableidx48 to i16
  %switch.shifted53 = lshr i16 17155, %switch.maskindex52
  %switch.lobit54 = trunc i16 %switch.shifted53 to i1
  %or.cond58 = select i1 %i.x, i1 %switch.lobit54, i1 false
  br i1 %or.cond58, label %switch.lookup51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.v, 50
  %i.z = icmp eq i32 %i.s, 41
  %i.aa = or i1 %i.z, %i.y
  %spec.select57 = select i1 %i.aa, ptr @.str.178, ptr @.str.175
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a, %bb.e
  %.sroa.014.035 = phi ptr [ %1, %bb.a ], [ @.str.176, %bb.e ] ; 3 uses
  %i.ab = load i32, ptr %.sroa.014.035, align 1
  %i.ac = xor i32 %i.ab, 1668309345
  %i.ad = getelementptr i8, ptr %.sroa.014.035, i64 3
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 909210467
  %i.ag = or i32 %i.ac, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.a
  %.not.i4 = icmp ult i64 %2, 5
  br i1 %.not.i4, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread20, label %_ZNK4llvm9StringRef11starts_withES0_.exit

switch.lookup:                                    ; preds = %bb.g
  %3 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE, i64 %3
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit

switch.lookup51:                                  ; preds = %bb.h
  %i.ak = zext nneg i32 %switch.tableidx48 to i64
  %switch.gep55 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE.4, i64 %i.ak
  %switch.load56 = load ptr, ptr %switch.gep55, align 8
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.i, %switch.lookup51, %switch.lookup, %bb.f, %bb.d, %bb.c, %bb.e, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.sroa.014.02942 = phi ptr [ %1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %.sroa.014.035, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %spec.select57, %bb.i ], [ %switch.load, %switch.lookup ], [ @.str.175, %bb.f ], [ @.str.177, %bb.e ], [ @.str.175, %bb.c ], [ @.str.175, %bb.d ], [ %switch.load56, %switch.lookup51 ] ; 3 uses
  %i.al = load i32, ptr %.sroa.014.02942, align 1
  %i.am = xor i32 %i.al, 1668309345
  %i.an = getelementptr i8, ptr %.sroa.014.02942, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ap, 115
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit9

_ZNK4llvm9StringRef11starts_withES0_.exit.thread20: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.not.i7.not = icmp eq i64 %2, 4
  br i1 %.not.i7.not, label %_ZNK4llvm9StringRef11starts_withES0_.exit9, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit9:       ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread20
  %.sroa.014.0294347 = phi ptr [ %1, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread20 ], [ %.sroa.014.02942, %_ZNK4llvm9StringRef11starts_withES0_.exit ]
  %i.av = load i32, ptr %.sroa.014.0294347, align 1
  %i.aw = icmp ne i32 %i.av, 1935896673
  %i.ax = zext i1 %i.aw to i32
  %bcmp.i8.fr = freeze i32 %i.ax
  %i.ay = icmp eq i32 %bcmp.i8.fr, 0
  %spec.select = zext i1 %i.ay to i32
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit9, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread20, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.0 = phi i32 [ 2, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ 3, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread20 ], [ %spec.select, %_ZNK4llvm9StringRef11starts_withES0_.exit9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4llvm3ARM16getARMCPUForArchERKNS_6TripleENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #19 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.046.0 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]
  %.sroa.9.0 = phi i64 [ %i.d, %bb.b ], [ %2, %bb.a ]
  %i.e = tail call { ptr, i64 } @_ZN4llvm3ARM20getCanonicalArchNameENS_9StringRefE(ptr %.sroa.046.0, i64 %.sroa.9.0) #19 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 6 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60
  switch i32 %i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit27.thread60 [
    i32 3, label %bb.d
    i32 11, label %bb.d
    i32 12, label %bb.d
    i32 17, label %bb.d
    i32 15, label %bb.e
    i32 5, label %bb.f
    i32 9, label %bb.f
    i32 26, label %bb.f
    i32 27, label %bb.f
    i32 29, label %bb.f
    i32 30, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  switch i64 %i.g, label %.thread63 [
    i64 0, label %.thread64
    i64 2, label %_ZN4llvmeqENS_9StringRefES0_.exit
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.d
  %i.j = load i16, ptr %i.f, align 1
  %i.k = icmp ne i16 %i.j, 13942
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread64, label %_ZN4llvmeqENS_9StringRefES0_.exit23

_ZN4llvmeqENS_9StringRefES0_.exit23:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.n = load i16, ptr %i.f, align 1
  %i.o = icmp ne i16 %i.n, 14198
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread64, label %.thread63

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef i32 @_ZN4llvm3ARM16parseArchVersionENS_9StringRefE(ptr %i.f, i64 %i.g)
  %i.s = icmp samesign ult i32 %i.r, 8
  br i1 %i.s, label %.thread64, label %_ZN4llvmeqENS_9StringRefES0_.exit27.thread60

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  switch i64 %i.g, label %.thread63 [
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit27
    i64 0, label %.thread64
  ]

_ZN4llvmeqENS_9StringRefES0_.exit27:              ; preds = %bb.f
  %i.t = load i16, ptr %i.f, align 1
  %i.u = xor i16 %i.t, 14198
  %i.v = getelementptr i8, ptr %i.f, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i16
  %i.y = xor i16 %i.x, 107
  %i.z = or i16 %i.u, %i.y
  %i.aa = icmp ne i16 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread64, label %.thread63

_ZN4llvmeqENS_9StringRefES0_.exit27.thread60:     ; preds = %bb.c, %bb.e
  %i.ad = icmp eq i64 %i.g, 0
  br i1 %i.ad, label %.thread64, label %.thread63

.thread63:                                        ; preds = %bb.f, %bb.d, %_ZN4llvmeqENS_9StringRefES0_.exit23, %_ZN4llvmeqENS_9StringRefES0_.exit27, %_ZN4llvmeqENS_9StringRefES0_.exit27.thread60
  %i.ae = tail call { ptr, i64 } @_ZN4llvm3ARM20getCanonicalArchNameENS_9StringRefE(ptr %i.f, i64 %i.g) #19 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = tail call { ptr, i64 } @_ZN4llvm3ARM14getArchSynonymENS_9StringRefE(ptr %i.af, i64 %i.ag) #19
  %.fr.i.i = freeze { ptr, i64 } %i.ah            ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %.fr.i.i, 0
  %i.aj = extractvalue { ptr, i64 } %.fr.i.i, 1   ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = sub i64 0, %i.aj
  br i1 %i.ak, label %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.i, label %.split.i.i

.split.i.i:                                       ; preds = %.thread63, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i.i
  %.021.idx26.i.i = phi i64 [ %.021.add.i.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i.i ], [ 0, %.thread63 ] ; 3 uses
  %.021.ptr27.i.i = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML12ARMArchNamesE, i64 %.021.idx26.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.021.ptr27.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.an, %i.aj
  br i1 %.not.i.i.i, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i.i, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i

_ZNK4llvm9StringRef9ends_withES0_.exit.i.i:       ; preds = %.split.i.i
  %i.ao = load ptr, ptr %.021.ptr27.i.i, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.al
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aq, ptr %i.ai, i64 %i.aj)
  %i.ar = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ar, label %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.i, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i.i

_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i.i: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i, %.split.i.i
  %.021.add.i.i = add nuw nsw i64 %.021.idx26.i.i, 72 ; 2 uses
  %.not.i.i = icmp eq i64 %.021.add.i.i, 3096
  br i1 %.not.i.i, label %_ZN4llvm3ARM13getDefaultCPUENS_9StringRefE.exit.thread, label %.split.i.i

_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.i:     ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i, %.thread63
  %i.as = phi i64 [ 0, %.thread63 ], [ %.021.idx26.i.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML12ARMArchNamesE, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !19 ; 5 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm3ARM13getDefaultCPUENS_9StringRefE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.i, %bb.k
  %.0.idx21.i = phi i64 [ %.0.add.i.3, %bb.k ], [ 0, %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.i ] ; 5 uses
  %.0.ptr22.i = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.0.idx21.i ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.ptr22.i, i64 16
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !41
  %i.az = icmp eq i32 %i.ay, %i.av
  br i1 %i.az, label %bb.g, label %.preheader.i.1

bb.g:                                             ; preds = %.preheader.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.ptr22.i, i64 20
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !42, !range !43, !noundef !44
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN4llvm3ARM13getDefaultCPUENS_9StringRefE.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.g, %.preheader.i
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.0.idx21.i ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load i32, ptr %i.be, align 16, !tbaa !41
  %i.bg = icmp eq i32 %i.bf, %i.av
  br i1 %i.bg, label %bb.h, label %.preheader.i.2

bb.h:                                             ; preds = %.preheader.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !42, !range !43, !noundef !44
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZN4llvm3ARM13getDefaultCPUENS_9StringRefE.exit.split.loop.exit106, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.h, %.preheader.i.1
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.0.idx21.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load i32, ptr %i.bl, align 16, !tbaa !41
  %i.bn = icmp eq i32 %i.bm, %i.av
  br i1 %i.bn, label %bb.i, label %.preheader.i.3

bb.i:                                             ; preds = %.preheader.i.2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 84
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !42, !range !43, !noundef !44
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN4llvm3ARM13getDefaultCPUENS_9StringRefE.exit.split.loop.exit104, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %bb.i, %.preheader.i.2
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.0.idx21.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.bt = load i32, ptr %i.bs, align 16, !tbaa !41
  %i.bu = icmp eq i32 %i.bt, %i.av
  br i1 %i.bu, label %bb.j, label %bb.k
end_hunk_0
