Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssserver.ssserver.5a03b8c6a6a4bf34-cgu.0?download=true
inline.NumInlined: 17782
inline.NumDeleted: 8686
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0Cs7J90r1BbDkC_8ssserver:bb.a
_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i3.i.i.i, %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i, i64 87, i1 false), !noalias !28628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !noalias !28628
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i.i, i8 7, i64 7, i1 false), !noalias !28613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.12.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false), !noalias !28628
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECs7J90r1BbDkC_8ssserver.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECs7J90r1BbDkC_8ssserver.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i, %bb.gb
  %.sroa.5.sroa.10.0.i.i.i = phi i64 [ 0, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.10.0.copyload.i.i.i, %bb.gb ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i.i = phi ptr [ null, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.8.0.copyload.i.i.i, %bb.gb ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i = phi i8 [ 7, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i, %bb.gb ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4163.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i, i64 87, i1 false), !noalias !28630
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.6.i.i16.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.i, i64 7, i1 false), !noalias !28613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i.i, i64 7, i1 false), !noalias !28630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.12.i.i.i, i64 16, i1 false), !noalias !28630
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i.i15.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.11.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4163.sroa.5.i, i64 87, i1 false), !noalias !28631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !28631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !28631
  br i1 %i.afw, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECs7J90r1BbDkC_8ssserver.exit.i
  %switch.i.i.i.i.i.i.i = icmp samesign ult i8 %i.afq, 2
  br i1 %switch.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7137.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28632)
  call void @llvm.experimental.noalias.scope.decl(metadata !28633)
  call void @llvm.experimental.noalias.scope.decl(metadata !28634)
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.7137.0.copyload.i, i64 24
  %i.afz = load ptr, ptr %i.afy, align 8, !alias.scope !28635, !noalias !28636, !noundef !66
  %i.aga = load ptr, ptr %.sroa.7137.0.copyload.i, align 8, !alias.scope !28635, !noalias !28636, !nonnull !66, !align !72, !noundef !66
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 32
  %i.agc = load ptr, ptr %i.agb, align 8, !noalias !28637, !nonnull !66, !noundef !66
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.7137.0.copyload.i, i64 8
  %i.age = load ptr, ptr %i.agd, align 8, !alias.scope !28635, !noalias !28636, !noundef !66
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.7137.0.copyload.i, i64 16
  %i.agg = load i64, ptr %i.agf, align 8, !alias.scope !28635, !noalias !28636, !noundef !66
  call void %i.agc(ptr noundef %i.afz, ptr noundef %i.age, i64 noundef %i.agg) #46, !noalias !28637, !inline_history !28056
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7137.0.copyload.i, i64 noundef 32, i64 noundef 8) #46, !noalias !28636
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %bb.ge, %bb.gd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0.copyload.i) ]
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0.copyload.i, i64 32
  %i.agi = load ptr, ptr %i.agh, align 8, !noalias !28638, !nonnull !66, !noundef !66
  call void %i.agi(ptr noundef %.sroa.10.sroa.6.0.copyload.i, ptr noundef %.sroa.10.sroa.4.0.copyload.i, i64 noundef %.sroa.10.sroa.5.0.copyload.i) #46, !noalias !28638, !inline_history !28065
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.7.0.copyload.i) ]
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.7.0.copyload.i, i64 32
  %i.agk = load ptr, ptr %i.agj, align 8, !noalias !28639, !nonnull !66, !noundef !66
  call void %i.agk(ptr noundef %.sroa.10.sroa.10.0.copyload.i, ptr noundef %.sroa.10.sroa.8.0.copyload.i, i64 noundef %.sroa.10.sroa.9.0.copyload.i) #46, !noalias !28639, !inline_history !28074
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i

bb.gf:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECs7J90r1BbDkC_8ssserver.exit.i
  %switch.i.i.i.i2.i.i.i = icmp samesign ult i8 %.sroa.5.sroa.0.i.i.sroa.5.0.copyload.i, 2
  br i1 %switch.i.i.i.i2.i.i.i, label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28640)
  call void @llvm.experimental.noalias.scope.decl(metadata !28641)
  call void @llvm.experimental.noalias.scope.decl(metadata !28642)
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 24
  %i.agm = load ptr, ptr %i.agl, align 8, !alias.scope !28643, !noalias !28644, !noundef !66
  %i.agn = load ptr, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, align 8, !alias.scope !28643, !noalias !28644, !nonnull !66, !align !72, !noundef !66
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 32
  %i.agp = load ptr, ptr %i.ago, align 8, !noalias !28645, !nonnull !66, !noundef !66
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 8
  %i.agr = load ptr, ptr %i.agq, align 8, !alias.scope !28643, !noalias !28644, !noundef !66
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 16
  %i.agt = load i64, ptr %i.ags, align 8, !alias.scope !28643, !noalias !28644, !noundef !66
  call void %i.agp(ptr noundef %i.agm, ptr noundef %i.agr, i64 noundef %i.agt) #46, !noalias !28645, !inline_history !28087
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 noundef 32, i64 noundef 8) #46, !noalias !28644
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %bb.gg, %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i) ]
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i, i64 32
  %i.agv = load ptr, ptr %i.agu, align 8, !noalias !28646, !nonnull !66, !noundef !66
  call void %i.agv(ptr noundef %.sroa.5.sroa.0.i.i.sroa.11.0.copyload.i, ptr noundef %.sroa.5.sroa.0.i.i.sroa.9.0.copyload.i, i64 noundef %.sroa.5.sroa.0.i.i.sroa.10.0.copyload.i) #46, !noalias !28646, !inline_history !28096
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i) ]
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i, i64 32
  %i.agx = load ptr, ptr %i.agw, align 8, !noalias !28647, !nonnull !66, !noundef !66
  call void %i.agx(ptr noundef %.sroa.5.sroa.0.i.i.sroa.15.0.copyload.i, ptr noundef %.sroa.5.sroa.0.i.i.sroa.13.0.copyload.i, i64 noundef %.sroa.5.sroa.0.i.i.sroa.14.0.copyload.i) #46, !noalias !28647, !inline_history !28105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4163.sroa.5.i, i64 87, i1 false), !noalias !28631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.i, i64 7, i1 false), !noalias !28648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !28631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !28631
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i
  %.sroa.5.sroa.26.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.16.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.11.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.24.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.15.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.10.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.22.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.14.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.9.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.20.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.13.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.8.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.18.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.7.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.16.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.11.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.6.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.14.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.10.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.5.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.12.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.9.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.4.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.10.0.i.i27.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.10.sroa.0.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i28.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.7137.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i29.i = phi i8 [ %.sroa.5.sroa.0.i.i.sroa.5.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %i.afq, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6144.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, i64 87, i1 false), !noalias !28649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, i64 7, i1 false), !noalias !28649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, i64 7, i1 false), !noalias !28649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, i64 16, i1 false), !noalias !28649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i15.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i.i16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4163.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !28650)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6144.i, i64 87, i1 false), !noalias !28651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !28651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, i64 7, i1 false), !noalias !28651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, i64 16, i1 false), !noalias !28651
  br i1 %i.afw, label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i, label %bb.gh

bb.gh:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !28652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6144.i, i64 87, i1 false), !noalias !28651
  %.sroa.8145.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 96 ; 2 uses
  store i8 %.sroa.5.sroa.4.0.i.i29.i, ptr %.sroa.8145.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 97 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !28651
  %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 2 uses
  store ptr %.sroa.5.sroa.8.0.i.i28.i, ptr %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.11148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112 ; 2 uses
  store ptr %.sroa.5.sroa.10.0.i.i27.i, ptr %.sroa.11148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.12150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120 ; 2 uses
  store ptr %.sroa.5.sroa.12.0.i.i.i, ptr %.sroa.12150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.13152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 128 ; 2 uses
  store i64 %.sroa.5.sroa.14.0.i.i.i, ptr %.sroa.13152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.14154.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136 ; 2 uses
  store ptr %.sroa.5.sroa.16.0.i.i.i, ptr %.sroa.14154.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.15156.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  store ptr %.sroa.5.sroa.18.0.i.i.i, ptr %.sroa.15156.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 2 uses
  store ptr %.sroa.5.sroa.20.0.i.i.i, ptr %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 160 ; 2 uses
  store i64 %.sroa.5.sroa.22.0.i.i.i, ptr %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 168 ; 2 uses
  store ptr %.sroa.5.sroa.24.0.i.i.i, ptr %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 176 ; 2 uses
  store i64 %.sroa.5.sroa.26.0.i.i.i, ptr %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 184 ; 2 uses
  store i8 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !28651
  %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 185 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, i64 7, i1 false), !noalias !28651
  %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 192 ; 2 uses
  store ptr %.sroa.5.sroa.8.0.i.i.i, ptr %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !noalias !28651
  %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 200 ; 2 uses
  store i64 %.sroa.5.sroa.10.0.i.i.i, ptr %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !noalias !28651
  %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 208 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, i64 16, i1 false), !noalias !28651
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ap, align 8, !noalias !28652
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store i8 %.sroa.5.sroa.0.i.i.sroa.0.sroa.0.0.copyload.i, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !noalias !28652
  call void @llvm.experimental.noalias.scope.decl(metadata !28653)
  call void @llvm.experimental.noalias.scope.decl(metadata !28654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !28652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !28652
  %i.agy = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.agz = getelementptr inbounds nuw i8, ptr %i.am, i64 33
  %.val.i.i.i.i16 = load ptr, ptr %i.afo, align 8, !alias.scope !28650, !noalias !28655, !nonnull !66, !noundef !66 ; 7 uses
  %.val35.i.i.i.i = load i64, ptr %i.afp, align 8, !alias.scope !28650, !noalias !28655, !noundef !66 ; 10 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i16, i64 %.val35.i.i.i.i
  %i.ahb = icmp samesign eq i64 %.val35.i.i.i.i, 0
  br i1 %i.ahb, label %bb.gk, label %iter.check

iter.check:                                       ; preds = %bb.gh
  %min.iters.check = icmp ult i64 %.val35.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check434 = icmp ult i64 %.val35.i.i.i.i, 32
  br i1 %min.iters.check434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ahc = and i64 %.val35.i.i.i.i, 24
  %n.vec = and i64 %.val35.i.i.i.i, -32           ; 4 uses
  %i.ahd = getelementptr i8, ptr %.val.i.i.i.i16, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.aho, %vector.body ]
  %vec.phi435 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ahq, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val.i.i.i.i16, i64 %index ; 2 uses
  %i.ahe = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !28656, !noalias !28657 ; 3 uses
  %wide.load436 = load <16 x i8>, ptr %i.ahe, align 1, !alias.scope !28656, !noalias !28657 ; 3 uses
  %i.ahf = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.ahg = icmp ult <16 x i8> %wide.load436, splat (i8 32)
  %i.ahh = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.ahi = icmp eq <16 x i8> %wide.load436, splat (i8 127)
  %i.ahj = or <16 x i1> %i.ahf, %i.ahh
  %i.ahk = or <16 x i1> %i.ahg, %i.ahi
  %i.ahl = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.ahm = icmp ne <16 x i8> %wide.load436, splat (i8 9)
  %i.ahn = and <16 x i1> %i.ahj, %i.ahl
  %i.aho = or <16 x i1> %vec.phi, %i.ahn          ; 2 uses
  %i.ahp = and <16 x i1> %i.ahk, %i.ahm
  %i.ahq = or <16 x i1> %vec.phi435, %i.ahp       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ahr = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahr, label %middle.block, label %vector.body, !llvm.loop !28126

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.ahq, %i.aho
  %i.ahs = bitcast <16 x i1> %bin.rdx to i16
  %i.aht = icmp ne i16 %i.ahs, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %.val35.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ahc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !178

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aht, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec437 = and i64 %.val35.i.i.i.i, -8         ; 3 uses
  %i.ahu = getelementptr i8, ptr %.val.i.i.i.i16, i64 %n.vec437
  %i.ahv = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index438 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next442, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi439 = phi <8 x i1> [ %i.ahv, %vec.epilog.ph ], [ %i.aib, %vec.epilog.vector.body ]
  %next.gep440 = getelementptr i8, ptr %.val.i.i.i.i16, i64 %index438
  %wide.load441 = load <8 x i8>, ptr %next.gep440, align 1, !alias.scope !28656, !noalias !28657 ; 3 uses
  %i.ahw = icmp ult <8 x i8> %wide.load441, splat (i8 32)
  %i.ahx = icmp eq <8 x i8> %wide.load441, splat (i8 127)
  %i.ahy = or <8 x i1> %i.ahw, %i.ahx
  %i.ahz = icmp ne <8 x i8> %wide.load441, splat (i8 9)
  %i.aia = and <8 x i1> %i.ahy, %i.ahz
  %i.aib = or <8 x i1> %vec.phi439, %i.aia        ; 2 uses
  %index.next442 = add nuw i64 %index438, 8       ; 2 uses
  %i.aic = icmp eq i64 %index.next442, %n.vec437
  br i1 %i.aic, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aid = bitcast <8 x i1> %i.aib to i8
  %i.aie = icmp ne i8 %i.aid, 0                   ; 2 uses
  %cmp.n443 = icmp eq i64 %.val35.i.i.i.i, %n.vec437
  br i1 %cmp.n443, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.i.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.aht, %vec.epilog.iter.check ], [ %i.aie, %vec.epilog.middle.block ]
  %.sroa.02.07.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i.i16, %iter.check ], [ %i.ahd, %vec.epilog.iter.check ], [ %i.ahu, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.gj
  %.sroa.0.08.i.i.i.i.i.i.i = phi i1 [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.gj ], [ %.sroa.0.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i.i.i.i.i.i = phi ptr [ %i.aif, %bb.gj ], [ %.sroa.02.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.aig = load i8, ptr %.sroa.02.07.i.i.i.i.i.i.i, align 1, !alias.scope !28656, !noalias !28657, !noundef !66 ; 3 uses
  %i.aih = icmp ult i8 %i.aig, 32
  %i.aii = icmp eq i8 %i.aig, 127
  %or.cond.i.i.i.i.i.i.i = or i1 %i.aih, %i.aii
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gi, label %bb.gj

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.gj, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.aie, %vec.epilog.middle.block ], [ %i.aht, %middle.block ], [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.gj ]
  br i1 %.sroa.04.0.i.i.i.i.i.i.i.lcssa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, label %bb.gk

bb.gi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aij = icmp ne i8 %i.aig, 9
  %i.aik = or i1 %.sroa.0.08.i.i.i.i.i.i.i, %i.aij
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i1 [ %i.aik, %bb.gi ], [ %.sroa.0.08.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ail = icmp eq ptr %i.aif, %i.aha
  br i1 %i.ail, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !28128

bb.gk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.gh
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i16, i64 noundef range(i64 0, -9223372036854775808) %.val35.i.i.i.i) #46, !noalias !28658
  %.sroa.029.0.copyload.i.i.i.i = load i8, ptr %i.am, align 8, !noalias !28659
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !28659
  store i8 %.sroa.029.0.copyload.i.i.i.i, ptr %i.ao, align 8, !noalias !28659
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx7.i.i.i.i, align 1, !noalias !28659
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9.0..sroa_idx9.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %i.agy, i64 30, i1 false), !noalias !28659
  %.sroa.910.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i8 0, ptr %.sroa.910.0..sroa_idx11.i.i.i.i, align 8, !noalias !28659
  %.sroa.10.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx13.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.agz, i64 7, i1 false), !noalias !28659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !28659
  store ptr null, ptr %i.an, align 8, !noalias !28659
  %.sroa.6.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr inttoptr (i64 38 to ptr), ptr %.sroa.6.0..sroa_idx38.i.i.i.i, align 8, !noalias !28659
  %.sroa.7.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx40.i.i.i.i, i8 0, i64 16, i1 false), !noalias !28613
  %i.aim = call fastcc noundef i8 @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs7J90r1BbDkC_8ssserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.an, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ao) #54, !noalias !28660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !28659
  %i.ain = icmp eq i8 %i.aim, 2
  br i1 %i.ain, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.sroa.0.0.copyload3.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.7.0.copyload9.i.i.i = load i8, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !alias.scope !28661, !noalias !28662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i.i, i64 87, i1 false), !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.5.0.copyload.i = load i8, ptr %.sroa.8145.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.7.0.copyload.i = load ptr, ptr %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.8.0.copyload.i = load ptr, ptr %.sroa.11148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.9.0.copyload.i = load ptr, ptr %.sroa.12150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.13152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.11.0.copyload.i = load ptr, ptr %.sroa.14154.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.15156.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.13.0.copyload.i = load ptr, ptr %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.14.0.copyload.i = load i64, ptr %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.15.0.copyload.i = load ptr, ptr %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.16.0.copyload.i = load i64, ptr %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.17.0.copyload.i = load i8, ptr %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, i64 7, i1 false), !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.19.0.copyload.i = load ptr, ptr %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  %.sroa.9.i.i.sroa.20.0.copyload.i = load i64, ptr %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !alias.scope !28661, !noalias !28662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, i64 16, i1 false), !alias.scope !28661, !noalias !28662
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i: ; preds = %bb.gk, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.7.1.i.i.i = phi i8 [ 6, %bb.gk ], [ 5, %._crit_edge.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http7request5PartsECs7J90r1BbDkC_8ssserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ap) #46, !noalias !28660
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, %bb.gl
  %.sroa.9.i.i.sroa.5.0.i = phi i8 [ %.sroa.5.sroa.4.0.i.i29.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.5.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.7.0.i = phi ptr [ %.sroa.5.sroa.8.0.i.i28.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.7.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.8.0.i = phi ptr [ %.sroa.5.sroa.10.0.i.i27.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.8.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.9.0.i = phi ptr [ %.sroa.5.sroa.12.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.9.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.10.0.i = phi i64 [ %.sroa.5.sroa.14.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.10.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.11.0.i = phi ptr [ %.sroa.5.sroa.16.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.11.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.12.0.i = phi ptr [ %.sroa.5.sroa.18.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.12.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.13.0.i = phi ptr [ %.sroa.5.sroa.20.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.13.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.14.0.i = phi i64 [ %.sroa.5.sroa.22.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.14.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.15.0.i = phi ptr [ %.sroa.5.sroa.24.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.15.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.16.0.i = phi i64 [ %.sroa.5.sroa.26.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.16.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.17.0.i = phi i8 [ %.sroa.5.sroa.4.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.17.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.19.0.i = phi ptr [ %.sroa.5.sroa.8.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.19.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.20.0.i = phi i64 [ %.sroa.5.sroa.10.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.20.0.copyload.i, %bb.gl ]
  %.sroa.7.2.i.i.i = phi i8 [ %.sroa.7.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.7.0.copyload9.i.i.i, %bb.gl ]
  %.sroa.0.2.i.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECs7J90r1BbDkC_8ssserver.exit.i.i.i.i ], [ %.sroa.0.0.copyload3.i.i.i, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !28652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !28652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !28652
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i
  %.sroa.9.i.i.sroa.5.1.i = phi i8 [ %.sroa.9.i.i.sroa.5.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.4.0.i.i29.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.7.1.i = phi ptr [ %.sroa.9.i.i.sroa.7.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i28.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.8.1.i = phi ptr [ %.sroa.9.i.i.sroa.8.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i.i27.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.9.1.i = phi ptr [ %.sroa.9.i.i.sroa.9.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.12.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.10.1.i = phi i64 [ %.sroa.9.i.i.sroa.10.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.14.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.11.1.i = phi ptr [ %.sroa.9.i.i.sroa.11.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.16.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.12.1.i = phi ptr [ %.sroa.9.i.i.sroa.12.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.18.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.13.1.i = phi ptr [ %.sroa.9.i.i.sroa.13.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.20.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.14.1.i = phi i64 [ %.sroa.9.i.i.sroa.14.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.22.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.15.1.i = phi ptr [ %.sroa.9.i.i.sroa.15.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.24.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.16.1.i = phi i64 [ %.sroa.9.i.i.sroa.16.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.26.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.17.1.i = phi i8 [ %.sroa.9.i.i.sroa.17.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.4.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.19.1.i = phi ptr [ %.sroa.9.i.i.sroa.19.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.9.i.i.sroa.20.1.i = phi i64 [ %.sroa.9.i.i.sroa.20.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ]
  %.sroa.7.0.i.i.i = phi i8 [ %.sroa.7.2.i.i.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ %.sroa.5.sroa.0.i.i.sroa.0.sroa.0.0.copyload.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.2.i.i.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Cs7J90r1BbDkC_8ssserver.exit.i.i.i ], [ -1, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECs7J90r1BbDkC_8ssserver.exit.i ] ; 5 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.ay, align 8, !noalias !28613
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store i8 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !noalias !28613
  %.sroa.9.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 9 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.0..sroa_idx11.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, i64 87, i1 false), !noalias !28613
  %.sroa.9.i.i.sroa.5.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i8 %.sroa.9.i.i.sroa.5.1.i, ptr %.sroa.9.i.i.sroa.5.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !28613
  %.sroa.9.i.i.sroa.6.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, i64 7, i1 false), !noalias !28613
  %.sroa.9.i.i.sroa.7.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  store ptr %.sroa.9.i.i.sroa.7.1.i, ptr %.sroa.9.i.i.sroa.7.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !28613
  %.sroa.9.i.i.sroa.8.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  store ptr %.sroa.9.i.i.sroa.8.1.i, ptr %.sroa.9.i.i.sroa.8.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !28613
  %.sroa.9.i.i.sroa.9.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  store ptr %.sroa.9.i.i.sroa.9.1.i, ptr %.sroa.9.i.i.sroa.9.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !28613
  %.sroa.9.i.i.sroa.10.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0Cs7J90r1BbDkC_8ssserver:bb.a
  %.sroa.9.i.i.sroa.19.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  store ptr %.sroa.9.i.i.sroa.19.1.i, ptr %.sroa.9.i.i.sroa.19.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !28613
  %.sroa.9.i.i.sroa.20.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  store i64 %.sroa.9.i.i.sroa.20.1.i, ptr %.sroa.9.i.i.sroa.20.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !28613
  %.sroa.9.i.i.sroa.21.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.sroa.21.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, i64 16, i1 false), !noalias !28613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.21.i)
  store i8 1, ptr %i.afg, align 1, !noalias !28613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6144.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.8.i)
  %i.aio = load i64, ptr %i.afm, align 8, !range !101, !noalias !28615, !noundef !66
  %.not.i = icmp eq i64 %i.aio, -1
  br i1 %.not.i, label %bb.gz, label %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i

_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i:     ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !28613
  store ptr %i.afm, ptr %i.bg, align 8, !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !28613
  %i.aip = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  store ptr %i.aip, ptr %i.bf, align 8, !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !28613
  store ptr %i.bg, ptr %i.bc, align 8, !noalias !28613
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCs7J90r1BbDkC_8ssserver, ptr %.sroa.4187.0..sroa_idx.i, align 8, !noalias !28613
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bf, ptr %i.aiq, align 8, !noalias !28613
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCs7J90r1BbDkC_8ssserver, ptr %.sroa.4189.0..sroa_idx.i, align 8, !noalias !28613
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noundef nonnull @397, ptr noundef nonnull %i.bc) #46, !noalias !28663
  %.sroa.0184.0.copyload.pr.i = load i64, ptr %i.bd, align 8, !alias.scope !28664, !noalias !28613 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !28613
  %.sroa.4185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4185.0.copyload.i = load ptr, ptr %.sroa.4185.0..sroa_idx.i, align 8, !alias.scope !28664, !noalias !28613, !nonnull !66, !noundef !66 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28664, !noalias !28613 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !28613
  call void @llvm.experimental.noalias.scope.decl(metadata !28665)
  call void @llvm.experimental.noalias.scope.decl(metadata !28666)
  %i.air = udiv i64 %.sroa.5.0.copyload.i, 3
  %i.ais = shl nuw i64 %i.air, 2                  ; 2 uses
  %i.ait = urem i64 %.sroa.5.0.copyload.i, 3
  %.not.i.i.i.i17 = icmp eq i64 %i.ait, 0
  %i.aiu = add nuw i64 %i.ais, 4
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i17, i64 %i.ais, i64 %i.aiu ; 15 uses
  %.not.i.i.i.i.i18 = icmp slt i64 %.sroa.7.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i18, label %bb.gp, label %bb.gm, !prof !158

bb.gm:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i
  %i.aiv = icmp eq i64 %.sroa.7.0.i.i.i.i, 0
  br i1 %i.aiv, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7J90r1BbDkC_8ssserver.exit.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !28667
  %i.aiw = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.7.0.i.i.i.i, i64 noundef range(i64 1, 17) 1) #46, !noalias !28667 ; 2 uses
  %i.aix = icmp eq ptr %i.aiw, null
  br i1 %i.aix, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aiy = ptrtoint ptr %i.aiw to i64
  br label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7J90r1BbDkC_8ssserver.exit.i.i.i

bb.gp:                                            ; preds = %bb.gn, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i
  %.sroa.4.0.ph.i.i.i.i22 = phi i64 [ 1, %bb.gn ], [ 0, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i22, i64 %.sroa.7.0.i.i.i.i) #55, !noalias !28668
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %bb.go, %bb.gm
  %.sroa.10.0.i.i.i.i19 = phi i64 [ %i.aiy, %bb.go ], [ 1, %bb.gm ] ; 2 uses
  %i.aiz = inttoptr i64 %.sroa.10.0.i.i.i.i19 to ptr ; 4 uses
  %i.aja = call noundef i64 @_RNvXs_NtNtCs8xUA7ZdjTE9_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) @398, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4185.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull %i.aiz, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i) #46, !noalias !28669 ; 6 uses
  %i.ajb = icmp ugt i64 %i.aja, %.sroa.7.0.i.i.i.i
  br i1 %i.ajb, label %bb.gr, label %bb.gq, !prof !78

bb.gq:                                            ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7J90r1BbDkC_8ssserver.exit.i.i.i
  %i.ajc = sub nuw nsw i64 %.sroa.7.0.i.i.i.i, %i.aja ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiz, i64 %i.aja ; 3 uses
  %i.aje = sub nsw i64 0, %i.aja
  %i.ajf = and i64 %i.aje, 3                      ; 3 uses
  %.not.i2.i.i.i = icmp eq i64 %i.ajf, 0
  br i1 %.not.i2.i.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.gr:                                            ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7J90r1BbDkC_8ssserver.exit.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.aja, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #56, !noalias !28669
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.gq
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.7.0.i.i.i.i, %i.aja
  br i1 %exitcond.not.i.i.i.i, label %bb.gv, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i
  store i8 61, ptr %i.ajd, align 1, !alias.scope !28670, !noalias !28671
  %exitcond4.not.i.i.i.i = icmp eq i64 %i.ajf, 1
  br i1 %exitcond4.not.i.i.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.gs
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ajc, 1
  br i1 %exitcond.not.i.i.i.i.1, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %.lr.ph.i.i.i.i.1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1
  store i8 61, ptr %i.ajg, align 1, !alias.scope !28670, !noalias !28671
  %exitcond4.not.i.i.i.i.1 = icmp eq i64 %i.ajf, 2
  br i1 %exitcond4.not.i.i.i.i.1, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.gt
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %i.ajc, 2
  br i1 %exitcond.not.i.i.i.i.2, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i.i.2
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajd, i64 2
  store i8 61, ptr %i.ajh, align 1, !alias.scope !28670, !noalias !28671
  br label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ajc, i64 noundef %i.ajc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #56, !noalias !28669
  unreachable

_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %bb.gs, %bb.gt, %bb.gu, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !28672
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiz, i64 noundef %.sroa.7.0.i.i.i.i) #46, !noalias !28673
  %i.aji = load i64, ptr %i.al, align 8, !range !73, !noalias !28672, !noundef !66
  %i.ajj = trunc nuw i64 %i.aji to i1
  br i1 %i.ajj, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i, label %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.821.24.copyload.i.i.i = load i64, ptr %i.ajk, align 8, !noalias !28672
  %.sroa.1022.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.1022.24.copyload.i.i.i = load i64, ptr %.sroa.1022.24..sroa_idx.i.i.i, align 8, !noalias !28672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28672
  call void @llvm.experimental.noalias.scope.decl(metadata !28674)
  call void @llvm.experimental.noalias.scope.decl(metadata !28675)
  %i.ajl = inttoptr i64 %.sroa.7.0.i.i.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !28676
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.ak, align 8, !noalias !28677
  %.sroa.6.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.10.0.i.i.i.i19, ptr %.sroa.6.0..sroa_idx10.i.i.i, align 8, !noalias !28677
  %.sroa.812.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.ajl, ptr %.sroa.812.0..sroa_idx13.i.i.i, align 8, !noalias !28677
  %.sroa.9.0..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.821.24.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx15.i.i.i, align 8, !noalias !28677
  %.sroa.10.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sroa.1022.24.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx17.i.i.i, align 8, !noalias !28677
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 12, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @985, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @372) #56, !noalias !28678
  unreachable

_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28672
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.be, align 8, !alias.scope !28679, !noalias !28680
  %.sroa.812.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  store ptr %i.aiz, ptr %.sroa.812.8..sroa_idx.i.i.i, align 8, !alias.scope !28679, !noalias !28680
  %.sroa.9.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.9.8..sroa_idx.i.i.i, align 8, !alias.scope !28679, !noalias !28680
  %i.ajm = icmp eq i64 %.sroa.0184.0.copyload.pr.i, 0
  br i1 %i.ajm, label %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i, label %bb.gw

bb.gw:                                            ; preds = %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4185.0.copyload.i, i64 noundef %.sroa.0184.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !28681
  br label %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i

_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i: ; preds = %bb.gw, %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECs7J90r1BbDkC_8ssserver.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !28613
  store ptr %i.be, ptr %i.az, align 8, !noalias !28613
  %.sroa.4207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4207.0..sroa_idx.i, align 8, !noalias !28613
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull @399, ptr noundef nonnull %i.az) #46, !noalias !28682
  %.sroa.0203.0.copyload.pr.i = load i64, ptr %i.ba, align 8, !alias.scope !28683, !noalias !28613 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !28613
  %.sroa.6204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.6204.0.copyload.i = load ptr, ptr %.sroa.6204.0..sroa_idx.i, align 8, !alias.scope !28683, !noalias !28613, !nonnull !66, !noundef !66 ; 9 uses
  %.sroa.9205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.9205.0.copyload.i = load i64, ptr %.sroa.9205.0..sroa_idx.i, align 8, !alias.scope !28683, !noalias !28613 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !28613
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.6204.0.copyload.i, i64 %.sroa.9205.0.copyload.i
  %i.ajo = icmp samesign eq i64 %.sroa.9205.0.copyload.i, 0
  br i1 %i.ajo, label %bb.hd, label %iter.check464

iter.check464:                                    ; preds = %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i
  %min.iters.check446 = icmp ult i64 %.sroa.9205.0.copyload.i, 8
  br i1 %min.iters.check446, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check447

vector.main.loop.iter.check447:                   ; preds = %iter.check464
  %min.iters.check448 = icmp ult i64 %.sroa.9205.0.copyload.i, 32
  br i1 %min.iters.check448, label %vec.epilog.ph468, label %vector.ph449

vector.ph449:                                     ; preds = %vector.main.loop.iter.check447
  %i.ajp = and i64 %.sroa.9205.0.copyload.i, 24
  %n.vec450 = and i64 %.sroa.9205.0.copyload.i, -32 ; 4 uses
  %i.ajq = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %n.vec450
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph449
  %index452 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body451 ] ; 2 uses
  %vec.phi453 = phi <16 x i1> [ zeroinitializer, %vector.ph449 ], [ %i.akb, %vector.body451 ]
  %vec.phi454 = phi <16 x i1> [ zeroinitializer, %vector.ph449 ], [ %i.akd, %vector.body451 ]
  %next.gep455 = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %index452 ; 2 uses
  %i.ajr = getelementptr i8, ptr %next.gep455, i64 16
  %wide.load456 = load <16 x i8>, ptr %next.gep455, align 1, !alias.scope !28684, !noalias !28685 ; 3 uses
  %wide.load457 = load <16 x i8>, ptr %i.ajr, align 1, !alias.scope !28684, !noalias !28685 ; 3 uses
  %i.ajs = icmp ult <16 x i8> %wide.load456, splat (i8 32)
  %i.ajt = icmp ult <16 x i8> %wide.load457, splat (i8 32)
  %i.aju = icmp eq <16 x i8> %wide.load456, splat (i8 127)
  %i.ajv = icmp eq <16 x i8> %wide.load457, splat (i8 127)
  %i.ajw = or <16 x i1> %i.ajs, %i.aju
  %i.ajx = or <16 x i1> %i.ajt, %i.ajv
  %i.ajy = icmp ne <16 x i8> %wide.load456, splat (i8 9)
  %i.ajz = icmp ne <16 x i8> %wide.load457, splat (i8 9)
  %i.aka = and <16 x i1> %i.ajw, %i.ajy
  %i.akb = or <16 x i1> %vec.phi453, %i.aka       ; 2 uses
  %i.akc = and <16 x i1> %i.ajx, %i.ajz
  %i.akd = or <16 x i1> %vec.phi454, %i.akc       ; 2 uses
  %index.next458 = add nuw i64 %index452, 32      ; 2 uses
  %i.ake = icmp eq i64 %index.next458, %n.vec450
  br i1 %i.ake, label %middle.block459, label %vector.body451, !llvm.loop !28168

middle.block459:                                  ; preds = %vector.body451
  %bin.rdx460 = or <16 x i1> %i.akd, %i.akb
  %i.akf = bitcast <16 x i1> %bin.rdx460 to i16
  %i.akg = icmp ne i16 %i.akf, 0                  ; 3 uses
  %cmp.n461 = icmp eq i64 %.sroa.9205.0.copyload.i, %n.vec450
  br i1 %cmp.n461, label %._crit_edge.i.i.i20, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block459
  %min.epilog.iters.check467 = icmp eq i64 %i.ajp, 0
  br i1 %min.epilog.iters.check467, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph468, !prof !178

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check447, %vec.epilog.iter.check466
  %vec.epilog.resume.val462 = phi i64 [ %n.vec450, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check447 ]
  %bc.merge.rdx463 = phi i1 [ %i.akg, %vec.epilog.iter.check466 ], [ false, %vector.main.loop.iter.check447 ]
  %n.vec469 = and i64 %.sroa.9205.0.copyload.i, -8 ; 3 uses
  %i.akh = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %n.vec469
  %i.aki = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx463, i64 0
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val462, %vec.epilog.ph468 ], [ %index.next475, %vec.epilog.vector.body470 ] ; 2 uses
  %vec.phi472 = phi <8 x i1> [ %i.aki, %vec.epilog.ph468 ], [ %i.ako, %vec.epilog.vector.body470 ]
  %next.gep473 = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %index471
  %wide.load474 = load <8 x i8>, ptr %next.gep473, align 1, !alias.scope !28684, !noalias !28685 ; 3 uses
  %i.akj = icmp ult <8 x i8> %wide.load474, splat (i8 32)
  %i.akk = icmp eq <8 x i8> %wide.load474, splat (i8 127)
  %i.akl = or <8 x i1> %i.akj, %i.akk
  %i.akm = icmp ne <8 x i8> %wide.load474, splat (i8 9)
  %i.akn = and <8 x i1> %i.akl, %i.akm
  %i.ako = or <8 x i1> %vec.phi472, %i.akn        ; 2 uses
  %index.next475 = add nuw i64 %index471, 8       ; 2 uses
  %i.akp = icmp eq i64 %index.next475, %n.vec469
  br i1 %i.akp, label %vec.epilog.middle.block476, label %vec.epilog.vector.body470, !llvm.loop !28169

vec.epilog.middle.block476:                       ; preds = %vec.epilog.vector.body470
  %i.akq = bitcast <8 x i1> %i.ako to i8
  %i.akr = icmp ne i8 %i.akq, 0                   ; 2 uses
  %cmp.n477 = icmp eq i64 %.sroa.9205.0.copyload.i, %n.vec469
  br i1 %cmp.n477, label %._crit_edge.i.i.i20, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check464, %vec.epilog.iter.check466, %vec.epilog.middle.block476
  %.sroa.0.08.i.i.i.ph = phi i1 [ false, %iter.check464 ], [ %i.akg, %vec.epilog.iter.check466 ], [ %i.akr, %vec.epilog.middle.block476 ]
  %.sroa.02.07.i.i.i.ph = phi ptr [ %.sroa.6204.0.copyload.i, %iter.check464 ], [ %i.ajq, %vec.epilog.iter.check466 ], [ %i.akh, %vec.epilog.middle.block476 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.gy
  %.sroa.0.08.i.i.i = phi i1 [ %.sroa.04.0.i.i.i, %bb.gy ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i.i = phi ptr [ %i.aks, %bb.gy ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %i.akt = load i8, ptr %.sroa.02.07.i.i.i, align 1, !alias.scope !28684, !noalias !28685, !noundef !66 ; 3 uses
  %i.aku = icmp ult i8 %i.akt, 32
  %i.akv = icmp eq i8 %i.akt, 127
  %or.cond.i.i.i = or i1 %i.aku, %i.akv
  br i1 %or.cond.i.i.i, label %bb.gx, label %bb.gy

._crit_edge.i.i.i20:                              ; preds = %bb.gy, %vec.epilog.middle.block476, %middle.block459
  %.sroa.04.0.i.i.i.lcssa = phi i1 [ %i.akr, %vec.epilog.middle.block476 ], [ %i.akg, %middle.block459 ], [ %.sroa.04.0.i.i.i, %bb.gy ]
  br i1 %.sroa.04.0.i.i.i.lcssa, label %bb.ha, label %bb.hd

bb.gx:                                            ; preds = %.lr.ph.i.i.i
  %i.akw = icmp ne i8 %i.akt, 9
  %i.akx = or i1 %.sroa.0.08.i.i.i, %i.akw
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %.lr.ph.i.i.i
  %.sroa.04.0.i.i.i = phi i1 [ %i.akx, %bb.gx ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aky = icmp eq ptr %i.aks, %i.ajn
  br i1 %i.aky, label %._crit_edge.i.i.i20, label %.lr.ph.i.i.i, !llvm.loop !28170

bb.gz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit66.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i
  %.sroa.7.0.i.i249.i = phi i8 [ %.sroa.7.0.i.i60.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit66.i ], [ %.sroa.7.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i ] ; 2 uses
  %.sroa.0.0.i.i248.i = phi i64 [ %.sroa.0.0.i.i61.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit66.i ], [ %.sroa.0.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i ] ; 3 uses
  store i8 0, ptr %i.afg, align 1, !noalias !28613
  %.sroa.5237.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 1, !noalias !28613 ; 2 uses
  %i.akz = icmp eq i64 %.sroa.0.0.i.i248.i, -1
  br i1 %i.akz, label %bb.hm, label %.thread.i21

bb.ha:                                            ; preds = %._crit_edge.i.i.i20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !28686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !28686
  store ptr %i.a, ptr %i.ai, align 8, !noalias !28686
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXsa_NtNtCs7ewmRfXve8r_4http6header5valueNtB5_18InvalidHeaderValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !28686
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @531, ptr noundef nonnull %i.ai) #46, !noalias !28687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !28686
  %i.ala = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtB7_6string6StringECs5cGWJDriNjd_6notify(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj) #53, !noalias !28688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !28686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !28613
  %i.alb = icmp eq i64 %.sroa.0203.0.copyload.pr.i, 0
  br i1 %i.alb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6204.0.copyload.i, i64 noundef %.sroa.0203.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !28689
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.experimental.noalias.scope.decl(metadata !28690)
  call void @llvm.experimental.noalias.scope.decl(metadata !28691)
  %.val.i.i45.i = load i64, ptr %i.be, align 8, !range !68, !alias.scope !28692, !noalias !28613, !noundef !66 ; 2 uses
  %i.alc = icmp eq i64 %.val.i.i45.i, 0
  br i1 %i.alc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit47.i, label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i
  %.val1.i.i46.i = load ptr, ptr %.sroa.812.8..sroa_idx.i.i.i, align 8, !alias.scope !28692, !noalias !28613, !nonnull !66, !noundef !66
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46.i, i64 noundef %.val.i.i45.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !28693
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit47.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit47.i: ; preds = %bb.hc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !28613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !28613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !28613
  br label %bb.if

bb.hd:                                            ; preds = %._crit_edge.i.i.i20, %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.i
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6204.0.copyload.i, i64 noundef %.sroa.9205.0.copyload.i) #46, !noalias !28615
  call void @llvm.experimental.noalias.scope.decl(metadata !28694)
  call void @llvm.experimental.noalias.scope.decl(metadata !28695)
  %.sroa.0199.0.copyload.i = load ptr, ptr %i.bb, align 8, !alias.scope !28696, !noalias !28613 ; 4 uses
  %.sroa.6200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.6200.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6200.0..sroa_idx.i, align 8, !alias.scope !28696, !noalias !28613 ; 3 uses
  %.sroa.6200.sroa.4.0..sroa.6200.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.6200.sroa.4.0.copyload.i = load i64, ptr %.sroa.6200.sroa.4.0..sroa.6200.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !28696, !noalias !28613 ; 3 uses
  %.sroa.6200.sroa.5.0..sroa.6200.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.6200.sroa.5.0.copyload.i = load ptr, ptr %.sroa.6200.sroa.5.0..sroa.6200.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !28696, !noalias !28613 ; 3 uses
  %.sroa.10202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 33
  %.sroa.10202.sroa.0.0.copyload.i = load i56, ptr %.sroa.10202.0..sroa_idx.i, align 1, !alias.scope !28696, !noalias !28613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !28613
  %i.ald = icmp eq i64 %.sroa.0203.0.copyload.pr.i, 0
  br i1 %i.ald, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit50.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6204.0.copyload.i, i64 noundef %.sroa.0203.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !28697
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit50.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit50.i: ; preds = %bb.he, %bb.hd
  store i8 0, ptr %i.afg, align 1, !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i51.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.i.i51.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.0..sroa_idx11.i.i.i, i64 215, i1 false), !noalias !28613
  %i.ale = icmp eq i64 %.sroa.0.0.i.i.i, -1
  br i1 %i.ale, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit50.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0199.0.copyload.i) ]
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0199.0.copyload.i, i64 32
  %i.alg = load ptr, ptr %i.alf, align 8, !noalias !28698, !nonnull !66, !noundef !66
  call void %i.alg(ptr noundef %.sroa.6200.sroa.5.0.copyload.i, ptr noundef %.sroa.6200.sroa.0.0.copyload.i, i64 noundef %.sroa.6200.sroa.4.0.copyload.i) #46, !noalias !28698, !inline_history !28204
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerReNtNtNtB8_6header5value11HeaderValueECs7J90r1BbDkC_8ssserver.exit.i

bb.hg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit50.i
  %.sroa.8213.32.insert.ext.i = zext i56 %.sroa.10202.sroa.0.0.copyload.i to i64
  %.sroa.8213.32.insert.shift.i = shl nuw i64 %.sroa.8213.32.insert.ext.i, 8
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !28699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.527.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.0..sroa_idx11.i.i.i, i64 215, i1 false), !noalias !28613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !28699
  store ptr @400, ptr %i.ae, align 8, !noalias !28700
  %.sroa.4.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 19, ptr %.sroa.4.0..sroa_idx.i56.i, align 8, !noalias !28700
  %.sroa.4.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %.sroa.0199.0.copyload.i, ptr %.sroa.4.0..sroa_idx14.i.i.i, align 8, !noalias !28699
  %.sroa.5.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %.sroa.6200.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx16.i.i.i, align 8, !noalias !28699
  %.sroa.6.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sroa.6200.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx18.i.i.i, align 8, !noalias !28699
  %.sroa.720.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %.sroa.6200.sroa.5.0.copyload.i, ptr %.sroa.720.0..sroa_idx21.i.i.i, align 8, !noalias !28699
  %.sroa.8.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 %.sroa.8213.32.insert.shift.i, ptr %.sroa.8.0..sroa_idx23.i.i.i, align 8, !noalias !28699
  store i64 %.sroa.0.0.i.i.i, ptr %i.ad, align 8, !noalias !28699
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store i8 %.sroa.7.0.i.i.i, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !28699
  call void @llvm.experimental.noalias.scope.decl(metadata !28701)
  call void @llvm.experimental.noalias.scope.decl(metadata !28702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !28699
  call void @_RNvMs_NtNtCs7ewmRfXve8r_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 19) #46, !noalias !28703
  %i.alh = load i64, ptr %i.ac, align 8, !range !73, !noalias !28704, !noundef !66
  %i.ali = trunc nuw i64 %i.alh to i1
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCscVsx2cUGvkQ_12futures_util6future6selectINtB4_6SelectINtNtCsf3Ta7LF998c_4core3pin3PinQNCNvNtCs8UFHSMUhzWe_19shadowsocks_service6server3run0EIB12_QNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7monitor3imp21create_signal_monitor0EENtNtNtB16_6future6future6Future4pollCs7J90r1BbDkC_8ssserver:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10275.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41423
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i74.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.734.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !41423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !41423
  %i.fi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !41423
  store ptr %i.dj, ptr %i.bn, align 8, !noalias !41423
  %i.fj = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !41423 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, 6
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp samesign ugt i64 %i.fj, 1
  br i1 %i.fl, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %.val.i.i.i.i = phi ptr [ %i.dj, %bb.p ], [ %.val.i.pre.i.i.i, %bb.t ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41428)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !41429
  %i.fm = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.fn = and i64 %i.fm, 3
  switch i64 %i.fn, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J90r1BbDkC_8ssserver.exit.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J90r1BbDkC_8ssserver.exit.i.i.i
    i64 1, label %bb.s
  ], !prof !97

default.unreachable:                              ; preds = %bb.ew, %bb.hg, %bb.dt, %bb.dm, %bb.bl, %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.fo = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.fp = and i64 %i.fm, 1095216660480
  %i.fq = icmp ne i64 %i.fp, 1095216660480
  call void @llvm.assume(i1 %i.fo)
  call void @llvm.assume(i1 %i.fq)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J90r1BbDkC_8ssserver.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.fr = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 8, !alias.scope !41430, !noalias !41429
  store i8 3, ptr %i.bc, align 8, !alias.scope !41430, !noalias !41429
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs) #46, !noalias !41428
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J90r1BbDkC_8ssserver.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J90r1BbDkC_8ssserver.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !41429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !41423
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !41423
  store ptr %i.bo, ptr %i.bm, align 8, !noalias !41423
  %.sroa.4212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4212.0..sroa_idx.i.i.i, align 8, !noalias !41423
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bn, ptr %i.ft, align 8, !noalias !41423
  %.sroa.4214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4214.0..sroa_idx.i.i.i, align 8, !noalias !41423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41431
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 2, ptr %i.fu, align 8, !noalias !41431
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @869, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !41431
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 27, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !41431
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr @870, ptr %i.fv, align 8, !noalias !41431
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %i.bm, ptr %i.fw, align 8, !noalias !41431
  store i64 0, ptr %i.g, align 8, !noalias !41431
  %.sroa.428.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @869, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8, !noalias !41431
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 27, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8, !noalias !41431
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.fx, align 8, !noalias !41431
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @587, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !41431
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 44, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !41431
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 1, ptr %i.fy, align 8, !noalias !41431
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 58, ptr %i.fz, align 4, !noalias !41431
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g) #46, !noalias !41432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !41423
  %.val.i.pre.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !41428, !noalias !41423
  br label %bb.q

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J90r1BbDkC_8ssserver.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !41423
  br label %bb.m

bb.v:                                             ; preds = %bb.b
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3377 ; 6 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !range !93, !noalias !41433
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10275.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41423
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i74.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.734.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !41423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !41423
  switch i8 %.pre.i.i.i, label %bb.w [
    i8 0, label %._crit_edge.i.i
    i8 1, label %bb.dj
    i8 3, label %bb.ap
    i8 4, label %bb.cw
  ]

._crit_edge.i.i:                                  ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3376
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !79, !noalias !41433
  %.phi.trans.insert32.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3224
  %.pre33.i.i = load i64, ptr %.phi.trans.insert32.i.i, align 8, !range !73, !noalias !41433
  %.phi.trans.insert34.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3232
  %.pre35.i.i = load i64, ptr %.phi.trans.insert34.i.i, align 8, !noalias !41433
  %.phi.trans.insert36.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3368
  %.pre37.i.i = load ptr, ptr %.phi.trans.insert36.i.i, align 8, !noalias !41433
  br label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.v
  unreachable

bb.x:                                             ; preds = %._crit_edge.i.i, %.thread549.i.i.i
  %i.gb = phi ptr [ %i.dv, %.thread549.i.i.i ], [ %.pre37.i.i, %._crit_edge.i.i ] ; 39 uses
  %i.gc = phi i64 [ %i.fg, %.thread549.i.i.i ], [ %.pre35.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.gd = phi i64 [ %i.fe, %.thread549.i.i.i ], [ %.pre33.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ge = phi i8 [ %i.fd, %.thread549.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.gf = phi ptr [ %.sroa.10270.0..sroa_idx.i.i.i, %.thread549.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i ] ; 5 uses
  %i.gg = phi ptr [ %i.fi, %.thread549.i.i.i ], [ %i.ga, %._crit_edge.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bt, i64 3240
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.gh, align 8, !noalias !41433 ; 4 uses
  %.sroa.10.0..sroa_idx.i90.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3248 ; 2 uses
  %i.gi = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.gi)
  %i.gj = xor i64 %.sroa.0.0.copyload.i.i.i.i, -9223372036854775808
  %i.gk = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.gl = select i1 %i.gk, i64 %i.gj, i64 1
  switch i64 %i.gl, label %bb.w [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.dc
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !41433
  call void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 36) #46, !noalias !41434
  %i.gm = load i64, ptr %i.bb, align 8, !range !73, !noalias !41433, !noundef !66
  %i.gn = trunc nuw i64 %i.gm to i1
  br i1 %i.gn, label %bb.ad, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %.sroa.11.0..sroa_idx.i91.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 3280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx.i90.i.i.i, i64 32, i1 false), !noalias !41433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.734.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.0..sroa_idx.i91.i.i.i, i64 88, i1 false), !noalias !41433
  %i.go = getelementptr inbounds nuw i8, ptr %i.bt, i64 3384 ; 5 uses
  store i64 -1, ptr %i.go, align 8, !noalias !41433
  %i.gp = trunc nuw i64 %i.gd to i1
  br i1 %i.gp, label %bb.cm, label %bb.cs

bb.aa:                                            ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.gq, align 8, !noalias !41433 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.42.0.copyload.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !41433, !nonnull !66, !noundef !66 ; 6 uses
  %.sroa.8.0..sroa_idx.i92.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.8.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i92.i.i.i, align 8, !noalias !41433 ; 10 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.8.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %min.iters.check = icmp ult i64 %.sroa.8.0.copyload.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i64 %.sroa.8.0.copyload.i.i.i.i, 32
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gr = and i64 %.sroa.8.0.copyload.i.i.i.i, 24
  %n.vec = and i64 %.sroa.8.0.copyload.i.i.i.i, -32 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i.i.i.i, i64 %index ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.gs, align 1, !alias.scope !41435, !noalias !41434 ; 2 uses
  %wide.load187 = load <16 x i8>, ptr %i.gt, align 1, !alias.scope !41435, !noalias !41434 ; 2 uses
  %i.gu = add <16 x i8> %wide.load, splat (i8 -65)
  %i.gv = add <16 x i8> %wide.load187, splat (i8 -65)
  %i.gw = icmp ult <16 x i8> %i.gu, splat (i8 26)
  %i.gx = icmp ult <16 x i8> %i.gv, splat (i8 26)
  %i.gy = select <16 x i1> %i.gw, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.gz = select <16 x i1> %i.gx, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ha = or <16 x i8> %i.gy, %wide.load
  %i.hb = or <16 x i8> %i.gz, %wide.load187
  store <16 x i8> %i.ha, ptr %i.gs, align 1, !alias.scope !41435, !noalias !41434
  store <16 x i8> %i.hb, ptr %i.gt, align 1, !alias.scope !41435, !noalias !41434
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !40968

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.8.0.copyload.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !178

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %.sroa.8.0.copyload.i.i.i.i, -8 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i.i.i.i, i64 %index189 ; 2 uses
  %wide.load190 = load <8 x i8>, ptr %i.hd, align 1, !alias.scope !41435, !noalias !41434 ; 2 uses
  %i.he = add <8 x i8> %wide.load190, splat (i8 -65)
  %i.hf = icmp ult <8 x i8> %i.he, splat (i8 26)
  %i.hg = select <8 x i1> %i.hf, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.hh = or <8 x i8> %i.hg, %wide.load190
  store <8 x i8> %i.hh, ptr %i.hd, align 1, !alias.scope !41435, !noalias !41434
  %index.next191 = add nuw i64 %index189, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next191, %n.vec188
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %.sroa.8.0.copyload.i.i.i.i, %n.vec188
  br i1 %cmp.n192, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi i64 [ %i.ho, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i.i.i.i, i64 %.sroa.0.05.i.i.i.i.i ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !41435, !noalias !41434, !noundef !66 ; 2 uses
  %i.hl = add i8 %i.hk, -65
  %i.hm = icmp ult i8 %i.hl, 26
  %i.hn = select i1 %i.hm, i8 32, i8 0
  %.sroa.03.0.i.i.i.i.i = or i8 %i.hn, %i.hk
  store i8 %.sroa.03.0.i.i.i.i.i, ptr %i.hj, align 1, !alias.scope !41435, !noalias !41434
  %i.ho = add nuw i64 %.sroa.0.05.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.8.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !40970

_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  switch i64 %.sroa.8.0.copyload.i.i.i.i, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i [
    i64 1, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i.i.i.i
    i64 4, label %bb.ab
  ]

_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i
  %lhsc.i.i.i.i = load i8, ptr %.sroa.42.0.copyload.i.i.i.i, align 1, !noalias !41434
  %i.hp = icmp eq i8 %lhsc.i.i.i.i, 49
  br label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i

bb.ab:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i
  %i.hq = load i32, ptr %.sroa.42.0.copyload.i.i.i.i, align 1
  %i.hr = icmp ne i32 %i.hq, 1702195828
  %i.hs = zext i1 %i.hr to i32
  %i.ht = icmp eq i32 %i.hs, 0
  br label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i

_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i: ; preds = %bb.ab, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i, %bb.aa
  %.sroa.010.0.i.i.i.i = phi i1 [ %i.hp, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i.i.i.i ], [ %i.ht, %bb.ab ], [ false, %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i.i.i.i ], [ false, %bb.aa ]
  %i.hu = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !41436
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !41437)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.hv, align 8, !range !101, !alias.scope !41437, !noalias !41433, !noundef !66 ; 2 uses
  %i.hw = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.hw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.sink.split.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.thread.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.sink.split.i.i.i.i.i: ; preds = %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !41437, !noalias !41433, !nonnull !66, !noundef !66
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !41438
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.thread.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.thread.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7J90r1BbDkC_8ssserver.exit.sink.split.i.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !41433
  br label %bb.ae

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i: ; preds = %bb.ac, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !41433
  br i1 %.sroa.010.0.i.i.i.i, label %bb.ck, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECs7J90r1BbDkC_8ssserver.exit.thread.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bt, i64 3384 ; 5 uses
  store i64 -1, ptr %i.hy, align 8, !noalias !41433
  %i.hz = trunc nuw i64 %i.gd to i1
  br i1 %i.hz, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  call void @_RNvXs4_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolverOptsNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.ba) #46, !noalias !41434
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  store i64 %i.gc, ptr %i.ia, align 8, !noalias !41433
  call void @llvm.experimental.noalias.scope.decl(metadata !41439)
  %i.ib = load i64, ptr %i.hy, align 8, !range !101, !alias.scope !41439, !noalias !41433, !noundef !66
  %i.ic = icmp eq i64 %i.ib, -1
  br i1 %i.ic, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !41440)
  %i.id = getelementptr inbounds nuw i8, ptr %i.bt, i64 3536 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41441)
  call void @llvm.experimental.noalias.scope.decl(metadata !41442)
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !41443, !noalias !41433, !nonnull !66, !noundef !66
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !41444
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEE9drop_slowCs8AjStw0eGtC_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.id) #53, !noalias !41434
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bt, i64 3432
  call void @llvm.experimental.noalias.scope.decl(metadata !41445)
  %i.ii = load i64, ptr %i.ih, align 8, !range !101, !alias.scope !41446, !noalias !41433, !noundef !66 ; 2 uses
  %i.ij = icmp sgt i64 %i.ii, 0
  br i1 %i.ij, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bt, i64 3440
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ik, align 8, !alias.scope !41446, !noalias !41433, !nonnull !66, !noundef !66
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !41447
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i: ; preds = %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41448)
  %.val.i.i.i61.i.i.i.i = load i64, ptr %i.hy, align 8, !range !68, !alias.scope !41449, !noalias !41433, !noundef !66 ; 2 uses
  %i.il = icmp eq i64 %.val.i.i.i61.i.i.i.i, 0
  br i1 %i.il, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.bt, i64 3392
  %.val1.i1.i.i.i.i.i.i = load ptr, ptr %i.im, align 8, !alias.scope !41449, !noalias !41433, !nonnull !66, !noundef !66
  %i.in = mul nuw i64 %.val.i.i.i61.i.i.i.i, 18
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i.i.i.i.i.i, i64 noundef %i.in, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !41450
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i: ; preds = %bb.aj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.bt, i64 3408
  call void @llvm.experimental.noalias.scope.decl(metadata !41451)
  %.val.i2.i.i.i.i.i.i = load i64, ptr %i.io, align 8, !range !68, !alias.scope !41452, !noalias !41433, !noundef !66 ; 2 uses
  %i.ip = icmp eq i64 %.val.i2.i.i.i.i.i.i, 0
  br i1 %i.ip, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bt, i64 3416
  %.val1.i3.i.i.i.i.i.i = load ptr, ptr %i.iq, align 8, !alias.scope !41452, !noalias !41433, !nonnull !66, !noundef !66
  %i.ir = mul nuw i64 %.val.i2.i.i.i.i.i.i, 18
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3.i.i.i.i.i.i, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !41453
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i: ; preds = %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i.i.i, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.hy, ptr noundef nonnull align 8 dereferenceable(216) %i.ba, i64 216, i1 false), !noalias !41433
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECs7J90r1BbDkC_8ssserver.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.sroa.25.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.sroa.26.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.az, ptr noundef nonnull align 8 dereferenceable(216) %i.hy, i64 216, i1 false), !noalias !41433
  call void @llvm.experimental.noalias.scope.decl(metadata !41454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !41433
  %i.is = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.it = load i32, ptr %i.is, align 8, !range !133, !alias.scope !41454, !noalias !41455, !noundef !66 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gb, i64 52
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !41454, !noalias !41455
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i)
end_hunk_2
