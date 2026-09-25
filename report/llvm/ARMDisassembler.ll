Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMDisassembler?download=true
inline.NumInlined: 11263
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL27DecodeThumbBCCTargetOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE:bb.a
  br i1 %i.g, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.b to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !96

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 2, i64 %i.h)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 2 uses
  store i8 2, ptr %i.p, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.q = load i32, ptr %i.j, align 8, !tbaa !83
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZL22DecodePredicateOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 15
  br i1 %i.a, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.c = icmp eq i32 %i.b, 4465
  %i.d = icmp eq i32 %1, 14                       ; 3 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = zext i32 %i.b to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  %i.m = and i64 %i.l, 4194304
  %.not = icmp eq i64 %i.m, 0
  %spec.select = select i1 %.not, i32 1, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i32 [ 3, %bb.c ], [ %spec.select, %bb.d ] ; 4 uses
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !83   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !96

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 2, i64 %i.n)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.g:                                             ; preds = %bb.e
  %i.t = zext i32 %i.q to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.t ; 2 uses
  store i8 2, ptr %i.v, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.w = load i32, ptr %i.p, align 8, !tbaa !83
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.p, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.f, %bb.g
  %i.y = load i32, ptr %i.p, align 8, !tbaa !83   ; 3 uses
  %i.z = load i32, ptr %i.r, align 4, !tbaa !89
  %.not.i.i18 = icmp ult i32 %i.y, %i.z           ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  br i1 %.not.i.i18, label %bb.j, label %bb.i, !prof !96

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 1, i64 0)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20

bb.j:                                             ; preds = %bb.h
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  store i8 1, ptr %i.ac, align 1
  %.sroa.4.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i19, align 1
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !83
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20

bb.k:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  br i1 %.not.i.i18, label %bb.m, label %bb.l, !prof !96

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 1, i64 3)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20

bb.m:                                             ; preds = %bb.k
  %i.af = zext i32 %i.y to i64
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  store i8 1, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.i22, align 1
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !83
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit20: ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.026, %bb.m ], [ %.026, %bb.l ], [ %.026, %bb.j ], [ %.026, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL20DecodeThumbBROperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 21
  %i.b = ashr exact i32 %i.a, 20                  ; 2 uses
  %i.c = trunc i64 %2 to i32
  %i.d = add i32 %i.c, 4
  %i.e = add i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm14MCDisassembler24tryAddingSymbolicOperandERNS_6MCInstElmbmmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.f, i64 noundef %2, i1 noundef zeroext true, i64 noundef 0, i64 noundef 0, i64 noundef 2) #19
  br i1 %i.g, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.b to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !96

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 2, i64 %i.h)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 2 uses
  store i8 2, ptr %i.p, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.q = load i32, ptr %i.j, align 8, !tbaa !83
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZL8DecodeITRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = and i32 %i.a, 15                         ; 2 uses
  %i.c = and i32 %1, 15                           ; 3 uses
  %i.d = icmp eq i32 %i.b, 15                     ; 2 uses
  %spec.select = select i1 %i.d, i32 14, i32 %i.b ; 2 uses
  %spec.select20 = select i1 %i.d, i32 1, i32 3   ; 2 uses
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %spec.select, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i32 0, %1
  %i.h = and i32 %1, %i.g
  %.neg = mul nuw i32 %i.h, 14
  %i.i = and i32 %.neg, 14
  %i.j = xor i32 %i.i, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017 = phi i32 [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  %i.k = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !83   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 2, i64 %i.k)
  %.pre = load i32, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.f:                                             ; preds = %bb.d
  %i.q = zext i32 %i.n to i64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  store i8 2, ptr %i.s, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.t = load i32, ptr %i.m, align 8, !tbaa !83
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.e, %bb.f
  %i.v = phi i32 [ %.pre, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = zext nneg i32 %.017 to i64               ; 2 uses
  %i.x = load i32, ptr %i.o, align 4, !tbaa !89
  %.not.i.i22 = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i22, label %bb.h, label %bb.g, !prof !96

bb.g:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 2, i64 %i.w)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit24

bb.h:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.y ; 2 uses
  store i8 2, ptr %i.aa, align 1
  %.sroa.4.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx.i.i23, align 1
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !83
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit24

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit24: ; preds = %bb.h, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select20, %bb.g ], [ %spec.select20, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL18DecodeCCOutOperandRN4llvm6MCInstEPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree readnone captures(address) %.48.val, ptr nofree readnone captures(address) %.56.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %.48.val, %.56.val
  %.sroa.3.8.insert.ext.i = select i1 %.not, i64 3, i64 0 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 1, i64 %.sroa.3.8.insert.ext.i)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f ; 2 uses
  store i8 1, ptr %i.h, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.3.8.insert.ext.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !83
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL18DecodeCCOutOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !89
  %.not.i.i4 = icmp ult i32 %i.c, %i.e            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i4, label %bb.d, label %bb.c, !prof !96

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 1, i64 3)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f ; 2 uses
  store i8 1, ptr %i.h, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !83
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i.i4, label %bb.g, label %bb.f, !prof !96

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 1, i64 0)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.g:                                             ; preds = %bb.e
  %i.k = zext i32 %i.c to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  store i8 1, ptr %i.m, align 1
  %.sroa.4.0..sroa_idx.i.i5 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i5, align 1
  %i.n = load i32, ptr %i.b, align 8, !tbaa !83
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 1, 4) i32 @_ZL21DecodeSORegImmOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 15                           ; 2 uses
  %i.b = lshr i32 %1, 5
  %i.c = and i32 %i.b, 3
  %i.d = lshr i32 %1, 7
  %i.e = and i32 %i.d, 31                         ; 2 uses
  switch i32 %i.a, label %.thread.i [
    i32 13, label %bb.b
    i32 15, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = and i64 %i.i, 8796093022208
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %.thread.i

.thread.i:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.011.i = phi i32 [ 3, %bb.b ], [ 1, %bb.c ], [ 3, %bb.a ]
  %i.k = zext nneg i32 %i.a to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i = zext i16 %i.m to i64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !89
  %.not.i.i.i.i = icmp ult i32 %i.p, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !prof !96

bb.d:                                             ; preds = %.thread.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  br label %bb.f

bb.e:                                             ; preds = %.thread.i
  %i.s = zext i32 %i.p to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  store i8 1, ptr %i.u, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.v = load i32, ptr %i.o, align 8, !tbaa !83
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !83
end_hunk_0
