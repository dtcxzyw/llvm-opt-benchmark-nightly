Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5375
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h00af35ac075ac1feE:bb.a
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7458, !noalias !7461, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7458, !noalias !7461, !noundef !8
  %.neg4 = add i64 %i.d, %i.b
  %i.i = add i64 %i.f, %i.h
  %i.j = sub i64 %.neg4, %i.i
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h27650402490fa2a5E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7463, !noalias !7466, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7463, !noalias !7466, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7463, !noalias !7466, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7463, !noalias !7466, !noundef !8
  %.neg4 = add i64 %i.d, %i.b
  %i.i = add i64 %i.f, %i.h
  %i.j = sub i64 %.neg4, %i.i
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hb02f459766656d72E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7468, !noalias !7471, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7468, !noalias !7471, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7468, !noalias !7471, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7468, !noalias !7471, !noundef !8
  %.neg4 = add i64 %i.d, %i.b
  %i.i = add i64 %i.f, %i.h
  %i.j = sub i64 %.neg4, %i.i
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hb139a768ad287ed9E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7473, !noalias !7476, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7473, !noalias !7476, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7473, !noalias !7476, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7473, !noalias !7476, !noundef !8
  %.neg4 = add i64 %i.d, %i.b
  %i.i = add i64 %i.f, %i.h
  %i.j = sub i64 %.neg4, %i.i
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hde6098a7d3b260b5E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7478, !noalias !7481, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7478, !noalias !7481, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7478, !noalias !7481, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7478, !noalias !7481, !noundef !8
  %.neg4 = add i64 %i.d, %i.b
  %i.i = add i64 %i.f, %i.h
  %i.j = sub i64 %.neg4, %i.i
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17h3769ee09bfb25a95E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7483, !noalias !7488, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7483, !noalias !7488, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7483, !noalias !7488, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7483, !noalias !7488, !noundef !8
  %.neg4.i = add i64 %i.d, %i.b
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp eq i64 %.neg4.i, %i.i
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17h9e72bb47edd61289E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7490, !noalias !7495, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7490, !noalias !7495, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7490, !noalias !7495, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7490, !noalias !7495, !noundef !8
  %.neg4.i = add i64 %i.d, %i.b
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp eq i64 %.neg4.i, %i.i
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17hb1586177b5ccf546E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7497, !noalias !7502, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7497, !noalias !7502, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7497, !noalias !7502, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7497, !noalias !7502, !noundef !8
  %.neg4.i = add i64 %i.d, %i.b
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp eq i64 %.neg4.i, %i.i
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17hb6d2157b671e3dadE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7504, !noalias !7509, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7504, !noalias !7509, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7504, !noalias !7509, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7504, !noalias !7509, !noundef !8
  %.neg4.i = add i64 %i.d, %i.b
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp eq i64 %.neg4.i, %i.i
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17hfe2468ecca2f3827E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7511, !noalias !7516, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7511, !noalias !7516, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7511, !noalias !7516, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7511, !noalias !7516, !noundef !8
  %.neg4.i = add i64 %i.d, %i.b
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp eq i64 %.neg4.i, %i.i
  ret i1 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7518)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17he5bd0e2b7f1cc0b3E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7521)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !7524, !noalias !7527, !noundef !8 ; 2 uses
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !7524, !noalias !7527, !noundef !8 ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !7524, !noalias !7527, !noundef !8 ; 5 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !7524, !noalias !7527 ; 6 uses
  %.promoted12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !7529 ; 5 uses
  %.promoted12.i.i11 = ptrtoaddr ptr %.promoted12.i.i to i64 ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !7529, !nonnull !8 ; 2 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7529
  %i.o = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.o, label %.lr.ph.preheader.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i

.lr.ph.preheader.i:                               ; preds = %.split.us.i.i
  %i.p = add i64 %.promoted.i.i, %1               ; 2 uses
  %i.q = sub i64 %i.p, %i.l
  %i.r = mul i64 %i.n, 988218432520154551
  %i.s = mul i64 %.promoted12.i.i11, -988218432520154551
  %i.t = add i64 %i.s, %i.r
  %i.u = lshr i64 %i.t, 3
  %i.v = xor i64 %.promoted.i.i, -1
  %i.w = add i64 %i.l, %i.v
  %i.x = add i64 %1, -1
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w)
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.x) ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i
  %i.ab = sub i64 %i.n, %.promoted12.i.i11
  %i.ac = and i64 %i.ab, 7
  %ident.check.not = icmp eq i64 %i.ac, 0
  br i1 %ident.check.not, label %vector.ph, label %.lr.ph.i.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ad = and i64 %i.aa, 3                        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 4, i64 %i.ad
  %n.vec = sub nsw i64 %i.aa, %i.af               ; 4 uses
  %i.ag = sub i64 %1, %n.vec
  %i.ah = add i64 %.promoted.i.i, %n.vec
  %i.ai = mul i64 %n.vec, 56
  %i.aj = getelementptr i8, ptr %.promoted12.i.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted12.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 224
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !7530

middle.block:                                     ; preds = %vector.body
  %i.al = getelementptr i8, ptr %pointer.phi, i64 224
  store ptr %i.al, ptr %i.h, align 8, !alias.scope !7531, !noalias !7536
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %.lr.ph.preheader.i, %middle.block
  %.sroa.01.0.us.i11.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader.i ], [ %i.ag, %middle.block ]
  %.ph = phi i64 [ %.promoted.i.i, %vector.scevcheck ], [ %.promoted.i.i, %.lr.ph.preheader.i ], [ %i.ah, %middle.block ]
  %.ph15 = phi ptr [ %.promoted12.i.i, %vector.scevcheck ], [ %.promoted12.i.i, %.lr.ph.preheader.i ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.01.0.us.i11.i = phi i64 [ %i.ar, %bb.d ], [ %.sroa.01.0.us.i11.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.am = phi i64 [ %i.ao, %bb.d ], [ %.ph, %.lr.ph.i.preheader ]
  %i.an = phi ptr [ %i.aq, %bb.d ], [ %.ph15, %.lr.ph.i.preheader ] ; 2 uses
  %i.ao = add i64 %i.am, 1                        ; 3 uses
  %i.ap = icmp eq ptr %i.an, %i.m
  br i1 %i.ap, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !alias.scope !7531, !noalias !7536
  %i.ar = add i64 %.sroa.01.0.us.i11.i, -1        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7529
  %exitcond.not.i = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond.not.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.sink.split.i, label %.lr.ph.i, !llvm.loop !7539

.split.i.i:                                       ; preds = %bb.b, %bb.h
  %i.at = phi i64 [ %.pre17.i.i, %bb.h ], [ %i.j, %bb.b ]
  %i.au = phi i64 [ %.pre.i.i, %bb.h ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bg, %bb.h ], [ %1, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7529
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i", label %bb.e

bb.e:                                             ; preds = %.split.i.i
  %i.aw = load i64, ptr %i.d, align 8, !alias.scope !7524, !noalias !7527, !noundef !8 ; 2 uses
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !7524, !noalias !7527, !noundef !8
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i

bb.f:                                             ; preds = %bb.e
  %i.az = add nuw i64 %i.aw, 1
  store i64 %i.az, ptr %i.d, align 8, !alias.scope !7524, !noalias !7527
  %i.ba = load ptr, ptr %i.g, align 8, !alias.scope !7531, !noalias !7536, !nonnull !8, !noundef !8
  %i.bb = load ptr, ptr %i.h, align 8, !alias.scope !7531, !noalias !7536, !nonnull !8, !noundef !8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.thread7.i"

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.thread7.i": ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store ptr %i.bd, ptr %i.h, align 8, !alias.scope !7531, !noalias !7536
  br label %bb.g

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i": ; preds = %.split.i.i
  %i.be = add nuw i64 %i.au, 1
  store i64 %i.be, ptr %i.b, align 8, !alias.scope !7524, !noalias !7527
  call void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
  %.pre18.i.i = load i8, ptr %i.f, align 8, !range !7540, !noalias !7529
  %i.bf = icmp eq i8 %.pre18.i.i, 3
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i, label %bb.g

bb.g:                                             ; preds = %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i", %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.thread7.i"
  %i.bg = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7529
  %.pre.i.i = load i64, ptr %i.b, align 8, !alias.scope !7524, !noalias !7527
  %.pre17.i.i = load i64, ptr %i.c, align 8, !alias.scope !7524, !noalias !7527
  br label %.split.i.i, !llvm.loop !7541

_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.sink.split.i: ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %i.p, %bb.c ], [ %i.l, %bb.d ]
  %.sroa.0.0.i.ph.i = phi i64 [ %.sroa.01.0.us.i11.i, %.lr.ph.i ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !7524, !noalias !7527
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i: ; preds = %bb.g, %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i", %bb.f, %bb.e, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.sink.split.i, %.split.us.i.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i.ph.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.sink.split.i ], [ %1, %.split.us.i.i ], [ %.sroa.01.0.i.i, %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i" ], [ %.sroa.01.0.i.i, %bb.e ], [ 0, %bb.g ], [ %.sroa.01.0.i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7529
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17he5bd0e2b7f1cc0b3E.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17he5bd0e2b7f1cc0b3E.exit": ; preds = %bb.a, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hf2c52c20507c8468E.exit.i ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h21df1f23d53ceecbE(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h6d3e03984565d343E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h223137a4db9e0674E(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hbda949238b83fc54E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hbacc93c0677f73d3E(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7542)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h4c95f7454b329bb4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7545)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.w, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7548
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !7549, !noalias !7552, !noundef !8 ; 2 uses
  %i.k = load i64, ptr %i.c, align 8, !alias.scope !7549, !noalias !7552, !noundef !8
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !7549, !noalias !7552, !noundef !8 ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !alias.scope !7549, !noalias !7552, !noundef !8
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.i", label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.thread.i.i"

bb.e:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.j, 1
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !7549, !noalias !7552
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !7554, !noalias !7559, !nonnull !8, !noundef !8
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !7554, !noalias !7559, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.thread.i.i", label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.thread7.i"

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.thread7.i": ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.t, ptr %i.i, align 8, !alias.scope !7554, !noalias !7559
  br label %bb.f

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.i": ; preds = %bb.d
  %i.u = add nuw i64 %i.m, 1
  store i64 %i.u, ptr %i.d, align 8, !alias.scope !7549, !noalias !7552
  call void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  %.pre.i.i = load i8, ptr %i.f, align 8, !range !7540, !noalias !7548
  %i.v = icmp eq i8 %.pre.i.i, 3
end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator3nth17h2d931ab5a23ab7b9E:bb.a
  %i.az = icmp eq ptr %i.ay, %i.aw
  br i1 %i.az, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hac5d23e83ba388ceE.exit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i": ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %i.ba, ptr %i.ax, align 8, !alias.scope !7657, !noalias !7658
  %.sroa.4.0..sroa_idx1.i3.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.4.0.copyload2.i4.i = load i8, ptr %.sroa.4.0..sroa_idx1.i3.i, align 8, !noalias !7661 ; 2 uses
  %.not.i5.i = icmp eq i8 %.sroa.4.0.copyload2.i4.i, 2
  br i1 %.not.i5.i, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hac5d23e83ba388ceE.exit", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf15fbdc2d36ac1feE.exit.sink.split.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf15fbdc2d36ac1feE.exit.sink.split.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i"
  %.sink18.i = phi ptr [ %i.ar, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i" ], [ %i.ay, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i" ] ; 2 uses
  %.sroa.4.0.copyload2.i4.sink.i = phi i8 [ %.sroa.4.0.copyload2.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i" ], [ %.sroa.4.0.copyload2.i4.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i" ]
  %.sroa.0.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %.sink18.i, i64 16
  %.sroa.0.sroa.5.0.copyload.i7.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i6.i, align 8, !noalias !7662
  %.sroa.0.sroa.0.0.copyload.i8.i = load i64, ptr %.sink18.i, align 8, !noalias !7662
  %..i.i.i.i9.i = add nuw nsw i8 %.sroa.4.0.copyload2.i4.sink.i, 1
  store i64 %.sroa.0.sroa.0.0.copyload.i8.i, ptr %0, align 8, !alias.scope !7606, !noalias !7603
  %.sroa.47.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.sroa.5.0.copyload.i7.i, ptr %.sroa.47.0..sroa_idx.i10.i, align 8, !alias.scope !7606, !noalias !7603
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hac5d23e83ba388ceE.exit"

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hac5d23e83ba388ceE.exit": ; preds = %bb.d, %bb.f, %bb.e, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf15fbdc2d36ac1feE.exit.sink.split.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i", %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i", %bb.h, %bb.g
  %.sink = phi i8 [ %..i.i.i.i9.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf15fbdc2d36ac1feE.exit.sink.split.i" ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i" ], [ 3, %bb.g ], [ 3, %bb.i ], [ 3, %bb.h ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i" ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i.i.i.i.i" ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h99a59f0d51a28ba3E.exit.i2.i.i.i.i" ], [ 3, %bb.e ], [ 3, %bb.f ], [ 3, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator3nth17h533f643dcde47cd9E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7666)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7669)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %2, %bb.b ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7672
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !7673, !noalias !7676, !noundef !8 ; 2 uses
  %i.k = load i64, ptr %i.c, align 8, !alias.scope !7673, !noalias !7676, !noundef !8
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !7673, !noalias !7676, !noundef !8 ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !alias.scope !7673, !noalias !7676, !noundef !8
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.i.i", label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.j, 1
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !7673, !noalias !7676
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !7678, !noalias !7683, !nonnull !8, !noundef !8
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !7678, !noalias !7683, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %bb.l, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.thread7.i.i"

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.thread7.i.i": ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.t, ptr %i.i, align 8, !alias.scope !7678, !noalias !7683
  br label %bb.f

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.i.i": ; preds = %bb.d
  %i.u = add nuw i64 %i.m, 1
  store i64 %i.u, ptr %i.d, align 8, !alias.scope !7673, !noalias !7676
  call void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  %.pre.i.i.i = load i8, ptr %i.f, align 8, !range !7540, !noalias !7672
  %i.v = icmp eq i8 %.pre.i.i.i, 3
  br i1 %i.v, label %bb.l, label %bb.f

bb.f:                                             ; preds = %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.i.i", %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.thread7.i.i"
  %i.w = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7672
  br i1 %i.x, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.f, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7686)
  call void @llvm.experimental.noalias.scope.decl(metadata !7689)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !7689, !noalias !7686, !noundef !8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !7689, !noalias !7686, !noundef !8
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !7689, !noalias !7686, !noundef !8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !7689, !noalias !7686, !noundef !8
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j

bb.h:                                             ; preds = %.loopexit
  %i.ai = add nuw i64 %i.z, 1
  store i64 %i.ai, ptr %i.y, align 8, !alias.scope !7689, !noalias !7686
  call void @llvm.experimental.noalias.scope.decl(metadata !7691)
  call void @llvm.experimental.noalias.scope.decl(metadata !7694)
  call void @llvm.experimental.noalias.scope.decl(metadata !7696)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !7699, !noalias !7700, !nonnull !8, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !7699, !noalias !7700, !nonnull !8, !noundef !8 ; 4 uses
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.ao, ptr %i.al, align 8, !alias.scope !7699, !noalias !7700
  %.sroa.4.sroa.0.0.copyload.i.i = load i64, ptr %i.am, align 8, !noalias !7702
  %.sroa.4.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.4.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i, align 8, !noalias !7702
  store i64 %.sroa.4.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !7703, !noalias !7704
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.sroa.5.0.copyload.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !7703, !noalias !7704
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i": ; preds = %bb.i, %bb.h
  %.sink.i.i = phi i8 [ 0, %bb.i ], [ 3, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.i, ptr %i.ap, align 8, !alias.scope !7703, !noalias !7704
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit"

bb.j:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 3, ptr %i.aq, align 8, !alias.scope !7686, !noalias !7689
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit"

bb.k:                                             ; preds = %bb.g
  %i.ar = add nuw i64 %i.ae, 1
  store i64 %i.ar, ptr %i.ad, align 8, !alias.scope !7689, !noalias !7686
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as)
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit"

bb.l:                                             ; preds = %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit.i.i.i", %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7672
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 3, ptr %i.at, align 8
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit"

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb845d3c17cad3212E.exit": ; preds = %bb.k, %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i", %bb.l
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator3nth17h9eb16463b0ed09c9E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7708)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7711)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !7714, !noalias !7717, !noundef !8 ; 2 uses
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !7714, !noalias !7717, !noundef !8 ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.split.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !7714, !noalias !7717, !noundef !8 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !7714, !noalias !7717 ; 6 uses
  %.promoted12.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !7719 ; 5 uses
  %.promoted12.i.i.i39 = ptrtoaddr ptr %.promoted12.i.i.i to i64 ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !7719, !nonnull !8 ; 2 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7719
  %i.o = icmp ult i64 %.promoted.i.i.i, %i.l
  br i1 %i.o, label %.lr.ph.preheader.i.i, label %.sink.split

.lr.ph.preheader.i.i:                             ; preds = %.split.us.i.i.i
  %i.p = add i64 %.promoted.i.i.i, %2             ; 2 uses
  %i.q = mul i64 %i.n, 988218432520154551
  %i.r = mul i64 %.promoted12.i.i.i39, -988218432520154551
  %i.s = add i64 %i.r, %i.q
  %i.t = lshr i64 %i.s, 3
  %i.u = xor i64 %.promoted.i.i.i, -1
  %i.v = add i64 %i.l, %i.u
  %i.w = add i64 %2, -1
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.v)
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.w) ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.y, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i.i
  %i.aa = sub i64 %i.n, %.promoted12.i.i.i39
  %i.ab = and i64 %i.aa, 7
  %ident.check.not = icmp eq i64 %i.ab, 0
  br i1 %ident.check.not, label %vector.ph, label %.lr.ph.i.i.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ac = and i64 %i.z, 3                         ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 4, i64 %i.ac
  %n.vec = sub nsw i64 %i.z, %i.ae                ; 4 uses
  %i.af = sub i64 %2, %n.vec
  %i.ag = add i64 %.promoted.i.i.i, %n.vec
  %i.ah = mul i64 %n.vec, 56
  %i.ai = getelementptr i8, ptr %.promoted12.i.i.i, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted12.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7719
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 224
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !7720

middle.block:                                     ; preds = %vector.body
  %i.ak = getelementptr i8, ptr %pointer.phi, i64 224
  store ptr %i.ak, ptr %i.h, align 8, !alias.scope !7721, !noalias !7726
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.scevcheck, %.lr.ph.preheader.i.i, %middle.block
  %.sroa.01.0.us.i11.i.i.ph = phi i64 [ %2, %vector.scevcheck ], [ %2, %.lr.ph.preheader.i.i ], [ %i.af, %middle.block ]
  %.ph = phi i64 [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %.lr.ph.preheader.i.i ], [ %i.ag, %middle.block ]
  %.ph43 = phi ptr [ %.promoted12.i.i.i, %vector.scevcheck ], [ %.promoted12.i.i.i, %.lr.ph.preheader.i.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.sroa.01.0.us.i11.i.i = phi i64 [ %i.aq, %bb.d ], [ %.sroa.01.0.us.i11.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.al = phi i64 [ %i.an, %bb.d ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.am = phi ptr [ %i.ap, %bb.d ], [ %.ph43, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.an = add i64 %i.al, 1                        ; 3 uses
  %i.ao = icmp eq ptr %i.am, %i.m
  br i1 %i.ao, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread14, label %bb.c

_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread14: ; preds = %.lr.ph.i.i
  store i64 %i.an, ptr %i.d, align 8, !alias.scope !7714, !noalias !7717
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  store ptr %i.ap, ptr %i.h, align 8, !alias.scope !7721, !noalias !7726
  %i.aq = add i64 %.sroa.01.0.us.i11.i.i, -1      ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread10, label %bb.d

_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread10: ; preds = %bb.c
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !7714, !noalias !7717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7719
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.l
  br i1 %exitcond.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit, label %.lr.ph.i.i, !llvm.loop !7729

.split.i.i.i:                                     ; preds = %bb.b, %bb.h
  %i.as = phi i64 [ %.pre17.i.i.i, %bb.h ], [ %i.j, %bb.b ]
  %i.at = phi i64 [ %.pre.i.i.i, %bb.h ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.bf, %bb.h ], [ %2, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7719
  %i.au = icmp ult i64 %i.at, %i.as
  br i1 %i.au, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %.split.i.i.i
  %i.av = load i64, ptr %i.d, align 8, !alias.scope !7714, !noalias !7717, !noundef !8 ; 2 uses
  %i.aw = load i64, ptr %i.e, align 8, !alias.scope !7714, !noalias !7717, !noundef !8
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ay = add nuw i64 %i.av, 1
  store i64 %i.ay, ptr %i.d, align 8, !alias.scope !7714, !noalias !7717
  %i.az = load ptr, ptr %i.g, align 8, !alias.scope !7721, !noalias !7726, !nonnull !8, !noundef !8
  %i.ba = load ptr, ptr %i.h, align 8, !alias.scope !7721, !noalias !7726, !nonnull !8, !noundef !8 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %.sink.split, label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.thread7.i.i"

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.thread7.i.i": ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store ptr %i.bc, ptr %i.h, align 8, !alias.scope !7721, !noalias !7726
  br label %bb.g

"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i.i": ; preds = %.split.i.i.i
  %i.bd = add nuw i64 %i.at, 1
  store i64 %i.bd, ptr %i.b, align 8, !alias.scope !7714, !noalias !7717
  call void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  %.pre18.i.i.i = load i8, ptr %i.f, align 8, !range !7540, !noalias !7719
  %i.be = icmp eq i8 %.pre18.i.i.i, 3
  br i1 %i.be, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i.i", %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.thread7.i.i"
  %i.bf = add i64 %.sroa.01.0.i.i.i, -1           ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  br i1 %i.bg, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !7714, !noalias !7717
  %.pre17.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !7714, !noalias !7717
  br label %.split.i.i.i, !llvm.loop !7541

_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit: ; preds = %bb.d
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !7714, !noalias !7717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  %.not = icmp eq i64 %i.p, %i.l
  br i1 %.not, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread, label %bb.n

_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread: ; preds = %bb.g, %bb.a, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread10, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !7730)
  call void @llvm.experimental.noalias.scope.decl(metadata !7733)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !7733, !noalias !7730, !noundef !8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !7733, !noalias !7730, !noundef !8
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !7733, !noalias !7730, !noundef !8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !7733, !noalias !7730, !noundef !8
  %i.bq = icmp ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread
  %i.br = add nuw i64 %i.bi, 1
  store i64 %i.br, ptr %i.bh, align 8, !alias.scope !7733, !noalias !7730
  call void @"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hce6b4966514e6226E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit"

bb.k:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 3, ptr %i.bs, align 8, !alias.scope !7730, !noalias !7733
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit"

bb.l:                                             ; preds = %bb.i
  %i.bt = add nuw i64 %i.bn, 1
  store i64 %i.bt, ptr %i.bm, align 8, !alias.scope !7733, !noalias !7730
  call void @llvm.experimental.noalias.scope.decl(metadata !7735)
  call void @llvm.experimental.noalias.scope.decl(metadata !7738)
  call void @llvm.experimental.noalias.scope.decl(metadata !7740)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !7743, !noalias !7744, !nonnull !8, !noundef !8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !7743, !noalias !7744, !nonnull !8, !noundef !8 ; 4 uses
  %i.by = icmp eq ptr %i.bx, %i.bv
  br i1 %i.by, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store ptr %i.bz, ptr %i.bw, align 8, !alias.scope !7743, !noalias !7744
  %.sroa.4.sroa.0.0.copyload.i.i = load i64, ptr %i.bx, align 8, !noalias !7746
  %.sroa.4.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.4.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i, align 8, !noalias !7746
  store i64 %.sroa.4.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !7747, !noalias !7748
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.sroa.5.0.copyload.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !7747, !noalias !7748
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c1f9cb78db9eaa6E.exit.i": ; preds = %bb.m, %bb.l
  %.sink.i.i1 = phi i8 [ 0, %bb.m ], [ 3, %bb.l ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.i1, ptr %i.ca, align 8, !alias.scope !7747, !noalias !7748
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit"

.sink.split:                                      ; preds = %bb.f, %bb.e, %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit.i.i.i", %.split.us.i.i.i, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7719
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h16c607417234bbe9E.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 3, ptr %i.cb, align 8
  br label %"_ZN129_$LT$anki..scheduler..queue..builder..sized_chain..SizedChain$LT$I$C$I2$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h318234da8e9675adE.exit"

end_hunk_1
