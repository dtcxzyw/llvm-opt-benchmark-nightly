Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN4core3ptr95drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..term..LabeledType$GT$$GT$17hda65e8b9a65fdfbeE":bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..LetBinding$GT$$GT$17h2d627309db453868E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95640)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !95640, !nonnull !145, !noundef !145 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !95640, !nonnull !145, !noundef !145 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95641)
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr66drop_in_place$LT$$u5b$nickel_lang_parser..ast..LetBinding$u5d$$GT$17hdae8ce5b200a4ccfE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.j, %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [248 x i8], ptr %i.b, i64 %.sroa.0.07.i.i ; 4 uses
  %i.j = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95645)
  %i.k = load i64, ptr %i.i, align 8, !range !148, !alias.scope !95646, !noalias !95640, !noundef !145 ; 4 uses
  %i.l = icmp eq i64 %i.k, 18
  br i1 %i.l, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95648)
  %i.m = icmp ne i64 %i.k, 12
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %i.k, 3
  br i1 %i.n, label %bb.c, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95649)
  switch i64 %i.k, label %bb.d [
    i64 0, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i"
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !95650, !noalias !95640, !noundef !145 ; 4 uses
  %i.p = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = shl i64 %.val3.i.i.i.i.i.i.i.i.i, 2
  %i.r = icmp slt i64 %.val3.i.i.i.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.r)
  %i.s = and i64 %i.q, -16                        ; 2 uses
  %i.t = add i64 %i.s, 16                         ; 2 uses
  %i.u = add nsw i64 %.val3.i.i.i.i.i.i.i.i.i, 17
  %i.v = add i64 %i.u, %i.t                       ; 4 uses
  %i.w = icmp uge i64 %i.v, %i.t
  %i.x = icmp ult i64 %i.v, 9223372036854775793
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i ], [ %i.s, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i ], [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !95650, !noalias !95640, !nonnull !145, !noundef !145
  %i.z = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i.i.i.i, i64 %i.z
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %.sink7.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !95651
  br label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i"

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !95650, !noalias !95640, !noundef !145 ; 4 uses
  %i.ac = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = shl i64 %.val1.i.i.i.i.i.i.i.i.i, 2
  %i.ae = icmp slt i64 %.val1.i.i.i.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 16                       ; 2 uses
  %i.ah = add nsw i64 %.val1.i.i.i.i.i.i.i.i.i, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i, %bb.e, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.am = icmp eq i64 %i.j, %i.g
  br i1 %i.am, label %"_ZN4core3ptr66drop_in_place$LT$$u5b$nickel_lang_parser..ast..LetBinding$u5d$$GT$17hdae8ce5b200a4ccfE.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr66drop_in_place$LT$$u5b$nickel_lang_parser..ast..LetBinding$u5d$$GT$17hdae8ce5b200a4ccfE.exit.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE.exit.i.i", %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !95640, !noundef !145 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c335719e20ea02cE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr66drop_in_place$LT$$u5b$nickel_lang_parser..ast..LetBinding$u5d$$GT$17hdae8ce5b200a4ccfE.exit.i"
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !95640, !nonnull !145, !noundef !145
  %i.ar = mul nuw i64 %i.ao, 248
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !95640
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c335719e20ea02cE.exit"

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c335719e20ea02cE.exit": ; preds = %"_ZN4core3ptr66drop_in_place$LT$$u5b$nickel_lang_parser..ast..LetBinding$u5d$$GT$17hdae8ce5b200a4ccfE.exit.i", %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr96drop_in_place$LT$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$17h6be230d98f4299a3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95668)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !95669, !nonnull !145, !noundef !145 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !95669, !noundef !145
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !noalias !95669
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..TermEnv$GT$17h566bd37c47f45c8fE.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h7e52362cfe2caf38E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..TermEnv$GT$17h566bd37c47f45c8fE.exit" unwind label %bb.c, !inline_history !95656

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95670)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !95670, !noundef !145 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit3", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !noalias !95671, !noundef !145
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !noalias !95671
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit3"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hda8ade4f499b8f84E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit3" unwind label %bb.f, !inline_history !95661

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !inline_history !78
  unreachable

"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit3": ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..TermEnv$GT$17h566bd37c47f45c8fE.exit": ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95672)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !95672, !noundef !145 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..TermEnv$GT$17h566bd37c47f45c8fE.exit"
  %i.q = load i64, ptr %i.o, align 8, !noalias !95673, !noundef !145
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.o, align 8, !noalias !95673
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hda8ade4f499b8f84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !inline_history !95666
  br label %"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit"

"_ZN4core3ptr237drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$$GT$17h315623fa8ebd3dd3E.exit": ; preds = %bb.g, %bb.h, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..TermEnv$GT$17h566bd37c47f45c8fE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr96drop_in_place$LT$arraydeque..Drain$LT$char$C$16_usize$C$arraydeque..behavior..Saturating$GT$$GT$17ha7af1eaa56aac4baE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95683)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !95684 ; 5 uses
  %i.b = icmp eq i64 %.promoted.i, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !95684, !noundef !145 ; 11 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us.i, label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i"

"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i": ; preds = %.lr.ph.i
  %.promoted7.i = load i64, ptr %i.f, align 8, !alias.scope !95683 ; 2 uses
  %xtraiter = and i64 %.promoted.i, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit", label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol"

"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol": ; preds = %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i", %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol"
  %i.g = phi i64 [ %i.k, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol" ], [ %.promoted7.i, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i" ] ; 2 uses
  %i.h = phi i64 [ %i.l, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol" ], [ %.promoted.i, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i" ]
  %prol.iter = phi i64 [ %prol.iter.next, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol" ], [ 0, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95685)
  %i.i = add nuw i64 %i.g, 1                      ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  %i.k = select i1 %i.j, i64 0, i64 %i.i          ; 3 uses
  %i.l = add i64 %i.h, -1                         ; 2 uses
  %i.m = icmp ult i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit", label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol", !llvm.loop !95678

"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit": ; preds = %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol", %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i"
  %.lcssa.unr = phi i64 [ poison, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i" ], [ %i.k, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol" ]
  %.unr = phi i64 [ %.promoted7.i, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i" ], [ %i.k, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol" ]
  %.unr14 = phi i64 [ %.promoted.i, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.preheader.i" ], [ %i.l, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol" ]
  %i.n = icmp ult i64 %.promoted.i, 4
  br i1 %i.n, label %._crit_edge.i, label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i"

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95685)
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2855) #82, !noalias !95684
  unreachable

"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i": ; preds = %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit", %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i"
  %i.o = phi i64 [ %i.ae, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i" ], [ %.unr, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit" ] ; 2 uses
  %i.p = phi i64 [ %i.af, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i" ], [ %.unr14, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95685)
  %i.q = add nuw i64 %i.o, 1                      ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  %i.s = select i1 %i.r, i64 0, i64 %i.q          ; 2 uses
  %i.t = icmp ult i64 %i.o, %i.d
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw i64 %i.s, 1                      ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.d
  %i.w = select i1 %i.v, i64 0, i64 %i.u          ; 2 uses
  %i.x = icmp ult i64 %i.s, %i.d
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw i64 %i.w, 1                      ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.d
  %i.aa = select i1 %i.z, i64 0, i64 %i.y         ; 2 uses
  %i.ab = icmp ult i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw i64 %i.aa, 1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.d
  %i.ae = select i1 %i.ad, i64 0, i64 %i.ac       ; 2 uses
  %i.af = add i64 %i.p, -4                        ; 2 uses
  %i.ag = icmp ult i64 %i.aa, %i.d
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %._crit_edge.i, label %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i"

._crit_edge.i:                                    ; preds = %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i", %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit"
  %.lcssa = phi i64 [ %.lcssa.unr, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i.prol.loopexit" ], [ %i.ae, %"_ZN84_$LT$arraydeque..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e7ad6c55ead323eE.exit.i" ]
  store i64 %.lcssa, ptr %i.f, align 8, !alias.scope !95684
  store i64 0, ptr %i.a, align 8, !alias.scope !95684
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !95683, !noundef !145 ; 52 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !95683, !noundef !145 ; 16 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !95683, !noundef !145 ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !95683, !noundef !145 ; 11 uses
  %i.aq = add i64 %i.ap, %i.al                    ; 2 uses
  %i.ar = and i64 %i.aq, 15                       ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !95683, !noundef !145 ; 12 uses
  %i.au = icmp eq i64 %i.al, 0
  %i.av = icmp eq i64 %i.an, 0                    ; 2 uses
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.av, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %i.av, label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit", label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.f:                                             ; preds = %bb.c
  store i64 %i.at, ptr %i.ao, align 8, !noalias !95683
  store i64 %i.an, ptr %i.ak, align 8, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.g:                                             ; preds = %bb.d
  %.not.i = icmp ugt i64 %i.al, %i.an
  br i1 %.not.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.aw = add i64 %i.an, %i.al
  store i64 %i.aw, ptr %i.ak, align 8, !noalias !95683
  %i.ax = icmp eq i64 %i.at, %i.ar
  br i1 %i.ax, label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = sub i64 %i.aq, %i.at
  %i.az = and i64 %i.ay, 15
  %i.ba = icmp ult i64 %i.az, %i.an               ; 2 uses
  %i.bb = sub i64 16, %i.at                       ; 12 uses
  %i.bc = sub nuw nsw i64 16, %i.ar               ; 11 uses
  %i.bd = icmp ult i64 %i.bb, %i.an
  %i.be = icmp ult i64 %i.bc, %i.an               ; 3 uses
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.be, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ba, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar
  %i.bh = shl nuw nsw i64 %i.an, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bg, ptr noundef nonnull align 4 dereferenceable(1) %i.bf, i64 %i.bh, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.m:                                             ; preds = %bb.j
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar
  %i.bk = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bj, ptr noundef nonnull align 4 dereferenceable(1) %i.bi, i64 %i.bk, i1 false), !alias.scope !95686, !noalias !95683
  %i.bl = sub nuw nsw i64 %i.an, %i.bc
  %i.bm = getelementptr [4 x i8], ptr %i.bi, i64 %i.bc
  %i.bn = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(80) %i.aj, ptr align 4 %i.bm, i64 %i.bn, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.o:                                             ; preds = %bb.m
  %i.bo = sub nuw i64 %i.an, %i.bc
  %i.bp = getelementptr [4 x i8], ptr %i.aj, i64 %i.at ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bc
  %i.br = shl i64 %i.bo, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(80) %i.aj, ptr align 4 %i.bq, i64 %i.br, i1 false), !alias.scope !95686, !noalias !95683
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar
  %i.bt = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 4 dereferenceable(1) %i.bp, i64 %i.bt, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.p:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at
  %i.bv = getelementptr [4 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %i.bw = shl nuw i64 %i.bb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr nonnull align 4 %i.bu, i64 %i.bw, i1 false), !alias.scope !95686, !noalias !95683
  %i.bx = sub nuw i64 %i.an, %i.bb
  %i.by = getelementptr [4 x i8], ptr %i.bv, i64 %i.bb
  %i.bz = shl nuw nsw i64 %i.bx, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.by, ptr nonnull align 8 dereferenceable(80) %i.aj, i64 %i.bz, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.s:                                             ; preds = %bb.p
  %i.ca = sub i64 %i.bc, %i.bb                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at
  %i.cc = getelementptr [4 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %i.cd = shl i64 %i.bb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull align 4 %i.cb, i64 %i.cd, i1 false), !alias.scope !95686, !noalias !95683
  %i.ce = getelementptr [4 x i8], ptr %i.cc, i64 %i.bb
  %i.cf = shl i64 %i.ca, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr nonnull align 8 dereferenceable(80) %i.aj, i64 %i.cf, i1 false), !alias.scope !95686, !noalias !95683
  %i.cg = sub nuw nsw i64 %i.an, %i.bc
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ca
  %i.ci = shl nuw nsw i64 %i.cg, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(80) %i.aj, ptr nonnull align 4 %i.ch, i64 %i.ci, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.t:                                             ; preds = %bb.q
  %i.cj = sub nuw i64 %i.an, %i.bb
  %i.ck = getelementptr [4 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %i.bb
  %i.cm = shl nuw nsw i64 %i.cj, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cl, ptr nonnull align 8 dereferenceable(80) %i.aj, i64 %i.cm, i1 false), !alias.scope !95686, !noalias !95683
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at
  %i.co = shl nuw i64 %i.bb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr nonnull align 4 %i.cn, i64 %i.co, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.u:                                             ; preds = %bb.q
  %i.cp = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.cq = sub nuw i64 %i.an, %i.bb
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cp
  %i.cs = shl i64 %i.cq, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 8 dereferenceable(80) %i.aj, i64 %i.cs, i1 false), !alias.scope !95686, !noalias !95683
  %i.ct = sub i64 16, %i.cp
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ct
  %i.cv = shl i64 %i.cp, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(80) %i.aj, ptr nonnull align 4 %i.cu, i64 %i.cv, i1 false), !alias.scope !95686, !noalias !95683
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar
  %i.cy = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cx, ptr noundef nonnull align 4 dereferenceable(1) %i.cw, i64 %i.cy, i1 false), !alias.scope !95686, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.v:                                             ; preds = %bb.g
  %i.cz = sub i64 %i.at, %i.al                    ; 2 uses
  %i.da = and i64 %i.cz, 15                       ; 10 uses
  store i64 %i.da, ptr %i.ao, align 8, !noalias !95683
  %i.db = add i64 %i.an, %i.al
  store i64 %i.db, ptr %i.ak, align 8, !noalias !95683
  %i.dc = icmp eq i64 %i.ap, %i.da
  br i1 %i.dc, label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = sub i64 %i.cz, %i.ap
  %i.de = and i64 %i.dd, 15
  %i.df = icmp ult i64 %i.de, %i.al               ; 2 uses
  %i.dg = sub i64 16, %i.ap                       ; 12 uses
  %i.dh = sub nuw nsw i64 16, %i.da               ; 11 uses
  %i.di = icmp ult i64 %i.dg, %i.al
  %i.dj = icmp ult i64 %i.dh, %i.al               ; 3 uses
  br i1 %i.di, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.dj, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.w
  br i1 %i.df, label %bb.ae, label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ap
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.da
  %i.dm = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, ptr noundef nonnull align 4 dereferenceable(1) %i.dk, i64 %i.dm, i1 false), !alias.scope !95687, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"

bb.aa:                                            ; preds = %bb.x
  br i1 %i.df, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.da
  %i.dp = shl nuw nsw i64 %i.dh, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.do, ptr noundef nonnull align 4 dereferenceable(1) %i.dn, i64 %i.dp, i1 false), !alias.scope !95687, !noalias !95683
  %i.dq = sub nuw nsw i64 %i.al, %i.dh
  %i.dr = getelementptr [4 x i8], ptr %i.dn, i64 %i.dh
  %i.ds = shl nuw nsw i64 %i.dq, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(80) %i.aj, ptr align 4 %i.dr, i64 %i.ds, i1 false), !alias.scope !95687, !noalias !95683
  br label %"_ZN76_$LT$arraydeque..Drain$LT$T$C$_$C$B$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4905f7ff26ce96deE.exit"
end_hunk_0
