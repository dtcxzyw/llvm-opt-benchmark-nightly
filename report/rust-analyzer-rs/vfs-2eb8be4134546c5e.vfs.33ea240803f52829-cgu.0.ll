Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/vfs-2eb8be4134546c5e.vfs.33ea240803f52829-cgu.0?download=true
inline.NumInlined: 192
inline.NumDeleted: 97
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4sl5YdnrCxp_3vfs:bb.a
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !231, !noundef !10
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !231
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !231, !nonnull !10, !noundef !10
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !231
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !231, !nonnull !10, !noundef !10
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !231, !inline_history !234
  %i.af = load i64, ptr %i.e, align 8, !noalias !231, !noundef !10
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !231
  br label %bb.d

_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !231, !noundef !10 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !231, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !231
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1V_6FileIdEEENCNvMse_B1y_B1v_15clone_from_impl0EEB1V_(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1s_6FileIdEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1s_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.j ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.02.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.02.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !10
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.02.i.i
  %i.g = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40
  %i.i = load i64, ptr %i.h, align 8, !range !235, !alias.scope !236, !noundef !10
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 5 uses
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.h, %bb.e
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i: ; preds = %bb.g, %bb.d
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1s_6FileIdEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1s_.exit, label %bb.b

_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1s_6FileIdEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1s_.exit: ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs4sl5YdnrCxp_3vfs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext true) #16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejENtNtCshzWfHUSfYae_4core5clone5Clone10clone_fromCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 8 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %i.d = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.d, label %_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4sl5YdnrCxp_3vfs.exit, label %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.b
  %i.e = shl i64 %.sroa.4.0.copyload, 3           ; 2 uses
  %i.f = add i64 %i.e, 8
  %i.g = add i64 %i.e, 23                         ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.f
  tail call void @llvm.assume(i1 %i.h)
  %i.i = and i64 %i.g, -16                        ; 3 uses
  %i.j = add i64 %.sroa.4.0.copyload, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4sl5YdnrCxp_3vfs.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.o = sub nsw i64 0, %i.i
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.o
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !243
  br label %_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4sl5YdnrCxp_3vfs.exit

bb.d:                                             ; preds = %bb.j, %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.z, 0
  br i1 %i.r, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.t = add i64 %i.z, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 -1, i64 %i.t, i1 false)
  %i.u = icmp ult i64 %i.z, 8
  %i.v = add i64 %i.z, 1
  %i.w = lshr i64 %i.v, 3
  %i.x = mul nuw i64 %i.w, 7
  %spec.select.i.i.i = select i1 %i.u, i64 %i.z, i64 %i.x
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 10 uses
  %.not = icmp eq i64 %i.z, %i.b
  br i1 %.not, label %._RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit_crit_edge, label %bb.g

._RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %0, align 8, !alias.scope !246, !noalias !249
  %.pre24 = add i64 %i.b, 17
  br label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = add i64 %i.b, 1                         ; 3 uses
  %or.cond12.i = icmp ugt i64 %i.aa, 2305843009213693950
  br i1 %or.cond12.i, label %bb.i, label %bb.h, !prof !251

bb.h:                                             ; preds = %bb.g
  %i.ab = shl nuw i64 %i.aa, 3
  %i.ac = add nuw i64 %i.ab, 8
  %i.ad = and i64 %i.ac, -16                      ; 3 uses
  %i.ae = add nsw i64 %i.b, 17                    ; 4 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 5 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i, label %bb.i, label %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i1, !prof !177

_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i1: ; preds = %bb.h
  %2 = icmp eq i64 %i.af, 0
  br i1 %2, label %bb.l, label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i

_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i1
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !252
  %i.ai = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !252 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.af) #22
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %bb.j
  unreachable

_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %._RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit_crit_edge, %bb.m, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.l
  %.pre-phi = phi i64 [ %.pre24, %._RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit_crit_edge ], [ %i.ae, %bb.m ], [ %i.ae, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit ], [ %i.ae, %bb.l ]
  %i.ak = phi ptr [ %.pre, %._RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit_crit_edge ], [ %i.bo, %bb.m ], [ %i.bo, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit ], [ %i.bo, %bb.l ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.al = load ptr, ptr %1, align 8, !alias.scope !249, !noalias !246, !nonnull !10, !noundef !10 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %i.al, i64 %.pre-phi, i1 false), !noalias !255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !259, !noalias !260, !noundef !10 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit
  %.val4.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !262
  %i.ap = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.as = ptrtoint ptr %i.al to i64
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.14.017.i = phi i64 [ %i.an, %.lr.ph.i ], [ %i.be, %.loopexit.i ]
  %.sroa.10.016.i = phi i16 [ %i.aq, %.lr.ph.i ], [ %i.bb, %.loopexit.i ] ; 2 uses
  %.sroa.6.015.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.sroa.6.1.i, %.loopexit.i ] ; 2 uses
  %.sroa.011.014.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.sroa.011.1.i, %.loopexit.i ] ; 2 uses
  %.not10.i.i = icmp eq i16 %.sroa.10.016.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.at = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.6.015.i, %bb.k ] ; 2 uses
  %i.au = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.sroa.011.014.i, %bb.k ]
  %.val8.i.i = load <16 x i8>, ptr %i.at, align 16, !noalias !263
  %i.av = icmp sgt <16 x i8> %.val8.i.i, splat (i8 -1)
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -128 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.av to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k
  %.sroa.011.1.i = phi ptr [ %.sroa.011.014.i, %bb.k ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.015.i, %bb.k ], [ %i.ax, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.016.i, %bb.k ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ay = add i16 %.lcssa.i.i, -1
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = and i16 %i.ay, %.lcssa.i.i
  %i.bc = sub nsw i64 0, %i.ba
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sroa.011.1.i, i64 %i.bc ; 2 uses
  %i.be = add i64 %.sroa.14.017.i, -1             ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !266, !noalias !255, !noundef !10
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.as, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  store i64 %i.bg, ptr %i.bm, align 8, !noalias !255
  %i.bn = icmp eq i64 %i.be, 0
  br i1 %i.bn, label %.loopexit, label %bb.k

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i1
  %.sroa.0.0.i.i11.i = phi ptr [ %i.ai, %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i1 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i, i64 %i.ad ; 4 uses
  %i.bp = icmp ult i64 %i.b, 8
  %i.bq = lshr i64 %i.aa, 3
  %i.br = mul nuw nsw i64 %i.bq, 7
  %.sroa.07.0.i = select i1 %i.bp, i64 %i.b, i64 %i.br
  %i.bs = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  store ptr %i.bo, ptr %0, align 8
  store i64 %i.b, ptr %i.y, align 8
  %.sroa.512.0..sroa.03.0.5.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.512.0..sroa.03.0.5.sroa_idx, align 8
  %.sroa.613.0..sroa.03.0.5.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.613.0..sroa.03.0.5.sroa_idx, align 8
  %i.bt = icmp eq i64 %i.z, 0
  br i1 %i.bt, label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.l
  %i.bu = shl i64 %i.z, 3
  %i.bv = icmp slt i64 %i.z, 2305843009213693950
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = and i64 %i.bu, -16                      ; 2 uses
  %i.bx = add i64 %i.bw, 16                       ; 2 uses
  %i.by = add nsw i64 %i.z, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ca)
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.cd = sub nuw nsw i64 -16, %i.bw
  %i.ce = getelementptr inbounds i8, ptr %i.bs, i64 %i.cd
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 16) #19
  br label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

.loopexit:                                        ; preds = %.loopexit.i, %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.an, ptr %i.cf, align 8, !alias.scope !246, !noalias !249
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !249, !noalias !246, !noundef !10
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !alias.scope !246, !noalias !249
  br label %_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4sl5YdnrCxp_3vfs.exit

_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4sl5YdnrCxp_3vfs.exit: ; preds = %bb.c, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b, %.loopexit
  ret void

bb.n:                                             ; preds = %bb.e, %bb.d
  %i.cj = phi i64 [ %spec.select.i.i.i, %bb.e ], [ 0, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cj, ptr %i.cl, align 8
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0.i.i = alloca [32 x i8], align 8        ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 40) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = add nuw i64 %i.i, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add i64 %i.d, 17                         ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !177

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %2 = icmp eq i64 %i.m, 0
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !269
  %i.p = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !269 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !269
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !269
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.s, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEE17new_uninitializedBT_.exit

bb.g:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.p, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %i.t = icmp ult i64 %i.d, 8
  %i.u = lshr i64 %i.f, 3
  %i.v = mul nuw nsw i64 %i.u, 7
  %.sroa.07.0.i.i = select i1 %i.t, i64 %i.d, i64 %i.v
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEE17new_uninitializedBT_.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEE17new_uninitializedBT_.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.l, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.f ], [ %i.d, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %3, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !284, !noalias !285, !nonnull !10, !noundef !10 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.w, i64 %.pre-phi, i1 false), !noalias !286
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !284, !noalias !285, !noundef !10 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEE17new_uninitializedBT_.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !287
  %i.aa = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ae = ptrtoint ptr %i.w to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1V_6FileIdEEENCNvMse_B1y_B1v_15clone_from_impl0EEB1V_(i64 %.sroa.012.029.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #17
          to label %.body unwind label %bb.m, !noalias !284

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.028.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.sroa.1015.025.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.not11.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.i ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.i ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.ag, align 16, !noalias !290
  %i.ai = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -640 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.i ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.i ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 4 uses
  %i.ar = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -40
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !299
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.at = load i64, ptr %i.as, align 8, !range !235, !alias.scope !307, !noalias !308, !noundef !10
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 -32 ; 2 uses
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.l unwind label %bb.h, !noalias !286

bb.k:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.l unwind label %bb.h, !noalias !286

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !302, !noalias !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !299
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load i32, ptr %i.aw, align 8, !alias.scope !293, !noalias !311, !noundef !10
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 40                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [40 x i8], ptr %.sroa.0.0, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false), !noalias !286
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bb, i64 -8
  store i32 %.val.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.ar, 0
  br i1 %i.be, label %.loopexit, label %bb.i

bb.m:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !286
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.o

.body:                                            ; preds = %bb.h
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1m_6FileIdEEEB1m_.exit unwind label %bb.p

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEE17new_uninitializedBT_.exit
  store i64 %i.y, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !285, !noalias !284
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !284, !noalias !285, !noundef !10
  store i64 %i.bh, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !285, !noalias !284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.n
  ret void

bb.p:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3raw8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1m_6FileIdEEEB1m_.exit: ; preds = %.body
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBT_6FileIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !312, !noundef !10 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1h_6FileIdENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !318, !noundef !10 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB1e_6FileIdEEB1e_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !318, !nonnull !10, !noundef !10 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !319
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i ] ; 2 uses
  %.sroa.86.016.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBG_6FileIdEEBG_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.016.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBZ_6FileIdEE9next_implKb0_EBZ_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !322
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBZ_6FileIdEE9next_implKb0_EBZ_.exit.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtBZ_6FileIdEE9next_implKb0_EBZ_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.016.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -40
  %i.x = load i64, ptr %i.w, align 8, !range !235, !alias.scope !325, !noalias !318, !noundef !10
  %i.y = icmp eq i64 %i.x, 0
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -32 ; 5 uses
end_hunk_0
