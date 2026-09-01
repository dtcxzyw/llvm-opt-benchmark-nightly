Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base_db-3cb882c0676fba6d.base_db.c2b4d2041d3c80a7-cgu.12?download=true
inline.NumInlined: 455
inline.NumDeleted: 244
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseNtNtNtNtB4_3ast9generated5nodes10SourceFileE6errorsCsgIpRO4v45SJ_7base_db:bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !574
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #38, !noalias !574
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgIpRO4v45SJ_7base_db.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !574, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = icmp ule i64 %i.h, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  store i64 %i.m, ptr %i.c, align 8, !noalias !574
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !574
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.h
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgIpRO4v45SJ_7base_db.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgIpRO4v45SJ_7base_db.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.z, %bb.f ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.f ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.w, %bb.f ]
  %i.w = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.x = icmp eq ptr %.sroa.012.023.i, %i.t
  br i1 %i.x, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgIpRO4v45SJ_7base_db.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.012.023.i)
          to label %bb.f unwind label %bb.h, !noalias !581

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !alias.scope !582, !noalias !583
  store <2 x i32> %i.ab, ptr %i.v, align 8, !alias.scope !576, !noalias !584
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !574
  %i.ad = icmp eq i64 %i.w, 0
  br i1 %i.ad, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgIpRO4v45SJ_7base_db.exit, label %bb.d

bb.g:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !581
  unreachable

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.s, align 8, !noalias !574
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #37
          to label %common.resume unwind label %bb.g, !noalias !581

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.h ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.d, %bb.f, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgIpRO4v45SJ_7base_db.exit.i
  store i64 %i.h, ptr %i.s, align 8, !noalias !574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !574
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ag, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgIpRO4v45SJ_7base_db.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.ah, align 8, !noundef !5 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.ai = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit.i, !prof !27

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #33
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit.i: ; preds = %bb.k
  %i.ak = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8new_root(ptr noundef nonnull %.val)
          to label %_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseNtNtNtNtB4_3ast9generated5nodes10SourceFileE11syntax_nodeCsgIpRO4v45SJ_7base_db.exit unwind label %bb.n ; 5 uses

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc6 unwind label %bb.n

.noexc6:                                          ; preds = %bb.m
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.o, %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.am, %bb.p ], [ %i.am, %bb.o ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.s

bb.n:                                             ; preds = %bb.r, %bb.m, %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit.i, %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit

_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseNtNtNtNtB4_3ast9generated5nodes10SourceFileE11syntax_nodeCsgIpRO4v45SJ_7base_db.exit: ; preds = %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit.i
  store ptr %i.ak, ptr %i.d, align 8
  invoke void @_RNvNtCsjJXvCMGntp8_6syntax10validation8validate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseNtNtNtNtB4_3ast9generated5nodes10SourceFileE11syntax_nodeCsgIpRO4v45SJ_7base_db.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !noundef !5
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.an, align 4
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit unwind label %bb.s

bb.q:                                             ; preds = %_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseNtNtNtNtB4_3ast9generated5nodes10SourceFileE11syntax_nodeCsgIpRO4v45SJ_7base_db.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noundef !5
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit9

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit9 unwind label %bb.n

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit9: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsgIpRO4v45SJ_7base_db.exit
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !585, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgIpRO4v45SJ_7base_db.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 240) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !304

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgIpRO4v45SJ_7base_db.exit, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgIpRO4v45SJ_7base_db.exit
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.g) #38
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtB2_10EquivalentBq_E10equivalentBY_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #6 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !5
  %.val1 = load i32, ptr %1, align 4, !noundef !5
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB2_10EquivalentBq_E10equivalentCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !5  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %2, align 8              ; 3 uses
  %.val2 = load ptr, ptr %1, align 8, !noundef !5 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %3, align 8              ; 3 uses
  %4 = icmp ne ptr %.val, null                    ; 2 uses
  %5 = icmp eq ptr %.val2, null                   ; 2 uses
  %i.a = xor i1 %4, %5
  br i1 %i.a, label %6, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

6:                                                ; preds = %bb.a
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %7 = icmp eq ptr %.val, %.val2
  %8 = icmp eq ptr %.val1, %.val3
  %spec.select.i = select i1 %7, i1 %8, i1 false
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %6
  tail call void @llvm.assume(i1 %5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %9 = icmp eq ptr %.val1, %.val3
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk.i = phi i1 [ %spec.select.i, %bb.b ], [ false, %bb.a ], [ %9, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXCsjJXvCMGntp8_6syntaxINtB2_5ParseNtNtNtNtB2_3ast9generated5nodes10SourceFileENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit, !prof !27

_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %1, align 8, !noundef !5   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
  unreachable

bb.d:                                             ; preds = %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit
  %i.g = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f, !prof !27

bb.e:                                             ; preds = %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit, %bb.f
  %.sroa.5.0 = phi i64 [ %i.k, %bb.f ], [ undef, %_RNvMsl_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9into_thinCsgIpRO4v45SJ_7base_db.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store ptr %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.j, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.f, align 8, !noundef !5
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsgIpRO4v45SJ_7base_db(ptr %i.b) #37
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.l
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop() unnamed_addr #12 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgIpRO4v45SJ_7base_db(ptr %i.b)
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgIpRO4v45SJ_7base_db.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db.exit.i
    i64 1, label %bb.e
  ], !prof !250

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !586
  store i8 3, ptr %i.a, align 8, !alias.scope !586
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db.exit.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgIpRO4v45SJ_7base_db.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgIpRO4v45SJ_7base_db.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgIpRO4v45SJ_7base_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvXs1_NtCshzWfHUSfYae_4core4hashINtB5_18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherENtB5_11BuildHasher12build_hasherCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB5_4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef i64 @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions15allocation_size(ptr noundef nonnull align 8 %i.a)
  %i.c = load ptr, ptr %1, align 8, !align !589, !noundef !5
  %.not = icmp eq ptr %i.c, null
  %spec.select = zext i1 %.not to i64
  %i.d = add i64 %i.b, 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @16, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 18, ptr %i.f, align 8
  store i64 %spec.select, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 42, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.d, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 16, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6option6OptionNtNtCs39E2wp1vf7X_6intern6symbol6SymbolENtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db:bb.a
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino11Utf8PathBufNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !221, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1_Cs9p4rgIae0RV_6caminoNtB5_11Utf8PathBufNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs4sl5YdnrCxp_3vfs8file_set7FileSetNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !221, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCs4sl5YdnrCxp_3vfs8file_setNtB4_7FileSetNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !221, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !589, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !619, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgIpRO4v45SJ_7base_db.129, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !221, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsd9Lm8bEdjjY_5salsa8function6deleteINtB5_9SharedBoxINtNtB7_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsb_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(13) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.a, align 8, !alias.scope !620, !align !589, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i.i = load i64, ptr %i.d, align 8, !alias.scope !620 ; 2 uses
  %i.e = icmp eq ptr %.val2.i.i, null
  %i.f = icmp eq i64 %.val3.i.i, 0
  %or.cond.i.i.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i64 %.val3.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef 4) #36
  br label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i: ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !620, !align !589, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !620 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i, null
  %i.j = icmp eq i64 %.val1.i.i, 0
  %or.cond.i4.i.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i4.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEB20_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i
  %i.k = shl nuw nsw i64 %.val1.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef 4) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEB20_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #36
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEB20_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i, %bb.d
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #36
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsd9Lm8bEdjjY_5salsa8function6deleteINtB5_9SharedBoxINtNtB7_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB1r_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_RNvXsb_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(13) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #37
          to label %bb.e unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i: ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB24_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEB26_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #36
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB24_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEB26_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #36
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsd9Lm8bEdjjY_5salsa8function6deleteINtB5_9SharedBoxINtNtB7_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB1r_15EditionedFileId5parse1__21parse__Configuration_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_RNvXsb_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(13) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB10_3ast9generated5nodes10SourceFileEEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #37
          to label %bb.e unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i: ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB10_3ast9generated5nodes10SourceFileEEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB24_15EditionedFileId5parse1__21parse__Configuration_EEEB26_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 8) #36
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB24_15EditionedFileId5parse1__21parse__Configuration_EEEB26_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsd9Lm8bEdjjY_5salsa8function4memo10MemoHeaderECsgIpRO4v45SJ_7base_db.exit.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 8) #36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB5_14SlicePartialEqBC_E17equal_same_lengthCsgIpRO4v45SJ_7base_db(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsgIpRO4v45SJ_7base_db.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.c, %.split
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsgIpRO4v45SJ_7base_db.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %3 = getelementptr i8, ptr %i.c, i64 8
  %.val.a = load ptr, ptr %3, align 8             ; 3 uses
  %.val6 = load ptr, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %4 = getelementptr i8, ptr %i.d, i64 8
  %.val7 = load ptr, ptr %4, align 8              ; 3 uses
  %5 = icmp ne ptr %.val, null                    ; 2 uses
  %6 = icmp eq ptr %.val6, null                   ; 2 uses
  %i.e = xor i1 %5, %6
  br i1 %i.e, label %7, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsgIpRO4v45SJ_7base_db.exit.thread

7:                                                ; preds = %.lr.ph
  br i1 %5, label %bb.c, label %.split

bb.c:                                             ; preds = %7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %8 = icmp eq ptr %.val, %.val6
  %9 = icmp eq ptr %.val.a, %.val7
  %spec.select.i.i = select i1 %8, i1 %9, i1 false
  br i1 %spec.select.i.i, label %bb.b, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsgIpRO4v45SJ_7base_db.exit.thread

.split:                                           ; preds = %7
  tail call void @llvm.assume(i1 %6)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.a) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %10 = icmp eq ptr %.val.a, %.val7
  br i1 %10, label %bb.b, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsgIpRO4v45SJ_7base_db.exit.thread

_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsgIpRO4v45SJ_7base_db.exit.thread: ; preds = %bb.b, %.split, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %.split ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtNtCscAsMj0W7j8b_3std4sync4mpsc9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE6unwrapCsgIpRO4v45SJ_7base_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_CsjJXvCMGntp8_6syntaxINtB7_5ParsepENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop17PARSE_DROP_THREAD, i64 16) acquire, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtB5_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE15get_or_try_initNCINvB2_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2K_5ParseNtNtNtNtB2K_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zECsgIpRO4v45SJ_7base_db.exit, label %bb.c, !prof !304

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtB5_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE10initializeNCINvB2_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2F_5ParseNtNtNtNtB2F_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zECsgIpRO4v45SJ_7base_db(ptr noundef nonnull align 8 @_RNvNvXs4_CsjJXvCMGntp8_6syntaxINtB7_5ParsepENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop17PARSE_DROP_THREAD)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtB5_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE15get_or_try_initNCINvB2_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2K_5ParseNtNtNtNtB2K_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zECsgIpRO4v45SJ_7base_db.exit unwind label %bb.h

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtB5_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE15get_or_try_initNCINvB2_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2K_5ParseNtNtNtNtB2K_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zECsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.b, %bb.c
  %i.f = tail call noundef ptr @_RNvMs2_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvNvXs4_CsjJXvCMGntp8_6syntaxINtB7_5ParsepENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop17PARSE_DROP_THREAD, ptr noundef nonnull %i.c) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtNtCscAsMj0W7j8b_3std4sync4mpsc9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE6unwrapCsgIpRO4v45SJ_7base_db.exit, label %bb.d, !prof !304

bb.d:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtB5_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE15get_or_try_initNCINvB2_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2K_5ParseNtNtNtNtB2K_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zECsgIpRO4v45SJ_7base_db.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #38
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std4sync4mpsc9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37
          to label %.body.thread unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtNtCscAsMj0W7j8b_3std4sync4mpsc9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE6unwrapCsgIpRO4v45SJ_7base_db.exit: ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtB5_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE15get_or_try_initNCINvB2_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2K_5ParseNtNtNtNtB2K_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zECsgIpRO4v45SJ_7base_db.exit, %bb.a
  ret void

.body.thread:                                     ; preds = %bb.e, %bb.h
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body6

bb.h:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsgIpRO4v45SJ_7base_db(ptr nonnull %i.c) #37
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !623, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !623, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !623, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !623
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !626
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !629, !noalias !626, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !629, !noalias !626, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !629, !noalias !626
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !629, !noalias !626
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBG_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @28, ptr %i.b, align 8, !captures !595
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 28, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i64 [ 28, %bb.a ], [ %i.h, %bb.c ]
  %i.e = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef %i.d), !noalias !633 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECsgIpRO4v45SJ_7base_db.exit.thread

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i = icmp ugt i64 %i.h, 28
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECsgIpRO4v45SJ_7base_db.exit.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.e, 1        ; 6 uses
  %or.cond16.i.i = icmp ugt i64 %i.h, 27
  br i1 %or.cond16.i.i, label %bb.c, label %bb.e
end_hunk_1
