Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.10?download=true
inline.NumInlined: 2100
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMsd_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_E6retainNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3q_13SemanticsImpl24descend_into_macros_impluEs2_0s3_00ECslLuZgPVt6hg_3ide:bb.a
  %i.ab = select i1 %i.aa, i64 %.val.i10, i64 %i.z ; 4 uses
  %i.ac = icmp ult i64 %.sroa.05.035, %i.ab
  br i1 %i.ac, label %_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutjE9index_mutCslLuZgPVt6hg_3ide.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.035, i64 noundef range(i64 0, 576460752303423488) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #33, !noalias !147
  unreachable

_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutjE9index_mutCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !145, !noalias !146, !nonnull !26
  %.sink10.i.i11 = select i1 %i.aa, ptr %i.ad, ptr %0 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i11, i64 %.sroa.05.035 ; 3 uses
  %.val9 = load ptr, ptr %i.ae, align 8, !nonnull !26, !noundef !26 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val9, i64 60
  %i.ag = load i8, ptr %i.af, align 4, !range !33, !noundef !26
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutjE9index_mutCslLuZgPVt6hg_3ide.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !26
  br label %bb.g

bb.f:                                             ; preds = %_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutjE9index_mutCslLuZgPVt6hg_3ide.exit
  %i.ak = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val9)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i32 [ %i.ak, %bb.f ], [ %i.aj, %bb.e ] ; 3 uses
  %i.al = load i64, ptr %.val9, align 8, !range !29, !noundef !26
  %i.am = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.an = trunc nuw i64 %i.al to i1
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !26, !noundef !26 ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !26 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 4294967295
  %i.as = shl nuw i64 %i.aq, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.ar, i64 513, i64 %i.as ; 2 uses
  %i.at = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.at, label %bb.i, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !27

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #33
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.h
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.au = load i32, ptr %i.ao, align 8, !noundef !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.au, %bb.j ]
  %i.av = add i32 %.sroa.02.0.i.i, %.sroa.0.0.i.i ; 2 uses
  %.not.i.i = icmp ugt i32 %.sroa.0.0.i.i, %i.av
  br i1 %.not.i.i, label %bb.l, label %_RNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBc_13SemanticsImpl24descend_into_macros_impluEs2_0s3_00CslLuZgPVt6hg_3ide.exit, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #33
  unreachable

_RNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBc_13SemanticsImpl24descend_into_macros_impluEs2_0s3_00CslLuZgPVt6hg_3ide.exit: ; preds = %bb.k
  %.not.i = icmp ugt i32 %i.h, %.sroa.0.0.i.i
  %i.aw = icmp ugt i32 %i.av, %i.j
  %.sroa.0.0.i = or i1 %.not.i, %i.aw
  br i1 %.sroa.0.0.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBc_13SemanticsImpl24descend_into_macros_impluEs2_0s3_00CslLuZgPVt6hg_3ide.exit
  %i.ax = add i64 %.sroa.0.036, 1
  br label %bb.o

bb.n:                                             ; preds = %_RNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBc_13SemanticsImpl24descend_into_macros_impluEs2_0s3_00CslLuZgPVt6hg_3ide.exit
  %.not = icmp eq i64 %.sroa.0.036, 0
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.r, %bb.n, %bb.m
  %.sroa.0.1 = phi i64 [ %.sroa.0.036, %bb.r ], [ 0, %bb.n ], [ %i.ax, %bb.m ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.sink10.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c

bb.p:                                             ; preds = %bb.n
  %i.ay = sub i64 %.sroa.05.035, %.sroa.0.036     ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.ab
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #33
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i11, i64 %i.ay ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAhj40_E5drainINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEECslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !154, !noalias !155, !noundef !26 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 64                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !154, !noalias !155
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 2 uses
  %.not = icmp ugt i64 %2, %.sink10.i
  br i1 %.not, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !154, !noalias !155, !nonnull !26
  %.sink9.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink9.i, align 8
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !156, !noalias !157, !noundef !26
  %i.h = icmp ugt i64 %i.g, 64
  %.sink11.i24 = select i1 %i.h, ptr %i.f, ptr %1 ; 2 uses
  %i.i = sub nuw i64 %.sink10.i, %2
  %i.j = getelementptr inbounds nuw i8, ptr %.sink11.i24, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %i.l, align 8
  store ptr %.sink11.i24, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3mem11conjure_zstuECslLuZgPVt6hg_3ide() unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.a, align 8, !alias.scope !160, !nonnull !26, !noundef !26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !160, !noundef !26
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !noalias !160
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i unwind label %.lr.ph.i.preheader, !noalias !160

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.1 = load ptr, ptr %i.f, align 8, !alias.scope !160, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i.1, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !160, !noundef !26
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !noalias !160
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i.1) #36, !noalias !160
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i
  ret void

.lr.ph.i.preheader:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7.i = load ptr, ptr %i.l, align 8, !alias.scope !160, !nonnull !26, !noundef !26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noalias !160, !noundef !26
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !noalias !160
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i10.i, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i10.i: ; preds = %.lr.ph.i.preheader
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36
          to label %._crit_edge.i unwind label %bb.b, !noalias !160

._crit_edge.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i10.i, %.lr.ph.i.preheader
  resume { ptr, i32 } %i.k

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i10.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !160
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.a, align 8, !alias.scope !163, !nonnull !26, !noundef !26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !163, !noundef !26
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !noalias !163
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i unwind label %.lr.ph.i.preheader, !noalias !163

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.1 = load ptr, ptr %i.f, align 8, !alias.scope !163, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i.1, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !163, !noundef !26
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !noalias !163
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i.1) #36, !noalias !163
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i
  ret void

.lr.ph.i.preheader:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7.i = load ptr, ptr %i.l, align 8, !alias.scope !163, !nonnull !26, !noundef !26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noalias !163, !noundef !26
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !noalias !163
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i10.i, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i10.i: ; preds = %.lr.ph.i.preheader
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36
          to label %._crit_edge.i unwind label %bb.b, !noalias !163

._crit_edge.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i10.i, %.lr.ph.i.preheader
  resume { ptr, i32 } %i.k

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i10.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !163
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.a, align 8, !alias.scope !166, !nonnull !26, !noundef !26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !166, !noundef !26
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !noalias !166
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %.lr.ph.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i unwind label %.lr.ph16.i.preheader, !noalias !166

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.1 = load ptr, ptr %i.f, align 8, !alias.scope !166, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i.1, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !166, !noundef !26
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !noalias !166
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i.1) #36, !noalias !166
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i
  ret void

.lr.ph16.i.preheader:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7.i = load ptr, ptr %i.l, align 8, !alias.scope !166, !nonnull !26, !noundef !26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noalias !166, !noundef !26
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !noalias !166
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i, label %._crit_edge17.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i: ; preds = %.lr.ph16.i.preheader
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36
          to label %._crit_edge17.i unwind label %bb.a, !noalias !166

._crit_edge17.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i, %.lr.ph16.i.preheader
  resume { ptr, i32 } %i.k

bb.a:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !166
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !169, !nonnull !26, !noundef !26 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noalias !169, !noundef !26
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !noalias !169
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i

bb.a:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i unwind label %.lr.ph13.i.preheader, !noalias !169

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.a, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i.1 = load ptr, ptr %i.e, align 8, !alias.scope !169, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i.1, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !169, !noundef !26
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !169
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.1

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i.1) #36, !noalias !169
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.1: ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i
  ret void

.lr.ph13.i.preheader:                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !169, !nonnull !26, !noundef !26 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noalias !169, !noundef !26
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !noalias !169
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %._crit_edge14.i

bb.c:                                             ; preds = %.lr.ph13.i.preheader
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #36
          to label %._crit_edge14.i unwind label %bb.d, !noalias !169

._crit_edge14.i:                                  ; preds = %bb.c, %.lr.ph13.i.preheader
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !169
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !172, !nonnull !26, !noundef !26 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noalias !172, !noundef !26
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !noalias !172
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i unwind label %.lr.ph.i.preheader, !noalias !172

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i.1 = load ptr, ptr %i.e, align 8, !alias.scope !172, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i.1, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !172, !noundef !26
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !172
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.1

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i.1) #36, !noalias !172
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.1

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.1: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i
  ret void

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !172, !nonnull !26, !noundef !26 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noalias !172, !noundef !26
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !noalias !172
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i.preheader
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #36
          to label %._crit_edge.i unwind label %bb.e, !noalias !172

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.preheader
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !172
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefENtB1F_4PathEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !26
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECslLuZgPVt6hg_3ide.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECslLuZgPVt6hg_3ide.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !26
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECslLuZgPVt6hg_3ide.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECslLuZgPVt6hg_3ide.exit: ; preds = %bb.f, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !177, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !179, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !179, !noundef !26
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !noalias !179
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i.i) #36, !noalias !179
  br label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide.exit

common.resume.i:                                  ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !alias.scope !177, !nonnull !26, !noundef !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !177, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !177
  store i64 %i.c, ptr %i.a, align 8, !noalias !177
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !177
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !177
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d, !noalias !177

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.e, !noalias !177

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !177
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !177
  br label %_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide.exit

_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide.exit: ; preds = %bb.b, %.lr.ph.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECslLuZgPVt6hg_3ide.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !37, !noundef !26
  %switch1 = icmp slt i64 %i.a, -9223372036854775805
  br i1 %switch1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecmNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEECslLuZgPVt6hg_3ide.exit
  ret void

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.b, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecmNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #34
          to label %common.resume unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecmNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEECslLuZgPVt6hg_3ide.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecmNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECslLuZgPVt6hg_3ide.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.e

bb.i:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi8VariantsNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1j_19RustcEnumVariantIdxEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB2s_3ast8expr_ext12CallableExpruNvYB3f_NtB3j_7AstNode4castNCIBR_B3f_INtNtBV_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtBX_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB5v_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtBV_7flattenINtB9R_13FlattenCompatppE9iter_fold7flattenB4r_uNCINvNvXsi_B9R_Ba4_NtNtNtBX_6traits8iterator8Iterator4fold7flattenB4r_uNCINvNvBb9_8for_each4callTB5r_B6Z_ENCB8Y_s2_0E0E0E0E0E0INtB7_5FnMutTuB1J_EE8call_mutB5v_:bb.a
bb.ar:                                            ; preds = %bb.at, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1713
  invoke void @_RNvXse_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir8FunctionNtB5_8TryToNav10try_to_navB7_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.m, ptr noundef nonnull align 8 %i.ag)
          to label %bb.au unwind label %bb.al, !noalias !1713

bb.as:                                            ; preds = %bb.an
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !1714, !noalias !1715, !nonnull !26, !align !32, !noundef !26
  %i.cx = invoke noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function7is_test(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.k, ptr noundef nonnull %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @30)
          to label %bb.at unwind label %bb.al, !noalias !1713

bb.at:                                            ; preds = %bb.as
  br i1 %i.cx, label %bb.ap, label %bb.ar

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1713
  %i.cy = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7NameRefECslLuZgPVt6hg_3ide(ptr nonnull %i.ac)
          to label %bb.av unwind label %.split.thread.i.i.i, !noalias !1713 ; 6 uses

.split.thread.i.i.i:                              ; preds = %bb.au
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.noexc52.i.i.i:                                   ; preds = %bb.bf, %bb.be
  br i1 %.sroa.010.2.i.i.i, label %bb.bk, label %.body.i.i.i

.split.i.i.i:                                     ; preds = %bb.bi
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.av:                                            ; preds = %bb.au
  %.not19.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not19.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.cy, ptr %i.g, align 8, !noalias !1713
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.bg unwind label %bb.be, !noalias !1713

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1713
  %i.db = load i64, ptr %i.j, align 8, !range !40, !alias.scope !1716, !noalias !1713, !noundef !26
  %i.dc = icmp eq i64 %i.db, -2
  br i1 %i.dc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB10_16NavigationTargetEEEB12_.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.j)
          to label %bb.bb unwind label %bb.az, !noalias !1713

bb.az:                                            ; preds = %bb.ay
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !range !40, !alias.scope !1717, !noalias !1713, !noundef !26
  %i.dg = icmp eq i64 %i.df, -2
  br i1 %i.dg, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.de)
          to label %.body.i.i.i unwind label %bb.bd, !noalias !1713

bb.bb:                                            ; preds = %bb.ay
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !range !40, !alias.scope !1718, !noalias !1713, !noundef !26
  %i.dj = icmp eq i64 %i.di, -2
  br i1 %i.dj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB10_16NavigationTargetEEEB12_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.dh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB10_16NavigationTargetEEEB12_.exit.i.i.i unwind label %bb.al, !noalias !1713

bb.bd:                                            ; preds = %bb.ba
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1713
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB10_16NavigationTargetEEEB12_.exit.i.i.i: ; preds = %bb.bc, %bb.bb, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1713
  br label %bb.ap

bb.be:                                            ; preds = %bb.bg, %bb.aw
  %.sroa.010.2.i.i.i = phi i1 [ false, %bb.bg ], [ true, %bb.aw ]
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !noalias !1713, !noundef !26
  %i.do = add i32 %i.dn, -1                       ; 2 uses
  store i32 %i.do, ptr %i.dm, align 4, !noalias !1713
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.bf, label %.noexc52.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cy) #36
          to label %.noexc52.i.i.i unwind label %bb.aj, !noalias !1713

bb.bg:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1713
  invoke void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtBL_16NavigationTargetEE3zipINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEBN_(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.i)
          to label %bb.bh unwind label %bb.be, !noalias !1713

bb.bh:                                            ; preds = %bb.bg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !noalias !1713, !noundef !26
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 4, !noalias !1713
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECslLuZgPVt6hg_3ide.exit54.i.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cy) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECslLuZgPVt6hg_3ide.exit54.i.i.i unwind label %.split.i.i.i, !noalias !1713

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECslLuZgPVt6hg_3ide.exit54.i.i.i: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1713
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !noalias !1713, !noundef !26
  %i.dw = add i32 %i.dv, -1                       ; 2 uses
  store i32 %i.dw, ptr %i.du, align 4, !noalias !1713
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit55.i.i.i

bb.bj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECslLuZgPVt6hg_3ide.exit54.i.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ac) #36, !noalias !1713
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit55.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit55.i.i.i: ; preds = %bb.bj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECslLuZgPVt6hg_3ide.exit54.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1713
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit48.i.i.i

bb.bk:                                            ; preds = %.noexc52.i.i.i, %.split.thread.i.i.i
  %.pn20172.i.i.i = phi { ptr, i32 } [ %i.cz, %.split.thread.i.i.i ], [ %i.dl, %.noexc52.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB10_16NavigationTargetEEEB12_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.j) #34
          to label %.body.i.i.i unwind label %bb.aj, !noalias !1713

_RNCNvNtCslLuZgPVt6hg_3ide14call_hierarchy14outgoing_callss1_0B5_.exit.thread.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit50.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit48.i.i.i, %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1712
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext12CallableExprINtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB36_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB7s_13FlattenCompatppE9iter_fold7flattenB22_uNCINvNvXsi_B7s_B7F_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB22_uNCINvNvB8K_8for_each4callTB32_B4A_ENCB6z_s2_0E0E0E0E0B36_.exit.i

_RNCNvNtCslLuZgPVt6hg_3ide14call_hierarchy14outgoing_callss1_0B5_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit48.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %i.y, i64 176, i1 false), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1713
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvXsy_NtCslLuZgPVt6hg_3ide17navigation_targetINtB5_15UpmappingResultNtB5_16NavigationTargetENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB7_(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.dy, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.e), !noalias !1712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !noalias !1712
  %.192..192..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.192..192..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !1712
  %.sroa.0.0.copyload1.i.i = load i32, ptr %i.f, align 8, !noalias !1712 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1712
  %.not.i.i = icmp eq i32 %.sroa.0.0.copyload1.i.i, 0
  br i1 %.not.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext12CallableExprINtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB36_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB7s_13FlattenCompatppE9iter_fold7flattenB22_uNCINvNvXsi_B7s_B7F_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB22_uNCINvNvB8K_8for_each4callTB32_B4A_ENCB6z_s2_0E0E0E0E0B36_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide14call_hierarchy14outgoing_callss1_0B5_.exit.i.i
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(204) %.sroa.45.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(204) %i.ad, i64 204, i1 false), !noalias !1712
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !1712, !nonnull !26, !align !32, !noundef !26
  store i32 %.sroa.0.0.copyload1.i.i, ptr %i.c, align 8, !noalias !1712
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1724
  store ptr %.val.i.i, ptr %i.b, align 8, !noalias !1725
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.ec = load i64, ptr %i.ea, align 8, !alias.scope !1726, !noalias !1727, !noundef !26 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 8, !alias.scope !1726, !noalias !1727, !noundef !26
  %i.ee = zext i32 %i.ed to i64                   ; 3 uses
  %i.ef = icmp eq i64 %i.ec, %i.ee
  br i1 %i.ef, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.i.i.i, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.lr.ph.i.i.i.i.i.i.i

_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.lr.ph.i.i.i.i.i.i.i: ; preds = %bb.bl
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %.sroa.84.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.ei = load <2 x i32>, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !alias.scope !1728, !noalias !1729
  %i.ej = load i32, ptr %i.eh, align 4, !alias.scope !1728, !noalias !1729
  br label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.i.i.i.i.i

_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bq, %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.lr.ph.i.i.i.i.i.i.i
  %i.ek = phi i64 [ %i.ec, %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.lr.ph.i.i.i.i.i.i.i ], [ %i.el, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.el = add nuw nsw i64 %i.ek, 1                ; 4 uses
  %i.em = getelementptr inbounds nuw [80 x i8], ptr %i.eg, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !1731, !noalias !1732 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i, label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %i.en = landingpad { ptr, i32 }
          cleanup
  store i64 %i.el, ptr %i.ea, align 8, !alias.scope !1726, !noalias !1733
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtBI_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.c) #34
          to label %common.resume.i.i unwind label %bb.br, !noalias !1719

bb.bn:                                            ; preds = %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !1734
  store i64 %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1725
  store i32 %.sroa.0.0.copyload1.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1725
  store <2 x i32> %i.ei, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1725
  store i32 %i.ej, ptr %.sroa.84.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1725
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEENCNvNtB1T_14call_hierarchy14outgoing_callss2_0E0INtB7_5FnMutTuB1O_EE8call_mutB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.bq unwind label %bb.bm, !noalias !1735

_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i: ; preds = %bb.bq, %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.el, %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.i.i.i.i.i ], [ %i.ee, %bb.bq ]
  store i64 %.lcssa.i.i.i, ptr %i.ea, align 8, !alias.scope !1726, !noalias !1733
  br label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.i.i.i

_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i, %bb.bl
  invoke void @_RNvXsc_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.ea)
          to label %_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtBc_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtBe_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenB1B_uNCINvNvB6n_8for_each4callTB2B_B49_ENCNvNtB2F_14call_hierarchy14outgoing_callss2_0E0E0E0B2F_.exit.i.i unwind label %bb.bo, !noalias !1719

bb.bo:                                            ; preds = %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.i.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.eb)
          to label %common.resume.i.i unwind label %bb.bp, !noalias !1719

bb.bp:                                            ; preds = %bb.bo
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1719
  unreachable

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1725
  %i.eq = icmp eq i64 %i.el, %i.ee
  br i1 %i.eq, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bm
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1719
  unreachable

_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtBc_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtBe_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenB1B_uNCINvNvB6n_8for_each4callTB2B_B49_ENCNvNtB2F_14call_hierarchy14outgoing_callss2_0E0E0E0B2F_.exit.i.i: ; preds = %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBW_.exit.i._crit_edge.i.i.i.i.i.i.i
  call void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.eb), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1719
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext12CallableExprINtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB36_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB7s_13FlattenCompatppE9iter_fold7flattenB22_uNCINvNvXsi_B7s_B7F_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB22_uNCINvNvB8K_8for_each4callTB32_B4A_ENCB6z_s2_0E0E0E0E0B36_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext12CallableExprINtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB36_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB7s_13FlattenCompatppE9iter_fold7flattenB22_uNCINvNvXsi_B7s_B7F_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB22_uNCINvNvB8K_8for_each4callTB32_B4A_ENCB6z_s2_0E0E0E0E0B36_.exit.i: ; preds = %_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtBc_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtBe_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenB1B_uNCINvNvB6n_8for_each4callTB2B_B49_ENCNvNtB2F_14call_hierarchy14outgoing_callss2_0E0E0E0B2F_.exit.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide14call_hierarchy14outgoing_callss1_0B5_.exit.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide14call_hierarchy14outgoing_callss1_0B5_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1709
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1T_3ast8expr_ext12CallableExpruNvYB2G_NtB2K_7AstNode4castNCIB2_B2G_INtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB4W_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB9i_13FlattenCompatppE9iter_fold7flattenB3S_uNCINvNvXsi_B9i_B9v_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3S_uNCINvNvBaA_8for_each4callTB4S_B6q_ENCB8p_s2_0E0E0E0E0E0B4W_.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1T_3ast8expr_ext12CallableExpruNvYB2G_NtB2K_7AstNode4castNCIB2_B2G_INtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB4W_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB9i_13FlattenCompatppE9iter_fold7flattenB3S_uNCINvNvXsi_B9i_B9v_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3S_uNCINvNvBaA_8for_each4callTB4S_B6q_ENCB8p_s2_0E0E0E0E0E0B4W_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext12CallableExprINtNtB6_3zip3ZipINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtB8_7sources6repeat6RepeatINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEEuNCNvNtB36_14call_hierarchy14outgoing_callss1_0NCINvNvMsg_NtB6_7flattenINtB7s_13FlattenCompatppE9iter_fold7flattenB22_uNCINvNvXsi_B7s_B7F_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB22_uNCINvNvB8K_8for_each4callTB32_B4A_ENCB6z_s2_0E0E0E0E0B36_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtCs42xZ1oUXfIG_8smol_str7SmolStruINtNtBb_6result6ResultuNtNtBb_3fmt5ErrorENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4c_4Type24type_and_const_argumentss_0NCINvNvNtNtNtBX_6traits8iterator8Iterator12try_for_each4callB2Q_B3o_NCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB6j_10FormatWithINtNtBV_8peekable8PeekableINtNtBV_5chain5ChainINtNtBb_6option8IntoIterB2Q_EINtBT_9FilterMapINtNtBV_7flatten7FlatMapIB7U_TNtCsileJQcQObtj_7hir_def5AdtIdNtB1P_11GenericArgsEEINtNtBV_6copied6CopiedINtNtNtBb_5slice4iter4IterB1N_EENCB45_0EB43_EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtB3N_7Display3fmts_0E0E0INtB7_5FnMutTuB1N_EE8call_mutBba_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !26, !align !32, !noundef !26 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1779, !nonnull !26, !align !32, !noundef !26
  call fastcc void @_RNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8_4Type24type_and_const_argumentss_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %1) #37, !noalias !1779
  %i.g = load i8, ptr %i.d, align 8, !range !63, !noalias !1779, !noundef !26
  %.not.i = icmp eq i8 %i.g, -1
  br i1 %.not.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtCs42xZ1oUXfIG_8smol_str7SmolStruINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3D_4Type24type_and_const_argumentss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2h_B2P_NCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB5K_10FormatWithINtNtB6_8peekable8PeekableINtNtB6_5chain5ChainINtNtBa_6option8IntoIterB2h_EINtB4_9FilterMapINtNtB6_7flatten7FlatMapIB7l_TNtCsileJQcQObtj_7hir_def5AdtIdNtB1g_11GenericArgsEEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1e_EENCB3w_0EB3u_EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtB3e_7Display3fmts_0E0E0BaB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1779, !nonnull !26, !align !32, !noundef !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val2.i = load ptr, ptr %i.i, align 8, !alias.scope !1779 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %i.j = load ptr, ptr %.val.i, align 8, !noalias !1782, !nonnull !26, !align !32, !noundef !26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !1782, !noundef !26 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1782, !nonnull !26, !align !32, !noundef !26
  %i.o = load ptr, ptr %i.j, align 8, !noalias !1782, !nonnull !26, !noundef !26
  %i.p = invoke noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.l)
          to label %bb.k unwind label %bb.o, !noalias !1782

bb.d:                                             ; preds = %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1782
  store ptr %.val2.i, ptr %i.a, align 8, !noalias !1782
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.a, ptr %i.q, align 8, !noalias !1782
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @32, ptr %i.r, align 8, !noalias !1782
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = load ptr, ptr %.val2.i, align 8, !noalias !1784, !nonnull !26, !align !32, !noundef !26
  %i.t = invoke noundef zeroext i1 @_RNvXsg_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #37
          to label %_RNCNCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB6_10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB10_5chain5ChainINtNtB14_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtB10_10filter_map9FilterMapINtNtB10_7flatten7FlatMapIB2f_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB10_6copied6CopiedINtNtNtB14_5slice4iter4IterNtB4H_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB72_4Type24type_and_const_arguments0ENCB6V_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtNtB14_3fmt7Display3fmts_00B8h_.exit.i.i.i.i unwind label %bb.e, !noalias !1782, !inline_history !1785

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  %i.v = load i8, ptr %i.b, align 8, !range !64, !alias.scope !1788, !noalias !1782, !noundef !26
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %i.v, 25
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1791, !noalias !1782, !nonnull !26, !noundef !26
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !1792
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide.exit5.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide.exit5.i.i.i unwind label %bb.j, !noalias !1782

_RNCNCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB6_10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB10_5chain5ChainINtNtB14_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtB10_10filter_map9FilterMapINtNtB10_7flatten7FlatMapIB2f_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB10_6copied6CopiedINtNtNtB14_5slice4iter4IterNtB4H_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB72_4Type24type_and_const_arguments0ENCB6V_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtNtB14_3fmt7Display3fmts_00B8h_.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %i.aa = load i8, ptr %i.b, align 8, !range !64, !alias.scope !1795, !noalias !1782, !noundef !26
  %switch.i.i1.i.i.i.i = icmp samesign ult i8 %i.aa, 25
  br i1 %switch.i.i1.i.i.i.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0B7_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNCNCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB6_10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB10_5chain5ChainINtNtB14_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtB10_10filter_map9FilterMapINtNtB10_7flatten7FlatMapIB2f_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB10_6copied6CopiedINtNtNtB14_5slice4iter4IterNtB4H_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB72_4Type24type_and_const_arguments0ENCB6V_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtNtB14_3fmt7Display3fmts_00B8h_.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1798, !noalias !1782, !nonnull !26, !noundef !26
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !1799
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0B7_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab) #36, !noalias !1782
  br label %_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0B7_.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1782
  unreachable

bb.k:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %i.ag = load i8, ptr %i.c, align 8, !range !64, !alias.scope !1802, !noalias !1780, !noundef !26
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.ag, 25
  br i1 %switch.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtBe_6result6ResultuNtNtBe_3fmt5ErrorENCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2B_10FormatWithINtNtNtBc_8adapters8peekable8PeekableINtNtB3w_5chain5ChainINtNtBe_6option8IntoIterB1k_EINtNtB3w_10filter_map9FilterMapINtNtB3w_7flatten7FlatMapIB4o_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB3w_6copied6CopiedINtNtNtBe_5slice4iter4IterNtB6m_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8G_4Type24type_and_const_arguments0ENCB8z_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtB2g_7Display3fmts_0E0B9V_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1805, !noalias !1780, !nonnull !26, !noundef !26
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1806
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.n, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtBe_6result6ResultuNtNtBe_3fmt5ErrorENCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2B_10FormatWithINtNtNtBc_8adapters8peekable8PeekableINtNtB3w_5chain5ChainINtNtBe_6option8IntoIterB1k_EINtNtB3w_10filter_map9FilterMapINtNtB3w_7flatten7FlatMapIB4o_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB3w_6copied6CopiedINtNtNtBe_5slice4iter4IterNtB6m_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8G_4Type24type_and_const_arguments0ENCB8z_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtB2g_7Display3fmts_0E0B9V_.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah) #36, !noalias !1780
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtBe_6result6ResultuNtNtBe_3fmt5ErrorENCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2B_10FormatWithINtNtNtBc_8adapters8peekable8PeekableINtNtB3w_5chain5ChainINtNtBe_6option8IntoIterB1k_EINtNtB3w_10filter_map9FilterMapINtNtB3w_7flatten7FlatMapIB4o_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB3w_6copied6CopiedINtNtNtBe_5slice4iter4IterNtB6m_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8G_4Type24type_and_const_arguments0ENCB8z_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtB2g_7Display3fmts_0E0B9V_.exit.i

_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0B7_.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RNCNCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB6_10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB10_5chain5ChainINtNtB14_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtB10_10filter_map9FilterMapINtNtB10_7flatten7FlatMapIB2f_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB10_6copied6CopiedINtNtNtB14_5slice4iter4IterNtB4H_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB72_4Type24type_and_const_arguments0ENCB6V_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtNtB14_3fmt7Display3fmts_00B8h_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1782
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtBe_6result6ResultuNtNtBe_3fmt5ErrorENCNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2B_10FormatWithINtNtNtBc_8adapters8peekable8PeekableINtNtB3w_5chain5ChainINtNtBe_6option8IntoIterB1k_EINtNtB3w_10filter_map9FilterMapINtNtB3w_7flatten7FlatMapIB4o_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB3w_6copied6CopiedINtNtNtBe_5slice4iter4IterNtB6m_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8G_4Type24type_and_const_arguments0ENCB8z_s_0EEENCNCNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctests0_0s1_0ENtB2g_7Display3fmts_0E0B9V_.exit.i

end_hunk_1
begin_hunk_2_@_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCs8Xq8PKFYOms_3hir4Typej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide:bb.a
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir4TypeEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECslLuZgPVt6hg_3ide.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !26 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !2541, !nonnull !26, !noundef !26 ; 2 uses
  %i.h = ptrtoint ptr %.val7.i to i64
  %i.i = and i64 %i.h, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit, label %.noexc.i

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.val7.i, i64 -1   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.j), !noalias !2541
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.l ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2541
  store ptr %i.m, ptr %i.b, align 8, !noalias !2541
  %i.n = load atomic i64, ptr %i.m acquire, align 8, !noalias !2541
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.c, label %.noexc8.i, !prof !27

bb.c:                                             ; preds = %.noexc.i
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !2541
  br label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.c, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2541
  store ptr %i.m, ptr %i.a, align 8, !noalias !2541
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2541
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit

common.resume:                                    ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.e, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.r, ptr %i.t, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECslLuZgPVt6hg_3ide.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit: ; preds = %.noexc8.i, %.lr.ph.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %0, align 8, !noundef !26  ; 5 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit.i.preheader: ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit.i.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.g, %bb.b ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide11inlay_hints12LazyPropertyNtB10_12InlayTooltipEEEB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #34
          to label %.body.i unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCslLuZgPVt6hg_3ide11inlay_hints12LazyPropertyNtB10_12InlayTooltipEEEB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBG_.exit unwind label %bb.g

bb.e:                                             ; preds = %.body.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.f:                                             ; preds = %.lr.ph36
  %i.k = add nuw nsw i64 %.sroa.0.1.i35, 1        ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %common.resume, label %.lr.ph36

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.n = icmp eq i64 %i.b, 1
  br i1 %i.n, label %common.resume, label %.lr.ph36

.lr.ph36:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i35 = phi i64 [ %i.k, %bb.f ], [ 1, %.body.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.sroa.0.1.i35
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o) #34
          to label %bb.f unwind label %bb.h

common.resume:                                    ; preds = %bb.f, %.body.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.j ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph36
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !nonnull !26, !noundef !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %i.u, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEEB1c_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEEB1c_.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBG_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBG_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit.i.preheader, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEEB1c_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsuAhG64lL82_9text_size5range9TextRangej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size5range9TextRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsuAhG64lL82_9text_size5range9TextRangeEECslLuZgPVt6hg_3ide.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsuAhG64lL82_9text_size5range9TextRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsuAhG64lL82_9text_size5range9TextRangeEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsuAhG64lL82_9text_size5range9TextRangeEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsuAhG64lL82_9text_size5range9TextRangeEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsuAhG64lL82_9text_size5range9TextRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsuAhG64lL82_9text_size5range9TextRangeEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !2544, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !2544, !noundef !26
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !2544
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36, !noalias !2544
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit

common.resume:                                    ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEECslLuZgPVt6hg_3ide.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !2547, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !2547, !noundef !26
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !2547
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36, !noalias !2547
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit

end_hunk_2
begin_hunk_3_@_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide:bb.a
bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !2559, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !2559, !noundef !26
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !2559
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36, !noalias !2559
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit

common.resume:                                    ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEECslLuZgPVt6hg_3ide.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !2562, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !2562, !noundef !26
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !2562
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36, !noalias !2562
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit

common.resume:                                    ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEECslLuZgPVt6hg_3ide.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARej3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECslLuZgPVt6hg_3ide.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecReEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecReEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010.i
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !2565, !nonnull !26, !noundef !26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !2565, !noundef !26
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !noalias !2565
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d, !noalias !2565

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.c
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.n = icmp eq i64 %i.g, %i.c
  br i1 %i.n, label %common.resume, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g
  %.val.i2 = load ptr, ptr %i.o, align 8, !alias.scope !2565, !nonnull !26, !noundef !26 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i2, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !2565, !noundef !26
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !noalias !2565
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %common.resume

bb.e:                                             ; preds = %.lr.ph13.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i2) #36
          to label %common.resume unwind label %bb.f, !noalias !2565

common.resume:                                    ; preds = %bb.e, %.lr.ph13.i, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.z, %bb.h ], [ %i.m, %.lr.ph13.i ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !2565
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %i.y, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECslLuZgPVt6hg_3ide.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_ENtNtNtB2k_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i.preheader: ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECslLuZgPVt6hg_3ide.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.c
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i.preheader, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i
  %.sroa.0.0.i14 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i14
  %i.h = add nuw nsw i64 %.sroa.0.0.i14, 1        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtBK_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtBR_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtBR_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph16
  %i.l = add nuw nsw i64 %.sroa.0.1.i15, 1        ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %common.resume, label %.lr.ph16

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECslLuZgPVt6hg_3ide.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = icmp eq i64 %i.h, %i.c
  br i1 %i.o, label %common.resume, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i15 = phi i64 [ %i.l, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #34
          to label %bb.d unwind label %bb.f

common.resume:                                    ; preds = %bb.d, %.body.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.lr.ph16
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.t, ptr %i.v, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBK_11MacroCallIdIBw_INtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1n_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEENtNtNtB1O_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECslLuZgPVt6hg_3ide.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBR_11MacroCallIdINtNtB7_3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1u_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEENtNtNtB27_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBR_11MacroCallIdINtNtB7_3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1u_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEENtNtNtB27_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit.i.preheader, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 16, !noundef !26 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 16, !nonnull !26, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECslLuZgPVt6hg_3ide.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecoEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecoEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsx_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtBT_19RustcEnumVariantIdxENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 339
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @288, i64 noundef 6)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 12, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @305)
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 13, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309)
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311)
  %i.q = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 14, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @314)
  %i.s = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 20, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 18, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @317)
  %i.u = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB7_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleEENCNvNtCslLuZgPVt6hg_3ide9runnables12runnable_mod0ENtCscFGNKo4Sl5v_9itertools9Itertools4joinB2H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
end_hunk_3
