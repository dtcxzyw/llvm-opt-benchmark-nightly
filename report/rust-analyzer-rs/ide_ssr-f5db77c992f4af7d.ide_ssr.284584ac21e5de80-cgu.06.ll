Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_ssr-f5db77c992f4af7d.ide_ssr.284584ac21e5de80-cgu.06?download=true
inline.NumInlined: 545
inline.NumDeleted: 291
begin_hunk_0_@_RNvXs_Cs3smBju6uAx0_7ide_ssrNtB4_14MatchDebugInfoNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs9GitHPCrz2Q_5rowan3apiINtB2_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs3smBju6uAx0_7ide_ssr, ptr %.sroa.464.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @51, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.y, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call noundef zeroext i1 %i.v(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 29) #26
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs3smBju6uAx0_7ide_ssr6nesterNtB6_10SsrMatchesINtNtCshzWfHUSfYae_4core7convert4FromNtB4_14MatchCollectorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !594 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEE5drainB2p_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs3smBju6uAx0_7ide_ssr10SsrMatchesEBD_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #25
          to label %bb.t unwind label %bb.s

bb.b:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsL_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawDrainTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %bb.f unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11: ; preds = %.body, %bb.r, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.o, %bb.r ], [ %i.o, %.body ]
  invoke void @_RNvXsK_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawDrainTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit unwind label %bb.s

bb.e:                                             ; preds = %bb.q, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11

bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !range !16, !noundef !5
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !595, !noundef !5 ; 3 uses
  %i.m = load i64, ptr %i.g, align 8, !range !19, !alias.scope !595, !noundef !5
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.p unwind label %bb.i, !noalias !596

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d) #25
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsK_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawDrainTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit7 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit7: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.q = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !597
  store ptr %i.a, ptr %i.b, align 8, !noalias !598
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.o, label %bb.l, !prof !12

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit7
  %i.t = icmp samesign ult i64 %i.r, 21
  br i1 %i.t, label %bb.n, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvXs_NtB13_6nesterNtB13_10SsrMatchesINtNtB8_7convert4FromNtB2v_14MatchCollectorE4from0E0INtNtB1M_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef range(i64 0, 72057594037927936) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %bb.o unwind label %bb.b

bb.n:                                             ; preds = %bb.l
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvXs_NtB1q_6nesterNtB1q_10SsrMatchesINtNtBa_7convert4FromNtB2T_14MatchCollectorE4from0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef range(i64 0, 72057594037927936) %i.r, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.b

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit7, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.p:                                             ; preds = %bb.g, %bb.h
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !595, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.u, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  %i.w = add i64 %i.l, 1
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val6 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !5
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

.body:                                            ; preds = %bb.i
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !5
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11

bb.r:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11 unwind label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit11, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map5DrainINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB34_.exit
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr6nester14MatchCollectorEBF_.exit unwind label %bb.s

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr6nester14MatchCollectorEBF_.exit: ; preds = %bb.t
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 !guid !599 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !600 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !625 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !14, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !20, !alias.scope !626, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !626, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !626, !noundef !5 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !626 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !628, !noalias !629, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !630, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !630, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !630, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !630, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !627
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !628, !noalias !631, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !632, !noundef !5 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !632, !noundef !5
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cv = zext nneg i8 %i.cl to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cw = load i8, ptr %i.bq, align 1, !noalias !632, !noundef !5
  %i.cx = shl nuw nsw i32 %i.cs, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.co, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.de = load i8, ptr %i.bt, align 1, !noalias !632, !noundef !5
  %i.df = shl nuw nsw i32 %i.co, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.da, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %.loopexit.loopexit

.loopexit199:                                     ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa195 = phi i8 [ %.promoted52, %.split.i.i.peel ], [ %.promoted52, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa192 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dm = xor i8 %.lcssa195, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !626
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa192, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21, !noalias !631
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit14.i.i ], [ %i.dl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit16.i.i ], [ %i.ct, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr.exit12.i.i ], [ %i.cv, %bb.p ]
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit200:                                     ; preds = %bb.d
  %i.do = xor i8 %.promoted52, 1
  store i8 %i.do, ptr %i.g, align 8, !alias.scope !626
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit200
  store i8 1, ptr %i.d, align 2, !alias.scope !626
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa194 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !626
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !626
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit200
  %i.dp = phi i64 [ %.lcssa194, %.loopexit ], [ %i.k, %.loopexit200 ], [ %i.k, %.critedge ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit

_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.r, %bb.q, %.preheader, %.split.us.i12, %._crit_edge.i5, %.split.us.i, %._crit_edge.i
  %storemerge.i.sink = phi i64 [ 1, %.split.us.i12 ], [ 1, %.split.us.i ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i5 ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %.promoted.i = load i64, ptr %i.ch, align 8, !alias.scope !634 ; 2 uses
  %i.ds = add i64 %.promoted.i, %i.ci             ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cc
  br i1 %i.dt, label %.lr.ph.i1, label %._crit_edge.i

.lr.ph.i1:                                        ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !634, !noundef !5
  %i.dw = load i64, ptr %i.c, align 8, !alias.scope !634 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !634 ; 2 uses
  %i.dz = sub i64 %i.cg, %i.dy
  %invariant.op = sub i64 1, %i.dw
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !634
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit

.lr.ph.split.i:                                   ; preds = %bb.v, %.lr.ph.i1
  %i.ea = phi i64 [ %.sink70.i, %bb.v ], [ %i.bx, %.lr.ph.i1 ] ; 3 uses
  %i.eb = phi i64 [ %i.el, %bb.v ], [ %i.ds, %.lr.ph.i1 ]
  %i.ec = phi i64 [ %.sink71.i, %bb.v ], [ %.promoted.i, %.lr.ph.i1 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !635, !noundef !5
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.dv
  %.not.i2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.ej = add i64 %i.ec, %i.cg
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %..i.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.ek = icmp ult i64 %..i.i3, %i.cg
  br i1 %i.ek, label %.lr.ph153, label %.preheader36.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink71.i = phi i64 [ %i.fj, %bb.z ], [ %i.fi, %bb.y ], [ %i.ej, %bb.t ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.z ], [ %i.dz, %bb.y ], [ 0, %bb.t ] ; 2 uses
  store i64 %.sink71.i, ptr %i.ch, align 8, !alias.scope !634
  store i64 %.sink70.i, ptr %i.bw, align 8, !alias.scope !634
  %i.el = add i64 %.sink71.i, %i.ci               ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cc
  br i1 %i.em, label %.lr.ph.split.i, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph153
  %i.en = add nuw nsw i64 %.sroa.04.0.i152, 1     ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.cg
  br i1 %i.eo, label %.lr.ph153, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.w, %bb.u
  %i.ep = icmp ult i64 %i.ea, %i.dw
  br i1 %i.ep, label %.lr.ph155, label %.split.us.i

.lr.ph153:                                        ; preds = %bb.u, %bb.w
  %.sroa.04.0.i152 = phi i64 [ %i.en, %bb.w ], [ %..i.i3, %bb.u ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.i152
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !636, !noundef !5
  %i.es = add i64 %.sroa.04.0.i152, %i.ec         ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.cc
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !635, !noundef !5
  %.not21.i = icmp eq i8 %i.er, %i.ev
  br i1 %.not21.i, label %bb.w, label %bb.z

.preheader36.i:                                   ; preds = %bb.x
  %i.ew = icmp ult i64 %i.ea, %i.fa
  br i1 %i.ew, label %.lr.ph155, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ex = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ex, ptr %i.ch, align 8, !alias.scope !634
  store i64 0, ptr %i.bw, align 8, !alias.scope !634
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ey, align 8, !alias.scope !637
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ez, align 8, !alias.scope !637
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit

.lr.ph155:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i154 = phi i64 [ %i.fa, %.preheader36.i ], [ %i.dw, %.preheader36.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %i.cg
  br i1 %i.fb, label %bb.x, label %.split32.us.i

bb.x:                                             ; preds = %.lr.ph155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !636, !noundef !5
  %i.fe = add i64 %i.fa, %i.ec                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.cc
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !635, !noundef !5
  %.not20.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not20.i, label %.preheader36.i, label %bb.y

.split32.us.i:                                    ; preds = %.lr.ph155
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21, !noalias !638
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fi = add i64 %i.ec, %i.dy
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph153
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fj = add i64 %.reass.reass, %.sroa.04.0.i152
  br label %bb.v

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %.promoted.i4 = load i64, ptr %i.ch, align 8, !alias.scope !640 ; 3 uses
  %i.fk = add i64 %.promoted.i4, %i.ci            ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.cc
  br i1 %i.fl, label %.lr.ph.i7, label %._crit_edge.i5

.lr.ph.i7:                                        ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !640, !noundef !5 ; 2 uses
  %i.fo = load i64, ptr %i.c, align 8, !alias.scope !640
  %.fr63 = freeze i64 %i.fo                       ; 10 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !640
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr63, i64 range(i64 0, -9223372036854775808) %i.cg) ; 2 uses
  %i.fr = add i64 %.fr63, -1                      ; 2 uses
  %.first_iter.i8 = icmp ult i64 %i.fr, %i.cg
  %i.fs = sub i64 1, %.fr63                       ; 2 uses
  br i1 %.first_iter.i8, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i7
  %exitcond.not.i157.not = icmp ult i64 %.fr63, %i.cg
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i7
  %exitcond.not.i.us162.not = icmp ult i64 %.fr63, %i.cg
  %.not34.i.us.us165 = icmp eq i64 %.fr63, 0
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %bb.ad
  %i.ft = phi i64 [ %i.gt, %bb.ad ], [ %i.fk, %.lr.ph.split.us.i.us.preheader ]
  %i.fu = phi i64 [ %.sink.i9.us, %bb.ad ], [ %.promoted.i4, %.lr.ph.split.us.i.us.preheader ] ; 7 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !641, !noundef !5
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.fn
  %.not.us.i.us = icmp eq i64 %i.ga, 0
  br i1 %.not.us.i.us, label %bb.ac, label %.preheader35.i.us.preheader

.preheader35.i.us.preheader:                      ; preds = %.lr.ph.split.us.i.us
  br i1 %exitcond.not.i.us162.not, label %.lr.ph164, label %.preheader.i10.us.us.preheader

.preheader35.i.us:                                ; preds = %.lr.ph164
  %i.gb = add i64 %.sroa.04.0.us.i.us163, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.gb, %umax.i
  br i1 %exitcond.not.i.us, label %.preheader.i10.us.us.preheader, label %.lr.ph164

.preheader.i10.us.us.preheader:                   ; preds = %.preheader35.i.us, %.preheader35.i.us.preheader
  br i1 %.not34.i.us.us165, label %.split.us.i12, label %.lr.ph167

.lr.ph164:                                        ; preds = %.preheader35.i.us.preheader, %.preheader35.i.us
  %.sroa.04.0.us.i.us163 = phi i64 [ %i.gb, %.preheader35.i.us ], [ %.fr63, %.preheader35.i.us.preheader ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i.us163
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !642, !noundef !5
  %i.ge = add i64 %.sroa.04.0.us.i.us163, %i.fu   ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.cc
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !641, !noundef !5
  %.not21.us.i.us = icmp eq i8 %i.gd, %i.gh
  br i1 %.not21.us.i.us, label %.preheader35.i.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph164
  %i.gi = add i64 %i.fs, %i.fu
  %i.gj = add i64 %i.gi, %.sroa.04.0.us.i.us163
  br label %bb.ad

.preheader.i10.us.us:                             ; preds = %.lr.ph167
  %.not34.i.us.us = icmp eq i64 %i.gk, 0
  br i1 %.not34.i.us.us, label %.split.us.i12, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us
  %.sroa.2.0.us.i.us.us166 = phi i64 [ %i.gk, %.preheader.i10.us.us ], [ %.fr63, %.preheader.i10.us.us.preheader ]
  %i.gk = add i64 %.sroa.2.0.us.i.us.us166, -1    ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !642, !noundef !5
  %i.gn = add i64 %i.gk, %i.fu                    ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.cc
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !641, !noundef !5
  %.not20.us.i.us.us = icmp eq i8 %i.gm, %i.gq
  br i1 %.not20.us.i.us.us, label %.preheader.i10.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph167
  %i.gr = add i64 %i.fu, %i.fq
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us
  %i.gs = add i64 %i.fu, %i.cg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us, %bb.ab
  %.sink.i9.us = phi i64 [ %i.gs, %bb.ac ], [ %i.gj, %bb.ab ], [ %i.gr, %.split.us.us ] ; 3 uses
  store i64 %.sink.i9.us, ptr %i.ch, align 8, !alias.scope !640
  %i.gt = add i64 %.sink.i9.us, %i.ci             ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.cc
  br i1 %i.gu, label %.lr.ph.split.us.i.us, label %._crit_edge.i5

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.ag
  %i.gv = phi i64 [ %i.hn, %bb.ag ], [ %i.fk, %.lr.ph.split.us.i.preheader ]
  %i.gw = phi i64 [ %.sink.i9, %bb.ag ], [ %.promoted.i4, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !641, !noundef !5
  %i.gz = and i8 %i.gy, 63
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = and i64 %i.hb, %i.fn
  %.not.us.i = icmp eq i64 %i.hc, 0
  br i1 %.not.us.i, label %bb.af, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i157.not, label %.lr.ph159, label %.preheader.i10

.preheader35.i:                                   ; preds = %.lr.ph159
  %i.hd = add i64 %.sroa.04.0.us.i158, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hd, %umax.i
  br i1 %exitcond.not.i, label %.preheader.i10, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i158 = phi i64 [ %i.hd, %.preheader35.i ], [ %.fr63, %.preheader35.i.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i158
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !642, !noundef !5
  %i.hg = add i64 %.sroa.04.0.us.i158, %i.gw      ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.cc
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !641, !noundef !5
  %.not21.us.i = icmp eq i8 %i.hf, %i.hj
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.ae

.preheader.i10:                                   ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr63, 0
  br i1 %.not34.i, label %.split.us.i12, label %.split32.us.i11

.split32.us.i11:                                  ; preds = %.preheader.i10
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21, !noalias !643
  unreachable

bb.ae:                                            ; preds = %.lr.ph159
  %i.hk = add i64 %i.fs, %i.gw
  %i.hl = add i64 %i.hk, %.sroa.04.0.us.i158
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.hm = add i64 %i.gw, %i.cg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.i9 = phi i64 [ %i.hm, %bb.af ], [ %i.hl, %bb.ae ] ; 3 uses
  store i64 %.sink.i9, ptr %i.ch, align 8, !alias.scope !640
  %i.hn = add i64 %.sink.i9, %i.ci                ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.cc
  br i1 %i.ho, label %.lr.ph.split.us.i, label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !640
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit

.split.us.i12:                                    ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us, %.preheader.i10
  %.us-phi = phi i64 [ %i.gw, %.preheader.i10 ], [ %i.fu, %.preheader.i10.us.us ], [ %i.fu, %.preheader.i10.us.us.preheader ] ; 2 uses
  %i.hp = add i64 %.us-phi, %i.cg                 ; 2 uses
  store i64 %i.hp, ptr %i.ch, align 8, !alias.scope !640
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.hq, align 8, !alias.scope !644
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hp, ptr %i.hr, align 8, !alias.scope !644
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr.exit
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs3smBju6uAx0_7ide_ssr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIduENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root(ptr noundef nonnull align 8, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtCs3smBju6uAx0_7ide_ssr10SsrMatchesEE14insert_no_growB1i_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCs3smBju6uAx0_7ide_ssr(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NvCsgIpRO4v45SJ_7base_dbs0_1__NtB7_8FileText11ingredient_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NvCsgIpRO4v45SJ_7base_dbs1_1__NtB7_19FileSourceRootInput11ingredient_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NvCsgIpRO4v45SJ_7base_dbs2_1__NtB7_15SourceRootInput11ingredient_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCscAsMj0W7j8b_3std7process5abort() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NvCsgIpRO4v45SJ_7base_dbs_1__NtB7_10LocalRoots11ingredient_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtCs8Xq8PKFYOms_3hir10has_sourceNtB7_9SelfParamNtB5_9HasSource6source(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE8tree_topCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl5cache(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhEE11spec_extendCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtB13_6nester26nest_and_remove_collisions0E0INtNtB1M_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtB1q_6nester26nest_and_remove_collisions0E0EB1q_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvXs_NtB13_6nesterNtB13_10SsrMatchesINtNtB8_7convert4FromNtB2v_14MatchCollectorE4from0E0INtNtB1M_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvXs_NtB1q_6nesterNtB1q_10SsrMatchesINtNtBa_7convert4FromNtB2T_14MatchCollectorE4from0E0EB1q_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4D_13SemanticsImpl22descend_node_at_offsets_00EEENtNtNtB1D_3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs3smBju6uAx0_7ide_ssr14MatchDebugInfoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr7parsing14PatternElementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtBK_6search17UsageSearchResultEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4K_13SemanticsImpl22descend_node_at_offsets_00EEENtNtNtB1K_3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs3smBju6uAx0_7ide_ssr14MatchDebugInfoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr7parsing14PatternElementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtBR_6search17UsageSearchResultEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsK_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawDrainTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCs83ee1IJTiSq_6either6EitherNtCsileJQcQObtj_7hir_def12GenericDefIdNtB1m_9VariantIdEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB1m_3hir4ExprENtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBU_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallENtBU_11MacroCallIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtCs33K2ylI4knu_10hir_expand9HirFileIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12UfcsCallInfoEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtBR_13ExpansionInfoEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1q_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtCs3smBju6uAx0_7ide_ssr10SsrMatchesEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1i_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIduEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs3smBju6uAx0_7ide_ssr7parsing3VarNtNtBT_8matching16PlaceholderMatchEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtCs33K2ylI4knu_10hir_expand11MacroCallIdEEENtNtNtB1U_3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!407 = distinct !{!407, !406, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr8matching11MatchFailedEBF_: argument 0"}
!408 = distinct !{!408, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr"}
!409 = distinct !{!409, !408, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr: argument 0"}
!410 = !{i64 -3716568133781707021}
!411 = !{!394}
!412 = !{!396}
!413 = !{!397}
!414 = !{!403, !401, !399}
!415 = !{!409, !407, !405}
!416 = !{i64 640140124309732491}
!417 = distinct !{!417, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_"}
!418 = distinct !{!418, !417, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 1"}
!419 = distinct !{!419, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8push_mutBJ_"}
!420 = distinct !{!420, !419, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8push_mutBJ_: argument 0"}
!421 = distinct !{!421, !419, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8push_mutBJ_: argument 1"}
!422 = distinct !{!422, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_"}
!423 = distinct !{!423, !422, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 1:h.rot"}
!424 = !{i64 6055618794629602182}
!425 = !{!418}
!426 = !{!420}
!427 = !{!421}
!428 = !{!423}
!429 = !{i64 6432066152936772412}
!430 = distinct !{!430, i1 true, !"_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa10durability10Durabilityj5_INtNtNtB7_3ops5index5IndexjE5indexCs3smBju6uAx0_7ide_ssr"}
!431 = distinct !{!431, !430, !"_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa10durability10Durabilityj5_INtNtNtB7_3ops5index5IndexjE5indexCs3smBju6uAx0_7ide_ssr: argument 0"}
!432 = distinct !{!432, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core5slice5indexjINtB5_10SliceIndexSNtNtCsd9Lm8bEdjjY_5salsa10durability10DurabilityE5indexCs3smBju6uAx0_7ide_ssr"}
!433 = distinct !{!433, !432, !"_RNvXs0_NtNtCshzWfHUSfYae_4core5slice5indexjINtB5_10SliceIndexSNtNtCsd9Lm8bEdjjY_5salsa10durability10DurabilityE5indexCs3smBju6uAx0_7ide_ssr: argument 0"}
!434 = distinct !{!434, i1 true, !"_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECs3smBju6uAx0_7ide_ssr"}
!435 = distinct !{!435, !434, !"_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECs3smBju6uAx0_7ide_ssr: argument 0"}
!436 = distinct !{!436, i1 true, !"_RNCNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB6_10ZalsaLocal26report_tracked_read_simple0Cs3smBju6uAx0_7ide_ssr"}
!437 = distinct !{!437, !436, !"_RNCNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB6_10ZalsaLocal26report_tracked_read_simple0Cs3smBju6uAx0_7ide_ssr: argument 1"}
!438 = distinct !{!438, !436, !"_RNCNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB6_10ZalsaLocal26report_tracked_read_simple0Cs3smBju6uAx0_7ide_ssr: argument 0"}
!439 = !{i64 1876531353979667339}
!440 = !{!433, !431}
!441 = !{!435}
!442 = !{!437}
!443 = !{!438, !437}
!444 = distinct !{!444, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!445 = distinct !{!445, !444, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!446 = !{i64 8948475199132603601}
!447 = !{!445}
!448 = distinct !{!448, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!449 = distinct !{!449, !448, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!450 = !{i64 8925158599277094707}
!451 = !{!449}
!452 = distinct !{!452, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1q_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!453 = distinct !{!453, !452, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1q_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!454 = !{i64 392459987827710345}
!455 = !{!453}
!456 = distinct !{!456, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!457 = distinct !{!457, !456, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!458 = !{i64 -5076849052792169710}
!459 = !{!457}
!460 = distinct !{!460, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1u_9predicate20ExistentialPredicateB2h_EEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!461 = distinct !{!461, !460, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1u_9predicate20ExistentialPredicateB2h_EEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!462 = !{i64 6549183547994483319}
!463 = !{!461}
!464 = distinct !{!464, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!465 = distinct !{!465, !464, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!466 = !{i64 7470847302415397267}
!467 = !{!465}
!468 = distinct !{!468, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2A_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!469 = distinct !{!469, !468, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2A_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!470 = !{i64 -2337332217085767574}
!471 = !{!469}
!472 = distinct !{!472, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1s_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!473 = distinct !{!473, !472, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1s_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!474 = !{i64 -98620791021690998}
!475 = !{!473}
!476 = distinct !{!476, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!477 = distinct !{!477, !476, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!478 = !{i64 -8383026063940462226}
!479 = !{!477}
!480 = distinct !{!480, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!481 = distinct !{!481, !480, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!482 = !{i64 -975069343940845905}
!483 = !{!481}
!484 = distinct !{!484, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!485 = distinct !{!485, !484, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!486 = !{i64 -842251636521212585}
!487 = !{!485}
!488 = distinct !{!488, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!489 = distinct !{!489, !488, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!490 = !{i64 3430664497971916497}
!491 = !{!489}
!492 = distinct !{!492, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!493 = distinct !{!493, !492, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!494 = !{i64 -7898978367171845998}
!495 = !{!493}
!496 = distinct !{!496, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!497 = distinct !{!497, !496, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!498 = !{i64 -8378983363578271049}
!499 = !{!497}
!500 = distinct !{!500, i1 true, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2x_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr"}
!501 = distinct !{!501, !500, !"_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2x_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs3smBju6uAx0_7ide_ssr: argument 0"}
!502 = !{i64 -6508240669866791995}
!503 = !{!501}
!504 = distinct !{!504, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_"}
!505 = distinct !{!505, !504, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 1"}
!506 = distinct !{!506, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB11_"}
!507 = distinct !{!507, !506, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchEEB11_: argument 0"}
!508 = distinct !{!508, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_"}
!509 = distinct !{!509, !508, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 1:h.rot"}
!510 = !{i64 656002126018576452}
!511 = !{!505}
!512 = !{!507}
!513 = !{!509}
!514 = !{i64 6929555009912682313}
!515 = distinct !{!515, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs3smBju6uAx0_7ide_ssr"}
!516 = distinct !{!516, !515, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs3smBju6uAx0_7ide_ssr: argument 0"}
!517 = distinct !{!517, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs3smBju6uAx0_7ide_ssr"}
!518 = distinct !{!518, !517, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs3smBju6uAx0_7ide_ssr: argument 0"}
!519 = distinct !{!519, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs3smBju6uAx0_7ide_ssr"}
!520 = distinct !{!520, !519, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs3smBju6uAx0_7ide_ssr: argument 0"}
!521 = distinct !{!521, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs3smBju6uAx0_7ide_ssr"}
!522 = distinct !{!522, !521, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs3smBju6uAx0_7ide_ssr: argument 0"}
!523 = distinct !{!523, i1 true, !"_RNCNvXs0_NtCs3smBju6uAx0_7ide_ssr7parsingNtB9_7SsrRuleNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str0B9_"}
!524 = distinct !{!524, !523, !"_RNCNvXs0_NtCs3smBju6uAx0_7ide_ssr7parsingNtB9_7SsrRuleNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str0B9_: argument 0"}
!525 = distinct !{!525, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs3smBju6uAx0_7ide_ssr"}
!526 = distinct !{!526, !525, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs3smBju6uAx0_7ide_ssr: argument 0"}
!527 = distinct !{!527, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs3smBju6uAx0_7ide_ssr"}
!528 = distinct !{!528, !527, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs3smBju6uAx0_7ide_ssr: argument 0"}
!529 = !{i64 -7731952664279746176}
!530 = !{!516}
!531 = !{!518, !516}
!532 = !{!520}
!533 = !{!522, !520}
!534 = !{!524}
!535 = !{!526}
!536 = !{!528, !526}
!537 = !{i64 808194136015361799}
!538 = distinct !{!538, i1 true, !"_RNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB7_13SemanticsImpl22descend_node_at_offsets0_0Cs3smBju6uAx0_7ide_ssr"}
!539 = distinct !{!539, !538, !"_RNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB7_13SemanticsImpl22descend_node_at_offsets0_0Cs3smBju6uAx0_7ide_ssr: argument 1"}
!540 = distinct !{!540, !538, !"_RNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB7_13SemanticsImpl22descend_node_at_offsets0_0Cs3smBju6uAx0_7ide_ssr: argument 0"}
!541 = !{i64 -1941896816339462798}
!542 = !{!540, !539}
!543 = !{!539}
!544 = !{!540}
!545 = !{i64 -2629759162909370887}
!546 = !{i64 -576955419504815946}
!547 = !{i64 -671590392445893618}
!548 = !{i64 -4374090029840924063}
!549 = !{i64 8429393818939859615}
!550 = distinct !{!550, i1 true, !"_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1H_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4n_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4j_21ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr"}
!551 = distinct !{!551, !550, !"_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1H_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4n_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4j_21ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 1"}
!552 = distinct !{!552, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB5_10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3W_13SemanticsImpl26ancestors_with_macros_file0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr"}
!553 = distinct !{!553, !552, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB5_10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3W_13SemanticsImpl26ancestors_with_macros_file0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 1"}
!554 = distinct !{!554, i1 true, !"_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr"}
!555 = distinct !{!555, !554, !"_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 0"}
!556 = distinct !{!556, !554, !"_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 1"}
!557 = distinct !{!557, !550, !"_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1H_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4n_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4j_21ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 0"}
!558 = distinct !{!558, !552, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB5_10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3W_13SemanticsImpl26ancestors_with_macros_file0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 0"}
!559 = distinct !{!559, i1 true, !"_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1H_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4n_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4j_21ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr"}
!560 = distinct !{!560, !559, !"_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1H_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4n_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4j_21ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 1"}
!561 = distinct !{!561, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB5_10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3W_13SemanticsImpl26ancestors_with_macros_file0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr"}
!562 = distinct !{!562, !561, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB5_10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3W_13SemanticsImpl26ancestors_with_macros_file0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 1"}
!563 = distinct !{!563, i1 true, !"_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr"}
!564 = distinct !{!564, !563, !"_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 0"}
!565 = distinct !{!565, !563, !"_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 1"}
!566 = distinct !{!566, !559, !"_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1H_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4n_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4j_21ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 0"}
!567 = distinct !{!567, !561, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB5_10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3W_13SemanticsImpl26ancestors_with_macros_file0ENtNtBb_5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr: argument 0"}
!568 = !{i64 -8451034596304689759}
!569 = !{!551}
!570 = !{!553}
!571 = !{!555}
!572 = !{!556}
!573 = !{!556, !553, !551}
!574 = !{!555, !556, !558, !553, !557, !551}
!575 = !{!555, !556, !553, !551}
!576 = !{!553, !551}
!577 = !{!560}
!578 = !{!562}
!579 = !{!564}
!580 = !{!565}
!581 = !{!565, !562, !560}
!582 = !{!564, !565, !567, !562, !566, !560}
!583 = !{!564, !565, !562, !560}
!584 = !{!562, !560}
!585 = !{i64 -8932838288258863016}
!586 = distinct !{!586, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8push_mutBJ_"}
!587 = distinct !{!587, !586, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8push_mutBJ_: argument 0"}
!588 = distinct !{!588, !586, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchE8push_mutBJ_: argument 1"}
!589 = distinct !{!589, i1 true, !"_RINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs3smBju6uAx0_7ide_ssr8matching5Match7sort_byNCNvXs_NtBA_6nesterNtBA_10SsrMatchesINtNtCshzWfHUSfYae_4core7convert4FromNtB1q_14MatchCollectorE4from0EBA_"}
!590 = distinct !{!590, !589, !"_RINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs3smBju6uAx0_7ide_ssr8matching5Match7sort_byNCNvXs_NtBA_6nesterNtBA_10SsrMatchesINtNtCshzWfHUSfYae_4core7convert4FromNtB1q_14MatchCollectorE4from0EBA_: argument 0"}
!591 = distinct !{!591, i1 true, !"_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMB2_SBH_7sort_byNCNvXs_NtBL_6nesterNtBL_10SsrMatchesINtNtCshzWfHUSfYae_4core7convert4FromNtB1O_14MatchCollectorE4from0E0EBL_"}
!592 = distinct !{!592, !591, !"_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMB2_SBH_7sort_byNCNvXs_NtBL_6nesterNtBL_10SsrMatchesINtNtCshzWfHUSfYae_4core7convert4FromNtB1O_14MatchCollectorE4from0E0EBL_: argument 1"}
!593 = distinct !{!593, !591, !"_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs3smBju6uAx0_7ide_ssr8matching5MatchNCINvMB2_SBH_7sort_byNCNvXs_NtBL_6nesterNtBL_10SsrMatchesINtNtCshzWfHUSfYae_4core7convert4FromNtB1O_14MatchCollectorE4from0E0EBL_: argument 0"}
!594 = !{i64 -3016291171983574339}
!595 = !{!587}
!596 = !{!588}
!597 = !{!590}
!598 = !{!593, !592, !590}
!599 = !{i64 -8234202087046700067}
!600 = !{i64 3359632908182244002}
!601 = distinct !{!601, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!602 = distinct !{!602, !601, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!603 = distinct !{!603, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!604 = distinct !{!604, !603, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!605 = distinct !{!605, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!606 = distinct !{!606, !605, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!607 = distinct !{!607, !603, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!608 = distinct !{!608, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3smBju6uAx0_7ide_ssr"}
!609 = distinct !{!609, !608, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3smBju6uAx0_7ide_ssr: argument 0"}
!610 = distinct !{!610, !601, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!611 = distinct !{!611, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr"}
!612 = distinct !{!612, !611, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 0"}
!613 = distinct !{!613, !611, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 1"}
!614 = distinct !{!614, !611, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 2"}
!615 = distinct !{!615, !611, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 3"}
!616 = distinct !{!616, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!617 = distinct !{!617, !616, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!618 = distinct !{!618, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr"}
!619 = distinct !{!619, !618, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 0"}
!620 = distinct !{!620, !618, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 1"}
!621 = distinct !{!621, !618, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 2"}
!622 = distinct !{!622, !618, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3smBju6uAx0_7ide_ssr: argument 3"}
!623 = distinct !{!623, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!624 = distinct !{!624, !623, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!625 = !{i64 1332104460713069050}
!626 = !{!602}
!627 = !{!604}
!628 = !{!606}
!629 = !{!607, !604}
!630 = !{!609, !607, !604}
!631 = !{!610, !602}
!632 = !{!609, !610, !602}
!633 = !{!612}
!634 = !{!613}
!635 = !{!614}
!636 = !{!615}
!637 = !{!617, !612}
!638 = !{!612, !613, !614, !615}
!639 = !{!619}
!640 = !{!620}
!641 = !{!621}
!642 = !{!622}
!643 = !{!619, !620, !621, !622}
!644 = !{!624, !619}
end_hunk_1
