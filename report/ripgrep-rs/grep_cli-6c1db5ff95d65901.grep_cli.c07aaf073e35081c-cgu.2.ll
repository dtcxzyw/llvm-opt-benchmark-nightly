Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_cli-6c1db5ff95d65901.grep_cli.c07aaf073e35081c-cgu.2?download=true
begin_hunk_0_@_RNvNtCsgwyS1EwTFAS_8grep_cli8hostname8hostname:bb.a
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgwyS1EwTFAS_8grep_cli.exit.i unwind label %bb.k, !dbg !1777, !noalias !1581 ; 2 uses

bb.s:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgwyS1EwTFAS_8grep_cli.exit.i, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1742, !noalias !1581
  br label %_RNvNtCsgwyS1EwTFAS_8grep_cli8hostname11gethostname.exit, !dbg !1786

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgwyS1EwTFAS_8grep_cli.exit.i: ; preds = %bb.r
  %i.bb = extractvalue { i64, i64 } %i.ba, 0, !dbg !1787 ; 2 uses
  %.not.i = icmp eq i64 %i.bb, -1, !dbg !1788
  br i1 %.not.i, label %bb.s, label %bb.t, !dbg !1789, !prof !1617

bb.t:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgwyS1EwTFAS_8grep_cli.exit.i
  %i.bc = extractvalue { i64, i64 } %i.ba, 1, !dbg !1787
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bc) #25
          to label %bb.u unwind label %bb.k, !dbg !1790, !noalias !1581

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1791, !noalias !1581
  unreachable, !dbg !1791

_RNvNtCsgwyS1EwTFAS_8grep_cli8hostname11gethostname.exit: ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, %.split.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1792, !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1786
  ret void, !dbg !1793
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #2 !dbg !1794 {
bb.a:
  %i.a = icmp eq i32 %0, 4, !dbg !1795
  ret i1 %i.a, !dbg !1796
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #3 !dbg !1797 {
bb.a:
  %switch.tableidx = add i32 %0, -1, !dbg !1798   ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122, !dbg !1798
  br i1 %i.a, label %switch.lookup, label %bb.b, !dbg !1798

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64, !dbg !1798
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind, i64 %i.b, !dbg !1798
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !1798
  br label %bb.b, !dbg !1798

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ], !dbg !1799
  ret i8 %.sroa.0.0, !dbg !1800
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1801 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1803 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !1803, !range !47, !noundef !14
  %i.d = icmp eq i64 %i.c, -2, !dbg !1807
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread unwind label %.body, !dbg !1808

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store i64 -3, ptr %i.b, align 8, !dbg !1808, !alias.scope !1826
  %i.f = extractvalue { ptr, i32 } %i.e, 0, !dbg !1831
  %i.g = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.f)
          to label %bb.c unwind label %bb.b, !dbg !1832 ; 2 uses

bb.b:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #21, !dbg !1835
  unreachable, !dbg !1835

.thread:                                          ; preds = %bb.a
  store i64 -3, ptr %i.b, align 8, !dbg !1808, !alias.scope !1826
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit, !dbg !1836

bb.c:                                             ; preds = %.body
  %i.i = extractvalue { ptr, ptr } %i.g, 0, !dbg !1832 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.g, 1, !dbg !1832 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %.not4 = icmp eq ptr %i.i, null, !dbg !1823
  br i1 %.not4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit, label %bb.d, !dbg !1836

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.f unwind label %bb.e, !dbg !1837

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.c, %.thread
  %i.l = load ptr, ptr %0, align 8, !dbg !1840, !noundef !14 ; 2 uses
  %.not5 = icmp eq ptr %i.l, null, !dbg !1840
  br i1 %.not5, label %bb.l, label %bb.k, !dbg !1842

bb.e:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli(ptr nonnull %i.i, ptr nonnull %i.j) #24
          to label %bb.j unwind label %bb.i, !dbg !1843

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgwyS1EwTFAS_8grep_cli(ptr %i.k)
          to label %bb.g unwind label %bb.e, !dbg !1844

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.h unwind label %bb.e, !dbg !1845

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1847
  unreachable, !dbg !1847

bb.j:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m, !dbg !1847

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !1848
  tail call void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.o, i1 noundef zeroext %i.d), !dbg !1851
  br label %bb.l, !dbg !1852

bb.l:                                             ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit
  ret void, !dbg !1853
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1854 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !dbg !1858, !nonnull !14, !noundef !14
  %.val = load i8, ptr %i.a, align 1, !dbg !1859, !range !1860, !noundef !14 ; 2 uses
  %i.b = zext nneg i8 %.val to i64, !dbg !1861
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgwyS1EwTFAS_8grep_cli, i64 %i.b, !dbg !1861
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !1861
  %switch.ext = zext i8 %switch.load to i64, !dbg !1861
  %i.c = zext nneg i8 %.val to i64, !dbg !1861
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgwyS1EwTFAS_8grep_cli.35, i64 %i.c, !dbg !1861
  %switch.load2 = load ptr, ptr %switch.gep1, align 8, !dbg !1861
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !dbg !1861
  ret i1 %i.d, !dbg !1867
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_5Debug3fmtCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1868 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1869, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1870, !noalias !1874
  store ptr %i.b, ptr %i.a, align 8, !dbg !1870, !noalias !1874
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13), !dbg !1878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1879, !noalias !1874
  ret i1 %i.c, !dbg !1880
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1881 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1883, !nonnull !14, !noundef !14
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !1884
  ret i1 %i.b, !dbg !1885
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1886 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891), !dbg !1894
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1895
  %i.b = load i64, ptr %i.a, align 8, !dbg !1895, !alias.scope !1891, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !1895
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, label %bb.b, !dbg !1901

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902), !dbg !1905
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1906
  %i.e = load i64, ptr %i.d, align 8, !dbg !1906, !alias.scope !1909, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !1906
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i, label %bb.c, !dbg !1906

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !1910, !alias.scope !1909, !nonnull !14, !noundef !14 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !1915, !noalias !1928
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1), !dbg !1931
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !1945
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !1951
  br label %bb.d, !dbg !1953

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i, %bb.c
  %.sroa.05.023.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.sroa.6.022.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.sroa.107.021.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ]
  %.sroa.86.020.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0, !dbg !1959
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !1972

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ], !dbg !1973 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !1974, !noalias !1977
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1), !dbg !1980
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768, !dbg !1987 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !1994 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !1997 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !1959
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !1972

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ], !dbg !1998
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ], !dbg !1998 ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.020.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !1997 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1, !dbg !1999
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !2009
  %i.r = zext nneg i16 %i.q to i64, !dbg !2010
  %i.s = and i16 %i.p, %.lcssa.i.i.i, !dbg !2011
  %i.t = sub nsw i64 0, %i.r, !dbg !2015
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t, !dbg !2018 ; 3 uses
  %i.v = add i64 %.sroa.107.021.i.i, -1, !dbg !2019 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48, !dbg !2021 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %bb.f unwind label %bb.e, !dbg !2029, !noalias !1909

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body.i.i.i unwind label %bb.g, !dbg !2037, !noalias !1909

bb.f:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i unwind label %bb.h, !dbg !2039, !noalias !1909

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2029, !noalias !1909
  unreachable, !dbg !2029

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !2041

.body.i.i.i:                                      ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -24, !dbg !2041
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #24
          to label %common.resume.i.i.i unwind label %bb.k, !dbg !2041, !noalias !1909

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -24, !dbg !2041 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i unwind label %bb.i, !dbg !2042, !noalias !1909

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i.i unwind label %bb.j, !dbg !2044, !noalias !1909

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2042, !noalias !1909
  unreachable, !dbg !2042

common.resume.i.i.i:                              ; preds = %bb.i, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !2041

bb.k:                                             ; preds = %.body.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2041, !noalias !1909
  unreachable, !dbg !2041

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !dbg !2046, !noalias !1909
  %i.af = icmp eq i64 %i.v, 0, !dbg !1953
  br i1 %i.af, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i, label %bb.d, !dbg !1953

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i.i, %bb.b
  %i.ag = mul i64 %i.b, 48, !dbg !2048            ; 2 uses
  %i.ah = add i64 %i.ag, 48, !dbg !2048           ; 2 uses
  %i.ai = add i64 %i.b, 17, !dbg !2061
  %i.aj = add i64 %i.ai, %i.ah, !dbg !2063        ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah, !dbg !2063
  %i.al = icmp ult i64 %i.aj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ak), !dbg !2066
  tail call void @llvm.assume(i1 %i.al), !dbg !2066
  %i.am = icmp eq i64 %i.aj, 0, !dbg !2070
  br i1 %i.am, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, label %bb.l, !dbg !2070

bb.l:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i
  %i.an = load ptr, ptr %0, align 8, !dbg !2075, !alias.scope !1891, !nonnull !14, !noundef !14
  %i.ao = sub i64 -48, %i.ag, !dbg !2077
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao, !dbg !2080
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !dbg !2081, !noalias !1891
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, !dbg !2083

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECsgwyS1EwTFAS_8grep_cli.exit.i, %bb.l
  ret void, !dbg !2084
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2085 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2086), !dbg !2089
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2090
  %i.b = load i64, ptr %i.a, align 8, !dbg !2090, !alias.scope !2086, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !2090
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_jEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, label %bb.b, !dbg !2095

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096), !dbg !2099
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2100
  %i.e = load i64, ptr %i.d, align 8, !dbg !2100, !alias.scope !2103, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !2100
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECsgwyS1EwTFAS_8grep_cli.exit.i, label %bb.c, !dbg !2100

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !2104, !alias.scope !2103, !nonnull !14, !noundef !14 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !2109, !noalias !2116
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1), !dbg !2119
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !2126
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !2129
  br label %bb.d, !dbg !2131

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i, %bb.c
  %.sroa.05.023.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.sroa.6.022.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.sroa.107.021.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ]
  %.sroa.86.020.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0, !dbg !2136
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !2145

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ], !dbg !2146 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !2147, !noalias !2150
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1), !dbg !2153
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768, !dbg !2160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !2166 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !2169 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !2136
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !2145

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ], !dbg !2170
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ], !dbg !2170 ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.020.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !2169 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1, !dbg !2171
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !2178
  %i.r = zext nneg i16 %i.q to i64, !dbg !2179
  %i.s = and i16 %i.p, %.lcssa.i.i.i, !dbg !2180
  %i.t = sub nsw i64 0, %i.r, !dbg !2184
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t, !dbg !2187 ; 3 uses
  %i.v = add i64 %.sroa.107.021.i.i, -1, !dbg !2188 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48, !dbg !2190 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %bb.f unwind label %bb.e, !dbg !2198, !noalias !2103

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body.i.i.i unwind label %bb.g, !dbg !2206, !noalias !2103

bb.f:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i unwind label %bb.h, !dbg !2208, !noalias !2103

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2198, !noalias !2103
  unreachable, !dbg !2198

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !2210

.body.i.i.i:                                      ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -24, !dbg !2210
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #24
          to label %common.resume.i.i.i unwind label %bb.k, !dbg !2210, !noalias !2103

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -24, !dbg !2210 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i unwind label %bb.i, !dbg !2211, !noalias !2103

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i.i unwind label %bb.j, !dbg !2213, !noalias !2103

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2211, !noalias !2103
  unreachable, !dbg !2211

common.resume.i.i.i:                              ; preds = %bb.i, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !2210

bb.k:                                             ; preds = %.body.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2210, !noalias !2103
  unreachable, !dbg !2210

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !dbg !2215, !noalias !2103
  %i.af = icmp eq i64 %i.v, 0, !dbg !2131
  br i1 %i.af, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECsgwyS1EwTFAS_8grep_cli.exit.i, label %bb.d, !dbg !2131

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECsgwyS1EwTFAS_8grep_cli.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECsgwyS1EwTFAS_8grep_cli.exit.i.i, %bb.b
  %i.ag = mul i64 %i.b, 48, !dbg !2217            ; 2 uses
  %i.ah = add i64 %i.ag, 48, !dbg !2217           ; 2 uses
  %i.ai = add i64 %i.b, 17, !dbg !2225
  %i.aj = add i64 %i.ai, %i.ah, !dbg !2226        ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah, !dbg !2226
  %i.al = icmp ult i64 %i.aj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ak), !dbg !2228
  tail call void @llvm.assume(i1 %i.al), !dbg !2228
  %i.am = icmp eq i64 %i.aj, 0, !dbg !2230
  br i1 %i.am, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_jEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, label %bb.l, !dbg !2230

bb.l:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECsgwyS1EwTFAS_8grep_cli.exit.i
  %i.an = load ptr, ptr %0, align 8, !dbg !2235, !alias.scope !2086, !nonnull !14, !noundef !14
  %i.ao = sub i64 -48, %i.ag, !dbg !2237
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao, !dbg !2240
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !dbg !2241, !noalias !2086
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_jEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, !dbg !2243

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_jEENtNtB1i_5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECsgwyS1EwTFAS_8grep_cli.exit.i, %bb.l
  ret void, !dbg !2244
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 !dbg !2245 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246), !dbg !2249
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2250
  %i.b = load i64, ptr %i.a, align 8, !dbg !2250, !alias.scope !2246, !noundef !14 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !2250
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, label %bb.b, !dbg !2255

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256), !dbg !2259
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2260
  %i.e = load i64, ptr %i.d, align 8, !dbg !2260, !alias.scope !2263, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !2260
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i, label %bb.c, !dbg !2260

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !2264, !alias.scope !2263, !nonnull !14, !noundef !14 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !2269, !noalias !2276
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1), !dbg !2279
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !2286
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !2289
  br label %bb.d, !dbg !2291

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0, !dbg !2296
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !2305

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ], !dbg !2306 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !2307, !noalias !2310
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1), !dbg !2313
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384, !dbg !2320 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !2326 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !2329 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !2296
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !2305

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ], !dbg !2330
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ], !dbg !2330 ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !2329 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1, !dbg !2331
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !2338
  %i.r = zext nneg i16 %i.q to i64, !dbg !2339
  %i.s = and i16 %i.p, %.lcssa.i.i.i, !dbg !2340
  %i.t = sub nsw i64 0, %i.r, !dbg !2344
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t, !dbg !2347
  %i.v = add i64 %.sroa.107.014.i.i, -1, !dbg !2348 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24, !dbg !2350 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358), !dbg !2361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366), !dbg !2369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372), !dbg !2375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378), !dbg !2381
  %i.x = load ptr, ptr %i.w, align 8, !dbg !2384, !alias.scope !2391, !noalias !2263, !nonnull !14, !noundef !14
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !dbg !2392, !noalias !2397
  %i.z = icmp eq i64 %i.y, 1, !dbg !2398
  br i1 %i.z, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !2398

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i
  fence acquire, !dbg !2399
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsgPiXjGfBJkm_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #23, !dbg !2401, !noalias !2263
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i, !dbg !2401

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsgwyS1EwTFAS_8grep_cli.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0, !dbg !2291
  br i1 %i.aa, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i, label %bb.d, !dbg !2291

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24, !dbg !2402
  %i.ac = icmp slt i64 %i.b, 768614336404564650, !dbg !2410
  tail call void @llvm.assume(i1 %i.ac), !dbg !2412
  %i.ad = and i64 %i.ab, -16, !dbg !2414          ; 2 uses
  %i.ae = add i64 %i.ad, 32, !dbg !2414           ; 2 uses
  %i.af = add nsw i64 %i.b, 17, !dbg !2415
  %i.ag = add i64 %i.af, %i.ae, !dbg !2416        ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae, !dbg !2416
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah), !dbg !2418
  tail call void @llvm.assume(i1 %i.ai), !dbg !2418
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !2420
  br i1 %i.aj, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, label %bb.f, !dbg !2420

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i
  %i.ak = load ptr, ptr %0, align 8, !dbg !2425, !alias.scope !2246, !nonnull !14, !noundef !14
  %i.al = sub i64 -32, %i.ad, !dbg !2427
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al, !dbg !2430
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !dbg !2431, !noalias !2246
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit, !dbg !2433

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsgwyS1EwTFAS_8grep_cli.exit.i, %bb.f
  ret void, !dbg !2434
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBJ_3ops8function6FnOnceTlQNtNtBJ_3fmt9FormatterEE9call_onceCsgwyS1EwTFAS_8grep_cli(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2435 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2436, !noalias !2443
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0), !dbg !2436, !noalias !2443
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2446
  %i.c = load ptr, ptr %i.b, align 8, !dbg !2446, !noalias !2443, !nonnull !14, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2465
  %i.e = load i64, ptr %i.d, align 8, !dbg !2465, !noalias !2443, !noundef !14
  %i.f = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b, !dbg !2466

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %common.resume.i unwind label %bb.f, !dbg !2467

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsgwyS1EwTFAS_8grep_cli.exit unwind label %bb.d, !dbg !2468

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.e, !dbg !2471

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2468
  unreachable, !dbg !2468

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !2473

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !2474
  unreachable, !dbg !2474

_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2467, !noalias !2443
  ret i1 %i.f, !dbg !2477
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std3sys2fs8metadata(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsG258MDvU3F_3std3sys3env4unix6getenv(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_RNvMNtNtCsG258MDvU3F_3std6thread2idNtB2_8ThreadId3new() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread3new(i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread9spawnhook15run_spawn_hooks(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef, ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgwyS1EwTFAS_8grep_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB22_12StderrReader5async0NtB22_12CommandErrorEs_000uEB24_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB1e_12StderrReader5async0NtB1e_12CommandErrorEB1g_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef range(i32 0, -1)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix12error_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef) unnamed_addr #0
end_hunk_0
