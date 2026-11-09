Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_ssr-f5db77c992f4af7d.ide_ssr.284584ac21e5de80-cgu.05?download=true
inline.NumInlined: 579
inline.NumDeleted: 272
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCs3smBju6uAx0_7ide_ssr:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.y = load i32, ptr %i.x, align 8, !noundef !5
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i2 = phi i32 [ %i.z, %bb.m ], [ %i.y, %bb.l ] ; 3 uses
  %i.aa = load i64, ptr %i.f, align 8, !range !8, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = trunc nuw i64 %i.aa to i1
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 4294967295
  %i.ah = shl nuw i64 %i.af, 32
  %.sroa.09.0.insert.insert.i.i5 = select i1 %i.ag, i64 513, i64 %i.ah ; 2 uses
  %i.ai = trunc i64 %.sroa.09.0.insert.insert.i.i5 to i1
  br i1 %i.ai, label %bb.p, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6, !prof !10

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #28
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6: ; preds = %bb.o
  %.sroa.6.0.extract.shift.i.i.i7 = lshr i64 %.sroa.09.0.insert.insert.i.i5, 32
  %.sroa.6.0.extract.trunc.i.i.i8 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i7 to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %i.ad, align 8, !noundef !5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6
  %.sroa.02.0.i3 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i8, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6 ], [ %i.aj, %bb.q ]
  %i.ak = add i32 %.sroa.02.0.i3, %.sroa.0.0.i2   ; 2 uses
  %.not.i4 = icmp ugt i32 %.sroa.0.0.i2, %i.ak
  br i1 %.not.i4, label %bb.s, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit, !prof !10

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit: ; preds = %bb.r, %bb.i
  %.sroa.0.0.i.pn = phi i32 [ %.sroa.0.0.i, %bb.i ], [ %.sroa.0.0.i2, %bb.r ]
  %.pn11 = phi i32 [ %i.w, %bb.i ], [ %i.ak, %bb.r ]
  %.pn10 = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i.pn, 0
  %.pn = insertvalue { i32, i32 } %.pn10, i32 %.pn11, 1
  ret { i32, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i16 0, 329) i16 @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !606 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noalias !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5, !nonnull !5, !noundef !5
  %i.f = shl nuw nsw i64 %i.c, 2
  %.sroa.0.0.in.idx.i1 = xor i64 %i.f, 4
  %.sroa.0.0.in.i2 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.in.idx.i1
  %.sroa.0.0.i3 = load i16, ptr %.sroa.0.0.in.i2, align 4, !noalias !5, !noundef !5
  %i.g = tail call noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i3), !noalias !5
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs3smBju6uAx0_7ide_ssr(i64 noundef %0) unnamed_addr #7 !guid !607 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nuw nsw i64 %0, 32
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB4_8Resolver20resolve_pattern_tree(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !630 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 10 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !5 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #24
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body22
  br i1 %.sroa.01.1, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit31

.thread:                                          ; preds = %bb.d, %bb.g, %bb.h, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.o = add nuw i32 %i.l, 1
  store i32 %i.o, ptr %i.k, align 4
  invoke fastcc void @_RNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB4_8Resolver7resolve(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, i32 noundef 0, ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.i, align 8, !range !14, !noundef !5
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 2, ptr %i.q, align 8
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit unwind label %bb.ad

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB2n_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = load ptr, ptr %1, align 8, !nonnull !5, !align !19, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.r, ptr %i.s, align 8
  invoke void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12UfcsCallInfoNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorTB15_B2B_EE9from_iterINtNtNtB4e_8adapters10filter_map9FilterMapINtB7_4IterB15_NtB2D_12ResolvedPathENCNvMs_B2D_NtB2D_8Resolver20resolve_pattern_tree0EEB2F_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = load i32, ptr %i.k, align 4, !noalias !631, !noundef !5 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.v = add nuw i32 %i.t, 1
  store i32 %i.v, ptr %i.k, align 4, !noalias !631
  invoke void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %2)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #24
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.k
  unreachable

.body22:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit25, %bb.ac, %bb.v, %bb.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i, %bb.l, %.body
  %.pn = phi { ptr, i32 } [ %i.be, %bb.v ], [ %eh.lpad-body, %.body ], [ %i.w, %bb.l ], [ %i.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i ], [ %i.be, %bb.w ], [ %i.bv, %bb.ac ], [ %i.bv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit25 ] ; 2 uses
  %.sroa.01.1 = phi i1 [ true, %bb.v ], [ true, %.body ], [ true, %bb.l ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i ], [ true, %bb.w ], [ false, %bb.ac ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit25 ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12UfcsCallInfoEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.c unwind label %bb.ab

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i7.i.i.i, %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !632
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %i.x = load i64, ptr %i.a, align 8, !range !11, !noalias !632, !noundef !5 ; 2 uses
  %.not11.not.i = icmp eq i64 %i.x, 2
  br i1 %.not11.not.i, label %.loopexit44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc17
  %.sroa.55.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.noexc20, %.lr.ph.i
  %i.y = phi i64 [ %i.x, %.lr.ph.i ], [ %i.ay, %.noexc20 ]
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i.a, align 8, !noalias !632 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !632 ; 10 uses
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.n, label %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0Cs3smBju6uAx0_7ide_ssr.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !633, !noundef !5
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !noalias !633
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.sink.split.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i

_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0Cs3smBju6uAx0_7ide_ssr.exit.i.i: ; preds = %bb.m
  %.not.i.i = icmp eq i64 %.sroa.55.0.copyload.i, 2
  br i1 %.not.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0Cs3smBju6uAx0_7ide_ssr.exit.i.i
  %3 = trunc nuw i64 %.sroa.55.0.copyload.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  br i1 %3, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %.sroa.6.0.copyload.i, align 8, !range !8, !noalias !634, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !634, !nonnull !5, !noundef !5
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %.sroa.0.0.in.idx.i.i.i.i.i.i = xor i64 %i.ah, 4
  %.sroa.0.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.0.in.idx.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = load i16, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 4, !noalias !634, !noundef !5
  %i.ai = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i.i.i.i.i)
          to label %_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr.exit.i.i.i.i.i unwind label %bb.q, !noalias !635

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noalias !635, !noundef !5
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !noalias !635
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %.body

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #27
          to label %.body unwind label %bb.t, !noalias !635

_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !635, !noundef !5
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !noalias !635
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.i

bb.s:                                             ; preds = %_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr.exit.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #27
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !635
  unreachable

bb.u:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noalias !635, !noundef !5
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !noalias !635
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.sink.split.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.i: ; preds = %bb.s, %_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr.exit.i.i.i.i.i
  %i.ax = icmp eq i16 %i.ai, 86
  br i1 %i.ax, label %.loopexit44, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.sink.split.i: ; preds = %bb.u, %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #27
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.sink.split.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.i, %bb.u, %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0Cs3smBju6uAx0_7ide_ssr.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !632
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i
  %i.ay = load i64, ptr %i.a, align 8, !range !11, !noalias !632, !noundef !5 ; 2 uses
  %.not.not.i = icmp eq i64 %i.ay, 2
  br i1 %.not.not.i, label %.loopexit44, label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.thread.sink.split.i, %bb.s, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.aj, %bb.r ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #25
          to label %.body22 unwind label %bb.ab

.loopexit44:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.i, %.noexc20, %.noexc17
  %.not9.i = phi i8 [ 0, %.noexc17 ], [ 1, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB56_NCNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB8y_8Resolver20resolve_pattern_trees_0E0E0E0B8A_.exit.i ], [ 0, %.noexc20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !632
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !639, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !639, !noundef !5
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !noalias !639
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i: ; preds = %.loopexit44
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.i.i.i unwind label %bb.v, !noalias !639

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val4.i.i.i = load i64, ptr %i.bf, align 8, !range !11, !alias.scope !639, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val5.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !639 ; 3 uses
  %i.bh = icmp eq i64 %.val4.i.i.i, 2
  br i1 %i.bh, label %.body22, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !640, !noundef !5
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !noalias !640
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i, label %.body22

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i: ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i) #27
          to label %.body22 unwind label %bb.y, !noalias !639

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i, %.loopexit44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val2.i.i.i = load i64, ptr %i.bm, align 8, !range !11, !alias.scope !639, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val3.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !639 ; 3 uses
  %i.bo = icmp eq i64 %.val2.i.i.i, 2
  br i1 %i.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !641, !noundef !5
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !noalias !641
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i7.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i7.i.i.i: ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.l

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !639
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1l_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit25 unwind label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1F_NtB1F_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1H_13utility_types11NodeOrTokenINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtB4_7convert4FromIB3r_B2E_NtB1F_11SyntaxTokenEE4fromEECs3smBju6uAx0_7ide_ssr.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.not9.i, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit27

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit27: ; preds = %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.ah, %bb.af, %bb.ac, %bb.z, %.body22, %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit25: ; preds = %bb.z
  %i.bx = load i32, ptr %i.k, align 4, !noundef !5
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.k, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ac, label %.body22

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit25
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #27
          to label %.body22 unwind label %bb.ab

bb.ad:                                            ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cb = load i32, ptr %i.k, align 4, !noundef !5
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.k, align 4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit27

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB36_.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #27
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit27

bb.af:                                            ; preds = %.thread, %bb.c
  %.pn.pn37 = phi { ptr, i32 } [ %i.n, %.thread ], [ %.pn, %bb.c ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.ag unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit31: ; preds = %bb.ag, %bb.ah, %bb.c
  %.pn642 = phi { ptr, i32 } [ %.pn, %bb.c ], [ %.pn6.ph, %bb.ah ], [ %.pn6.ph, %bb.ag ]
  resume { ptr, i32 } %.pn642

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.pn6.ph = phi { ptr, i32 } [ %i.ca, %bb.ad ], [ %.pn.pn37, %bb.af ] ; 2 uses
  %i.ce = load i32, ptr %i.k, align 4, !noundef !5
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cf, ptr %i.k, align 4
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit31

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit31 unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtCs3smBju6uAx0_7ide_ssr9resolvingNtB4_8Resolver25path_contains_placeholder(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !650 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.val20 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = tail call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr(ptr nonnull %.val20) #29 ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.f)
          to label %bb.e unwind label %bb.d       ; 8 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit31: ; preds = %bb.h, %bb.g, %bb.a
  %i.h = call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4PathECs3smBju6uAx0_7ide_ssr(ptr nonnull %.val20) #29 ; 6 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit42, label %bb.ab
end_hunk_0
