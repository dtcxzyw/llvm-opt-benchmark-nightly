Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rowan-32f666abafe27dec.rowan.70c65eab00d804a6-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 127
begin_hunk_0_@_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode12new_root_mut:bb.a
  %i.l = call { i64, ptr } @_RINvNtCs9GitHPCrz2Q_5rowan3sll4initNtNtB4_6cursor8NodeDataEB4_(ptr noundef align 8 null, ptr noundef nonnull align 8 %i.c) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  %i.o = icmp eq i64 %i.m, 4
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !5 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.t = call fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit() ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3sllINtB2_14AddToSllResultNtNtB4_6cursor8NodeDataE10add_to_sllB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData3new.exit

bb.d:                                             ; preds = %bb.b
  %i.u = add nuw i32 %i.q, 1
  store i32 %i.u, ptr %i.p, align 4
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData3new.exit

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData3new.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode12next_sibling(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val2.i = load ptr, ptr %i.b, align 8, !noundef !5 ; 9 uses
  %.not.i.i = icmp eq ptr %.val2.i, null          ; 2 uses
  br i1 %.not.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %.val2.i, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.4.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.j, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.i, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.l = load i32, ptr %i.k, align 4, !noundef !5 ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = ptrtoint ptr %.sroa.4.0.i.i to i64
  %i.o = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 4
  %.not.i.not.i.i = icmp samesign ule i64 %i.q, %i.m
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.s, %.sroa.4.0.i.i
  %i.u = select i1 %.not.i.not.i.i, i1 true, i1 %i.t
  %brmerge.i = or i1 %.not.i.i, %i.u
  br i1 %brmerge.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12next_sibling.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i
  %i.v = phi ptr [ %i.ap, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i ], [ %i.s, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i ] ; 4 uses
  %.in.i = phi i32 [ %i.w, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i ], [ %i.l, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i ]
  %i.w = add i32 %.in.i, 1                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %.val.i.i.i.i.i = load i32, ptr %i.v, align 8, !range !10, !alias.scope !133, !noalias !134, !noundef !5
  %i.x = trunc nuw i32 %.val.i.i.i.i.i to i1
  br i1 %i.x, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val4.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !133, !noalias !134, !nonnull !5, !noundef !5
  %.sroa.3.0.i.i.i.i.le.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 48 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !135, !noundef !5 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19, !noalias !135
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.z, align 4, !noalias !135
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i, i64 60 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !range !6, !noalias !135, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.i, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !135, !noundef !5
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBP_6cursor10SyntaxNodeENCINvNvB1x_8find_map5checkTjB3D_EB4n_NCNvMs3_B4p_NtB4p_8NodeData12next_sibling0E0E0B3I_EBP_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val2.i)
          to label %._crit_edge.i.i.i.i.i.i unwind label %bb.i, !noalias !135

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.h
  %.pre.i.i.i.i.i.i = load i8, ptr %i.ad, align 4, !range !6, !noalias !136
  %i.aj = trunc nuw i8 %.pre.i.i.i.i.i.i to i1
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBP_6cursor10SyntaxNodeENCINvNvB1x_8find_map5checkTjB3D_EB4n_NCNvMs3_B4p_NtB4p_8NodeData12next_sibling0E0E0B3I_EBP_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ak

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load i32, ptr %i.z, align 4, !noalias !135, !noundef !5
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.z, align 4, !noalias !135
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val2.i) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i.i.i.i.i.i unwind label %bb.k, !noalias !135

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !135
  unreachable

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %.sroa.4.0.i.i
  br i1 %i.aq, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12next_sibling.exit, label %.lr.ph.i.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBP_6cursor10SyntaxNodeENCINvNvB1x_8find_map5checkTjB3D_EB4n_NCNvMs3_B4p_NtB4p_8NodeData12next_sibling0E0E0B3I_EBP_.exit.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  %i.ar = phi i1 [ false, %bb.g ], [ %i.aj, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.04.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.g ], [ %i.ai, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.as = load i32, ptr %.sroa.06.0.i.i.i.i.i.i, align 4, !alias.scope !133, !noalias !137, !noundef !5
  %i.at = add i32 %i.as, %.sroa.04.0.i.i.i.i.i.i
  %i.au = tail call fastcc noundef nonnull ptr @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData3new(ptr noundef nonnull %.val2.i, i32 noundef %i.w, i32 noundef %i.at, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.3.0.i.i.i.i.le.i.i, i1 noundef zeroext %i.ar) #22, !noalias !138
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12next_sibling.exit

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12next_sibling.exit: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBP_6cursor10SyntaxNodeENCINvNvB1x_8find_map5checkTjB3D_EB4n_NCNvMs3_B4p_NtB4p_8NodeData12next_sibling0E0E0B3I_EBP_.exit.i
  %.sroa.0.0.i411.i = phi ptr [ %i.au, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBP_6cursor10SyntaxNodeENCINvNvB1x_8find_map5checkTjB3D_EB4n_NCNvMs3_B4p_NtB4p_8NodeData12next_sibling0E0E0B3I_EBP_.exit.i ], [ null, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i ], [ null, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_6cursor10SyntaxNodeENCINvNvB1e_8find_map5checkTjB25_EB3z_NCNvMs3_B3B_NtB3B_8NodeData12next_sibling0E0E0B2c_.exit.i.i ]
  ret ptr %.sroa.0.0.i411.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode12prev_sibling(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val9.i = load ptr, ptr %i.b, align 8, !noundef !5 ; 9 uses
  %.not.i.i = icmp eq ptr %.val9.i, null          ; 2 uses
  br i1 %.not.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %.val9.i, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.4.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.j, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.i, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i) ]
  %i.k = ptrtoint ptr %.sroa.4.0.i.i to i64
  %i.l = ptrtoint ptr %.sroa.0.0.i.i to i64       ; 2 uses
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.p = load i32, ptr %i.o, align 4, !noundef !5
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.n, %i.q
  br i1 %.not.i, label %bb.d, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12prev_sibling.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i
  %.neg.i = xor i64 %i.q, -1
  %i.r = add nsw i64 %i.n, %.neg.i                ; 2 uses
  %.not.i.not.i.i = icmp samesign uge i64 %i.r, %i.n
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [16 x i8], ptr %.sroa.4.0.i.i, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 3 uses
  %i.v = icmp eq ptr %i.u, %.sroa.0.0.i.i
  %1 = select i1 %.not.i.not.i.i, i1 true, i1 %i.v
  %brmerge.i = or i1 %.not.i.i, %1
  br i1 %brmerge.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12prev_sibling.exit, label %.lr.ph.i.i.preheader22.i

.lr.ph.i.i.preheader22.i:                         ; preds = %bb.d
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub nuw i64 %i.w, %i.l
  %i.y = lshr exact i64 %i.x, 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i, %.lr.ph.i.i.preheader22.i
  %.sroa.2.015.i.i.i = phi i64 [ %i.ab, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i ], [ %i.y, %.lr.ph.i.i.preheader22.i ]
  %i.z = phi ptr [ %i.aa, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.preheader22.i ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ab = add i64 %.sroa.2.015.i.i.i, -1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.val.i.i.i.i.i.i = load i32, ptr %i.aa, align 8, !range !10, !alias.scope !158, !noalias !159, !noundef !5
  %i.ac = trunc nuw i32 %.val.i.i.i.i.i.i to i1
  br i1 %i.ac, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8
  %.val4.i.i.i.le.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !158, !noalias !159, !nonnull !5, !noundef !5
  %.sroa.3.0.i.i.i.i.le.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.le.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !160, !noundef !5 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19, !noalias !160
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ae, align 4, !noalias !160
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i, i64 60 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4, !range !6, !noalias !160, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.am = load i32, ptr %i.al, align 8, !noalias !160, !noundef !5
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB2s_8iterator8Iterator8find_map5checkTjRB1z_ENtNtB1F_6cursor10SyntaxNodeNCNvMs3_B4k_NtB4k_8NodeData12prev_sibling0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EEB1F_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.an = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val9.i)
          to label %._crit_edge.i.i.i.i.i.i.i unwind label %bb.j, !noalias !160

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.ai, align 4, !range !6, !noalias !161
  %i.ao = trunc nuw i8 %.pre.i.i.i.i.i.i.i to i1
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB2s_8iterator8Iterator8find_map5checkTjRB1z_ENtNtB1F_6cursor10SyntaxNodeNCNvMs3_B4k_NtB4k_8NodeData12prev_sibling0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EEB1F_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.ap

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load i32, ptr %i.ae, align 4, !noalias !160, !noundef !5
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ae, align 4, !noalias !160
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i.i.i.i.i.i.i unwind label %bb.l, !noalias !160

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !160
  unreachable

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = icmp eq ptr %.sroa.0.0.i.i, %i.aa
  br i1 %i.au, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12prev_sibling.exit, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB2s_8iterator8Iterator8find_map5checkTjRB1z_ENtNtB1F_6cursor10SyntaxNodeNCNvMs3_B4k_NtB4k_8NodeData12prev_sibling0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EEB1F_.exit.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.h
  %i.av = phi i1 [ false, %bb.h ], [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.aw = load i32, ptr %.sroa.06.0.i.i.i.i.i.i.i, align 4, !alias.scope !158, !noalias !162, !noundef !5
  %i.ax = add i32 %i.aw, %.sroa.04.0.i.i.i.i.i.i.i
  %i.ay = trunc i64 %i.ab to i32
  %i.az = tail call fastcc noundef nonnull ptr @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData3new(ptr noundef nonnull %.val9.i, i32 noundef %i.ay, i32 noundef %i.ax, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.3.0.i.i.i.i.le.i.i.i, i1 noundef zeroext %i.av) #22, !noalias !163
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12prev_sibling.exit

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData12prev_sibling.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i, %bb.d, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB2s_8iterator8Iterator8find_map5checkTjRB1z_ENtNtB1F_6cursor10SyntaxNodeNCNvMs3_B4k_NtB4k_8NodeData12prev_sibling0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EEB1F_.exit.i
  %.sroa.0.1.i = phi ptr [ null, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData14green_siblings.exit.i ], [ %i.az, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChildEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB2s_8iterator8Iterator8find_map5checkTjRB1z_ENtNtB1F_6cursor10SyntaxNodeNCNvMs3_B4k_NtB4k_8NodeData12prev_sibling0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EEB1F_.exit.i ], [ null, %bb.d ], [ null, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCs9GitHPCrz2Q_5rowan5green4node10GreenChilduINtNtNtBg_3ops12control_flow11ControlFlowNtNtB2v_6cursor10SyntaxNodeENCINvNvNtNtB1j_8iterator8Iterator8find_map5checkTjB2o_EB3S_NCNvMs3_B3U_NtB3U_8NodeData12prev_sibling0E0E0B2v_.exit.i.i.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode12replace_with(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = shl nuw nsw i64 %i.e, 2
  %.in.idx = xor i64 %i.h, 4
  %.in = getelementptr inbounds nuw i8, ptr %i.g, i64 %.in.idx
  %i.i = load i16, ptr %.in, align 4, !noundef !5 ; 2 uses
  store i16 %i.i, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i16, ptr %i.j, align 4, !noundef !5 ; 2 uses
  store i16 %i.k, ptr %i.b, align 2
  %i.l = icmp eq i16 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs9GitHPCrz2Q_5rowan5green10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.c, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #19
          to label %bb.f unwind label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr i8, ptr %i.d, i64 16
  %.val8 = load ptr, ptr %i.m, align 8, !noundef !5 ; 7 uses
  %.not.i = icmp eq ptr %.val8, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEEB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val8, i64 48 ; 6 uses
  %i.o = load i32, ptr %i.n, align 4, !noundef !5 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.g, !prof !7

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.e
  unreachable

.thread:                                          ; preds = %bb.e, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.f:                                             ; preds = %bb.j, %bb.b
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.n, align 4
  store ptr %.val8, ptr %i.a, align 8
  %i.r = load i64, ptr %.val8, align 8, !range !8, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k, !prof !7

bb.h:                                             ; preds = %bb.n
  %i.t = load i32, ptr %i.n, align 8, !noundef !5
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.n, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEEB11_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val8) #16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEEB11_.exit

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
          to label %bb.f unwind label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.z = load i32, ptr %i.y, align 4, !noundef !5
  %i.aa = zext i32 %i.z to i64
  %i.ab = invoke noundef nonnull ptr @_RNvMs6_NtNtCs9GitHPCrz2Q_5rowan5green4nodeNtB5_13GreenNodeData13replace_child(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull %1)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load i32, ptr %i.n, align 8, !noundef !5
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.n, align 8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEEB11_.exit11

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val8) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEEB11_.exit11 unwind label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEEB11_.exit11: ; preds = %bb.m, %bb.l
  br i1 %i.s, label %bb.q, label %bb.p
end_hunk_0
